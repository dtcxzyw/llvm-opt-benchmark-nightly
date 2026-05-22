inline.NumInlined: 18
inline.NumDeleted: 13
begin_hunk_0_@duckdb_je_decay_reinit:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @duckdb_je_nstime_copy(ptr noundef nonnull %i.e, ptr noundef %1) #8
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.f, ptr %i.g, align 8, !tbaa !7
  tail call fastcc void @duckdb_je_decay_deadline_init(ptr noundef nonnull %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.h, i8 0, i64 1608, i1 false)
  ret void
}

declare void @duckdb_je_nstime_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @duckdb_je_nstime_idivide(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @duckdb_je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @duckdb_je_decay_deadline_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @duckdb_je_nstime_copy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @duckdb_je_nstime_add(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = tail call i64 @duckdb_je_nstime_ns(ptr noundef nonnull %i.c) #8 ; 4 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %prng_range_u64.exit
    i64 0, label %pow2_ceil_u64.exit
  ], !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.i, i1 true)
  %narrow.i = sub nuw nsw i64 64, %i.j
  %i.k = shl nuw i64 1, %narrow.i
  br label %pow2_ceil_u64.exit

pow2_ceil_u64.exit:                               ; preds = %bb.b, %bb.c
  %.0.i8 = phi i64 [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.l = icmp ne i64 %.0.i8, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i8, i1 true)
  %i.n = sub nuw nsw i64 64, %i.m
  %.promoted = load i64, ptr %i.g, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %pow2_ceil_u64.exit
  %i.o = phi i64 [ %i.q, %bb.d ], [ %.promoted, %pow2_ceil_u64.exit ]
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, 1442695040888963407        ; 3 uses
  %i.r = lshr i64 %i.q, %i.n                      ; 2 uses
  %.not.i = icmp ult i64 %i.r, %i.h
  br i1 %.not.i, label %prng_range_u64.exit.loopexit, label %bb.d

prng_range_u64.exit.loopexit:                     ; preds = %bb.d
  store i64 %i.q, ptr %i.g, align 8, !tbaa !14
  br label %prng_range_u64.exit

