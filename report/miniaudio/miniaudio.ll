Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_data_source_get_loop_point_in_pcm_frames:bb.a

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !592
  store i64 %i.c, ptr %1, align 8, !tbaa !164
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !360
  store i64 %i.e, ptr %2, align 8, !tbaa !164
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_current(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !361
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_current(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !361
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_next(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.b, align 8, !tbaa !587
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_next(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !587
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_next_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_next_callback(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_init(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr @g_ma_audio_buffer_ref_data_source_vtable, ptr %4, align 8, !tbaa !358
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.c, align 8, !tbaa !359
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.d, align 8, !tbaa !360
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.e, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %0, ptr %i.g, align 8, !tbaa !599
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %1, ptr %i.h, align 4, !tbaa !600
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !601
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %3, ptr %i.j, align 8, !tbaa !602
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %2, ptr %i.k, align 8, !tbaa !603
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ma_audio_buffer_ref_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_set_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.b, align 8, !tbaa !601
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.c, align 8, !tbaa !602
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.d, align 8, !tbaa !603
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ma_audio_buffer_ref_read_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not42 = icmp eq i32 %3, 0                     ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !602  ; 6 uses
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !601 ; 4 uses
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not42, label %ma_copy_pcm_frames.exit.us.us, label %ma_copy_pcm_frames.exit.us

ma_copy_pcm_frames.exit.us.us:                    ; preds = %.preheader.split.us, %ma_copy_pcm_frames.exit.us.us
  %i.i = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us ], [ %.promoted, %.preheader.split.us ] ; 2 uses
  %.03545.us.us = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us ], [ 0, %.preheader.split.us ] ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sub nuw i64 %2, %.03545.us.us
  %spec.select.us.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.j) ; 2 uses
  %i.l = add i64 %spec.select.us.us, %.03545.us.us ; 3 uses
  %i.m = add i64 %i.i, %spec.select.us.us         ; 3 uses
  %i.n = icmp ne i64 %i.m, %i.h
  %i.o = icmp ult i64 %i.l, %2
  %or.cond59 = and i1 %i.n, %i.o
  br i1 %or.cond59, label %ma_copy_pcm_frames.exit.us.us, label %.thread.loopexit.split.us

ma_copy_pcm_frames.exit.us:                       ; preds = %.preheader.split.us, %ma_copy_pcm_frames.exit.us
  %i.p = phi i64 [ %spec.select58, %ma_copy_pcm_frames.exit.us ], [ %.promoted, %.preheader.split.us ] ; 2 uses
  %.03545.us = phi i64 [ %i.s, %ma_copy_pcm_frames.exit.us ], [ 0, %.preheader.split.us ] ; 2 uses
  %i.q = sub i64 %i.h, %i.p
  %i.r = sub nuw i64 %2, %.03545.us
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  %i.s = add i64 %spec.select.us, %.03545.us      ; 3 uses
  %i.t = add i64 %i.p, %spec.select.us            ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.h
  %spec.select58 = select i1 %i.u, i64 0, i64 %i.t ; 2 uses
  %i.v = icmp ult i64 %i.s, %2
  br i1 %i.v, label %ma_copy_pcm_frames.exit.us, label %.thread.loopexit.split.us

.thread.loopexit.split.us:                        ; preds = %ma_copy_pcm_frames.exit.us, %ma_copy_pcm_frames.exit.us.us
  %.us-phi52 = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us ], [ %spec.select58, %ma_copy_pcm_frames.exit.us ]
  %.us-phi53 = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us ], [ %i.s, %ma_copy_pcm_frames.exit.us ]
  store i64 %.us-phi52, ptr %i.d, align 8, !tbaa !601
  br label %.thread

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not42, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %ma_copy_pcm_frames.exit.us48
  %i.w = phi i64 [ %i.ao, %ma_copy_pcm_frames.exit.us48 ], [ %i.h, %.preheader.split ] ; 2 uses
  %i.x = phi i64 [ %i.ar, %ma_copy_pcm_frames.exit.us48 ], [ %.promoted, %.preheader.split ] ; 3 uses
  %.03545.us46 = phi i64 [ %i.aq, %ma_copy_pcm_frames.exit.us48 ], [ 0, %.preheader.split ] ; 3 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = sub nuw i64 %2, %.03545.us46
  %spec.select.us47 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 3 uses
  %4 = load i32, ptr %i.e, align 8, !tbaa !599
  %5 = load i32, ptr %i.f, align 4, !tbaa !600
  %i.aa = zext i32 %4 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.ad = mul i32 %i.ac, %5
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  %i.af = mul i64 %.03545.us46, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 2 uses
  %6 = load ptr, ptr %i.g, align 8, !tbaa !603
  %i.ah = mul i64 %i.x, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 %i.ah ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  %i.ak = mul i64 %spec.select.us47, %i.ae        ; 2 uses
  %.not.i7.i.us = icmp eq i64 %i.ak, 0
  %or.cond44.us = select i1 %i.aj, i1 true, i1 %.not.i7.i.us
  br i1 %or.cond44.us, label %ma_copy_pcm_frames.exit.us48, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.split.split.us, %.lr.ph.i.us
  %.0.i10.i.us = phi ptr [ %i.am, %.lr.ph.i.us ], [ %i.ag, %.preheader.split.split.us ] ; 2 uses
  %.011.i9.i.us = phi i64 [ %i.al, %.lr.ph.i.us ], [ %i.ak, %.preheader.split.split.us ] ; 2 uses
  %.012.i8.i.us = phi ptr [ %i.an, %.lr.ph.i.us ], [ %i.ai, %.preheader.split.split.us ] ; 2 uses
  %spec.store.select.i.i.us = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.us, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.us, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.us, i64 %spec.store.select.i.i.us, i1 false)
  %i.al = sub nuw i64 %.011.i9.i.us, %spec.store.select.i.i.us ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i10.i.us, i64 %spec.store.select.i.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i8.i.us, i64 %spec.store.select.i.i.us
  %.not.i.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.us, label %ma_copy_pcm_frames.exit.us48.loopexit, label %.lr.ph.i.us, !llvm.loop !12

