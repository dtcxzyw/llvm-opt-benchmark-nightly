Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_c_s?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@gres_c_s_init_share_devices:bb.a
  br i1 %i.hq, label %.lr.ph.i.i62, label %_compute_local_id.exit.i

.lr.ph.i.i62:                                     ; preds = %bb.bz, %bb.ca
  %.01623.i.i = phi i32 [ %.016.i.i, %bb.ca ], [ %.01620.i.i, %bb.bz ] ; 3 uses
  %.022.i.i = phi i32 [ %i.hz, %bb.ca ], [ 1, %bb.bz ] ; 2 uses
  %.01521.i.i = phi i32 [ %i.hy, %bb.ca ], [ -1, %bb.bz ] ; 3 uses
  %i.hr = zext nneg i32 %.01623.i.i to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1             ; 2 uses
  %i.hu = add i8 %i.ht, -58
  %or.cond.i.i = icmp ult i8 %i.hu, -10
  br i1 %or.cond.i.i, label %_compute_local_id.exit.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i62
  %i.hv = icmp eq i32 %.01521.i.i, -1
  %spec.store.select.i.i = select i1 %i.hv, i32 0, i32 %.01521.i.i
  %narrow.i.i = add nsw i8 %i.ht, -48
  %i.hw = zext nneg i8 %narrow.i.i to i32
  %i.hx = mul nuw nsw i32 %.022.i.i, %i.hw
  %i.hy = add nsw i32 %i.hx, %spec.store.select.i.i ; 2 uses
  %i.hz = mul nuw nsw i32 %.022.i.i, 10
  %.016.i.i = add nsw i32 %.01623.i.i, -1
  %i.ia = icmp sgt i32 %.01623.i.i, 0
  br i1 %i.ia, label %.lr.ph.i.i62, label %_compute_local_id.exit.i, !llvm.loop !17

_compute_local_id.exit.i:                         ; preds = %bb.ca, %.lr.ph.i.i62, %bb.bz, %bb.by
  %.017.i.i = phi i32 [ -1, %bb.by ], [ -1, %bb.bz ], [ %.01521.i.i, %.lr.ph.i.i62 ], [ %i.hy, %bb.ca ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %.017.i.i, ptr %i.ib, align 8
  %i.ic = load ptr, ptr @shared_info, align 8
  tail call void @slurm_list_append(ptr noundef %i.ic, ptr noundef nonnull %i.hj) #7
  %i.id = load i64, ptr %i.hk, align 8
  %i.ie = add i64 %i.id, %.0.ph.i60
  br label %.outer.i59, !llvm.loop !16

_build_shared_dev_info.exit:                      ; preds = %bb.bw
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.hf) #7
  %i.if = icmp eq i64 %.0.ph.i60, 0
  %or.cond = and i1 %i.j, %i.if
  br i1 %or.cond, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_build_shared_dev_info.exit
  %i.ig = load ptr, ptr %i.ey, align 8
  %i.ih = tail call i32 @slurm_list_delete_all(ptr noundef nonnull %0, ptr noundef nonnull @_remove_shared_recs, ptr noundef %i.ig) #7 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_build_shared_dev_info.exit
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef %., ptr noundef nonnull @.str.4) #7
  tail call void @print_gres_list(ptr noundef %0, i32 noundef %.) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ii = tail call ptr @slurm_get_extra_conf_path(ptr noundef nonnull @.str.15) #7 ; 2 uses
  store ptr %i.ii, ptr %i.a, align 8
  %i.ij = call i32 @stat(ptr noundef %i.ii, ptr noundef nonnull %4) #7
  %i.ik = icmp sgt i32 %i.ij, -1
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %i.ik, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.il = call i32 @slurm_get_log_level() #7
  %i.im = icmp sgt i32 %i.il, 2
  br i1 %i.im, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.gres_c_s_init_share_devices) #7
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @print_gres_list_parsable(ptr noundef %0) #7
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @slurm_get_log_level() local_unnamed_addr #1

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @print_gres_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @slurm_fatal(ptr noundef, ...) local_unnamed_addr #3

