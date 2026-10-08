Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parsers?download=true
inline.NumInlined: 274
inline.NumDeleted: 10
begin_hunk_0_@_parse_PARTITION_OVERSUBSCRIBE:bb.a
  br label %bb.g

.critedge:                                        ; preds = %bb.d
  %i.j = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1225) #19
  %.not38 = icmp eq i32 %i.j, 0
  br i1 %.not38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  store i16 1, ptr %1, align 2
  br label %bb.t

bb.g:                                             ; preds = %bb.e, %.critedge
  %i.k = load i16, ptr %1, align 2
  %.not39 = icmp eq i16 %i.k, 0
  br i1 %.not39, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 2
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.b, ptr noundef %4) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.r = phi ptr [ %i.q, %bb.i ], [ null, %bb.h ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.m, ptr noundef nonnull %3, ptr noundef %i.r, ptr noundef nonnull @__func__._parse_PARTITION_OVERSUBSCRIBE, ptr noundef nonnull @.str.1279) #19
  call void @slurm_xfree(ptr noundef nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  %i.s = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1280) #19
  %.not41 = icmp eq i32 %i.s, 0
  br i1 %.not41, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.u = tail call fastcc i32 @_partition_oversubscribe_parse_jobs(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.t, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  store i16 4, ptr %1, align 2
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.v = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1281) #19
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %.not37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.x = tail call fastcc i32 @_partition_oversubscribe_parse_jobs(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.w, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  store i16 -32764, ptr %1, align 2
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.y = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_PARTITION_OVERSUBSCRIBE, ptr noundef nonnull @.str.1282, i32 noundef 9001, ptr noundef nonnull @.str.1283) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.j, %bb.s, %bb.r, %bb.q, %bb.m, %bb.n, %bb.f
  %.0 = phi i32 [ 9001, %bb.s ], [ %i.x, %bb.q ], [ 0, %bb.r ], [ %i.u, %bb.m ], [ 0, %bb.n ], [ 0, %bb.j ], [ 0, %bb.f ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t, %bb.c
  %.035 = phi i32 [ %.0, %bb.t ], [ 9202, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_ASSOC_ID(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
find_parser_by_type.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = tail call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 192), ptr noundef %2, ptr noundef %3) #19
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_ASSOC_ID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.slurmdb_assoc_rec, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %1, ptr %i.a, align 8
  %i.b = tail call i32 @data_get_type(ptr noundef %2) #19
  switch i32 %i.b, label %bb.i [
    i32 5, label %bb.b
    i32 6, label %.critedge
    i32 4, label %find_parser_by_type.exit
    i32 1, label %bb.j
    i32 3, label %find_parser_by_type.exit35
    i32 2, label %bb.g
    i32 7, label %bb.g
    i32 0, label %bb.h
    i32 8, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @data_get_string(ptr noundef %2) #19 ; 2 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.c, align 1
  %.not30 = icmp eq i8 %i.d, 0
  br i1 %.not30, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.e = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %.not31 = icmp eq i32 %i.e, 4
  br i1 %.not31, label %find_parser_by_type.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.f = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_ASSOC_ID, ptr noundef nonnull @.str.1294, i32 noundef 9202, ptr noundef nonnull @.str.1295, ptr noundef %2) ; 0 uses
  br label %bb.j

find_parser_by_type.exit:                         ; preds = %.critedge, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.h = tail call i32 @parse(ptr noundef nonnull %i.g, i64 noundef 4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 192), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %bb.j

find_parser_by_type.exit35:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %5, i8 0, i64 328, i1 false)
  %i.i = call i32 @parse(ptr noundef nonnull %5, i64 noundef 328, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 37248), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %find_parser_by_type.exit35
  %i.j = call i32 @resolve_assoc(i32 noundef 60138, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_ASSOC_ID, i1 noundef zeroext false) #19
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.l = load i32, ptr %i.k, align 4
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 132
  store i32 %i.l, ptr %i.n, align 4
  call void @slurmdb_free_assoc_rec_members(ptr noundef nonnull %5) #19
  br label %bb.f

