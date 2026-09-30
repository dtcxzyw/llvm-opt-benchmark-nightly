Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-option?download=true
inline.NumInlined: 70
inline.NumDeleted: 18
begin_hunk_0
@error_abort = external global ptr, align 8
@.str.38 = private unnamed_addr constant [46 x i8] c"opt->desc && opt->desc->type == QEMU_OPT_BOOL\00", align 1
@__PRETTY_FUNCTION__.qemu_opt_get_bool_helper = private unnamed_addr constant [71 x i8] c"_Bool qemu_opt_get_bool_helper(QemuOpts *, const char *, _Bool, _Bool)\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"opt->desc && opt->desc->type == QEMU_OPT_NUMBER\00", align 1
@__PRETTY_FUNCTION__.qemu_opt_get_number_helper = private unnamed_addr constant [79 x i8] c"uint64_t qemu_opt_get_number_helper(QemuOpts *, const char *, uint64_t, _Bool)\00", align 1
@__func__.parse_option_number = private unnamed_addr constant [20 x i8] c"parse_option_number\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"Value '%s' is too large for parameter '%s'\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"a number\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"opt->desc && opt->desc->type == QEMU_OPT_SIZE\00", align 1
@__PRETTY_FUNCTION__.qemu_opt_get_size_helper = private unnamed_addr constant [77 x i8] c"uint64_t qemu_opt_get_size_helper(QemuOpts *, const char *, uint64_t, _Bool)\00", align 1
@__func__.opt_validate = private unnamed_addr constant [13 x i8] c"opt_validate\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [3 x i8] c"=,\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"short-form boolean option '%s%s' deprecated\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Please use nodelay=%s instead\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Please use %s=%s instead\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"*p == '='\00", align 1
@__PRETTY_FUNCTION__.get_opt_name_value = private unnamed_addr constant [93 x i8] c"const char *get_opt_name_value(const char *, const char *, _Bool, _Bool *, char **, char **)\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"!*p || *p == ','\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"!permit_abbrev || list->implied_opt_name\00", align 1
@__PRETTY_FUNCTION__.opts_parse = private unnamed_addr constant [84 x i8] c"QemuOpts *opts_parse(QemuOptsList *, const char *, _Bool, _Bool, _Bool *, Error **)\00", align 1
@.str.52 = private unnamed_addr constant [59 x i8] c"QTYPE_NONE < obj->base.type && obj->base.type < QTYPE__MAX\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/qemu/qemu/include/qobject/qobject.h\00", align 1
@__PRETTY_FUNCTION__.qobject_type = private unnamed_addr constant [36 x i8] c"QType qobject_type(const QObject *)\00", align 1
@switch.table.qemu_opts_print_help = private unnamed_addr constant [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @get_opt_value(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.042 = phi i64 [ 0, %bb.a ], [ %i.j, %bb.f ]   ; 2 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.v, %bb.f ]    ; 4 uses
  %i.a = tail call ptr @strchrnul(ptr noundef readonly %.0, i32 noundef 44) #16 ; 6 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %.0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 44
  %i.i = zext i1 %i.h to i64
  %spec.select = add i64 %i.d, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.041 = phi i64 [ %i.d, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = add i64 %.041, %.042                     ; 3 uses
  %i.k = load ptr, ptr %1, align 8
  %i.l = add i64 %i.j, 1
  %i.m = tail call ptr @g_realloc(ptr noundef %i.k, i64 noundef %i.l) #17 ; 2 uses
  store ptr %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.042
  %strncpy = tail call ptr @strncpy(ptr %i.n, ptr %.0, i64 %.041) ; 0 uses
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  store i8 0, ptr %i.p, align 1
  %i.q = load i8, ptr %i.a, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.not43 = icmp eq i8 %i.t, 44
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.0, i64 %i.d
  %i.v = getelementptr i8, ptr %i.u, i64 2
  br label %bb.b

bb.g:                                             ; preds = %bb.d, %bb.e
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @parse_option_size(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.b = call i32 @qemu_strtosz(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a) #17
  switch i32 %i.b, label %bb.c [
    i32 -34, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @__func__.parse_option_size, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %0) #17
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 146, ptr noundef nonnull @__func__.parse_option_size, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull @.str.3) #17
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef %3, ptr noundef nonnull @.str.4) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8
  store i64 %i.c, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %.0
}

declare i32 @qemu_strtosz(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @error_append_hint(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_opts_print_help(ptr nofree noundef readonly captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_ptr_array_new() #17     ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_opts_print_help) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not3540 = icmp eq ptr %i.c, null
  br i1 %.not3540, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.03041 = phi ptr [ %i.s, %bb.h ], [ %i.b, %bb.c ] ; 4 uses
  %i.d = tail call ptr @g_string_new(ptr noundef null) #17 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03041, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @__func__.opt_type_to_string, ptr noundef null) #18
  unreachable

switch.lookup:                                    ; preds = %.lr.ph
  %i.h = load ptr, ptr %.03041, align 8
  %i.i = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.qemu_opts_print_help, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.d, ptr noundef nonnull @.str.6, ptr noundef %i.h, ptr noundef nonnull %switch.load) #17
  %i.j = getelementptr inbounds nuw i8, ptr %.03041, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.k, null
  br i1 %.not39, label %bb.h, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 24
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = trunc nuw nsw i64 %i.m to i32
  %i.p = sub nuw nsw i32 24, %i.o
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.7, i32 noundef %i.p, ptr noundef nonnull @.str.8) #17
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %.pre, %bb.f ], [ %i.k, %bb.e ]
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.9, ptr noundef %i.q) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %i.r = tail call ptr @g_string_free(ptr noundef %i.d, i32 noundef 0) #17
  tail call void @g_ptr_array_add(ptr noundef %i.a, ptr noundef %i.r) #17
  %i.s = getelementptr inbounds nuw i8, ptr %.03041, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %.critedge, label %.lr.ph, !llvm.loop !16