ma_copy_pcm_frames.exit.us48.loopexit:            ; preds = %.lr.ph.i.us
  %.pre72.a = load i64, ptr %i.d, align 8, !tbaa !601
  %.pre73 = load i64, ptr %i.c, align 8, !tbaa !602
  br label %ma_copy_pcm_frames.exit.us48

ma_copy_pcm_frames.exit.us48:                     ; preds = %ma_copy_pcm_frames.exit.us48.loopexit, %.preheader.split.split.us
  %i.ao = phi i64 [ %.pre73, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %i.w, %.preheader.split.split.us ] ; 2 uses
  %i.ap = phi i64 [ %.pre72.a, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %i.x, %.preheader.split.split.us ]
  %i.aq = add i64 %spec.select.us47, %.03545.us46 ; 3 uses
  %i.ar = add i64 %i.ap, %spec.select.us47        ; 3 uses
  store i64 %i.ar, ptr %i.d, align 8, !tbaa !601
  %i.as = icmp ne i64 %i.ar, %i.ao
  %i.at = icmp ult i64 %i.aq, %2
  %or.cond60 = and i1 %i.as, %i.at
  br i1 %or.cond60, label %.preheader.split.split.us, label %.thread

.preheader.split.split:                           ; preds = %.preheader.split, %ma_copy_pcm_frames.exit
  %i.au = phi i64 [ %i.bm, %ma_copy_pcm_frames.exit ], [ %i.h, %.preheader.split ] ; 2 uses
  %i.av = phi i64 [ %spec.store.select, %ma_copy_pcm_frames.exit ], [ %.promoted, %.preheader.split ] ; 3 uses
  %.03545 = phi i64 [ %i.bo, %ma_copy_pcm_frames.exit ], [ 0, %.preheader.split ] ; 3 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sub nuw i64 %2, %.03545
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.aw) ; 3 uses
  %7 = load i32, ptr %i.e, align 8, !tbaa !599
  %8 = load i32, ptr %i.f, align 4, !tbaa !600
  %i.ay = zext i32 %7 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !118
  %i.bb = mul i32 %i.ba, %8
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = mul i64 %.03545, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 2 uses
  %9 = load ptr, ptr %i.g, align 8, !tbaa !603
  %i.bf = mul i64 %i.av, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 %i.bf ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.bg
  %i.bi = mul i64 %spec.select, %i.bc             ; 2 uses
  %.not.i7.i = icmp eq i64 %i.bi, 0
  %or.cond44 = select i1 %i.bh, i1 true, i1 %.not.i7.i
  br i1 %or.cond44, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.split, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.be, %.preheader.split.split ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.bi, %.preheader.split.split ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.bg, %.preheader.split.split ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.bj = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre68.a = load i64, ptr %i.d, align 8, !tbaa !601
  %.pre69 = load i64, ptr %i.c, align 8, !tbaa !602
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %.preheader.split.split
  %i.bm = phi i64 [ %.pre69, %ma_copy_pcm_frames.exit.loopexit ], [ %i.au, %.preheader.split.split ] ; 2 uses
  %i.bn = phi i64 [ %.pre68.a, %ma_copy_pcm_frames.exit.loopexit ], [ %i.av, %.preheader.split.split ]
  %i.bo = add i64 %spec.select, %.03545           ; 3 uses
  %i.bp = add i64 %i.bn, %spec.select             ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bm
  %spec.store.select = select i1 %i.bq, i64 0, i64 %i.bp ; 2 uses
  store i64 %spec.store.select, ptr %i.d, align 8, !tbaa !601
  %i.br = icmp ult i64 %i.bo, %2
  br i1 %i.br, label %.preheader.split.split, label %.thread