declare i32 @gres_node_config_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_remove_shared_recs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @slurm_xstrcmp(ptr noundef %i.b, ptr noundef %1) #7
  %.not = icmp eq i32 %i.c, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare void @print_gres_list_parsable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @gres_c_s_send_stepd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @shared_info, align 8      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_pack32(i32 noundef 0, ptr noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @slurm_list_count(ptr noundef nonnull %i.a) #7
  tail call void @slurm_pack32(i32 noundef %i.b, ptr noundef %0) #7
  %i.c = load ptr, ptr @shared_info, align 8
  %i.d = tail call ptr @slurm_list_iterator_create(ptr noundef %i.c) #7 ; 3 uses
  %i.e = tail call ptr @slurm_list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not1011 = icmp eq ptr %i.e, null
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  tail call void @slurm_pack64(i64 noundef %i.g, ptr noundef %0) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  tail call void @slurm_pack64(i64 noundef %i.j, ptr noundef %0) #7
  %i.k = tail call ptr @slurm_list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare void @slurm_pack32(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_count(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_iterator_create(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_next(ptr noundef) local_unnamed_addr #1

declare void @slurm_pack64(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_list_iterator_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gres_c_s_recv_stepd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 @slurm_unpack32(ptr noundef nonnull %i.c, ptr noundef %0) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @shared_info, align 8      ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @slurm_list_destroy(ptr noundef nonnull %i.f) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr @shared_info, align 8
  %i.g = call ptr @slurm_list_create(ptr noundef nonnull @slurm_xfree_ptr) #7
  store ptr %i.g, ptr @shared_info, align 8
  %i.h = load i32, ptr %i.c, align 4
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.012 = phi i32 [ %i.q, %bb.g ], [ 0, %bb.e ]
  %i.i = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 558, ptr noundef nonnull @__func__.gres_c_s_recv_stepd) #7 ; 4 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call i32 @slurm_unpack64(ptr noundef nonnull %i.b, ptr noundef %0) #7
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.k = load i64, ptr %i.b, align 8
  store i64 %i.k, ptr %i.i, align 8
  %i.l = call i32 @slurm_unpack64(ptr noundef nonnull %i.b, ptr noundef %0) #7
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.m = load i64, ptr %i.b, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr @shared_info, align 8
  call void @slurm_list_append(ptr noundef %i.p, ptr noundef nonnull %i.i) #7
  %i.q = add nuw i32 %.012, 1                     ; 2 uses
  %i.r = load i32, ptr %i.c, align 4
  %i.s = icmp ult i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !19

.thread:                                          ; preds = %bb.f, %.lr.ph, %bb.a
  %i.t = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.7) #7 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.b, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @slurm_unpack32(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_create(ptr noundef) local_unnamed_addr #1

declare void @slurm_xfree_ptr(ptr noundef) #1

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_unpack64(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_error(ptr noundef, ...) local_unnamed_addr #1

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #1

declare void @slurm_destroy_gres_slurmd_conf(ptr noundef) #1

declare i32 @slurm_xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_remove(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_create(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_shift(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_bit_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @slurm_hostlist_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_delete_item(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_hostlist_count(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_peek(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_flush(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_pop(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_remove_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_find_matching_file_gres(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @slurm_xstrcmp(ptr noundef %i.b, ptr noundef %i.d) #7
  %.not = icmp eq i32 %i.e, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_create_shared_rec(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 88, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 46, ptr noundef nonnull @__func__._create_shared_rec) #7 ; 13 uses
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  store i32 %i.b, ptr %i.a, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8
  %i.d = tail call zeroext i1 @gres_id_shared(i32 noundef %i.c) #7
  %.pre = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 8
  %i.f = or i32 %.pre, %i.e
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.h = or i32 %i.g, 512
  store i32 %i.h, ptr %i.a, align 8
  %i.i = tail call i32 @slurm_xstrcasecmp(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 8
  %i.k = or i32 %i.j, 1024
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi i32 [ %i.k, %bb.e ], [ %i.f, %bb.c ]
  store i32 %.sink, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @slurm_xstrdup(ptr noundef %i.p) #7
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @slurm_bit_copy(ptr noundef nonnull %i.t) #7
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.u, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @slurm_xstrdup(ptr noundef %i.x) #7
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = tail call ptr @slurm_xstrdup(ptr noundef %1) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = tail call i32 @gres_build_id(ptr noundef %1) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr @slurm_xstrdup(ptr noundef %i.af) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ag, ptr %i.ah, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_delete_leftovers(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.14, ptr noundef %i.b) #7 ; 0 uses
  ret i32 1
}

declare zeroext i1 @gres_id_shared(i32 noundef) local_unnamed_addr #1

declare i32 @slurm_xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gres_build_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @slurm_get_extra_conf_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
end_hunk_0
