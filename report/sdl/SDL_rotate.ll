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
  %7 = fsub double 5.000000e-01, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fpext float %i.g to double
  %8 = sitofp i32 %0 to double
  %9 = fadd double %8, -5.000000e-01
  %10 = fsub double %9, %i.e
  %11 = sitofp i32 %1 to double
  %12 = fadd double %11, -5.000000e-01
  %i.i = insertelement <2 x double> <double 5.000000e-01, double poison>, double %12, i64 1
  %i.j = insertelement <2 x double> poison, double %i.h, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fsub <2 x double> %i.i, %i.k             ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.c, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %13 = fmul <2 x double> %i.n, %i.l              ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.b, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.q = insertelement <2 x double> poison, double %7, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> %13)
  %15 = fadd <2 x double> %14, %i.k               ; 4 uses
  %16 = insertelement <2 x double> poison, double %10, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %17, <2 x double> %13)
  %i.t = fadd <2 x double> %i.s, %i.k             ; 4 uses
  %i.u = fneg <2 x double> %i.l
  %i.v = fmul <2 x double> %i.p, %i.u             ; 2 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.r, <2 x double> %i.v)
  %18 = insertelement <2 x double> poison, double %i.e, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fadd <2 x double> %i.w, %19              ; 4 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %17, <2 x double> %i.v)
  %i.z = fadd <2 x double> %i.y, %19              ; 4 uses
  %i.aa = fcmp olt <2 x double> %i.x, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x double> %i.x, <2 x double> %i.z ; 2 uses
  %i.ac = fcmp ogt <2 x double> %i.x, %i.z
  %i.ad = select <2 x i1> %i.ac, <2 x double> %i.x, <2 x double> %i.z ; 2 uses
  %i.ae = fcmp olt <2 x double> %15, %i.t
  %i.af = select <2 x i1> %i.ae, <2 x double> %15, <2 x double> %i.t ; 2 uses
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.af, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ab, <2 x double> %i.af, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ai = fcmp olt <2 x double> %i.ag, %i.ah
  %i.aj = select <2 x i1> %i.ai, <2 x double> %i.ag, <2 x double> %i.ah ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = tail call double @SDL_floor_REAL(double noundef %i.ak) #5
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = fcmp ogt <2 x double> %15, %i.t
  %i.ao = select <2 x i1> %i.an, <2 x double> %15, <2 x double> %i.t ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ad, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ad, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ar = fcmp ogt <2 x double> %i.ap, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.ap, <2 x double> %i.aq ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = tail call double @SDL_ceil_REAL(double noundef %i.at) #5
  %i.av = fptosi double %i.au to i32
  %i.aw = extractelement <2 x double> %i.aj, i64 1
  %i.ax = tail call double @SDL_floor_REAL(double noundef %i.aw) #5
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = extractelement <2 x double> %i.as, i64 1
  %i.ba = tail call double @SDL_ceil_REAL(double noundef %i.az) #5
  %i.bb = fptosi double %i.ba to i32
  %i.bc = sub nsw i32 %i.av, %i.am
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = sub nsw i32 %i.bb, %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 %i.be, ptr %i.bf, align 4
  store i32 %i.am, ptr %4, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ay, ptr %i.bg, align 4
  %i.bh = fneg double %i.b
  store double %i.bh, ptr %6, align 8
  store double %i.c, ptr %5, align 8
  %i.bi = fdiv double %2, 9.000000e+01            ; 2 uses
  %i.bj = fptosi double %i.bi to i32              ; 3 uses
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fcmp oeq double %i.bi, %i.bk
  br i1 %i.bl, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %spec.select = and i32 %i.bj, 3                 ; 2 uses
  %i.bm = and i32 %i.bj, 1
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.bd, align 4
  store i32 %0, ptr %i.bf, align 4
  store double 0.000000e+00, ptr %5, align 8
  %i.bn = icmp eq i32 %spec.select, 1
  %i.bo = select i1 %i.bn, i32 -1, i32 1
  %i.bp = sitofp i32 %i.bo to double
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  store i32 %0, ptr %i.bd, align 4
  store i32 %1, ptr %i.bf, align 4
  %i.bq = icmp eq i32 %spec.select, 0
  %i.br = select i1 %i.bq, i32 1, i32 -1
  %i.bs = sitofp i32 %i.br to double
  store double %i.bs, ptr %5, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi double [ %i.bp, %bb.c ], [ 0.000000e+00, %bb.d ]
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
  %i.u = insertelement <2 x double> poison, double %6, i64 0
  %i.v = insertelement <2 x double> %i.u, double %7, i64 1
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
  %i.aj = insertelement <2 x double> poison, double %6, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %7, i64 1
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
  %i.cf = mul nsw i32 %i.ce, %spec.select.i.i
  %i.cg = sub nsw i32 %i.cc, %i.cf
  br label %computeSourceIncrements90.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ch = sub nsw i32 0, %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4
  %.neg.i.i = mul i32 %i.cj, %i.cc
  %i.ck = add i32 %.neg.i.i, %spec.select.i.i
  br label %computeSourceIncrements90.exit.i

bb.t:                                             ; preds = %bb.q
  %spec.select.i.neg49.i = select i1 %.not43.i.i, i32 -1, i32 1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = mul nsw i32 %i.cm, %spec.select.i.i
  %i.co = sub nsw i32 %i.cn, %i.cc
  br label %computeSourceIncrements90.exit.i

default.unreachable:                              ; preds = %bb.ag, %bb.q
  unreachable

bb.u:                                             ; preds = %bb.q
  %spec.select.i.neg.i = select i1 %.not43.i.i, i32 -1, i32 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = mul i32 %i.cq, %i.cc
  %.neg.i = sub i32 %spec.select.i.neg.i, %i.cr
  br label %computeSourceIncrements90.exit.i

computeSourceIncrements90.exit.i:                 ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.048.i = phi i32 [ %spec.select.i.i, %bb.r ], [ %i.ch, %bb.s ], [ %spec.select.i.neg49.i, %bb.t ], [ %i.cc, %bb.u ] ; 2 uses
  %.047.i = phi i32 [ %i.cg, %bb.r ], [ %i.ck, %bb.s ], [ %i.co, %bb.t ], [ %.neg.i, %bb.u ]
  %.045.i = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ] ; 2 uses
  %.043.i = phi i32 [ 1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.t ], [ 1, %bb.u ] ; 2 uses
  %i.cs = sub nsw i32 0, %.045.i
  %spec.select.i = select i1 %.not43.i.i, i32 %.045.i, i32 %i.cs
  %i.ct = sub nsw i32 0, %.043.i
  %.144.i = select i1 %.not.i.i, i32 %.043.i, i32 %i.ct
  %i.cu = icmp slt i32 %spec.select.i, 0
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %computeSourceIncrements90.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.bw, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %computeSourceIncrements90.exit.i
  %.033.i = phi ptr [ %i.cz, %bb.v ], [ %i.bw, %computeSourceIncrements90.exit.i ] ; 2 uses
  %i.da = icmp slt i32 %.144.i, 0
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = add nsw i32 %i.dc, -1
  %i.de = mul nsw i32 %i.dd, %i.ca
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %.033.i, i64 %i.df
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.134.i = phi ptr [ %i.dg, %bb.x ], [ %.033.i, %bb.w ] ; 2 uses
  %i.dh = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph57.i, label %transformSurfaceY90.exit

.lr.ph57.i:                                       ; preds = %bb.y
  %i.dj = icmp eq i32 %.048.i, 1
  %i.dk = sext i32 %.048.i to i64                 ; 9 uses
  %i.dl = sext i32 %.047.i to i64                 ; 2 uses
  %i.dm = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.dj, label %.lr.ph57.split.us.i, label %.lr.ph57.split.i.preheader

.lr.ph57.split.i.preheader:                       ; preds = %.lr.ph57.i
  %i.dn = icmp eq i32 %i.bq, 0
  br i1 %i.dn, label %transformSurfaceY90.exit, label %.lr.ph57.split.i

