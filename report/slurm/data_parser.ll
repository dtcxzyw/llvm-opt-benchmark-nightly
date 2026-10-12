Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/data_parser?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
@.str.8 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@__func__.data_parser_g_assign = private unnamed_addr constant [21 x i8] c"data_parser_g_assign\00", align 1
@__func__.data_parser_cli_meta = private unnamed_addr constant [21 x i8] c"data_parser_cli_meta\00", align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"26\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"26.05.2\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"data_parser_p_parse\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"data_parser_p_dump\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"data_parser_p_new\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"data_parser_p_free\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"data_parser_p_assign\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"data_parser_p_resolve_openapi_type\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"data_parser_p_resolve_type_string\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"data_parser_p_increment_reference\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"data_parser_p_populate_schema\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"data_parser_p_populate_parameters\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"data_parser_p_release_references\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"data_parser_p_is_complex\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"data_parser_p_is_deprecated\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"data_parser_p_dump_flags\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c",\00", align 1
@__func__._parse_plugin_type = private unnamed_addr constant [19 x i8] c"_parse_plugin_type\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"data_parser/v0.0.45\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"DATA: %s: plugin=%s params=%s\00", align 1
@__func__._load_plugins = private unnamed_addr constant [14 x i8] c"_load_plugins\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"application/json\00", align 1
@__func__._new_parser = private unnamed_addr constant [12 x i8] c"_new_parser\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @data_parser_g_parse(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @plugins, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %.not19 = icmp eq ptr %4, null
  br i1 %.not19, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @data_get_type(ptr noundef nonnull %4) #9
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 %i.n(ptr noundef %i.p, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %5) #9
  %i.r = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @timer_compare_limit(i64 %i.l, i64 %i.m, i64 %i.s, i64 %i.t, ptr noundef nonnull @__func__.data_parser_g_parse, ptr noundef nonnull byval(%struct.timespec) align 8 %6) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 9213, %bb.a ], [ %i.q, %bb.d ], [ 9212, %bb.c ], [ 9212, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @data_get_type(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @timespec_now() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @timer_compare_limit(i64, i64, i64, i64, ptr noundef, ptr noundef byval(%struct.timespec) align 8) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @data_parser_g_dump(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @plugins, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.m(ptr noundef %i.o, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #9
  %i.q = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @timer_compare_limit(i64 %i.j, i64 %i.k, i64 %i.r, i64 %i.s, ptr noundef nonnull @__func__.data_parser_g_dump, ptr noundef nonnull byval(%struct.timespec) align 8 %5) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ 9213, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @data_parser_g_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i1 noundef zeroext %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @xstrcasecmp(ptr noundef %8, ptr noundef nonnull @.str) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @load_plugins(ptr noundef nonnull @plugins, ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @parse_syms, i64 noundef 14) #9 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @_parse_plugin_type(ptr noundef %8) ; 12 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %.thread60, label %bb.d

.thread60:                                        ; preds = %bb.c
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.data_parser_g_new, ptr noundef %8) #9 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.data_parser_g_new, ptr noundef %8) #9 ; 0 uses
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.j = tail call fastcc i32 @_load_plugins(ptr noundef nonnull %i.d, ptr noundef %9, i1 noundef zeroext %10) ; 2 uses
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @slurm_strerror(i32 noundef %i.j) #9
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.data_parser_g_new, ptr noundef %i.k) #9 ; 0 uses
  br label %.preheader

bb.i:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.n = icmp ne ptr %i.m, null
  %i.o = load ptr, ptr @plugins, align 8          ; 4 uses
  %i.p = icmp ne ptr %i.o, null
  %or.cond.i = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond.i, label %.preheader40.i, label %_find_plugin_by_type.exit.thread

.preheader40.i:                                   ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not51.i = icmp eq i64 %i.r, 0
  br i1 %.not51.i, label %_find_plugin_by_type.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader40.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.m, %i.v
  br i1 %i.w, label %_find_plugin_by_type.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.r
  br i1 %exitcond.not.i, label %.lr.ph46.i, label %bb.j, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.l
  %i.x = icmp eq i64 %i.ag, 0
  br i1 %i.x, label %_find_plugin_by_type.exit.thread, label %.lr.ph48.i

.lr.ph46.i:                                       ; preds = %bb.k, %bb.l
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.y = phi ptr [ %i.ae, %bb.l ], [ %i.o, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv59.i
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.m, ptr noundef %i.ac) #9
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_find_plugin_by_type.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph46.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.ae = load ptr, ptr @plugins, align 8         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, %indvars.iv.next60.i
  br i1 %i.ah, label %.lr.ph46.i, label %.preheader.i, !llvm.loop !1

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.m
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.m ], [ 0, %.preheader.i ] ; 3 uses
  %i.ai = phi ptr [ %i.ap, %bb.m ], [ %i.ae, %.preheader.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv62.i
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.m, ptr noundef nonnull %i.an) #9
  %.not30.i = icmp eq i32 %i.ao, 0
  br i1 %.not30.i, label %_find_plugin_by_type.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph48.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.ap = load ptr, ptr @plugins, align 8         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp ugt i64 %i.ar, %indvars.iv.next63.i
  br i1 %i.as, label %.lr.ph48.i, label %_find_plugin_by_type.exit.thread, !llvm.loop !2

_find_plugin_by_type.exit:                        ; preds = %bb.j, %.lr.ph46.i, %.lr.ph48.i
  %.3.i.in = phi i64 [ %indvars.iv62.i, %.lr.ph48.i ], [ %indvars.iv59.i, %.lr.ph46.i ], [ %indvars.iv.i, %bb.j ]
  %.3.i = trunc i64 %.3.i.in to i32               ; 2 uses
  %i.at = icmp slt i32 %.3.i, 0
  br i1 %i.at, label %_find_plugin_by_type.exit.thread, label %bb.n

_find_plugin_by_type.exit.thread:                 ; preds = %bb.m, %.preheader.i, %.preheader40.i, %bb.i, %_find_plugin_by_type.exit
  %i.au = load ptr, ptr %i.d, align 8
  %i.av = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.data_parser_g_new, ptr noundef %i.au) #9 ; 0 uses
  br label %.preheader