prng_range_u64.exit:                              ; preds = %prng_range_u64.exit.loopexit, %bb.b
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %prng_range_u64.exit.loopexit ]
  call void @duckdb_je_nstime_init(ptr noundef nonnull %1, i64 noundef %.0.i) #8
  call void @duckdb_je_nstime_add(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.e

bb.e:                                             ; preds = %prng_range_u64.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_decay_init(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 14, i32 noundef 0) #8 ; 2 uses
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 %2, ptr %i.c monotonic, align 8
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %bb.c, label %duckdb_je_decay_reinit.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = mul i64 %2, 1000000
  tail call void @duckdb_je_nstime_init(ptr noundef nonnull %i.e, i64 noundef %i.f) #8
  tail call void @duckdb_je_nstime_idivide(ptr noundef nonnull %i.e, i64 noundef 200) #8
  br label %duckdb_je_decay_reinit.exit

duckdb_je_decay_reinit.exit:                      ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @duckdb_je_nstime_copy(ptr noundef nonnull %i.g, ptr noundef %1) #8
  %i.h = ptrtoint ptr %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.h, ptr %i.i, align 8, !tbaa !7
  tail call fastcc void @duckdb_je_decay_deadline_init(ptr noundef nonnull %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.j, i8 0, i64 1608, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %duckdb_je_decay_reinit.exit
  ret i1 %i.a
}

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @duckdb_je_decay_ms_valid(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %0, 1
  %.0 = icmp ult i64 %i.a, 18446744072002
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_decay_npages_purge_in(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i64 @duckdb_je_nstime_ns(ptr noundef nonnull %i.a) #8
  %i.c = tail call i64 @duckdb_je_nstime_ns(ptr noundef %1) #8
  %i.d = udiv i64 %i.c, %i.b                      ; 2 uses
  %i.e = icmp ugt i64 %i.d, 199
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i64 199, %i.d
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = sub i64 16777216, %i.h
  %i.j = mul i64 %i.i, %2
  %i.k = lshr i64 %i.j, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ %2, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i64 @duckdb_je_nstime_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_decay_maybe_advance_epoch(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.a = load ptr, ptr @duckdb_je_nstime_monotonic, align 8, !tbaa !16
  %i.b = tail call zeroext i1 %i.a() #8, !inline_history !18
  br i1 %i.b, label %decay_maybe_update_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = tail call i32 @duckdb_je_nstime_compare(ptr noundef nonnull %i.c, ptr noundef %1) #8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %decay_maybe_update_time.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @duckdb_je_nstime_copy(ptr noundef nonnull %i.c, ptr noundef %1) #8
  tail call fastcc void @duckdb_je_decay_deadline_init(ptr noundef nonnull %0)
  br label %decay_maybe_update_time.exit

decay_maybe_update_time.exit:                     ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = tail call i32 @duckdb_je_nstime_compare(ptr noundef nonnull %i.f, ptr noundef %1) #8
  %i.h = icmp slt i32 %i.g, 1                     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %decay_maybe_update_time.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @duckdb_je_nstime_copy(ptr noundef nonnull %3, ptr noundef %1) #8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @duckdb_je_nstime_subtract(ptr noundef nonnull %3, ptr noundef nonnull %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = call i64 @duckdb_je_nstime_divide(ptr noundef nonnull %3, ptr noundef nonnull %i.j) #8 ; 6 uses
  call void @duckdb_je_nstime_copy(ptr noundef nonnull %3, ptr noundef nonnull %i.j) #8
  call void @duckdb_je_nstime_imultiply(ptr noundef nonnull %3, i64 noundef %i.k) #8
  call void @duckdb_je_nstime_add(ptr noundef nonnull %i.i, ptr noundef nonnull %3) #8
  call fastcc void @duckdb_je_decay_deadline_init(ptr noundef nonnull %0)
  %i.l = icmp ugt i64 %i.k, 199
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  br i1 %i.l, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.o = sub nuw nsw i64 200, %i.k                ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %i.q = icmp samesign ugt i64 %i.k, 1
  br i1 %i.q, label %bb.f, label %decay_backlog_update.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.s = shl nuw nsw i64 %i.k, 3
  %i.t = add nsw i64 %i.s, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.d
  %.sink18.i = phi i64 [ %i.t, %bb.f ], [ 1592, %bb.d ]
  %.sink.i = phi ptr [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i, i8 0, i64 %.sink18.i, i1 false)
  br label %decay_backlog_update.exit

decay_backlog_update.exit:                        ; preds = %bb.e, %.sink.split.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i64 %spec.select.i, ptr %i.w, align 8, !tbaa !14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %decay_backlog_update.exit
  %index = phi i64 [ 0, %decay_backlog_update.exit ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %decay_backlog_update.exit ], [ %i.ad, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %decay_backlog_update.exit ], [ %i.ae, %vector.body ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !14
  %wide.load24 = load <2 x i64>, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.z, align 16, !tbaa !14
  %wide.load26 = load <2 x i64>, ptr %i.aa, align 16, !tbaa !14
  %i.ab = mul <2 x i64> %wide.load25, %wide.load
  %i.ac = mul <2 x i64> %wide.load26, %wide.load24
  %i.ad = add <2 x i64> %i.ab, %vec.phi           ; 2 uses
  %i.ae = add <2 x i64> %i.ac, %vec.phi23         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, 200
  br i1 %i.af, label %decay_backlog_npages_limit.exit, label %vector.body, !llvm.loop !21

decay_backlog_npages_limit.exit:                  ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.ah = lshr i64 %i.ag, 24                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !24
  %. = call i64 @llvm.umax.i64(i64 %i.ah, i64 %2)
  store i64 %., ptr %i.u, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.g

bb.g:                                             ; preds = %decay_maybe_update_time.exit, %decay_backlog_npages_limit.exit
  ret i1 %i.h
}

declare void @duckdb_je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @duckdb_je_nstime_divide(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @duckdb_je_nstime_imultiply(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @duckdb_je_nstime_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_decay_ns_until_purge(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = tail call i64 @duckdb_je_nstime_ns(ptr noundef nonnull %i.d) #8 ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %.preheader75, label %.thread

.preheader75:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.preheader75
  %indvars.iv = phi i64 [ 0, %.preheader75 ], [ %indvars.iv.next.4, %bb.h ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %.not.1 = icmp eq i64 %i.l, 0
  br i1 %.not.1, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %.not.2 = icmp eq i64 %i.o, 0
  br i1 %.not.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %.not.3 = icmp eq i64 %i.r, 0
  br i1 %.not.3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %.not.4 = icmp eq i64 %i.u, 0
  br i1 %.not.4, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 200
  br i1 %exitcond.not.4, label %.loopexit, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.not59 = icmp ugt i64 %1, %2
  br i1 %.not59, label %.preheader.i.preheader, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.v = mul i64 %i.e, 200
  br label %.loopexit

.preheader.i.preheader:                           ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = mul i64 %i.y, 165
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !14
  %i.ab = mul i64 %i.aa, 20
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ac, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i.preheader
  %index = phi i64 [ 0, %.preheader.i.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ad, %.preheader.i.preheader ], [ %i.ao, %vector.body ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %.preheader.i.preheader ], [ %i.ap, %vector.body ]
  %i.ae = or disjoint i64 %index, 2               ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !14
  %wide.load103 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr [8 x i8], ptr @h_steps, i64 %i.ae ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load104 = load <2 x i64>, ptr %i.ah, align 16, !tbaa !14 ; 2 uses
  %wide.load105 = load <2 x i64>, ptr %i.ai, align 16, !tbaa !14
  %i.aj = getelementptr i8, ptr %i.ah, i64 -16
  %wide.load106 = load <2 x i64>, ptr %i.aj, align 16, !tbaa !14
  %i.ak = sub <2 x i64> %wide.load104, %wide.load106
  %i.al = sub <2 x i64> %wide.load105, %wide.load104
  %i.am = mul <2 x i64> %i.ak, %wide.load
  %i.an = mul <2 x i64> %i.al, %wide.load103
  %i.ao = add <2 x i64> %i.am, %vec.phi           ; 2 uses
  %i.ap = add <2 x i64> %i.an, %vec.phi102        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, 196
  br i1 %i.aq, label %.preheader.i, label %vector.body, !llvm.loop !25

.preheader.i:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14
  %i.au = mul i64 %i.at, 533
  %i.av = add i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = mul i64 %i.ax, 166
  %i.az = add i64 %i.ay, %i.av
  %i.ba = lshr i64 %i.az, 24                      ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %2
  br i1 %i.bb, label %bb.j, label %vector.body110

vector.body110:                                   ; preds = %.preheader.i, %vector.body110
  %index111 = phi i64 [ %index.next118, %vector.body110 ], [ 0, %.preheader.i ] ; 3 uses
  %vec.phi112 = phi <2 x i64> [ %i.bi, %vector.body110 ], [ zeroinitializer, %.preheader.i ]
  %vec.phi113 = phi <2 x i64> [ %i.bj, %vector.body110 ], [ zeroinitializer, %.preheader.i ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index111 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load114 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !14
  %wide.load115 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %index111 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load116 = load <2 x i64>, ptr %i.be, align 16, !tbaa !14
  %wide.load117 = load <2 x i64>, ptr %i.bf, align 16, !tbaa !14
  %i.bg = mul <2 x i64> %wide.load116, %wide.load114
  %i.bh = mul <2 x i64> %wide.load117, %wide.load115
  %i.bi = add <2 x i64> %i.bg, %vec.phi112        ; 2 uses
  %i.bj = add <2 x i64> %i.bh, %vec.phi113        ; 2 uses
  %index.next118 = add nuw i64 %index111, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next118, 200
  br i1 %i.bk, label %decay_npurge_after_interval.exit64, label %vector.body110, !llvm.loop !26

bb.j:                                             ; preds = %.preheader.i
  %i.bl = shl i64 %i.e, 1
  br label %.loopexit

decay_npurge_after_interval.exit64:               ; preds = %vector.body110
  %bin.rdx120 = add <2 x i64> %i.bj, %i.bi
  %i.bm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx120)
  %i.bn = lshr i64 %i.bm, 24                      ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %2
  br i1 %i.bo, label %bb.k, label %.preheader

.preheader:                                       ; preds = %decay_npurge_after_interval.exit64
  %i.bp = add nuw nsw i64 %i.ba, %2
end_hunk_0
