Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbiw__outfile:bb.a
stbiw__write_pixels.exit:                         ; preds = %stbiw__write_flush.exit.us.i, %stbiw__write_flush.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #52
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %stbiw__write_pixels.exit
  %.0 = phi i32 [ 1, %stbiw__write_pixels.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #45

; Function Attrs: nounwind uwtable
define internal fastcc void @stbiw__writefv(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not20 = icmp eq i8 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.h = phi i8 [ %i.d, %.lr.ph ], [ %i.av, %bb.o ]
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.o ]
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  switch i8 %i.h, label %._crit_edge [
    i8 32, label %bb.o
    i8 49, label %bb.c
    i8 50, label %bb.g
    i8 52, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.j = load i32, ptr %2, align 8                ; 3 uses
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 8
  store i32 %i.o, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.s = load i32, ptr %i.r, align 4
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1
  %i.u = load ptr, ptr %0, align 8
  %i.v = load ptr, ptr %i.g, align 8
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %2, align 8                ; 3 uses
  %i.x = icmp ult i32 %i.w, 41
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = add nuw nsw i32 %i.w, 8
  store i32 %i.ab, ptr %2, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %bb.i ]
  %i.af = load i32, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.b, align 2
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = load ptr, ptr %i.g, align 8
  call void %i.ah(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 41
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = add nuw nsw i32 %i.aj, 8
  store i32 %i.ao, ptr %2, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %i.as = load i32, ptr %i.ar, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  store i32 %i.as, ptr %i.c, align 4
  %i.at = load ptr, ptr %0, align 8
  %i.au = load ptr, ptr %i.g, align 8
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1              ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #45

; Function Attrs: nofree nounwind uwtable
define internal void @stbi__stdio_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #8 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbiw__writef(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @stbiw__writefv(ptr noundef %0, ptr noundef nonnull @.str.141, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #46

; Function Attrs: nounwind uwtable
define internal fastcc i32 @stbiw__jpg_processDU(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 8, 17) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #4 {
.lver.check:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca [64 x i32], align 16              ; 67 uses
  %i.r = load i16, ptr %8, align 2                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 960
  %i.v = load i16, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 962
  %i.x = load i16, ptr %i.w, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #52
  %i.y = shl nuw nsw i32 %4, 3
  %i.z = zext nneg i32 %4 to i64                  ; 9 uses
  %i.aa = zext nneg i32 %i.y to i64
  br label %9

9:                                                ; preds = %9, %.lver.check
  %indvars.iv.lver.orig = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next.lver.orig, %9 ] ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.lver.orig ; 9 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  %18 = load float, ptr %10, align 4              ; 2 uses
  %19 = load float, ptr %17, align 4              ; 2 uses
  %20 = fadd float %18, %19                       ; 2 uses
  %21 = load <2 x float>, ptr %11, align 4
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %23 = load float, ptr %14, align 4              ; 2 uses
  %24 = load float, ptr %13, align 4              ; 2 uses
  %25 = load <2 x float>, ptr %15, align 4        ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %22, %25
  %26 = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop385 = fadd <2 x float> %22, %25
  %27 = extractelement <2 x float> %foldExtExtBinop385, i64 0 ; 2 uses
  %28 = fsub <2 x float> %22, %25                 ; 3 uses
  %29 = fadd float %24, %23                       ; 2 uses
  %30 = fsub float %18, %19                       ; 3 uses
  %31 = fsub float %24, %23
  %32 = fadd float %29, %20                       ; 2 uses
  %33 = fsub float %20, %29                       ; 3 uses
  %34 = fadd float %27, %26                       ; 2 uses
  %35 = fsub float %26, %27
  %36 = fadd float %34, %32
  %37 = fsub float %32, %34
  %38 = fadd float %35, %33
  %39 = fmul float %38, f0x3F3504F3               ; 2 uses
  %40 = fadd float %33, %39
  %41 = fsub float %33, %39
  %shift = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fadd <2 x float> %28, %shift
  %42 = extractelement <2 x float> %foldExtExtBinop387, i64 0
  %43 = insertelement <2 x float> poison, float %31, i64 0
  %44 = insertelement <2 x float> %43, float %30, i64 1
  %45 = fadd <2 x float> %28, %44                 ; 3 uses
  %shift389 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop390 = fsub <2 x float> %45, %shift389
  %46 = extractelement <2 x float> %foldExtExtBinop390, i64 0
  %47 = fmul float %46, f0x3EC3EF15
  %48 = insertelement <2 x float> poison, float %47, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> <float f0x3F0A8BD4, float f0x3FA73D75>, <2 x float> %49) ; 2 uses
  %51 = fmul float %42, f0x3F3504F3               ; 2 uses
  %52 = fadd float %30, %51                       ; 2 uses
  %53 = fsub float %30, %51                       ; 2 uses
  %54 = extractelement <2 x float> %50, i64 0     ; 2 uses
  %55 = fadd float %53, %54
  store float %55, ptr %15, align 4
  %56 = fsub float %53, %54
  store float %56, ptr %13, align 4
  %57 = extractelement <2 x float> %50, i64 1     ; 2 uses
  %58 = fadd float %52, %57
  store float %58, ptr %11, align 4
  %59 = fsub float %52, %57
  store float %59, ptr %17, align 4
  store float %36, ptr %10, align 4
  store float %40, ptr %12, align 4
  store float %37, ptr %14, align 4
  store float %41, ptr %16, align 4
  %indvars.iv.next.lver.orig = add nuw nsw i64 %indvars.iv.lver.orig, %i.z ; 2 uses
  %60 = icmp samesign ult i64 %indvars.iv.next.lver.orig, %i.aa
  br i1 %60, label %9, label %vector.body