bb.n:                                             ; preds = %_find_plugin_by_type.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr null, ptr %i.aw, align 8
  %i.ay = tail call fastcc ptr @_new_parser(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %.3.i, ptr noundef %i.ax)
  br label %.preheader

bb.o:                                             ; preds = %bb.d
  %i.az = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.data_parser_g_new, ptr noundef %8) #9 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.h, %_find_plugin_by_type.exit.thread, %bb.n, %bb.o
  %.02759 = phi ptr [ null, %bb.o ], [ %i.ay, %bb.n ], [ null, %_find_plugin_by_type.exit.thread ], [ null, %bb.h ], [ null, %bb.f ]
  %i.ba = load ptr, ptr %i.d, align 8
  %.not3644 = icmp eq ptr %i.ba, null
  br i1 %.not3644, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @slurm_xfree(ptr noundef nonnull %i.bb) #9
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.bd) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.bf = load ptr, ptr %i.be, align 8
  %.not36 = icmp eq ptr %i.bf, null
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !13

bb.p:                                             ; preds = %.thread60, %._crit_edge, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ %.02759, %._crit_edge ], [ null, %.thread60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.026
}

declare i32 @xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @load_plugins(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_parse_plugin_type(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xstrdup(ptr noundef nonnull %0) #9 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call ptr @strtok_r(ptr noundef %i.d, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not2428 = icmp eq ptr %i.e, null
  br i1 %.not2428, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.b ] ; 3 uses
  %.02029 = phi ptr [ %i.ab, %bb.j ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = add nuw nsw i64 %indvars.iv, 2
  %i.g = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 241, ptr noundef nonnull @__func__._parse_plugin_type) #9 ; 0 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 8 uses
  %i.j = call ptr @xstrstr(ptr noundef nonnull %.02029, ptr noundef nonnull @.str.28) #9 ; 3 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.02029 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = call ptr @xstrndup(ptr noundef nonnull %.02029, i64 noundef %i.m) #9
  store ptr %i.n, ptr %i.i, align 8
  %i.o = call ptr @xstrdup(ptr noundef nonnull %i.j) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %.pre = load ptr, ptr %i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.q = call ptr @xstrdup(ptr noundef nonnull %.02029) #9 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %.pre, %bb.c ]
  %i.s = call i32 @xstrcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.29) #9
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @slurm_xfree(ptr noundef nonnull %i.i) #9
  %i.t = call ptr @xstrdup(ptr noundef nonnull @.str.30) #9
  store ptr %i.t, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.v = and i64 %i.u, 256
  %.not27 = icmp eq i64 %i.v, 0
  br i1 %.not27, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 @get_log_level() #9
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._parse_plugin_type, ptr noundef %i.y, ptr noundef %i.aa) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ab = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not24 = icmp eq ptr %i.ab, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.j, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %i.ac = load ptr, ptr %i.c, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %._crit_edge
  %.021 = phi ptr [ %i.ac, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.021
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_load_plugins(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @init_mutex) #9 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #10
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._load_plugins) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @serializer_required(ptr noundef nonnull @.str.32) #9
  %.not22 = icmp eq ptr %0, null
  br i1 %.not22, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.c = tail call i32 @load_plugins(ptr noundef nonnull @plugins, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef %1, ptr noundef nonnull @parse_syms, i64 noundef 14) #9
  br label %.critedge