.lr.ph57.split.us.i:                              ; preds = %.lr.ph57.i, %.lr.ph57.split.us.i
  %i.do = phi i32 [ %i.dq, %.lr.ph57.split.us.i ], [ %i.bq, %.lr.ph57.i ]
  %.056.us.i = phi ptr [ %i.dv, %.lr.ph57.split.us.i ], [ %i.by, %.lr.ph57.i ] ; 2 uses
  %.23555.us.i = phi ptr [ %i.du, %.lr.ph57.split.us.i ], [ %.134.i, %.lr.ph57.i ] ; 2 uses
  %.03654.us.i = phi i32 [ %i.dw, %.lr.ph57.split.us.i ], [ 0, %.lr.ph57.i ]
  %i.dp = sext i32 %i.do to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.056.us.i, ptr align 1 %.23555.us.i, i64 %i.dp, i1 false)
  %i.dq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.23555.us.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %.056.us.i, i64 %i.dr
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dl
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.dm
  %i.dw = add nuw nsw i32 %.03654.us.i, 1         ; 2 uses
  %i.dx = load i32, ptr %i.bb, align 4
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph57.split.us.i, label %transformSurfaceY90.exit, !llvm.loop !3

.lr.ph57.split.i:                                 ; preds = %.lr.ph57.split.i.preheader, %.loopexit.i
  %i.dz = phi i32 [ %i.fg, %.loopexit.i ], [ %i.dh, %.lr.ph57.split.i.preheader ]
  %.056.i = phi ptr [ %i.fi, %.loopexit.i ], [ %i.by, %.lr.ph57.split.i.preheader ] ; 4 uses
  %.23555.i = phi ptr [ %i.fh, %.loopexit.i ], [ %.134.i, %.lr.ph57.split.i.preheader ] ; 3 uses
  %.03654.i = phi i32 [ %i.fj, %.loopexit.i ], [ 0, %.lr.ph57.split.i.preheader ]
  %i.ea = load i32, ptr %i.bp, align 8            ; 4 uses
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.056.i, i64 %i.eb ; 2 uses
  %.not50.i = icmp eq i32 %i.ea, 0
  br i1 %.not50.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph57.split.i
  %xtraiter359 = and i64 %i.eb, 7
  %i.ed = and i32 %i.ea, 7
  %lcmp.mod360.not = icmp eq i32 %i.ed, 0
  br i1 %lcmp.mod360.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.152.i.prol = phi ptr [ %i.eg, %.lr.ph.i.prol ], [ %.056.i, %.lr.ph.i.preheader ] ; 2 uses
  %.351.i.prol = phi ptr [ %i.ef, %.lr.ph.i.prol ], [ %.23555.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter361 = phi i64 [ %prol.iter361.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ee = load i8, ptr %.351.i.prol, align 1
  store i8 %i.ee, ptr %.152.i.prol, align 1
  %i.ef = getelementptr inbounds i8, ptr %.351.i.prol, i64 %i.dk ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.152.i.prol, i64 1 ; 2 uses
  %prol.iter361.next = add i64 %prol.iter361, 1   ; 2 uses
  %prol.iter361.cmp.not = icmp eq i64 %prol.iter361.next, %xtraiter359
  br i1 %prol.iter361.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !5

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ef, %.lr.ph.i.prol ]
  %.152.i.unr = phi ptr [ %.056.i, %.lr.ph.i.preheader ], [ %i.eg, %.lr.ph.i.prol ]
  %.351.i.unr = phi ptr [ %.23555.i, %.lr.ph.i.preheader ], [ %i.ef, %.lr.ph.i.prol ]
  %i.eh = icmp ult i32 %i.ea, 8
  br i1 %i.eh, label %.loopexit.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.152.i = phi ptr [ %i.ff, %.lr.ph.i ], [ %.152.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.351.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %.351.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ei = load i8, ptr %.351.i, align 1
  store i8 %i.ei, ptr %.152.i, align 1
  %i.ej = getelementptr inbounds i8, ptr %.351.i, i64 %i.dk ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.152.i, i64 1
  %i.el = load i8, ptr %i.ej, align 1
  store i8 %i.el, ptr %i.ek, align 1
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.dk ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.152.i, i64 2
  %i.eo = load i8, ptr %i.em, align 1
  store i8 %i.eo, ptr %i.en, align 1
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 %i.dk ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.152.i, i64 3
  %i.er = load i8, ptr %i.ep, align 1
  store i8 %i.er, ptr %i.eq, align 1
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.dk ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.152.i, i64 4
  %i.eu = load i8, ptr %i.es, align 1
  store i8 %i.eu, ptr %i.et, align 1
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.dk ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.152.i, i64 5
  %i.ex = load i8, ptr %i.ev, align 1
  store i8 %i.ex, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.dk ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.152.i, i64 6
  %i.fa = load i8, ptr %i.ey, align 1
  store i8 %i.fa, ptr %i.ez, align 1
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.dk ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.152.i, i64 7
  %i.fd = load i8, ptr %i.fb, align 1
  store i8 %i.fd, ptr %i.fc, align 1
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.dk ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.152.i, i64 8 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ff, %i.ec
  br i1 %.not.i.7, label %.loopexit.loopexit.i, label %.lr.ph.i, !llvm.loop !7

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.fe, %.lr.ph.i ]
  %.pre.i = load i32, ptr %i.bb, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph57.split.i
  %i.fg = phi i32 [ %i.dz, %.lr.ph57.split.i ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.23555.i, %.lr.ph57.split.i ], [ %.lcssa, %.loopexit.loopexit.i ]
  %.1.lcssa.i = phi ptr [ %.056.i, %.lr.ph57.split.i ], [ %i.ec, %.loopexit.loopexit.i ]
  %i.fh = getelementptr inbounds i8, ptr %.3.lcssa.i, i64 %i.dl
  %i.fi = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 %i.dm
  %i.fj = add nuw nsw i32 %.03654.i, 1            ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.fg
  br i1 %i.fk, label %.lr.ph57.split.i, label %transformSurfaceY90.exit, !llvm.loop !8

.thread167:                                       ; preds = %.thread163
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.fm = load i32, ptr %i.fl, align 4            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.077157161, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.077157161, i64 16 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.077157161, i64 8 ; 4 uses
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = sub nsw i32 %i.fq, %i.fs
  %i.fu = load <2 x float>, ptr %8, align 4
  %i.fv = fpext <2 x float> %i.fu to <2 x double>
  %i.fw = fmul <2 x double> %i.fv, splat (double 6.553600e+04)
  %9 = fptosi <2 x double> %i.fw to <2 x i32>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4
  %i.fx = call zeroext i1 @SDL_SurfaceHasColorKey_REAL(ptr noundef nonnull %0) #5
  br i1 %i.fx, label %bb.z, label %get_colorkey.exit.i

bb.z:                                             ; preds = %.thread167
  %i.fy = call zeroext i1 @SDL_GetSurfaceColorKey_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #5 ; 0 uses
  %.pre.i.i = load i32, ptr %i.a, align 4
  %i.fz = trunc i32 %.pre.i.i to i8
  br label %get_colorkey.exit.i

get_colorkey.exit.i:                              ; preds = %bb.z, %.thread167
  %i.ga = phi i8 [ %i.fz, %bb.z ], [ 0, %.thread167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.gb = load i32, ptr %i.fp, align 8
  %i.gc = sext i32 %i.gb to i64
  %i.gd = load i32, ptr %i.bb, align 4
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul nsw i64 %i.ge, %i.gc
  call void @llvm.memset.p0.i64(ptr align 1 %i.fo, i8 %i.ga, i64 %i.gf, i1 false)
  %i.gg = load i32, ptr %i.bb, align 4
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph70.i, label %transformSurfaceY90.exit

.lr.ph70.i:                                       ; preds = %get_colorkey.exit.i
  %i.gi = sitofp <2 x i32> %i.br to <2 x double>  ; 3 uses
  %i.gj = sitofp <2 x i32> %9 to <2 x double>
  %.not.i91 = icmp eq i32 %3, 0
  %.not63.i = icmp eq i32 %4, 0                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gm = sext i32 %i.ft to i64
  %i.gn = load i32, ptr %i.fr, align 8            ; 4 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph70.split.i.preheader, label %transformSurfaceY90.exit

.lr.ph70.split.i.preheader:                       ; preds = %.lr.ph70.i
  %i.gp = fneg <2 x double> %i.gi
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> %i.gi, <2 x i32> <i32 1, i32 2>
  br label %.lr.ph70.split.i

.lr.ph70.split.i:                                 ; preds = %.lr.ph70.split.i.preheader, %._crit_edge.i
  %i.gr = phi i32 [ %i.jm, %._crit_edge.i ], [ %i.gn, %.lr.ph70.split.i.preheader ] ; 3 uses
  %i.gs = phi i32 [ %i.jn, %._crit_edge.i ], [ %i.gn, %.lr.ph70.split.i.preheader ] ; 2 uses
  %i.gt = phi i32 [ %i.jo, %._crit_edge.i ], [ %i.gn, %.lr.ph70.split.i.preheader ] ; 2 uses
  %.05969.i = phi i32 [ %i.jq, %._crit_edge.i ], [ 0, %.lr.ph70.split.i.preheader ] ; 2 uses
  %.06068.i = phi ptr [ %i.jp, %._crit_edge.i ], [ %i.fo, %.lr.ph70.split.i.preheader ] ; 3 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.i93, label %._crit_edge.i

.lr.ph.i93:                                       ; preds = %.lr.ph70.split.i
  %i.gv = uitofp nneg i32 %.05969.i to double
  %i.gw = load <2 x i32>, ptr %5, align 4
  %i.gx = sitofp <2 x i32> %i.gw to <2 x double>
  %i.gy = insertelement <2 x double> <double 5.000000e-01, double poison>, double %i.gv, i64 1
  %i.gz = fadd <2 x double> %i.gy, %i.gx
  %i.ha = load <2 x float>, ptr %8, align 4
  %i.hb = fpext <2 x float> %i.ha to <2 x double>
  %10 = fadd <2 x double> %i.gz, <double -0.000000e+00, double 5.000000e-01>
  %i.hc = fsub <2 x double> %10, %i.hb            ; 2 uses
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.he = fmul <2 x double> %i.hd, %i.gq
  %i.hf = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.hf, <2 x double> %i.he)
  %i.hh = fadd <2 x double> %i.hg, %i.gj
  %i.hi = fadd <2 x double> %i.hh, splat (double -3.276800e+04)
  %i.hj = fptosi <2 x double> %i.hi to <2 x i32>  ; 2 uses
  br i1 %.not.i91, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i93, %bb.ac
  %i.hk = phi i32 [ %i.ie, %bb.ac ], [ %i.gr, %.lr.ph.i93 ] ; 2 uses
  %.05865.us.i = phi i32 [ %i.ih, %bb.ac ], [ 0, %.lr.ph.i93 ]
  %.164.us.i = phi ptr [ %i.ig, %bb.ac ], [ %.06068.i, %.lr.ph.i93 ] ; 2 uses
  %i.hl = phi <2 x i32> [ %i.if, %bb.ac ], [ %i.hj, %.lr.ph.i93 ] ; 3 uses
  %i.hm = extractelement <2 x i32> %i.hl, i64 0
  %i.hn = ashr i32 %i.hm, 16                      ; 2 uses
  %i.ho = extractelement <2 x i32> %i.hl, i64 1
  %i.hp = ashr i32 %i.ho, 16                      ; 3 uses
  %i.hq = load i32, ptr %i.bs, align 8
  %i.hr = icmp ult i32 %i.hn, %i.hq
  br i1 %i.hr, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.hs = load i32, ptr %i.fl, align 4
  %i.ht = icmp ult i32 %i.hp, %i.hs
  br i1 %i.ht, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hu = xor i32 %i.hp, -1
  %i.hv = add i32 %i.fm, %i.hu
  %.0.us.i = select i1 %.not63.i, i32 %i.hp, i32 %i.hv
  %i.hw = load ptr, ptr %i.gk, align 8
  %i.hx = load i32, ptr %i.gl, align 8
  %i.hy = mul nsw i32 %i.hx, %.0.us.i
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hw, i64 %i.hz
  %i.ib = sext i32 %i.hn to i64
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  store i8 %i.id, ptr %.164.us.i, align 1
  %.pre75.i = load i32, ptr %i.fr, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.split.us.i
  %i.ie = phi i32 [ %.pre75.i, %bb.ab ], [ %i.hk, %bb.aa ], [ %i.hk, %.lr.ph.split.us.i ] ; 5 uses
  %i.if = add nsw <2 x i32> %i.hl, %i.br
  %i.ig = getelementptr inbounds nuw i8, ptr %.164.us.i, i64 1 ; 2 uses
  %i.ih = add nuw nsw i32 %.05865.us.i, 1         ; 2 uses
  %i.ii = icmp slt i32 %i.ih, %i.ie
  br i1 %i.ii, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !10

.lr.ph.split.i:                                   ; preds = %.lr.ph.i93, %bb.af
  %i.ij = phi i32 [ %i.jg, %bb.af ], [ %i.gr, %.lr.ph.i93 ] ; 2 uses
  %i.ik = phi i32 [ %i.jh, %bb.af ], [ %i.gs, %.lr.ph.i93 ] ; 2 uses
  %.05865.i = phi i32 [ %i.jk, %bb.af ], [ 0, %.lr.ph.i93 ]
  %.164.i = phi ptr [ %i.jj, %bb.af ], [ %.06068.i, %.lr.ph.i93 ] ; 2 uses
  %i.il = phi <2 x i32> [ %i.ji, %bb.af ], [ %i.hj, %.lr.ph.i93 ] ; 3 uses
  %i.im = extractelement <2 x i32> %i.il, i64 0
  %i.in = ashr i32 %i.im, 16                      ; 2 uses
  %i.io = extractelement <2 x i32> %i.il, i64 1
  %i.ip = ashr i32 %i.io, 16                      ; 3 uses
  %i.iq = load i32, ptr %i.bs, align 8
  %i.ir = icmp ult i32 %i.in, %i.iq
  br i1 %i.ir, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.split.i
  %i.is = load i32, ptr %i.fl, align 4
  %i.it = icmp ult i32 %i.ip, %i.is
  br i1 %i.it, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.iu = xor i32 %i.in, -1
  %i.iv = add i32 %i.bt, %i.iu
  %i.iw = xor i32 %i.ip, -1
  %i.ix = add i32 %i.fm, %i.iw
  %.0.i = select i1 %.not63.i, i32 %i.ip, i32 %i.ix
  %i.iy = load ptr, ptr %i.gk, align 8
  %i.iz = load i32, ptr %i.gl, align 8
  %i.ja = mul nsw i32 %i.iz, %.0.i
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds i8, ptr %i.iy, i64 %i.jb
  %i.jd = sext i32 %i.iv to i64
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1
  store i8 %i.jf, ptr %.164.i, align 1
  %.pre.i94 = load i32, ptr %i.fr, align 8        ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph.split.i
  %i.jg = phi i32 [ %.pre.i94, %bb.ae ], [ %i.ij, %bb.ad ], [ %i.ij, %.lr.ph.split.i ] ; 2 uses
  %i.jh = phi i32 [ %.pre.i94, %bb.ae ], [ %i.ik, %bb.ad ], [ %i.ik, %.lr.ph.split.i ] ; 4 uses
  %i.ji = add nsw <2 x i32> %i.il, %i.br
  %i.jj = getelementptr inbounds nuw i8, ptr %.164.i, i64 1 ; 2 uses
  %i.jk = add nuw nsw i32 %.05865.i, 1            ; 2 uses
  %i.jl = icmp slt i32 %i.jk, %i.jh
  br i1 %i.jl, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.af, %bb.ac, %.lr.ph70.split.i
  %i.jm = phi i32 [ %i.gr, %.lr.ph70.split.i ], [ %i.ie, %bb.ac ], [ %i.jg, %bb.af ]
  %i.jn = phi i32 [ %i.gs, %.lr.ph70.split.i ], [ %i.ie, %bb.ac ], [ %i.jh, %bb.af ]
  %i.jo = phi i32 [ %i.gt, %.lr.ph70.split.i ], [ %i.ie, %bb.ac ], [ %i.jh, %bb.af ]
  %.1.lcssa.i92 = phi ptr [ %.06068.i, %.lr.ph70.split.i ], [ %i.ig, %bb.ac ], [ %i.jj, %bb.af ]
  %i.jp = getelementptr inbounds i8, ptr %.1.lcssa.i92, i64 %i.gm
  %i.jq = add nuw nsw i32 %.05969.i, 1            ; 2 uses
  %i.jr = load i32, ptr %i.bb, align 4
  %i.js = icmp slt i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph70.split.i, label %transformSurfaceY90.exit, !llvm.loop !11

bb.ag:                                            ; preds = %bb.p
  %i.jt = shl i32 %i.bq, 2
  %i.ju = sub i32 %i.bo, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.077157161, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8            ; 2 uses
  %.not.i.i95 = icmp eq i32 %4, 0                 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ka = load i32, ptr %i.jz, align 8            ; 3 uses
  %i.kb = sub nsw i32 0, %i.ka
  %i.kc = select i1 %.not.i.i95, i32 %i.ka, i32 %i.kb ; 6 uses
  %.not43.i.i96 = icmp eq i32 %3, 0               ; 4 uses
  %spec.select.i.i97 = select i1 %.not43.i.i96, i32 4, i32 -4 ; 4 uses
  switch i32 %spec.select90, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = mul nsw i32 %i.ke, %spec.select.i.i97
  %i.kg = sub nsw i32 %i.kc, %i.kf
  br label %computeSourceIncrements90.exit.i100

bb.ai:                                            ; preds = %bb.ag
  %i.kh = sub nsw i32 0, %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kj = load i32, ptr %i.ki, align 4
  %.neg.i.i130 = mul i32 %i.kj, %i.kc
  %i.kk = add i32 %.neg.i.i130, %spec.select.i.i97
  br label %computeSourceIncrements90.exit.i100

bb.aj:                                            ; preds = %bb.ag
  %spec.select.i.neg49.i129 = select i1 %.not43.i.i96, i32 -4, i32 4
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.km = load i32, ptr %i.kl, align 8
  %i.kn = mul nsw i32 %i.km, %spec.select.i.i97
  %i.ko = sub nsw i32 %i.kn, %i.kc
  br label %computeSourceIncrements90.exit.i100

bb.ak:                                            ; preds = %bb.ag
  %spec.select.i.neg.i98 = select i1 %.not43.i.i96, i32 -4, i32 4
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = mul i32 %i.kq, %i.kc
  %.neg.i99 = sub i32 %spec.select.i.neg.i98, %i.kr
  br label %computeSourceIncrements90.exit.i100

computeSourceIncrements90.exit.i100:              ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.048.i101 = phi i32 [ %spec.select.i.i97, %bb.ah ], [ %i.kh, %bb.ai ], [ %spec.select.i.neg49.i129, %bb.aj ], [ %i.kc, %bb.ak ] ; 2 uses
  %.047.i102 = phi i32 [ %i.kg, %bb.ah ], [ %i.kk, %bb.ai ], [ %i.ko, %bb.aj ], [ %.neg.i99, %bb.ak ]
  %.045.i103 = phi i32 [ 1, %bb.ah ], [ 1, %bb.ai ], [ -1, %bb.aj ], [ -1, %bb.ak ] ; 2 uses
  %.043.i104 = phi i32 [ 1, %bb.ah ], [ -1, %bb.ai ], [ -1, %bb.aj ], [ 1, %bb.ak ] ; 2 uses
  %i.ks = sub nsw i32 0, %.045.i103
  %spec.select.i105 = select i1 %.not43.i.i96, i32 %.045.i103, i32 %i.ks
  %i.kt = sub nsw i32 0, %.043.i104
  %.144.i106 = select i1 %.not.i.i95, i32 %.043.i104, i32 %i.kt
  %i.ku = icmp slt i32 %spec.select.i105, 0
  br i1 %i.ku, label %bb.al, label %bb.am

bb.al:                                            ; preds = %computeSourceIncrements90.exit.i100
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kw = load i32, ptr %i.kv, align 8
  %i.kx = add nsw i32 %i.kw, -1
  %i.ky = sext i32 %i.kx to i64
  %i.kz = shl nsw i64 %i.ky, 2
  %i.la = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.kz
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %computeSourceIncrements90.exit.i100
  %.033.i107 = phi ptr [ %i.la, %bb.al ], [ %i.jw, %computeSourceIncrements90.exit.i100 ] ; 2 uses
  %i.lb = icmp slt i32 %.144.i106, 0
  br i1 %i.lb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ld = load i32, ptr %i.lc, align 4
  %i.le = add nsw i32 %i.ld, -1
  %i.lf = mul nsw i32 %i.le, %i.ka
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %.033.i107, i64 %i.lg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.134.i108 = phi ptr [ %i.lh, %bb.an ], [ %.033.i107, %bb.am ] ; 2 uses
  %i.li = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph57.i110, label %transformSurfaceY90.exit

.lr.ph57.i110:                                    ; preds = %bb.ao
  %i.lk = icmp eq i32 %.048.i101, 4
  %i.ll = sext i32 %.048.i101 to i64              ; 9 uses
  %i.lm = sext i32 %.047.i102 to i64              ; 2 uses
  %i.ln = sext i32 %i.ju to i64                   ; 2 uses
  br i1 %i.lk, label %.lr.ph57.split.us.i125, label %.lr.ph57.split.i111.preheader

.lr.ph57.split.i111.preheader:                    ; preds = %.lr.ph57.i110
  %i.lo = icmp eq i32 %i.bq, 0
  br i1 %i.lo, label %transformSurfaceY90.exit, label %.lr.ph57.split.i111

.lr.ph57.split.us.i125:                           ; preds = %.lr.ph57.i110, %.lr.ph57.split.us.i125
  %i.lp = phi i32 [ %i.ls, %.lr.ph57.split.us.i125 ], [ %i.bq, %.lr.ph57.i110 ]
  %.056.us.i126 = phi ptr [ %i.ly, %.lr.ph57.split.us.i125 ], [ %i.jy, %.lr.ph57.i110 ] ; 2 uses
  %.23555.us.i127 = phi ptr [ %i.lx, %.lr.ph57.split.us.i125 ], [ %.134.i108, %.lr.ph57.i110 ] ; 2 uses
  %.03654.us.i128 = phi i32 [ %i.lz, %.lr.ph57.split.us.i125 ], [ 0, %.lr.ph57.i110 ]
  %i.lq = sext i32 %i.lp to i64
  %i.lr = shl nsw i64 %i.lq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.056.us.i126, ptr align 1 %.23555.us.i127, i64 %i.lr, i1 false)
  %i.ls = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.lt = sext i32 %i.ls to i64
  %i.lu = shl nsw i64 %i.lt, 2                    ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.23555.us.i127, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.056.us.i126, i64 %i.lu
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 %i.lm
  %i.ly = getelementptr inbounds i8, ptr %i.lw, i64 %i.ln
  %i.lz = add nuw nsw i32 %.03654.us.i128, 1      ; 2 uses
  %i.ma = load i32, ptr %i.bb, align 4
  %i.mb = icmp slt i32 %i.lz, %i.ma
  br i1 %i.mb, label %.lr.ph57.split.us.i125, label %transformSurfaceY90.exit, !llvm.loop !12

