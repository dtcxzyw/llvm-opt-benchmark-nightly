Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_port?download=true
inline.NumInlined: 33
begin_hunk_0_@wc_FileLoad:bb.a
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !12
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str) ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 2)
  %.not37 = icmp eq i32 %i.e, 0
  br i1 %.not37, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.d) ; 4 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 0)
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.not39 = icmp eq i64 %i.f, 0
  br i1 %.not39, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.f, ptr %2, align 8, !tbaa !12
  %i.i = tail call ptr @wolfSSL_Malloc(i64 noundef %i.f) #19 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !9
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i64, ptr %2, align 8, !tbaa !12
  %i.l = tail call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %i.d)
  %i.m = load i64, ptr %2, align 8, !tbaa !12
  %i.n = icmp ne i64 %i.l, %i.m
  %i.o = sext i1 %i.n to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.ph = phi i32 [ -244, %bb.e ], [ -244, %bb.d ], [ -244, %bb.c ], [ -125, %bb.g ], [ %i.o, %bb.h ], [ -132, %bb.f ]
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -244, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define range(i32 -244, 1) i32 @wc_FileExists(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.ReadDirCtx, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = and i32 %i.e, 61440
  %i.g = icmp ne i32 %i.f, 32768
  %. = sext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -244, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -244, 1) i32 @wc_ReadDirFirst(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ReadDirCtx, align 8         ; 10 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not44 = icmp eq ptr %0, null
  br i1 %.not44, label %wc_ReadDirClose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, i8 0, i64 424, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %wc_ReadDirClose.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = tail call noalias ptr @opendir(ptr noundef nonnull %1) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %wc_ReadDirClose.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.g = tail call ptr @readdir(ptr noundef nonnull %i.d) #19 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !21
  %.not4563 = icmp eq ptr %i.g, null
  br i1 %.not4563, label %.thread59, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.o = phi ptr [ %i.v, %bb.f ], [ %i.g, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #20 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %i.r, %i.c
  %i.t = icmp sgt i32 %i.s, 258
  br i1 %i.t, label %.thread59, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.h
  %.1.us80 = phi i32 [ -244, %.thread ], [ -1, %bb.h ]
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.v = tail call ptr @readdir(ptr noundef %i.u) #19 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !21
  %.not45.us = icmp eq ptr %i.v, null
  br i1 %.not45.us, label %.thread59, label %.lr.ph.split.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef %i.j) #19 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !22
  %i.x = load ptr, ptr %0, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %sext46.us = shl i64 %i.q, 32
  %i.z = ashr exact i64 %sext46.us, 32
  %i.aa = add nsw i64 %i.z, 1
  %i.ab = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.y, i64 noundef %i.aa) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.ac = call i32 @stat(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.m) #19
  %.not.i.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !14
  %i.ae = and i32 %i.ad, 61440
  %.not84 = icmp eq i32 %i.ae, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not84, label %wc_ReadDirClose.exit, label %bb.f

bb.i:                                             ; preds = %wc_FileExists.exit, %wc_FileExists.exit.thread
  %.1 = phi i32 [ -1, %wc_FileExists.exit ], [ -244, %wc_FileExists.exit.thread ]
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.ag = tail call ptr @readdir(ptr noundef %i.af) #19 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !21
  %.not45 = icmp eq ptr %i.ag, null
  br i1 %.not45, label %.thread59, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.ah = phi ptr [ %i.ag, %bb.i ], [ %i.g, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 19
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #20 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, %i.c
  %i.am = icmp sgt i32 %i.al, 258
  br i1 %i.am, label %.thread59, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.an = tail call ptr @strncpy(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef %i.j) #19 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !22
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 19
  %sext46 = shl i64 %i.aj, 32
  %i.aq = ashr exact i64 %sext46, 32
  %i.ar = add nsw i64 %i.aq, 1
  %i.as = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ap, i64 noundef %i.ar) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.at = call i32 @stat(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.m) #19
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %wc_FileExists.exit, label %wc_FileExists.exit.thread

wc_FileExists.exit.thread:                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.i

wc_FileExists.exit:                               ; preds = %bb.j
  %i.au = load i32, ptr %i.n, align 8, !tbaa !14
  %i.av = and i32 %i.au, 61440
  %.not83 = icmp eq i32 %i.av, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not83, label %.thread56, label %bb.i

.thread56:                                        ; preds = %wc_FileExists.exit
  store ptr %i.h, ptr %2, align 8, !tbaa !9
  br label %wc_ReadDirClose.exit