.thread:                                          ; preds = %ma_copy_pcm_frames.exit, %ma_copy_pcm_frames.exit.us48, %.thread.loopexit.split.us, %bb.a
  %.036 = phi i64 [ 0, %bb.a ], [ %.us-phi53, %.thread.loopexit.split.us ], [ %i.aq, %ma_copy_pcm_frames.exit.us48 ], [ %i.bo, %ma_copy_pcm_frames.exit ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_seek_to_pcm_frame(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8, !tbaa !602
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.e, align 8, !tbaa !601
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_map(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i64, ptr %2, align 8, !tbaa !164
  store i64 0, ptr %2, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !602
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !601  ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !603
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !599
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !600
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !118
  %i.q = mul i32 %i.p, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.f, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !134
  store i64 %spec.select, ptr %2, align 8, !tbaa !164
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.023 = phi i32 [ 0, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -17, 1) i32 @ma_audio_buffer_ref_unmap(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8, !tbaa !602  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !601  ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.e, %1                         ; 2 uses
  store i64 %i.h, ptr %i.d, align 8, !tbaa !601
  %i.i = icmp eq i64 %i.h, %i.c
  %. = select i1 %i.i, i32 -17, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_audio_buffer_ref_at_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !601
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !602
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_cursor_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !601
  store i64 %i.d, ptr %1, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_length_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !602
  store i64 %i.d, ptr %1, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_available_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !602
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !601
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f)
  store i64 %storemerge, ptr %1, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}
end_hunk_0
begin_hunk_1_@ma_pcm_rb_data_source__on_read:bb.a
  %i.ai = icmp ugt i32 %i.ag, %i.y
  br i1 %i.ai, label %ma_pcm_rb_commit_read.exit.thread53, label %bb.e

bb.e:                                             ; preds = %ma_pcm_rb_acquire_read.exit
  %i.aj = and i32 %i.aa, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = zext i32 %i.ag to i64                   ; 2 uses
  %i.an = mul i64 %.03158, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = zext i32 %i.ah to i64                   ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.al
  br i1 %i.aq, label %ma_copy_pcm_frames.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ar = mul nuw i64 %i.am, %i.ap
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.as, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.preheader ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.as = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.c, align 8, !tbaa !355
  %.pre61 = load i32, ptr %i.d, align 4, !tbaa !356
  %.phi.trans.insert = zext i32 %.pre to i64
  %.phi.trans.insert62 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %.phi.trans.insert
  %.pre63 = load i32, ptr %.phi.trans.insert62, align 4, !tbaa !118
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %bb.e
  %i.av = phi i32 [ %.pre63, %ma_copy_pcm_frames.exit.loopexit ], [ %i.af, %bb.e ]
  %i.aw = phi i32 [ %.pre61, %ma_copy_pcm_frames.exit.loopexit ], [ %i.ac, %bb.e ]
  %i.ax = mul i32 %i.aw, %i.ah
  %i.ay = mul i32 %i.ax, %i.av
  %i.az = load atomic i32, ptr %i.g seq_cst, align 4 ; 2 uses
  %i.ba = and i32 %i.az, 2147483647
  %i.bb = add i32 %i.ba, %i.ay                    ; 3 uses
  %i.bc = load i32, ptr %i.h, align 8, !tbaa !352 ; 2 uses
  %i.bd = icmp ugt i32 %i.bb, %i.bc
  br i1 %i.bd, label %ma_pcm_rb_commit_read.exit.thread53, label %ma_pcm_rb_commit_read.exit

ma_pcm_rb_commit_read.exit:                       ; preds = %ma_copy_pcm_frames.exit
  %i.be = and i32 %i.az, -2147483648              ; 2 uses
  %i.bf = icmp eq i32 %i.bb, %i.bc
  %i.bg = xor i32 %i.be, -2147483648
  %i.bh = or i32 %i.bb, %i.be
  %i.bi = select i1 %i.bf, i32 %i.bg, i32 %i.bh
  %i.bj = atomicrmw xchg ptr %i.g, i32 %i.bi seq_cst, align 4 ; 0 uses
  %i.bk = add i64 %.03158, %i.ap                  ; 3 uses
  %.not = icmp ult i64 %i.bk, %2
  br i1 %.not, label %bb.b, label %ma_pcm_rb_commit_read.exit.thread53

ma_pcm_rb_commit_read.exit.thread53:              ; preds = %ma_pcm_rb_commit_read.exit, %ma_pcm_rb_acquire_read.exit, %ma_copy_pcm_frames.exit, %bb.a
  %.031.lcssa = phi i64 [ 0, %bb.a ], [ %.03158, %ma_copy_pcm_frames.exit ], [ %.03158, %ma_pcm_rb_acquire_read.exit ], [ %i.bk, %ma_pcm_rb_commit_read.exit ] ; 4 uses
  %i.bl = icmp ult i64 %.031.lcssa, %2
  br i1 %i.bl, label %bb.f, label %ma_silence_pcm_frames.exit

bb.f:                                             ; preds = %ma_pcm_rb_commit_read.exit.thread53
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !355 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !356 ; 2 uses
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !118
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = mul i64 %.031.lcssa, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bx = sub nuw i64 %2, %.031.lcssa             ; 2 uses
  %i.by = icmp eq i32 %i.bn, 1
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = zext i32 %i.bp to i64
  %i.ca = mul i64 %i.bx, %i.bz                    ; 2 uses
  %.not18.i = icmp eq i64 %i.ca, 0
  br i1 %.not18.i, label %ma_silence_pcm_frames.exit, label %.lr.ph17.preheader.i

.lr.ph17.preheader.i:                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 -128, i64 %i.ca, i1 false), !tbaa !119
  br label %ma_silence_pcm_frames.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = mul i64 %i.bx, %i.bu                    ; 2 uses
  %.not.i13.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.h, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.cd, %ma_zero_memory_default.exit.i.i ], [ %i.bw, %bb.h ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.cc, %ma_zero_memory_default.exit.i.i ], [ %i.cb, %bb.h ] ; 2 uses
  %spec.store.select.i.i38 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i, label %ma_zero_memory_default.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i38, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.i, %.lr.ph.i37
  %i.cc = sub nuw i64 %.08.i14.i, %spec.store.select.i.i38 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i38
  %.not.i.i39 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i39, label %ma_silence_pcm_frames.exit, label %.lr.ph.i37, !llvm.loop !7

