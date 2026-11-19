Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/mold-wrapper?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0_@execvpe:sub_0
.lr.ph:                                           ; preds = %get_mold_path.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %get_mold_path.exit ]
  %i.n = phi ptr [ %i.q, %.lr.ph ], [ %i.j, %get_mold_path.exit ]
  %i.o = tail call i32 @putenv(ptr noundef nonnull %i.n) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !22
}

; Function Attrs: nofree nounwind uwtable
define internal void @debug_print(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #1 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.9) #11
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %i.b) #12 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = call i32 @vfprintf(ptr noundef %i.c, ptr noundef %0, ptr noundef nonnull %1) #14 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.f = call i32 @fflush(ptr noundef %i.e)       ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_ld(ptr nofree noundef nonnull readonly captures(address) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %.not22 = icmp eq i64 %i.a, 0
  br i1 %.not22, label %sub_0, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp ult ptr %0, %i.d
  br i1 %i.c, label %.lr.ph, label %sub_0, !llvm.loop !23

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.019 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.019, i64 -1 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %.not = icmp eq i8 %i.e, 47
  br i1 %.not, label %.sub_0_crit_edge, label %bb.b, !llvm.loop !23

.sub_0_crit_edge:                                 ; preds = %.lr.ph
  br label %sub_0, !llvm.loop !23

sub_0:                                            ; preds = %bb.b, %.sub_0_crit_edge, %bb.a
  %.0.lcssa = phi ptr [ %.019, %.sub_0_crit_edge ], [ %i.b, %bb.a ], [ %i.d, %bb.b ] ; 7 uses
  %i.f = load i8, ptr %.0.lcssa, align 1
  %.not16 = icmp eq i8 %i.f, 108
  br i1 %.not16, label %sub_1, label %.critedge.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not17 = icmp eq i8 %i.h, 100
  br i1 %.not17, label %.critedge.tail, label %.critedge.tail.thread

.critedge.tail:                                   ; preds = %sub_1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %.critedge.tail.thread

.critedge.tail.thread:                            ; preds = %sub_1, %sub_0, %.critedge.tail
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa, ptr noundef nonnull dereferenceable(7) @.str.11) #15
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.critedge.tail.thread
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa, ptr noundef nonnull dereferenceable(8) @.str.12) #15
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa, ptr noundef nonnull dereferenceable(7) @.str.13) #15
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa, ptr noundef nonnull dereferenceable(8) @.str.14) #15
  %.not15 = icmp eq i32 %i.o, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.critedge.tail.thread, %.critedge.tail
  %i.p = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %.critedge.tail.thread ], [ true, %.critedge.tail ], [ %.not15, %bb.e ]
  ret i1 %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @execve(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @debug_print(ptr noundef nonnull @.str.3, ptr noundef nonnull %0)
  %i.a = tail call fastcc zeroext i1 @is_ld(ptr noundef %0)
  br i1 %i.a, label %bb.b, label %get_mold_path.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.15) #11, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %get_mold_path.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %i.c) #12, !inline_history !0 ; 0 uses
  tail call void @exit(i32 noundef 1) #13, !inline_history !0
  unreachable

get_mold_path.exit:                               ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]
  %i.d = tail call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.4) #11
  %i.e = tail call i32 %i.d(ptr noundef nonnull %.0, ptr noundef nonnull %1, ptr noundef %2) #11
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @execl(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %.promoted.i = load i32, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 16
  %.promoted3.i = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.d = phi ptr [ %.promoted3.i, %bb.a ], [ %i.k, %bb.e ] ; 3 uses
  %i.e = phi i32 [ %.promoted.i, %bb.a ], [ %i.l, %bb.e ] ; 4 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]   ; 2 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  %i.i = add nuw nsw i32 %i.e, 8                  ; 2 uses
  store i32 %i.i, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ]
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.n, null
  %i.o = add nuw nsw i32 %.0.i, 1
  br i1 %.not.i, label %count_args.exit, label %bb.b, !llvm.loop !1

