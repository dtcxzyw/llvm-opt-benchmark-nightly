Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/osmesa_context?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GLFWlibrary = type { i32, %struct.anon, ptr, ptr, ptr, ptr, i32, i32, [16 x %struct._GLFWjoystick], ptr, i32, %struct._GLFWtls, %struct._GLFWtls, %struct._GLFWmutex, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct._GLFWlibraryX11, %struct._GLFWlibraryGLX, %struct._GLFWlibraryLinux, %struct._GLFWlibraryEGL, %struct._GLFWlibraryOSMesa }
%struct.anon = type { %struct._GLFWinitconfig, %struct._GLFWfbconfig, %struct._GLFWwndconfig, %struct._GLFWctxconfig, i32 }
%struct._GLFWinitconfig = type { i32, i32, %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct._GLFWfbconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct._GLFWwndconfig = type { i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.1, %struct.anon.2, %struct.anon.3 }
%struct.anon.1 = type { i32, [256 x i8] }
%struct.anon.2 = type { [256 x i8], [256 x i8] }
%struct.anon.3 = type { i32 }
%struct._GLFWctxconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.anon.4 }
%struct.anon.4 = type { i32 }
%struct._GLFWjoystick = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, [33 x i8], ptr, %struct._GLFWjoystickLinux }
%struct._GLFWjoystickLinux = type { i32, [4096 x i8], [512 x i32], [64 x i32], [64 x %struct.input_absinfo], [4 x [2 x i32]] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct._GLFWtls = type { %struct._GLFWtlsPOSIX }
%struct._GLFWtlsPOSIX = type { i32, i32 }
%struct._GLFWmutex = type { %struct._GLFWmutexPOSIX }
%struct._GLFWmutexPOSIX = type { i32, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.5 = type { i64, %struct._GLFWtimerPOSIX }
%struct._GLFWtimerPOSIX = type { i32, i64 }
%struct.anon.6 = type { i32, ptr, [2 x ptr], ptr, ptr, i32, i32, i32 }
%struct.anon.7 = type { ptr, ptr }
%struct._GLFWlibraryX11 = type { ptr, i32, i64, float, float, i64, i64, i32, ptr, i32, ptr, ptr, [349 x [5 x i8]], [256 x i16], [349 x i16], double, double, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.anon.8, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.anon.12, %struct.anon.13, %struct.anon.14, %struct.anon.15, %struct.anon.16, %struct.anon.17, %struct.anon.18, %struct.anon.19, %struct.anon.20 }
%struct.anon.8 = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.9 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.10 = type { i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.11 = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.12 = type { i32, i32, i32, i32, i32 }
%struct.anon.13 = type { i32, i64, i64 }
%struct.anon.14 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.15 = type { i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.16 = type { ptr, ptr }
%struct.anon.17 = type { i32, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.anon.18 = type { i32, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.anon.19 = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.20 = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct._GLFWlibraryGLX = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GLFWlibraryLinux = type { i32, i32, %struct.re_pattern_buffer, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct._GLFWlibraryEGL = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._GLFWlibraryOSMesa = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"libOSMesa.so.8\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"libOSMesa.so.6\00", align 1
@_glfw = external global %struct._GLFWlibrary, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"OSMesa: Library not found\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"OSMesaCreateContextExt\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"OSMesaCreateContextAttribs\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"OSMesaDestroyContext\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"OSMesaMakeCurrent\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"OSMesaGetColorBuffer\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"OSMesaGetDepthBuffer\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"OSMesaGetProcAddress\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"OSMesa: Failed to load required entry points\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"OSMesa: OpenGL ES is not available on OSMesa\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"OSMesa: Forward-compatible contexts not supported\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"OSMesa: OpenGL profiles unavailable\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"OSMesa: Failed to create context\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"OSMesa: Failed to retrieve color buffer\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"OSMesa: Failed to retrieve depth buffer\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"OSMesa: Failed to make context current\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwInitOSMesa() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader.preheader, label %_glfwTerminateOSMesa.exit

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call ptr @dlopen(ptr noundef nonnull @.str, i32 noundef 1) #7 ; 3 uses
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %.preheader.1, label %.thread

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.c = tail call ptr @dlopen(ptr noundef nonnull @.str.1, i32 noundef 1) #7 ; 3 uses
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %.not17.1 = icmp eq ptr %i.c, null
  br i1 %.not17.1, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader.1
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.2) #7
  br label %_glfwTerminateOSMesa.exit

.thread:                                          ; preds = %.preheader.preheader, %.preheader.1
  %.lcssa = phi ptr [ %i.b, %.preheader.preheader ], [ %i.c, %.preheader.1 ]
  %i.d = tail call ptr @dlsym(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.3) #7
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136224), align 8, !tbaa !59
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %i.f = tail call ptr @dlsym(ptr noundef %i.e, ptr noundef nonnull @.str.4) #7
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136232), align 8, !tbaa !60
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %i.h = tail call ptr @dlsym(ptr noundef %i.g, ptr noundef nonnull @.str.5) #7
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136240), align 8, !tbaa !61
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %i.j = tail call ptr @dlsym(ptr noundef %i.i, ptr noundef nonnull @.str.6) #7
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136248), align 8, !tbaa !62
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %i.l = tail call ptr @dlsym(ptr noundef %i.k, ptr noundef nonnull @.str.7) #7
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136256), align 8, !tbaa !63
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %i.n = tail call ptr @dlsym(ptr noundef %i.m, ptr noundef nonnull @.str.8) #7
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136264), align 8, !tbaa !64
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  %i.p = tail call ptr @dlsym(ptr noundef %i.o, ptr noundef nonnull @.str.9) #7 ; 2 uses
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136272), align 8, !tbaa !65
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136224), align 8, !tbaa !59
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136240), align 8
  %i.s = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136248), align 8
  %i.t = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.u = insertelement <4 x ptr> %i.t, ptr %i.r, i64 1
  %i.v = shufflevector <2 x ptr> %i.s, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x ptr> %i.u, <4 x ptr> %i.v, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.fr = freeze <4 x ptr> %i.w
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136264), align 8
  %.fr27 = freeze ptr %i.x
  %i.y = icmp ne ptr %.fr27, null
  %i.z = icmp ne ptr %i.p, null
  %i.aa = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp eq i4 %i.ab, 0
  %op.rdx = and i1 %i.ac, %i.y
  %op.rdx25 = select i1 %op.rdx, i1 %i.z, i1 false
  br i1 %op.rdx25, label %_glfwTerminateOSMesa.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.10) #7
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_glfwTerminateOSMesa.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call i32 @dlclose(ptr noundef nonnull %i.ad) #7 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  br label %_glfwTerminateOSMesa.exit