ma_silence_pcm_frames.exit:                       ; preds = %ma_zero_memory_default.exit.i.i, %bb.h, %.lr.ph17.preheader.i, %bb.g, %ma_pcm_rb_commit_read.exit.thread53
  %.3 = phi i64 [ %.031.lcssa, %ma_pcm_rb_commit_read.exit.thread53 ], [ %2, %bb.g ], [ %2, %.lr.ph17.preheader.i ], [ %2, %bb.h ], [ %2, %ma_zero_memory_default.exit.i.i ]
  store i64 %.3, ptr %3, align 8, !tbaa !164
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_pcm_rb_data_source__on_get_data_format(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5) #20 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !355
  store i32 %i.b, ptr %1, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !356
  store i32 %i.d, ptr %2, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !357
  store i32 %i.f, ptr %3, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %ma_channel_map_init_standard.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !356  ; 3 uses
  %i.i = icmp eq i64 %5, 0
  %i.j = icmp eq i32 %i.h, 0
  %or.cond3.i = or i1 %i.i, %i.j
  br i1 %or.cond3.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.024.i = phi i32 [ %i.n, %.preheader.i ], [ 0, %bb.h ] ; 2 uses
  %.01723.i = phi ptr [ %i.l, %.preheader.i ], [ %4, %bb.h ] ; 2 uses
  %.01822.i = phi i64 [ %i.m, %.preheader.i ], [ %5, %bb.h ]
  %i.k = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.h, i32 noundef %.024.i)
  store i8 %i.k, ptr %.01723.i, align 1, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.m = add i64 %.01822.i, -1                    ; 2 uses
  %i.n = add nuw i32 %.024.i, 1                   ; 2 uses
  %i.o = icmp uge i32 %i.n, %i.h
  %i.p = icmp eq i64 %i.m, 0
  %or.cond5.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i, !llvm.loop !5

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.h, %bb.g
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #59

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #60

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -17, 1) i32 @ma_audio_buffer_ref__data_source_on_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %ma_audio_buffer_ref_read_pcm_frames.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.c, align 8, !tbaa !602  ; 3 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !tbaa !601 ; 2 uses
  br i1 %.not.i, label %ma_copy_pcm_frames.exit.us.us.i, label %.preheader.split.split.us.i

ma_copy_pcm_frames.exit.us.us.i:                  ; preds = %.preheader.i, %ma_copy_pcm_frames.exit.us.us.i
  %i.i = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us.i ], [ %.promoted.i, %.preheader.i ] ; 2 uses
  %.03545.us.us.i = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sub nuw i64 %2, %.03545.us.us.i
  %spec.select.us.us.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.j) ; 2 uses
  %i.l = add i64 %spec.select.us.us.i, %.03545.us.us.i ; 3 uses
  %i.m = add i64 %spec.select.us.us.i, %i.i       ; 3 uses
  %i.n = icmp ne i64 %i.m, %i.h
  %i.o = icmp ult i64 %i.l, %2
  %or.cond59.i = and i1 %i.n, %i.o
  br i1 %or.cond59.i, label %ma_copy_pcm_frames.exit.us.us.i, label %.thread.loopexit.split.us.i

.thread.loopexit.split.us.i:                      ; preds = %ma_copy_pcm_frames.exit.us.us.i
  store i64 %i.m, ptr %i.d, align 8, !tbaa !601
  br label %ma_audio_buffer_ref_read_pcm_frames.exit

.preheader.split.split.us.i:                      ; preds = %.preheader.i, %ma_copy_pcm_frames.exit.us48.i
  %i.p = phi i64 [ %i.ah, %ma_copy_pcm_frames.exit.us48.i ], [ %i.h, %.preheader.i ] ; 2 uses
  %i.q = phi i64 [ %i.ak, %ma_copy_pcm_frames.exit.us48.i ], [ %.promoted.i, %.preheader.i ] ; 3 uses
  %.03545.us46.i = phi i64 [ %i.aj, %ma_copy_pcm_frames.exit.us48.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = sub nuw i64 %2, %.03545.us46.i
  %spec.select.us47.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 3 uses
  %4 = load i32, ptr %i.e, align 8, !tbaa !599
  %5 = load i32, ptr %i.f, align 4, !tbaa !600
  %i.t = zext i32 %4 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !118
  %i.w = mul i32 %i.v, %5
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %i.y = mul i64 %.03545.us46.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %6 = load ptr, ptr %i.g, align 8, !tbaa !603
  %i.aa = mul i64 %i.q, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %i.aa ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  %i.ad = mul i64 %spec.select.us47.i, %i.x       ; 2 uses
  %.not.i7.i.us.i = icmp eq i64 %i.ad, 0
  %or.cond44.us.i = select i1 %i.ac, i1 true, i1 %.not.i7.i.us.i
  br i1 %or.cond44.us.i, label %ma_copy_pcm_frames.exit.us48.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.preheader.split.split.us.i, %.lr.ph.i.us.i
  %.0.i10.i.us.i = phi ptr [ %i.af, %.lr.ph.i.us.i ], [ %i.z, %.preheader.split.split.us.i ] ; 2 uses
  %.011.i9.i.us.i = phi i64 [ %i.ae, %.lr.ph.i.us.i ], [ %i.ad, %.preheader.split.split.us.i ] ; 2 uses
  %.012.i8.i.us.i = phi ptr [ %i.ag, %.lr.ph.i.us.i ], [ %i.ab, %.preheader.split.split.us.i ] ; 2 uses
  %spec.store.select.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.us.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.us.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.us.i, i64 %spec.store.select.i.i.us.i, i1 false)
  %i.ae = sub nuw i64 %.011.i9.i.us.i, %spec.store.select.i.i.us.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10.i.us.i, i64 %spec.store.select.i.i.us.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i8.i.us.i, i64 %spec.store.select.i.i.us.i
  %.not.i.i.us.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.us.i, label %ma_copy_pcm_frames.exit.us48.loopexit.i, label %.lr.ph.i.us.i, !llvm.loop !12

