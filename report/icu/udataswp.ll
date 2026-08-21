inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [65 x i8] c"udata_swapDataHeader(): initial bytes do not look like ICU data\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"udata_swapDataHeader(): header size mismatch - headerSize %d infoSize %d length %d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define noundef signext i16 @udata_readInt16_78(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef zeroext i16 %i.b(i16 noundef zeroext %1)
  ret i16 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @udata_readInt32_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call noundef i32 %i.b(i32 noundef %1)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define range(i32 0, -2147483648) i32 @udata_swapInvStringBlock_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %2, 0
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !12
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.047 = phi i32 [ %6, %bb.f ], [ %2, %.preheader ] ; 4 uses
  %5 = zext nneg i32 %.047 to i64
  %i.i = getelementptr i8, ptr %1, i64 %5
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %.not43 = icmp eq i8 %i.k, 0
  br i1 %.not43, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %6 = add nsw i32 %.047, -1
  %i.l = icmp sgt i32 %.047, 1
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %bb.f ], [ %.047, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call noundef i32 %i.n(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.0.lcssa, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  %.not44 = icmp ne ptr %1, %3
  %i.p = icmp sgt i32 %2, %.0.lcssa
  %or.cond46 = and i1 %.not44, %i.p
  br i1 %or.cond46, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.q = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.t = sub nsw i32 %2, %.0.lcssa
  %i.u = zext nneg i32 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.v = load i32, ptr %4, align 4, !tbaa !12
  %i.w = icmp sgt i32 %i.v, 0
  %. = select i1 %i.w, i32 0, i32 %2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.b, %bb.e
  %.037 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %., %bb.h ], [ 0, %bb.b ]
  ret i32 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @udata_printError_78(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  call void %i.c(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: mustprogress uwtable
define range(i32 0, 65536) i32 @udata_swapDataHeader_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, -1
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %2, 0                       ; 2 uses
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !12
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %or.cond7 = icmp ult i32 %2, 24
  br i1 %or.cond7, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !20
  %.not90 = icmp eq i8 %i.j, -38
  br i1 %.not90, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  %.not91 = icmp eq i8 %i.l, 39
  br i1 %.not91, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !26
  %.not92 = icmp eq i8 %i.o, 2
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str)
  store i32 16, ptr %4, align 4, !tbaa !12
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = load i16, ptr %1, align 2, !tbaa !27
  %i.s = tail call noundef zeroext i16 %i.q(i16 noundef zeroext %i.r) ; 4 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.u = load i16, ptr %i.m, align 2, !tbaa !28
  %i.v = tail call noundef zeroext i16 %i.t(i16 noundef zeroext %i.u) ; 3 uses
  %i.w = zext i16 %i.s to i64                     ; 2 uses
  %i.x = icmp ult i16 %i.s, 24
  %i.y = icmp ult i16 %i.v, 20
  %or.cond10 = or i1 %i.x, %i.y
  br i1 %or.cond10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = zext i16 %i.v to i64
  %i.aa = add nuw nsw i64 %i.z, 4                 ; 4 uses
  %i.ab = icmp samesign ugt i64 %i.aa, %i.w
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = zext i16 %i.s to i32                    ; 4 uses
  %or.cond96 = icmp ult i32 %2, %i.ac
  br i1 %or.cond96, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ad = zext i16 %i.s to i32
  %i.ae = zext i16 %i.v to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %2)
  store i32 8, ptr %4, align 4, !tbaa !12
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  br i1 %i.g, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not93 = icmp eq ptr %1, %3
  br i1 %.not93, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 1 %1, i64 %i.w, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.ag, ptr %i.ai, align 2, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.aq = tail call noundef i32 %i.ap(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef nonnull %i.ah, ptr noundef nonnull %4) ; 0 uses
  %i.ar = trunc nuw nsw i64 %i.aa to i32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %i.at = sub nsw i32 %i.ac, %i.ar                ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %.not94 = icmp eq i8 %i.aw, 0
  br i1 %.not94, label %.critedge.loopexit.split.loop.exit112, label %bb.s

bb.s:                                             ; preds = %.lr.ph
end_hunk_0