.critedge:                                        ; preds = %bb.h, %bb.c
  tail call void @g_ptr_array_sort(ptr noundef %i.a, ptr noundef nonnull @qemu_pstrcmp0) #17
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %.not36 = icmp eq i32 %i.v, 0                   ; 2 uses
  br i1 %1, label %bb.i, label %2

bb.i:                                             ; preds = %.critedge
  br i1 %.not36, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %.not38 = icmp eq ptr %i.w, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.w) #17 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11) #17 ; 0 uses
  br label %bb.o

2:                                                ; preds = %.critedge
  br i1 %.not36, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.i, %2
  %i.z = load ptr, ptr %0, align 8                ; 2 uses
  %.not37 = icmp eq ptr %i.z, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.aa = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.z) #17 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.ab = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.13) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %2, %bb.n, %bb.m, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not44 = icmp eq i32 %i.ad, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.o, %.lr.ph43
  %.042 = phi i32 [ %i.aj, %.lr.ph43 ], [ 0, %bb.o ] ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = sext i32 %.042 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %i.ah) #17 ; 0 uses
  %i.aj = add nuw i32 %.042, 1                    ; 2 uses
  %i.ak = load i32, ptr %i.ac, align 8
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph43, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph43, %bb.o
  tail call void @g_ptr_array_set_free_func(ptr noundef nonnull %i.a, ptr noundef nonnull @g_free) #17
  %i.am = tail call ptr @g_ptr_array_free(ptr noundef nonnull %i.a, i32 noundef 1) #17 ; 0 uses
  ret void
}

declare ptr @g_ptr_array_new() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #2

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @g_ptr_array_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_ptr_array_sort(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @qemu_pstrcmp0(ptr noundef, ptr noundef) #2

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @g_ptr_array_set_free_func(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) #2

declare ptr @g_ptr_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @qemu_opt_find(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn9 = phi ptr [ %0, %bb.a ], [ %.0, %bb.c ]
  %.pn.in = getelementptr inbounds nuw i8, ptr %.pn9, i64 48
  %.pn = load ptr, ptr %.pn.in, align 8
  %.0.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.0.in = load ptr, ptr %.0.in.in, align 8
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %.0, align 8
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1) #16
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @qemu_opt_get(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %find_default_by_name.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.pn9.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ]
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 48
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.in.i = load ptr, ptr %.0.in.in.i, align 8
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.b = load ptr, ptr %.0.i, align 8
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %1) #16
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %qemu_opt_find.exit, label %.preheader, !llvm.loop !0

bb.c:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i, label %find_default_by_name.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %1) #16
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %find_desc_by_name.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.011.i4.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.i = add i32 %.011.i4.i, 1                    ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %find_default_by_name.exit, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull readonly dereferenceable(1) %1) #16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %find_desc_by_name.exit.i, label %.lr.ph.i, !llvm.loop !1

find_desc_by_name.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa.i = phi ptr [ %i.e, %.lr.ph.i.preheader.i ], [ %i.k, %.lr.ph.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  br label %find_default_by_name.exit

qemu_opt_find.exit:                               ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %find_default_by_name.exit

find_default_by_name.exit:                        ; preds = %.lr.ph.i, %find_desc_by_name.exit.i, %bb.c, %bb.a, %qemu_opt_find.exit
  %.0 = phi ptr [ null, %bb.a ], [ %i.r, %qemu_opt_find.exit ], [ %i.p, %find_desc_by_name.exit.i ], [ null, %bb.c ], [ null, %.lr.ph.i ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @qemu_opt_has_any(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not13.not = icmp eq ptr %i.a, null
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr i8, ptr %0, i64 8
  br i1 %i.b, label %._crit_edge, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph, %qemu_opt_get.exit.thread
  %i.d = phi ptr [ %i.v, %qemu_opt_get.exit.thread ], [ %i.a, %.lr.ph ] ; 3 uses
  %.014 = phi i32 [ %i.s, %qemu_opt_get.exit.thread ], [ 0, %.lr.ph ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.pn9.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %0, %.preheader.i.preheader ]
  %.pn.in.i.i = getelementptr inbounds nuw i8, ptr %.pn9.i.i, i64 48
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %.0.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %.0.in.i.i = load ptr, ptr %.0.in.in.i.i, align 8
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.e = load ptr, ptr %.0.i.i, align 8
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull readonly dereferenceable(1) %i.d) #16
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %qemu_opt_find.exit.i, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %.preheader.i
  %.val.i = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i, label %qemu_opt_get.exit.thread, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.c
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %i.d) #16
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %find_desc_by_name.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %.011.i4.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.k = add i32 %.011.i4.i.i, 1                  ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %qemu_opt_get.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.d) #16
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %find_desc_by_name.exit.i.i, label %.lr.ph.i.i, !llvm.loop !1

end_hunk_0