_glfwTerminateOSMesa.exit:                        ; preds = %bb.d, %bb.c, %.thread, %bb.a, %bb.b
  %.013 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %.thread ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @_glfwTerminateOSMesa() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @dlclose(ptr noundef nonnull %i.a) #7 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136216), align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwCreateContextOSMesa(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i32], align 16              ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !85
  %i.f = add nsw i32 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86
  %i.i = add nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !87
  %i.l = add nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !88
  %i.n = icmp eq i32 %i.m, 196610
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.11) #7
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 680
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.052 = phi ptr [ %i.r, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136232), align 8, !tbaa !60 ; 2 uses
  %.not57 = icmp eq ptr %i.s, null
  br i1 %.not57, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 34, ptr %i.a, align 16, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 6408, ptr %i.t, align 4, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 48, ptr %i.u, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 49, ptr %i.y, align 16, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 50, ptr %i.ac, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.l, ptr %i.ad, align 4, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !92
  switch i32 %i.af, label %bb.h [
    i32 204801, label %.sink.split
    i32 204802, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ 53, %bb.g ], [ 52, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 51, ptr %i.ag, align 16, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.sink, ptr %i.ah, align 4, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.0 = phi i32 [ 8, %bb.f ], [ 10, %.sink.split ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !93 ; 2 uses
  %.not59 = icmp eq i32 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !94 ; 2 uses
  %.not60 = icmp eq i32 %i.al, 0
  %or.cond = select i1 %.not59, i1 %.not60, i1 false
  br i1 %or.cond, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %i.am = zext nneg i32 %.0 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am ; 4 uses
  store i32 54, ptr %i.an, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 55, ptr %i.ap, align 8, !tbaa !78
  %i.aq = or disjoint i32 %.0, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.al, ptr %i.ar, align 4, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.1 = phi i32 [ %i.aq, %._crit_edge ], [ %.0, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !95
  %.not61 = icmp eq i32 %i.at, 0
  br i1 %.not61, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.au = zext nneg i32 %.1 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !78
  %i.ax = call ptr %i.s(ptr noundef nonnull %i.a, ptr noundef %.052) #7 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65543, ptr noundef nonnull @.str.12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.q

bb.k:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !92
  %.not58 = icmp eq i32 %i.ba, 0
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65543, ptr noundef nonnull @.str.13) #7
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136224), align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !91
  %i.bg = tail call ptr %i.bb(i32 noundef 6408, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.l, ptr noundef %.052) #7 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !77
  br label %bb.n

end_hunk_0