vector.body:                                      ; preds = %9
  %i.ab = mul nuw nsw i32 %4, 7
  %i.ac = zext nneg i32 %i.ab to i64
  %invariant.gep356 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ad = mul nuw nsw i32 %4, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %invariant.gep354 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae ; 3 uses
  %i.af = mul nuw nsw i32 %4, 5
  %i.ag = zext nneg i32 %i.af to i64
  %invariant.gep352 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag ; 3 uses
  %i.ah = shl nuw nsw i32 %4, 2
  %i.ai = zext nneg i32 %i.ah to i64
  %invariant.gep350 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai ; 3 uses
  %i.aj = mul nuw nsw i32 %4, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %invariant.gep348 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak ; 3 uses
  %i.al = shl nuw nsw i32 %4, 1
  %i.am = zext nneg i32 %i.al to i64
  %invariant.gep346 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z ; 3 uses
  %wide.load = load <4 x float>, ptr %3, align 4  ; 2 uses
  %wide.load376 = load <4 x float>, ptr %invariant.gep, align 4 ; 2 uses
  %wide.load377 = load <4 x float>, ptr %invariant.gep346, align 4 ; 2 uses
  %wide.load378 = load <4 x float>, ptr %invariant.gep348, align 4 ; 2 uses
  %wide.load379 = load <4 x float>, ptr %invariant.gep350, align 4 ; 2 uses
  %wide.load380 = load <4 x float>, ptr %invariant.gep352, align 4 ; 2 uses
  %wide.load381 = load <4 x float>, ptr %invariant.gep354, align 4 ; 2 uses
  %wide.load382 = load <4 x float>, ptr %invariant.gep356, align 4 ; 2 uses
  %i.an = fadd <4 x float> %wide.load, %wide.load382 ; 2 uses
  %i.ao = fsub <4 x float> %wide.load, %wide.load382 ; 3 uses
  %i.ap = fadd <4 x float> %wide.load376, %wide.load381 ; 2 uses
  %i.aq = fsub <4 x float> %wide.load376, %wide.load381 ; 2 uses
  %i.ar = fadd <4 x float> %wide.load377, %wide.load380 ; 2 uses
  %i.as = fsub <4 x float> %wide.load377, %wide.load380 ; 2 uses
  %i.at = fadd <4 x float> %wide.load378, %wide.load379 ; 2 uses
  %i.au = fsub <4 x float> %wide.load378, %wide.load379
  %i.av = fadd <4 x float> %i.at, %i.an           ; 2 uses
  %i.aw = fsub <4 x float> %i.an, %i.at           ; 3 uses
  %i.ax = fadd <4 x float> %i.ar, %i.ap           ; 2 uses
  %i.ay = fsub <4 x float> %i.ap, %i.ar
  %i.az = fadd <4 x float> %i.ax, %i.av
  %i.ba = fsub <4 x float> %i.av, %i.ax
  %i.bb = fadd <4 x float> %i.ay, %i.aw
  %i.bc = fmul <4 x float> %i.bb, splat (float f0x3F3504F3) ; 2 uses
  %i.bd = fadd <4 x float> %i.aw, %i.bc
  %i.be = fsub <4 x float> %i.aw, %i.bc
  %i.bf = fadd <4 x float> %i.au, %i.as           ; 2 uses
  %i.bg = fadd <4 x float> %i.as, %i.aq
  %i.bh = fadd <4 x float> %i.aq, %i.ao           ; 2 uses
  %i.bi = fsub <4 x float> %i.bf, %i.bh
  %i.bj = fmul <4 x float> %i.bi, splat (float f0x3EC3EF15) ; 2 uses
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.bj) ; 2 uses
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.bj) ; 2 uses
  %i.bm = fmul <4 x float> %i.bg, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = fadd <4 x float> %i.ao, %i.bm           ; 2 uses
  %i.bo = fsub <4 x float> %i.ao, %i.bm           ; 2 uses
  %i.bp = fadd <4 x float> %i.bo, %i.bk
  store <4 x float> %i.bp, ptr %invariant.gep352, align 4
  %i.bq = fsub <4 x float> %i.bo, %i.bk
  store <4 x float> %i.bq, ptr %invariant.gep348, align 4
  %i.br = fadd <4 x float> %i.bn, %i.bl
  store <4 x float> %i.br, ptr %invariant.gep, align 4
  %i.bs = fsub <4 x float> %i.bn, %i.bl
  store <4 x float> %i.bs, ptr %invariant.gep356, align 4
  store <4 x float> %i.az, ptr %3, align 4
  store <4 x float> %i.bd, ptr %invariant.gep346, align 4
  store <4 x float> %i.ba, ptr %invariant.gep350, align 4
  store <4 x float> %i.be, ptr %invariant.gep354, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %invariant.gep346, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %invariant.gep348, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %invariant.gep350, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %invariant.gep352, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %invariant.gep354, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %invariant.gep356, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.bt, align 4 ; 2 uses
  %wide.load376.1 = load <4 x float>, ptr %i.bu, align 4 ; 2 uses
  %wide.load377.1 = load <4 x float>, ptr %i.bv, align 4 ; 2 uses
  %wide.load378.1 = load <4 x float>, ptr %i.bw, align 4 ; 2 uses
  %wide.load379.1 = load <4 x float>, ptr %i.bx, align 4 ; 2 uses
  %wide.load380.1 = load <4 x float>, ptr %i.by, align 4 ; 2 uses
  %wide.load381.1 = load <4 x float>, ptr %i.bz, align 4 ; 2 uses
  %wide.load382.1 = load <4 x float>, ptr %i.ca, align 4 ; 2 uses
  %i.cb = fadd <4 x float> %wide.load.1, %wide.load382.1 ; 2 uses
  %i.cc = fsub <4 x float> %wide.load.1, %wide.load382.1 ; 3 uses
  %i.cd = fadd <4 x float> %wide.load376.1, %wide.load381.1 ; 2 uses
  %i.ce = fsub <4 x float> %wide.load376.1, %wide.load381.1 ; 2 uses
  %i.cf = fadd <4 x float> %wide.load377.1, %wide.load380.1 ; 2 uses
  %i.cg = fsub <4 x float> %wide.load377.1, %wide.load380.1 ; 2 uses
  %i.ch = fadd <4 x float> %wide.load378.1, %wide.load379.1 ; 2 uses
  %i.ci = fsub <4 x float> %wide.load378.1, %wide.load379.1
  %i.cj = fadd <4 x float> %i.ch, %i.cb           ; 2 uses
  %i.ck = fsub <4 x float> %i.cb, %i.ch           ; 3 uses
  %i.cl = fadd <4 x float> %i.cf, %i.cd           ; 2 uses
  %i.cm = fsub <4 x float> %i.cd, %i.cf
  %i.cn = fadd <4 x float> %i.cl, %i.cj
  %i.co = fsub <4 x float> %i.cj, %i.cl
  %i.cp = fadd <4 x float> %i.cm, %i.ck
  %i.cq = fmul <4 x float> %i.cp, splat (float f0x3F3504F3) ; 2 uses
  %i.cr = fadd <4 x float> %i.ck, %i.cq
  %i.cs = fsub <4 x float> %i.ck, %i.cq
  %i.ct = fadd <4 x float> %i.ci, %i.cg           ; 2 uses
  %i.cu = fadd <4 x float> %i.cg, %i.ce
  %i.cv = fadd <4 x float> %i.ce, %i.cc           ; 2 uses
  %i.cw = fsub <4 x float> %i.ct, %i.cv
  %i.cx = fmul <4 x float> %i.cw, splat (float f0x3EC3EF15) ; 2 uses
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.cx) ; 2 uses
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.cx) ; 2 uses
  %i.da = fmul <4 x float> %i.cu, splat (float f0x3F3504F3) ; 2 uses
  %i.db = fadd <4 x float> %i.cc, %i.da           ; 2 uses
  %i.dc = fsub <4 x float> %i.cc, %i.da           ; 2 uses
  %i.dd = fadd <4 x float> %i.dc, %i.cy
  store <4 x float> %i.dd, ptr %i.by, align 4
  %i.de = fsub <4 x float> %i.dc, %i.cy
  store <4 x float> %i.de, ptr %i.bw, align 4
  %i.df = fadd <4 x float> %i.db, %i.cz
  store <4 x float> %i.df, ptr %i.bu, align 4
  %i.dg = fsub <4 x float> %i.db, %i.cz
  store <4 x float> %i.dg, ptr %i.ca, align 4
  store <4 x float> %i.cn, ptr %i.bt, align 4
  store <4 x float> %i.cr, ptr %i.bv, align 4
  store <4 x float> %i.co, ptr %i.bx, align 4
  store <4 x float> %i.cs, ptr %i.bz, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.dn = load <8 x float>, ptr %3, align 4
  %i.do = load <8 x float>, ptr %5, align 4
  %i.dp = fmul <8 x float> %i.dn, %i.do           ; 3 uses
  %i.dq = fcmp olt <8 x float> %i.dp, zeroinitializer
  %i.dr = select <8 x i1> %i.dq, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.ds = shufflevector <8 x float> %i.dp, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x float> %i.dr, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = fadd <4 x float> %i.ds, %i.dt           ; 4 uses
  %i.dv = extractelement <4 x float> %i.du, i64 0
  %i.dw = fptosi float %i.dv to i32               ; 4 uses
  store i32 %i.dw, ptr %i.q, align 16
  %i.dx = extractelement <4 x float> %i.du, i64 1
  %i.dy = fptosi float %i.dx to i32               ; 2 uses
  store i32 %i.dy, ptr %i.dh, align 4
  %i.dz = extractelement <4 x float> %i.du, i64 2
  %i.ea = fptosi float %i.dz to i32               ; 2 uses
  store i32 %i.ea, ptr %i.di, align 4
  %i.eb = extractelement <4 x float> %i.du, i64 3
  %i.ec = fptosi float %i.eb to i32               ; 2 uses
  store i32 %i.ec, ptr %i.dj, align 8
  %i.ed = shufflevector <8 x float> %i.dp, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ee = shufflevector <8 x float> %i.dr, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ef = fadd <4 x float> %i.ed, %i.ee           ; 4 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 0
  %i.eh = fptosi float %i.eg to i32               ; 2 uses
  store i32 %i.eh, ptr %i.dk, align 8
  %i.ei = extractelement <4 x float> %i.ef, i64 1
  %i.ej = fptosi float %i.ei to i32               ; 2 uses
  store i32 %i.ej, ptr %i.dl, align 4
  %i.ek = extractelement <4 x float> %i.ef, i64 2
  %i.el = fptosi float %i.ek to i32               ; 2 uses
  store i32 %i.el, ptr %i.dm, align 4
  %i.em = extractelement <4 x float> %i.ef, i64 3
  %i.en = fptosi float %i.em to i32               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i32 %i.en, ptr %i.eo, align 16
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  %i.ey = load <8 x float>, ptr %i.ep, align 4
  %i.ez = load <8 x float>, ptr %i.eq, align 4
  %i.fa = fmul <8 x float> %i.ey, %i.ez           ; 3 uses
  %i.fb = fcmp olt <8 x float> %i.fa, zeroinitializer
  %i.fc = select <8 x i1> %i.fb, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.fd = shufflevector <8 x float> %i.fa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = shufflevector <8 x float> %i.fc, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ff = fadd <4 x float> %i.fd, %i.fe           ; 4 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 0
  %i.fh = fptosi float %i.fg to i32               ; 2 uses
  store i32 %i.fh, ptr %i.er, align 8
  %i.fi = extractelement <4 x float> %i.ff, i64 1
  %i.fj = fptosi float %i.fi to i32               ; 2 uses
  store i32 %i.fj, ptr %i.es, align 16
  %i.fk = extractelement <4 x float> %i.ff, i64 2
  %i.fl = fptosi float %i.fk to i32               ; 2 uses
  store i32 %i.fl, ptr %i.et, align 4
  %i.fm = extractelement <4 x float> %i.ff, i64 3
  %i.fn = fptosi float %i.fm to i32               ; 2 uses
  store i32 %i.fn, ptr %i.eu, align 4
  %i.fo = shufflevector <8 x float> %i.fa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fp = shufflevector <8 x float> %i.fc, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fq = fadd <4 x float> %i.fo, %i.fp           ; 4 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 0
  %i.fs = fptosi float %i.fr to i32               ; 2 uses
