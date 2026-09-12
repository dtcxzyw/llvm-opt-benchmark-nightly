Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_zip?download=true
inline.NumInlined: 69
inline.NumDeleted: 11
begin_hunk_0_@mz_zip_attrib_convert:bb.a
bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.f = lshr i32 %1, 16                          ; 2 uses
  %.not59 = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not59, i32 %1, i32 %i.f ; 6 uses
  switch i8 %2, label %bb.e [
    i8 19, label %.sink.split
    i8 13, label %.sink.split
    i8 3, label %.sink.split
    i8 10, label %mz_zip_attrib_posix_to_win32.exit
    i8 0, label %mz_zip_attrib_posix_to_win32.exit
  ]

mz_zip_attrib_posix_to_win32.exit:                ; preds = %bb.d, %bb.d
  %i.g = and i32 %spec.select, 219
  %i.h = icmp eq i32 %i.g, 0
  %i.i = and i32 %spec.select, 292
  %.not12.i = icmp ne i32 %i.i, 0
  %or.cond.not.i = and i1 %i.h, %.not12.i
  %spec.store.select.i = zext i1 %or.cond.not.i to i32
  %i.j = trunc nuw i32 %spec.select to i16
  %trunc.i = and i16 %i.j, -4096                  ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %trunc.i, 16384
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16, i32 128
  %switch.selectcmp16.i = icmp eq i16 %trunc.i, -24576
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 1024, i32 %switch.select.i
  %i.k = or disjoint i32 %switch.select17.i, %spec.store.select.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.d, %bb.d, %bb.c, %bb.c, %mz_zip_attrib_win32_to_posix.exit, %mz_zip_attrib_posix_to_win32.exit
  %.sink = phi i32 [ %i.k, %mz_zip_attrib_posix_to_win32.exit ], [ %1, %bb.c ], [ %i.e, %mz_zip_attrib_win32_to_posix.exit ], [ %1, %bb.c ], [ %spec.select, %bb.d ], [ %spec.select, %bb.d ], [ %spec.select, %bb.d ]
  store i32 %.sink, ptr %3, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -109, %bb.c ], [ -109, %bb.d ], [ -102, %bb.a ], [ -109, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -102, 1) i32 @mz_zip_attrib_win32_to_posix(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.a = and i32 %0, 1
  %i.b = icmp eq i32 %i.a, 0
  %spec.select = select i1 %i.b, i32 438, i32 292
  %i.c = and i32 %0, 1024
  %.not10 = icmp eq i32 %i.c, 0
  %i.d = and i32 %0, 16
  %.not11 = icmp eq i32 %i.d, 0
  %. = select i1 %.not11, i32 32768, i32 16457
  %.sink13 = select i1 %.not10, i32 %., i32 40960
  %i.e = or disjoint i32 %spec.select, %.sink13
  store i32 %i.e, ptr %1, align 4, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -102, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -102, 1) i32 @mz_zip_attrib_posix_to_win32(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.a = and i32 %0, 219
  %i.b = icmp eq i32 %i.a, 0
  %i.c = and i32 %0, 292
  %.not12 = icmp ne i32 %i.c, 0
  %or.cond.not = and i1 %i.b, %.not12
  %spec.store.select = zext i1 %or.cond.not to i32
  %i.d = trunc i32 %0 to i16
  %trunc = and i16 %i.d, -4096                    ; 2 uses
  %switch.selectcmp = icmp eq i16 %trunc, 16384
  %switch.select = select i1 %switch.selectcmp, i32 16, i32 128
  %switch.selectcmp16 = icmp eq i16 %trunc, -24576
  %switch.select17 = select i1 %switch.selectcmp16, i32 1024, i32 %switch.select
  %i.e = or disjoint i32 %switch.select17, %spec.store.select
  store i32 %i.e, ptr %1, align 4, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -102, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -107, 1) i32 @mz_zip_extrafield_find(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i16 0, ptr %i.b, align 2, !tbaa !21
  %i.c = icmp slt i32 %2, 4
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %.013 = phi i32 [ %i.m, %bb.g ], [ %2, %bb.a ]
  %i.d = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.a) #23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.f = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.b) #23
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.a, align 2, !tbaa !21
  %i.i = icmp eq i16 %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i16, ptr %i.b, align 2, !tbaa !21
  store i16 %i.j, ptr %3, align 2, !tbaa !21
  br label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.k = load i16, ptr %i.b, align 2, !tbaa !21   ; 2 uses
  %i.l = zext i16 %i.k to i32
  %.neg18 = add nuw i32 %.013, 4
  %i.m = sub i32 %.neg18, %i.l                    ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = zext i16 %i.k to i64
  %i.p = call i32 @mz_stream_seek(ptr noundef %0, i64 noundef %i.o, i32 noundef 1) #23
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.preheader, label %.critedge, !llvm.loop !0