.preheader:                                       ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.f = tail call i32 @load_plugins(ptr noundef nonnull @plugins, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef nonnull @parse_syms, i64 noundef 14) #9 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %.preheader, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %.preheader, %bb.f, %bb.e
  %.1 = phi i32 [ %i.c, %bb.e ], [ 0, %.preheader ], [ %i.f, %bb.f ]
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @init_mutex) #9 ; 2 uses
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.h = tail call ptr @__errno_location() #10
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__._load_plugins) #11
  unreachable

bb.h:                                             ; preds = %.critedge, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ]
  ret i32 %.017
}

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_new_parser(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 2 uses
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 201, ptr noundef nonnull @__func__._new_parser) #9 ; 7 uses
  store i32 245412286, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %8, ptr %i.b, align 4
  %i.c = load ptr, ptr @plugins, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %8 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %9, ptr %i.j, align 8
  %i.k = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = load ptr, ptr @plugins, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.f
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call ptr %i.t(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %9) #9
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.y, null
  %spec.select = select i1 %.not, ptr @.str.34, ptr %i.y
  tail call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.33, ptr noundef %i.x, ptr noundef nonnull %spec.select) #9
  %i.z = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @timer_compare_limit(i64 %i.l, i64 %i.m, i64 %i.aa, i64 %i.ab, ptr noundef nonnull @__func__._new_parser, ptr noundef nonnull byval(%struct.timespec) align 8 %10) #9
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @init_mutex) #9 ; 2 uses
  %.not34 = icmp eq i32 %i.ac, 0
  br i1 %.not34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call ptr @__errno_location() #10
  store i32 %i.ac, ptr %i.ad, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._new_parser) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = load i32, ptr @active_parsers, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr @active_parsers, align 4
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @init_mutex) #9 ; 2 uses
  %.not35 = icmp eq i32 %i.ag, 0
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call ptr @__errno_location() #10
  store i32 %i.ag, ptr %i.ah, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__._new_parser) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  ret ptr %i.a
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @data_parser_g_new_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i1 noundef zeroext %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = tail call i32 @xstrcasecmp(ptr noundef %8, ptr noundef nonnull @.str) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @load_plugins(ptr noundef nonnull @plugins, ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @parse_syms, i64 noundef 14) #9 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @_parse_plugin_type(ptr noundef %8) ; 7 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = tail call fastcc i32 @_load_plugins(ptr noundef %i.e, ptr noundef %9, i1 noundef zeroext %10) ; 2 uses
  %.not57 = icmp eq i32 %i.f, 0
  br i1 %.not57, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @plugins, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 1
  %i.k = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 427, ptr noundef nonnull @__func__.data_parser_g_new_array) #9 ; 5 uses
  store ptr %i.k, ptr %i.a, align 8
  %.not58 = icmp eq ptr %i.e, null
  br i1 %.not58, label %.preheader, label %.preheader71