end_hunk_0
begin_hunk_1_@stbiw__jpg_processDU:.lver.check
  %i.in = extractelement <4 x float> %i.im, i64 0
  %i.io = fptosi float %i.in to i32               ; 2 uses
  store i32 %i.io, ptr %i.hr, align 4
  %i.ip = extractelement <4 x float> %i.im, i64 1
  %i.iq = fptosi float %i.ip to i32               ; 2 uses
  store i32 %i.iq, ptr %i.hs, align 16
  %i.ir = extractelement <4 x float> %i.im, i64 2
  %i.is = fptosi float %i.ir to i32               ; 2 uses
  store i32 %i.is, ptr %i.ht, align 16
  %i.it = extractelement <4 x float> %i.im, i64 3
  %i.iu = fptosi float %i.it to i32               ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.q, i64 212
  store i32 %i.iu, ptr %i.iv, align 4
  %.idx411.a = shl nuw nsw i64 %i.z, 4
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx411.a
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.ja = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.jb = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  %i.jd = getelementptr inbounds nuw i8, ptr %i.q, i64 180
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.jf = load <8 x float>, ptr %i.iw, align 4
  %i.jg = load <8 x float>, ptr %i.ix, align 4
  %i.jh = fmul <8 x float> %i.jf, %i.jg           ; 3 uses
  %i.ji = fcmp olt <8 x float> %i.jh, zeroinitializer
  %i.jj = select <8 x i1> %i.ji, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.jk = shufflevector <8 x float> %i.jh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jl = shufflevector <8 x float> %i.jj, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jm = fadd <4 x float> %i.jk, %i.jl           ; 4 uses
  %i.jn = extractelement <4 x float> %i.jm, i64 0
  %i.jo = fptosi float %i.jn to i32               ; 2 uses
  store i32 %i.jo, ptr %i.iy, align 8
  %i.jp = extractelement <4 x float> %i.jm, i64 1
  %i.jq = fptosi float %i.jp to i32               ; 2 uses
  store i32 %i.jq, ptr %i.iz, align 4
  %i.jr = extractelement <4 x float> %i.jm, i64 2
  %i.js = fptosi float %i.jr to i32               ; 2 uses
  store i32 %i.js, ptr %i.ja, align 4
  %i.jt = extractelement <4 x float> %i.jm, i64 3
  %i.ju = fptosi float %i.jt to i32               ; 2 uses
  store i32 %i.ju, ptr %i.jb, align 16
  %i.jv = shufflevector <8 x float> %i.jh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jw = shufflevector <8 x float> %i.jj, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jx = fadd <4 x float> %i.jv, %i.jw           ; 4 uses
  %i.jy = extractelement <4 x float> %i.jx, i64 0
  %i.jz = fptosi float %i.jy to i32               ; 2 uses
  store i32 %i.jz, ptr %i.jc, align 4
  %i.ka = extractelement <4 x float> %i.jx, i64 1
  %i.kb = fptosi float %i.ka to i32               ; 2 uses
  store i32 %i.kb, ptr %i.jd, align 4
  %i.kc = extractelement <4 x float> %i.jx, i64 2
  %i.kd = fptosi float %i.kc to i32               ; 2 uses
  store i32 %i.kd, ptr %i.je, align 16
  %i.ke = extractelement <4 x float> %i.jx, i64 3
  %i.kf = fptosi float %i.ke to i32               ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  store i32 %i.kf, ptr %i.kg, align 8
  %.idx412.a = mul nuw nsw i64 %i.z, 20
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 %.idx412.a
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.kj = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.kk = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.kl = getelementptr inbounds nuw i8, ptr %i.q, i64 132
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.ko = getelementptr inbounds nuw i8, ptr %i.q, i64 204
  %i.kp = getelementptr inbounds nuw i8, ptr %i.q, i64 220
  %i.kq = load <8 x float>, ptr %i.kh, align 4
  %i.kr = load <8 x float>, ptr %i.ki, align 4
  %i.ks = fmul <8 x float> %i.kq, %i.kr           ; 3 uses
  %i.kt = fcmp olt <8 x float> %i.ks, zeroinitializer
  %i.ku = select <8 x i1> %i.kt, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.kv = shufflevector <8 x float> %i.ks, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kw = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kx = fadd <4 x float> %i.kv, %i.kw           ; 4 uses
  %i.ky = extractelement <4 x float> %i.kx, i64 0
  %i.kz = fptosi float %i.ky to i32               ; 2 uses
  store i32 %i.kz, ptr %i.kj, align 16
  %i.la = extractelement <4 x float> %i.kx, i64 1
  %i.lb = fptosi float %i.la to i32               ; 2 uses
  store i32 %i.lb, ptr %i.kk, align 8
  %i.lc = extractelement <4 x float> %i.kx, i64 2
  %i.ld = fptosi float %i.lc to i32               ; 2 uses
  store i32 %i.ld, ptr %i.kl, align 4
  %i.le = extractelement <4 x float> %i.kx, i64 3
  %i.lf = fptosi float %i.le to i32               ; 2 uses
  store i32 %i.lf, ptr %i.km, align 8
  %i.lg = shufflevector <8 x float> %i.ks, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lh = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.li = fadd <4 x float> %i.lg, %i.lh           ; 4 uses
  %i.lj = extractelement <4 x float> %i.li, i64 0
  %i.lk = fptosi float %i.lj to i32               ; 2 uses
  store i32 %i.lk, ptr %i.kn, align 8
  %i.ll = extractelement <4 x float> %i.li, i64 1
  %i.lm = fptosi float %i.ll to i32               ; 2 uses
  store i32 %i.lm, ptr %i.ko, align 4
  %i.ln = extractelement <4 x float> %i.li, i64 2
  %i.lo = fptosi float %i.ln to i32               ; 2 uses
  store i32 %i.lo, ptr %i.kp, align 4
  %i.lp = extractelement <4 x float> %i.li, i64 3
  %i.lq = fptosi float %i.lp to i32               ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  store i32 %i.lq, ptr %i.lr, align 16
  %.idx413.a = mul nuw nsw i64 %i.z, 24
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 %.idx413.a
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.lu = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.lv = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.lw = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.lx = getelementptr inbounds nuw i8, ptr %i.q, i64 188
  %i.ly = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.ma = getelementptr inbounds nuw i8, ptr %i.q, i64 236
  %i.mb = load <8 x float>, ptr %i.ls, align 4
  %i.mc = load <8 x float>, ptr %i.lt, align 4
  %i.md = fmul <8 x float> %i.mb, %i.mc           ; 3 uses
  %i.me = fcmp olt <8 x float> %i.md, zeroinitializer
  %i.mf = select <8 x i1> %i.me, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.mg = shufflevector <8 x float> %i.md, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mh = shufflevector <8 x float> %i.mf, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mi = fadd <4 x float> %i.mg, %i.mh           ; 4 uses
  %i.mj = extractelement <4 x float> %i.mi, i64 0
  %i.mk = fptosi float %i.mj to i32               ; 2 uses
  store i32 %i.mk, ptr %i.lu, align 4
  %i.ml = extractelement <4 x float> %i.mi, i64 1
  %i.mm = fptosi float %i.ml to i32               ; 2 uses
  store i32 %i.mm, ptr %i.lv, align 8
  %i.mn = extractelement <4 x float> %i.mi, i64 2
  %i.mo = fptosi float %i.mn to i32               ; 2 uses
  store i32 %i.mo, ptr %i.lw, align 4
  %i.mp = extractelement <4 x float> %i.mi, i64 3
  %i.mq = fptosi float %i.mp to i32               ; 2 uses
  store i32 %i.mq, ptr %i.lx, align 4
  %i.mr = shufflevector <8 x float> %i.md, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ms = shufflevector <8 x float> %i.mf, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mt = fadd <4 x float> %i.mr, %i.ms           ; 4 uses
  %i.mu = extractelement <4 x float> %i.mt, i64 0
  %i.mv = fptosi float %i.mu to i32               ; 2 uses
  store i32 %i.mv, ptr %i.ly, align 8
  %i.mw = extractelement <4 x float> %i.mt, i64 1
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  store i32 %i.mx, ptr %i.lz, align 16
  %i.my = extractelement <4 x float> %i.mt, i64 2
  %i.mz = fptosi float %i.my to i32               ; 2 uses
  store i32 %i.mz, ptr %i.ma, align 4
  %i.na = extractelement <4 x float> %i.mt, i64 3
  %i.nb = fptosi float %i.na to i32               ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.q, i64 244
  store i32 %i.nb, ptr %i.nc, align 4
  %.idx414 = mul nuw nsw i64 %i.z, 28
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 %.idx414
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.nf = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  %i.ng = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.nh = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.ni = getelementptr inbounds nuw i8, ptr %i.q, i64 196
  %i.nj = getelementptr inbounds nuw i8, ptr %i.q, i64 228
  %i.nk = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.nl = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.nm = load <8 x float>, ptr %i.nd, align 4
  %i.nn = load <8 x float>, ptr %i.ne, align 4
  %i.no = fmul <8 x float> %i.nm, %i.nn           ; 3 uses
  %i.np = fcmp olt <8 x float> %i.no, zeroinitializer
  %i.nq = select <8 x i1> %i.np, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.nr = shufflevector <8 x float> %i.no, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ns = shufflevector <8 x float> %i.nq, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nt = fadd <4 x float> %i.nr, %i.ns           ; 4 uses
  %i.nu = extractelement <4 x float> %i.nt, i64 0
  %i.nv = fptosi float %i.nu to i32               ; 2 uses
  store i32 %i.nv, ptr %i.nf, align 4
  %i.nw = extractelement <4 x float> %i.nt, i64 1
  %i.nx = fptosi float %i.nw to i32               ; 2 uses
  store i32 %i.nx, ptr %i.ng, align 16
  %i.ny = extractelement <4 x float> %i.nt, i64 2
  %i.nz = fptosi float %i.ny to i32               ; 2 uses
  store i32 %i.nz, ptr %i.nh, align 16
  %i.oa = extractelement <4 x float> %i.nt, i64 3
  %i.ob = fptosi float %i.oa to i32               ; 2 uses
  store i32 %i.ob, ptr %i.ni, align 4
  %i.oc = shufflevector <8 x float> %i.no, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.od = shufflevector <8 x float> %i.nq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.oe = fadd <4 x float> %i.oc, %i.od           ; 4 uses
  %i.of = extractelement <4 x float> %i.oe, i64 0
  %i.og = fptosi float %i.of to i32               ; 2 uses
  store i32 %i.og, ptr %i.nj, align 4
  %i.oh = extractelement <4 x float> %i.oe, i64 1
  %i.oi = fptosi float %i.oh to i32               ; 2 uses
  store i32 %i.oi, ptr %i.nk, align 8
  %i.oj = extractelement <4 x float> %i.oe, i64 2
  %i.ok = fptosi float %i.oj to i32               ; 2 uses
  store i32 %i.ok, ptr %i.nl, align 8
  %i.ol = extractelement <4 x float> %i.oe, i64 3
  %i.om = fptosi float %i.ol to i32               ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.q, i64 252
  store i32 %i.om, ptr %i.on, align 4
  %i.oo = icmp eq i32 %6, %i.dw
  br i1 %i.oo, label %bb.a, label %bb.e

