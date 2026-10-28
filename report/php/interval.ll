Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/interval?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@timelib_add_wall:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  tail call void @timelib_update_ts(ptr noundef nonnull %i.a, ptr noundef null) #9
  tail call void @timelib_update_from_sse(ptr noundef nonnull %i.a) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %.not52 = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not52, i64 1, i64 -1 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i8 0, i64 104, i1 false)
  %i.l = load i64, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.m = mul i64 %i.l, %spec.select
  store i64 %i.m, ptr %i.k, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %i.p = mul i64 %i.o, %spec.select
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %i.t = mul i64 %i.s, %spec.select
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.t, ptr %i.u, align 8, !tbaa !52
  %.not53 = icmp eq i64 %i.l, 0
  br i1 %.not53, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not54 = icmp eq i64 %i.o, 0
  %.not55 = icmp eq i64 %i.s, 0
  %or.cond = select i1 %.not54, i1 %.not55, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @timelib_update_ts(ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ae = tail call i64 @timelib_hms_to_seconds(i64 noundef %i.z, i64 noundef %i.ab, i64 noundef %i.ad) #9
  %i.af = mul i64 %i.ae, %spec.select
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !38
  %i.ai = add i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !38
  tail call void @timelib_update_from_sse(ptr noundef nonnull %i.a) #9
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call ptr @timelib_rel_time_clone(ptr noundef nonnull %1) #9 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 3 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !35
  %.fr21.i = freeze i64 %i.am                     ; 5 uses
  %i.an = icmp slt i64 %.fr21.i, 0
  %.pre.pre = load i64, ptr %i.al, align 8, !tbaa !35 ; 3 uses
  br i1 %i.an, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.ao = xor i64 %.fr21.i, -1                    ; 2 uses
  %i.ap = udiv i64 %i.ao, 1000000
  %.neg.i = xor i64 %i.ap, -1
  %i.aq = add i64 %.pre.pre, %.neg.i              ; 2 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !35
  %i.ar = urem i64 %i.ao, 1000000
  %i.as = sub nuw nsw i64 999999, %i.ar
  br label %do_range_limit.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.at = icmp samesign ugt i64 %.fr21.i, 999999
  br i1 %i.at, label %bb.k, label %do_range_limit.exit

bb.k:                                             ; preds = %bb.j
  %i.au = udiv i64 %.fr21.i, 1000000
  %i.av = add i64 %.pre.pre, %i.au                ; 2 uses
  store i64 %i.av, ptr %i.al, align 8, !tbaa !35
  %i.aw = urem i64 %.fr21.i, 1000000
  br label %do_range_limit.exit.sink.split

do_range_limit.exit.sink.split:                   ; preds = %bb.k, %.thread
  %.sink = phi i64 [ %i.as, %.thread ], [ %i.aw, %bb.k ]
  %.ph = phi i64 [ %i.aq, %.thread ], [ %i.av, %bb.k ]
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !35
  br label %do_range_limit.exit

do_range_limit.exit:                              ; preds = %do_range_limit.exit.sink.split, %bb.j
  %i.ax = phi i64 [ %.pre.pre, %bb.j ], [ %.ph, %do_range_limit.exit.sink.split ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bc = tail call i64 @timelib_hms_to_seconds(i64 noundef %i.az, i64 noundef %i.bb, i64 noundef %i.ax) #9
  %i.bd = mul i64 %i.bc, %spec.select
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38
  %i.bg = add i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !38
  tail call void @timelib_update_from_sse(ptr noundef nonnull %i.a) #9
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.bi = mul i64 %i.bh, %spec.select
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.bl = add i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !36
  tail call void @timelib_do_normalize(ptr noundef nonnull %i.a) #9
  tail call void @timelib_update_ts(ptr noundef nonnull %i.a, ptr noundef null) #9
  tail call void @timelib_rel_time_dtor(ptr noundef nonnull %i.aj) #9
  br label %bb.l

bb.l:                                             ; preds = %do_range_limit.exit, %bb.h
  tail call void @timelib_do_normalize(ptr noundef nonnull %i.a) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !21
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  tail call void @timelib_set_timezone(ptr noundef nonnull %i.a, ptr noundef %i.bq) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 0, ptr %i.b, align 4, !tbaa !54
  ret ptr %i.a
}

declare i64 @timelib_hms_to_seconds(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @timelib_rel_time_clone(ptr noundef) local_unnamed_addr #3

declare void @timelib_do_normalize(ptr noundef) local_unnamed_addr #3

declare void @timelib_rel_time_dtor(ptr noundef) local_unnamed_addr #3

declare void @timelib_set_timezone(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @timelib_sub_wall(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @timelib_time_clone(ptr noundef %0) #9 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  store i32 1, ptr %i.b, align 4, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  tail call void @timelib_update_ts(ptr noundef nonnull %i.a, ptr noundef null) #9
  tail call void @timelib_update_from_sse(ptr noundef nonnull %i.a) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %.not52 = icmp eq i32 %i.j, 0                   ; 4 uses
  %spec.select = select i1 %.not52, i64 1, i64 -1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i8 0, i64 104, i1 false)
  %i.l = load i64, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.m = sub i64 0, %i.l
  %.neg = select i1 %.not52, i64 %i.m, i64 %i.l
  store i64 %.neg, ptr %i.k, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50   ; 3 uses
  %i.p = sub i64 0, %i.o
  %.neg56 = select i1 %.not52, i64 %i.p, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %.neg56, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42   ; 3 uses
  %i.t = sub i64 0, %i.s
  %.neg57 = select i1 %.not52, i64 %i.t, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %.neg57, ptr %i.u, align 8, !tbaa !52
  %.not53 = icmp eq i64 %i.l, 0
  br i1 %.not53, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not54 = icmp eq i64 %i.o, 0
  %.not55 = icmp eq i64 %i.s, 0
  %or.cond = select i1 %.not54, i1 %.not55, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @timelib_update_ts(ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ae = tail call i64 @timelib_hms_to_seconds(i64 noundef %i.z, i64 noundef %i.ab, i64 noundef %i.ad) #9
  %i.af = mul i64 %i.ae, %spec.select
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !38
  %i.ai = sub i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !38
  tail call void @timelib_update_from_sse(ptr noundef nonnull %i.a) #9
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call ptr @timelib_rel_time_clone(ptr noundef nonnull %1) #9 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 3 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !35
  %.fr21.i = freeze i64 %i.am                     ; 5 uses
  %i.an = icmp slt i64 %.fr21.i, 0
  %.pre.pre = load i64, ptr %i.al, align 8, !tbaa !35 ; 3 uses
  br i1 %i.an, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.ao = xor i64 %.fr21.i, -1                    ; 2 uses
  %i.ap = udiv i64 %i.ao, 1000000
  %.neg.i = xor i64 %i.ap, -1
  %i.aq = add i64 %.pre.pre, %.neg.i              ; 2 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !35
  %i.ar = urem i64 %i.ao, 1000000
  %i.as = sub nuw nsw i64 999999, %i.ar
  br label %do_range_limit.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.at = icmp samesign ugt i64 %.fr21.i, 999999
  br i1 %i.at, label %bb.k, label %do_range_limit.exit

bb.k:                                             ; preds = %bb.j
  %i.au = udiv i64 %.fr21.i, 1000000
  %i.av = add i64 %.pre.pre, %i.au                ; 2 uses
  store i64 %i.av, ptr %i.al, align 8, !tbaa !35
  %i.aw = urem i64 %.fr21.i, 1000000
  br label %do_range_limit.exit.sink.split

do_range_limit.exit.sink.split:                   ; preds = %bb.k, %.thread
  %.sink = phi i64 [ %i.as, %.thread ], [ %i.aw, %bb.k ]
  %.ph = phi i64 [ %i.aq, %.thread ], [ %i.av, %bb.k ]
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !35
  br label %do_range_limit.exit

do_range_limit.exit:                              ; preds = %do_range_limit.exit.sink.split, %bb.j
  %i.ax = phi i64 [ %.pre.pre, %bb.j ], [ %.ph, %do_range_limit.exit.sink.split ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bc = tail call i64 @timelib_hms_to_seconds(i64 noundef %i.az, i64 noundef %i.bb, i64 noundef %i.ax) #9
  %i.bd = mul i64 %i.bc, %spec.select
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38
  %i.bg = sub i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !38
  tail call void @timelib_update_from_sse(ptr noundef nonnull %i.a) #9
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.bi = mul i64 %i.bh, %spec.select
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.bl = sub i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !36
  tail call void @timelib_do_normalize(ptr noundef nonnull %i.a) #9
  tail call void @timelib_update_ts(ptr noundef nonnull %i.a, ptr noundef null) #9
  tail call void @timelib_rel_time_dtor(ptr noundef nonnull %i.aj) #9
  br label %bb.l

bb.l:                                             ; preds = %do_range_limit.exit, %bb.h
  tail call void @timelib_do_normalize(ptr noundef nonnull %i.a) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !21
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  tail call void @timelib_set_timezone(ptr noundef nonnull %i.a, ptr noundef %i.bq) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 0, ptr %i.b, align 4, !tbaa !54
  ret ptr %i.a
}

declare i32 @timelib_get_time_zone_offset_info(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS13_timelib_time", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long long", !8, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"p1 _ZTS15_timelib_tzinfo", !12, i64 0}
!18 = !{!"", !9, i64 0, !15, i64 8}
!19 = !{!"_timelib_rel_time", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !15, i64 72, !18, i64 80, !9, i64 96, !9, i64 100}
!20 = !{!"_timelib_time", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !9, i64 56, !16, i64 64, !17, i64 72, !9, i64 80, !19, i64 88, !15, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232}
!21 = !{!20, !9, i64 232}
!22 = !{!20, !17, i64 72}
!23 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!24 = !{!"long", !8, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40}
!26 = !{!"p1 long", !12, i64 0}
!27 = !{!"p1 _ZTS7_ttinfo", !12, i64 0}
!28 = !{!"p1 _ZTS7_tlinfo", !12, i64 0}
!29 = !{!"double", !8, i64 0}
!30 = !{!"_tlocinfo", !8, i64 0, !29, i64 8, !29, i64 16, !16, i64 24}
!31 = !{!"p1 _ZTS18_timelib_posix_str", !12, i64 0}
!32 = !{!"_timelib_tzinfo", !16, i64 0, !23, i64 8, !25, i64 32, !26, i64 80, !16, i64 88, !27, i64 96, !16, i64 104, !28, i64 112, !8, i64 120, !30, i64 128, !16, i64 160, !31, i64 168}
!33 = !{!32, !16, i64 0}
!34 = !{!19, !9, i64 68}
!35 = !{!15, !15, i64 0}
!36 = !{!20, !15, i64 48}
!37 = !{!19, !15, i64 48}
!38 = !{!20, !15, i64 192}
!39 = !{!19, !15, i64 32}
!40 = !{!19, !15, i64 40}
!41 = !{!19, !15, i64 24}
!42 = !{!19, !15, i64 16}
!43 = !{!20, !15, i64 32}
!44 = !{!20, !15, i64 40}
!45 = !{!20, !15, i64 24}
!46 = !{!19, !9, i64 96}
!47 = !{!19, !9, i64 100}
!48 = !{!19, !15, i64 0}
!49 = !{!20, !15, i64 88}
!50 = !{!19, !15, i64 8}
!51 = !{!20, !15, i64 96}
!52 = !{!20, !15, i64 104}
!53 = !{!20, !15, i64 136}
!54 = !{!20, !9, i64 212}
!55 = !{!20, !9, i64 220}
!56 = !{!20, !9, i64 56}
!57 = !{!19, !15, i64 72}
!58 = !{!20, !9, i64 80}
!59 = !{!9, !9, i64 0}
!60 = !{!20, !15, i64 0}
!61 = !{!20, !15, i64 8}
!62 = !{!20, !15, i64 16}
!63 = !{!29, !29, i64 0}
!64 = !{!20, !15, i64 112}
!65 = !{!20, !15, i64 120}
!66 = !{!20, !15, i64 128}
end_hunk_0
