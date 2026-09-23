Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tcsetattr
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare ptr @__sysv_signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define internal range(i32 0, 2) i32 @decode_interrupt_cb(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  %i.a = load volatile i32, ptr @received_nb_signals, align 4, !tbaa !13
  %i.b = load atomic i32, ptr @transcode_init_done seq_cst, align 4
  %i.c = icmp sgt i32 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ost_iter(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = add nsw i32 %i.f, 1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = load i32, ptr @nb_output_files, align 4, !tbaa !13 ; 3 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread
  %i.l = load ptr, ptr @output_files, align 8, !tbaa !39 ; 2 uses
  %i.m = sext i32 %i.h to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41
  %.not18.peel = icmp slt i32 %i.i, %i.q
  br i1 %.not18.peel, label %.thread19, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next.peel = add nsw i64 %i.m, 1     ; 2 uses
  %lftr.wideiv.peel = trunc nsw i64 %indvars.iv.next.peel to i32
  %exitcond.peel.not = icmp eq i32 %i.j, %lftr.wideiv.peel
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

bb.d:                                             ; preds = %.peel.next
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.j, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !0

.peel.next:                                       ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next.peel, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !41
  %.not18 = icmp sgt i32 %i.u, 0
  br i1 %.not18, label %.thread19, label %bb.d

.thread19:                                        ; preds = %.peel.next, %.lr.ph
  %.01224.lcssa = phi i32 [ %i.i, %.lr.ph ], [ 0, %.peel.next ]
  %.lcssa = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %.peel.next ]
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = sext i32 %.01224.lcssa to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.thread, %.thread19
  %.2 = phi ptr [ %i.z, %.thread19 ], [ null, %.thread ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ist_iter(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = add nsw i32 %i.f, 1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = load i32, ptr @nb_input_files, align 4, !tbaa !13 ; 3 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread
  %i.l = load ptr, ptr @input_files, align 8, !tbaa !61 ; 2 uses
  %i.m = sext i32 %i.h to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !63
  %.not18.peel = icmp slt i32 %i.i, %i.q
  br i1 %.not18.peel, label %.thread19, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next.peel = add nsw i64 %i.m, 1     ; 2 uses
  %lftr.wideiv.peel = trunc nsw i64 %indvars.iv.next.peel to i32
  %exitcond.peel.not = icmp eq i32 %i.j, %lftr.wideiv.peel
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

bb.d:                                             ; preds = %.peel.next
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.j, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !1

.peel.next:                                       ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next.peel, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !63
  %.not18 = icmp sgt i32 %i.u, 0
  br i1 %.not18, label %.thread19, label %bb.d

.thread19:                                        ; preds = %.peel.next, %.lr.ph
  %.01224.lcssa = phi i32 [ %i.i, %.lr.ph ], [ 0, %.peel.next ]
  %.lcssa = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %.peel.next ]
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = sext i32 %.01224.lcssa to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.thread, %.thread19
  %.2 = phi ptr [ %i.z, %.thread19 ], [ null, %.thread ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @frame_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = tail call fastcc i32 @frame_data_ensure(ptr noundef nonnull %i.a, i32 noundef 1)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @frame_data_ensure(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !97     ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !97
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not38 = icmp eq i32 %1, 0
  br i1 %.not38, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @av_buffer_is_writable(ptr noundef nonnull %i.c) #17
  %.not39 = icmp eq i32 %i.d, 0
  br i1 %.not39, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = tail call noalias ptr @av_mallocz(i64 noundef 128) #17 ; 13 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !99
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @av_buffer_create(ptr noundef nonnull %i.e, i64 noundef 128, ptr noundef nonnull @frame_data_free, ptr noundef null, i32 noundef 0) #17 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !97
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #17
  call void @av_freep(ptr noundef nonnull %i.b) #17
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  br i1 %.not, label %.loopexit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %.not43 = icmp eq ptr %i.m, null
  br i1 %.not43, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call ptr @avcodec_parameters_alloc() #17 ; 3 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !102
  %.not44 = icmp eq ptr %i.n, null
  br i1 %.not44, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.p = tail call i32 @avcodec_parameters_copy(ptr noundef nonnull %i.n, ptr noundef %i.o) #17 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.r = phi i32 [ %i.p, %bb.j ], [ -12, %bb.i ]
  tail call void @av_buffer_unref(ptr noundef nonnull %0) #17
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #17
  br label %.sink.split

.critedge:                                        ; preds = %bb.j, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.t = load i32, ptr %i.s, align 8, !tbaa !103  ; 3 uses
  %.not45 = icmp eq i32 %i.t, 0
  br i1 %.not45, label %.thread46, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = icmp sgt i32 %i.t, 0
  br i1 %i.w, label %.lr.ph.preheader.i, label %.thread46

.lr.ph.preheader.i:                               ; preds = %bb.k
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread46, label %.lr.ph.i, !llvm.loop !96

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = tail call i32 @av_frame_side_data_clone(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef %i.y, i32 noundef 0) #17 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  tail call void @av_buffer_unref(ptr noundef nonnull %0) #17
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #17
  br label %.sink.split

.thread46:                                        ; preds = %bb.l, %bb.k, %.critedge
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #17
  br label %.sink.split

.loopexit.loopexit:                               ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 -1, ptr %i.ab, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 -9223372036854775808, ptr %i.ac, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.ad, align 8, !tbaa !77
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 -9223372036854775808, ptr %2, align 8, !tbaa !77
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 -9223372036854775808, ptr %3, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 -9223372036854775808, ptr %i.ae, align 8, !tbaa !77
  br label %.sink.split

.sink.split:                                      ; preds = %.thread46, %.loopexit.loopexit, %.thread, %bb.m, %bb.f, %bb.d
  %.7.ph = phi i32 [ -12, %bb.d ], [ %i.r, %.thread ], [ %i.z, %bb.m ], [ -12, %bb.f ], [ 0, %.loopexit.loopexit ], [ 0, %.thread46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %.7 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %.7.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define ptr @frame_data_c(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = tail call fastcc i32 @frame_data_ensure(ptr noundef nonnull %i.a, i32 noundef 0)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @packet_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call fastcc i32 @frame_data_ensure(ptr noundef nonnull %i.a, i32 noundef 1)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @packet_data_c(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call fastcc i32 @frame_data_ensure(ptr noundef nonnull %i.a, i32 noundef 0)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @check_avoptions_used(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = tail call ptr @avcodec_get_class() #17
  store ptr %i.d, ptr %i.a, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = tail call ptr @avformat_get_class() #17
  store ptr %i.e, ptr %i.b, align 8, !tbaa !110
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.f = select i1 %.not, i32 1, i32 2
  %i.g = tail call ptr @av_dict_iterate(ptr noundef %0, ptr noundef null) #17 ; 2 uses
  %.not3144 = icmp eq ptr %i.g, null
  br i1 %.not3144, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.h = phi ptr [ %i.aa, %bb.i ], [ %i.g, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.j = call ptr @av_dict_get(ptr noundef %1, ptr noundef %i.i, ptr noundef null, i32 noundef 0) #17
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %bb.b, label %bb.i, !llvm.loop !109

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.l = call noalias ptr @av_strdup(ptr noundef %i.k) #17 ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !113
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 58) #19 ; 2 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.m, align 1, !tbaa !11
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !113
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %.pre, %bb.d ], [ %i.l, %bb.c ]
  %i.o = call ptr @av_opt_find(ptr noundef nonnull %i.a, ptr noundef %i.n, ptr noundef null, i32 noundef 0, i32 noundef 3) #17 ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.q = call ptr @av_opt_find(ptr noundef nonnull %i.b, ptr noundef %i.p, ptr noundef null, i32 noundef 0, i32 noundef 3) #17
  call void @av_freep(ptr noundef nonnull %i.c) #17
  %i.r = icmp eq ptr %i.o, null
  %i.s = icmp ne ptr %i.q, null
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.i, label %bb.f, !llvm.loop !109

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !115
  %i.v = and i32 %i.u, %i.f
  %.not35 = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116  ; 2 uses
  %.not36 = icmp eq ptr %i.y, null
  %spec.select = select i1 %.not36, ptr @.str.1, ptr %i.y ; 2 uses
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = select i1 %.not, ptr @.str.4, ptr @.str.3
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %i.w, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.z) #17
  br label %.thread

bb.h:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 24, ptr noundef nonnull @.str.5, ptr noundef %i.w, ptr noundef nonnull %spec.select) #17
  br label %bb.i

.thread:                                          ; preds = %bb.b, %bb.g
  %.1.ph = phi i32 [ -22, %bb.g ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.loopexit

bb.i:                                             ; preds = %bb.e, %.lr.ph, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.aa = call ptr @av_dict_iterate(ptr noundef %0, ptr noundef nonnull %i.h) #17 ; 2 uses
  %.not31 = icmp eq ptr %i.aa, null
  br i1 %.not31, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.a, %.thread
  %.2 = phi i32 [ %.1.ph, %.thread ], [ 0, %bb.a ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.2
}

declare ptr @avcodec_get_class() local_unnamed_addr #1

declare ptr @avformat_get_class() local_unnamed_addr #1

declare ptr @av_dict_iterate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_dict_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @av_opt_find(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @update_benchmark(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rusage, align 8             ; 7 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = load i32, ptr @do_benchmark_all, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @av_gettime_relative() #17, !noalias !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !119
  %i.d = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #17, !noalias !119 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !84, !noalias !119
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85, !noalias !119
end_hunk_0