ma_copy_pcm_frames.exit.us48.loopexit.i:          ; preds = %.lr.ph.i.us.i
  %.pre72.i = load i64, ptr %i.d, align 8, !tbaa !601
  %.pre73.i = load i64, ptr %i.c, align 8, !tbaa !602
  br label %ma_copy_pcm_frames.exit.us48.i

ma_copy_pcm_frames.exit.us48.i:                   ; preds = %ma_copy_pcm_frames.exit.us48.loopexit.i, %.preheader.split.split.us.i
  %i.ah = phi i64 [ %.pre73.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %i.p, %.preheader.split.split.us.i ] ; 2 uses
  %i.ai = phi i64 [ %.pre72.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %i.q, %.preheader.split.split.us.i ]
  %i.aj = add i64 %spec.select.us47.i, %.03545.us46.i ; 3 uses
  %i.ak = add i64 %i.ai, %spec.select.us47.i      ; 3 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !601
  %i.al = icmp ne i64 %i.ak, %i.ah
  %i.am = icmp ult i64 %i.aj, %2
  %or.cond60.i = and i1 %i.am, %i.al
  br i1 %or.cond60.i, label %.preheader.split.split.us.i, label %ma_audio_buffer_ref_read_pcm_frames.exit

ma_audio_buffer_ref_read_pcm_frames.exit:         ; preds = %ma_copy_pcm_frames.exit.us48.i, %bb.a, %.thread.loopexit.split.us.i
  %.036.i = phi i64 [ 0, %bb.a ], [ %i.l, %.thread.loopexit.split.us.i ], [ %i.aj, %ma_copy_pcm_frames.exit.us48.i ] ; 3 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ma_audio_buffer_ref_read_pcm_frames.exit
  store i64 %.036.i, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_audio_buffer_ref_read_pcm_frames.exit
  %i.an = icmp ult i64 %.036.i, %2
  %i.ao = icmp eq i64 %.036.i, 0
  %or.cond = or i1 %i.an, %i.ao
  %. = select i1 %or.cond, i32 -17, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -2, 1) i32 @ma_audio_buffer_ref__data_source_on_seek(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_audio_buffer_ref_seek_to_pcm_frame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8, !tbaa !602
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %ma_audio_buffer_ref_seek_to_pcm_frame.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.e, align 8, !tbaa !601
  br label %ma_audio_buffer_ref_seek_to_pcm_frame.exit

ma_audio_buffer_ref_seek_to_pcm_frame.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_audio_buffer_ref__data_source_on_get_data_format(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !599
  store i32 %i.b, ptr %1, align 4, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !600
  store i32 %i.d, ptr %2, align 4, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3172
  store i32 %i.f, ptr %3, align 4, !tbaa !118
  %i.g = load i32, ptr %i.c, align 4, !tbaa !600  ; 3 uses
  %i.h = icmp eq ptr %4, null
  %i.i = icmp eq i64 %5, 0
  %or.cond.i = or i1 %i.h, %i.i
  %i.j = icmp eq i32 %i.g, 0
  %or.cond3.i = or i1 %or.cond.i, %i.j
  br i1 %or.cond3.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.024.i = phi i32 [ %i.n, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.01723.i = phi ptr [ %i.l, %.preheader.i ], [ %4, %bb.a ] ; 2 uses
  %.01822.i = phi i64 [ %i.m, %.preheader.i ], [ %5, %bb.a ]
  %i.k = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.g, i32 noundef %.024.i)
  store i8 %i.k, ptr %.01723.i, align 1, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.m = add i64 %.01822.i, -1                    ; 2 uses
  %i.n = add nuw i32 %.024.i, 1                   ; 2 uses
  %i.o = icmp uge i32 %i.n, %i.g
  %i.p = icmp eq i64 %i.m, 0
  %or.cond5.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i, !llvm.loop !5

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_audio_buffer_ref__data_source_on_get_cursor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !601
  store i64 %i.b, ptr %1, align 8, !tbaa !164
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_audio_buffer_ref__data_source_on_get_length(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !602
  store i64 %i.b, ptr %1, align 8, !tbaa !164
  ret i32 0
}

; Function Attrs: norecurse nounwind uwtable
define internal range(i32 -17, 1) i32 @ma_paged_audio_buffer__data_source_on_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_paged_audio_buffer_read_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not64.i = icmp eq i64 %2, 0
  br i1 %.not64.i, label %select.unfold.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !624  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !618
  %i.f = load i32, ptr %i.c, align 8, !tbaa !617
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !118
  %i.l = mul i32 %i.k, %i.e
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !625
  %.pre65.i = load i64, ptr %i.h, align 8, !tbaa !626
  br label %bb.c

bb.c:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %i.o = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.ap, %select.unfold.i ] ; 3 uses
  %i.p = phi i64 [ %.pre65.i, %.lr.ph.i ], [ %i.aq, %select.unfold.i ] ; 3 uses
  %.04359.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %select.unfold.i ] ; 3 uses
  %i.q = sub nuw i64 %2, %.04359.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !620  ; 2 uses
  %i.t = sub i64 %i.s, %i.p
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.v = mul i64 %.04359.i, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = mul i64 %i.p, %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = icmp eq ptr %i.w, %i.z
  %i.ab = mul i64 %i.u, %i.m                      ; 2 uses
  %.not.i7.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = select i1 %i.aa, i1 true, i1 %.not.i7.i.i
  br i1 %or.cond.i, label %ma_copy_pcm_frames.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i10.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i9.i.i = phi i64 [ %i.ac, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %.012.i8.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.z, %bb.c ] ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.i, i64 %spec.store.select.i.i.i, i1 false)
  %i.ac = sub nuw i64 %.011.i9.i.i, %spec.store.select.i.i.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i10.i.i, i64 %spec.store.select.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i8.i.i, i64 %spec.store.select.i.i.i
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %ma_copy_pcm_frames.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !12