bb.f:                                             ; preds = %find_parser_by_type.exit35, %bb.e
  %.1 = phi i32 [ %i.j, %bb.e ], [ %i.i, %find_parser_by_type.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.o = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_ASSOC_ID, ptr noundef nonnull @.str.1296, i32 noundef 2167, ptr noundef nonnull @.str.1297, ptr noundef %2) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1125) #21
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1117) #21
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.g, %bb.f, %find_parser_by_type.exit, %bb.d
  %.2 = phi i32 [ 9202, %bb.d ], [ %i.h, %find_parser_by_type.exit ], [ 2167, %bb.g ], [ 0, %bb.c ], [ %.1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_JOB_STDIN(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %find_parser_by_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %find_parser_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurmdb_expand_job_stdio_fields(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #19
  store ptr %i.e, ptr %i.a, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull @parsers, ptr noundef %2, ptr noundef %3) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_JOB_STDIN(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_JOB_STDOUT(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %find_parser_by_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %find_parser_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurmdb_expand_job_stdio_fields(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #19
  store ptr %i.e, ptr %i.a, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull @parsers, ptr noundef %2, ptr noundef %3) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_JOB_STDOUT(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_JOB_STDERR(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %find_parser_by_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %find_parser_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurmdb_expand_job_stdio_fields(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #19
  store ptr %i.e, ptr %i.a, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull @parsers, ptr noundef %2, ptr noundef %3) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_JOB_STDERR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_JOB_ASSOC_ID(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
find_parser_by_type.exit:
  %4 = alloca %struct.slurmdb_assoc_rec, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %4, i8 0, i64 328, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %i.d, align 4
  %i.g = call i32 @dump(ptr noundef nonnull %4, i64 noundef 328, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 37248), ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_JOB_ASSOC_ID(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.slurmdb_assoc_rec, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %5, i8 0, i64 328, i1 false)
  %i.b = call i32 @parse(ptr noundef nonnull %5, i64 noundef 328, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 37248), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %find_parser_by_type.exit
  %i.c = call i32 @resolve_assoc(i32 noundef 60138, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_JOB_ASSOC_ID, i1 noundef zeroext false) #19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.e, ptr %i.f, align 8
  call void @slurmdb_free_assoc_rec_members(ptr noundef nonnull %5) #19
  br label %bb.b

bb.b:                                             ; preds = %find_parser_by_type.exit, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.b, %find_parser_by_type.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_QOS_PREEMPT_LIST(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call ptr @data_set_list(ptr noundef %2) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @bit_ffs(ptr noundef nonnull %i.g) #19
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 1, ptr %i.a, align 4
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = tail call i64 @bit_size(ptr noundef %i.j) #19
  %.not3237 = icmp sgt i64 %i.k, 1
  br i1 %.not3237, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %select.unfold
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = call i32 @slurm_bit_test(ptr noundef %i.o, i64 noundef %i.q) #19
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = call ptr @list_find_first(ptr noundef %i.s, ptr noundef nonnull @slurmdb_find_qos_in_list, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not30 = icmp eq ptr %i.t, null
  br i1 %.not30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = call ptr @bit_fmt_full(ptr noundef %i.u) #19
  store ptr %i.v, ptr %i.b, align 8
  %i.w = load i32, ptr %i.l, align 8
  %i.x = load i32, ptr %i.a, align 4
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = call i64 @bit_size(ptr noundef %i.y) #19
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = load i32, ptr %i.n, align 8
  %i.ad = call i32 (i32, i32, ptr, i32, ptr, ptr, ptr, ...) @on_error(i32 noundef 44718, i32 noundef %i.w, ptr noundef nonnull %3, i32 noundef 2066, ptr noundef nonnull @.str.1298, ptr noundef nonnull @__func__._dump_QOS_PREEMPT_LIST, ptr noundef nonnull @.str.1299, i32 noundef %i.x, i64 noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef %i.ac) #19 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.b) #19
  %.not31 = icmp eq i32 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %.not31, label %select.unfold, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.ae = call ptr @data_list_append(ptr noundef %2) #19
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call ptr @data_set_string(ptr noundef %i.ae, ptr noundef %i.ag) #19 ; 0 uses
  br label %select.unfold

select.unfold:                                    ; preds = %bb.g, %bb.e, %bb.h
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = call i64 @bit_size(ptr noundef %i.al) #19
  %.not32 = icmp sgt i64 %i.am, %i.ak
  br i1 %.not32, label %bb.e, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %select.unfold, %bb.g, %bb.d
  %spec.select = phi i32 [ 0, %bb.d ], [ %i.ad, %bb.g ], [ 0, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.b, %bb.c, %bb.a
  %.5 = phi i32 [ 2036, %bb.a ], [ 0, %bb.b ], [ %spec.select, %._crit_edge ], [ 0, %bb.c ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_QOS_PREEMPT_LIST(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 690
  br i1 %exitcond.not.i, label %find_parser_by_type.exit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  switch i64 %indvars.iv.i, label %bb.b [
    i64 648, label %find_parser_by_type.exit.split.loop.exit
    i64 19, label %find_parser_by_type.exit.split.loop.exit
  ]

find_parser_by_type.exit.split.loop.exit:         ; preds = %bb.c, %bb.c
  %i.a = getelementptr inbounds nuw [192 x i8], ptr @parsers, i64 %indvars.iv.i
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.b, %find_parser_by_type.exit.split.loop.exit
  %i.b = phi ptr [ %i.a, %find_parser_by_type.exit.split.loop.exit ], [ null, %bb.b ]
end_hunk_0
begin_hunk_1_@_parse_STEP_NODES:bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_TRES_REQ_MAX(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call fastcc i32 @_dump_tres_nct(ptr noundef %0, ptr noundef %2, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %3)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_TRES_REQ_MAX(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_TRES_REQ_MIN(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call fastcc i32 @_dump_tres_nct(ptr noundef %0, ptr noundef %2, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %3)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_TRES_REQ_MIN(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_TRES_USAGE_MAX(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call fastcc i32 @_dump_tres_nct(ptr noundef %0, ptr noundef %2, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %3)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_TRES_USAGE_MAX(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_TRES_USAGE_MIN(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call fastcc i32 @_dump_tres_nct(ptr noundef %0, ptr noundef %2, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %3)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_TRES_USAGE_MIN(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_STDIN_EXP(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %find_parser_by_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %find_parser_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurmdb_expand_step_stdio_fields(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #19
  store ptr %i.e, ptr %i.a, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull @parsers, ptr noundef %2, ptr noundef %3) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_STDIN_EXP(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_STDOUT_EXP(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %find_parser_by_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %find_parser_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurmdb_expand_step_stdio_fields(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #19
  store ptr %i.e, ptr %i.a, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull @parsers, ptr noundef %2, ptr noundef %3) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_STDOUT_EXP(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_STEP_STDERR_EXP(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %find_parser_by_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %find_parser_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurmdb_expand_step_stdio_fields(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #19
  store ptr %i.e, ptr %i.a, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.f = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull @parsers, ptr noundef %2, ptr noundef %3) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STEP_STDERR_EXP(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_JOB_PLANNED_TIME(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  switch i64 %i.c, label %bb.b [
    i64 0, label %find_parser_by_type.exit
    i64 4294967295, label %find_parser_by_type.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  switch i64 %i.e, label %.thread [
    i64 4294967294, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not15 = icmp eq i64 %i.g, 0
  br i1 %.not15, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub nsw i64 %i.g, %i.c
  br label %find_parser_by_type.exit

.thread:                                          ; preds = %bb.b, %bb.c
  %i.i = sub nsw i64 %i.e, %i.c
  br label %find_parser_by_type.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call i64 @time(ptr noundef null) #19
  %i.k = load i64, ptr %i.b, align 8
  %i.l = sub nsw i64 %i.j, %i.k
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.a, %bb.a, %bb.d, %bb.e, %.thread
  %.sink = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.e ], [ %i.i, %.thread ], [ 0, %bb.a ], [ 0, %bb.a ]
  store i64 %.sink, ptr %i.a, align 8
  %i.m = call i32 @dump(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 768), ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_JOB_PLANNED_TIME(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_STATS_MSG_CYCLE_MEAN(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = zext i32 %i.b to i64
  %i.f = udiv i64 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %.sink) #19 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STATS_MSG_CYCLE_MEAN(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.i, ptr noundef nonnull @__func__._parse_disabled, ptr noundef nonnull @.str.1144, ptr noundef nonnull @.str.1145, i32 noundef %i.h) #19
  call void @slurm_xfree(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_STATS_MSG_CYCLE_MEAN_DEPTH(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i32, ptr %i.c, align 4
  %i.e = udiv i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %.sink) #19 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_parse_STATS_MSG_CYCLE_MEAN_DEPTH(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_parse_disabled.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %4) #19
  %.pre.i = load i32, ptr %i.b, align 8
  br label %_parse_disabled.exit

_parse_disabled.exit:                             ; preds = %bb.a, %bb.b
end_hunk_1