count_args.exit:                                  ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.p = add nuw nsw i32 %.0.i, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = alloca i8, i64 %i.r, align 16            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.promoted = load i32, ptr %3, align 16
  %.promoted6 = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %count_args.exit
  %i.w = phi ptr [ %.promoted6, %count_args.exit ], [ %i.ad, %bb.j ] ; 3 uses
  %i.x = phi i32 [ %.promoted, %count_args.exit ], [ %i.ae, %bb.j ] ; 4 uses
  %.0.i4 = phi i32 [ 1, %count_args.exit ], [ %5, %bb.j ] ; 2 uses
  %i.y = icmp ult i32 %i.x, 41
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = add nuw nsw i32 %i.x, 8                 ; 2 uses
  store i32 %i.ab, ptr %3, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  store ptr %i.ac, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %i.ac, %bb.h ]
  %i.ae = phi i32 [ %i.ab, %bb.g ], [ %i.x, %bb.h ]
  %i.af = phi ptr [ %i.aa, %bb.g ], [ %i.w, %bb.h ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ag, null
  %4 = zext nneg i32 %.0.i4 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %4 ; 2 uses
  br i1 %.not.i4, label %copy_args.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = add nuw nsw i32 %.0.i4, 1
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !16
  br label %bb.f, !llvm.loop !2

copy_args.exit:                                   ; preds = %bb.i
  store ptr %1, ptr %i.s, align 16, !tbaa !16
  store ptr null, ptr %i.ah, align 8, !tbaa !16
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.ai = load ptr, ptr @environ, align 8, !tbaa !19
  call void (ptr, ...) @debug_print(ptr noundef nonnull @.str.3, ptr noundef nonnull %0), !inline_history !21
  %i.aj = call fastcc zeroext i1 @is_ld(ptr noundef nonnull %0), !inline_history !21
  br i1 %i.aj, label %bb.k, label %execve.exit

bb.k:                                             ; preds = %copy_args.exit
  %i.ak = call ptr @getenv(ptr noundef nonnull @.str.15) #11, !inline_history !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.l, label %execve.exit

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %i.al) #12, !inline_history !3 ; 0 uses
  call void @exit(i32 noundef 1) #13, !inline_history !3
  unreachable

execve.exit:                                      ; preds = %copy_args.exit, %bb.k
  %.0.i5 = phi ptr [ %0, %copy_args.exit ], [ %i.ak, %bb.k ]
  %i.am = call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.4) #11, !inline_history !21
  %i.an = call i32 %i.am(ptr noundef nonnull %.0.i5, ptr noundef nonnull %i.s, ptr noundef %i.ai) #11, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind uwtable
define i32 @execlp(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %.promoted.i = load i32, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 16
  %.promoted3.i = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.d = phi ptr [ %.promoted3.i, %bb.a ], [ %i.k, %bb.e ] ; 3 uses
  %i.e = phi i32 [ %.promoted.i, %bb.a ], [ %i.l, %bb.e ] ; 4 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]   ; 2 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  %i.i = add nuw nsw i32 %i.e, 8                  ; 2 uses
  store i32 %i.i, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ]
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.n, null
  %i.o = add nuw nsw i32 %.0.i, 1
  br i1 %.not.i, label %count_args.exit, label %bb.b, !llvm.loop !1

count_args.exit:                                  ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.p = add nuw nsw i32 %.0.i, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = alloca i8, i64 %i.r, align 16            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.promoted = load i32, ptr %3, align 16
  %.promoted5 = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %count_args.exit
  %i.w = phi ptr [ %.promoted5, %count_args.exit ], [ %i.ad, %bb.j ] ; 3 uses
  %i.x = phi i32 [ %.promoted, %count_args.exit ], [ %i.ae, %bb.j ] ; 4 uses
  %.0.i4 = phi i32 [ 1, %count_args.exit ], [ %5, %bb.j ] ; 2 uses
  %i.y = icmp ult i32 %i.x, 41
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = add nuw nsw i32 %i.x, 8                 ; 2 uses
  store i32 %i.ab, ptr %3, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  store ptr %i.ac, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %i.ac, %bb.h ]
  %i.ae = phi i32 [ %i.ab, %bb.g ], [ %i.x, %bb.h ]
  %i.af = phi ptr [ %i.aa, %bb.g ], [ %i.w, %bb.h ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ag, null
  %4 = zext nneg i32 %.0.i4 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %4 ; 2 uses
  br i1 %.not.i4, label %copy_args.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = add nuw nsw i32 %.0.i4, 1
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !16
  br label %bb.f, !llvm.loop !2

copy_args.exit:                                   ; preds = %bb.i
  store ptr %1, ptr %i.s, align 16, !tbaa !16
  store ptr null, ptr %i.ah, align 8, !tbaa !16
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.ai = load ptr, ptr @environ, align 8, !tbaa !19
  %i.aj = call i32 @execvpe(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.ai) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define i32 @execle(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %.promoted.i = load i32, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 16
  %.promoted3.i = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.d = phi ptr [ %.promoted3.i, %bb.a ], [ %i.k, %bb.e ] ; 3 uses
  %i.e = phi i32 [ %.promoted.i, %bb.a ], [ %i.l, %bb.e ] ; 4 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]   ; 2 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  %i.i = add nuw nsw i32 %i.e, 8                  ; 2 uses
  store i32 %i.i, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ]
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.n, null
  %i.o = add nuw nsw i32 %.0.i, 1
  br i1 %.not.i, label %count_args.exit, label %bb.b, !llvm.loop !1