ma_copy_pcm_frames.exit.loopexit.i:               ; preds = %.lr.ph.i.i
  %.pre66.i = load i64, ptr %i.h, align 8, !tbaa !626
  %.pre67.i = load ptr, ptr %i.g, align 8, !tbaa !625 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre67.i, i64 8
  %.pre68.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !620
  br label %ma_copy_pcm_frames.exit.i

ma_copy_pcm_frames.exit.i:                        ; preds = %ma_copy_pcm_frames.exit.loopexit.i, %bb.c
  %i.af = phi i64 [ %.pre68.i, %ma_copy_pcm_frames.exit.loopexit.i ], [ %i.s, %bb.c ]
  %i.ag = phi ptr [ %.pre67.i, %ma_copy_pcm_frames.exit.loopexit.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ah = phi i64 [ %.pre66.i, %ma_copy_pcm_frames.exit.loopexit.i ], [ %i.p, %bb.c ]
  %i.ai = add i64 %i.u, %.04359.i                 ; 4 uses
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !627
  %i.ak = add i64 %i.aj, %i.u
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !627
  %i.al = add i64 %i.ah, %i.u                     ; 3 uses
  store i64 %i.al, ptr %i.h, align 8, !tbaa !626
  %i.am = icmp eq i64 %i.al, %i.af
  br i1 %i.am, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %ma_copy_pcm_frames.exit.i
  %i.an = load atomic volatile i64, ptr %i.ag seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %select.unfold.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !625
  store i64 0, ptr %i.h, align 8, !tbaa !626
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.e, %ma_copy_pcm_frames.exit.i
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ %i.ag, %ma_copy_pcm_frames.exit.i ]
  %i.aq = phi i64 [ 0, %bb.e ], [ %i.al, %ma_copy_pcm_frames.exit.i ]
  %i.ar = icmp ult i64 %i.ai, %2
  br i1 %i.ar, label %bb.c, label %select.unfold.thread.i

end_hunk_1
begin_hunk_2_@ma_node_input_bus_read_pcm_frames:bb.a
  %.val85 = load i64, ptr %i.ck, align 8, !tbaa !154
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !959
  %reass.sub = sub i64 %i.eq, %.val85
  %i.er = add i64 %reass.sub, -8
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !959
  %i.es = add i32 %.pre.pre, %i.bp                ; 2 uses
  %.not83 = icmp eq i32 %i.cq, 0
  %i.et = icmp ne i32 %.pre.pre, 0
  %i.eu = select i1 %.not83, i1 %i.et, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br i1 %i.eu, label %.preheader.split, label %.split.us

.split.us:                                        ; preds = %.preheader.split, %ma_stack_alloc.exit.thread, %ma_stack_alloc.exit.thread.us, %ma_stack_alloc.exit.thread.thread
  %i.ev = phi i32 [ %i.bl, %ma_stack_alloc.exit.thread.us ], [ %i.bp, %ma_stack_alloc.exit.thread.thread ], [ %i.es, %ma_stack_alloc.exit.thread ], [ %i.bp, %.preheader.split ] ; 3 uses
  %.us-phi104 = phi i32 [ %i.bj, %ma_stack_alloc.exit.thread.us ], [ %.172, %ma_stack_alloc.exit.thread.thread ], [ %i.cq, %ma_stack_alloc.exit.thread ], [ %.172, %.preheader.split ] ; 3 uses
  %i.ew = icmp eq ptr %.070110, %i.l
  %i.ex = icmp ult i32 %i.ev, %3
  %or.cond = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond, label %bb.i, label %ma_silence_pcm_frames.exit

bb.i:                                             ; preds = %.split.us
  %i.ey = sub nuw i32 %3, %i.ev
  %i.ez = zext i32 %i.ey to i64
  %i.fa = mul nuw nsw i64 %i.ez, %i.v             ; 2 uses
  %.not.i13.i = icmp eq i64 %i.fa, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit.i.i.preheader

ma_zero_memory_default.exit.i.i.preheader:        ; preds = %bb.i
  %i.fb = zext i32 %i.ev to i64
  %i.fc = mul nuw nsw i64 %i.fb, %i.v
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_zero_memory_default.exit.i.i.preheader, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ff, %ma_zero_memory_default.exit.i.i ], [ %i.fd, %ma_zero_memory_default.exit.i.i.preheader ] ; 2 uses
  %.08.i14.i = phi i64 [ %i.fe, %ma_zero_memory_default.exit.i.i ], [ %i.fa, %ma_zero_memory_default.exit.i.i.preheader ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i, i1 false)
  %i.fe = sub nuw nsw i64 %.08.i14.i, %spec.store.select.i.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit.i.i, !llvm.loop !7

