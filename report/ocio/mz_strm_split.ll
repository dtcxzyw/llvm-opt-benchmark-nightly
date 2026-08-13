inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@mz_stream_split_seek:bb.a

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.031 = phi i64 [ %i.k, %.lr.ph ], [ %i.r, %bb.f ]
  %.02330 = phi i64 [ %1, %.lr.ph ], [ %i.q, %bb.f ]
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = add nsw i32 %i.n, 1
  %i.p = tail call fastcc i32 @mz_stream_split_goto_disk(ptr noundef nonnull %0, i32 noundef %i.o) ; 2 uses
  %.not27 = icmp eq i32 %i.p, 0
  br i1 %.not27, label %bb.f, label %.loopexit28

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i64 %.02330, %.031               ; 3 uses
  %i.r = load i64, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.s = icmp sgt i64 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %.1 = phi i64 [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %bb.d ], [ %i.q, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = tail call i32 @mz_stream_seek(ptr noundef %i.u, i64 noundef %.1, i32 noundef %2) #17
  br label %.loopexit28

.loopexit28:                                      ; preds = %bb.e, %bb.a, %.loopexit
  %.022 = phi i32 [ %i.v, %.loopexit ], [ %i.c, %bb.a ], [ %i.p, %bb.e ]
  ret i32 %.022
}

