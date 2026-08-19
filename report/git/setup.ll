inline.NumInlined: 186
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@setup_git_directory_gently_1:bb.a
  %i.cg = icmp sgt i64 %indvars.iv.next124, %i.al
  br i1 %i.cg, label %.lr.ph.preheader, label %.critedge.thread5

.lr.ph.preheader:                                 ; preds = %.preheader.preheader
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next125, -1 ; 2 uses
  %i.ci = icmp sgt i64 %indvars.iv.next, %i.al
  br i1 %i.ci, label %.lr.ph, label %.critedge.thread5, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader
  %indvars.iv.next125 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next124, %.lr.ph.preheader ] ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %indvars.iv.next125
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !12
  %.not10 = icmp eq i8 %i.ck, 47
  br i1 %.not10, label %bb.ao, label %.preheader, !llvm.loop !90

bb.ao:                                            ; preds = %.lr.ph
  %i.cl = trunc nsw i64 %indvars.iv.next125 to i32 ; 2 uses
  %i.cm = call i32 @llvm.smax.i32(i32 %i.cl, i32 %.078)
  %i.cn = zext nneg i32 %i.cm to i64              ; 3 uses
  %i.co = load i64, ptr %0, align 8, !tbaa !24
  %spec.select.i123 = call i64 @llvm.usub.sat.i64(i64 %i.co, i64 1)
  %i.cp = icmp ult i64 %spec.select.i123, %i.cn
  br i1 %i.cp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  store i64 %i.cn, ptr %i.ak, align 8, !tbaa !22
  %.not9.i124 = icmp eq ptr %i.ch, @strbuf_slopbuf
  br i1 %.not9.i124, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  store i8 0, ptr %i.cq, align 1, !tbaa !12
  br label %strbuf_setlen.exit126

bb.as:                                            ; preds = %bb.aq
  %i.cr = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i125 = icmp eq i8 %i.cr, 0
  br i1 %.not10.i125, label %strbuf_setlen.exit126, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit126:                            ; preds = %bb.ar, %bb.as
  br i1 %.not95, label %bb.au, label %.critedge

bb.au:                                            ; preds = %strbuf_setlen.exit126
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ct = call i32 @stat64(ptr noundef %i.cs, ptr noundef nonnull %3) #20
  %.not.i127 = icmp eq i32 %i.ct, 0
  br i1 %.not.i127, label %get_device_or_die.exit128, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cu = call fastcc ptr @_(ptr noundef nonnull @.str.129)
  call void (ptr, ...) @die_errno(ptr noundef %i.cu, i32 noundef range(i32 -1, 2147483647) %i.cl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef %i.cs) #21
  unreachable

get_device_or_die.exit128:                        ; preds = %bb.au
  %i.cv = load i64, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not106 = icmp eq i64 %.077, %i.cv
  br i1 %.not106, label %.critedge, label %.critedge.thread5