ma_silence_pcm_frames.exit:                       ; preds = %ma_zero_memory_default.exit.i.i, %.preheader.split.us, %bb.i, %.split.us
  %.us-phi104155 = phi i32 [ %.071109, %.preheader.split.us ], [ %.us-phi104, %.split.us ], [ %.us-phi104, %bb.i ], [ %.us-phi104, %ma_zero_memory_default.exit.i.i ] ; 2 uses
  %spec.select84 = select i1 %i.az, i32 %.069113.fr, i32 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.fg = atomicrmw add ptr %i.e, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %ma_silence_pcm_frames.exit
  %.013.i = phi ptr [ %.070110, %ma_silence_pcm_frames.exit ], [ %i.fj, %bb.k ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.fi = load atomic volatile i64, ptr %i.fh seq_cst, align 8 ; 2 uses
  %cond.i = icmp eq i64 %i.fi, 0
  br i1 %cond.i, label %._crit_edge.loopexit125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fj = inttoptr i64 %i.fi to ptr               ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fl = load atomic i32, ptr %i.fk seq_cst, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.j, label %ma_node_input_bus_next.exit

ma_node_input_bus_next.exit:                      ; preds = %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fo = atomicrmw add ptr %i.fn, i32 1 seq_cst, align 8 ; 0 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.070110, i64 16
  %i.fq = atomicrmw add ptr %i.fp, i32 -1 seq_cst, align 8 ; 0 uses
  %i.fr = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  br label %.preheader, !llvm.loop !3181

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.fs = getelementptr inbounds nuw i8, ptr %.070110.us, i64 16
  %i.ft = atomicrmw add ptr %i.fs, i32 -1 seq_cst, align 8 ; 0 uses
  %i.fu = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge.loopexit125:                          ; preds = %bb.j
  %i.fv = getelementptr inbounds nuw i8, ptr %.070110, i64 16
  %i.fw = atomicrmw add ptr %i.fv, i32 -1 seq_cst, align 8 ; 0 uses
  %i.fx = atomicrmw add ptr %i.e, i32 -1 seq_cst, align 8 ; 0 uses
  %i.fy = icmp eq i32 %spec.select84, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit125, %._crit_edge.loopexit
  %.071.lcssa = phi i32 [ %.us-phi104155, %._crit_edge.loopexit125 ], [ 0, %._crit_edge.loopexit ]
  %.069.lcssa = phi i1 [ %i.fy, %._crit_edge.loopexit125 ], [ true, %._crit_edge.loopexit ]
  %i.fz = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.fz, %.069.lcssa
  br i1 %or.cond3, label %bb.l, label %ma_silence_pcm_frames.exit95

bb.l:                                             ; preds = %._crit_edge
  %i.ga = zext i32 %3 to i64
  %i.gb = shl nuw nsw i32 %i.d, 2
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = mul nuw nsw i64 %i.gc, %i.ga            ; 2 uses
  %.not.i13.i87 = icmp eq i64 %i.gd, 0
  br i1 %.not.i13.i87, label %ma_silence_pcm_frames.exit95, label %ma_zero_memory_default.exit.i.i93

ma_zero_memory_default.exit.i.i93:                ; preds = %bb.l, %ma_zero_memory_default.exit.i.i93
  %.0.i15.i89 = phi ptr [ %i.gf, %ma_zero_memory_default.exit.i.i93 ], [ %2, %bb.l ] ; 2 uses
  %.08.i14.i90 = phi i64 [ %i.ge, %ma_zero_memory_default.exit.i.i93 ], [ %i.gd, %bb.l ] ; 2 uses
  %spec.store.select.i.i91 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i90, i64 4294967295) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i89, i8 0, i64 %spec.store.select.i.i91, i1 false)
  %i.ge = sub nuw nsw i64 %.08.i14.i90, %spec.store.select.i.i91 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i15.i89, i64 %spec.store.select.i.i91
  %.not.i.i94 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i94, label %ma_silence_pcm_frames.exit95, label %ma_zero_memory_default.exit.i.i93, !llvm.loop !7