.lr.ph57.split.i111:                              ; preds = %.lr.ph57.split.i111.preheader, %.loopexit.i122
  %i.mc = phi i32 [ %i.nm, %.loopexit.i122 ], [ %i.li, %.lr.ph57.split.i111.preheader ]
  %.056.i112 = phi ptr [ %i.no, %.loopexit.i122 ], [ %i.jy, %.lr.ph57.split.i111.preheader ] ; 4 uses
  %.23555.i113 = phi ptr [ %i.nn, %.loopexit.i122 ], [ %.134.i108, %.lr.ph57.split.i111.preheader ] ; 3 uses
  %.03654.i114 = phi i32 [ %i.np, %.loopexit.i122 ], [ 0, %.lr.ph57.split.i111.preheader ]
  %i.md = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = shl nsw i64 %i.me, 2                    ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.056.i112, i64 %i.mf ; 2 uses
  %.not50.i115 = icmp eq i32 %i.md, 0
  br i1 %.not50.i115, label %.loopexit.i122, label %.lr.ph.i116.preheader

.lr.ph.i116.preheader:                            ; preds = %.lr.ph57.split.i111
  %i.mh = add nsw i64 %i.mf, -4                   ; 2 uses
  %i.mi = lshr exact i64 %i.mh, 2
  %i.mj = add nuw nsw i64 %i.mi, 1
  %xtraiter = and i64 %i.mj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol

.lr.ph.i116.prol:                                 ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116.prol
  %.152.i117.prol = phi ptr [ %i.mm, %.lr.ph.i116.prol ], [ %.056.i112, %.lr.ph.i116.preheader ] ; 2 uses
  %.351.i118.prol = phi ptr [ %i.ml, %.lr.ph.i116.prol ], [ %.23555.i113, %.lr.ph.i116.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i116.prol ], [ 0, %.lr.ph.i116.preheader ]
  %i.mk = load i32, ptr %.351.i118.prol, align 1
  store i32 %i.mk, ptr %.152.i117.prol, align 1
  %i.ml = getelementptr inbounds i8, ptr %.351.i118.prol, i64 %i.ll ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.152.i117.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol, !llvm.loop !13

.lr.ph.i116.prol.loopexit:                        ; preds = %.lr.ph.i116.prol, %.lr.ph.i116.preheader
  %.lcssa336.unr = phi ptr [ poison, %.lr.ph.i116.preheader ], [ %i.ml, %.lr.ph.i116.prol ]
  %.152.i117.unr = phi ptr [ %.056.i112, %.lr.ph.i116.preheader ], [ %i.mm, %.lr.ph.i116.prol ]
  %.351.i118.unr = phi ptr [ %.23555.i113, %.lr.ph.i116.preheader ], [ %i.ml, %.lr.ph.i116.prol ]
  %i.mn = icmp ult i64 %i.mh, 28
  br i1 %i.mn, label %.loopexit.loopexit.i120, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116
  %.152.i117 = phi ptr [ %i.nl, %.lr.ph.i116 ], [ %.152.i117.unr, %.lr.ph.i116.prol.loopexit ] ; 9 uses
  %.351.i118 = phi ptr [ %i.nk, %.lr.ph.i116 ], [ %.351.i118.unr, %.lr.ph.i116.prol.loopexit ] ; 2 uses
  %i.mo = load i32, ptr %.351.i118, align 1
  store i32 %i.mo, ptr %.152.i117, align 1
  %i.mp = getelementptr inbounds i8, ptr %.351.i118, i64 %i.ll ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.152.i117, i64 4
  %i.mr = load i32, ptr %i.mp, align 1
  store i32 %i.mr, ptr %i.mq, align 1
  %i.ms = getelementptr inbounds i8, ptr %i.mp, i64 %i.ll ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.152.i117, i64 8
  %i.mu = load i32, ptr %i.ms, align 1
  store i32 %i.mu, ptr %i.mt, align 1
  %i.mv = getelementptr inbounds i8, ptr %i.ms, i64 %i.ll ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.152.i117, i64 12
  %i.mx = load i32, ptr %i.mv, align 1
  store i32 %i.mx, ptr %i.mw, align 1
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.ll ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.152.i117, i64 16
  %i.na = load i32, ptr %i.my, align 1
  store i32 %i.na, ptr %i.mz, align 1
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 %i.ll ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.152.i117, i64 20
  %i.nd = load i32, ptr %i.nb, align 1
  store i32 %i.nd, ptr %i.nc, align 1
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %i.ll ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.152.i117, i64 24
  %i.ng = load i32, ptr %i.ne, align 1
  store i32 %i.ng, ptr %i.nf, align 1
  %i.nh = getelementptr inbounds i8, ptr %i.ne, i64 %i.ll ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.152.i117, i64 28
  %i.nj = load i32, ptr %i.nh, align 1
  store i32 %i.nj, ptr %i.ni, align 1
  %i.nk = getelementptr inbounds i8, ptr %i.nh, i64 %i.ll ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.152.i117, i64 32 ; 2 uses
  %.not.i119.7 = icmp eq ptr %i.nl, %i.mg
  br i1 %.not.i119.7, label %.loopexit.loopexit.i120, label %.lr.ph.i116, !llvm.loop !14