.critedge:                                        ; preds = %bb.g, %bb.b, %.preheader, %bb.f, %bb.d, %bb.e, %bb.a
  %.012 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ -107, %bb.a ], [ -107, %bb.f ], [ -107, %.preheader ], [ -107, %bb.b ], [ -107, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.012
}

declare i32 @mz_stream_read_uint16(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mz_stream_mem_set_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @mz_zip_extrafield_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %1) #23 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.09 = phi i32 [ -102, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_extrafield_write(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %1) #23 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %2) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

declare i32 @mz_stream_write_uint16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -103, 1) i32 @mz_zip_dosdate_to_tm(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = trunc i64 %0 to i32                        ; 6 uses
  %3 = lshr i32 %2, 16
  %i.a = and i32 %3, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.a, ptr %i.b, align 4, !tbaa !50
  %4 = lshr i32 %2, 21
  %i.c = and i32 %4, 15
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.d, ptr %i.e, align 8, !tbaa !51
  %5 = lshr i32 %2, 25
  %i.f = add nuw nsw i32 %5, 80
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.f, ptr %i.g, align 4, !tbaa !52
  %6 = lshr i32 %2, 11
  %i.h = and i32 %6, 31                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !53
  %7 = lshr i32 %2, 5
  %i.j = and i32 %7, 63                           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !54
  %i.l = shl i32 %2, 1
  %i.m = and i32 %i.l, 62                         ; 2 uses
  store i32 %i.m, ptr %1, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1, ptr %i.n, align 8, !tbaa !56
  %or.cond17.i = icmp ult i32 %i.d, 12
  %i.o = icmp ne i32 %i.a, 0
  %or.cond = and i1 %or.cond17.i, %i.o
  %or.cond19.i = icmp samesign ult i32 %i.h, 24
  %or.cond8 = select i1 %or.cond, i1 %or.cond19.i, i1 false
  %or.cond20.i = icmp samesign ult i32 %i.j, 60
  %or.cond9 = select i1 %or.cond8, i1 %or.cond20.i, i1 false
  %narrow.i = icmp samesign ult i32 %i.m, 60
  %or.cond10 = select i1 %or.cond9, i1 %narrow.i, i1 false
  br i1 %or.cond10, label %bb.c, label %mz_zip_invalid_date.exit.thread

mz_zip_invalid_date.exit.thread:                  ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %mz_zip_invalid_date.exit.thread
  %.0 = phi i32 [ -103, %mz_zip_invalid_date.exit.thread ], [ -102, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define noundef i64 @mz_zip_dosdate_to_time_t(i64 noundef %0) local_unnamed_addr #15 {
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %2 = trunc i64 %0 to i32                        ; 6 uses
  %3 = lshr i32 %2, 16
  %i.a = and i32 %3, 31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.a, ptr %i.b, align 4, !tbaa !50
  %4 = lshr i32 %2, 21
  %i.c = and i32 %4, 15
  %i.d = add nsw i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.d, ptr %i.e, align 8, !tbaa !51
  %5 = lshr i32 %2, 25
  %i.f = add nuw nsw i32 %5, 80
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.f, ptr %i.g, align 4, !tbaa !52
  %6 = lshr i32 %2, 11
  %i.h = and i32 %6, 31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !53
  %7 = lshr i32 %2, 5
  %i.j = and i32 %7, 63
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !54
  %i.l = shl i32 %2, 1
  %i.m = and i32 %i.l, 62
  store i32 %i.m, ptr %1, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1, ptr %i.n, align 8, !tbaa !56
  %i.o = call noundef i64 @mktime(ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.o
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define noundef i64 @mz_zip_tm_to_time_t(ptr nofree noundef captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @mktime(ptr noundef %0) #23
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define range(i32 -104, 1) i32 @mz_zip_time_t_to_tm(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #23
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -104, %bb.c ], [ -102, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %.0
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define range(i32 0, -6307970) i32 @mz_zip_time_t_to_dos_date(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #23
  %.not4.i = icmp eq ptr %i.b, null
  br i1 %.not4.i, label %.thread, label %mz_zip_time_t_to_tm.exit

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

mz_zip_time_t_to_tm.exit:                         ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9.0.copyload.fr = freeze i32 %.sroa.9.0.copyload ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp sgt i32 %.sroa.9.0.copyload.fr, 1979
  %i.d = icmp sgt i32 %.sroa.9.0.copyload.fr, 79
  %. = select i1 %i.d, i32 -80, i32 20
  %spec.select = select i1 %i.c, i32 -1980, i32 %.
  %i.e = add nsw i32 %spec.select, %.sroa.9.0.copyload.fr
  br label %bb.b

bb.b:                                             ; preds = %mz_zip_time_t_to_tm.exit, %.thread
  %.sroa.0.01028 = phi i32 [ 0, %.thread ], [ %.sroa.0.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.5.01127 = phi i32 [ 0, %.thread ], [ %.sroa.5.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.6.01226 = phi i32 [ 0, %.thread ], [ %.sroa.6.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.7.01325 = phi i32 [ 0, %.thread ], [ %.sroa.7.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.8.01424 = phi i32 [ 0, %.thread ], [ %.sroa.8.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %i.f = phi i32 [ 20, %.thread ], [ %i.e, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.f, 208
  %or.cond17.i.i = icmp ult i32 %.sroa.8.01424, 12
  %or.cond.i = select i1 %or.cond.i.i, i1 %or.cond17.i.i, i1 false
  %i.g = add i32 %.sroa.7.01325, -1
  %or.cond18.i.i = icmp ult i32 %i.g, 31
  %or.cond10.i = select i1 %or.cond.i, i1 %or.cond18.i.i, i1 false
  %or.cond19.i.i = icmp ult i32 %.sroa.6.01226, 24
  %or.cond11.i = select i1 %or.cond10.i, i1 %or.cond19.i.i, i1 false
  %or.cond20.i.i = icmp ult i32 %.sroa.5.01127, 60
  %or.cond12.i = select i1 %or.cond11.i, i1 %or.cond20.i.i, i1 false
  %narrow.i.i = icmp ult i32 %.sroa.0.01028, 60
  %or.cond13.i = select i1 %or.cond12.i, i1 %narrow.i.i, i1 false
  br i1 %or.cond13.i, label %bb.c, label %mz_zip_tm_to_dosdate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw nsw i32 %.sroa.8.01424, 5
  %i.i = add nuw nsw i32 %i.h, 32
  %i.j = or disjoint i32 %i.i, %.sroa.7.01325
  %i.k = shl i32 %i.f, 25
  %i.l = shl nuw nsw i32 %i.j, 16
  %i.m = add nuw i32 %i.k, %i.l
  %i.n = lshr i32 %.sroa.0.01028, 1
  %i.o = shl nuw nsw i32 %.sroa.5.01127, 5
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = shl nuw nsw i32 %.sroa.6.01226, 11
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = or disjoint i32 %i.m, %i.r
  br label %mz_zip_tm_to_dosdate.exit

mz_zip_tm_to_dosdate.exit:                        ; preds = %bb.b, %bb.c
  %.0.i1 = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, -6307970) i32 @mz_zip_tm_to_dosdate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp sgt i32 %.sroa.13.0.copyload, 1979
  %i.b = icmp sgt i32 %.sroa.13.0.copyload, 79
  %. = select i1 %i.b, i32 -80, i32 20
  %.sink = select i1 %i.a, i32 -1980, i32 %.
  %i.c = add nsw i32 %.sroa.13.0.copyload, %.sink ; 2 uses
  %or.cond.i = icmp ult i32 %i.c, 208
  %or.cond17.i = icmp ult i32 %.sroa.11.0.copyload, 12
  %or.cond = select i1 %or.cond.i, i1 %or.cond17.i, i1 false
  %i.d = add i32 %.sroa.9.0.copyload, -1
  %or.cond18.i = icmp ult i32 %i.d, 31
  %or.cond10 = select i1 %or.cond, i1 %or.cond18.i, i1 false
  %or.cond19.i = icmp ult i32 %.sroa.7.0.copyload, 24
  %or.cond11 = select i1 %or.cond10, i1 %or.cond19.i, i1 false
  %or.cond20.i = icmp ult i32 %.sroa.5.0.copyload, 60
  %or.cond12 = select i1 %or.cond11, i1 %or.cond20.i, i1 false
  %narrow.i = icmp ult i32 %.sroa.0.0.copyload, 60
  %or.cond13 = select i1 %or.cond12, i1 %narrow.i, i1 false
  br i1 %or.cond13, label %bb.b, label %mz_zip_invalid_date.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i32 %.sroa.11.0.copyload, 5
  %i.f = add nuw nsw i32 %i.e, 32
  %i.g = or disjoint i32 %i.f, %.sroa.9.0.copyload
  %i.h = shl i32 %i.c, 25
  %i.i = shl nuw nsw i32 %i.g, 16
  %i.j = add nuw i32 %i.h, %i.i
  %i.k = lshr i32 %.sroa.0.0.copyload, 1
  %i.l = shl nuw nsw i32 %.sroa.5.0.copyload, 5
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = shl nuw nsw i32 %.sroa.7.0.copyload, 11
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = or disjoint i32 %i.j, %i.o
  br label %mz_zip_invalid_date.exit.thread

mz_zip_invalid_date.exit.thread:                  ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @mz_zip_ntfs_to_unix_time(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %0, -116444736000000000
  %i.b = udiv i64 %i.a, 10000000
  store i64 %i.b, ptr %1, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @mz_zip_unix_to_ntfs_time(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = mul i64 %0, 10000000
  %i.b = add i64 %i.a, 116444736000000000
  store i64 %i.b, ptr %1, align 8, !tbaa !20
  ret i32 0
end_hunk_0
