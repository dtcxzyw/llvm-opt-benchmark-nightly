inline.NumInlined: 36
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@unable_to_lock_message:bb.a
  %i.x = icmp eq i8 %i.w, 100
  br i1 %i.x, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %skip_prefix_impl.exit.i, label %.critedge.i

skip_prefix_impl.exit.i:                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ab = call i64 @__isoc23_strtoumax(ptr noundef %scevgep.i.i, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 4 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.critedge8.i, label %bb.h

bb.h:                                             ; preds = %skip_prefix_impl.exit.i
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %.not5.i = icmp eq i8 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not5.i, label %bb.j, label %.critedge.i

.critedge8.i:                                     ; preds = %skip_prefix_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge8.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ae = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #13
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.i, %.critedge.i
  %.0.i.i = phi ptr [ %i.af, %bb.i ], [ @.str.12, %.critedge.i ]
  call void (ptr, ...) @warning(ptr noundef %.0.i.i, ptr noundef %i.l) #13
  br label %read_lock_pid.exit.thread

read_lock_pid.exit.thread:                        ; preds = %_.exit, %_.exit.i
  call void @strbuf_release(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.critedge16

bb.j:                                             ; preds = %bb.h
  call void @strbuf_release(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ag = trunc i64 %i.ab to i32
  %i.ah = call i32 @kill(i32 noundef %i.ag, i32 noundef 0) #13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__errno_location() #15
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  switch i32 %i.ak, label %.critedge16 [
    i32 1, label %.critedge
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i17 = icmp eq i32 %i.al, 0
  br i1 %.not4.i17, label %_.exit19, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #13
  br label %_.exit19

_.exit19:                                         ; preds = %bb.l, %bb.m
  %.0.i18 = phi ptr [ %i.am, %bb.m ], [ @.str.2, %bb.l ]
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %2, ptr noundef %.0.i18, i64 noundef %i.ab) #13
  br label %bb.p

.critedge:                                        ; preds = %bb.k, %bb.j
  %i.an = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i20 = icmp eq i32 %i.an, 0
  br i1 %.not4.i20, label %_.exit22, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #13
  br label %_.exit22

_.exit22:                                         ; preds = %.critedge, %bb.n
  %.0.i21 = phi ptr [ %i.ao, %bb.n ], [ @.str.1, %.critedge ]
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %2, ptr noundef %.0.i21, i64 noundef %i.ab) #13
  br label %bb.p

.critedge16:                                      ; preds = %read_lock_pid.exit.thread, %bb.k
  %i.ap = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i23 = icmp eq i32 %i.ap, 0
  br i1 %.not4.i23, label %_.exit25, label %bb.o

bb.o:                                             ; preds = %.critedge16
  %i.aq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #13
  br label %_.exit25

_.exit25:                                         ; preds = %.critedge16, %bb.o
  %.0.i24 = phi ptr [ %i.aq, %bb.o ], [ @.str.3, %.critedge16 ] ; 2 uses
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i24) #14
  call void @strbuf_add(ptr noundef %2, ptr noundef nonnull %.0.i24, i64 noundef %i.ar) #13
  br label %bb.p

bb.p:                                             ; preds = %_.exit19, %_.exit25, %_.exit22
  call void @strbuf_release(ptr noundef nonnull %4) #13
  call void @strbuf_release(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.as = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i26 = icmp eq i32 %i.as, 0
  br i1 %.not4.i26, label %_.exit28, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #13
  br label %_.exit28

_.exit28:                                         ; preds = %bb.q, %bb.r
  %.0.i27 = phi ptr [ %i.at, %bb.r ], [ @.str.4, %bb.q ]
  %i.au = tail call ptr @absolute_path(ptr noundef %0) #13
  %i.av = tail call ptr @strerror(i32 noundef %1) #13
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %2, ptr noundef %.0.i27, ptr noundef %i.au, ptr noundef %i.av) #13
  br label %bb.s

bb.s:                                             ; preds = %_.exit28, %bb.p
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @absolute_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @unable_to_lock_die(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  call void @unable_to_lock_message(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %i.b) #16
  unreachable
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @hold_lock_file_for_update_timeout_mode(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %lock_file_timeout.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @lock_file_timeout.random_initialized, align 4
  br i1 %.b.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @getpid() #13
  tail call void @srand(i32 noundef %i.b) #13
  store i1 true, ptr @lock_file_timeout.random_initialized, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = icmp sgt i64 %3, 0
  %i.d = tail call fastcc i32 @lock_file(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %lock_file_timeout.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %3, i64 0)
  %i.f = tail call ptr @__errno_location() #15
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.02647.i = phi i32 [ 1, %.lr.ph.i ], [ %.127.i, %bb.f ] ; 2 uses
  %.02946.i = phi i32 [ 1, %.lr.ph.i ], [ %.130.i, %bb.f ] ; 2 uses
  %.13445.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %.not.i = icmp ne i32 %i.g, 17
  %i.h = icmp slt i64 %.13445.i, 1
  %or.cond.i = select i1 %i.c, i1 %i.h, i1 false
  %or.cond39.i = select i1 %.not.i, i1 true, i1 %or.cond.i
  br i1 %or.cond39.i, label %lock_file_timeout.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = sext i32 %.02946.i to i64
  %i.j = tail call i32 @rand() #13
  %i.k = srem i32 %i.j, 500
  %i.l = add nsw i32 %i.k, 750
  %i.m = zext nneg i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, %i.i
  %i.o = sdiv i64 %i.n, 1000                      ; 2 uses
  %i.p = trunc i64 %i.o to i32
  tail call void @sleep_millisec(i32 noundef %i.p) #13
  %i.q = sub nsw i64 %.13445.i, %i.o
  %i.r = shl nuw nsw i32 %.02647.i, 1
  %i.s = add nsw i32 %.02946.i, 1
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %i.u = icmp slt i32 %i.t, 1001
  %.130.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 1000)
  %6 = zext i1 %i.u to i32
  %.127.i = add nuw nsw i32 %.02647.i, %6
  %i.v = tail call fastcc i32 @lock_file(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %lock_file_timeout.exit.thread, label %bb.e

lock_file_timeout.exit:                           ; preds = %bb.a
  %i.x = tail call fastcc i32 @lock_file(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %lock_file_timeout.exit.thread13, label %lock_file_timeout.exit.thread

lock_file_timeout.exit.thread13:                  ; preds = %bb.e, %lock_file_timeout.exit
  %.2.i15 = phi i32 [ %i.x, %lock_file_timeout.exit ], [ -1, %bb.e ] ; 2 uses
  %i.z = and i32 %2, 1
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %lock_file_timeout.exit.thread13
  %i.aa = tail call ptr @__errno_location() #15
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  tail call void @unable_to_lock_die(ptr noundef %1, i32 noundef %i.ab) #17
  unreachable

bb.h:                                             ; preds = %lock_file_timeout.exit.thread13
  %i.ac = and i32 %2, 4
  %.not10 = icmp eq i32 %i.ac, 0
  br i1 %.not10, label %lock_file_timeout.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  %i.ad = tail call ptr @__errno_location() #15
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  call void @unable_to_lock_message(ptr noundef %1, i32 noundef %i.ae, ptr noundef nonnull %5)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.ah = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef %i.ag) #13 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %lock_file_timeout.exit.thread

lock_file_timeout.exit.thread:                    ; preds = %bb.f, %bb.d, %bb.h, %bb.i, %lock_file_timeout.exit
  %.2.i12 = phi i32 [ %i.x, %lock_file_timeout.exit ], [ %.2.i15, %bb.h ], [ %.2.i15, %bb.i ], [ %i.d, %bb.d ], [ %i.v, %bb.f ]
  ret i32 %.2.i12
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_locked_file_path(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = tail call ptr @get_tempfile_path(ptr noundef %i.a) #13 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #14
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = icmp ult i64 %i.e, 6
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -5
  %i.k = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(6) @.str.6) #14
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 332, ptr noundef nonnull @.str.8) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = add i64 %i.e, -5                         ; 3 uses
  %i.m = load i64, ptr %1, align 8, !tbaa !24
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.m, i64 1)
  %i.n = icmp ugt i64 %i.l, %spec.select.i
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.15, i32 noundef 167, ptr noundef nonnull @.str.16) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  store i64 %i.l, ptr %i.d, align 8, !tbaa !23
  %.not9.i = icmp eq ptr %i.h, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  br label %strbuf_setlen.exit