ma_silence_pcm_frames.exit95:                     ; preds = %ma_zero_memory_default.exit.i.i93, %bb.l, %._crit_edge
  store i32 %3, ptr %4, align 4, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %ma_node_input_bus_first.exit.thread, %ma_silence_pcm_frames.exit95
  %.073 = phi i32 [ %.071.lcssa, %ma_silence_pcm_frames.exit95 ], [ 0, %ma_node_input_bus_first.exit.thread ]
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define internal void @ma_data_source_node_process_pcm_frames(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 0, ptr %i.d, align 8, !tbaa !164
  %i.e = load i32, ptr %4, align 4, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !996  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ma_data_source_get_data_format.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !585  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ma_data_source_get_data_format.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 %i.k(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !586
  %.not36.i = icmp eq i32 %i.m, 0
  br i1 %.not36.i, label %bb.d, label %ma_data_source_get_data_format.exit.thread

ma_data_source_get_data_format.exit.thread:       ; preds = %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !996
  %i.o = load ptr, ptr %3, align 8, !tbaa !373
  %i.p = zext i32 %i.e to i64
  %i.q = call i32 @ma_data_source_read_pcm_frames(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %i.d) ; 0 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !164
  %i.r = trunc i64 %.pre to i32
  br label %bb.e

bb.e:                                             ; preds = %ma_data_source_get_data_format.exit.thread, %bb.d
  %i.s = phi i32 [ 0, %ma_data_source_get_data_format.exit.thread ], [ %i.r, %bb.d ]
  store i32 %i.s, ptr %4, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ma_splitter_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %ma_node_get_input_bus_count.exit.i

ma_node_get_input_bus_count.exit.i:               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !968
  %.not.i.not = icmp eq i32 %i.c, 0
  br i1 %.not.i.not, label %ma_node_get_output_bus_count.exit.lr.ph.split, label %bb.b

bb.b:                                             ; preds = %ma_node_get_input_bus_count.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !969
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %.val.i = load i8, ptr %i.f, align 8, !tbaa !985
  %i.g = zext i8 %.val.i to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  br label %ma_node_get_output_bus_count.exit.lr.ph.split

ma_node_get_output_bus_count.exit.lr.ph.split:    ; preds = %bb.b, %ma_node_get_input_bus_count.exit.i
  %.0.i = phi i64 [ %i.h, %bb.b ], [ 0, %ma_node_get_input_bus_count.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !967  ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_node_get_output_bus_count.exit.lr.ph.split, %ma_copy_pcm_frames.exit
  %i.k = phi i32 [ %i.t, %ma_copy_pcm_frames.exit ], [ %i.j, %ma_node_get_output_bus_count.exit.lr.ph.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %ma_copy_pcm_frames.exit ], [ 0, %ma_node_get_output_bus_count.exit.lr.ph.split ] ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %6 = load ptr, ptr %5, align 8, !tbaa !373      ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !373    ; 2 uses
  %i.m = icmp eq ptr %6, %i.l
  br i1 %i.m, label %ma_copy_pcm_frames.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %4, align 4, !tbaa !118
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %.0.i, %i.o              ; 2 uses
  %.not.i7.i = icmp eq i64 %i.p, 0
  br i1 %.not.i7.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.r, %.lr.ph.i ], [ %6, %bb.c ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.q = sub nuw nsw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre.a = load i32, ptr %i.i, align 4, !tbaa !967
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %.lr.ph, %bb.c
  %i.t = phi i32 [ %.pre.a, %ma_copy_pcm_frames.exit.loopexit ], [ %i.k, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %ma_copy_pcm_frames.exit, %bb.a, %ma_node_get_output_bus_count.exit.lr.ph.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_biquad_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_lpf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_lpf_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_hpf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_hpf_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_bpf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_bpf_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_notch_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull readonly %i.a, ptr noundef %i.b, ptr noundef readonly %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_peak_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull readonly %i.a, ptr noundef %i.b, ptr noundef readonly %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_loshelf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull readonly %i.a, ptr noundef %i.b, ptr noundef readonly %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ma_hishelf_node_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull readonly %i.a, ptr noundef %i.b, ptr noundef readonly %i.c, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ma_delay_node_process_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %3, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !373
  %i.d = load i32, ptr %4, align 4, !tbaa !118
  %i.e = tail call i32 @ma_delay_process_pcm_frames(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.d) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ma_engine_node_process_pcm_frames__sound(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4096 x i8], align 16             ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = load i32, ptr %4, align 4, !tbaa !118    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.l = icmp eq ptr %0, null
  br i1 %i.l, label %ma_sound_at_end.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1055
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ma_sound_at_end.exit.thread, label %ma_sound_at_end.exit

ma_sound_at_end.exit:                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.q = load atomic i32, ptr %i.p seq_cst, align 8
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %ma_sound_at_end.exit.thread, label %ma_sound_stop.exit

ma_sound_stop.exit:                               ; preds = %ma_sound_at_end.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = atomicrmw xchg ptr %i.r, i32 1 seq_cst, align 8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1075 ; 2 uses
  %.not90 = icmp eq ptr %i.u, null
  br i1 %.not90, label %.loopexit123, label %bb.c

bb.c:                                             ; preds = %ma_sound_stop.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1076
  tail call void %i.u(ptr noundef %i.w, ptr noundef nonnull %0) #55
  br label %.loopexit123

ma_sound_at_end.exit.thread:                      ; preds = %bb.b, %bb.a, %ma_sound_at_end.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8 ; 4 uses
  %.not82 = icmp eq i64 %i.y, -1
  br i1 %.not82, label %bb.h, label %bb.d

bb.d:                                             ; preds = %ma_sound_at_end.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1055 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %ma_node_set_time.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !358
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !589 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %ma_node_set_time.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !359
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %ma_node_set_time.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !590
  %i.al = add i64 %i.ak, %i.y
  %i.am = tail call i32 %i.ae(ptr noundef nonnull %i.aa, i64 noundef %i.al) #55, !inline_history !591 ; 0 uses
  br label %ma_node_set_time.exit

ma_node_set_time.exit:                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = atomicrmw xchg ptr %i.an, i64 %i.y seq_cst, align 8 ; 0 uses
  %i.ap = atomicrmw xchg ptr %i.x, i64 -1 seq_cst, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %ma_node_set_time.exit, %ma_sound_at_end.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 884
end_hunk_2
