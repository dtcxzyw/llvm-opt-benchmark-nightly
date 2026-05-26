inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @jpeg_resync_to_restart(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 124, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !36
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %1, ptr %i.g, align 4, !tbaa !36
  %i.h = load ptr, ptr %0, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  tail call void %i.j(ptr noundef nonnull %0, i32 noundef -1) #6
  %i.k = add nsw i32 %1, 1
  %i.l = and i32 %i.k, 7
  %i.m = or disjoint i32 %i.l, 208
  %i.n = add nsw i32 %1, 2
  %i.o = and i32 %i.n, 7
  %i.p = or disjoint i32 %i.o, 208
  %i.q = add i32 %1, 7
  %i.r = and i32 %i.q, 7
  %i.s = or disjoint i32 %i.r, 208
  %i.t = add i32 %1, 6
  %i.u = and i32 %i.t, 7
  %i.v = or disjoint i32 %i.u, 208
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.031 = phi i32 [ %i.b, %bb.a ], [ %i.ba, %bb.f ] ; 9 uses
  %i.w = icmp slt i32 %.031, 192
  br i1 %i.w, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = add nsw i32 %.031, -216
  %or.cond = icmp ult i32 %i.x, -8
  %i.y = icmp eq i32 %.031, %i.m
  %or.cond39 = select i1 %or.cond, i1 true, i1 %i.y
  %i.z = icmp eq i32 %.031, %i.p
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %i.z
  br i1 %or.cond40, label %.thread35, label %2

2:                                                ; preds = %bb.c
  %3 = icmp eq i32 %.031, %i.s
  br i1 %3, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %2
  %i.aa = icmp eq i32 %.031, %i.v
  %cond.fr = freeze i1 %i.aa
  br i1 %cond.fr, label %select.unfold, label %bb.e

.thread35:                                        ; preds = %bb.c
  %i.ab = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 99, ptr %i.ac, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  store i32 %.031, ptr %i.ad, align 4, !tbaa !36
  %i.ae = load ptr, ptr %0, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i32 3, ptr %i.af, align 4, !tbaa !36
  %i.ag = load ptr, ptr %0, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
  tail call void %i.ai(ptr noundef nonnull %0, i32 noundef 4) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 99, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  store i32 %.031, ptr %i.al, align 4, !tbaa !36
  %i.am = load ptr, ptr %0, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i32 1, ptr %i.an, align 4, !tbaa !36
  %i.ao = load ptr, ptr %0, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37
  tail call void %i.aq(ptr noundef nonnull %0, i32 noundef 4) #6
  store i32 0, ptr %i.a, align 4, !tbaa !7
  br label %.loopexit

select.unfold:                                    ; preds = %bb.d, %2, %bb.b
  %i.ar = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 99, ptr %i.as, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 %.031, ptr %i.at, align 4, !tbaa !36
  %i.au = load ptr, ptr %0, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 2, ptr %i.av, align 4, !tbaa !36
  %i.aw = load ptr, ptr %0, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37
  tail call void %i.ay(ptr noundef nonnull %0, i32 noundef 4) #6
  %i.az = tail call fastcc i32 @next_marker(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !7
  br label %bb.b

.loopexit:                                        ; preds = %select.unfold, %.thread35, %bb.e
  %.032 = phi i32 [ 1, %bb.e ], [ 1, %.thread35 ], [ 0, %select.unfold ]
  ret i32 %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @next_marker(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.052 = phi ptr [ %i.c, %bb.a ], [ %i.ab, %bb.l ]
  %.0 = phi i64 [ %i.e, %bb.a ], [ %i.aa, %bb.l ] ; 2 uses
  %i.h = icmp eq i64 %.0, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.l = load i64, ptr %i.d, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.153 = phi ptr [ %i.k, %bb.d ], [ %.052, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.l, %bb.d ], [ %.0, %bb.b ]
  %.25475 = getelementptr inbounds nuw i8, ptr %.153, i64 1 ; 2 uses
  %.276 = add i64 %.1, -1                         ; 2 uses
  %.059.in77 = load i8, ptr %.153, align 1, !tbaa !36
  %.not6178 = icmp eq i8 %.059.in77, -1
  br i1 %.not6178, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.280 = phi i64 [ %.2, %bb.h ], [ %.276, %bb.e ] ; 3 uses
  %.25479 = phi ptr [ %.254, %bb.h ], [ %.25475, %bb.e ] ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !44
  store ptr %.25479, ptr %i.b, align 8, !tbaa !39
  store i64 %.280, ptr %i.d, align 8, !tbaa !41
  %i.q = icmp eq i64 %.280, 0
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0) #6
  %.not65 = icmp eq i32 %i.s, 0
  br i1 %.not65, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.u = load i64, ptr %i.d, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.355 = phi ptr [ %i.t, %bb.g ], [ %.25479, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %i.u, %bb.g ], [ %.280, %.lr.ph ]
  %.254 = getelementptr inbounds nuw i8, ptr %.355, i64 1 ; 2 uses
  %.2 = add i64 %.3, -1                           ; 2 uses
  %.059.in = load i8, ptr %.355, align 1, !tbaa !36
  %.not61 = icmp eq i8 %.059.in, -1
  br i1 %.not61, label %.preheader.preheader, label %.lr.ph, !llvm.loop !46

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
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.x = tail call i32 %i.w(ptr noundef %0) #6
  %.not62 = icmp eq i32 %i.x, 0
  br i1 %.not62, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.z = load i64, ptr %i.d, align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader
  %.557 = phi ptr [ %i.y, %bb.j ], [ %.456, %.preheader ] ; 2 uses
  %.5 = phi i64 [ %i.z, %bb.j ], [ %.4, %.preheader ]
  %i.aa = add i64 %.5, -1                         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.557, i64 1 ; 4 uses
  %i.ac = load i8, ptr %.557, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.ac, label %bb.m [
    i8 -1, label %.preheader
    i8 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.ag = add i32 %i.af, 2
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !44
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !39
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !41
  br label %bb.b

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i8 %i.ac to i32                    ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44 ; 2 uses
  %.not64 = icmp eq i32 %i.ak, 0
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 119, ptr %i.am, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !36
  %i.ao = load ptr, ptr %0, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i32 %i.ah, ptr %i.ap, align 4, !tbaa !36
  %i.aq = load ptr, ptr %0, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37
  tail call void %i.as(ptr noundef nonnull %0, i32 noundef -1) #6
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  store i32 0, ptr %i.au, align 4, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i32 %i.ah, ptr %i.av, align 4, !tbaa !7
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !39
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.i, %bb.o
  %.058 = phi i32 [ 0, %bb.i ], [ 1, %bb.o ], [ 0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.058
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @jinit_marker_reader(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 0, i64 noundef 264) #6 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !43
  store ptr @reset_marker_reader, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @read_markers, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @read_restart_marker, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @skip_variable, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176
end_hunk_0