bb.h:                                             ; preds = %bb.f
  %i.p = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !18
  %.not10.i = icmp eq i8 %i.p, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.g, %bb.h
  %i.q = call ptr @strbuf_detach(ptr noundef nonnull %1, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret ptr %i.q
}

declare ptr @get_tempfile_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @commit_lock_file(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @get_locked_file_path(ptr noundef %0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i32 @delete_tempfile(ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.d = tail call i32 @rename_tempfile(ptr noundef %0, ptr noundef %i.a) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #15    ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  tail call void @free(ptr noundef %i.a) #13
  store i32 %i.f, ptr %i.e, align 4, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @delete_tempfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @rollback_lock_file(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @delete_tempfile(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = tail call i32 @delete_tempfile(ptr noundef %0) #13
  ret i32 %i.c
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @strbuf_read_file(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @strbuf_rtrim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lock_file(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 7 uses
  %5 = alloca %struct.strbuf, align 8             ; 10 uses
  %6 = alloca %struct.strbuf, align 8             ; 7 uses
  %7 = alloca %struct.strbuf, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef %i.a) #13
  %i.b = and i32 %2, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %resolve_symlink.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.c
end_hunk_0
begin_hunk_1_@lock_file:bb.a
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %.not16.i.i = icmp eq i8 %i.u, 47
  br i1 %.not16.i.i, label %.critedge2.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph23.i.i
  %indvars.iv.next29.i.i = add nsw i64 %indvars.iv28.i.i, -1 ; 2 uses
  %.not13.i.i = icmp eq i64 %indvars.iv.next29.i.i, 0
  br i1 %.not13.i.i, label %.critedge2.thread.i.i, label %.lr.ph23.i.i, !llvm.loop !27

.critedge2.i.i:                                   ; preds = %.lr.ph23.i.i
  %i.v = load i64, ptr %5, align 8, !tbaa !24
  %spec.select.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 1)
  %i.w = icmp ult i64 %spec.select.i.i.i, %indvars.iv28.i.i
  br i1 %i.w, label %bb.m, label %.critedge2.thread.i.i

bb.m:                                             ; preds = %.critedge2.i.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.15, i32 noundef 167, ptr noundef nonnull @.str.16) #16
  unreachable

.critedge2.thread.i.i:                            ; preds = %bb.k, %bb.l, %.critedge2.i.i, %.critedge.i.i, %bb.i
  %.1.lcssa37.i.i = phi i64 [ %indvars.iv28.i.i, %.critedge2.i.i ], [ 0, %.critedge.i.i ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.k ] ; 2 uses
  store i64 %.1.lcssa37.i.i, ptr %i.d, align 8, !tbaa !23
  %.not9.i.i.i = icmp eq ptr %.pre.i, @strbuf_slopbuf
  br i1 %.not9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge2.thread.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.1.lcssa37.i.i
  store i8 0, ptr %i.x, align 1, !tbaa !18
  br label %strbuf_setlen.exit.i

bb.o:                                             ; preds = %.critedge2.thread.i.i
  %i.y = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !18
  %.not10.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not10.i.i.i, label %strbuf_setlen.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.o, %bb.n, %bb.g, %bb.f
  call void @strbuf_addbuf(ptr noundef nonnull %5, ptr noundef nonnull @resolve_symlink.link) #13
  %i.z = add nsw i32 %i.e, -1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.q, label %bb.c, !llvm.loop !28

bb.q:                                             ; preds = %strbuf_setlen.exit.i, %bb.c
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @resolve_symlink.link, i64 8), align 8, !tbaa !23
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @resolve_symlink.link, i64 16), align 8, !tbaa !13 ; 2 uses
  %.not9.i7.i = icmp eq ptr %i.aa, @strbuf_slopbuf
  br i1 %.not9.i7.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  br label %resolve_symlink.exit

bb.s:                                             ; preds = %bb.q
  %i.ab = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !18
  %.not10.i8.i = icmp eq i8 %i.ab, 0
  br i1 %.not10.i8.i, label %resolve_symlink.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

resolve_symlink.exit:                             ; preds = %bb.s, %bb.r, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #14
  call void @strbuf_add(ptr noundef nonnull %6, ptr noundef nonnull %i.ad, i64 noundef %i.ae) #13
  call void @strbuf_add(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i64 noundef 5) #13
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #14
  call void @strbuf_add(ptr noundef nonnull %7, ptr noundef nonnull %i.af, i64 noundef %i.ag) #13
  call void @strbuf_add(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, i64 noundef 4) #13
  call void @strbuf_add(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, i64 noundef 5) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.aj = call ptr @create_tempfile_mode(ptr noundef %i.ai, i32 noundef %3) #13 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !20
  %.not8 = icmp eq ptr %i.aj, null
  br i1 %.not8, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %resolve_symlink.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.create_lock_pid_file.content, i64 24, i1 false)
  %i.am = load i32, ptr @lockfile_pid_enabled, align 4, !tbaa !12
  %.not.i10 = icmp eq i32 %i.am, 0
  br i1 %.not.i10, label %create_lock_pid_file.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = call i32 (ptr, i32, ...) @open64(ptr noundef %i.al, i32 noundef 193, i32 noundef %3) #13 ; 4 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %create_lock_pid_file.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = call i32 @getpid() #13
  %i.aq = sext i32 %i.ap to i64
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, i64 noundef %i.aq) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23
  %i.av = call i64 @write_in_full(i32 noundef %i.an, ptr noundef %i.as, i64 noundef %i.au) #13
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ax = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #13
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.y, %bb.x
  %.0.i.i = phi ptr [ %i.ay, %bb.y ], [ @.str.14, %bb.x ]
  call void (ptr, ...) @warning_errno(ptr noundef %.0.i.i, ptr noundef %i.al) #13
  %i.az = call i32 @close(i32 noundef %i.an) #13  ; 0 uses
  %i.ba = call i32 @unlink(ptr noundef %i.al) #13 ; 0 uses
  br label %create_lock_pid_file.exit

