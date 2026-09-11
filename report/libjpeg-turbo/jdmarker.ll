Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdmarker?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @jpeg_resync_to_restart(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 121, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !38
  %i.f = load ptr, ptr %0, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %1, ptr %i.g, align 4, !tbaa !38
  %i.h = load ptr, ptr %0, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  tail call void %i.j(ptr noundef nonnull %0, i32 noundef -1) #6
  %i.k = add nsw i32 %1, 1
  %i.l = and i32 %i.k, 7
  %i.m = or disjoint i32 %i.l, 208
  %i.n = add nsw i32 %1, 2
  %2 = and i32 %i.n, 7
  %3 = or disjoint i32 %2, 208
  %4 = add i32 %1, 7
  %i.o = and i32 %4, 7
  %i.p = or disjoint i32 %i.o, 208
  %5 = add i32 %1, 6
  %6 = and i32 %5, 7
  %7 = or disjoint i32 %6, 208
  br label %8

8:                                                ; preds = %bb.d, %bb.a
  %.031 = phi i32 [ %i.b, %bb.a ], [ %i.ai, %bb.d ] ; 9 uses
  %9 = icmp slt i32 %.031, 192
  br i1 %9, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %8
  %i.q = add nsw i32 %.031, -216
  %or.cond = icmp ult i32 %i.q, -8
  %i.r = icmp eq i32 %.031, %i.m
  %or.cond39 = select i1 %or.cond, i1 true, i1 %i.r
  %i.s = icmp eq i32 %.031, %3
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %i.s
  br i1 %or.cond40, label %.thread35, label %10

10:                                               ; preds = %bb.b
  %11 = icmp eq i32 %.031, %i.p
  %12 = icmp eq i32 %.031, %7
  %or.cond41 = select i1 %11, i1 true, i1 %12
  br i1 %or.cond41, label %select.unfold, label %bb.c

.thread35:                                        ; preds = %bb.b
  %13 = load ptr, ptr %0, align 8, !tbaa !34      ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 97, ptr %14, align 8, !tbaa !37
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 %.031, ptr %15, align 4, !tbaa !38
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 3, ptr %17, align 4, !tbaa !38
  %i.t = load ptr, ptr %0, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  tail call void %i.v(ptr noundef nonnull %0, i32 noundef 4) #6
  br label %.loopexit

bb.c:                                             ; preds = %10
  %18 = load ptr, ptr %0, align 8, !tbaa !34      ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 97, ptr %19, align 8, !tbaa !37
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 44
  store i32 %.031, ptr %20, align 4, !tbaa !38
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 48
  store i32 1, ptr %22, align 4, !tbaa !38
  %i.w = load ptr, ptr %0, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  tail call void %i.y(ptr noundef nonnull %0, i32 noundef 4) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  br label %.loopexit

select.unfold:                                    ; preds = %10, %8
  %i.z = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 97, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  store i32 %.031, ptr %i.ab, align 4, !tbaa !38
  %i.ac = load ptr, ptr %0, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i32 2, ptr %i.ad, align 4, !tbaa !38
  %i.ae = load ptr, ptr %0, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  tail call void %i.ag(ptr noundef nonnull %0, i32 noundef 4) #6
  %i.ah = tail call fastcc i32 @next_marker(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !33
  br label %8

.loopexit:                                        ; preds = %select.unfold, %.thread35, %bb.c
  %.032 = phi i32 [ 1, %bb.c ], [ 1, %.thread35 ], [ 0, %select.unfold ]
  ret i32 %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @next_marker(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.052 = phi ptr [ %i.c, %bb.a ], [ %i.ab, %bb.l ]
  %.0 = phi i64 [ %i.e, %bb.a ], [ %i.aa, %bb.l ] ; 2 uses
  %i.h = icmp eq i64 %.0, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.l = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.153 = phi ptr [ %i.k, %bb.d ], [ %.052, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.l, %bb.d ], [ %.0, %bb.b ]
  %.25475 = getelementptr inbounds nuw i8, ptr %.153, i64 1 ; 2 uses
  %.276 = add i64 %.1, -1                         ; 2 uses
  %.058.in77 = load i8, ptr %.153, align 1, !tbaa !38
  %.not6178 = icmp eq i8 %.058.in77, -1
  br i1 %.not6178, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.280 = phi i64 [ %.2, %bb.h ], [ %.276, %bb.e ] ; 3 uses
  %.25479 = phi ptr [ %.254, %bb.h ], [ %.25475, %bb.e ] ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !80
  store ptr %.25479, ptr %i.b, align 8, !tbaa !42
  store i64 %.280, ptr %i.d, align 8, !tbaa !43
  %i.q = icmp eq i64 %.280, 0
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0) #6
  %.not65 = icmp eq i32 %i.s, 0
  br i1 %.not65, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.u = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.355 = phi ptr [ %i.t, %bb.g ], [ %.25479, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %i.u, %bb.g ], [ %.280, %.lr.ph ]
  %.254 = getelementptr inbounds nuw i8, ptr %.355, i64 1 ; 2 uses
  %.2 = add i64 %.3, -1                           ; 2 uses
  %.058.in = load i8, ptr %.355, align 1, !tbaa !38
  %.not61 = icmp eq i8 %.058.in, -1
  br i1 %.not61, label %.preheader.preheader, label %.lr.ph, !llvm.loop !79

.preheader.preheader:                             ; preds = %bb.h, %bb.e
  %.456.ph = phi ptr [ %.25475, %bb.e ], [ %.254, %bb.h ]
  %.4.ph = phi i64 [ %.276, %bb.e ], [ %.2, %bb.h ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.456 = phi ptr [ %i.ab, %bb.k ], [ %.456.ph, %.preheader.preheader ]
  %.4 = phi i64 [ %i.aa, %bb.k ], [ %.4.ph, %.preheader.preheader ] ; 2 uses
  %i.v = icmp eq i64 %.4, 0
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.x = tail call i32 %i.w(ptr noundef %0) #6
  %.not62 = icmp eq i32 %i.x, 0
  br i1 %.not62, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.z = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader
  %.557 = phi ptr [ %i.y, %bb.j ], [ %.456, %.preheader ] ; 2 uses
  %.5 = phi i64 [ %i.z, %bb.j ], [ %.4, %.preheader ]
  %i.aa = add i64 %.5, -1                         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.557, i64 1 ; 4 uses
  %i.ac = load i8, ptr %.557, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.ac, label %bb.m [
    i8 -1, label %.preheader
    i8 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = add i32 %i.af, 2
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !80
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !42
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !43
  br label %bb.b

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i8 %i.ac to i32                    ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !80 ; 2 uses
  %.not64 = icmp eq i32 %i.ak, 0
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 116, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !38
  %i.ao = load ptr, ptr %0, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i32 %i.ah, ptr %i.ap, align 4, !tbaa !38
  %i.aq = load ptr, ptr %0, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  tail call void %i.as(ptr noundef nonnull %0, i32 noundef -1) #6
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  store i32 0, ptr %i.au, align 4, !tbaa !80
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %i.ah, ptr %i.av, align 4, !tbaa !33
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !42
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.i, %bb.o
  %.059 = phi i32 [ 0, %bb.i ], [ 1, %bb.o ], [ 0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @jinit_marker_reader(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 0, i64 noundef 264) #6 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  store ptr @reset_marker_reader, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @read_markers, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @read_restart_marker, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @skip_variable, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @skip_variable, ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @skip_variable, ptr %i.l, align 8, !tbaa !53
  store <4 x i32> zeroinitializer, ptr %i.i, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @skip_variable, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @skip_variable, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @skip_variable, ptr %i.p, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr @skip_variable, ptr %i.q, align 8, !tbaa !53
  store <4 x i32> zeroinitializer, ptr %i.n, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @skip_variable, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 208
end_hunk_0