count_args.exit:                                  ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.p = add nuw nsw i32 %.0.i, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = alloca i8, i64 %i.r, align 16            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.promoted = load i32, ptr %3, align 16
  %.promoted7 = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 16             ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %count_args.exit
  %i.w = phi ptr [ %.promoted7, %count_args.exit ], [ %i.ad, %bb.j ] ; 3 uses
  %i.x = phi i32 [ %.promoted, %count_args.exit ], [ %i.ae, %bb.j ] ; 4 uses
  %.0.i5 = phi i32 [ 1, %count_args.exit ], [ %5, %bb.j ] ; 2 uses
  %i.y = icmp ult i32 %i.x, 41
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = add nuw nsw i32 %i.x, 8                 ; 2 uses
  store i32 %i.ab, ptr %3, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  store ptr %i.ac, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %i.ac, %bb.h ] ; 3 uses
  %i.ae = phi i32 [ %i.ab, %bb.g ], [ %i.x, %bb.h ] ; 4 uses
  %i.af = phi ptr [ %i.aa, %bb.g ], [ %i.w, %bb.h ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ag, null
  %4 = zext nneg i32 %.0.i5 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %4 ; 2 uses
  br i1 %.not.i5, label %copy_args.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = add nuw nsw i32 %.0.i5, 1
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !16
  br label %bb.f, !llvm.loop !2

copy_args.exit:                                   ; preds = %bb.i
  store ptr %1, ptr %i.s, align 16, !tbaa !16
  store ptr null, ptr %i.ah, align 8, !tbaa !16
  %i.ai = icmp ult i32 %i.ae, 41
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %copy_args.exit
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.al = add nuw nsw i32 %i.ae, 8
  store i32 %i.al, ptr %3, align 16
  br label %bb.m

bb.l:                                             ; preds = %copy_args.exit
  %i.am = getelementptr i8, ptr %i.ad, i64 8
  store ptr %i.am, ptr %i.t, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.ak, %bb.k ], [ %i.ad, %bb.l ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void (ptr, ...) @debug_print(ptr noundef nonnull @.str.3, ptr noundef nonnull %0), !inline_history !21
  %i.ap = call fastcc zeroext i1 @is_ld(ptr noundef nonnull %0), !inline_history !21
  br i1 %i.ap, label %bb.n, label %execve.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = call ptr @getenv(ptr noundef nonnull @.str.15) #11, !inline_history !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.o, label %execve.exit

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %i.ar) #12, !inline_history !3 ; 0 uses
  call void @exit(i32 noundef 1) #13, !inline_history !3
  unreachable

execve.exit:                                      ; preds = %bb.m, %bb.n
  %.0.i6 = phi ptr [ %0, %bb.m ], [ %i.aq, %bb.n ]
  %i.as = call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.4) #11, !inline_history !21
  %i.at = call i32 %i.as(ptr noundef nonnull %.0.i6, ptr noundef nonnull %i.s, ptr noundef %i.ao) #11, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %i.at
}

; Function Attrs: nounwind uwtable
define i32 @execv(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @environ, align 8, !tbaa !19
  tail call void (ptr, ...) @debug_print(ptr noundef nonnull @.str.3, ptr noundef nonnull %0), !inline_history !21
  %i.b = tail call fastcc zeroext i1 @is_ld(ptr noundef nonnull %0), !inline_history !21
  br i1 %i.b, label %bb.b, label %execve.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.15) #11, !inline_history !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %execve.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %i.d) #12, !inline_history !3 ; 0 uses
  tail call void @exit(i32 noundef 1) #13, !inline_history !3
  unreachable

execve.exit:                                      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = tail call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.4) #11, !inline_history !21
  %i.f = tail call i32 %i.e(ptr noundef nonnull %.0.i, ptr noundef nonnull %1, ptr noundef %i.a) #11, !inline_history !21
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define i32 @execvp(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @environ, align 8, !tbaa !19
  %i.b = tail call i32 @execvpe(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) #11
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @posix_spawn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @debug_print(ptr noundef nonnull @.str.5, ptr noundef nonnull %1)
  %i.a = tail call fastcc zeroext i1 @is_ld(ptr noundef %1)
  br i1 %i.a, label %bb.b, label %get_mold_path.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.15) #11, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %get_mold_path.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %i.c) #12, !inline_history !0 ; 0 uses
  tail call void @exit(i32 noundef 1) #13, !inline_history !0
  unreachable

get_mold_path.exit:                               ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.b, %bb.b ]
  %i.d = tail call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.6) #11
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #11
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @posix_spawnp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @debug_print(ptr noundef nonnull @.str.7, ptr noundef nonnull %1)
  %i.a = tail call fastcc zeroext i1 @is_ld(ptr noundef %1)
  br i1 %i.a, label %bb.b, label %get_mold_path.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.15) #11, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %get_mold_path.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %i.c) #12, !inline_history !0 ; 0 uses
  tail call void @exit(i32 noundef 1) #13, !inline_history !0
  unreachable

get_mold_path.exit:                               ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.b, %bb.b ]
  %i.d = tail call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.8) #11
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #11
  ret i32 %i.e
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{ptr @execve, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{ptr @execve}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!8, !8, i64 0}
end_hunk_0
