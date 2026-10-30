Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/if?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@opal_ifaddrtoname:bb.a
  %i.v = sext i32 %2 to i64
  call void @opal_string_copy(ptr noundef %1, ptr noundef nonnull %i.u, i64 noundef %i.v) #13
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @freeaddrinfo(ptr noundef %i.w) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge32.thread

._crit_edge:                                      ; preds = %.lr.ph.split, %.critedge.us, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.01530, i64 40
  %.015 = load ptr, ptr %i.x, align 8, !tbaa !26  ; 2 uses
  %.not20 = icmp eq ptr %.015, null
  br i1 %.not20, label %._crit_edge32, label %bb.e, !llvm.loop !44

._crit_edge32:                                    ; preds = %._crit_edge
  call void @freeaddrinfo(ptr noundef nonnull %.01528) #13
  br label %._crit_edge32.thread

._crit_edge32.thread:                             ; preds = %.preheader, %.split.us, %._crit_edge32, %bb.c, %bb.d, %bb.a
  %.4 = phi i32 [ -13, %bb.c ], [ -13, %bb.a ], [ 0, %.split.us ], [ -13, %bb.d ], [ -13, %._crit_edge32 ], [ -13, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #6

declare void @opal_string_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -13, 65536) i32 @opal_ifaddrtokindex(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.addrinfo, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.sockaddr_in, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.b, align 8, !tbaa !30
  %i.c = call i32 @getaddrinfo(ptr noundef %0, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #13
  %.not = icmp eq i32 %i.c, 0
  %.01731 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  %.not2332 = icmp eq ptr %.01731, null           ; 2 uses
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not2332, label %._crit_edge35.thread, label %.lr.ph34

bb.b:                                             ; preds = %bb.a
  br i1 %.not2332, label %._crit_edge35.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @freeaddrinfo(ptr noundef nonnull %.01731) #13
  br label %._crit_edge35.thread

.lr.ph34:                                         ; preds = %.preheader, %._crit_edge
  %.01733 = phi ptr [ %.017, %._crit_edge ], [ %.01731, %.preheader ] ; 4 uses
  %i.d = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 3 uses
  %.not2529 = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not2529, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph34
  %i.e = getelementptr inbounds nuw i8, ptr %.01733, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01733, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.01733, i64 24
  %i.h = load i32, ptr %i.e, align 4, !tbaa !31
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.01830.us = phi ptr [ %i.k, %.lr.ph.split.us ], [ %i.d, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01830.us, i64 16
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %.not25.us = icmp eq ptr %i.k, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not25.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !50

.lr.ph.splitthread-pre-split:                     ; preds = %bb.g
  %.pr = load i32, ptr %i.e, align 4, !tbaa !31
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.l = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 2, %.lr.ph ]
  %.01830 = phi ptr [ %i.ab, %.lr.ph.splitthread-pre-split ], [ %i.d, %.lr.ph ] ; 5 uses
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.01830, i64 78
  %i.o = load i16, ptr %i.n, align 2, !tbaa !53
  %i.p = icmp eq i16 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.q = load i32, ptr %i.f, align 8, !tbaa !33
  %narrow = call i32 @llvm.umin.i32(i32 %i.q, i32 16)
  %spec.select = zext nneg i32 %narrow to i64
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 2 %i.r, i64 %spec.select, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.01830, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %.01830, i64 216
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54
  %i.v = call zeroext i1 @opal_net_samenetwork(ptr noundef nonnull %2, ptr noundef nonnull %i.s, i32 noundef %i.u) #13
  br i1 %i.v, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.01830, i64 76
  %i.x = load i16, ptr %i.w, align 4, !tbaa !24
  %i.y = zext i16 %i.x to i32
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @freeaddrinfo(ptr noundef %i.z) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %._crit_edge35.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.01830, i64 16
  %i.ab = load volatile ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %.not25 = icmp eq ptr %i.ab, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not25, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.g, %.lr.ph34
  %i.ac = getelementptr inbounds nuw i8, ptr %.01733, i64 40
  %.017 = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not23 = icmp eq ptr %.017, null
  br i1 %.not23, label %._crit_edge35, label %.lr.ph34, !llvm.loop !52

._crit_edge35:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %.not24 = icmp eq ptr %.pre, null
  br i1 %.not24, label %._crit_edge35.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge35
  call void @freeaddrinfo(ptr noundef nonnull %.pre) #13
  br label %._crit_edge35.thread

._crit_edge35.thread:                             ; preds = %.preheader, %.thread, %._crit_edge35, %bb.h, %bb.b, %bb.c
  %.4 = phi i32 [ -13, %bb.b ], [ %i.y, %.thread ], [ -13, %bb.c ], [ -13, %bb.h ], [ -13, %._crit_edge35 ], [ -13, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.4
}

declare zeroext i1 @opal_net_samenetwork(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define i32 @opal_ifcount() local_unnamed_addr #7 {
bb.a:
  %i.a = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 56), align 8, !tbaa !56
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define i32 @opal_ifbegin() local_unnamed_addr #8 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define i32 @opal_ifnext(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not26 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01327 = phi ptr [ %i.k, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01327, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph, %.thread
  %.1 = phi ptr [ %i.f, %.thread ], [ %.01327, %.lr.ph ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.f = load volatile ptr, ptr %i.e, align 8, !tbaa !18 ; 3 uses
  %.not20 = icmp eq ptr %i.f, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  %cond.fr = freeze i1 %.not20
  br i1 %cond.fr, label %.loopexit, label %.thread

.thread:                                          ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = icmp eq i32 %i.h, %0
  br i1 %i.i, label %.preheader, label %.loopexit, !llvm.loop !57

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.01327, i64 16
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.k, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %bb.b, %.preheader, %.thread, %bb.a
  %.216 = phi i32 [ %i.h, %.thread ], [ -1, %bb.a ], [ -1, %.preheader ], [ -1, %bb.b ]
  ret i32 %.216
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @opal_ifindextoaddr(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not10 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi ptr [ %i.i, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.011, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 88
  %i.f = tail call i32 @llvm.umin.i32(i32 %2, i32 128)
  %i.g = zext nneg i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr nonnull align 8 %i.e, i64 %i.g, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.i = load volatile ptr, ptr %i.h, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !59

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.08 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @opal_ifkindextoaddr(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not10 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi ptr [ %i.j, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.011, i64 76
  %i.c = load i16, ptr %i.b, align 4, !tbaa !24
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %0, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011, i64 88
  %i.g = tail call i32 @llvm.umin.i32(i32 %2, i32 128)
  %i.h = zext nneg i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr nonnull align 8 %i.f, i64 %i.h, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.j = load volatile ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.j, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.08 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @opal_ifindextomask(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not9 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.010 = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.010, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 216
  %i.f = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 8 %i.e, i64 %i.f, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.h = load volatile ptr, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.h, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.07 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @opal_ifindextomac(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not8 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.09, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(6) %i.e, i64 6, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.g = load volatile ptr, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.g, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !61

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @opal_ifindextomtu(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not8 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.09, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  store i32 %i.f, ptr %1, align 4, !tbaa !36
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.h = load volatile ptr, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.h, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !62

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @opal_ifindextoflags(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not8 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.09, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 80
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %1, align 4
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.h = load volatile ptr, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.h, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @opal_ifindextoname(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !17 ; 2 uses
  %.not9 = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
end_hunk_0
