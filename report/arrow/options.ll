inline.NumInlined: 49
inline.NumDeleted: 11
begin_hunk_0_@_mi_options_init:bb.a
  br i1 %i.m, label %bb.g, label %mi_option_is_enabled.exit, !prof !14

bb.g:                                             ; preds = %mi_option_get.exit4
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mi_options, i64 64)), !inline_history !18
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %mi_option_get.exit4, %bb.g
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 64), align 16, !tbaa !16
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.j, label %bb.i

mi_add_stderr_output.exit:                        ; preds = %mi_add_stderr_output.exit.preheader, %mi_option_get.exit5
  %indvars.iv = phi i64 [ %indvars.iv.next, %mi_option_get.exit5 ], [ 0, %mi_add_stderr_output.exit.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !10
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %mi_option_get.exit5, !prof !14

bb.h:                                             ; preds = %mi_add_stderr_output.exit
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.o), !inline_history !15
  br label %mi_option_get.exit5

mi_option_get.exit5:                              ; preds = %mi_add_stderr_output.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 43
  br i1 %exitcond.not, label %bb.d, label %mi_add_stderr_output.exit, !llvm.loop !19

bb.i:                                             ; preds = %mi_option_is_enabled.exit
  tail call void @mi_options_print()
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %mi_option_is_enabled.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i64 @mi_option_get(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @mi_option_is_enabled(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.c), !inline_history !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !16
  %i.h = icmp ne i64 %i.g, 0
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @mi_options_print() local_unnamed_addr #1 {
bb.a:
  tail call void (ptr, ...) @_mi_message(ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  br label %bb.c

bb.b:                                             ; preds = %mi_option_get.exit
  tail call void (ptr, ...) @_mi_message(ptr noundef nonnull @.str.7, i32 noundef 0)
  tail call void (ptr, ...) @_mi_message(ptr noundef nonnull @.str.8, i32 noundef 0)
  tail call void (ptr, ...) @_mi_message(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10)
  ret void

bb.c:                                             ; preds = %bb.a, %mi_option_get.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mi_option_get.exit ] ; 4 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %indvars.iv ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %mi_option_get.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.a), !inline_history !15
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !21
  %i.g = load i64, ptr %i.a, align 16, !tbaa !16
  %i.h = icmp eq i64 %indvars.iv, 9
  %i.i = icmp eq i64 %indvars.iv, 23
  %i.j = or i1 %i.h, %i.i
  %i.k = select i1 %i.j, ptr @.str.6, ptr @.str.2
  tail call void (ptr, ...) @_mi_message(ptr noundef nonnull @.str.5, ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 43
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !22
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_message(ptr noundef %0, ...) local_unnamed_addr #1 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.11, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_mi_option_get_fast(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.a
  %i.c = load i64, ptr %i.b, align 16, !tbaa !16
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_option_init(ptr noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  %i.b = alloca [65 x i8], align 16               ; 15 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @_mi_strlcpy(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.65, i64 noundef 65) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  call void @_mi_strlcat(ptr noundef nonnull %i.b, ptr noundef %i.e, i64 noundef 65) #15
  %i.f = call zeroext i1 @_mi_getenv(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 65) #15
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_mi_strlcpy(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.65, i64 noundef 65) #15
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !23
  call void @_mi_strlcat(ptr noundef nonnull %i.b, ptr noundef %i.i, i64 noundef 65) #15
  %i.j = call zeroext i1 @_mi_getenv(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 65) #15
  br i1 %i.j, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !21
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.66, ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.m = call i64 @_mi_strnlen(ptr noundef nonnull %i.a, i64 noundef 64) #15 ; 3 uses
  %.not43 = icmp eq i64 %i.m, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.o = load i8, ptr %i.b, align 16, !tbaa !9
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %1, label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.03342 = phi i64 [ %i.u, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03342
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = call signext i8 @_mi_toupper(i8 noundef signext %i.r) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03342
  store i8 %i.s, ptr %i.t, align 1, !tbaa !9
  %i.u = add nuw i64 %.03342, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.f:                                             ; preds = %._crit_edge
  %i.v = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.not37 = icmp eq ptr %i.v, null
  br i1 %.not37, label %bb.g, label %1

1:                                                ; preds = %bb.f, %._crit_edge
  store i64 1, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %2, align 8, !tbaa !10
  br label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.w = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.68, ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.not38 = icmp eq ptr %i.w, null
  br i1 %.not38, label %bb.h, label %3

3:                                                ; preds = %bb.g
  store i64 0, ptr %0, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %4, align 8, !tbaa !10
  br label %bb.z

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr %i.b, ptr %i.c, align 8, !tbaa !25
  %i.x = call i64 @strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 10) #15 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26   ; 4 uses
  switch i32 %i.z, label %._crit_edge44 [
    i32 23, label %bb.i
    i32 9, label %bb.i
  ]

._crit_edge44:                                    ; preds = %bb.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.aa = call i64 @llvm.smax.i64(i64 %i.x, i64 0) ; 5 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.ac, label %bb.m [
    i8 75, label %thread-pre-split
    i8 77, label %bb.j
    i8 71, label %bb.k
    i8 84, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp sgt i64 %i.x, 18014398509481983
  %i.ae = shl i64 %i.aa, 10
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.x, 17592186044415
  %i.ag = shl i64 %i.aa, 20
  br label %thread-pre-split

bb.l:                                             ; preds = %bb.i
  %i.ah = icmp sgt i64 %i.x, 17179869183
  %i.ai = shl i64 %i.aa, 30
  br label %thread-pre-split

bb.m:                                             ; preds = %bb.i
  %i.aj = add nuw i64 %i.aa, 1023
  %i.ak = lshr i64 %i.aj, 10
  br label %bb.n

thread-pre-split:                                 ; preds = %bb.i, %bb.k, %bb.l, %bb.j
  %.0.ph = phi i64 [ %i.ai, %bb.l ], [ %i.ag, %bb.k ], [ %i.ae, %bb.j ], [ %i.aa, %bb.i ]
  %.0.shrunk.ph = phi i1 [ %i.ah, %bb.l ], [ %i.af, %bb.k ], [ %i.ad, %bb.j ], [ false, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  store ptr %i.al, ptr %i.c, align 8, !tbaa !25
  %.pr = load i8, ptr %i.al, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.m
  %i.am = phi i8 [ %.pr, %thread-pre-split ], [ %i.ac, %bb.m ]
  %i.an = phi ptr [ %i.al, %thread-pre-split ], [ %i.ab, %bb.m ] ; 4 uses
  %.0 = phi i64 [ %.0.ph, %thread-pre-split ], [ %i.ak, %bb.m ] ; 2 uses
  %.0.shrunk = phi i1 [ %.0.shrunk.ph, %thread-pre-split ], [ false, %bb.m ]
  switch i8 %i.am, label %.thread41 [
    i8 73, label %bb.o
    i8 66, label %.thread41.sink.split
  ]

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 66
  br i1 %i.aq, label %.thread41.sink.split, label %.thread41

.thread41.sink.split:                             ; preds = %bb.n, %bb.o
  %.sink46 = phi i64 [ 2, %bb.o ], [ 1, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink46 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !25
  br label %.thread41

.thread41:                                        ; preds = %.thread41.sink.split, %bb.n, %bb.o
  %i.as = phi ptr [ %i.an, %bb.n ], [ %i.an, %bb.o ], [ %i.ar, %.thread41.sink.split ]
  %i.at = icmp slt i64 %.0, 0
  %or.cond = select i1 %.0.shrunk, i1 true, i1 %i.at
  %spec.select = select i1 %or.cond, i64 9007199254740991, i64 %.0
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge44, %.thread41
  %i.au = phi ptr [ %i.as, %.thread41 ], [ %.pre, %._crit_edge44 ]
  %.032 = phi i64 [ %spec.select, %.thread41 ], [ %i.x, %._crit_edge44 ] ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp ugt i32 %i.z, 42
  br i1 %i.ax, label %mi_option_set.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i.backedge
  %.tr14.i = phi i32 [ %.tr14.i.be, %.lr.ph.i.backedge ], [ %i.z, %bb.q ]
  %i.ay = zext nneg i32 %.tr14.i to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.ay ; 3 uses
  store i64 %.032, ptr %i.az, align 16, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 2, ptr %i.ba, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26
  switch i32 %i.bc, label %mi_option_set.exit [
    i32 29, label %bb.r
    i32 30, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !16
  %i.be = icmp slt i64 %i.bd, %.032
  br i1 %i.be, label %.lr.ph.i.backedge, label %mi_option_set.exit

bb.s:                                             ; preds = %.lr.ph.i
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !16
  %i.bg = icmp sgt i64 %i.bf, %.032
  br i1 %i.bg, label %.lr.ph.i.backedge, label %mi_option_set.exit

.lr.ph.i.backedge:                                ; preds = %bb.s, %bb.r
  %.tr14.i.be = phi i32 [ 29, %bb.s ], [ 30, %bb.r ]
  br label %.lr.ph.i

bb.t:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bh, align 8, !tbaa !10
  %i.bi = icmp eq i32 %i.z, 2
  br i1 %i.bi, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bj = load i64, ptr %0, align 8, !tbaa !16
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 1, ptr %0, align 8, !tbaa !16
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !21
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.69, ptr noundef %i.bl)
  store i64 0, ptr %0, align 8, !tbaa !16
  br label %mi_option_set.exit

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !21
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.69, ptr noundef %i.bm)
  br label %mi_option_set.exit

mi_option_set.exit:                               ; preds = %bb.s, %bb.r, %.lr.ph.i, %bb.q, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.z

bb.x:                                             ; preds = %bb.b, %bb.c
  %i.bn = call zeroext i1 @_mi_preloading() #15
  br i1 %i.bn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bo, align 8, !tbaa !10
  br label %bb.z

bb.z:                                             ; preds = %1, %mi_option_set.exit, %3, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @mi_option_get_clamp(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.c), !inline_history !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !16
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.h = icmp slt i64 %.0.i, %1
  %i.i = tail call i64 @llvm.smin.i64(i64 %.0.i, i64 %2)
  %i.j = select i1 %i.h, i64 %1, i64 %i.i
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -1023) i64 @mi_option_get_size(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.c), !inline_history !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !16
  %i.h = tail call i64 @llvm.smax.i64(i64 %i.g, i64 0)
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.h, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.i = icmp eq i32 %0, 9
  %i.j = icmp eq i32 %0, 23
  %i.k = or i1 %i.i, %i.j
  %i.l = shl i64 %.0.i, 10
  %spec.select = select i1 %i.k, i64 %i.l, i64 %.0.i
  ret i64 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.tr14 = phi i32 [ %.tr14.be, %.lr.ph.backedge ], [ %0, %bb.a ]
  %i.b = zext nneg i32 %.tr14 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  store i64 %1, ptr %i.c, align 16, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  switch i32 %i.f, label %.thread [
    i32 29, label %bb.b
    i32 30, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !16
  %i.h = icmp slt i64 %i.g, %1
  br i1 %i.h, label %.lr.ph.backedge, label %.thread

.lr.ph.backedge:                                  ; preds = %bb.b, %bb.c
  %.tr14.be = phi i32 [ 29, %bb.c ], [ 30, %bb.b ]
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !16
  %i.j = icmp sgt i64 %i.i, %1
  br i1 %i.j, label %.lr.ph.backedge, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_default(i32 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.c, align 16, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i1 %1 to i64                        ; 3 uses
  %i.b = icmp ugt i32 %0, 42
  br i1 %i.b, label %mi_option_set.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.tr14.i = phi i32 [ %.tr14.i.be, %.lr.ph.i.backedge ], [ %0, %bb.a ]
  %i.c = zext nneg i32 %.tr14.i to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.c ; 3 uses
  store i64 %i.a, ptr %i.d, align 16, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 2, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  switch i32 %i.g, label %mi_option_set.exit [
    i32 29, label %bb.b
    i32 30, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !16
  %i.i = icmp slt i64 %i.h, %i.a
  br i1 %i.i, label %.lr.ph.i.backedge, label %mi_option_set.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !16
  %i.k = icmp sgt i64 %i.j, %i.a
  br i1 %i.k, label %.lr.ph.i.backedge, label %mi_option_set.exit

.lr.ph.i.backedge:                                ; preds = %bb.c, %bb.b
  %.tr14.i.be = phi i32 [ 29, %bb.c ], [ 30, %bb.b ]
  br label %.lr.ph.i

mi_option_set.exit:                               ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_enabled_default(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i1 %1 to i64
  %i.b = icmp ugt i32 %0, 42
  br i1 %i.b, label %mi_option_set_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i32 %i.f, 2
  br i1 %.not.i, label %mi_option_set_default.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.a, ptr %i.d, align 16, !tbaa !16
  br label %mi_option_set_default.exit

mi_option_set_default.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_enable(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %mi_option_set_enabled.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i.backedge
  %.tr14.i.i = phi i32 [ %.tr14.i.i.be, %.lr.ph.i.i.backedge ], [ %0, %bb.a ]
  %i.b = zext nneg i32 %.tr14.i.i to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
end_hunk_0