declare i32 @mz_stream_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @mz_stream_split_close(ptr nofree noundef captures(none) initializes((56, 60)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @mz_stream_is_open(ptr noundef %i.b) #17
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mz_stream_split_close_disk.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.e = tail call i32 @mz_stream_close(ptr noundef %i.d) #17
  br label %mz_stream_split_close_disk.exit

mz_stream_split_close_disk.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !24
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_split_error(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i32 @mz_stream_error(ptr noundef %i.b) #17
  ret i32 %i.c
}

declare i32 @mz_stream_error(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -107, 1) i32 @mz_stream_split_get_prop_int64(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #9 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 3, label %bb.b
    i32 8, label %bb.c
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %i.e = sext i32 %i.d to i64
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ %i.b, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  store i64 %.sink, ptr %2, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -107, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -107, 1) i32 @mz_stream_split_set_prop_int64(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i64 noundef %2) #10 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 8, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.a, ptr %i.b, align 4, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -107, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @mz_stream_split_create() #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #20 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @mz_stream_split_vtbl, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @mz_stream_split_delete(ptr nofree noundef captures(address_is_null) %0) #13 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.e) #17
  tail call void @free(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @mz_stream_split_get_interface() local_unnamed_addr #14 {
bb.a:
  ret ptr @mz_stream_split_vtbl
}

declare i32 @mz_stream_is_open(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mz_stream_split_open_disk(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !35
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.b, label %.thread57

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %i.e = and i32 %i.d, 2
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.thread, label %.thread57

.thread:                                          ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #18 ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.o = and i64 %i.l, 2147483647
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.p = trunc nuw i64 %i.r to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %._crit_edge, !llvm.loop !36

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv81 = phi i64 [ %i.o, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.r = add nsw i64 %indvars.iv81, -1            ; 3 uses
  %2 = getelementptr i8, ptr %i.k, i64 %indvars.iv81 ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %.not = icmp eq i8 %i.t, 46
  br i1 %.not, label %.split, label %bb.d, !llvm.loop !36

.split:                                           ; preds = %bb.e
  %i.u = getelementptr i8, ptr %2, i64 -1
  %i.v = trunc i64 %i.r to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17
  %i.y = sub i32 %i.x, %i.v
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i32 %1, 1
  %i.ab = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.u, i64 noundef %i.z, ptr noundef nonnull @.str, i32 noundef %i.aa) #17 ; 0 uses
  br i1 %i.f, label %.split._crit_edge, label %.thread58

.split._crit_edge:                                ; preds = %.split
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !18
  br label %bb.f

.thread57:                                        ; preds = %bb.c, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !17
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call ptr @strncpy(ptr noundef %i.ad, ptr noundef %i.af, i64 noundef %i.aj) #17 ; 0 uses
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !17
  %i.an = add i32 %i.am, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !19
  br label %.thread58

._crit_edge:                                      ; preds = %bb.d, %.thread
  br i1 %i.f, label %bb.f, label %.thread58

bb.f:                                             ; preds = %.split._crit_edge, %._crit_edge
  %i.aq = phi ptr [ %.pre, %.split._crit_edge ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(1) %i.as) #18
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread71, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @mz_os_file_exists(ptr noundef nonnull %i.aq) #17 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.thread58, label %.thread71

.thread58:                                        ; preds = %.split, %.thread57, %._crit_edge, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = tail call i32 @mz_stream_open(ptr noundef %i.ay, ptr noundef %i.ba, i32 noundef %i.bc) #17 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %.thread71

bb.h:                                             ; preds = %.thread58
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.bf, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %1, ptr %i.bh, align 8, !tbaa !20
  %i.bi = load i32, ptr %i.bb, align 4, !tbaa !8  ; 2 uses
  %i.bj = and i32 %i.bi, 2
  %.not53 = icmp eq i32 %i.bj, 0
  br i1 %.not53, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = icmp eq i32 %1, 0
  br i1 %i.bk, label %bb.j, label %.thread66

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !22
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %.thread66

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.bp = tail call i32 @mz_stream_write_uint32(ptr noundef %i.bo, i32 noundef 134695760) #17
  %i.bq = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.br = add nsw i64 %i.bq, 4                    ; 2 uses
  store i64 %i.br, ptr %i.bg, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.bu = add nsw i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !29
  br label %select.unfold

bb.l:                                             ; preds = %bb.h
  %.not54 = trunc i32 %i.bi to i1
  %i.bv = icmp eq i32 %1, 0
  %or.cond = and i1 %i.bv, %.not54
  br i1 %or.cond, label %bb.m, label %.thread66

bb.m:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.bx = call i32 @mz_stream_read_uint32(ptr noundef %i.bw, ptr noundef nonnull %i.a) #17
  %i.by = load i32, ptr %i.a, align 4, !tbaa !35
  %.not55 = icmp eq i32 %i.by, 134695760
  br i1 %.not55, label %select.unfold, label %.thread71

select.unfold:                                    ; preds = %bb.m, %bb.k
  %.2 = phi i32 [ %i.bp, %bb.k ], [ %i.bx, %bb.m ] ; 2 uses
  %i.bz = icmp eq i32 %.2, 0
  br i1 %i.bz, label %.thread66, label %.thread71

.thread66:                                        ; preds = %bb.l, %bb.i, %bb.j, %select.unfold
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.cb = call i64 @mz_stream_tell(ptr noundef %i.ca) #17
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.cd = call i32 @mz_stream_seek(ptr noundef %i.cc, i64 noundef 0, i32 noundef 2) #17 ; 0 uses
  %i.ce = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.cf = call i64 @mz_stream_tell(ptr noundef %i.ce) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.ci = call i32 @mz_stream_seek(ptr noundef %i.ch, i64 noundef %i.cb, i32 noundef 0) #17 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.cj, align 8, !tbaa !24
  br label %.thread71

.thread71:                                        ; preds = %bb.f, %bb.g, %.thread58, %bb.m, %.thread66, %select.unfold
  %.268 = phi i32 [ 0, %.thread66 ], [ %.2, %select.unfold ], [ %i.bd, %.thread58 ], [ -103, %bb.m ], [ %i.av, %bb.g ], [ -107, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.268
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @mz_os_file_exists(ptr noundef) local_unnamed_addr #8

declare i32 @mz_stream_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @mz_stream_write_uint32(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @mz_stream_read_uint32(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @mz_stream_close(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 60}
!9 = !{!"mz_stream_split_s", !10, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !15, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !14, i64 88, !5, i64 96, !5, i64 100}
!10 = !{!"mz_stream_s", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTS16mz_stream_vtbl_s", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS11mz_stream_s", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!9, !15, i64 64}
!17 = !{!9, !5, i64 80}
!18 = !{!9, !15, i64 72}
!19 = !{!6, !6, i64 0}
!20 = !{!9, !5, i64 96}
!21 = !{!9, !13, i64 8}
!22 = !{!9, !14, i64 16}
!23 = !{!9, !5, i64 84}
end_hunk_0
