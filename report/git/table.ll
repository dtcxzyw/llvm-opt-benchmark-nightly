Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/table?download=true
inline.NumInlined: 49
inline.NumDeleted: 17
begin_hunk_0_@reftable_table_refs_for:bb.a
  %.not6.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not6.i.i.i, label %bb.s, label %table_iter_close.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @block_source_close(ptr noundef nonnull %i.bd) #10
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.be) #10
  store ptr null, ptr %i.az, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef nonnull %i.az) #10
  br label %table_iter_close.exit.i

table_iter_close.exit.i:                          ; preds = %bb.s, %bb.r, %bb.q, %bb.j
  %.0.ph32.i = phi i32 [ -13, %bb.j ], [ %.0.ph.ph.i, %bb.q ], [ %.0.ph.ph.i, %bb.r ], [ %.0.ph.ph.i, %bb.s ]
  tail call void @reftable_free(ptr noundef %i.ai) #10
  br label %reftable_table_refs_for_unindexed.exit

reftable_table_refs_for_unindexed.exit:           ; preds = %table_iter_close.exit.i, %bb.p, %reftable_table_refs_for_indexed.exit
  %.0 = phi i32 [ %.0.i, %reftable_table_refs_for_indexed.exit ], [ %.0.ph32.i, %table_iter_close.exit.i ], [ 0, %bb.p ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @reftable_table_max_update_index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @reftable_table_min_update_index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @reftable_table_iterator_init(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @reftable_malloc(i64 noundef 184) #10 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !25
  store ptr %1, ptr %i.a, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.010 = phi i32 [ 0, %bb.b ], [ -13, %bb.a ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define dso_local void @reftable_table_iterator_release(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @reftable_block_release(ptr noundef nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  tail call void @block_iter_reset(ptr noundef nonnull %i.c) #10
  tail call void @block_iter_close(ptr noundef nonnull %i.c) #10
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %table_iter_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !25
  %.not6.i.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i.i, label %bb.d, label %table_iter_close.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @block_source_close(ptr noundef nonnull %i.h) #10
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.i) #10
  store ptr null, ptr %i.d, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef nonnull %i.d) #10
  br label %table_iter_close.exit

table_iter_close.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !52
  tail call void @reftable_free(ptr noundef %i.j) #10
  store ptr null, ptr %0, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %table_iter_close.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_table_iterator_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.b = tail call fastcc i32 @table_iter_next_block(ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %1, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @table_iter_next_block(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73
  %i.f = zext i32 %i.e to i64
  %i.g = add i64 %i.b, %i.f                       ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !55
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = tail call i64 @header_size(i32 noundef %i.l) #10
  %i.n = trunc i64 %i.m to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %.not15.i = icmp ult i64 %i.g, %i.q
  br i1 %.not15.i, label %bb.d, label %table_init_block.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = trunc i64 %i.g to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19
  %i.x = tail call i32 @hash_size(i32 noundef %i.w) #10
  %i.y = tail call i32 @reftable_block_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.r, i32 noundef %i.s, i32 noundef %i.o, i32 noundef %i.u, i32 noundef %i.x, i8 noundef zeroext %i.j) #10 ; 4 uses
  %.not16.i = icmp eq i32 %i.y, 0
  br i1 %.not16.i, label %bb.e, label %table_init_block.exit

table_init_block.exit:                            ; preds = %bb.d
  tail call void @reftable_block_release(ptr noundef nonnull %i.c) #10
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %table_init_block.exit.thread, label %.thread

table_init_block.exit.thread:                     ; preds = %bb.c, %table_init_block.exit
  %.0.i18 = phi i32 [ %i.y, %table_init_block.exit ], [ 1, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 1, ptr %i.aa, align 8, !tbaa !56
  br label %.thread

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr %i.a, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.ab, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @block_iter_init(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.c) #10
  br label %.thread

.thread:                                          ; preds = %table_init_block.exit, %table_init_block.exit.thread, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.y, %table_init_block.exit ], [ %.0.i18, %table_init_block.exit.thread ]
  ret i32 %.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal i32 @table_iter_seek_void(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.reftable_record, align 8    ; 7 uses
  %3 = alloca %struct.reftable_record, align 8    ; 10 uses
  %.val13.i = load i8, ptr %1, align 8, !tbaa !49
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 9 uses
  switch i8 %.val13.i, label %bb.b [
    i8 114, label %table_offsets_for.exit.thread.i
    i8 103, label %table_offsets_for.exit.i.i
    i8 111, label %bb.c
  ]

table_offsets_for.exit.thread.i:                  ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %.not23.i = icmp eq i64 %5, 0
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %8 = load i64, ptr %7, align 8, !tbaa !50
  br i1 %.not23.i, label %table_iter_seek_start.exit.i, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %.not21.i = icmp eq i64 %10, 0
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %13 = load i64, ptr %12, align 8, !tbaa !50
  br i1 %.not21.i, label %table_iter_seek_start.exit.i, label %bb.d

table_offsets_for.exit.i.i:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %.in.in.i = load i64, ptr %i.b, align 8, !tbaa !74
  %.in.not.i = icmp eq i64 %.in.in.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  br i1 %.in.not.i, label %table_iter_seek_start.exit.i, label %bb.d

bb.d:                                             ; preds = %table_offsets_for.exit.i.i, %bb.c, %table_offsets_for.exit.thread.i
  %14 = phi ptr [ %11, %bb.c ], [ %i.c, %table_offsets_for.exit.i.i ], [ %6, %table_offsets_for.exit.thread.i ]
  %15 = phi ptr [ %9, %bb.c ], [ %i.b, %table_offsets_for.exit.i.i ], [ %4, %table_offsets_for.exit.thread.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %table_iter_seek_start.exit.thread.thread.i, label %table_iter_seek_start.exit.i

table_iter_seek_start.exit.i:                     ; preds = %bb.d, %table_offsets_for.exit.i.i, %bb.c, %table_offsets_for.exit.thread.i
  %16 = phi ptr [ %i.b, %table_offsets_for.exit.i.i ], [ %15, %bb.d ], [ %9, %bb.c ], [ %4, %table_offsets_for.exit.thread.i ]
  %.010.i.i = phi i8 [ 103, %table_offsets_for.exit.i.i ], [ 105, %bb.d ], [ 111, %bb.c ], [ 114, %table_offsets_for.exit.thread.i ]
  %.0.i.i = phi i64 [ %i.e, %table_offsets_for.exit.i.i ], [ %i.g, %bb.d ], [ %13, %bb.c ], [ %8, %table_offsets_for.exit.thread.i ]
  %i.i = tail call fastcc i32 @table_iter_seek_to(ptr noundef nonnull %0, i64 noundef %.0.i.i, i8 noundef zeroext %.010.i.i) ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %table_iter_seek.exit, label %table_iter_seek_start.exit.thread.i

table_iter_seek_start.exit.thread.i:              ; preds = %table_iter_seek_start.exit.i
  %.pre.i = load i64, ptr %16, align 8, !tbaa !74
  %i.k = icmp eq i64 %.pre.i, 0
  br i1 %i.k, label %bb.o, label %table_iter_seek_start.exit.thread.thread.i

table_iter_seek_start.exit.thread.thread.i:       ; preds = %table_iter_seek_start.exit.thread.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  store i8 105, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  store i8 105, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = call i32 @reftable_record_key(ptr noundef nonnull %1, ptr noundef nonnull %i.l) #10 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %table_iter_seek_indexed.exit.i, label %bb.e

bb.e:                                             ; preds = %table_iter_seek_start.exit.thread.thread.i
  %i.o = call fastcc i32 @table_iter_seek_linear(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %table_iter_seek_indexed.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i8, ptr %i.q, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.preheader.i.i
  %i.w = phi i8 [ %.pre.i.i, %.preheader.i.i ], [ 105, %bb.n ]
  %.val.i.i.i = load i8, ptr %3, align 8, !tbaa !49
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, %i.w
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %table_iter_seek_indexed.exit.i

.preheader.i.i.i:                                 ; preds = %bb.f, %bb.j
  %i.x = load i32, ptr %i.r, align 8, !tbaa !56
  %.not15.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not15.i.i.i, label %bb.g, label %table_iter_seek_indexed.exit.i

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.y = call i32 @block_iter_next(ptr noundef nonnull %i.s, ptr noundef nonnull %3) #10 ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %table_iter_next_in_block.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i8, ptr %3, align 8, !tbaa !49
  %i.aa = icmp eq i8 %.val.i.i.i.i, 114
  br i1 %i.aa, label %bb.i, label %table_iter_next.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %0, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !40
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.t, align 8, !tbaa !40
  br label %table_iter_next.exit.i.i

table_iter_next_in_block.exit.i.i.i:              ; preds = %bb.g
  %i.ag = icmp slt i32 %i.y, 1
  br i1 %i.ag, label %table_iter_seek_indexed.exit.i, label %bb.j

bb.j:                                             ; preds = %table_iter_next_in_block.exit.i.i.i
  %i.ah = call fastcc i32 @table_iter_next_block(ptr noundef nonnull %0) ; 2 uses
  %.not16.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not16.i.i.i, label %.preheader.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.r, align 8, !tbaa !56
  br label %table_iter_seek_indexed.exit.i

table_iter_next.exit.i.i:                         ; preds = %bb.i, %bb.h
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !40
  %i.aj = call fastcc i32 @table_iter_seek_to(ptr noundef nonnull %0, i64 noundef %i.ai, i8 noundef zeroext 0) ; 2 uses
  %.not20.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not20.i.i, label %bb.l, label %table_iter_seek_indexed.exit.i

bb.l:                                             ; preds = %table_iter_next.exit.i.i
  call void @block_iter_init(ptr noundef nonnull %i.s, ptr noundef nonnull %i.v) #10
  %i.ak = call i32 @block_iter_seek_key(ptr noundef nonnull %i.s, ptr noundef nonnull %i.l) #10 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %table_iter_seek_indexed.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i8, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %.val.i.i = load i8, ptr %1, align 8, !tbaa !49
  %i.an = icmp eq i8 %i.am, %.val.i.i
  br i1 %i.an, label %table_iter_seek_indexed.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not21.i.i = icmp eq i8 %i.am, 105
  br i1 %.not21.i.i, label %bb.f, label %table_iter_seek_indexed.exit.i

table_iter_seek_indexed.exit.i:                   ; preds = %bb.n, %bb.m, %bb.l, %table_iter_next.exit.i.i, %bb.f, %table_iter_next_in_block.exit.i.i.i, %.preheader.i.i.i, %bb.k, %bb.e, %table_iter_seek_start.exit.thread.thread.i
  %.0.i14.i = phi i32 [ %i.m, %table_iter_seek_start.exit.thread.thread.i ], [ %i.o, %bb.e ], [ %i.ah, %bb.k ], [ %i.y, %table_iter_next_in_block.exit.i.i.i ], [ 1, %.preheader.i.i.i ], [ -6, %bb.f ], [ 0, %bb.m ], [ %i.ak, %bb.l ], [ %i.aj, %table_iter_next.exit.i.i ], [ -3, %bb.n ]
  call void @reftable_record_release(ptr noundef nonnull %2) #10
  call void @reftable_record_release(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %table_iter_seek.exit

bb.o:                                             ; preds = %table_iter_seek_start.exit.thread.i
  %i.ao = tail call fastcc i32 @table_iter_seek_linear(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %table_iter_seek.exit

table_iter_seek.exit:                             ; preds = %table_iter_seek_start.exit.i, %table_iter_seek_indexed.exit.i, %bb.o
  %.0.i = phi i32 [ %i.i, %table_iter_seek_start.exit.i ], [ %.0.i14.i, %table_iter_seek_indexed.exit.i ], [ %i.ao, %bb.o ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @table_iter_next_void(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %.val.i = load i8, ptr %1, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !55
  %.not.i = icmp eq i8 %.val.i, %i.b
  br i1 %.not.i, label %.preheader.i, label %table_iter_next.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.i
  %i.e = load i32, ptr %i.c, align 8, !tbaa !56
  %.not15.i = icmp eq i32 %i.e, 0
  br i1 %.not15.i, label %bb.c, label %table_iter_next.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @block_iter_next(ptr noundef nonnull %i.d, ptr noundef nonnull %1) #10 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %table_iter_next_in_block.exit.i

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i8, ptr %1, align 8, !tbaa !49
  %i.h = icmp eq i8 %.val.i.i, 114
  br i1 %i.h, label %bb.e, label %table_iter_next.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !40
  br label %table_iter_next.exit

table_iter_next_in_block.exit.i:                  ; preds = %bb.c
  %i.o = icmp slt i32 %i.f, 1
  br i1 %i.o, label %table_iter_next.exit, label %bb.f

bb.f:                                             ; preds = %table_iter_next_in_block.exit.i
  %i.p = tail call fastcc i32 @table_iter_next_block(ptr noundef nonnull %0) ; 2 uses
  %.not16.i = icmp eq i32 %i.p, 0
  br i1 %.not16.i, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.c, align 8, !tbaa !56
  br label %table_iter_next.exit

table_iter_next.exit:                             ; preds = %bb.b, %table_iter_next_in_block.exit.i, %bb.a, %bb.d, %bb.e, %bb.g
  %.2.i = phi i32 [ -6, %bb.a ], [ 0, %bb.d ], [ %i.p, %bb.g ], [ 0, %bb.e ], [ %i.f, %table_iter_next_in_block.exit.i ], [ 1, %bb.b ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal void @table_iter_close_void(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @reftable_block_release(ptr noundef nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @block_iter_reset(ptr noundef nonnull %i.b) #10
  tail call void @block_iter_close(ptr noundef nonnull %i.b) #10
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 6 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %table_iter_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !25
  %.not6.i.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i.i, label %bb.c, label %table_iter_close.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @block_source_close(ptr noundef nonnull %i.g) #10
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.h) #10
  store ptr null, ptr %i.c, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef nonnull %i.c) #10
  br label %table_iter_close.exit

table_iter_close.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  ret void
end_hunk_0