bb.a:                                             ; preds = %vector.body
  %.val147 = load i16, ptr %7, align 2
  %i.op = getelementptr i8, ptr %7, i64 2
  %.val148 = load i16, ptr %i.op, align 2
  %i.oq = load i32, ptr %1, align 4
  %i.or = load i32, ptr %2, align 4
  %i.os = zext i16 %.val148 to i32
  %i.ot = add nsw i32 %i.or, %i.os                ; 4 uses
  %i.ou = zext i16 %.val147 to i32
  %i.ov = sub nsw i32 24, %i.ot
  %i.ow = shl i32 %i.ou, %i.ov
  %i.ox = or i32 %i.ow, %i.oq                     ; 2 uses
  %i.oy = icmp sgt i32 %i.ot, 7
  br i1 %i.oy, label %.lr.ph.i, label %stbiw__jpg_writeBits.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.oz = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.02.i = phi i32 [ %i.ot, %.lr.ph.i ], [ %i.pf, %bb.d ] ; 2 uses
  %.0181.i = phi i32 [ %i.ox, %.lr.ph.i ], [ %i.pe, %bb.d ] ; 3 uses
  %i.pa = lshr i32 %.0181.i, 16
  %i.pb = trunc i32 %i.pa to i8
  %.val20.i = load ptr, ptr %0, align 8
  %.val21.i = load ptr, ptr %i.oz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %i.pb, ptr %i.p, align 1
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.p, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.pc = and i32 %.0181.i, 16711680
  %i.pd = icmp eq i32 %i.pc, 16711680
  br i1 %i.pd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8
  %.val19.i = load ptr, ptr %i.oz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 0, ptr %i.o, align 1
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.o, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.pe = shl i32 %.0181.i, 8                     ; 2 uses
  %i.pf = add nsw i32 %.02.i, -8                  ; 2 uses
  %i.pg = icmp sgt i32 %.02.i, 15
  br i1 %i.pg, label %bb.b, label %stbiw__jpg_writeBits.exit