.thread59:                                        ; preds = %bb.i, %.lr.ph.split, %bb.f, %.lr.ph.split.us, %.preheader
  %.2 = phi i32 [ -1, %.preheader ], [ -244, %.lr.ph.split.us ], [ %.1.us80, %bb.f ], [ -244, %.lr.ph.split ], [ %.1, %bb.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %.not.i49 = icmp eq ptr %i.aw, null
  br i1 %.not.i49, label %wc_ReadDirClose.exit, label %bb.k

bb.k:                                             ; preds = %.thread59
  %i.ax = tail call i32 @closedir(ptr noundef nonnull %i.aw) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !20
  br label %wc_ReadDirClose.exit

wc_ReadDirClose.exit:                             ; preds = %bb.h, %bb.c, %bb.k, %.thread59, %.thread56, %bb.e, %bb.d
  %.235 = phi i32 [ 0, %.thread56 ], [ -173, %bb.d ], [ -173, %bb.c ], [ -244, %bb.e ], [ %.2, %bb.k ], [ %.2, %.thread59 ], [ 0, %bb.h ]
  ret i32 %.235
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #5

declare ptr @readdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @wc_ReadDirClose(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  store ptr null, ptr %i.b, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -244, 1) i32 @wc_ReadDirNext(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ReadDirCtx, align 8         ; 10 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %wc_ReadDirClose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(261) %i.c, i8 0, i64 261, i1 false)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = tail call ptr @readdir(ptr noundef %i.g) #19 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %.not3956 = icmp eq ptr %i.h, null
  br i1 %.not3956, label %.thread51, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %sext = shl i64 %i.d, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %i.o = phi ptr [ %i.v, %bb.e ], [ %i.h, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #20 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %i.r, %i.e
  %i.t = icmp sgt i32 %i.s, 258
  br i1 %i.t, label %.thread51, label %bb.f

bb.e:                                             ; preds = %.thread70, %bb.g
  %.1.us73 = phi i32 [ -244, %.thread70 ], [ -1, %bb.g ]
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.v = tail call ptr @readdir(ptr noundef %i.u) #19 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !21
  %.not39.us = icmp eq ptr %i.v, null
  br i1 %.not39.us, label %.thread51, label %.lr.ph.split.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %i.j) #19 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !22
  %i.x = load ptr, ptr %0, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %sext40.us = shl i64 %i.q, 32
  %i.z = ashr exact i64 %sext40.us, 32
  %i.aa = add nsw i64 %i.z, 1
  %i.ab = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.y, i64 noundef %i.aa) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.ac = call i32 @stat(ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.m) #19
  %.not.i.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us, label %bb.g, label %.thread70

.thread70:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !14
  %i.ae = and i32 %i.ad, 61440
  %.not77 = icmp eq i32 %i.ae, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not77, label %wc_ReadDirClose.exit, label %bb.e

bb.h:                                             ; preds = %wc_FileExists.exit, %wc_FileExists.exit.thread
  %.1 = phi i32 [ -1, %wc_FileExists.exit ], [ -244, %wc_FileExists.exit.thread ]
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ag = tail call ptr @readdir(ptr noundef %i.af) #19 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !21
  %.not39 = icmp eq ptr %i.ag, null
  br i1 %.not39, label %.thread51, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.h ], [ %i.h, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 19
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #20 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, %i.e
  %i.am = icmp sgt i32 %i.al, 258
  br i1 %i.am, label %.thread51, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.an = tail call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %i.j) #19 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !22
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 19
  %sext40 = shl i64 %i.aj, 32
  %i.aq = ashr exact i64 %sext40, 32
  %i.ar = add nsw i64 %i.aq, 1
  %i.as = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ap, i64 noundef %i.ar) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.at = call i32 @stat(ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.m) #19
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %wc_FileExists.exit, label %wc_FileExists.exit.thread

wc_FileExists.exit.thread:                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

wc_FileExists.exit:                               ; preds = %bb.i
  %i.au = load i32, ptr %i.n, align 8, !tbaa !14
  %i.av = and i32 %i.au, 61440
  %.not76 = icmp eq i32 %i.av, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not76, label %.thread, label %bb.h

.thread:                                          ; preds = %wc_FileExists.exit
  store ptr %i.c, ptr %2, align 8, !tbaa !9
  br label %wc_ReadDirClose.exit

.thread51:                                        ; preds = %bb.h, %.lr.ph.split, %bb.e, %.lr.ph.split.us, %bb.d
  %.2 = phi i32 [ -1, %bb.d ], [ -244, %.lr.ph.split.us ], [ %.1.us73, %bb.e ], [ -244, %.lr.ph.split ], [ %.1, %bb.h ] ; 2 uses
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %.not.i43 = icmp eq ptr %i.aw, null
  br i1 %.not.i43, label %wc_ReadDirClose.exit, label %bb.j

bb.j:                                             ; preds = %.thread51
  %i.ax = tail call i32 @closedir(ptr noundef nonnull %i.aw) ; 0 uses
  store ptr null, ptr %i.f, align 8, !tbaa !20
  br label %wc_ReadDirClose.exit

