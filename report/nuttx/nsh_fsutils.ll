Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/nsh_fsutils?download=true
begin_hunk_0_@nsh_readfile:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @__errno() #15
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 (ptr, ptr, ...) %i.d(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %i.f) #15 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1
  %i.h = add i64 %4, -1
  %.not42 = icmp eq i64 %4, 0
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.036 = phi ptr [ %3, %bb.c ], [ %.137, %.thread ] ; 3 uses
  %.034 = phi i64 [ %i.h, %bb.c ], [ %.135, %.thread ] ; 4 uses
  %.033 = phi i64 [ 0, %bb.c ], [ %.1, %.thread ] ; 2 uses
  %i.i = tail call i64 @read(i32 noundef %i.a, ptr noundef %.036, i64 noundef %.034) #15 ; 6 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__errno() #15
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @__assert(ptr noundef nonnull @.str.6, i32 noundef 329, ptr noundef nonnull @.str.7) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not41 = icmp eq i32 %i.l, 4
  br i1 %.not41, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @__errno() #15
  %i.q = load i32, ptr %i.p, align 4
  %i.r = tail call i32 (ptr, ptr, ...) %i.o(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %i.q) #15 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.i, 0
  br i1 %i.s, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp sgt i64 %i.i, %.034
  br i1 %.not, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  tail call void @__assert(ptr noundef nonnull @.str.6, i32 noundef 354, ptr noundef nonnull @.str.8) #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = add nuw nsw i64 %i.i, %.033              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.t
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.036, i64 %i.i
  %i.w = sub nuw nsw i64 %.034, %i.i
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.l
  %.137 = phi ptr [ %i.v, %bb.l ], [ %.036, %bb.g ]
  %.135 = phi i64 [ %i.w, %bb.l ], [ %.034, %bb.g ]
  %.1 = phi i64 [ %i.t, %bb.l ], [ %.033, %bb.g ]
  br i1 %.not42, label %.loopexit, label %bb.d, !llvm.loop !9

.loopexit:                                        ; preds = %bb.i, %.thread, %bb.h
  %.032 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %.thread ]
  %i.x = tail call i32 @close(i32 noundef %i.a) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.b
  %.038 = phi i32 [ -1, %bb.b ], [ %.032, %.loopexit ]
  ret i32 %.038
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @nsh_writefile(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %4, i32 noundef 524289) #15 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef %4, ptr noundef nonnull @.str, i64 noundef 5) #16
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, ptr, ...) %i.f(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %4) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @__errno() #15
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 (ptr, ptr, ...) %i.i(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %i.k) #15 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.m = tail call i64 @write(i32 noundef %i.a, ptr noundef %2, i64 noundef %3) #15
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @__errno() #15
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call i32 (ptr, ptr, ...) %i.q(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %i.s) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call i32 @close(i32 noundef %i.a) #15 ; 0 uses
  %i.v = icmp slt i32 %i.n, 1
  %i.w = sext i1 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ %i.w, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree noredzone optsize
declare dso_local noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @nsh_foreach_direntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @opendir(ptr noundef %2) #16 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull @.str, i64 noundef 5) #16
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, ptr, ...) %i.f(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %2) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @__errno() #15
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 (ptr, ptr, ...) %i.i(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %i.k) #15 ; 0 uses
  br label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.e
  %i.m = tail call ptr @readdir(ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.o = tail call i32 %3(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.m, ptr noundef %4) #15
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %select.unfold, label %.preheader

select.unfold:                                    ; preds = %bb.e, %.preheader
  %.1.ph = phi i32 [ 0, %.preheader ], [ -1, %bb.e ]
  %i.q = tail call i32 @closedir(ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %bb.d
  %.021 = phi i32 [ -1, %bb.d ], [ %.1.ph, %select.unfold ]
  ret i32 %.021
}

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: noredzone optsize
declare dso_local ptr @readdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @nsh_trimdir(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #16
  %i.b = trunc i64 %i.a to i32
  %.06 = add i32 %i.b, -1                         ; 2 uses
  %i.c = icmp sgt i32 %.06, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = zext nneg i32 %.06 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.d, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.g = icmp sgt i64 %indvars.iv, 1
  br i1 %i.g, label %.lr.ph, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #11

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef ptr @nsh_trimspaces(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not17 = icmp eq i8 %i.a, 0
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  %.01318 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @isspace(i32 noundef %i.c) #19
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01318, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !12

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.013.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ], [ %.01318, %.lr.ph ] ; 3 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull %.013.lcssa) #16
  %i.h = trunc i64 %i.g to i32
  %.021 = add i32 %i.h, -1                        ; 2 uses
  %i.i = icmp sgt i32 %.021, -1
  br i1 %i.i, label %.lr.ph23.preheader, label %.critedge2

.lr.ph23.preheader:                               ; preds = %.critedge
  %i.j = zext nneg i32 %.021 to i64
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.j, %.lr.ph23.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 %indvars.iv ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.l to i32
  %i.n = tail call i32 @isspace(i32 noundef %i.m) #19
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.lr.ph23
  store i8 0, ptr %i.k, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.o = icmp sgt i64 %indvars.iv, 0
  br i1 %i.o, label %.lr.ph23, label %.critedge2, !llvm.loop !13

.critedge2:                                       ; preds = %.lr.ph23, %bb.c, %.critedge
  ret ptr %.013.lcssa
}

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn memory(read)
declare dso_local i32 @isspace(i32 noundef) local_unnamed_addr #12

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local ptr @nsh_getdirpath(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull @.str.10) #16
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef %2) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef %2) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call ptr @lib_realpath(ptr noundef nonnull %i.f, ptr noundef null, i1 noundef zeroext true) #15
  ret ptr %i.g
}

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: noredzone optsize
declare dso_local ptr @lib_realpath(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i64 @nsh_getpid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.getpid_arg_s, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @nsh_foreach_direntry(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, ptr noundef nonnull @getpid_callback, ptr noundef nonnull %4) #16 ; 0 uses
  %i.g = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal range(i32 -2147483647, -2147483648) i32 @getpid_callback(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @lib_get_tempbuffer(i64 noundef 256) #15 ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno() #15
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sub nsw i32 0, %i.i
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 256, ptr noundef nonnull @.str.14, ptr noundef %1, ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.m = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.f, i32 noundef 524288) #15 ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @lib_put_tempbuffer(ptr noundef nonnull %i.f) #15
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.o = tail call i64 @read(i32 noundef %i.m, ptr noundef nonnull %i.f, i64 noundef 255) #15 ; 2 uses
  %i.p = tail call i32 @close(i32 noundef %i.m) #15 ; 0 uses
  %i.q = and i64 %i.o, 2147483648
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lib_put_tempbuffer(ptr noundef nonnull %i.f) #15
  %i.r = tail call ptr @__errno() #15
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sub nsw i32 0, %i.s
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.u = and i64 %i.o, 2147483647
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %i.w = load ptr, ptr %3, align 8
  %i.x = tail call i64 @strlen(ptr noundef %i.w) #16
  %i.y = load ptr, ptr %3, align 8
  %i.z = shl i64 %i.x, 32
  %i.aa = ashr exact i64 %i.z, 32                 ; 2 uses
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull %i.f, ptr noundef %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.aa) #16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 %i.aa
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = tail call i32 @isspace(i32 noundef %i.af) #19
  %.not32 = icmp ne i32 %i.ag, 0
  %i.ah = icmp eq i8 %i.ae, 0
  %or.cond = or i1 %i.ah, %.not32
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call i32 @atoi(ptr noundef nonnull %i.k) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i64, ptr %i.a, align 8             ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
end_hunk_0