bb.e:                                             ; preds = %vector.body
  %i.ph = sub nsw i32 %i.dw, %6                   ; 3 uses
  %i.pi = tail call i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  %i.pj = lshr i32 %i.pi, 1
  %i.pk = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.pj, i1 false)
  %i.pl = trunc nuw nsw i32 %i.pk to i16
  %i.pm = sub nuw nsw i16 33, %i.pl               ; 2 uses
  %.lobit.i = ashr i32 %i.ph, 31
  %i.pn = add nsw i32 %.lobit.i, %i.ph
  %i.po = zext nneg i16 %i.pm to i32              ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.po
  %i.pp = xor i32 %notmask.i, -1
  %i.pq = zext nneg i16 %i.pm to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.pq ; 2 uses
  %.val145 = load i16, ptr %i.pr, align 2
  %i.ps = getelementptr i8, ptr %i.pr, i64 2
  %.val146 = load i16, ptr %i.ps, align 2
  %i.pt = load i32, ptr %1, align 4
  %i.pu = load i32, ptr %2, align 4
  %i.pv = zext i16 %.val146 to i32
  %i.pw = add nsw i32 %i.pu, %i.pv                ; 4 uses
  %i.px = zext i16 %.val145 to i32
  %i.py = sub nsw i32 24, %i.pw
  %i.pz = shl i32 %i.px, %i.py
  %i.qa = or i32 %i.pz, %i.pt                     ; 2 uses
  %i.qb = icmp sgt i32 %i.pw, 7
  br i1 %i.qb, label %.lr.ph.i151, label %stbiw__jpg_writeBits.exit158