.preheader71:                                     ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not5984 = icmp eq ptr %i.l, null
  br i1 %.not5984, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.d
  %i.m = load ptr, ptr @plugins, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %.not94 = icmp eq i64 %i.o, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph92

.lr.ph:                                           ; preds = %.preheader71, %bb.i
  %i.p = phi ptr [ %i.bh, %bb.i ], [ %i.e, %.preheader71 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader71 ] ; 7 uses
  %i.q = phi ptr [ %i.bk, %bb.i ], [ %i.l, %.preheader71 ] ; 3 uses
  %i.r = load ptr, ptr @plugins, align 8          ; 4 uses
  %.not65 = icmp eq ptr %i.r, null
  br i1 %.not65, label %.thread, label %.preheader40.i

.preheader40.i:                                   ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.not51.i = icmp eq i64 %i.t, 0
  br i1 %.not51.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader40.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.q, %i.x
  br i1 %i.y, label %_find_plugin_by_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.t
  br i1 %exitcond.not.i, label %.lr.ph46.i, label %bb.e, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.g
  %i.z = icmp eq i64 %i.ai, 0
  br i1 %i.z, label %.thread, label %.lr.ph48.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.g
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.g ], [ %i.r, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv59.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.q, ptr noundef %i.ae) #9
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_find_plugin_by_type.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph46.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.ag = load ptr, ptr @plugins, align 8         ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %indvars.iv.next60.i
  br i1 %i.aj, label %.lr.ph46.i, label %.preheader.i, !llvm.loop !1

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.h
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.ak = phi ptr [ %i.ar, %bb.h ], [ %i.ag, %.preheader.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv62.i
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = tail call i32 @xstrcasecmp(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ap) #9
  %.not30.i = icmp eq i32 %i.aq, 0
  br i1 %.not30.i, label %_find_plugin_by_type.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph48.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.ar = load ptr, ptr @plugins, align 8         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp ugt i64 %i.at, %indvars.iv.next63.i
  br i1 %i.au, label %.lr.ph48.i, label %.thread, !llvm.loop !2

_find_plugin_by_type.exit:                        ; preds = %bb.e, %.lr.ph46.i, %.lr.ph48.i
  %.3.i.in = phi i64 [ %indvars.iv62.i, %.lr.ph48.i ], [ %indvars.iv59.i, %.lr.ph46.i ], [ %indvars.iv.i, %bb.e ]
  %.3.i = trunc i64 %.3.i.in to i32               ; 2 uses
  %i.av = icmp slt i32 %.3.i, 0
  br i1 %i.av, label %.thread, label %bb.i

.thread:                                          ; preds = %_find_plugin_by_type.exit, %.lr.ph, %.preheader40.i, %.preheader.i, %bb.h
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.data_parser_g_new_array, ptr noundef %i.ax) #9 ; 0 uses
  br label %.preheader68

bb.i:                                             ; preds = %_find_plugin_by_type.exit
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call fastcc ptr @_new_parser(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %.3.i, ptr noundef %i.bb)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.b, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr null, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv
  tail call void @slurm_xfree(ptr noundef %i.bi) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.next
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.bk, null
  br i1 %.not59, label %.loopexit, label %.lr.ph, !llvm.loop !16

.lr.ph92:                                         ; preds = %.preheader, %.lr.ph92
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph92 ], [ 0, %.preheader ] ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.bm = tail call fastcc ptr @_new_parser(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %i.bl, ptr noundef null)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv116
  store ptr %i.bm, ptr %i.bn, align 8
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.bo = load ptr, ptr @plugins, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp ugt i64 %i.bq, %indvars.iv.next117
  br i1 %i.br, label %.lr.ph92, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.i, %.lr.ph92, %.preheader71, %.preheader
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.bs = tail call ptr @slurm_strerror(i32 noundef %i.f) #9
  %i.bt = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.data_parser_g_new_array, ptr noundef %i.bs) #9 ; 0 uses
  %.not60 = icmp eq ptr %i.e, null
  br i1 %.not60, label %.loopexit67, label %.preheader68

