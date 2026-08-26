Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_others?download=true
inline.NumInlined: 21
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_calloc:bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = mul i64 %1, %0
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.39, i64 noundef %i.c)
  tail call void @perror(ptr noundef nonnull @.str.40) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_md5file(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.33) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.34, ptr noundef %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @cli_md5stream(ptr noundef nonnull %i.a, ptr noundef null)
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_realloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, -184549377
  %or.cond = icmp ult i64 %i.a, -184549376
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.41, i64 noundef %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #29 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.42, i64 noundef %1)
  tail call void @perror(ptr noundef nonnull @.str.43) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_realloc2(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, -184549377
  %or.cond = icmp ult i64 %i.a, -184549376
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.44, i64 noundef %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #29 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.45, i64 noundef %1)
  tail call void @perror(ptr noundef nonnull @.str.43) #25
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @cli_strdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.46)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull %0) #24 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.47, i64 noundef %i.c)
  tail call void @perror(ptr noundef nonnull @.str.48) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -1) i32 @cli_rndnum(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #24 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call i64 @clock() #24
  %i.e = add nsw i64 %i.d, %i.c
  %i.f = trunc i64 %i.e to i32
  tail call void @srand(i32 noundef %i.f) #24
  %i.g = tail call i32 @rand() #24
  %i.h = urem i32 %i.g, %0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @cl_settempdir(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %cli_dbgmsg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30 ; 2 uses
  %i.b = add i64 %i.a, 8                          ; 3 uses
  %i.c = add i64 %i.a, -184549369
  %or.cond.i = icmp ult i64 %i.c, -184549376
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35, i64 noundef %i.b)
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.b) #26 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %cli_malloc.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.b)
  tail call void @perror(ptr noundef nonnull @.str.37) #25
  unreachable

cli_malloc.exit:                                  ; preds = %bb.d
  %i.e = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %0) #24 ; 0 uses
  %i.f = tail call i32 @putenv(ptr noundef nonnull %i.d) #24
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %cli_malloc.exit
  %i.g = load i8, ptr @cli_debug_flag, align 1, !tbaa !8
  %.not.i7 = icmp eq i8 %i.g, 0
  br i1 %.not.i7, label %cli_dbgmsg.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.50) ; 0 uses
  br label %cli_dbgmsg.exit

bb.h:                                             ; preds = %cli_malloc.exit
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.51)
  br label %cli_dbgmsg.exit

cli_dbgmsg.exit:                                  ; preds = %bb.g, %bb.f, %bb.h, %bb.a
  %i.i = trunc i16 %1 to i8
  store i8 %i.i, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_gentemp(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 21 uses
  %1 = alloca %struct.cli_md5_ctx, align 4        ; 6 uses
  %2 = alloca %struct.timeval, align 8            ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.52) #24 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %spec.store.select = select i1 %i.d, ptr @.str.53, ptr %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.017 = phi ptr [ %spec.store.select, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.017) #30
  %i.f = add i64 %i.e, 41                         ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #28 ; 5 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %cli_calloc.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.39, i64 noundef %i.f)
  tail call void @perror(ptr noundef nonnull @.str.40) #25
  %i.h = load i8, ptr @cli_debug_flag, align 1, !tbaa !8
  %.not.i24 = icmp eq i8 %i.h, 0
  br i1 %.not.i24, label %cli_dbgmsg.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.54) ; 0 uses
  br label %cli_dbgmsg.exit

cli_calloc.exit:                                  ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @name_salt, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %cli_calloc.exit, %bb.f
  %indvars.iv = phi i64 [ 16, %cli_calloc.exit ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.k = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #24 ; 0 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !16
  %i.m = tail call i64 @clock() #24
  %i.n = add nsw i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  tail call void @srand(i32 noundef %i.o) #24
  %i.p = tail call i32 @rand() #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %bb.g, label %bb.f, !llvm.loop !19

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @cli_md5_init(ptr noundef nonnull %1) #24
  call void @cli_md5_update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 48) #24
  call void @cli_md5_final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @name_salt, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.s = call noalias dereferenceable_or_null(33) ptr @calloc(i64 noundef 33, i64 noundef 1) #28 ; 19 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.39, i64 noundef 33)
  call void @perror(ptr noundef nonnull @.str.40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @free(ptr noundef nonnull %i.g) #24
  %i.t = load i8, ptr @cli_debug_flag, align 1, !tbaa !8
  %.not.i25 = icmp eq i8 %i.t, 0
  br i1 %.not.i25, label %cli_dbgmsg.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.54) ; 0 uses
  br label %cli_dbgmsg.exit

bb.j:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.a, align 16, !tbaa !8
  %i.w = zext i8 %i.v to i32
  %i.x = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.w) #24 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i32
  %i.ac = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ab) #24 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !8
  %i.ag = zext i8 %i.af to i32
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ag) #24 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = zext i8 %i.ak to i32
  %i.am = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.al) #24 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !8
  %i.aq = zext i8 %i.ap to i32
  %i.ar = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.aq) #24 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.av) #24 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !8
  %i.ba = zext i8 %i.az to i32
  %i.bb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ba) #24 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bc, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.bf) #24 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !8
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.bk) #24 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = zext i8 %i.bo to i32
  %i.bq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.bp) #24 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !8
  %i.bu = zext i8 %i.bt to i32
  %i.bv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.bu) #24 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = zext i8 %i.by to i32
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.bz) #24 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ce) #24 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i32
  %i.ck = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.cj) #24 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !8
  %i.co = zext i8 %i.cn to i32
  %i.cp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.co) #24 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = zext i8 %i.cs to i32
  %i.cu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ct) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %.017) #24 ; 0 uses
  %i.cw = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 32) #24 ; 0 uses
  call void @free(ptr noundef nonnull %i.s) #24
  br label %cli_dbgmsg.exit

cli_dbgmsg.exit:                                  ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.j
  %.018 = phi ptr [ %i.g, %bb.j ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret ptr %.018
}
end_hunk_0