.critedge.thread5:                                ; preds = %bb.w, %bb.an, %get_device_or_die.exit128, %.preheader.preheader, %.preheader, %bb.ah, %bb.am, %is_implicit_bare_repo.exit, %is_implicit_bare_repo.exit.thread, %bb.u, %bb.s
  %.182.ph = phi i32 [ %.0, %bb.ah ], [ -3, %bb.s ], [ -3, %bb.u ], [ -5, %is_implicit_bare_repo.exit ], [ 3, %bb.am ], [ -4, %is_implicit_bare_repo.exit.thread ], [ -1, %.preheader ], [ -3, %bb.w ], [ -1, %bb.an ], [ -2, %get_device_or_die.exit128 ], [ -1, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.aw

.critedge:                                        ; preds = %strbuf_setlen.exit126, %get_device_or_die.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.m

bb.aw:                                            ; preds = %.critedge.thread5, %bb.b
  %.2 = phi i32 [ 1, %bb.b ], [ %.182.ph, %.critedge.thread5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @strbuf_insert(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @apply_repository_format(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @verify_repository_format(ptr noundef %1, ptr noundef %3)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %xstrdup_or_null.exit29, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.14) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %xstrdup_or_null.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull %i.d) #20
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %bb.c, %bb.d
  %i.f = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.47) #20 ; 2 uses
  %.not.i28 = icmp eq ptr %i.g, null
  br i1 %.not.i28, label %xstrdup_or_null.exit29, label %bb.e

bb.e:                                             ; preds = %xstrdup_or_null.exit
  %i.h = tail call ptr @xstrdup(ptr noundef nonnull %i.g) #20
  br label %xstrdup_or_null.exit29

xstrdup_or_null.exit29:                           ; preds = %bb.e, %xstrdup_or_null.exit, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ %i.f, %xstrdup_or_null.exit ], [ %i.f, %bb.e ] ; 2 uses
  %.0 = phi ptr [ null, %bb.b ], [ null, %xstrdup_or_null.exit ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  tail call void @repo_set_hash_algo(ptr noundef %0, i32 noundef %i.j) #20
  %i.k = tail call ptr @odb_new(ptr noundef %0, ptr noundef %.026, ptr noundef %.0) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76
  tail call void @repo_set_compat_hash_algo(ptr noundef %0, i32 noundef %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  tail call void @repo_set_ref_storage_format(ptr noundef %0, i32 noundef %i.p, ptr noundef %i.r) #20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.v, ptr %i.w, align 4, !tbaa !92
  %i.x = load <2 x i32>, ptr %i.s, align 8, !tbaa !13
  store <2 x i32> %i.x, ptr %i.t, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %.not.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i30, label %xstrdup_or_null.exit31, label %bb.f

bb.f:                                             ; preds = %xstrdup_or_null.exit29
  %i.aa = tail call ptr @xstrdup(ptr noundef nonnull %i.z) #20
  br label %xstrdup_or_null.exit31

xstrdup_or_null.exit31:                           ; preds = %xstrdup_or_null.exit29, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %xstrdup_or_null.exit29 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !94
  tail call void @free(ptr noundef %.0) #20
  tail call void @free(ptr noundef %.026) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %xstrdup_or_null.exit31
  %.027 = phi i32 [ 0, %xstrdup_or_null.exit31 ], [ -1, %bb.a ]
  ret i32 %.027
}

declare void @repo_set_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @odb_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @repo_set_compat_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @repo_set_ref_storage_format(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @enter_repo(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 4 uses
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 5 uses
  %6 = alloca %struct.stat, align 8               ; 14 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge68.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %2, 1
  %.not54 = icmp eq i32 %i.a, 0
  br i1 %.not54, label %bb.c, label %bb.av

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.c
  %7 = and i64 %i.b, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %7, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.i = icmp sgt i64 %indvars.iv, 2
  br i1 %i.i, label %.lr.ph, label %.critedge.thread, !llvm.loop !95

.critedge:                                        ; preds = %.lr.ph
  %i.j = icmp samesign ugt i64 %indvars.iv, 4095
  br i1 %i.j, label %.critedge68.thread, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %bb.c, %.critedge
  %.04185 = phi i64 [ %indvars.iv, %.critedge ], [ %i.b, %bb.c ], [ 1, %bb.d ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not9.i = icmp eq ptr %i.k, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.thread
  store i8 0, ptr %i.k, align 1, !tbaa !12
  br label %strbuf_setlen.exit

bb.f:                                             ; preds = %.critedge.thread
  %i.l = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i = icmp eq i8 %i.l, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.e, %bb.f
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.validated_path, i64 8), align 8, !tbaa !22
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.validated_path, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not9.i72 = icmp eq ptr %i.m, @strbuf_slopbuf
  br i1 %.not9.i72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %strbuf_setlen.exit
  store i8 0, ptr %i.m, align 1, !tbaa !12
  br label %strbuf_setlen.exit74

bb.i:                                             ; preds = %strbuf_setlen.exit
  %i.n = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i73 = icmp eq i8 %i.n, 0
  br i1 %.not10.i73, label %strbuf_setlen.exit74, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit74:                             ; preds = %bb.h, %bb.i
  %sext = shl i64 %.04185, 32
  %8 = ashr exact i64 %sext, 32                   ; 2 uses
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull %1, i64 noundef %8) #20
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.validated_path, ptr noundef nonnull %1, i64 noundef %8) #20
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, 126
  br i1 %i.q, label %bb.k, label %bb.m

bb.k:                                             ; preds = %strbuf_setlen.exit74
  %i.r = tail call ptr @interpolate_path(ptr noundef nonnull %i.o, i32 noundef 0) #20 ; 3 uses
  %.not55.not = icmp eq ptr %i.r, null
  br i1 %.not55.not, label %.critedge68.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #19 ; 2 uses
  tail call void @strbuf_attach(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull %i.r, i64 noundef %i.s, i64 noundef %i.s) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %strbuf_setlen.exit74
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22 ; 4 uses
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull @.str.48, i64 noundef 5) #20
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.w = call i32 @stat64(ptr noundef %i.v, ptr noundef nonnull %6) #20
  %.not57 = icmp eq i32 %i.w, 0
  br i1 %.not57, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.t, align 8, !tbaa !25
  %i.y = trunc i32 %i.x to i16
  %trunc = and i16 %i.y, -4096
  switch i16 %trunc, label %bb.p [
    i16 -32768, label %bb.aq
    i16 16384, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.aa = tail call i32 @is_git_directory(ptr noundef %i.z)
  %.not58 = icmp eq i32 %i.aa, 0
  br i1 %.not58, label %bb.p, label %bb.aq

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.ab = load i64, ptr @enter_repo.used_path, align 8, !tbaa !24
  %spec.select.i75 = tail call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 1)
  %i.ac = icmp ugt i64 %i.u, %spec.select.i75
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.am, %bb.af, %bb.y, %bb.p
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.r:                                             ; preds = %bb.p
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not9.i76 = icmp eq ptr %i.ad, @strbuf_slopbuf
  br i1 %.not9.i76, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i8 0, ptr %i.ae, align 1, !tbaa !12
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.af = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i77 = icmp eq i8 %i.af, 0
  br i1 %.not10.i77, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.ap, %bb.ai, %bb.ab, %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.t
  %i.ag = phi i64 [ %.pre, %bb.s ], [ %i.u, %bb.t ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull @.str.1, i64 noundef 0) #20
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.ai = call i32 @stat64(ptr noundef %i.ah, ptr noundef nonnull %6) #20
  %.not57.1 = icmp eq i32 %i.ai, 0
  br i1 %.not57.1, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.aj = load i32, ptr %i.t, align 8, !tbaa !25
  %i.ak = trunc i32 %i.aj to i16
  %trunc.1 = and i16 %i.ak, -4096
  switch i16 %trunc.1, label %bb.y [
    i16 -32768, label %bb.aq
    i16 16384, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.am = tail call i32 @is_git_directory(ptr noundef %i.al)
  %.not58.1 = icmp eq i32 %i.am, 0
  br i1 %.not58.1, label %bb.y, label %bb.aq

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.an = load i64, ptr @enter_repo.used_path, align 8, !tbaa !24
  %spec.select.i75.1 = tail call i64 @llvm.usub.sat.i64(i64 %i.an, i64 1)
  %i.ao = icmp ugt i64 %i.ag, %spec.select.i75.1
  br i1 %i.ao, label %bb.q, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not9.i76.1 = icmp eq ptr %i.ap, @strbuf_slopbuf
  br i1 %.not9.i76.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ag
  store i8 0, ptr %i.aq, align 1, !tbaa !12
  %.pre94 = load i64, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ar = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i77.1 = icmp eq i8 %i.ar, 0
  br i1 %.not10.i77.1, label %bb.ac, label %bb.u

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.as = phi i64 [ %i.ag, %bb.ab ], [ %.pre94, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull @.str.49, i64 noundef 9) #20
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.au = call i32 @stat64(ptr noundef %i.at, ptr noundef nonnull %6) #20
  %.not57.2 = icmp eq i32 %i.au, 0
  br i1 %.not57.2, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.av = load i32, ptr %i.t, align 8, !tbaa !25
  %i.aw = trunc i32 %i.av to i16
  %trunc.2 = and i16 %i.aw, -4096
  switch i16 %trunc.2, label %bb.af [
    i16 -32768, label %bb.aq
    i16 16384, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.ay = tail call i32 @is_git_directory(ptr noundef %i.ax)
  %.not58.2 = icmp eq i32 %i.ay, 0
  br i1 %.not58.2, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.az = load i64, ptr @enter_repo.used_path, align 8, !tbaa !24
  %spec.select.i75.2 = tail call i64 @llvm.usub.sat.i64(i64 %i.az, i64 1)
  %i.ba = icmp ugt i64 %i.as, %spec.select.i75.2
  br i1 %i.ba, label %bb.q, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not9.i76.2 = icmp eq ptr %i.bb, @strbuf_slopbuf
  br i1 %.not9.i76.2, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !12
  %.pre95 = load i64, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bd = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i77.2 = icmp eq i8 %i.bd, 0
  br i1 %.not10.i77.2, label %bb.aj, label %bb.u

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.be = phi i64 [ %i.as, %bb.ai ], [ %.pre95, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull @.str.19, i64 noundef 4) #20
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.bg = call i32 @stat64(ptr noundef %i.bf, ptr noundef nonnull %6) #20
  %.not57.3 = icmp eq i32 %i.bg, 0
  br i1 %.not57.3, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.bh = load i32, ptr %i.t, align 8, !tbaa !25
  %i.bi = trunc i32 %i.bh to i16
  %trunc.3 = and i16 %i.bi, -4096
  switch i16 %trunc.3, label %bb.am [
    i16 -32768, label %bb.aq
    i16 16384, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !16
  %i.bk = tail call i32 @is_git_directory(ptr noundef %i.bj)
  %.not58.3 = icmp eq i32 %i.bk, 0
  br i1 %.not58.3, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.bl = load i64, ptr @enter_repo.used_path, align 8, !tbaa !24
  %spec.select.i75.3 = tail call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 1)
  %i.bm = icmp ugt i64 %i.be, %spec.select.i75.3
  br i1 %i.bm, label %bb.q, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !22
end_hunk_0
