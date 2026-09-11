Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_rotate?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @SDLgfx_rotozoomSurfaceSizeTrig(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %2, f0x3F91DF46A2529D39      ; 2 uses
  %i.b = tail call double @SDL_sin_REAL(double noundef %i.a) #5 ; 2 uses
  %i.c = tail call double @SDL_cos_REAL(double noundef %i.a) #5 ; 2 uses
  %i.d = load float, ptr %3, align 4
  %i.e = fpext float %i.d to double               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fpext float %i.g to double
  %i.i = sitofp i32 %0 to double
  %i.j = fadd double %i.i, -5.000000e-01
  %i.k = sitofp i32 %1 to double
  %i.l = fadd double %i.k, -5.000000e-01
  %i.m = insertelement <2 x double> <double 5.000000e-01, double poison>, double %i.l, i64 1
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.p = fsub <2 x double> %i.m, %i.o             ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.c, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.s = fmul <2 x double> %i.r, %i.p             ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.b, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.v = fsub double %i.j, %i.e
  %i.w = fsub double 5.000000e-01, %i.e
  %i.x = fneg <2 x double> %i.p
  %i.y = fmul <2 x double> %i.u, %i.x             ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.w, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.aa, <2 x double> %i.y)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.aa, <2 x double> %i.s)
  %i.ad = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = fadd <2 x double> %i.ab, %i.ae          ; 4 uses
  %i.ag = fadd <2 x double> %i.ac, %i.o           ; 4 uses
  %i.ah = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.ai, <2 x double> %i.y)
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.ai, <2 x double> %i.s)
  %i.al = fadd <2 x double> %i.aj, %i.ae          ; 4 uses
  %i.am = fadd <2 x double> %i.ak, %i.o           ; 4 uses
  %i.an = fcmp olt <2 x double> %i.af, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.af, <2 x double> %i.al ; 2 uses
  %i.ap = fcmp ogt <2 x double> %i.af, %i.al
  %i.aq = select <2 x i1> %i.ap, <2 x double> %i.af, <2 x double> %i.al ; 2 uses
  %i.ar = fcmp olt <2 x double> %i.ag, %i.am
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.ag, <2 x double> %i.am ; 2 uses
  %i.at = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.au = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.av = fcmp olt <2 x double> %i.at, %i.au
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.at, <2 x double> %i.au ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = tail call double @SDL_floor_REAL(double noundef %i.ax) #5
  %i.az = fptosi double %i.ay to i32              ; 2 uses
  %i.ba = fcmp ogt <2 x double> %i.ag, %i.am
  %i.bb = select <2 x i1> %i.ba, <2 x double> %i.ag, <2 x double> %i.am ; 2 uses
  %i.bc = shufflevector <2 x double> %i.aq, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bd = shufflevector <2 x double> %i.aq, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.be = fcmp ogt <2 x double> %i.bc, %i.bd
  %i.bf = select <2 x i1> %i.be, <2 x double> %i.bc, <2 x double> %i.bd ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  %i.bh = tail call double @SDL_ceil_REAL(double noundef %i.bg) #5
  %i.bi = fptosi double %i.bh to i32
  %i.bj = extractelement <2 x double> %i.aw, i64 1
  %i.bk = tail call double @SDL_floor_REAL(double noundef %i.bj) #5
  %i.bl = fptosi double %i.bk to i32              ; 2 uses
  %i.bm = extractelement <2 x double> %i.bf, i64 1
  %i.bn = tail call double @SDL_ceil_REAL(double noundef %i.bm) #5
  %i.bo = fptosi double %i.bn to i32
  %i.bp = sub nsw i32 %i.bi, %i.az
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = sub nsw i32 %i.bo, %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 %i.br, ptr %i.bs, align 4
  store i32 %i.az, ptr %4, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bl, ptr %i.bt, align 4
  %i.bu = fneg double %i.b
  store double %i.bu, ptr %6, align 8
  store double %i.c, ptr %5, align 8
  %i.bv = fdiv double %2, 9.000000e+01            ; 2 uses
  %i.bw = fptosi double %i.bv to i32              ; 3 uses
  %i.bx = sitofp i32 %i.bw to double
  %i.by = fcmp oeq double %i.bv, %i.bx
  br i1 %i.by, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %spec.select = and i32 %i.bw, 3                 ; 2 uses
  %i.bz = and i32 %i.bw, 1
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.bq, align 4
  store i32 %0, ptr %i.bs, align 4
  store double 0.000000e+00, ptr %5, align 8
  %i.ca = icmp eq i32 %spec.select, 1
  %i.cb = select i1 %i.ca, i32 -1, i32 1
  %i.cc = sitofp i32 %i.cb to double
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  store i32 %0, ptr %i.bq, align 4
  store i32 %1, ptr %i.bs, align 4
  %7 = sub nsw i32 1, %spec.select
  %i.cd = sitofp i32 %7 to double
  store double %i.cd, ptr %5, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi double [ %i.cc, %bb.c ], [ 0.000000e+00, %bb.d ]
  store double %.sink, ptr %6, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @SDL_sin_REAL(double noundef) local_unnamed_addr #2

