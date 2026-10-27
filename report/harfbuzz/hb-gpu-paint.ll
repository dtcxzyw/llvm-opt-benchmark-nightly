Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-paint?download=true
inline.NumInlined: 457
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL26hb_gpu_paint_pop_transformP16hb_paint_funcs_tPvS1_:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !173  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE6shrinkEib.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !174
  %i.f = add i32 %i.b, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !97
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %.not.i = icmp ult i32 %i.j, %i.b
  br i1 %.not.i, label %bb.c, label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE6shrinkEib.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.a, align 4, !tbaa !51
  %i.k = load i32, ptr %i.c, align 8, !tbaa !50
  %i.l = add i32 %i.k, -1
  %spec.select.i.i = icmp ult i32 %i.l, -2
  br i1 %spec.select.i.i, label %bb.d, label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE6shrinkEib.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_ZN11hb_vector_tI14hb_transform_tIfELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.j, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE6shrinkEib.exit

_ZN11hb_vector_tI14hb_transform_tIfELb0EE6shrinkEib.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_push_clip_glyph_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL28hb_gpu_paint_push_clip_glyphP16hb_paint_funcs_tPvjP9hb_font_tS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.d, align 1, !tbaa !69
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  store i32 %2, ptr %i.h, align 8, !tbaa !37
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %3, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !100
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %storemerge.in.pre = load i32, ptr %i.a, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.in = phi i32 [ %storemerge.in.pre, %bb.c ], [ %i.b, %bb.b ]
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !91
  ret void
}

declare void @hb_paint_funcs_set_push_clip_path_start_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL33hb_gpu_paint_push_clip_path_startP16hb_paint_funcs_tPvPS1_S1_(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  %i.c = icmp ugt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.d, align 1, !tbaa !69
  store ptr null, ptr %2, align 8, !tbaa !65
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.f, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @hb_gpu_draw_create_or_fail() #13 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !41
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.h, align 1, !tbaa !69
  store ptr null, ptr %2, align 8, !tbaa !65
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  tail call void @hb_gpu_draw_clear(ptr noundef nonnull %i.i) #13
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !68
  tail call void @hb_gpu_draw_set_scale(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !97
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i8 1, ptr %i.q, align 4, !tbaa !92
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !65
  %i.s = tail call ptr @hb_gpu_draw_get_funcs(ptr noundef %i.r) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.s, %bb.f ]
  ret ptr %.0
}

declare void @hb_paint_funcs_set_push_clip_path_end_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_gpu_paint_push_clip_path_endP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.hb_glyph_extents_t, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 356 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !92, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !55

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !110
  %i.h = zext i32 %i.g to i64
  %.neg = xor i64 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
  %i.k = add i64 %i.j, %.neg
  store i64 %i.k, ptr %i.i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.l = call ptr @hb_gpu_draw_encode(ptr noundef %i.e, ptr noundef nonnull %3) #13 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 3 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !46
  %.not.i.i = icmp slt i32 %i.o, %i.p
  br i1 %.not.i.i, label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i32 %i.o, 1
  %i.r = call noundef zeroext i1 @_ZN11hb_vector_tIP9hb_blob_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %i.q, i1 noundef zeroext false)
  br i1 %i.r, label %..critedge_crit_edge.i.i, label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread, !prof !55

_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread: ; preds = %bb.d
  %i.s = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.s, ptr @_hb_CrapPool, align 16
  br label %.critedge

..critedge_crit_edge.i.i:                         ; preds = %bb.d
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !40
  br label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit

_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit: ; preds = %bb.c, %..critedge_crit_edge.i.i
  %i.t = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = add i32 %i.t, 1
  store i32 %i.w, ptr %i.n, align 4, !tbaa !40
  %i.x = zext i32 %i.t to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x ; 2 uses
  store ptr %i.l, ptr %i.y, align 8, !tbaa !53
  %.not46 = icmp eq ptr %i.y, @_hb_CrapPool
  %i.z = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.z, ptr @_hb_CrapPool, align 16
  br i1 %.not46, label %.critedge, label %bb.e, !prof !98

.critedge:                                        ; preds = %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread, %bb.b, %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit
  call void @hb_blob_destroy(ptr noundef %i.l) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.aa, align 1, !tbaa !69
  br label %bb.h