.preheader68:                                     ; preds = %.thread, %bb.j
  %.2132 = phi i64 [ %indvars.iv, %.thread ], [ 0, %bb.j ] ; 2 uses
  %i.bu = phi ptr [ %i.p, %.thread ], [ %i.e, %bb.j ] ; 3 uses
  %i.bv = phi ptr [ %i.k, %.thread ], [ null, %bb.j ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.2132 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not6186 = icmp eq ptr %i.bx, null
  br i1 %.not6186, label %.loopexit135, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader68, %.lr.ph88
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.lr.ph88 ], [ %.2132, %.preheader68 ] ; 2 uses
  %i.by = phi ptr [ %i.cb, %.lr.ph88 ], [ %i.bw, %.preheader68 ]
  tail call void @slurm_xfree(ptr noundef nonnull %i.by) #9
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv110
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.ca) #9
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.next111 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not61 = icmp eq ptr %i.cc, null
  br i1 %.not61, label %.loopexit135, label %.lr.ph88, !llvm.loop !18

.loopexit135:                                     ; preds = %.lr.ph88, %.preheader68
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %i.cd = load ptr, ptr @plugins, align 8         ; 2 uses
  %i.ce = icmp ne ptr %i.cd, null
  %i.cf = icmp ne ptr %i.bv, null
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %.preheader66, label %.loopexit67

.preheader66:                                     ; preds = %.loopexit135
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ch = load i64, ptr %i.cg, align 8
  %.not93 = icmp eq i64 %i.ch, 0
  br i1 %.not93, label %.loopexit67, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader66, %bb.l
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %bb.l ], [ 0, %.preheader66 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv113 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not62 = icmp eq ptr %i.cj, null
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph90
  call void @data_parser_g_free(ptr noundef nonnull %i.cj, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph90
  store ptr null, ptr %i.ci, align 8
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.ck = load ptr, ptr @plugins, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = icmp ugt i64 %i.cm, %indvars.iv.next114
  br i1 %i.cn, label %.lr.ph90, label %.loopexit67, !llvm.loop !19

.loopexit67:                                      ; preds = %bb.l, %bb.j, %.preheader66, %.loopexit135
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.m

bb.m:                                             ; preds = %.loopexit67, %.loopexit, %bb.b
  %.050 = phi ptr [ null, %.loopexit67 ], [ null, %bb.b ], [ %i.k, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.050
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @data_parser_g_free(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.timespec, align 8           ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @plugins, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  %i.m = load ptr, ptr @plugins, align 8
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.o(ptr noundef %i.q) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = tail call { i64, i64 } @timespec_now() #9 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @timer_compare_limit(i64 %i.k, i64 %i.l, i64 %i.s, i64 %i.t, ptr noundef nonnull @__func__.data_parser_g_free, ptr noundef nonnull byval(%struct.timespec) align 8 %2) #9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.u) #9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @slurm_xfree(ptr noundef nonnull %i.v) #9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.w, align 8
  store i32 -1, ptr %i.e, align 4
  store i32 -245412287, ptr %0, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  %i.x = call i32 @pthread_mutex_lock(ptr noundef nonnull @init_mutex) #9 ; 2 uses
  %.not15 = icmp eq i32 %i.x, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call ptr @__errno_location() #10
  store i32 %i.x, ptr %i.y, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.data_parser_g_free) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = load i32, ptr @active_parsers, align 4
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr @active_parsers, align 4
  %i.ab = icmp ne i32 %i.aa, 0
  %or.cond = select i1 %1, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @plugins, align 8         ; 2 uses
  %.not16 = icmp eq ptr %i.ac, null
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @unload_plugins(ptr noundef nonnull %i.ac) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr @plugins, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %i.ad = call i32 @pthread_mutex_unlock(ptr noundef nonnull @init_mutex) #9 ; 2 uses
  %.not17 = icmp eq i32 %i.ad, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call ptr @__errno_location() #10
  store i32 %i.ad, ptr %i.ae, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.data_parser_g_free) #11
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.a
  ret void
}
end_hunk_0