.loopexit.loopexit.i120:                          ; preds = %.lr.ph.i116, %.lr.ph.i116.prol.loopexit
  %.lcssa336 = phi ptr [ %.lcssa336.unr, %.lr.ph.i116.prol.loopexit ], [ %i.nk, %.lr.ph.i116 ]
  %.pre.i121 = load i32, ptr %i.bb, align 4
  br label %.loopexit.i122

.loopexit.i122:                                   ; preds = %.loopexit.loopexit.i120, %.lr.ph57.split.i111
  %i.nm = phi i32 [ %i.mc, %.lr.ph57.split.i111 ], [ %.pre.i121, %.loopexit.loopexit.i120 ] ; 2 uses
  %.3.lcssa.i123 = phi ptr [ %.23555.i113, %.lr.ph57.split.i111 ], [ %.lcssa336, %.loopexit.loopexit.i120 ]
  %.1.lcssa.i124 = phi ptr [ %.056.i112, %.lr.ph57.split.i111 ], [ %i.mg, %.loopexit.loopexit.i120 ]
  %i.nn = getelementptr inbounds i8, ptr %.3.lcssa.i123, i64 %i.lm
  %i.no = getelementptr inbounds i8, ptr %.1.lcssa.i124, i64 %i.ln
  %i.np = add nuw nsw i32 %.03654.i114, 1         ; 2 uses
  %i.nq = icmp slt i32 %i.np, %i.nm
  br i1 %i.nq, label %.lr.ph57.split.i111, label %transformSurfaceY90.exit, !llvm.loop !15

.thread169:                                       ; preds = %.thread163
  %i.nr = add nsw i32 %i.bt, -1                   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.nt = load i32, ptr %i.ns, align 4
  %i.nu = add nsw i32 %i.nt, -1                   ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.077157161, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.077157161, i64 16
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %.077157161, i64 8 ; 5 uses
  %i.oa = load i32, ptr %i.nz, align 8            ; 9 uses
  %i.ob = shl nsw i32 %i.oa, 2
  %i.oc = sub nsw i32 %i.ny, %i.ob                ; 2 uses
  %i.od = load <2 x float>, ptr %8, align 4
  %i.oe = fpext <2 x float> %i.od to <2 x double>
  %i.of = fmul <2 x double> %i.oe, splat (double 6.553600e+04)
  %i.og = fptosi <2 x double> %i.of to <2 x i32>  ; 2 uses
  %.not.i132 = icmp eq i32 %2, 0
  %i.oh = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, 0                   ; 2 uses
  br i1 %.not.i132, label %.preheader.i, label %.preheader249.i

.preheader249.i:                                  ; preds = %.thread169
  br i1 %i.oi, label %.lr.ph257.i, label %transformSurfaceY90.exit

.lr.ph257.i:                                      ; preds = %.preheader249.i
  %i.oj = sitofp <2 x i32> %i.br to <2 x double>  ; 3 uses
  %i.ok = sitofp <2 x i32> %i.og to <2 x double>
  %.not246.i = icmp eq i32 %3, 0                  ; 2 uses
  %.not247.i = icmp eq i32 %4, 0                  ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.on = sext i32 %i.oc to i64
  %i.oo = icmp sgt i32 %i.oa, 0
  br i1 %i.oo, label %.lr.ph257.split.i.preheader, label %transformSurfaceY90.exit

.lr.ph257.split.i.preheader:                      ; preds = %.lr.ph257.i
  %i.op = fneg <2 x double> %i.oj
  %i.oq = shufflevector <2 x double> %i.op, <2 x double> %i.oj, <2 x i32> <i32 1, i32 2>
  br label %.lr.ph257.split.i

.preheader.i:                                     ; preds = %.thread169
  br i1 %i.oi, label %.lr.ph269.i, label %transformSurfaceY90.exit

.lr.ph269.i:                                      ; preds = %.preheader.i
  %i.or = sitofp <2 x i32> %i.br to <2 x double>  ; 3 uses
  %i.os = sitofp <2 x i32> %i.og to <2 x double>
  %.not244.i = icmp eq i32 %3, 0
  %.not245.i = icmp eq i32 %4, 0                  ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ov = sext i32 %i.oc to i64
  %i.ow = icmp sgt i32 %i.oa, 0
  br i1 %i.ow, label %.lr.ph269.split.i.preheader, label %transformSurfaceY90.exit

