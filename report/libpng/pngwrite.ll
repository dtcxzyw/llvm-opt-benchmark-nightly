Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwrite?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@png_do_check_palette_indexes

declare void @png_write_find_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_flush(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i32 %i.b, ptr %i.c, align 8, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_flush(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.c = load i32, ptr %i.b, align 4, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.e = load i32, ptr %i.d, align 4, !tbaa !208
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef 2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.f, align 4, !tbaa !209
  tail call void @png_flush(ptr noundef nonnull %0) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @png_compress_IDAT(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_destroy_write_struct(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 21 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_destroy_info_struct(ptr noundef nonnull %i.a, ptr noundef %1) #16
  store ptr null, ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77, !alias.scope !212
  %i.d = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %png_write_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.f = tail call i32 @deflateEnd(ptr noundef nonnull %i.e) #16 ; 0 uses
  br label %png_write_destroy.exit

png_write_destroy.exit:                           ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  tail call void @png_free_buffer_list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.i) #16
  store ptr null, ptr %i.h, align 8, !tbaa !83, !alias.scope !212
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.k) #16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.m) #16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.o) #16
  store ptr null, ptr %i.j, align 8, !tbaa !89, !alias.scope !212
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !212
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !213, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.q) #16
  store ptr null, ptr %i.p, align 8, !tbaa !213, !alias.scope !212
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 800 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !214, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.s) #16
  store ptr null, ptr %i.r, align 8, !tbaa !214, !alias.scope !212
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 600 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !215, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.u) #16
  store ptr null, ptr %i.t, align 8, !tbaa !215, !alias.scope !212
  tail call void @png_destroy_png_struct(ptr noundef nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %png_write_destroy.exit, %bb.a
  ret void
}

