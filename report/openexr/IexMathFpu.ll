Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/IexMathFpu?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.sigaction = type { %union.anon.8, %struct.__sigset_t, i32, ptr }
%union.anon.8 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }

@_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE = internal global ptr null, align 8
@.str = private unnamed_addr constant [72 x i8] c"Floating-point exception, caused by a signal sent from another process.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Floating-point division by zero.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Floating-point overflow.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Floating-point underflow.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Inexact floating-point result.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid floating-point operation.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Integer division by zero.\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Integer overflow.\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Subscript out of range.\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Floating-point exception.\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7Iex_3_410FpuControl15clearExceptionsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void asm sideeffect "stmxcsr $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a) #4, !srcloc !8
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.d = and i32 %i.c, -64
  store i32 %i.d, ptr %i.b, align 4, !tbaa !9
  call void asm sideeffect "ldmxcsr $0\0Afnclex", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.b) #4, !srcloc !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @catchSigFpe(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = load i16, ptr %i.d, align 8, !tbaa !27
  %i.f = and i16 %i.e, -3841
  %i.g = or disjoint i16 %i.f, 768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.g, ptr %i.b, align 2, !tbaa !14
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %i.b) #4, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = and i32 %i.j, -64
  store i32 %i.k, ptr %i.a, align 4, !tbaa !9
  call void asm sideeffect "ldmxcsr $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a) #4, !srcloc !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.q(i32 noundef 0, ptr noundef nonnull @.str)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %0, 8
  br i1 %i.r, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  switch i32 %i.o, label %bb.m [
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 1, label %.sink.split
    i32 2, label %bb.k
    i32 8, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.s(i32 noundef 4, ptr noundef nonnull @.str.1)
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.t = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.t(i32 noundef 1, ptr noundef nonnull @.str.2)
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.u = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.u(i32 noundef 2, ptr noundef nonnull @.str.3)
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.v = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.v(i32 noundef 8, ptr noundef nonnull @.str.4)
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.w = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.w(i32 noundef 16, ptr noundef nonnull @.str.5)
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.l, %bb.k
  %.str.6.sink = phi ptr [ @.str.8, %bb.l ], [ @.str.7, %bb.k ], [ @.str.6, %bb.e ]
  %i.x = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.x(i32 noundef 0, ptr noundef nonnull %.str.6.sink)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e, %bb.d
  %i.y = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.y(i32 noundef 0, ptr noundef nonnull @.str.9)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7Iex_3_415setFpExceptionsEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %1 = and i32 %0, 1
  %.not = icmp eq i32 %1, 0
  %spec.select = select i1 %.not, i32 63, i32 55  ; 2 uses
  %2 = and i32 %0, 2
  %.not11 = icmp eq i32 %2, 0
  %3 = and i32 %spec.select, 47
  %.1 = select i1 %.not11, i32 %spec.select, i32 %3 ; 2 uses
  %i.g = and i32 %0, 4
  %.not12 = icmp eq i32 %i.g, 0
  %i.h = and i32 %.1, 59
  %.2 = select i1 %.not12, i32 %.1, i32 %i.h      ; 2 uses
  %i.i = and i32 %0, 8
  %.not13 = icmp eq i32 %i.i, 0
  %4 = and i32 %.2, 31
  %.3 = select i1 %.not13, i32 %.2, i32 %4        ; 2 uses
  %i.j = and i32 %0, 16
  %.not14 = icmp eq i32 %i.j, 0
  %5 = and i32 %.3, 62
  %.4 = select i1 %.not14, i32 %.3, i32 %5        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %i.f) #4, !srcloc !18
  %i.k = load i16, ptr %i.f, align 2, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void asm sideeffect "stmxcsr $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.e) #4, !srcloc !8
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.m = and i16 %i.k, -64
  %i.n = trunc nuw nsw i32 %.4 to i16
  %i.o = or disjoint i16 %i.m, %i.n
  %i.p = and i32 %i.l, -8065
  %i.q = shl nuw nsw i32 %.4, 7
  %i.r = or disjoint i32 %i.p, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.o, ptr %i.d, align 2, !tbaa !14
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %i.d) #4, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.r, ptr %i.c, align 4, !tbaa !9
  call void asm sideeffect "ldmxcsr $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c) #4, !srcloc !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void asm sideeffect "stmxcsr $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a) #4, !srcloc !8
  %i.s = load i32, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.t = and i32 %i.s, -64
  store i32 %i.t, ptr %i.b, align 4, !tbaa !9
  call void asm sideeffect "ldmxcsr $0\0Afnclex", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.b) #4, !srcloc !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 32) i32 @_ZN7Iex_3_412fpExceptionsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void asm sideeffect "stmxcsr $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.b) #4, !srcloc !8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %i.a) #4, !srcloc !18
  %i.d = load i16, ptr %i.a, align 2, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.e = and i16 %i.d, 63
  %i.f = zext nneg i16 %i.e to i32
  %i.g = lshr i32 %i.c, 7
  %i.h = and i32 %i.g, %i.f                       ; 4 uses
  %i.i = lshr i32 %i.h, 3
  %i.j = and i32 %i.h, 4
  %i.k = and i32 %i.i, 3
  %i.l = or disjoint i32 %i.k, %i.j
  %.2 = xor i32 %i.l, 7                           ; 2 uses
  %.not13 = icmp samesign ult i32 %i.h, 32
  %i.m = or disjoint i32 %.2, 8
  %.3 = select i1 %.not13, i32 %i.m, i32 %.2
  %i.n = shl nuw nsw i32 %i.h, 4
  %i.o = and i32 %i.n, 16
  %i.p = or disjoint i32 %.3, %i.o
  %.4 = xor i32 %i.p, 16
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Iex_3_430handleExceptionsSetInRegistersEv() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void asm sideeffect "stmxcsr $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.d) #4, !srcloc !8
  %i.g = load i32, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %i.c) #4, !srcloc !18
  %i.h = load i16, ptr %i.c, align 2, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %i.i = and i16 %i.h, 63
  %i.j = zext nneg i16 %i.i to i32
  %i.k = lshr i32 %i.g, 7
  %i.l = and i32 %i.k, %i.j                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void asm sideeffect "stmxcsr $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.b) #4, !srcloc !8
  %i.m = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void asm sideeffect "fnstsw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %i.a) #4, !srcloc !31
  %i.n = load i16, ptr %i.a, align 2, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.o = zext i16 %i.n to i32
  %i.p = or i32 %i.m, %i.o                        ; 5 uses
  %i.q = and i32 %i.l, 4
  %.not = icmp ne i32 %i.q, 0
  %i.r = and i32 %i.p, 4
  %.not10 = icmp eq i32 %i.r, 0
  %or.cond = or i1 %.not, %.not10
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.s(i32 noundef 4, ptr noundef nonnull @.str.1)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.t = and i32 %i.l, 8
  %.not11 = icmp ne i32 %i.t, 0
  %i.u = and i32 %i.p, 8
  %.not12 = icmp eq i32 %i.u, 0
  %or.cond19 = or i1 %.not11, %.not12
  br i1 %or.cond19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.v(i32 noundef 1, ptr noundef nonnull @.str.2)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.w = and i32 %i.l, 16
  %.not13 = icmp ne i32 %i.w, 0
  %i.x = and i32 %i.p, 16
  %.not14 = icmp eq i32 %i.x, 0
  %or.cond20 = or i1 %.not13, %.not14
  br i1 %or.cond20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.y(i32 noundef 2, ptr noundef nonnull @.str.3)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not15 = icmp samesign ugt i32 %i.l, 31
  %i.z = and i32 %i.p, 32
  %.not16 = icmp eq i32 %i.z, 0
  %or.cond21 = or i1 %.not15, %.not16
  br i1 %or.cond21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.aa(i32 noundef 8, ptr noundef nonnull @.str.4)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not17 = trunc i32 %i.l to i1
  %i.ab = and i32 %i.p, 1
  %.not18 = icmp eq i32 %i.ab, 0
  %or.cond22 = or i1 %.not18, %.not17
  br i1 %or.cond22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  call void %i.ac(i32 noundef 16, ptr noundef nonnull @.str.5)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7Iex_3_421setFpExceptionHandlerEPFviPKcE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 7 uses
  %i.a = load volatile ptr, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = call i32 @sigemptyset(ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 1073741828, ptr %i.e, align 8, !tbaa !33
  store ptr @catchSigFpe, ptr %1, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr null, ptr %i.f, align 8, !tbaa !35
  %i.g = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %1, ptr noundef null) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store volatile ptr %0, ptr @_ZN7Iex_3_412_GLOBAL__N_110fpeHandlerE, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