.lr.ph269.split.i.preheader:                      ; preds = %.lr.ph269.i
  %i.ox = fneg <2 x double> %i.or
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> %i.or, <2 x i32> <i32 1, i32 2>
  br label %.lr.ph269.split.i

.lr.ph257.split.i:                                ; preds = %.lr.ph257.split.i.preheader, %._crit_edge.i134
  %i.oz = phi i32 [ %i.sg, %._crit_edge.i134 ], [ %i.oh, %.lr.ph257.split.i.preheader ]
  %i.pa = phi i32 [ %i.sh, %._crit_edge.i134 ], [ %i.oa, %.lr.ph257.split.i.preheader ] ; 2 uses
  %i.pb = phi i32 [ %i.si, %._crit_edge.i134 ], [ %i.oa, %.lr.ph257.split.i.preheader ] ; 2 uses
  %.0240256.i = phi i32 [ %i.sk, %._crit_edge.i134 ], [ 0, %.lr.ph257.split.i.preheader ] ; 2 uses
  %.0241255.i = phi ptr [ %i.sj, %._crit_edge.i134 ], [ %i.nw, %.lr.ph257.split.i.preheader ] ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph.preheader.i, label %._crit_edge.i134

.lr.ph.preheader.i:                               ; preds = %.lr.ph257.split.i
  %i.pd = uitofp nneg i32 %.0240256.i to double
  %i.pe = load <2 x i32>, ptr %5, align 4
  %i.pf = sitofp <2 x i32> %i.pe to <2 x double>
  %i.pg = insertelement <2 x double> <double 5.000000e-01, double poison>, double %i.pd, i64 1
  %i.ph = fadd <2 x double> %i.pg, %i.pf
  %i.pi = load <2 x float>, ptr %8, align 4
  %i.pj = fpext <2 x float> %i.pi to <2 x double>
  %i.pk = fadd <2 x double> %i.ph, <double -0.000000e+00, double 5.000000e-01>
  %i.pl = fsub <2 x double> %i.pk, %i.pj          ; 2 uses
  %i.pm = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pn = fmul <2 x double> %i.pm, %i.oq
  %i.po = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> %i.po, <2 x double> %i.pn)
  %i.pq = fadd <2 x double> %i.pp, %i.ok
  %i.pr = fadd <2 x double> %i.pq, splat (double -3.276800e+04)
  %i.ps = fptosi <2 x double> %i.pr to <2 x i32>
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.aw, %.lr.ph.preheader.i
  %i.pt = phi i32 [ %i.sb, %bb.aw ], [ %i.pa, %.lr.ph.preheader.i ] ; 3 uses
  %.0239252.i = phi i32 [ %i.se, %bb.aw ], [ 0, %.lr.ph.preheader.i ]
  %.1251.i = phi ptr [ %i.sd, %bb.aw ], [ %.0241255.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.pu = phi <2 x i32> [ %i.sc, %bb.aw ], [ %i.ps, %.lr.ph.preheader.i ] ; 4 uses
  %i.pv = extractelement <2 x i32> %i.pu, i64 0
  %i.pw = ashr i32 %i.pv, 16                      ; 2 uses
  %i.px = extractelement <2 x i32> %i.pu, i64 1
  %i.py = ashr i32 %i.px, 16                      ; 2 uses
  %i.pz = sub nsw i32 %i.nr, %i.pw
  %spec.select.i137 = select i1 %.not246.i, i32 %i.pw, i32 %i.pz ; 3 uses
  %i.qa = sub nsw i32 %i.nu, %i.py
  %.0235.i = select i1 %.not247.i, i32 %i.py, i32 %i.qa ; 3 uses
  %i.qb = icmp sgt i32 %spec.select.i137, -1
  %i.qc = icmp sgt i32 %.0235.i, -1
  %or.cond.i = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond.i, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %.lr.ph.i136
  %i.qd = load i32, ptr %i.bs, align 8
  %i.qe = add nsw i32 %i.qd, -1
  %i.qf = icmp slt i32 %spec.select.i137, %i.qe
  br i1 %i.qf, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.qg = load i32, ptr %i.ns, align 4
  %i.qh = add nsw i32 %i.qg, -1
  %i.qi = icmp slt i32 %.0235.i, %i.qh
  br i1 %i.qi, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.qj = load ptr, ptr %i.ol, align 8
  %i.qk = load i32, ptr %i.om, align 8            ; 2 uses
  %i.ql = mul nsw i32 %i.qk, %.0235.i
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.qj, i64 %i.qm
  %i.qo = zext nneg i32 %spec.select.i137 to i64
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qo ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 4 ; 2 uses
  %i.qr = sdiv i32 %i.qk, 4
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.qs ; 2 uses
  %i.qu = getelementptr inbounds i8, ptr %i.qt, i64 -4
  %i.qv = load <4 x i8>, ptr %i.qp, align 1       ; 2 uses
  %i.qw = load <4 x i8>, ptr %i.qq, align 1       ; 2 uses
  %i.qx = load <4 x i8>, ptr %i.qt, align 1       ; 2 uses
  %i.qy = load <4 x i8>, ptr %i.qu, align 1       ; 2 uses
  br i1 %.not246.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qz = phi <4 x i8> [ %i.qv, %bb.as ], [ %i.qw, %bb.ar ] ; 2 uses
  %i.ra = phi <4 x i8> [ %i.qy, %bb.as ], [ %i.qx, %bb.ar ] ; 2 uses
  %i.rb = phi <4 x i8> [ %i.qw, %bb.as ], [ %i.qv, %bb.ar ] ; 2 uses
  %i.rc = phi <4 x i8> [ %i.qx, %bb.as ], [ %i.qy, %bb.ar ] ; 2 uses
  br i1 %.not247.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.rd = phi <4 x i8> [ %i.qz, %bb.au ], [ %i.ra, %bb.at ]
  %i.re = phi <4 x i8> [ %i.rb, %bb.au ], [ %i.rc, %bb.at ]
  %i.rf = phi <4 x i8> [ %i.ra, %bb.au ], [ %i.qz, %bb.at ]
  %i.rg = phi <4 x i8> [ %i.rc, %bb.au ], [ %i.rb, %bb.at ]
  %i.rh = and <2 x i32> %i.pu, splat (i32 65535)  ; 2 uses
  %i.ri = zext <4 x i8> %i.rf to <4 x i32>
  %i.rj = zext <4 x i8> %i.rg to <4 x i32>        ; 2 uses
  %i.rk = zext <4 x i8> %i.rd to <4 x i32>
  %i.rl = zext <4 x i8> %i.re to <4 x i32>        ; 2 uses
  %i.rm = sub nsw <4 x i32> %i.ri, %i.rj
  %11 = shufflevector <2 x i32> %i.rh, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rn = mul nsw <4 x i32> %i.rm, %11
  %i.ro = lshr <4 x i32> %i.rn, splat (i32 16)
  %i.rp = add nuw nsw <4 x i32> %i.ro, %i.rj      ; 2 uses
  %i.rq = and <4 x i32> %i.rp, splat (i32 255)
  %i.rr = sub nsw <4 x i32> %i.rk, %i.rl
  %i.rs = mul nsw <4 x i32> %i.rr, %11
  %i.rt = lshr <4 x i32> %i.rs, splat (i32 16)
  %i.ru = add nuw nsw <4 x i32> %i.rt, %i.rl
  %i.rv = and <4 x i32> %i.ru, splat (i32 255)
  %i.rw = sub nsw <4 x i32> %i.rv, %i.rq
  %12 = shufflevector <2 x i32> %i.rh, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.rx = mul nsw <4 x i32> %i.rw, %12
  %i.ry = lshr <4 x i32> %i.rx, splat (i32 16)
  %i.rz = add nuw nsw <4 x i32> %i.ry, %i.rp
  %i.sa = trunc <4 x i32> %i.rz to <4 x i8>
  store <4 x i8> %i.sa, ptr %.1251.i, align 1
  %.pre.i138 = load i32, ptr %i.nz, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aq, %bb.ap, %.lr.ph.i136
  %i.sb = phi i32 [ %.pre.i138, %bb.av ], [ %i.pt, %bb.aq ], [ %i.pt, %bb.ap ], [ %i.pt, %.lr.ph.i136 ] ; 4 uses
  %i.sc = add nsw <2 x i32> %i.pu, %i.br
  %i.sd = getelementptr inbounds nuw i8, ptr %.1251.i, i64 4 ; 2 uses
  %i.se = add nuw nsw i32 %.0239252.i, 1          ; 2 uses
  %i.sf = icmp slt i32 %i.se, %i.sb
  br i1 %i.sf, label %.lr.ph.i136, label %._crit_edge.loopexit.i, !llvm.loop !16

._crit_edge.loopexit.i:                           ; preds = %bb.aw
  %.pre278.i = load i32, ptr %i.bb, align 4
  br label %._crit_edge.i134

._crit_edge.i134:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph257.split.i
  %i.sg = phi i32 [ %i.oz, %.lr.ph257.split.i ], [ %.pre278.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.sh = phi i32 [ %i.pa, %.lr.ph257.split.i ], [ %i.sb, %._crit_edge.loopexit.i ]
  %i.si = phi i32 [ %i.pb, %.lr.ph257.split.i ], [ %i.sb, %._crit_edge.loopexit.i ]
  %.1.lcssa.i135 = phi ptr [ %.0241255.i, %.lr.ph257.split.i ], [ %i.sd, %._crit_edge.loopexit.i ]
  %i.sj = getelementptr inbounds i8, ptr %.1.lcssa.i135, i64 %i.on
  %i.sk = add nuw nsw i32 %.0240256.i, 1          ; 2 uses
  %i.sl = icmp slt i32 %i.sk, %i.sg
  br i1 %i.sl, label %.lr.ph257.split.i, label %transformSurfaceY90.exit, !llvm.loop !17

.lr.ph269.split.i:                                ; preds = %.lr.ph269.split.i.preheader, %._crit_edge264.i
  %i.sm = phi i32 [ %i.wg, %._crit_edge264.i ], [ %i.oa, %.lr.ph269.split.i.preheader ] ; 4 uses
  %i.sn = phi i32 [ %i.wh, %._crit_edge264.i ], [ %i.oa, %.lr.ph269.split.i.preheader ] ; 3 uses
  %i.so = phi i32 [ %i.wi, %._crit_edge264.i ], [ %i.oa, %.lr.ph269.split.i.preheader ] ; 2 uses
  %i.sp = phi i32 [ %i.wj, %._crit_edge264.i ], [ %i.oa, %.lr.ph269.split.i.preheader ] ; 2 uses
  %.0234268.i = phi i32 [ %i.wl, %._crit_edge264.i ], [ 0, %.lr.ph269.split.i.preheader ] ; 2 uses
  %.2267.i = phi ptr [ %i.wk, %._crit_edge264.i ], [ %i.nw, %.lr.ph269.split.i.preheader ] ; 4 uses
  %i.sq = load <2 x i32>, ptr %5, align 4
  %i.sr = sitofp <2 x i32> %i.sq to <2 x double>
  %i.ss = uitofp nneg i32 %.0234268.i to double
  %i.st = insertelement <2 x double> <double 5.000000e-01, double poison>, double %i.ss, i64 1
  %i.su = fadd <2 x double> %i.st, %i.sr
  %i.sv = load <2 x float>, ptr %8, align 4
  %i.sw = fpext <2 x float> %i.sv to <2 x double>
  %13 = fadd <2 x double> %i.su, <double -0.000000e+00, double 5.000000e-01>
  %i.sx = fsub <2 x double> %13, %i.sw            ; 2 uses
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sz = fmul <2 x double> %i.sy, %i.oy
  %i.ta = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.ta, <2 x double> %i.sz)
  %i.tc = fadd <2 x double> %i.tb, %i.os
  %i.td = fadd <2 x double> %i.tc, splat (double -3.276800e+04)
  %i.te = fptosi <2 x double> %i.td to <2 x i32>  ; 3 uses
  %i.tf = icmp sgt i32 %i.sp, 0
  br i1 %i.tf, label %.lr.ph263.i, label %._crit_edge264.i

.lr.ph263.i:                                      ; preds = %.lr.ph269.split.i
  br i1 %.not244.i, label %.lr.ph263.split.us.i, label %.lr.ph263.split.i

.lr.ph263.split.us.i:                             ; preds = %.lr.ph263.i
  br i1 %.not245.i, label %.lr.ph263.split.us.split.us.i, label %.lr.ph263.split.us.split.i

.lr.ph263.split.us.split.us.i:                    ; preds = %.lr.ph263.split.us.i, %bb.az
  %i.tg = phi i32 [ %i.ty, %bb.az ], [ %i.sm, %.lr.ph263.split.us.i ] ; 2 uses
  %.0233259.us.us.i = phi i32 [ %i.ub, %bb.az ], [ 0, %.lr.ph263.split.us.i ]
  %.3258.us.us.i = phi ptr [ %i.ua, %bb.az ], [ %.2267.i, %.lr.ph263.split.us.i ] ; 2 uses
  %i.th = phi <2 x i32> [ %i.tz, %bb.az ], [ %i.te, %.lr.ph263.split.us.i ] ; 3 uses
  %i.ti = extractelement <2 x i32> %i.th, i64 0
  %i.tj = ashr i32 %i.ti, 16                      ; 2 uses
  %i.tk = extractelement <2 x i32> %i.th, i64 1
  %i.tl = ashr i32 %i.tk, 16                      ; 2 uses
  %i.tm = load i32, ptr %i.bs, align 8
  %i.tn = icmp ult i32 %i.tj, %i.tm
  br i1 %i.tn, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.lr.ph263.split.us.split.us.i
  %i.to = load i32, ptr %i.ns, align 4
  %i.tp = icmp ult i32 %i.tl, %i.to
  br i1 %i.tp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.tq = load ptr, ptr %i.ot, align 8
  %i.tr = load i32, ptr %i.ou, align 8
  %i.ts = mul nsw i32 %i.tr, %i.tl
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds i8, ptr %i.tq, i64 %i.tt
  %i.tv = sext i32 %i.tj to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 1
  store i32 %i.tx, ptr %.3258.us.us.i, align 1
  %.pre281.i = load i32, ptr %i.nz, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.lr.ph263.split.us.split.us.i
  %i.ty = phi i32 [ %.pre281.i, %bb.ay ], [ %i.tg, %bb.ax ], [ %i.tg, %.lr.ph263.split.us.split.us.i ] ; 6 uses
  %i.tz = add nsw <2 x i32> %i.th, %i.br
  %i.ua = getelementptr inbounds nuw i8, ptr %.3258.us.us.i, i64 4 ; 2 uses
  %i.ub = add nuw nsw i32 %.0233259.us.us.i, 1    ; 2 uses
  %i.uc = icmp slt i32 %i.ub, %i.ty
  br i1 %i.uc, label %.lr.ph263.split.us.split.us.i, label %._crit_edge264.i, !llvm.loop !18

.lr.ph263.split.us.split.i:                       ; preds = %.lr.ph263.split.us.i, %bb.bc
  %i.ud = phi i32 [ %i.ux, %bb.bc ], [ %i.sm, %.lr.ph263.split.us.i ] ; 2 uses
  %i.ue = phi i32 [ %i.uy, %bb.bc ], [ %i.sn, %.lr.ph263.split.us.i ] ; 2 uses
  %.0233259.us.i = phi i32 [ %i.vb, %bb.bc ], [ 0, %.lr.ph263.split.us.i ]
  %.3258.us.i = phi ptr [ %i.va, %bb.bc ], [ %.2267.i, %.lr.ph263.split.us.i ] ; 2 uses
  %i.uf = phi <2 x i32> [ %i.uz, %bb.bc ], [ %i.te, %.lr.ph263.split.us.i ] ; 3 uses
  %i.ug = extractelement <2 x i32> %i.uf, i64 0
  %i.uh = ashr i32 %i.ug, 16                      ; 2 uses
  %i.ui = extractelement <2 x i32> %i.uf, i64 1
  %i.uj = ashr i32 %i.ui, 16                      ; 2 uses
  %i.uk = load i32, ptr %i.bs, align 8
  %i.ul = icmp ult i32 %i.uh, %i.uk
  br i1 %i.ul, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph263.split.us.split.i
  %i.um = load i32, ptr %i.ns, align 4
  %i.un = icmp ult i32 %i.uj, %i.um
  br i1 %i.un, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.uo = sub nsw i32 %i.nu, %i.uj
  %i.up = load ptr, ptr %i.ot, align 8
  %i.uq = load i32, ptr %i.ou, align 8
  %i.ur = mul nsw i32 %i.uq, %i.uo
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds i8, ptr %i.up, i64 %i.us
  %i.uu = sext i32 %i.uh to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 1
  store i32 %i.uw, ptr %.3258.us.i, align 1
  %.pre280.i = load i32, ptr %i.nz, align 8       ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph263.split.us.split.i
  %i.ux = phi i32 [ %.pre280.i, %bb.bb ], [ %i.ud, %bb.ba ], [ %i.ud, %.lr.ph263.split.us.split.i ] ; 2 uses
  %i.uy = phi i32 [ %.pre280.i, %bb.bb ], [ %i.ue, %bb.ba ], [ %i.ue, %.lr.ph263.split.us.split.i ] ; 5 uses
  %i.uz = add nsw <2 x i32> %i.uf, %i.br
  %i.va = getelementptr inbounds nuw i8, ptr %.3258.us.i, i64 4 ; 2 uses
  %i.vb = add nuw nsw i32 %.0233259.us.i, 1       ; 2 uses
  %i.vc = icmp slt i32 %i.vb, %i.uy
  br i1 %i.vc, label %.lr.ph263.split.us.split.i, label %._crit_edge264.i, !llvm.loop !18

.lr.ph263.split.i:                                ; preds = %.lr.ph263.i, %bb.bf
  %i.vd = phi i32 [ %i.vz, %bb.bf ], [ %i.sm, %.lr.ph263.i ] ; 2 uses
  %i.ve = phi i32 [ %i.wa, %bb.bf ], [ %i.sn, %.lr.ph263.i ] ; 2 uses
  %i.vf = phi i32 [ %i.wb, %bb.bf ], [ %i.so, %.lr.ph263.i ] ; 2 uses
  %.0233259.i = phi i32 [ %i.we, %bb.bf ], [ 0, %.lr.ph263.i ]
  %.3258.i = phi ptr [ %i.wd, %bb.bf ], [ %.2267.i, %.lr.ph263.i ] ; 2 uses
  %i.vg = phi <2 x i32> [ %i.wc, %bb.bf ], [ %i.te, %.lr.ph263.i ] ; 3 uses
  %i.vh = extractelement <2 x i32> %i.vg, i64 0
  %i.vi = ashr i32 %i.vh, 16                      ; 2 uses
  %i.vj = extractelement <2 x i32> %i.vg, i64 1
  %i.vk = ashr i32 %i.vj, 16                      ; 3 uses
  %i.vl = load i32, ptr %i.bs, align 8
  %i.vm = icmp ult i32 %i.vi, %i.vl
  br i1 %i.vm, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.lr.ph263.split.i
  %i.vn = load i32, ptr %i.ns, align 4
  %i.vo = icmp ult i32 %i.vk, %i.vn
  br i1 %i.vo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.vp = sub nsw i32 %i.nr, %i.vi
  %i.vq = sub nsw i32 %i.nu, %i.vk
  %.0.i140 = select i1 %.not245.i, i32 %i.vk, i32 %i.vq
  %i.vr = load ptr, ptr %i.ot, align 8
  %i.vs = load i32, ptr %i.ou, align 8
  %i.vt = mul nsw i32 %i.vs, %.0.i140
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %i.vr, i64 %i.vu
  %i.vw = sext i32 %i.vp to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 1
  store i32 %i.vy, ptr %.3258.i, align 1
  %.pre279.i = load i32, ptr %i.nz, align 8       ; 3 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.lr.ph263.split.i
  %i.vz = phi i32 [ %.pre279.i, %bb.be ], [ %i.vd, %bb.bd ], [ %i.vd, %.lr.ph263.split.i ] ; 2 uses
  %i.wa = phi i32 [ %.pre279.i, %bb.be ], [ %i.ve, %bb.bd ], [ %i.ve, %.lr.ph263.split.i ] ; 2 uses
  %i.wb = phi i32 [ %.pre279.i, %bb.be ], [ %i.vf, %bb.bd ], [ %i.vf, %.lr.ph263.split.i ] ; 4 uses
  %i.wc = add nsw <2 x i32> %i.vg, %i.br
  %i.wd = getelementptr inbounds nuw i8, ptr %.3258.i, i64 4 ; 2 uses
  %i.we = add nuw nsw i32 %.0233259.i, 1          ; 2 uses
  %i.wf = icmp slt i32 %i.we, %i.wb
  br i1 %i.wf, label %.lr.ph263.split.i, label %._crit_edge264.i, !llvm.loop !18

._crit_edge264.i:                                 ; preds = %bb.bf, %bb.bc, %bb.az, %.lr.ph269.split.i
  %i.wg = phi i32 [ %i.sm, %.lr.ph269.split.i ], [ %i.ux, %bb.bc ], [ %i.ty, %bb.az ], [ %i.vz, %bb.bf ]
  %i.wh = phi i32 [ %i.sn, %.lr.ph269.split.i ], [ %i.uy, %bb.bc ], [ %i.ty, %bb.az ], [ %i.wa, %bb.bf ]
  %i.wi = phi i32 [ %i.so, %.lr.ph269.split.i ], [ %i.uy, %bb.bc ], [ %i.ty, %bb.az ], [ %i.wb, %bb.bf ]
  %i.wj = phi i32 [ %i.sp, %.lr.ph269.split.i ], [ %i.uy, %bb.bc ], [ %i.ty, %bb.az ], [ %i.wb, %bb.bf ]
  %.3.lcssa.i139 = phi ptr [ %.2267.i, %.lr.ph269.split.i ], [ %i.va, %bb.bc ], [ %i.ua, %bb.az ], [ %i.wd, %bb.bf ]
  %i.wk = getelementptr inbounds i8, ptr %.3.lcssa.i139, i64 %i.ov
  %i.wl = add nuw nsw i32 %.0234268.i, 1          ; 2 uses
  %i.wm = load i32, ptr %i.bb, align 4
  %i.wn = icmp slt i32 %i.wl, %i.wm
  br i1 %i.wn, label %.lr.ph269.split.i, label %transformSurfaceY90.exit, !llvm.loop !19

transformSurfaceY90.exit:                         ; preds = %._crit_edge.i134, %._crit_edge264.i, %._crit_edge.i, %.loopexit.i122, %.lr.ph57.split.us.i125, %.loopexit.i, %.lr.ph57.split.us.i, %.lr.ph57.split.i111.preheader, %.lr.ph57.split.i.preheader, %.lr.ph269.i, %.preheader.i, %.lr.ph257.i, %.preheader249.i, %bb.ao, %.lr.ph70.i, %get_colorkey.exit.i, %bb.y
  %i.wo = load i32, ptr %0, align 8
  %i.wp = and i32 %i.wo, 2
  %.not88 = icmp eq i32 %i.wp, 0
  br i1 %.not88, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %transformSurfaceY90.exit
  call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %0) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %transformSurfaceY90.exit, %bb.bg, %bb.f, %bb.d, %bb.a, %bb.n
  %.078 = phi ptr [ null, %bb.f ], [ null, %bb.n ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.d ], [ %.077157161, %transformSurfaceY90.exit ], [ %.077157161, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.078
}

declare zeroext i1 @SDL_SurfaceValid(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SurfaceHasColorKey_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetSurfaceColorKey_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurface_REAL(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfacePalette_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetSurfaceBlendMode_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceColorKey_REAL(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_LockSurface_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_UnlockSurface_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4, !9}
!9 = !{!"llvm.loop.unswitch.partial.disable"}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4, !9}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4, !9}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4, !9}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4, !9}
end_hunk_0
