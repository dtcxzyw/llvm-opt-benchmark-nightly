inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@environ = external local_unnamed_addr global ptr, align 8
@SPT.0 = internal unnamed_addr global ptr null, align 8
@SPT.1 = internal unnamed_addr global ptr null, align 8
@SPT.2 = internal unnamed_addr global ptr null, align 8
@SPT.3 = internal unnamed_addr global ptr null, align 8
@SPT.4 = internal unnamed_addr global i1 false, align 8
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @spt_clearenv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @clearenv() #13
  ret i32 %i.a
}

; Function Attrs: nounwind
declare i32 @clearenv() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @spt_init(i32 noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @environ, align 8, !tbaa !13 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !17     ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %spt_copyenv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.f = sext i32 %0 to i64                       ; 2 uses
  %i.g = icmp slt i32 %0, 1
  %.pre116 = load ptr, ptr %1, align 8, !tbaa !17 ; 2 uses
  %.not72117 = icmp eq ptr %.pre116, null
  %or.cond118 = select i1 %i.g, i1 %.not72117, i1 false
  br i1 %or.cond118, label %.critedge2.preheader, label %.critedge

.critedge2.preheader:                             ; preds = %bb.d, %bb.b
  %.0.lcssa = phi ptr [ %i.e, %bb.b ], [ %.1, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not7394 = icmp eq ptr %i.h, null
  br i1 %.not7394, label %.critedge2._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.b, %bb.d
  %.pre121 = phi ptr [ %.pre, %bb.d ], [ %.pre116, %bb.b ] ; 4 uses
  %.0120 = phi ptr [ %.1, %bb.d ], [ %i.e, %bb.b ] ; 4 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ]
  %.not81 = icmp eq ptr %.pre121, null
  %i.i = icmp ne ptr %.0120, %.pre121
  %or.cond84 = select i1 %.not81, i1 true, i1 %i.i
  br i1 %or.cond84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre121) #14
  %i.k = getelementptr inbounds nuw i8, ptr %.pre121, i64 %i.j ; 2 uses
  %.not83 = icmp ugt ptr %.0120, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %spec.select = select i1 %.not83, ptr %.0120, ptr %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.1 = phi ptr [ %.0120, %.critedge ], [ %spec.select, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.m = icmp sge i64 %indvars.iv.next, %i.f
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17 ; 2 uses
  %.not72 = icmp eq ptr %.pre, null
  %or.cond = select i1 %i.m, i1 %.not72, i1 false
  br i1 %or.cond, label %.critedge2.preheader, label %.critedge, !llvm.loop !19

.lr.ph:                                           ; preds = %.critedge2.preheader, %.critedge2
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.critedge2 ], [ 0, %.critedge2.preheader ]
  %i.n = phi ptr [ %i.s, %.critedge2 ], [ %i.h, %.critedge2.preheader ] ; 3 uses
  %.296 = phi ptr [ %.3, %.critedge2 ], [ %.0.lcssa, %.critedge2.preheader ] ; 2 uses
  %or.cond85.not = icmp eq ptr %.296, %i.n
  br i1 %or.cond85.not, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %.critedge2

.critedge2:                                       ; preds = %bb.e, %.lr.ph
  %.3 = phi ptr [ %.296, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next100
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not73 = icmp eq ptr %i.s, null
  br i1 %.not73, label %.critedge2._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

.critedge2._crit_edge.loopexit:                   ; preds = %.critedge2
  %i.t = trunc nuw nsw i64 %indvars.iv.next100 to i32
  %i.u = shl i32 %i.t, 3
  %i.v = add i32 %i.u, 8
  %i.w = sext i32 %i.v to i64
  br label %.critedge2._crit_edge

.critedge2._crit_edge:                            ; preds = %.critedge2._crit_edge.loopexit, %.critedge2.preheader
  %.161.lcssa = phi i64 [ 8, %.critedge2.preheader ], [ %i.w, %.critedge2._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi ptr [ %.0.lcssa, %.critedge2.preheader ], [ %.3, %.critedge2._crit_edge.loopexit ]
  %i.x = tail call noalias ptr @strdup(ptr noundef nonnull %i.b) #13 ; 2 uses
  store ptr %i.x, ptr @SPT.0, align 8, !tbaa !22
  %.not74 = icmp eq ptr %i.x, null
  br i1 %.not74, label %spt_copyenv.exit.thread, label %bb.f

bb.f:                                             ; preds = %.critedge2._crit_edge
  %i.y = load ptr, ptr @program_invocation_name, align 8, !tbaa !17
  %i.z = tail call noalias ptr @strdup(ptr noundef %i.y) #13 ; 2 uses
  %.not75 = icmp eq ptr %i.z, null
  br i1 %.not75, label %spt_copyenv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr @program_invocation_name, align 8, !tbaa !17
  %i.aa = load ptr, ptr @program_invocation_short_name, align 8, !tbaa !17
  %i.ab = tail call noalias ptr @strdup(ptr noundef %i.aa) #13 ; 2 uses
  %.not76 = icmp eq ptr %i.ab, null
  br i1 %.not76, label %spt_copyenv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr @program_invocation_short_name, align 8, !tbaa !17
  %i.ac = tail call noalias ptr @malloc(i64 noundef %.161.lcssa) #15 ; 7 uses
  %.not31.i = icmp eq ptr %i.ac, null
  br i1 %.not31.i, label %spt_copyenv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.a, i64 %.161.lcssa, i1 false)
  %i.ad = tail call i32 @clearenv() #13
  %.not32.i = icmp eq i32 %i.ad, 0
  br i1 %.not32.i, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %.not3338.i = icmp eq ptr %i.ae, null
  br i1 %.not3338.i, label %.loopexit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.a, ptr @environ, align 8, !tbaa !13
  tail call void @free(ptr noundef nonnull %i.ac) #13
  br label %spt_copyenv.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.preheader.i ]
  %i.af = phi ptr [ %i.am, %bb.n ], [ %i.ae, %.preheader.i ] ; 2 uses
  %i.ag = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.af, i32 noundef 61) #14 ; 5 uses
  %.not34.i = icmp eq ptr %i.ag, null
  br i1 %.not34.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.ag, align 1, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = tail call i32 @setenv(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, i32 noundef 1) #13
  %.not35.i = icmp eq i32 %i.ai, 0
  br i1 %.not35.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  store i8 61, ptr %i.ag, align 1, !tbaa !25
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call ptr @__errno_location() #16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  store i8 61, ptr %i.ag, align 1, !tbaa !25
  %.not36.i = icmp eq i32 %i.ak, 0
  br i1 %.not36.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ac, ptr @environ, align 8, !tbaa !13
  br label %spt_copyenv.exit.thread