.lr.ph.i151:                                      ; preds = %bb.e
  %i.qc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i151
  %.02.i152 = phi i32 [ %i.pw, %.lr.ph.i151 ], [ %i.qi, %bb.h ] ; 2 uses
  %.0181.i153 = phi i32 [ %i.qa, %.lr.ph.i151 ], [ %i.qh, %bb.h ] ; 3 uses
  %i.qd = lshr i32 %.0181.i153, 16
  %i.qe = trunc i32 %i.qd to i8
  %.val20.i154 = load ptr, ptr %0, align 8
  %.val21.i155 = load ptr, ptr %i.qc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.qe, ptr %i.n, align 1
  call void %.val20.i154(ptr noundef %.val21.i155, ptr noundef nonnull %i.n, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.qf = and i32 %.0181.i153, 16711680
  %i.qg = icmp eq i32 %i.qf, 16711680
  br i1 %i.qg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val.i156 = load ptr, ptr %0, align 8
  %.val19.i157 = load ptr, ptr %i.qc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.m, align 1
  call void %.val.i156(ptr noundef %.val19.i157, ptr noundef nonnull %i.m, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.qh = shl i32 %.0181.i153, 8                  ; 2 uses
  %i.qi = add nsw i32 %.02.i152, -8               ; 2 uses
  %i.qj = icmp sgt i32 %.02.i152, 15
  br i1 %i.qj, label %bb.f, label %stbiw__jpg_writeBits.exit158

stbiw__jpg_writeBits.exit158:                     ; preds = %bb.h, %bb.e
  %.018.lcssa.i149 = phi i32 [ %i.qa, %bb.e ], [ %i.qh, %bb.h ]
  %.0.lcssa.i150 = phi i32 [ %i.pw, %bb.e ], [ %i.qi, %bb.h ] ; 2 uses
  store i32 %.018.lcssa.i149, ptr %1, align 4
  store i32 %.0.lcssa.i150, ptr %2, align 4
  %i.qk = load i32, ptr %1, align 4
  %i.ql = add nsw i32 %.0.lcssa.i150, %i.po       ; 4 uses
  %i.qm = and i32 %i.pn, 65535
  %i.qn = and i32 %i.qm, %i.pp
  %i.qo = sub nsw i32 24, %i.ql
  %i.qp = shl i32 %i.qn, %i.qo
  %i.qq = or i32 %i.qp, %i.qk                     ; 2 uses
  %i.qr = icmp sgt i32 %i.ql, 7
  br i1 %i.qr, label %.lr.ph.i161, label %stbiw__jpg_writeBits.exit

.lr.ph.i161:                                      ; preds = %stbiw__jpg_writeBits.exit158
  %i.qs = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i161
  %.02.i162 = phi i32 [ %i.ql, %.lr.ph.i161 ], [ %i.qy, %bb.k ] ; 2 uses
  %.0181.i163 = phi i32 [ %i.qq, %.lr.ph.i161 ], [ %i.qx, %bb.k ] ; 3 uses
  %i.qt = lshr i32 %.0181.i163, 16
  %i.qu = trunc i32 %i.qt to i8
  %.val20.i164 = load ptr, ptr %0, align 8
  %.val21.i165 = load ptr, ptr %i.qs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.qu, ptr %i.l, align 1
  call void %.val20.i164(ptr noundef %.val21.i165, ptr noundef nonnull %i.l, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.qv = and i32 %.0181.i163, 16711680
  %i.qw = icmp eq i32 %i.qv, 16711680
  br i1 %i.qw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val.i166 = load ptr, ptr %0, align 8
  %.val19.i167 = load ptr, ptr %i.qs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 0, ptr %i.k, align 1
  call void %.val.i166(ptr noundef %.val19.i167, ptr noundef nonnull %i.k, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.qx = shl i32 %.0181.i163, 8                  ; 2 uses
  %i.qy = add nsw i32 %.02.i162, -8               ; 2 uses
  %i.qz = icmp sgt i32 %.02.i162, 15
  br i1 %i.qz, label %bb.i, label %stbiw__jpg_writeBits.exit

stbiw__jpg_writeBits.exit:                        ; preds = %bb.k, %bb.d, %stbiw__jpg_writeBits.exit158, %bb.a
  %storemerge230 = phi i32 [ %i.pe, %bb.d ], [ %i.ox, %bb.a ], [ %i.qq, %stbiw__jpg_writeBits.exit158 ], [ %i.qx, %bb.k ]
  %i.ra = phi i32 [ %i.pf, %bb.d ], [ %i.ot, %bb.a ], [ %i.ql, %stbiw__jpg_writeBits.exit158 ], [ %i.qy, %bb.k ] ; 3 uses
  store i32 %storemerge230, ptr %1, align 4
  store i32 %i.ra, ptr %2, align 4
  %.not = icmp eq i32 %i.om, 0                    ; 2 uses
  br i1 %.not, label %bb.l, label %.preheader.lr.ph

bb.l:                                             ; preds = %stbiw__jpg_writeBits.exit
  %i.rb = icmp eq i32 %i.ok, 0
  br i1 %i.rb, label %bb.m, label %.preheader.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.rc = icmp eq i32 %i.nb, 0
  br i1 %i.rc, label %bb.n, label %.preheader.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.rd = icmp eq i32 %i.lq, 0
  br i1 %i.rd, label %bb.o, label %.preheader.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.re = icmp eq i32 %i.mz, 0
  br i1 %i.re, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.rf = icmp eq i32 %i.oi, 0
  br i1 %i.rf, label %bb.q, label %.preheader.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.rg = icmp eq i32 %i.og, 0
  br i1 %i.rg, label %bb.r, label %.preheader.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.rh = icmp eq i32 %i.mx, 0
  br i1 %i.rh, label %bb.s, label %.preheader.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.ri = icmp eq i32 %i.lo, 0
  br i1 %i.ri, label %bb.t, label %.preheader.lr.ph

end_hunk_1