bb.e:                                             ; preds = %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !91 ; 3 uses
  %i.ad = icmp ugt i32 %i.ac, 2
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.ae, align 1, !tbaa !69
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.af = load i32, ptr %3, align 4, !tbaa !84    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88
  %i.ai = add i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !86 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !90
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 332
  %.sroa.5.sroa.0.0.copyload50 = load <6 x float>, ptr %i.ao, align 4, !tbaa !93
  %.sroa.speculated35 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ai)
  %.sroa.speculated23 = call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.an)
  %.sroa.speculated32 = call i32 @llvm.smax.i32(i32 %i.af, i32 %i.ai)
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aq = zext nneg i32 %i.ac to i64
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %i.aq ; 8 uses
  store i32 -1, ptr %i.ar, align 8, !tbaa !37
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !100
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <6 x float> %.sroa.5.sroa.0.0.copyload50, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 %i.t, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 %.sroa.speculated35, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !37
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 %.sroa.speculated23, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !37
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  store i32 %.sroa.speculated32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !37
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %.sroa.speculated, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !37
  %i.as = load i32, ptr %i.ab, align 8, !tbaa !91
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink50 = phi i32 [ %i.ac, %bb.f ], [ %i.as, %bb.g ]
  %4 = add i32 %.sink50, 1
  store i32 %4, ptr %i.ab, align 8, !tbaa !91
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @hb_paint_funcs_set_pop_clip_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL21hb_gpu_paint_pop_clipP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_push_group_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23hb_gpu_paint_push_groupP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !111
  %i.d = icmp ugt i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.e, align 1, !tbaa !69
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72
  %i.h = icmp ugt i32 %i.g, 32766
  br i1 %i.h, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73   ; 2 uses
  %i.l = add i32 %i.k, 4                          ; 5 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIsLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i1 noundef zeroext false)
  br i1 %i.o, label %bb.g, label %bb.h, !prof !112

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.j, align 4, !tbaa !48   ; 3 uses
  %i.q = icmp ugt i32 %i.l, %i.p
  br i1 %i.q, label %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i, label %bb.i

_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.g
  %i.r = sub nuw nsw i32 %i.l, %i.p
  %i.s = shl nuw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.v
  %i.x = zext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.y, align 1, !tbaa !69
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i, %bb.g
  store i32 %i.l, ptr %i.j, align 4, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = zext i32 %i.k to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  store <4 x i16> <i16 2, i16 0, i16 0, i16 0>, ptr %i.ac, align 2, !tbaa !80
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !72
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !72
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

_ZL15emit_control_opP14hb_gpu_paint_tss.exit:     ; preds = %bb.i, %bb.h, %bb.d, %bb.b
  ret void
}

declare void @hb_paint_funcs_set_pop_group_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL22hb_gpu_paint_pop_groupP16hb_paint_funcs_tPv25hb_paint_composite_mode_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %i.b, 5
  %i.d = add i32 %i.b, -1
  store i32 %i.d, ptr %i.a, align 8, !tbaa !111
  br i1 %i.c, label %.thread, label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = trunc i32 %2 to i16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72
  %i.h = icmp ugt i32 %i.g, 32766
  br i1 %i.h, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73   ; 2 uses
  %i.l = add i32 %i.k, 4                          ; 5 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIsLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i1 noundef zeroext false)
  br i1 %i.o, label %bb.f, label %bb.g, !prof !112

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.j, align 4, !tbaa !48   ; 3 uses
  %i.q = icmp ugt i32 %i.l, %i.p
  br i1 %i.q, label %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i, label %bb.h

_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.f
  %i.r = sub nuw nsw i32 %i.l, %i.p
  %i.s = shl nuw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.v
  %i.x = zext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 357
  store i8 1, ptr %i.y, align 1, !tbaa !69
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

bb.h:                                             ; preds = %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i, %bb.f
  store i32 %i.l, ptr %i.j, align 4, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = zext i32 %i.k to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab ; 4 uses
  store i16 3, ptr %i.ac, align 2, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 %i.e, ptr %i.ad, align 2, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i16 0, ptr %i.ae, align 2, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  store i16 0, ptr %i.af, align 2, !tbaa !80
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !72
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.f, align 8, !tbaa !72
  br label %_ZL15emit_control_opP14hb_gpu_paint_tss.exit

_ZL15emit_control_opP14hb_gpu_paint_tss.exit:     ; preds = %bb.h, %bb.g, %bb.c, %bb.b
  ret void
}

declare void @hb_paint_funcs_set_color_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18hb_gpu_paint_colorP16hb_paint_funcs_tPvijS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 357 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !69, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZL23hb_gpu_paint_emit_solidP14hb_gpu_paint_tij.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
end_hunk_0
