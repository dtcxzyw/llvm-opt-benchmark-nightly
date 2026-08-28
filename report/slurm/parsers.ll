Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parsers?download=true
inline.NumInlined: 274
inline.NumDeleted: 10
begin_hunk_0_@_parse_UINT32_NO_VAL:find_parser_by_type.exit
  store i32 %.sink, ptr %1, align 4
  br label %bb.a

bb.a:                                             ; preds = %.sink.split, %find_parser_by_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_UINT64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8                ; 5 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.g = bitcast i64 %i.d to double
  %i.h = fcmp oeq double %i.g, f0x41EFFFFFFFC00000
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.d) #19 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.j [
    i64 -1, label %bb.h
    i64 -2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @data_set_int(ptr noundef %2, i64 noundef -1) #19 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.m, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_UINT64, ptr noundef nonnull @.str.1100, ptr noundef nonnull @.str.1108) #19
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.n = tail call ptr @data_set_int(ptr noundef %2, i64 noundef -2) #19 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.p, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_UINT64, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1109) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.q = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.d) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.c, %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_UINT64(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @data_get_int(ptr noundef %2) #19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i64 %.sink, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 9202, %bb.b ], [ 0, %.sink.split ] ; 3 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.g = and i64 %i.f, 256
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @get_log_level() #19
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %1, align 8
  %i.k = tail call ptr @slurm_strerror(i32 noundef %.0) #19
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.1110, ptr noundef nonnull @__func__._parse_UINT64, i64 noundef %i.j, i32 noundef %.0, ptr noundef %i.k) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_UINT64_NO_VAL(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %4 = alloca %struct.UINT64_NO_VAL_t, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8                ; 4 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.e [
    i64 -1, label %bb.c
    i64 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @data_set_string(ptr noundef %2, ptr noundef nonnull @.str.1107) #19 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.g = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.d) #19 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.h [
    i64 -1, label %bb.g
    i64 -2, label %find_parser_by_type.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.h, align 1
  br label %find_parser_by_type.exit

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.i, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.f, %bb.h, %bb.g
  %i.j = call i32 @dump(ptr noundef nonnull %4, i64 noundef 16, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 71808), ptr noundef %2, ptr noundef nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.d, %find_parser_by_type.exit
  %.0 = phi i32 [ %i.j, %find_parser_by_type.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_UINT64_NO_VAL(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %struct.UINT64_NO_VAL_t, align 8    ; 7 uses
  %i.b = tail call i32 @data_get_type(ptr noundef %2) #19
  switch i32 %i.b, label %bb.n [
    i32 1, label %bb.b
    i32 6, label %bb.c
    i32 3, label %find_parser_by_type.exit
    i32 5, label %bb.j
    i32 4, label %find_parser_by_type.exit45
    i32 2, label %bb.l
    i32 7, label %bb.l
    i32 0, label %bb.m
    i32 8, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %1, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call i32 @_parse_FLOAT64_NO_VAL(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not41 = icmp eq i32 %i.c, 0
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load double, ptr %i.a, align 8           ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d) #20
  %i.f = fcmp oeq double %i.e, +inf
  %6 = fcmp uno double %i.d, 0.000000e+00
  %7 = fptoui double %i.d to i64
  %spec.select = select i1 %6, i64 -2, i64 %7
  %.sink = select i1 %i.f, i64 -1, i64 %spec.select
  store i64 %.sink, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.o

find_parser_by_type.exit:                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.g = call i32 @parse(ptr noundef nonnull %5, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 71808), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.f, label %bb.i

bb.f:                                             ; preds = %find_parser_by_type.exit
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.sink.split46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %5, align 8, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %.sink.split46

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8
  br label %.sink.split46

.sink.split46:                                    ; preds = %bb.g, %bb.f, %bb.h
  %.sink47 = phi i64 [ -1, %bb.f ], [ %i.n, %bb.h ], [ -2, %bb.g ]
  store i64 %.sink47, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split46, %find_parser_by_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.o = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %.not = icmp eq i32 %i.o, 4
  br i1 %.not, label %find_parser_by_type.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_UINT64_NO_VAL, ptr noundef nonnull @.str.1113, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.o

find_parser_by_type.exit45:                       ; preds = %bb.j, %bb.a
  %i.q = tail call i32 @parse(ptr noundef %1, i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 576), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.r = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_UINT64_NO_VAL, ptr noundef nonnull @.str.1115, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a
  %i.s = tail call i32 @data_get_type(ptr noundef %2) #19
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1116, i32 noundef %i.s) #21
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1117) #21
  unreachable

bb.o:                                             ; preds = %bb.l, %find_parser_by_type.exit45, %bb.k, %bb.i, %bb.e, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.e ], [ %i.g, %bb.i ], [ 9202, %bb.k ], [ %i.q, %find_parser_by_type.exit45 ], [ 9202, %bb.l ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_UINT16(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = load i16, ptr %1, align 2
  %i.b = zext i16 %i.a to i64
  %i.c = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.b) #19 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_UINT16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @data_get_int(ptr noundef %2) #19
  %i.f = trunc i64 %i.e to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi i16 [ %i.f, %bb.c ], [ 0, %bb.a ]
  store i16 %.sink, ptr %1, align 2
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 9202, %bb.b ], [ 0, %.sink.split ] ; 3 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 256
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @get_log_level() #19
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i16, ptr %1, align 2
  %i.l = zext i16 %i.k to i32
  %i.m = tail call ptr @slurm_strerror(i32 noundef %.0) #19
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.1120, ptr noundef nonnull @__func__._parse_UINT16, i32 noundef %i.l, i32 noundef %.0, ptr noundef %i.m) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_UINT16_NO_VAL(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %4 = alloca %struct.UINT16_NO_VAL_t, align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i16, ptr %1, align 2                ; 4 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %i.d, label %bb.e [
    i16 -1, label %bb.c
    i16 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @data_set_string(ptr noundef %2, ptr noundef nonnull @.str.1107) #19 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.g = zext i16 %i.d to i64
  %i.h = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.g) #19 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  switch i16 %i.d, label %bb.h [
    i16 -1, label %bb.g
    i16 -2, label %find_parser_by_type.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.i, align 1
  br label %find_parser_by_type.exit

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %4, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.d, ptr %i.j, align 2
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.f, %bb.h, %bb.g
  %i.k = call i32 @dump(ptr noundef nonnull %4, i64 noundef 4, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 72576), ptr noundef %2, ptr noundef nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.d, %find_parser_by_type.exit
  %.0 = phi i32 [ %i.k, %find_parser_by_type.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_UINT16_NO_VAL(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
find_parser_by_type.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call i32 @parse(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 768), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.sink.split, label %bb.a

.sink.split:                                      ; preds = %find_parser_by_type.exit
  %i.c = load i64, ptr %i.a, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, -2
  %i.e = icmp ugt i64 %i.c, 4294967293
  %i.f = trunc i64 %i.c to i16
  %spec.select = select i1 %i.e, i16 -1, i16 %i.f
  %.sink = select i1 %i.d, i16 -2, i16 %spec.select
  store i16 %.sink, ptr %1, align 2
  br label %bb.a

bb.a:                                             ; preds = %.sink.split, %find_parser_by_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_INT32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = sext i32 %i.a to i64
  %i.c = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.b) #19 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_INT32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %_parse_INT64.exit

_parse_INT64.exit:                                ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef readonly %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_INT64, ptr noundef nonnull @.str.1121, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @data_get_int(ptr noundef %2) #19 ; 2 uses
  %i.g = add i64 %i.f, -2147483648
  %or.cond = icmp ult i64 %i.g, -4294967296
  br i1 %or.cond, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.011.ph18 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]
  %i.h = trunc nsw i64 %.011.ph18 to i32
  store i32 %i.h, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %_parse_INT64.exit, %bb.c, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ 9202, %_parse_INT64.exit ], [ 22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_INT64(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.a) #19 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_INT64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @data_get_int(ptr noundef %2) #19
  store i64 %i.e, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_INT64, ptr noundef nonnull @.str.1121, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 9202, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_INT64_NO_VAL(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %4 = alloca %struct.INT64_NO_VAL_t, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8                ; 4 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.e [
    i64 -1, label %bb.c
    i64 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @data_set_string(ptr noundef %2, ptr noundef nonnull @.str.1107) #19 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.g = tail call ptr @data_set_int(ptr noundef %2, i64 noundef %i.d) #19 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.h [
    i64 -1, label %bb.g
    i64 -2, label %find_parser_by_type.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.h, align 1
  br label %find_parser_by_type.exit

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.i, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.f, %bb.h, %bb.g
  %i.j = call i32 @dump(ptr noundef nonnull %4, i64 noundef 16, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 72960), ptr noundef %2, ptr noundef nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.d, %find_parser_by_type.exit
  %.0 = phi i32 [ %i.j, %find_parser_by_type.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_INT64_NO_VAL(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %struct.INT64_NO_VAL_t, align 8     ; 7 uses
  %i.b = tail call i32 @data_get_type(ptr noundef %2) #19
  switch i32 %i.b, label %bb.n [
    i32 1, label %bb.b
    i32 6, label %bb.c
    i32 3, label %find_parser_by_type.exit
    i32 5, label %bb.j
    i32 4, label %find_parser_by_type.exit44
    i32 2, label %bb.l
    i32 7, label %bb.l
    i32 0, label %bb.m
    i32 8, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %1, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call i32 @_parse_FLOAT64_NO_VAL(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not40 = icmp eq i32 %i.c, 0
  br i1 %.not40, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load double, ptr %i.a, align 8           ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d) #20
  %i.f = fcmp oeq double %i.e, +inf
  %6 = fcmp uno double %i.d, 0.000000e+00
  %7 = fptosi double %i.d to i64
  %spec.select = select i1 %6, i64 -2, i64 %7
  %.sink = select i1 %i.f, i64 -1, i64 %spec.select
  store i64 %.sink, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.o

find_parser_by_type.exit:                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.g = call i32 @parse(ptr noundef nonnull %5, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 72960), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.f, label %bb.i

bb.f:                                             ; preds = %find_parser_by_type.exit
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.sink.split45, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %5, align 8, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %.sink.split45

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8
  br label %.sink.split45

.sink.split45:                                    ; preds = %bb.g, %bb.f, %bb.h
  %.sink46 = phi i64 [ -1, %bb.f ], [ %i.n, %bb.h ], [ -2, %bb.g ]
  store i64 %.sink46, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split45, %find_parser_by_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.o = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %.not = icmp eq i32 %i.o, 4
  br i1 %.not, label %find_parser_by_type.exit44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_INT64_NO_VAL, ptr noundef nonnull @.str.1123, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.o

find_parser_by_type.exit44:                       ; preds = %bb.j, %bb.a
  %i.q = tail call i32 @parse(ptr noundef %1, i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 1536), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.r = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_INT64_NO_VAL, ptr noundef nonnull @.str.1124, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1125) #21
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1117) #21
  unreachable

bb.o:                                             ; preds = %bb.l, %find_parser_by_type.exit44, %bb.k, %bb.i, %bb.e, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.e ], [ %i.g, %bb.i ], [ 9202, %bb.k ], [ %i.q, %find_parser_by_type.exit44 ], [ 9202, %bb.l ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_FLOAT128(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8
  %i.e = icmp eq i64 %i.d, -1                     ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %is_overloaded_INFINITE.exit, label %is_overloaded_INFINITE.exit.thread

is_overloaded_INFINITE.exit:                      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %is_overloaded_INFINITE.exit.thread

bb.c:                                             ; preds = %is_overloaded_INFINITE.exit
  %i.i = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  br label %bb.s

is_overloaded_INFINITE.exit.thread:               ; preds = %bb.b, %is_overloaded_INFINITE.exit
  %i.j = load x86_fp80, ptr %1, align 16          ; 4 uses
  %i.k = fcmp oeq x86_fp80 %i.j, f0x401EFFFFFFFE00000000
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %is_overloaded_INFINITE.exit.thread
  %i.l = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %is_overloaded_INFINITE.exit.thread
  %i.m = fcmp ogt x86_fp80 %i.j, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.p, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1126, x86_fp80 noundef %i.q) #19
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.r = fcmp olt x86_fp80 %i.j, f0xC3FEFFFFFFFFFFFFF800
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @data_set_float(ptr noundef %2, double noundef -inf) #19 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.u, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1127, x86_fp80 noundef %i.v) #19
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.w = fptrunc x86_fp80 %i.j to double
  %i.x = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.w) #19 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  br i1 %i.e, label %is_overloaded_INFINITE.exit43, label %is_overloaded_INFINITE.exit43.thread

is_overloaded_INFINITE.exit43:                    ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.k, label %is_overloaded_INFINITE.exit43.thread

is_overloaded_INFINITE.exit43.thread:             ; preds = %bb.j, %is_overloaded_INFINITE.exit43
  %i.ab = load x86_fp80, ptr %1, align 16         ; 6 uses
  %i.ac = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ab) #20
  %i.ad = fcmp oeq x86_fp80 %i.ac, +inf
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %is_overloaded_INFINITE.exit43.thread, %is_overloaded_INFINITE.exit43
  %i.ae = tail call ptr @data_set_float(ptr noundef %2, double noundef f0x43F0000000000000) #19 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.ag, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1100, ptr noundef nonnull @.str.1108) #19
  br label %bb.s

bb.l:                                             ; preds = %is_overloaded_INFINITE.exit43.thread
  %i.ah = fcmp oeq x86_fp80 %i.ab, f0x401EFFFFFFFE00000000
  %i.ai = fcmp uno x86_fp80 %i.ab, 0.000000e+00
  %or.cond = or i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call ptr @data_set_float(ptr noundef %2, double noundef f0x41EFFFFFFFC00000) #19 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.al, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1103) #19
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.am = fcmp ogt x86_fp80 %i.ab, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.ap, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1126, x86_fp80 noundef %i.aq) #19
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ar = fcmp olt x86_fp80 %i.ab, f0xC3FEFFFFFFFFFFFFF800
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = tail call ptr @data_set_float(ptr noundef %2, double noundef -inf) #19 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.au, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1127, x86_fp80 noundef %i.av) #19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aw = fptrunc x86_fp80 %i.ab to double
  %i.ax = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.aw) #19 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.o, %bb.r, %bb.q, %bb.m, %bb.c, %bb.f, %bb.i, %bb.h, %bb.d
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_FLOAT128(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
end_hunk_0