wc_ReadDirClose.exit:                             ; preds = %bb.g, %bb.j, %.thread51, %.thread, %bb.c
  %.231 = phi i32 [ 0, %.thread ], [ %.2, %bb.j ], [ -173, %bb.c ], [ %.2, %.thread51 ], [ 0, %bb.g ]
  ret i32 %.231
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @wc_InitAndAllocMutex() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 40) #19 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.a, ptr noundef null) #19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_InitMutex(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #19
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -106
  ret i32 %.
}

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @wc_strtok(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.047 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 5 uses
  %i.d = icmp eq ptr %.047, null
  br i1 %i.d, label %.thread58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %.047, align 1, !tbaa !22   ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread58, label %.preheader62.lr.ph

.preheader62.lr.ph:                               ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !22      ; 2 uses
  %.not5368 = icmp eq i8 %i.g, 0
  br i1 %.not5368, label %.preheader.preheader, label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %bb.g
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.g ], [ 0, %.preheader62.lr.ph ] ; 2 uses
  %i.h = phi i8 [ %i.p, %bb.g ], [ %i.e, %.preheader62.lr.ph ] ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22    ; 2 uses
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %..preheader61_crit_edge, label %bb.f, !llvm.loop !23

..preheader61_crit_edge:                          ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv84
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %..preheader61_crit_edge, %.preheader62.lr.ph
  %i.l = phi i8 [ %i.h, %..preheader61_crit_edge ], [ %i.e, %.preheader62.lr.ph ]
  %.lcssa67 = phi ptr [ %i.k, %..preheader61_crit_edge ], [ %.047, %.preheader62.lr.ph ] ; 5 uses
  br label %.preheader

bb.f:                                             ; preds = %.preheader62, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader62 ], [ %indvars.iv.next, %bb.e ]
  %i.m = phi i8 [ %i.g, %.preheader62 ], [ %i.j, %bb.e ]
  %i.n = icmp eq i8 %i.m, %i.h
  br i1 %i.n, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv.next85
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22    ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %.thread58, label %.preheader62, !llvm.loop !25

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa67, i64 %indvars.iv.next90
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22    ; 2 uses
  %.not55 = icmp eq i8 %i.r, 0
  br i1 %.not55, label %.thread59.loopexit, label %.preheader, !llvm.loop !26

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %indvars.iv89 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next90, %bb.h ] ; 2 uses
  %i.s = phi i8 [ %i.l, %.preheader.preheader ], [ %i.r, %bb.h ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv86
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22    ; 2 uses
  %.not56 = icmp eq i8 %i.u, 0
  %i.v = icmp eq i8 %i.u, %i.s                    ; 2 uses
  %or.cond60 = or i1 %.not56, %i.v
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br i1 %or.cond60, label %bb.j, label %bb.i, !llvm.loop !27

bb.j:                                             ; preds = %bb.i
  br i1 %i.v, label %bb.k, label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa67, i64 %indvars.iv89 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !22
  br label %.thread59

.thread59.loopexit:                               ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa67, i64 %indvars.iv.next90
  br label %.thread59

.thread59:                                        ; preds = %.thread59.loopexit, %bb.k
  %.148 = phi ptr [ %i.x, %bb.k ], [ %i.y, %.thread59.loopexit ]
  br i1 %i.b, label %bb.l, label %.thread58

bb.l:                                             ; preds = %.thread59
  store ptr %.148, ptr %2, align 8, !tbaa !9
  br label %.thread58

.thread58:                                        ; preds = %bb.g, %.thread59, %bb.l, %bb.c, %bb.d
  %.046 = phi ptr [ %.lcssa67, %.thread59 ], [ null, %bb.c ], [ null, %bb.d ], [ %.lcssa67, %bb.l ], [ null, %bb.g ]
  ret ptr %.046
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @wc_strsep(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  %i.d = load i8, ptr %i.b, align 1, !tbaa !22    ; 2 uses
  %.not28 = icmp eq i8 %i.d, 0
  br i1 %.not28, label %.sink.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader24
  %i.e = load i8, ptr %1, align 1, !tbaa !22      ; 2 uses
  %.not2326 = icmp eq i8 %i.e, 0
  br i1 %.not2326, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i8 [ %i.m, %._crit_edge ], [ %i.d, %.preheader.lr.ph ]
  %.01829 = phi ptr [ %i.l, %._crit_edge ], [ %i.b, %.preheader.lr.ph ] ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !22    ; 2 uses
  %.not23 = icmp eq i8 %i.h, 0
  br i1 %.not23, label %._crit_edge, label %bb.d, !llvm.loop !28

bb.d:                                             ; preds = %.preheader, %bb.c
  %i.i = phi i8 [ %i.e, %.preheader ], [ %i.h, %bb.c ]
  %.027 = phi ptr [ %1, %.preheader ], [ %i.g, %bb.c ]
end_hunk_0
