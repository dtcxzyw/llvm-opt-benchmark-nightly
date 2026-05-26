inline.NumInlined: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Conversion syntax\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Division by zero\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Division impossible\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Division undefined\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Inexact\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Insufficient storage\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Invalid context\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid operation\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Clamped\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Rounded\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Subnormal\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Underflow\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"No status\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Multiple status\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decContextClearStatus_78(ptr noundef returned captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @uprv_decContextDefault_78(ptr noundef returned writeonly captures(ret: address, provenance) initializes((0, 25)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  store <4 x i32> <i32 9, i32 999999999, i32 -999999999, i32 2>, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 8927, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 0, ptr %i.c, align 4
  %i.d = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 27)
  switch i32 %i.d, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 7, i32 96, i32 -95, i32 3>, ptr %0, align 4
  store i32 0, ptr %i.a, align 4
  store i8 1, ptr %i.c, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store <4 x i32> <i32 16, i32 384, i32 -383, i32 3>, ptr %0, align 4
  store i32 0, ptr %i.a, align 4
  store i8 1, ptr %i.c, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store <4 x i32> <i32 34, i32 6144, i32 -6143, i32 3>, ptr %0, align 4
  store i32 0, ptr %i.a, align 4
  store i8 1, ptr %i.c, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 128, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decContextSetStatus_78(ptr noundef returned captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uprv_decContextGetRounding_78(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uprv_decContextGetStatus_78(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decContextRestoreStatus_78(ptr noundef returned captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, %i.a
  %i.e = and i32 %2, %1
  %i.f = or disjoint i32 %i.d, %i.e
  store i32 %i.f, ptr %i.b, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uprv_decContextSaveStatus_78(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, %1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @uprv_decContextSetRounding_78(ptr noundef returned writeonly captures(ret: address, provenance) initializes((12, 16)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uprv_decContextSetStatusFromString_78(ptr noundef captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str) #6
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.1) #6
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 2
  store i32 %i.j, ptr %i.h, align 4
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.2) #6
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = or i32 %i.n, 4
  store i32 %i.o, ptr %i.m, align 4
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.3) #6
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, 8
  store i32 %i.t, ptr %i.r, align 4
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.4) #6
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, 32
  store i32 %i.y, ptr %i.w, align 4
  br label %bb.ab

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.5) #6
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = or i32 %i.ac, 16
  store i32 %i.ad, ptr %i.ab, align 4
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.6) #6
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, 64
  store i32 %i.ai, ptr %i.ag, align 4
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.7) #6
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = or i32 %i.am, 128
  store i32 %i.an, ptr %i.al, align 4
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #6
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = or i32 %i.ar, 512
  store i32 %i.as, ptr %i.aq, align 4
  br label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.9) #6
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = or i32 %i.aw, 1024
  store i32 %i.ax, ptr %i.av, align 4
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.10) #6
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = or i32 %i.bb, 2048
  store i32 %i.bc, ptr %i.ba, align 4
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #6
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 4096
  store i32 %i.bh, ptr %i.bf, align 4
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.12) #6
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = or i32 %i.bl, 8192
  store i32 %i.bm, ptr %i.bk, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.13) #6
  %i.bo = icmp eq i32 %i.bn, 0
  %. = select i1 %i.bo, ptr %0, ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %0, %bb.d ], [ %0, %bb.f ], [ %0, %bb.h ], [ %0, %bb.j ], [ %0, %bb.l ], [ %0, %bb.n ], [ %0, %bb.p ], [ %0, %bb.r ], [ %0, %bb.t ], [ %0, %bb.v ], [ %0, %bb.x ], [ %0, %bb.z ], [ %., %bb.aa ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uprv_decContextSetStatusFromStringQuiet_78(ptr noundef captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str) #6
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.1) #6
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 2
  store i32 %i.j, ptr %i.h, align 4
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.2) #6
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = or i32 %i.n, 4
  store i32 %i.o, ptr %i.m, align 4
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.3) #6
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, 8
  store i32 %i.t, ptr %i.r, align 4
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.4) #6
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, 32
  store i32 %i.y, ptr %i.w, align 4
  br label %bb.ab

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.5) #6
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = or i32 %i.ac, 16
  store i32 %i.ad, ptr %i.ab, align 4
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.6) #6
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, 64
  store i32 %i.ai, ptr %i.ag, align 4
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.7) #6
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = or i32 %i.am, 128
  store i32 %i.an, ptr %i.al, align 4
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #6
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = or i32 %i.ar, 512
  store i32 %i.as, ptr %i.aq, align 4
  br label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.9) #6
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = or i32 %i.aw, 1024
  store i32 %i.ax, ptr %i.av, align 4
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.10) #6
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = or i32 %i.bb, 2048
  store i32 %i.bc, ptr %i.ba, align 4
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #6
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 4096
  store i32 %i.bh, ptr %i.bf, align 4
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.12) #6
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = or i32 %i.bl, 8192
  store i32 %i.bm, ptr %i.bk, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.13) #6
  %i.bo = icmp eq i32 %i.bn, 0
  %. = select i1 %i.bo, ptr %0, ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %0, %bb.d ], [ %0, %bb.f ], [ %0, %bb.h ], [ %0, %bb.j ], [ %0, %bb.l ], [ %0, %bb.n ], [ %0, %bb.p ], [ %0, %bb.r ], [ %0, %bb.t ], [ %0, %bb.v ], [ %0, %bb.x ], [ %0, %bb.z ], [ %., %bb.aa ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decContextSetStatusQuiet_78(ptr noundef returned captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @uprv_decContextStatusToString_78(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.o [
    i32 128, label %bb.p
    i32 2, label %bb.b
    i32 512, label %bb.c
    i32 8192, label %bb.d
    i32 32, label %bb.e
    i32 4, label %bb.f
    i32 8, label %bb.g
    i32 2048, label %bb.h
    i32 1024, label %bb.i
    i32 4096, label %bb.j
    i32 1, label %bb.k
    i32 16, label %bb.l
    i32 64, label %bb.m
    i32 0, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.14, %bb.o ], [ @.str.1, %bb.b ], [ @.str.8, %bb.c ], [ @.str.12, %bb.d ], [ @.str.4, %bb.e ], [ @.str.2, %bb.f ], [ @.str.3, %bb.g ], [ @.str.10, %bb.h ], [ @.str.9, %bb.i ], [ @.str.11, %bb.j ], [ @.str, %bb.k ], [ @.str.5, %bb.l ], [ @.str.6, %bb.m ], [ @.str.13, %bb.n ], [ @.str.7, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @uprv_decContextTestSavedStatus_78(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %1, %0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @uprv_decContextTestStatus_78(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, %1
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @uprv_decContextZeroStatus_78(ptr noundef returned writeonly captures(ret: address, provenance) initializes((20, 24)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.a, align 4
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
