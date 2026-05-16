inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @SetNeighbours(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef captures(none) initializes((0, 8)) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5, ptr noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !11
  %.06399.a = load ptr, ptr %0, align 8, !tbaa !8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06399.a, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.preheader89, label %.loopexit90

.preheader89:                                     ; preds = %bb.a, %.critedge
  %.063100 = phi ptr [ %.063, %.critedge ], [ %.06399.a, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader89, %bb.b
  %.063.pn = phi ptr [ %storemerge, %bb.b ], [ %.063100, %.preheader89 ]
  %storemerge.in = getelementptr inbounds nuw i8, ptr %.063.pn, i64 16
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !8 ; 4 uses
  store ptr %storemerge, ptr %3, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %storemerge, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !8     ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %bb.b
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SplitIsDefinite(ptr noundef nonnull %storemerge) #4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = add i8 %i.e, -9
  %or.cond = icmp ult i8 %i.g, 91
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.pn81 = phi ptr [ %i.h, %bb.e ], [ %storemerge71, %bb.f ]
  %storemerge71.in = getelementptr inbounds nuw i8, ptr %.pn81, i64 16
  %storemerge71 = load ptr, ptr %storemerge71.in, align 8, !tbaa !8 ; 3 uses
  store ptr %storemerge71, ptr %2, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge71, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !8     ; 3 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %.preheader88, !llvm.loop !13

.preheader88:                                     ; preds = %bb.f
  %i.l = add i8 %i.j, -119
  %or.cond82102 = icmp ult i8 %i.l, 20
  br i1 %or.cond82102, label %.lr.ph, label %.critedge2

.loopexit87:                                      ; preds = %bb.g
  %i.m = add i8 %i.q, -119
  %or.cond82.a = icmp ult i8 %i.m, 20
  br i1 %or.cond82.a, label %.lr.ph, label %.critedge2, !llvm.loop !15

.lr.ph:                                           ; preds = %.preheader88, %.loopexit87
  %.064103 = phi ptr [ %i.n, %.loopexit87 ], [ %0, %.preheader88 ]
  %i.n = load ptr, ptr %.064103, align 8, !tbaa !8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph
  %.pn80 = phi ptr [ %i.o, %.lr.ph ], [ %storemerge79, %bb.g ]
  %storemerge79.in = getelementptr inbounds nuw i8, ptr %.pn80, i64 16
  %storemerge79 = load ptr, ptr %storemerge79.in, align 8, !tbaa !8 ; 3 uses
  store ptr %storemerge79, ptr %2, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge79, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !8     ; 3 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %.loopexit87, !llvm.loop !16

.critedge2:                                       ; preds = %.loopexit87, %.preheader88
  %.064.lcssa = phi ptr [ %0, %.preheader88 ], [ %i.n, %.loopexit87 ] ; 2 uses
  %.lcssa95 = phi i8 [ %i.j, %.preheader88 ], [ %i.q, %.loopexit87 ]
  %i.s = icmp eq i8 %.lcssa95, 1
  br i1 %i.s, label %.loopexit90, label %bb.h

bb.h:                                             ; preds = %.critedge2
  %i.t = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.u = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.t, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.loopexit90

.critedge:                                        ; preds = %bb.c, %bb.d
  %.063 = load ptr, ptr %.063100, align 8, !tbaa !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.063, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.preheader89, label %.loopexit90, !llvm.loop !17

.loopexit90:                                      ; preds = %.critedge, %bb.a, %.critedge2, %bb.h
  %.165 = phi ptr [ %.064.lcssa, %.critedge2 ], [ %.064.lcssa, %bb.h ], [ %0, %bb.a ], [ %0, %.critedge ]
  store ptr null, ptr %4, align 8, !tbaa !11
  %.0.in105 = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %.0106.a = load ptr, ptr %.0.in105, align 8, !tbaa !8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0106.a, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.preheader85, label %.loopexit86

.preheader85:                                     ; preds = %.loopexit90, %.critedge4
  %.0107 = phi ptr [ %.0, %.critedge4 ], [ %.0106.a, %.loopexit90 ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader85, %bb.i
  %.0.pn = phi ptr [ %storemerge72, %bb.i ], [ %.0107, %.preheader85 ]
  %storemerge72.in = getelementptr inbounds nuw i8, ptr %.0.pn, i64 16
  %storemerge72 = load ptr, ptr %storemerge72.in, align 8, !tbaa !8 ; 4 uses
  store ptr %storemerge72, ptr %5, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge72, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.ac, label %bb.k [
    i8 0, label %bb.i
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 @SplitIsDefinite(ptr noundef nonnull %storemerge72) #4
  %.not73 = icmp eq i32 %i.ad, 0
  br i1 %.not73, label %.critedge4, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = add i8 %i.ac, -9
  %or.cond83.a = icmp ult i8 %i.ae, 91
  br i1 %or.cond83.a, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = load ptr, ptr %.0107, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.pn78 = phi ptr [ %i.af, %bb.l ], [ %storemerge74, %bb.m ]
  %storemerge74.in = getelementptr inbounds nuw i8, ptr %.pn78, i64 16
  %storemerge74 = load ptr, ptr %storemerge74.in, align 8, !tbaa !8 ; 3 uses
  store ptr %storemerge74, ptr %4, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %storemerge74, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !8   ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %.preheader, !llvm.loop !18

.preheader:                                       ; preds = %bb.m
  %i.aj = add i8 %i.ah, -119
  %or.cond84110 = icmp ult i8 %i.aj, 20
  br i1 %or.cond84110, label %.lr.ph112, label %.critedge6

.loopexit:                                        ; preds = %bb.n
  %i.ak = add i8 %i.ao, -119
  %or.cond84 = icmp ult i8 %i.ak, 20
  br i1 %or.cond84, label %.lr.ph112, label %.critedge6, !llvm.loop !19

.lr.ph112:                                        ; preds = %.preheader, %.loopexit
  %.1111 = phi ptr [ %i.al, %.loopexit ], [ %.0107, %.preheader ]
  %i.al = load ptr, ptr %.1111, align 8, !tbaa !8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph112
  %.pn = phi ptr [ %i.am, %.lr.ph112 ], [ %storemerge77, %bb.n ]
  %storemerge77.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %storemerge77 = load ptr, ptr %storemerge77.in, align 8, !tbaa !8 ; 3 uses
  store ptr %storemerge77, ptr %4, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge77, i64 32
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !8   ; 3 uses
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %.loopexit, !llvm.loop !20

.critedge6:                                       ; preds = %.loopexit, %.preheader
  %.lcssa = phi i8 [ %i.ah, %.preheader ], [ %i.ao, %.loopexit ]
  %i.aq = icmp eq i8 %.lcssa, 1
  br i1 %i.aq, label %.loopexit86, label %bb.o

bb.o:                                             ; preds = %.critedge6
  %i.ar = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.as = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ar, ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %.loopexit86

.critedge4:                                       ; preds = %bb.j, %bb.k
  %.0.in = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !8   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.au = load i8, ptr %i.at, align 8, !tbaa !8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.preheader85, label %.loopexit86, !llvm.loop !21

.loopexit86:                                      ; preds = %.critedge4, %.loopexit90, %.critedge6, %bb.o
  %.not75 = icmp eq i32 %1, 0
  br i1 %.not75, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.loopexit86
  %i.aw = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 45
  %7 = load i8, ptr %i.ay, align 1
  %8 = trunc i8 %7 to i1
  %i.az = select i1 %8, i32 152, i32 153
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.loopexit86
  %i.ba = phi i32 [ 151, %.loopexit86 ], [ 152, %bb.p ], [ %i.az, %bb.q ]
  store i32 %i.ba, ptr %6, align 4, !tbaa !4
  ret void
}

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AdjustSize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 47 uses
  %i.g = alloca i32, align 4                      ; 47 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.f, align 4, !tbaa !4
  store i32 %2, ptr %i.g, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  tail call void @SetLengthDim(i32 noundef %3) #4
  %i.l = sext i32 %3 to i64                       ; 55 uses
  %i.m = icmp eq i32 %3, 0                        ; 10 uses
  %i.n = icmp eq i32 %3, 1                        ; 2 uses
  %i.o = icmp ne i32 %3, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.de, %bb.a
  %i.p = phi i32 [ %1, %bb.a ], [ %.pre, %bb.de ] ; 2 uses
  %.0356 = phi ptr [ %0, %bb.a ], [ %.2355, %bb.de ] ; 37 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0356, i64 48 ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.l ; 25 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %.not = icmp eq i32 %i.p, %i.s
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.g, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.l
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  %.not394 = icmp eq i32 %i.t, %i.w
  br i1 %.not394, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.0356, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !8
  %i.z = add i8 %i.y, -2
  %or.cond422 = icmp ult i8 %i.z, 7
  br i1 %or.cond422, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.0356, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.0356, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %.not395 = icmp eq ptr %i.ac, %.0356
  br i1 %.not395, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.ad = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ae = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ad, ptr noundef nonnull @.str.5) #4 ; 0 uses
  %.pre740 = load i32, ptr %i.f, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.af = phi i32 [ %.pre740, %bb.e ], [ %i.p, %.critedge ]
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = load i32, ptr %i.g, align 4
  %i.ai = icmp slt i32 %i.ah, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.0356, i64 32
  %i.ak = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.aj) #4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0356, i64 32 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !8   ; 2 uses
  %.off = add i8 %i.am, -15
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq i8 %i.am, 16
  %i.ao = icmp ne i32 %3, 0
  %i.ap = xor i1 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ar = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.aq, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.as, ptr %i.r, align 4, !tbaa !8
  %i.at = load i32, ptr %i.g, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.l
  store i32 %i.at, ptr %i.av, align 4, !tbaa !8
  %.0350648 = load ptr, ptr %i.ab, align 8, !tbaa !8 ; 2 uses
  %.not421649 = icmp eq ptr %.0350648, %.0356
  br i1 %.not421649, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.k, %.loopexit
  %.0350650 = phi ptr [ %.0350, %.loopexit ], [ %.0350648, %bb.k ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.l
  %.0353.in = phi ptr [ %.0353, %bb.l ], [ %.0350650, %.preheader ]
  %.0353 = load ptr, ptr %.0353.in, align 8, !tbaa !8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0353, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !8
  switch i8 %i.ax, label %bb.m [
    i8 0, label %bb.l
    i8 9, label %.loopexit
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.az = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ay, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.m
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !4
  %i.bb = load i32, ptr %i.g, align 4, !tbaa !4
  call void @AdjustSize(ptr noundef nonnull %.0353, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef %3)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0350650, i64 24
  %.0350 = load ptr, ptr %i.bc, align 8, !tbaa !8 ; 2 uses
  %.not421 = icmp eq ptr %.0350, %.0356
  br i1 %.not421, label %.critedge2, label %.preheader, !llvm.loop !22

bb.n:                                             ; preds = %bb.h
  %. = select i1 %i.m, ptr %i.ab, ptr %i.aa
  %i.bd = load ptr, ptr %., align 8, !tbaa !8     ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.loopexit448, %bb.n
  %.0349.in = phi ptr [ %i.be, %bb.n ], [ %i.bm, %.loopexit448 ]
  %.0338 = phi i32 [ 0, %bb.n ], [ %.1339, %.loopexit448 ] ; 3 uses
  %.0349 = load ptr, ptr %.0349.in, align 8, !tbaa !8 ; 83 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0349, i64 32
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !8   ; 9 uses
  switch i8 %i.bg, label %bb.dd [
    i8 0, label %.preheader447
    i8 8, label %bb.q
    i8 9, label %bb.al
    i8 36, label %bb.al
    i8 37, label %bb.al
    i8 40, label %bb.al
    i8 41, label %bb.al
    i8 20, label %bb.al
    i8 21, label %bb.al
    i8 22, label %bb.al
    i8 23, label %bb.al
    i8 24, label %bb.al
    i8 25, label %bb.al
    i8 96, label %bb.al
    i8 97, label %bb.al
    i8 98, label %bb.al
    i8 99, label %bb.al
    i8 35, label %bb.al
    i8 51, label %bb.al
    i8 30, label %bb.am
    i8 31, label %bb.am
    i8 32, label %bb.an
    i8 33, label %bb.an
    i8 34, label %bb.ao
    i8 50, label %bb.ar
    i8 26, label %bb.ax
    i8 27, label %bb.ax
    i8 38, label %bb.be
    i8 39, label %bb.be
    i8 28, label %bb.bf
    i8 29, label %bb.bf
    i8 16, label %bb.bo
    i8 15, label %bb.bo
    i8 19, label %bb.br
    i8 18, label %bb.br
    i8 17, label %bb.br
    i8 44, label %bb.ct
    i8 43, label %bb.cu
    i8 46, label %bb.cu
    i8 42, label %bb.cx
    i8 45, label %bb.cx
    i8 13, label %bb.da
    i8 14, label %bb.da
end_hunk_0
