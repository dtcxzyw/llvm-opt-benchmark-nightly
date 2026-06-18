inline.NumInlined: 32
inline.NumDeleted: 8
begin_hunk_0_@stringmatchlen_fuzz_test:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.m = call fastcc range(i32 0, 2) i32 @stringmatchlen_impl(ptr noundef nonnull readonly %i.c, i32 noundef %i.h, ptr noundef nonnull readonly %i.b, i32 noundef %i.f, i32 noundef 0, ptr noundef %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.n = add nuw nsw i32 %i.m, %.01521            ; 2 uses
  %i.o = add nsw i32 %i.d, -1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !24

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %.lr.ph20
  %indvars.iv25 = phi i64 [ 0, %.lr.ph20.preheader ], [ %indvars.iv.next26, %.lr.ph20 ] ; 2 uses
  %i.p = tail call i32 @rand() #27
  %i.q = srem i32 %i.p, 128
  %i.r = trunc nsw i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv25
  store i8 %i.r, ptr %i.s, align 1, !tbaa !13
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph20, !llvm.loop !25

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i32 %i.n
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @memtoull(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not = icmp eq ptr %1, null                    ; 4 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.d = icmp eq i8 %i.c, 45
  br i1 %i.d, label %bb.w, label %.preheader

.thread:                                          ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !9
  %i.e = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.f = icmp eq i8 %i.e, 45
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b, %.thread
  %.ph = phi i8 [ %i.c, %bb.b ], [ %i.e, %.thread ] ; 2 uses
  %.not3851 = icmp eq i8 %.ph, 0
  br i1 %.not3851, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = tail call ptr @__ctype_b_loc() #28
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %.thread
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %bb.w

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.03252 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.e ] ; 15 uses
  %i.i = phi i8 [ %.ph, %.lr.ph ], [ %.pr, %bb.e ]
  %i.j = sext i8 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = and i16 %i.l, 2048
  %.not39 = icmp eq i16 %i.m, 0
  br i1 %.not39, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.03252, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.n, align 1, !tbaa !13    ; 2 uses
  %.not38 = icmp eq i8 %.pr, 0
  br i1 %.not38, label %.critedge.thread, label %bb.d, !llvm.loop !30

.critedge:                                        ; preds = %bb.d
  %i.o = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str) #29
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.p = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str.1) #29
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str.2) #29
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str.3) #29
  %.not43 = icmp eq i32 %i.r, 0
  br i1 %.not43, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str.4) #29
  %.not44 = icmp eq i32 %i.s, 0
  br i1 %.not44, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str.5) #29
  %.not45 = icmp eq i32 %i.t, 0
  br i1 %.not45, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @strcasecmp(ptr noundef nonnull %.03252, ptr noundef nonnull @.str.6) #29
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %bb.w

.critedge.thread:                                 ; preds = %bb.e, %.preheader, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.critedge
  %.03250 = phi ptr [ %.03252, %bb.k ], [ %.03252, %bb.j ], [ %.03252, %bb.i ], [ %.03252, %bb.h ], [ %.03252, %bb.g ], [ %.03252, %bb.f ], [ %.03252, %.critedge ], [ %0, %.preheader ], [ %i.n, %bb.e ]
  %.033 = phi i64 [ 1073741824, %bb.k ], [ 1000000000, %bb.j ], [ 1048576, %bb.i ], [ 1000000, %bb.h ], [ 1024, %bb.g ], [ 1000, %bb.f ], [ 1, %.critedge ], [ 1, %.preheader ], [ 1, %bb.e ]
  %i.v = ptrtoint ptr %.03250 to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = and i64 %i.x, 4294967295                 ; 3 uses
  %i.z = icmp samesign ugt i64 %i.y, 127
  br i1 %i.z, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge.thread
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %bb.w