bb.z:                                             ; preds = %bb.w
  %i.bb = call i32 @close(i32 noundef %i.an) #13  ; 0 uses
  %i.bc = call ptr @register_tempfile(ptr noundef %i.al) #13
  br label %create_lock_pid_file.exit

create_lock_pid_file.exit:                        ; preds = %bb.u, %bb.v, %_.exit.i, %bb.z
  %.0.i = phi ptr [ null, %bb.v ], [ null, %_.exit.i ], [ %i.bc, %bb.z ], [ null, %bb.u ]
  call void @strbuf_release(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.bd, align 8, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %create_lock_pid_file.exit, %resolve_symlink.exit
  call void @strbuf_release(ptr noundef nonnull %5) #13
  call void @strbuf_release(ptr noundef nonnull %6) #13
  call void @strbuf_release(ptr noundef nonnull %7) #13
  %i.be = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %.not9 = icmp eq ptr %i.be, null
  br i1 %.not9, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load volatile i32, ptr %i.bf, align 8, !tbaa !30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bh = phi i32 [ %i.bg, %bb.ab ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %i.bh
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #3

declare void @sleep_millisec(i32 noundef) local_unnamed_addr #2

declare ptr @create_tempfile_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @strbuf_readlink(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @strbuf_addbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @warning_errno(ptr noundef, ...) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #10

declare ptr @register_tempfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

declare i32 @rename_tempfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !16, i64 16}
!14 = !{!"strbuf", !15, i64 0, !15, i64 8, !16, i64 16}
!15 = !{!"long", !10, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"lock_file", !22, i64 0, !22, i64 8}
!22 = !{!"p1 _ZTS8tempfile", !17, i64 0}
!23 = !{!14, !15, i64 8}
!24 = !{!14, !15, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = !{!21, !22, i64 8}
!30 = !{!31, !9, i64 16}
!31 = !{!"tempfile", !32, i64 0, !9, i64 16, !34, i64 24, !9, i64 32, !14, i64 40, !16, i64 64}
!32 = !{!"volatile_list_head", !33, i64 0, !33, i64 8}
!33 = !{!"p1 _ZTS18volatile_list_head", !17, i64 0}
!34 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
end_hunk_1