declare double @SDL_cos_REAL(double noundef) local_unnamed_addr #2

declare double @SDL_floor_REAL(double noundef) local_unnamed_addr #2

declare double @SDL_ceil_REAL(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDLgfx_rotateSurface(ptr noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, double noundef %6, double noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 0, ptr %i.c, align 4
  %i.d = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #5
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @SDL_SurfaceHasColorKey_REAL(ptr noundef %0) #5
  br i1 %i.e, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = call zeroext i1 @SDL_GetSurfaceColorKey_REAL(ptr noundef %0, ptr noundef nonnull %i.c) #5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 318769153
  %i.l = and i1 %i.h, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.m = phi i32 [ %i.g, %.thread ], [ %i.j, %bb.c ] ; 2 uses
  %.0142 = phi i1 [ false, %.thread ], [ %i.h, %bb.c ]
  %i.n = and i32 %i.m, -267387136
  %or.cond173 = icmp eq i32 %i.n, 268836864
  br i1 %or.cond173, label %bb.f, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add nsw i32 %i.r, 2
  %i.t = call ptr @SDL_CreateSurface_REAL(i32 noundef %i.p, i32 noundef %i.s, i32 noundef 318769153) #5 ; 4 uses
  %.not85 = icmp eq ptr %i.t, null
  br i1 %.not85, label %.critedge, label %.thread152

.thread152:                                       ; preds = %bb.e
  %i.u = insertelement <2 x double> poison, double %7, i64 0
  %i.v = insertelement <2 x double> %i.u, double %6, i64 1
  %i.w = fmul <2 x double> %i.v, splat (double 6.553600e+04)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call zeroext i1 @SDL_SetSurfacePalette_REAL(ptr noundef nonnull %i.t, ptr noundef %i.y) #5 ; 0 uses
  %i.aa = load i32, ptr %i.q, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = call zeroext i1 @SDL_GetSurfaceBlendMode_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 2
  %i.ai = call ptr @SDL_CreateSurface_REAL(i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.m) #5 ; 9 uses
  %.not86 = icmp eq ptr %i.ai, null
  br i1 %.not86, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = insertelement <2 x double> poison, double %7, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %6, i64 1
  %i.al = fmul <2 x double> %i.ak, splat (double 6.553600e+04) ; 4 uses
  %i.am = load i32, ptr %i.af, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 5 uses
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = call zeroext i1 @SDL_GetSurfaceBlendMode_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #5 ; 0 uses
  br i1 %.0142, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread152, %bb.g
  %i.ap = phi ptr [ %i.ab, %.thread152 ], [ %i.an, %bb.g ]
  %i.aq = phi i1 [ true, %.thread152 ], [ false, %bb.g ]
  %.077157162 = phi ptr [ %i.t, %.thread152 ], [ %i.ai, %bb.g ] ; 3 uses
  %i.ar = phi <2 x double> [ %i.w, %.thread152 ], [ %i.al, %bb.g ]
  %i.as = load i32, ptr %i.c, align 4
  %i.at = call zeroext i1 @SDL_SetSurfaceColorKey_REAL(ptr noundef nonnull %.077157162, i1 noundef zeroext true, i32 noundef %i.as) #5 ; 0 uses
  %i.au = load i32, ptr %i.c, align 4
  %i.av = call zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef nonnull %.077157162, ptr noundef null, i32 noundef %i.au) #5 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aw = load i32, ptr %i.b, align 4
  switch i32 %i.aw, label %bb.l [
    i32 0, label %bb.j
    i32 8, label %bb.k
    i32 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.b, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ax = call i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef nonnull %i.ai, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0) #5 ; 2 uses
  store i32 %i.ax, ptr %i.c, align 4
  %i.ay = call zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef nonnull %i.ai, ptr noundef null, i32 noundef %i.ax) #5 ; 0 uses
  %i.az = load i32, ptr %i.c, align 4
  %i.ba = call zeroext i1 @SDL_SetSurfaceColorKey_REAL(ptr noundef nonnull %i.ai, i1 noundef zeroext true, i32 noundef %i.az) #5 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %i.bb = phi ptr [ %i.an, %bb.i ], [ %i.an, %bb.j ], [ %i.an, %bb.k ], [ %i.ap, %bb.h ] ; 12 uses
  %i.bc = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ %i.aq, %bb.h ] ; 2 uses
  %.077157161 = phi ptr [ %i.ai, %bb.i ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %.077157162, %bb.h ] ; 14 uses
  %i.bd = phi <2 x double> [ %i.al, %bb.i ], [ %i.al, %bb.j ], [ %i.al, %bb.k ], [ %i.ar, %bb.h ]
  %i.be = load i32, ptr %i.b, align 4
  %i.bf = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef nonnull %.077157161, i32 noundef %i.be) #5 ; 0 uses
  %i.bg = load i32, ptr %0, align 8
  %i.bh = and i32 %i.bg, 2
  %.not87 = icmp eq i32 %i.bh, 0
  br i1 %.not87, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %0) #5
  br i1 %i.bi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %.077157161) #5
  br label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bj = fdiv double %1, 9.000000e+01            ; 2 uses
  %i.bk = fptosi double %i.bj to i32              ; 2 uses
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fcmp oeq double %i.bj, %i.bl
  br i1 %i.bm, label %bb.p, label %.thread163

bb.p:                                             ; preds = %bb.o
  %spec.select90 = and i32 %i.bk, 3               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.077157161, i64 16
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.077157161, i64 8 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 8            ; 6 uses
  br i1 %i.bc, label %bb.q, label %bb.ag

.thread163:                                       ; preds = %bb.o
  %i.br = fptosi <2 x double> %i.bd to <2 x i32>  ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  br i1 %i.bc, label %.thread167, label %.thread169

bb.q:                                             ; preds = %bb.p
  %i.bu = sub i32 %i.bo, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.077157161, i64 24
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i.i = icmp eq i32 %4, 0                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i32, ptr %i.bz, align 8            ; 3 uses
  %i.cb = sub nsw i32 0, %i.ca
  %i.cc = select i1 %.not.i.i, i32 %i.ca, i32 %i.cb ; 6 uses
  %.not43.i.i = icmp eq i32 %3, 0                 ; 4 uses
  %spec.select.i.i = select i1 %.not43.i.i, i32 1, i32 -1 ; 4 uses
  switch i32 %spec.select90, label %default.unreachable [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i32, ptr %i.cd, align 8
end_hunk_0