bb.p:                                             ; preds = %.critedge.thread
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %0, i64 %i.y, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ab = tail call ptr @__errno_location() #28   ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !9
  %i.ac = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #27 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !9
  %i.af = icmp eq i32 %i.ae, 22
  br i1 %i.af, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %.not47 = icmp eq i8 %i.ah, 0
  br i1 %.not47, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ai = mul i64 %i.ac, %.033
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.0 = phi i64 [ %i.ai, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.n, %bb.o, %bb.l, %bb.m, %bb.c, %bb.v
  %.1 = phi i64 [ 0, %bb.n ], [ 0, %bb.l ], [ %.0, %bb.v ], [ 0, %bb.c ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local ptr @mempbrk(ptr nofree noundef readonly captures(ret: address, provenance) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %4 = icmp ne i64 %1, 0
  %.not24 = icmp ne i64 %3, 0
  %or.cond = and i1 %4, %.not24
  br i1 %or.cond, label %.preheader, label %.loopexit23

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.01526 = phi i64 [ %i.g, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.01526
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !33

bb.c:                                             ; preds = %.preheader, %bb.b
  %.025 = phi i64 [ 0, %.preheader ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.025
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp eq i8 %i.b, %i.e
  br i1 %i.f, label %.loopexit23.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.g = add nuw i64 %.01526, 1                   ; 2 uses
  %exitcond28.not = icmp eq i64 %i.g, %1
  br i1 %exitcond28.not, label %.loopexit23, label %.preheader, !llvm.loop !34

.loopexit23.loopexit:                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.01526
  br label %.loopexit23

.loopexit23:                                      ; preds = %._crit_edge, %.loopexit23.loopexit, %bb.a
  %i.i = phi ptr [ %i.h, %.loopexit23.loopexit ], [ null, %bb.a ], [ null, %._crit_edge ]
  ret ptr %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @memmapchars(ptr nofree noundef returned captures(ret: address, provenance) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %.not19 = icmp eq i64 %4, 0
  %or.cond = or i1 %.not, %.not19
  br i1 %or.cond, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %bb.a, %..loopexit_crit_edge.us
  %.01417.us = phi i64 [ %i.i, %..loopexit_crit_edge.us ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.01417.us ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %.016.us = phi i64 [ 0, %.preheader.us ], [ %i.f, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.016.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %.016.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %4
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !35

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %.016.us
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  store i8 %i.h, ptr %i.a, align 1, !tbaa !13
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.c, %bb.d
  %i.i = add nuw i64 %.01417.us, 1                ; 2 uses
  %exitcond22.not = icmp eq i64 %i.i, %1
  br i1 %exitcond22.not, label %._crit_edge, label %.preheader.us, !llvm.loop !36

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 1, 21) i32 @digits10(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i64 %0, 10
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %0, 100
  br i1 %i.b, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %0, 1000
  br i1 %i.c, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %0, 1000000000000
  br i1 %i.d, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %0, 100000000
  br i1 %i.e, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i64 %0, 1000000
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i64 %0, 10000
  br i1 %i.g, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ugt i64 %0, 99999
  %i.i = select i1 %i.h, i32 6, i32 5
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.j = icmp samesign ugt i64 %0, 9999999
  %i.k = select i1 %i.j, i32 8, i32 7
  br label %bb.t

bb.j:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i64 %0, 10000000000
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = icmp samesign ugt i64 %0, 999999999
  %i.n = select i1 %i.m, i32 10, i32 9
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.o = icmp samesign ugt i64 %0, 99999999999
  %i.p = select i1 %i.o, i32 12, i32 11
  br label %bb.t

bb.m:                                             ; preds = %bb.d
  %i.q = icmp ult i64 %0, 10000000000000
  br i1 %i.q, label %digits10.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = icmp ult i64 %0, 100000000000000
  br i1 %i.r, label %digits10.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = icmp ult i64 %0, 1000000000000000
  br i1 %i.s, label %digits10.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = icmp ult i64 %0, 1000000000000000000
  br i1 %i.t, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.u = icmp samesign ult i64 %0, 10000000000000000
  br i1 %i.u, label %digits10.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = icmp samesign ugt i64 %0, 99999999999999999
  %i.w = select i1 %i.v, i32 6, i32 5
  br label %digits10.exit

bb.s:                                             ; preds = %bb.p
  %i.x = icmp ugt i64 %0, -8446744073709551617
  %i.y = select i1 %i.x, i32 8, i32 7
  br label %digits10.exit

digits10.exit:                                    ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s
  %.0.i = phi i32 [ 4, %bb.q ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ], [ %i.w, %bb.r ], [ %i.y, %bb.s ]
  %i.z = add nuw nsw i32 %.0.i, 12
  br label %bb.t

bb.t:                                             ; preds = %bb.g, %bb.c, %bb.b, %bb.a, %digits10.exit, %bb.l, %bb.k, %bb.i, %bb.h
  %.0 = phi i32 [ %i.z, %digits10.exit ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ %i.i, %bb.h ], [ %i.k, %bb.i ], [ %i.n, %bb.k ], [ %i.p, %bb.l ], [ 4, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 1, 21) i32 @sdigits10(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 0, %0                            ; 18 uses
  %i.c = icmp ult i64 %i.b, 10
  br i1 %i.c, label %digits10.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %i.b, 100
  br i1 %i.d, label %digits10.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %i.b, 1000
  br i1 %i.e, label %digits10.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %i.b, 1000000000000
  br i1 %i.f, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = icmp samesign ult i64 %i.b, 100000000
  br i1 %i.g, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.h = icmp samesign ult i64 %i.b, 1000000
  br i1 %i.h, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.i = icmp samesign ult i64 %i.b, 10000
  br i1 %i.i, label %digits10.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = icmp samesign ugt i64 %i.b, 99999
  %i.k = select i1 %i.j, i32 6, i32 5
  br label %digits10.exit

bb.j:                                             ; preds = %bb.g
  %i.l = icmp samesign ugt i64 %i.b, 9999999
  %i.m = select i1 %i.l, i32 8, i32 7
  br label %digits10.exit

bb.k:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i64 %i.b, 10000000000
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.o = icmp samesign ugt i64 %i.b, 999999999
  %i.p = select i1 %i.o, i32 10, i32 9
  br label %digits10.exit

bb.m:                                             ; preds = %bb.k
  %i.q = icmp samesign ugt i64 %i.b, 99999999999
  %i.r = select i1 %i.q, i32 12, i32 11
  br label %digits10.exit

bb.n:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %i.b, 10000000000000
  br i1 %i.s, label %digits10.exit, label %bb.o
end_hunk_0