bb.n:                                             ; preds = %bb.l, %.thread.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %.not33.i = icmp eq ptr %i.am, null
  br i1 %.not33.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !26

.loopexit:                                        ; preds = %bb.n, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.ac) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.loopexit
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i89, %bb.r ], [ 1, %.loopexit ] ; 3 uses
  %i.an = icmp slt i64 %indvars.iv.i87, %i.f
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i87 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !17 ; 2 uses
  %.not19.i = icmp eq ptr %.pre.i, null           ; 2 uses
  br i1 %i.an, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not19.i, label %spt_copyargs.exit.thread, label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.o
  br i1 %.not19.i, label %bb.r, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.p, %.critedge.i
  %i.ao = tail call noalias ptr @strdup(ptr noundef nonnull %.pre.i) #13 ; 2 uses
  %.not20.i = icmp eq ptr %i.ao, null
  br i1 %.not20.i, label %spt_copyargs.exit, label %bb.q

bb.q:                                             ; preds = %.critedge.thread.i
  store ptr %i.ao, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge.i
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i87, 1
  br label %bb.o, !llvm.loop !27

spt_copyargs.exit:                                ; preds = %.critedge.thread.i
  %i.ap = tail call ptr @__errno_location() #16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %.not78 = icmp eq i32 %i.aq, 0
  br i1 %.not78, label %spt_copyargs.exit.thread, label %spt_copyenv.exit.thread

spt_copyargs.exit.thread:                         ; preds = %bb.p, %spt_copyargs.exit
  store ptr %i.d, ptr @SPT.3, align 8, !tbaa !28
  store ptr %i.b, ptr @SPT.1, align 8, !tbaa !29
  store ptr %.2.lcssa, ptr @SPT.2, align 8, !tbaa !30
  br label %spt_copyenv.exit.thread

spt_copyenv.exit.thread:                          ; preds = %bb.m, %bb.j, %bb.h, %spt_copyargs.exit, %bb.g, %bb.f, %.critedge2._crit_edge, %bb.a, %spt_copyargs.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @setproctitle(ptr noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.b = load ptr, ptr @SPT.1, align 8, !tbaa !29
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  call void @llvm.va_end.p0(ptr nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @SPT.0, align 8, !tbaa !22
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str, ptr noundef %i.d) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ %i.e, %bb.d ]  ; 2 uses
  %i.f = icmp slt i32 %.0, 1
  br i1 %i.f, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.b = load i1, ptr @SPT.4, align 8
  %i.g = load ptr, ptr @SPT.1, align 8, !tbaa !29 ; 5 uses
  %i.h = load ptr, ptr @SPT.2, align 8, !tbaa !30 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  br i1 %.b, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.k, i1 false)
  store i1 true, ptr @SPT.4, align 8
  %.pre = call range(i64 0, 2147483648) i64 @llvm.umin.i64(i64 %i.k, i64 256)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = call range(i64 0, 2147483648) i64 @llvm.umin.i64(i64 %i.k, i64 256) ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.l, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi17 = phi i64 [ %i.l, %bb.h ], [ %.pre, %bb.g ]
  %i.m = zext nneg i32 %.0 to i64
  %i.n = add nsw i64 %.pre-phi17, -1
  %i.o = call range(i64 0, 2147483648) i64 @llvm.umin.i64(i64 range(i64 1, 2147483648) %i.m, i64 %i.n) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 16 %i.a, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.o ; 3 uses
  %i.q = load ptr, ptr @SPT.3, align 8, !tbaa !28 ; 4 uses
  %i.r = icmp ult ptr %i.p, %i.q
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 46, ptr %i.q, align 1, !tbaa !25
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.s = icmp eq ptr %i.p, %i.q
  br i1 %i.s, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.h
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 32, ptr %i.q, align 1, !tbaa !25
  store i8 0, ptr %i.t, align 1, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
