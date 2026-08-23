Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_c?download=true
inline.NumInlined: 92
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@check_absolute_uri_rejected:bb.a
  %2 = alloca %struct.tg3_parse_options, align 8  ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !254
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @recording_read_file, ptr %i.b, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.a, ptr %i.c, align 8, !tbaa !237
  %i.d = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_absolute_uri_rejected.json, i64 noundef 76, ptr noundef nonnull @.str.105, i32 noundef 5, ptr noundef nonnull %2) #19 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = load i32, ptr %i.a, align 4              ; 2 uses
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.106, i32 noundef %i.d, i32 noundef %i.f) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_negative_byte_stride_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_negative_byte_stride_rejected.json, i64 noundef 116, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = call i64 @fwrite(ptr nonnull @.str.107, i64 33, i64 1, ptr %i.c) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_oob_index_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_oob_index_rejected.json, i64 noundef 184, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 31
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.c = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.108, i32 noundef %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_oob_index_opt_in() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 6 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i32 0, ptr %i.a, align 8, !tbaa !259
  %i.b = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_oob_index_opt_in.json, i64 noundef 184, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.109, i32 noundef %i.b) #20 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %.not4 = icmp eq i32 %i.f, 1
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !88
  %.not5 = icmp eq i32 %i.j, 1000000
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.l = call i64 @fwrite(ptr nonnull @.str.110, i64 44, i64 1, ptr %i.k) #23 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.d ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_extension_index_oob_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_extension_index_oob_rejected.json, i64 noundef 81, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 31
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.c = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.111, i32 noundef %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_error_messages_survive_parse_failure() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 7 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_error_messages_survive_parse_failure.json, i64 noundef 116, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %1, align 8, !tbaa !19
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.112) #22
  %.not11 = icmp eq ptr %i.i, null
  %spec.select = select i1 %.not11, i32 %.013, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %.013, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.a, label %bb.b, !llvm.loop !260

._crit_edge.a:                                    ; preds = %bb.d
  %i.j = icmp eq i32 %.1, 0
  br i1 %i.j, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.l = call i64 @fwrite(ptr nonnull @.str.113, i64 59, i64 1, ptr %i.k) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread, %bb.a, %._crit_edge.a
  %.08 = phi i32 [ 1, %._crit_edge.a ], [ 0, %bb.a ], [ 0, %._crit_edge.thread ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_buffer_view_range_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_buffer_view_range_rejected.json, i64 noundef 165, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 34
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.c = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.114, i32 noundef %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_accessor_range_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_accessor_range_rejected.json, i64 noundef 228, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 34
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.c = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.115, i32 noundef %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_sparse_accessor_range_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_sparse_accessor_range_rejected.json, i64 noundef 370, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 34
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.c = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.116, i32 noundef %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_skip_extras_values_opt_in() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 9 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 8 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_skip_extras_values_opt_in.json, i64 noundef 103, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 8, !tbaa !251
  %.not = icmp eq i32 %i.f, 7
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.h = call i64 @fwrite(ptr nonnull @.str.117, i64 38, i64 1, ptr %i.g) #23 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 204
  store i32 1, ptr %i.i, align 4, !tbaa !261
  %i.j = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_skip_extras_values_opt_in.json, i64 noundef 103, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = icmp ne ptr %i.l, null
  %or.cond7 = select i1 %i.k, i1 true, i1 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp ne i32 %i.o, 1
  %or.cond10 = select i1 %or.cond7, i1 true, i1 %i.p
  br i1 %or.cond10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 320
  %i.t = load i32, ptr %i.s, align 8, !tbaa !262
  %.not14 = icmp eq i32 %i.t, 1
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !264
  %.not15 = icmp eq i32 %i.x, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.z = call i64 @fwrite(ptr nonnull @.str.118, i64 56, i64 1, ptr %i.y) #23 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %bb.f ]
  call void @tg3_model_free(ptr noundef nonnull %0) #19
  call void @tg3_error_stack_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_json_limits_rejected() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.tg3_model, align 8          ; 4 uses
  %1 = alloca %struct.tg3_error_stack, align 8    ; 5 uses
  %2 = alloca %struct.tg3_parse_options, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @tg3_error_stack_init(ptr noundef nonnull %1) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 4, ptr %i.a, align 8, !tbaa !266
  %i.b = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @check_json_limits_rejected.json, i64 noundef 55, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.b, 10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.119, i32 noundef %i.b) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
end_hunk_0