declare void @png_destroy_info_struct(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_destroy_png_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_set_filter(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28
  %i.d = and i32 %i.c, 4
  %i.e = icmp ne i32 %i.d, 0
  %i.f = icmp eq i32 %1, 64
  %or.cond = and i1 %i.f, %i.e
  %i.g = icmp eq i32 %1, 0
  %i.h = or i1 %i.g, %or.cond
  br i1 %i.h, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %trunc = trunc i32 %2 to i8                     ; 2 uses
  switch i8 %trunc, label %bb.i [
    i8 5, label %bb.d
    i8 6, label %bb.d
    i8 7, label %bb.d
    i8 0, label %bb.j
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %trunc.sink = phi i8 [ %trunc, %bb.i ], [ -128, %bb.h ], [ 64, %bb.g ], [ 32, %bb.f ], [ 16, %bb.e ], [ 8, %bb.d ], [ 8, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 622
  store i8 %trunc.sink, ptr %i.i, align 2, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.m = load i32, ptr %i.l, align 8, !tbaa !85
  %i.n = icmp eq i32 %i.m, 1
  %i.o = and i32 %2, -225
  %spec.select = select i1 %i.n, i32 %i.o, i32 %2 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !80
  %i.r = icmp eq i32 %i.q, 1
  %i.s = and i32 %spec.select, -209
  %.151 = select i1 %i.r, i32 %i.s, i32 %spec.select ; 4 uses
  %i.t = and i32 %.151, 224
  %.not57 = icmp eq i32 %i.t, 0
  br i1 %.not57, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #16
  %i.x = and i32 %.151, -225
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.252 = phi i32 [ %i.x, %bb.m ], [ %.151, %bb.l ], [ %.151, %bb.k ] ; 7 uses
  %3 = and i32 %.252, 16                          ; 2 uses
  %.not58.not = icmp eq i32 %3, 0
  %spec.select62 = select i1 %.not58.not, i32 1, i32 2
  %i.y = lshr exact i32 %3, 4
  %i.z = and i32 %.252, 32
  %.not59 = icmp eq i32 %i.z, 0
  %.1 = select i1 %.not59, i32 %i.y, i32 %spec.select62
  %i.aa = lshr i32 %.252, 6
  %i.ab = and i32 %i.aa, 1
  %4 = lshr i32 %.252, 7
  %5 = and i32 %4, 1
  %.2 = add nuw nsw i32 %5, %i.ab
  %.3 = add nuw nsw i32 %.2, %.1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !81
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !82
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, %i.ae            ; 3 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 7
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !80
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = lshr i32 %i.ai, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.al, %i.an
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = zext nneg i32 %i.ai to i64
  %i.aq = mul nuw nsw i64 %i.al, %i.ap
  %i.ar = add nuw nsw i64 %i.aq, 7
  %i.as = lshr i64 %i.ar, 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = phi i64 [ %i.ao, %bb.o ], [ %i.as, %bb.p ]
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !90
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.au) #16
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !90
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = icmp samesign ugt i32 %.3, 1
  br i1 %i.az, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !91
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bd = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.au) #16
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !91
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t, %bb.j
  %.353 = phi i32 [ %2, %bb.j ], [ %.252, %bb.t ], [ %.252, %bb.u ], [ %.252, %bb.s ]
  %i.be = trunc i32 %.353 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 622
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !92
  br label %bb.x

bb.w:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #17
  unreachable

bb.x:                                             ; preds = %bb.a, %bb.v
  ret void
}

declare void @png_app_error(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @png_set_filter_heuristics(ptr noalias nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @png_set_filter_heuristics_fixed(ptr noalias nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_compression_level(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 444
  store i32 %1, ptr %i.b, align 4, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_compression_mem_level(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %1, ptr %i.b, align 8, !tbaa !216
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_compression_strategy(ptr noalias nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %1, ptr %i.e, align 4, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_compression_window_bits(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 15
  br i1 %i.b, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %1, 8
  br i1 %i.c, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.str.10.sink = phi ptr [ @.str.9, %bb.b ], [ @.str.10, %bb.c ]
  %.0.ph = phi i32 [ 15, %bb.b ], [ 8, %bb.c ]
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %.str.10.sink) #16
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ %1, %bb.c ], [ %.0.ph, %.sink.split ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.0, ptr %i.d, align 4, !tbaa !218
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_compression_method(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 8
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %1, ptr %i.b, align 8, !tbaa !219
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_text_compression_level(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %1, ptr %i.b, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@png_image_write_to_memory:bb.a
  store i64 0, ptr %i.p, align 8, !tbaa !105
  %i.q = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_write_memory, ptr noundef nonnull %7) #16 ; 2 uses
  call void @png_image_free(ptr noundef nonnull %0) #16
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.p, align 8              ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.n
  %i.t = select i1 %i.f, i1 true, i1 %i.s
  %.0 = select i1 %i.t, i32 %i.q, i32 0
  store i64 %i.r, ptr %2, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %.0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.critedge

bb.j:                                             ; preds = %bb.c
  %i.u = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #16
  br label %.critedge

bb.k:                                             ; preds = %bb.b
  %i.v = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.f, %bb.k, %bb.j, %bb.i
  %.025 = phi i32 [ %.1, %bb.i ], [ 0, %bb.f ], [ %i.u, %bb.j ], [ %i.v, %bb.k ], [ 0, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @png_image_write_init(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = tail call noalias ptr @png_create_png_struct(ptr noundef nonnull @.str.22, ptr noundef nonnull %0, ptr noundef nonnull @png_safe_error, ptr noundef nonnull @png_safe_warning, ptr noundef null, ptr noundef null, ptr noundef null) #16 ; 13 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %png_create_write_struct.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store <4 x i32> <i32 8192, i32 -1, i32 8, i32 15>, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 476
  store i32 8, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store i32 15, ptr %i.h, align 8, !tbaa !76
  store <4 x i32> <i32 8, i32 1, i32 -1, i32 8>, ptr %i.e, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = or i32 %i.j, 2097152
  store i32 %i.k, ptr %i.i, align 8, !tbaa !77
  tail call void @png_set_write_fn(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store ptr %i.c, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.l = tail call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.c) #16 ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !227
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %i.c, i64 noundef 48) #16 ; 6 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @png_destroy_info_struct(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #16
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %png_create_write_struct.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %i.m, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 1, ptr %i.p, align 8
  store ptr %i.m, ptr %0, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.e

png_create_write_struct.exit.thread:              ; preds = %bb.a, %.critedge
  %i.q = call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %png_create_write_struct.exit.thread
  %.3 = phi i32 [ %i.q, %png_create_write_struct.exit.thread ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.3
}

declare i32 @png_safe_execute(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @png_image_write_memory(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  tail call void @png_set_write_fn(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef nonnull @image_memory_write, ptr noundef nonnull @image_memory_flush) #16
  %i.d = tail call i32 @png_image_write_main(ptr noundef nonnull %0)
  ret i32 %i.d
}

declare void @png_image_free(ptr noundef) local_unnamed_addr #1

declare i32 @png_image_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @png_image_write_to_stdio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.png_image_write_control, align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %3, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @png_image_write_init(ptr noundef %0)
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.g = load ptr, ptr %0, align 8, !tbaa !110
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  store ptr %1, ptr %i.i, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %4, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.m, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %2, ptr %i.n, align 8, !tbaa !102
  %i.o = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_write_main, ptr noundef nonnull %6) #16
  call void @png_image_free(ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.p = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #16
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.q = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %i.o, %bb.e ], [ 0, %bb.d ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @png_image_write_main(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [256 x %struct.png_color_struct], align 16 ; 10 uses
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !98     ; 14 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !112  ; 8 uses
  %i.i = and i32 %i.h, 8
  %.not = icmp ne i32 %i.i, 0                     ; 3 uses
  %i.j = and i32 %i.h, 12
  %i.k = icmp eq i32 %i.j, 4                      ; 3 uses
  %i.l = and i32 %i.h, 9
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !102
  %i.p = icmp eq i32 %i.o, 0                      ; 3 uses
  %2 = select i1 %i.p, i32 16, i32 8
  %3 = select i1 %i.p, ptr @png_write_image_16bit, ptr @png_write_image_8bit
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %4 = phi i32 [ 8, %bb.a ], [ %2, %bb.b ]
  %png_write_image_16bit.png_write_image_8bit = phi ptr [ @png_write_image_8bit, %bb.a ], [ %3, %bb.b ]
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.b ]
  tail call void @png_set_benign_errors(ptr noundef %i.d, i32 noundef 0) #16
  %i.r = load i32, ptr %i.g, align 4, !tbaa !112  ; 2 uses
  %i.s = and i32 %i.r, 8
  %.not141 = icmp eq i32 %i.s, 0
  %i.t = and i32 %i.r, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = select i1 %.not141, i32 %i.u, i32 1      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !113  ; 4 uses
  %i.y = udiv i32 2147483647, %i.v
  %.not142 = icmp ugt i32 %i.x, %i.y
  br i1 %.not142, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = mul i32 %i.v, %i.x                       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ %i.z, %bb.e ], [ %i.ab, %bb.d ]
  %.0131 = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 false)
  %.not143 = icmp ult i32 %.0131, %i.z
  br i1 %.not143, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !114 ; 3 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.z, i32 %i.af)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.ah, ptr noundef nonnull @.str.25) #17
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.aj, ptr noundef nonnull @.str.26) #17
  unreachable

bb.j:                                             ; preds = %bb.g
  br i1 %.not, label %bb.l, label %bb.ah

bb.k:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.al, ptr noundef nonnull @.str.27) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101
  %.not145 = icmp eq ptr %i.an, null
  br i1 %.not145, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !234 ; 4 uses
  %.not146 = icmp eq i32 %i.ap, 0
  br i1 %.not146, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp ugt i32 %i.ap, 16
  %i.ar = icmp ugt i32 %i.ap, 4
  %i.as = icmp ugt i32 %i.ap, 2
  %i.at = select i1 %i.as, i32 2, i32 1
  %i.au = select i1 %i.ar, i32 4, i32 %i.at
  %i.av = select i1 %i.aq, i32 8, i32 %i.au
  tail call void @png_set_IHDR(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.x, i32 noundef %i.af, i32 noundef %i.av, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %.val = load ptr, ptr %0, align 8, !tbaa !98    ; 4 uses
  %.val157 = load ptr, ptr %i.am, align 8, !tbaa !101 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !234 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 256) ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !112 ; 5 uses
  %i.ba = and i32 %i.az, 3                        ; 3 uses
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %1, i8 0, i64 768, i1 false)
  %.not14.i = icmp eq i32 %i.ax, 0
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bc = lshr i32 %i.az, 3
  %i.bd = and i32 %i.bc, 2                        ; 3 uses
  %i.be = and i32 %i.az, 33
  %i.bf = icmp eq i32 %i.be, 33                   ; 5 uses
  %i.bg = zext i1 %i.bf to i32                    ; 2 uses
  %i.bh = and i32 %i.az, 4
  %.not.i = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %i.bf, i32 0, i32 %i.ba
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.ba, 1          ; 2 uses
  %i.bl = zext i1 %i.bf to i64                    ; 2 uses
  %i.bm = or disjoint i32 %i.bd, %i.bg            ; 2 uses
  %i.bn = xor i32 %i.bm, 2
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = select i1 %i.bf, i64 2, i64 1           ; 2 uses
  %i.bq = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.br = xor i32 %i.bd, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = zext nneg i32 %i.bd to i64
  %i.bu = xor i32 %i.bg, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = select i1 %i.bf, i64 0, i64 3
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bx = zext nneg i32 %i.bb to i64
  %wide.trip.count38.i = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.s, %.lr.ph.split.us.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next36.i, %bb.s ] ; 8 uses
  %.01213.us.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %.6.us.i, %bb.s ] ; 4 uses
  %i.by = mul nuw nsw i64 %indvars.iv35.i, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.by ; 6 uses
  switch i32 %i.bb, label %bb.p [
    i32 4, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bv
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !40  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !40
  %.not125.us.i = icmp eq i8 %i.cb, -1
  %i.cd = trunc i64 %indvars.iv35.i to i32
  %i.ce = add i32 %i.cd, 1
  %spec.select130.us.i = select i1 %.not125.us.i, i32 %.01213.us.i, i32 %i.ce
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.us.split.i
  %.4.us.i = phi i32 [ %.01213.us.i, %.lr.ph.split.us.split.i ], [ %spec.select130.us.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bl
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !40  ; 3 uses
  %i.ch = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv35.i ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !236
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !237
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !238
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !40  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35.i
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !40
  %.not126.us.i = icmp eq i8 %i.cl, -1
  %i.cn = trunc i64 %indvars.iv35.i to i32
  %i.co = add i32 %i.cn, 1
  %spec.select129.us.i = select i1 %.not126.us.i, i32 %.01213.us.i, i32 %i.co
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.us.split.i
  %.3.us.i = phi i32 [ %.01213.us.i, %.lr.ph.split.us.split.i ], [ %spec.select129.us.i, %bb.q ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bo
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !40
  %i.cr = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv35.i ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !238
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bp
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !236
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !40
  store i8 %i.cx, ptr %i.cr, align 1, !tbaa !237
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.6.us.i = phi i32 [ %.4.us.i, %bb.p ], [ %.3.us.i, %bb.r ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %._crit_edge.i, label %.lr.ph.split.us.split.i, !llvm.loop !228

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.cy = and i32 %i.az, 1
  %.not127.not.i = icmp eq i32 %i.cy, 0
  %i.cz = zext nneg i32 %i.bb to i64              ; 4 uses
  %wide.trip.count33.i = zext nneg i32 %spec.select.i to i64 ; 4 uses
  br i1 %.not127.not.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %i.bk, label %.lr.ph.split.split.us.split.us.i, label %.lr.ph.split.split.us.split.i
end_hunk_1
begin_hunk_2_@png_image_write_main:bb.a
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !115
  %i.hg = zext i16 %i.hf to i32
  %i.hh = and i32 %.015.i.us.i, 32767
  %i.hi = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.hd
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !40
  %i.hk = zext i8 %i.hj to i32
  %i.hl = mul nuw nsw i32 %i.hh, %i.hk
  %i.hm = lshr i32 %i.hl, 12
  %i.hn = add nuw nsw i32 %i.hm, %i.hg
  %i.ho = lshr i32 %i.hn, 8
  %i.hp = trunc i32 %i.ho to i8
  br label %png_unpremultiply.exit.us.i

png_unpremultiply.exit.us.i:                      ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.us.i = phi i8 [ -1, %bb.u ], [ %i.hp, %bb.w ], [ 0, %bb.v ]
  %i.hq = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv20.i ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  store i8 %.0.i.us.i, ptr %i.hr, align 1, !tbaa !238
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.bp
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !115 ; 3 uses
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = icmp uge i16 %i.ht, %i.gg
  %or.cond.i131.us.i = or i1 %i.gx, %i.hv
  br i1 %or.cond.i131.us.i, label %png_unpremultiply.exit135.us.i, label %bb.x

bb.x:                                             ; preds = %png_unpremultiply.exit.us.i
  %.not.i132.us.i = icmp eq i16 %i.ht, 0
  br i1 %.not.i132.us.i, label %png_unpremultiply.exit135.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hw = mul i32 %.0.us.i, %i.hu
  %i.hx = add i32 %i.hw, 64
  %i.hy = lshr i32 %i.hx, 7
  %i.hz = mul nuw nsw i32 %i.hu, 255
  %.015.i133.us.i = select i1 %i.gn, i32 %i.hy, i32 %i.hz ; 2 uses
  %i.ia = lshr i32 %.015.i133.us.i, 15
  %i.ib = zext nneg i32 %i.ia to i64              ; 2 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !115
  %i.ie = zext i16 %i.id to i32
  %i.if = and i32 %.015.i133.us.i, 32767
  %i.ig = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ib
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !40
  %i.ii = zext i8 %i.ih to i32
  %i.ij = mul nuw nsw i32 %i.if, %i.ii
  %i.ik = lshr i32 %i.ij, 12
  %i.il = add nuw nsw i32 %i.ik, %i.ie
  %i.im = lshr i32 %i.il, 8
  %i.in = trunc i32 %i.im to i8
  br label %png_unpremultiply.exit135.us.i

png_unpremultiply.exit135.us.i:                   ; preds = %bb.y, %bb.x, %png_unpremultiply.exit.us.i
  %.0.i134.us.i = phi i8 [ -1, %png_unpremultiply.exit.us.i ], [ %i.in, %bb.y ], [ 0, %bb.x ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store i8 %.0.i134.us.i, ptr %i.io, align 1, !tbaa !236
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.bq
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !115 ; 3 uses
  %i.ir = zext i16 %i.iq to i32                   ; 2 uses
  %i.is = icmp uge i16 %i.iq, %i.gg
  %or.cond.i136.us.i = or i1 %i.gx, %i.is
  br i1 %or.cond.i136.us.i, label %png_unpremultiply.exit140.us.i, label %bb.z

bb.z:                                             ; preds = %png_unpremultiply.exit135.us.i
  %.not.i137.us.i = icmp eq i16 %i.iq, 0
  br i1 %.not.i137.us.i, label %png_unpremultiply.exit140.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.it = mul i32 %.0.us.i, %i.ir
  %i.iu = add i32 %i.it, 64
  %i.iv = lshr i32 %i.iu, 7
  %i.iw = mul nuw nsw i32 %i.ir, 255
  %.015.i138.us.i = select i1 %i.gn, i32 %i.iv, i32 %i.iw ; 2 uses
  %i.ix = lshr i32 %.015.i138.us.i, 15
  %i.iy = zext nneg i32 %i.ix to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !115
  %i.jb = zext i16 %i.ja to i32
  %i.jc = and i32 %.015.i138.us.i, 32767
  %i.jd = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.iy
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !40
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jc, %i.jf
  %i.jh = lshr i32 %i.jg, 12
  %i.ji = add nuw nsw i32 %i.jh, %i.jb
  %i.jj = lshr i32 %i.ji, 8
  %i.jk = trunc i32 %i.jj to i8
  br label %png_unpremultiply.exit140.us.i

png_unpremultiply.exit140.us.i:                   ; preds = %bb.aa, %bb.z, %png_unpremultiply.exit135.us.i
  %.0.i139.us.i = phi i8 [ -1, %png_unpremultiply.exit135.us.i ], [ %i.jk, %bb.aa ], [ 0, %bb.z ]
  store i8 %.0.i139.us.i, ptr %i.hq, align 1, !tbaa !237
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count33.i
  br i1 %exitcond24.not.i, label %._crit_edge.i, label %.lr.ph.split.split.split.us.i, !llvm.loop !228

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i, %png_unpremultiply.exit145.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %png_unpremultiply.exit145.i ], [ 0, %.lr.ph.split.split.i ] ; 4 uses
  %.01213.i = phi i32 [ %spec.select128.i, %png_unpremultiply.exit145.i ], [ 0, %.lr.ph.split.split.i ]
  %i.jl = mul nuw nsw i64 %indvars.iv.i, %i.cz
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.val157, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.bj
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !115 ; 4 uses
  %i.jp = zext i16 %i.jo to i32                   ; 3 uses
  %i.jq = mul nuw nsw i32 %i.jp, 255
  %i.jr = add nuw nsw i32 %i.jq, 32895
  %i.js = lshr i32 %i.jr, 16                      ; 2 uses
  %i.jt = trunc nuw i32 %i.js to i8
  %i.ju = icmp ne i32 %i.js, 0
  %i.jv = icmp ult i16 %i.jo, -129                ; 3 uses
  %or.cond.i = and i1 %i.jv, %i.ju
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.split.split.i
  %i.jw = lshr i32 %i.jp, 1
  %i.jx = add nuw nsw i32 %i.jw, 2139062400
  %i.jy = udiv i32 %i.jx, %i.jp
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.split.split.i
  %.0.i = phi i32 [ %i.jy, %bb.ab ], [ 0, %.lr.ph.split.split.split.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.jt, ptr %i.jz, align 1, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %spec.select128.i = select i1 %i.jv, i32 %i.ka, i32 %.01213.i ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.bl
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !115 ; 3 uses
  %i.kd = zext i16 %i.kc to i32                   ; 2 uses
  %i.ke = icmp uge i16 %i.kc, %i.jo
  %i.kf = icmp ult i16 %i.jo, 128
  %or.cond.i141.i = or i1 %i.kf, %i.ke
  br i1 %or.cond.i141.i, label %png_unpremultiply.exit145.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i142.i = icmp eq i16 %i.kc, 0
  br i1 %.not.i142.i, label %png_unpremultiply.exit145.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kg = mul i32 %.0.i, %i.kd
  %i.kh = add i32 %i.kg, 64
  %i.ki = lshr i32 %i.kh, 7
  %i.kj = mul nuw nsw i32 %i.kd, 255
  %.015.i143.i = select i1 %i.jv, i32 %i.ki, i32 %i.kj ; 2 uses
  %i.kk = lshr i32 %.015.i143.i, 15
  %i.kl = zext nneg i32 %i.kk to i64              ; 2 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !115
  %i.ko = zext i16 %i.kn to i32
  %i.kp = and i32 %.015.i143.i, 32767
  %i.kq = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.kl
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !40
  %i.ks = zext i8 %i.kr to i32
  %i.kt = mul nuw nsw i32 %i.kp, %i.ks
  %i.ku = lshr i32 %i.kt, 12
  %i.kv = add nuw nsw i32 %i.ku, %i.ko
  %i.kw = lshr i32 %i.kv, 8
  %i.kx = trunc i32 %i.kw to i8
  br label %png_unpremultiply.exit145.i

png_unpremultiply.exit145.i:                      ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i144.i = phi i8 [ -1, %bb.ac ], [ %i.kx, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  store i8 %.0.i144.i, ptr %i.kz, align 1, !tbaa !236
  store i8 %.0.i144.i, ptr %i.ky, align 1, !tbaa !237
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  store i8 %.0.i144.i, ptr %i.la, align 1, !tbaa !238
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count33.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.split.i, !llvm.loop !228

._crit_edge.i:                                    ; preds = %png_unpremultiply.exit145.i, %png_unpremultiply.exit140.us.i, %.lr.ph.split.split.us.split.i, %.lr.ph.split.split.us.split.us.i, %bb.s, %bb.n
  %.0121.lcssa.i = phi i32 [ 0, %bb.n ], [ 0, %.lr.ph.split.split.us.split.i ], [ %.6.us.i, %bb.s ], [ %spec.select128.us.i, %png_unpremultiply.exit140.us.i ], [ 0, %.lr.ph.split.split.us.split.us.i ], [ %spec.select128.i, %png_unpremultiply.exit145.i ] ; 2 uses
  %i.lb = load ptr, ptr %.val, align 8, !tbaa !110 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !108
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !109
  call void @png_set_PLTE(ptr noundef %i.lc, ptr noundef %i.le, ptr noundef nonnull %1, i32 noundef %spec.select.i) #16
  %i.lf = icmp sgt i32 %.0121.lcssa.i, 0
  br i1 %i.lf, label %bb.af, label %png_image_set_PLTE.exit

bb.af:                                            ; preds = %._crit_edge.i
  %i.lg = load ptr, ptr %.val, align 8, !tbaa !110 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !108
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !109
  call void @png_set_tRNS(ptr noundef %i.lh, ptr noundef %i.lj, ptr noundef nonnull %i.a, i32 noundef %.0121.lcssa.i, ptr noundef null) #16
  br label %png_image_set_PLTE.exit

png_image_set_PLTE.exit:                          ; preds = %._crit_edge.i, %bb.af
  store i32 %spec.select.i, ptr %i.aw, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.ai

bb.ag:                                            ; preds = %bb.m, %bb.l
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.ll, ptr noundef nonnull @.str.28) #17
  unreachable

bb.ah:                                            ; preds = %bb.j
  %trunc = trunc i32 %i.h to i3
  %i.lm = and i3 %trunc, 3
  %mask = tail call i3 @llvm.bitreverse.i3(i3 %i.lm)
  %i.ln = zext i3 %mask to i32
  tail call void @png_set_IHDR(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.x, i32 noundef %i.af, i32 noundef %4, i32 noundef %i.ln, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %png_image_set_PLTE.exit
  br i1 %i.q, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @png_set_gAMA_fixed(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 100000) #16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !239
  %i.lq = and i32 %i.lp, 1
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @png_set_cHRM_fixed(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 31270, i32 noundef 32900, i32 noundef 64000, i32 noundef 33000, i32 noundef 30000, i32 noundef 60000, i32 noundef 15000, i32 noundef 6000) #16
  br label %bb.ap

bb.al:                                            ; preds = %bb.ai
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !239
  %i.lu = and i32 %i.lt, 1
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @png_set_sRGB(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 0) #16
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @png_set_gAMA_fixed(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 45455) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @png_write_info(ptr noundef %i.d, ptr noundef %i.f)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aj, %bb.ak
  call void @png_write_info(ptr noundef %i.d, ptr noundef %i.f)
  call void @png_set_swap(ptr noundef %i.d) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.lw = and i32 %i.h, 16
  %.not147 = icmp eq i32 %i.lw, 0
  br i1 %.not147, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lx = and i32 %i.h, 10
  %or.cond.not = icmp eq i32 %i.lx, 2
  br i1 %or.cond.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @png_set_bgr(ptr noundef %i.d) #16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ly = and i32 %i.h, -17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.0132 = phi i32 [ %i.ly, %bb.at ], [ %i.h, %bb.aq ] ; 4 uses
  %i.lz = and i32 %.0132, 32
  %.not149 = icmp eq i32 %i.lz, 0
  br i1 %.not149, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ma = and i32 %.0132, 1
  %.not150 = icmp eq i32 %i.ma, 0
  %or.cond156 = or i1 %.not, %.not150
  br i1 %or.cond156, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @png_set_swap_alpha(ptr noundef %i.d) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.mb = and i32 %.0132, -33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.1 = phi i32 [ %i.mb, %bb.ax ], [ %.0132, %bb.au ]
  br i1 %.not, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !234
  %i.me = icmp ult i32 %i.md, 17
  br i1 %i.me, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @png_set_packing(ptr noundef %i.d) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.not151 = icmp ult i32 %.1, 16
  br i1 %.not151, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @png_error(ptr noundef %i.d, ptr noundef nonnull @.str.29) #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !99 ; 2 uses
  %i.mh = load i32, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = zext i1 %i.k to i64
  %spec.select = shl nsw i64 %i.mi, %i.mj         ; 2 uses
  %i.mk = icmp slt i32 %i.mh, 0
  br i1 %i.mk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ml = load i32, ptr %i.ae, align 8, !tbaa !114
  %i.mm = add i32 %i.ml, -1
  %i.mn = zext i32 %i.mm to i64
  %i.mo = mul i64 %spec.select, %i.mn
  %i.mp = sub i64 0, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mp
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0130 = phi ptr [ %i.mq, %bb.be ], [ %i.mg, %bb.bd ]
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.0130, ptr %i.mr, align 8, !tbaa !116
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %spec.select, ptr %i.ms, align 8, !tbaa !117
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !239
  %i.mv = and i32 %i.mu, 2
  %.not152 = icmp eq i32 %i.mv, 0
  %i.mw = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not152, i1 true, i1 %i.mw
  br i1 %or.cond, label %png_set_compression_level.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 622 ; 2 uses
  store i8 8, ptr %i.mx, align 2, !tbaa !92, !alias.scope !240
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !83, !alias.scope !240
  %.not.i159 = icmp eq ptr %i.mz, null
  br i1 %.not.i159, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.na = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !80, !alias.scope !240
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  %i.nd = load i8, ptr %i.nc, align 4, !tbaa !81, !alias.scope !240
  %i.ne = zext i8 %i.nd to i32
  %i.nf = getelementptr inbounds nuw i8, ptr %i.d, i64 625
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !82, !alias.scope !240
  %i.nh = zext i8 %i.ng to i32
  %i.ni = mul nuw nsw i32 %i.nh, %i.ne            ; 3 uses
  %i.nj = icmp samesign ugt i32 %i.ni, 7
  %i.nk = zext i32 %i.nb to i64                   ; 2 uses
  br i1 %i.nj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nl = lshr i32 %i.ni, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = mul nuw nsw i64 %i.nm, %i.nk
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.no = zext nneg i32 %i.ni to i64
  %i.np = mul nuw nsw i64 %i.no, %i.nk
  %i.nq = add nuw nsw i64 %i.np, 7
  %i.nr = lshr i64 %i.nq, 3
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ns = phi i64 [ %i.nn, %bb.bi ], [ %i.nr, %bb.bj ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !90, !alias.scope !240
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.nw = add nuw nsw i64 %i.ns, 1
  %i.nx = call noalias ptr @png_malloc(ptr noundef nonnull %i.d, i64 noundef %i.nw) #16
  store ptr %i.nx, ptr %i.nt, align 8, !tbaa !90, !alias.scope !240
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bg
  store i8 0, ptr %i.mx, align 2, !tbaa !92, !alias.scope !240
  %i.ny = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  store i32 3, ptr %i.ny, align 4, !tbaa !93, !alias.scope !241
  br label %png_set_compression_level.exit

png_set_compression_level.exit:                   ; preds = %bb.bm, %bb.bf
  br i1 %i.k, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %png_set_compression_level.exit
  br i1 %i.m, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !102
  %.not153 = icmp eq i32 %i.oa, 0
  br i1 %.not153, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ob = call i64 @png_get_rowbytes(ptr noundef %i.d, ptr noundef %i.f) #16
  %i.oc = call noalias ptr @png_malloc(ptr noundef %i.d, i64 noundef %i.ob) #16 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !118
  %i.oe = call i32 @png_safe_execute(ptr noundef nonnull %i.b, ptr noundef nonnull %png_write_image_16bit.png_write_image_8bit, ptr noundef nonnull %0) #16
  store ptr null, ptr %i.od, align 8, !tbaa !118
  call void @png_free(ptr noundef %i.d, ptr noundef %i.oc) #16
  %.not155 = icmp eq i32 %i.oe, 0
  br i1 %.not155, label %bb.br, label %.loopexit

bb.bq:                                            ; preds = %bb.bo, %png_set_compression_level.exit
  %i.of = load i64, ptr %i.ms, align 8, !tbaa !117
  %i.og = load i32, ptr %i.ae, align 8, !tbaa !114 ; 2 uses
  %.not154165 = icmp eq i32 %i.og, 0
  br i1 %.not154165, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bq
  %i.oh = load ptr, ptr %i.mr, align 8, !tbaa !116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0167 = phi i32 [ %i.oj, %.lr.ph ], [ %i.og, %.lr.ph.preheader ]
  %.0126166 = phi ptr [ %i.oi, %.lr.ph ], [ %i.oh, %.lr.ph.preheader ] ; 2 uses
  call void @png_write_row(ptr noundef %i.d, ptr noundef %.0126166)
  %i.oi = getelementptr inbounds i8, ptr %.0126166, i64 %i.of
  %i.oj = add i32 %.0167, -1                      ; 2 uses
  %.not154 = icmp eq i32 %i.oj, 0
  br i1 %.not154, label %.loopexit, label %.lr.ph, !llvm.loop !233

.loopexit:                                        ; preds = %.lr.ph, %bb.bq, %bb.bp
  call void @png_write_end(ptr noundef %i.d, ptr noundef %i.f)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %.loopexit
  %.1134 = phi i32 [ 1, %.loopexit ], [ 0, %bb.bp ]
  ret i32 %.1134
}

; Function Attrs: nounwind uwtable
define i32 @png_image_write_to_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.png_image_write_control, align 8 ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %3, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) ; 7 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.a, align 8, !tbaa !96
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = tail call fastcc i32 @png_image_write_init(ptr noundef nonnull %0)
  %.not22.i = icmp eq i32 %i.i, 0
  br i1 %.not22.i, label %png_image_write_to_stdio.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.j = load ptr, ptr %0, align 8, !tbaa !110
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store ptr %i.f, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.n, align 8, !tbaa !99
  store i32 %4, ptr %i.m, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %2, ptr %i.p, align 8, !tbaa !102
  %i.q = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_write_main, ptr noundef nonnull %6) #16
  call void @png_image_free(ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %png_image_write_to_stdio.exit

bb.h:                                             ; preds = %bb.e
  %i.r = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #16
  br label %png_image_write_to_stdio.exit

png_image_write_to_stdio.exit:                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.q, %bb.g ], [ %i.r, %bb.h ]
  %.not33 = icmp eq i32 %.0.i, 0
  br i1 %.not33, label %png_image_write_to_stdio.exit.thread, label %bb.i

bb.i:                                             ; preds = %png_image_write_to_stdio.exit
  %i.s = call i32 @fflush(ptr noundef nonnull %i.f)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @ferror(ptr noundef nonnull %i.f) #16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @fclose(ptr noundef nonnull %i.f)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @__errno_location() #18
  %i.z = load i32, ptr %i.y, align 4, !tbaa !73
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.aa = tail call ptr @__errno_location() #18
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !73
  %i.ac = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.z, %bb.l ], [ %i.ab, %bb.m ]
  %i.ad = call i32 @remove(ptr noundef nonnull %1) #16 ; 0 uses
  %i.ae = call ptr @strerror(i32 noundef %.0) #16
  %i.af = call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef %i.ae) #16
  br label %.critedge

png_image_write_to_stdio.exit.thread:             ; preds = %bb.f, %png_image_write_to_stdio.exit
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.ah = call i32 @remove(ptr noundef nonnull %1) #16 ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %bb.d
  %i.ai = tail call ptr @__errno_location() #18
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !73
  %i.ak = tail call ptr @strerror(i32 noundef %i.aj) #16
  %i.al = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef %i.ak) #16
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  %i.am = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #16
  br label %.critedge

bb.q:                                             ; preds = %bb.b
  %i.an = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %png_image_write_to_stdio.exit.thread, %bb.o, %bb.k, %bb.n, %bb.q, %bb.p
  %.2 = phi i32 [ 1, %bb.k ], [ %i.am, %bb.p ], [ %i.an, %bb.q ], [ %i.al, %bb.o ], [ 0, %png_image_write_to_stdio.exit.thread ], [ %i.af, %bb.n ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare i32 @png_handle_as_unknown(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_chunk(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

declare void @png_free_buffer_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @png_safe_error(ptr noundef, ptr noundef) #3

declare void @png_safe_warning(ptr noundef, ptr noundef) #1

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @image_memory_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
end_hunk_2
