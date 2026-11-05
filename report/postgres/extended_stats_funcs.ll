Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/extended_stats_funcs?download=true
inline.NumInlined: 60
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.JsonbValue = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, ptr, i8 }
%struct.FmgrInfo = type { ptr, i32, i16, i8, i8, i8, ptr, ptr, ptr }
%union.anon = type { %struct.FunctionCallInfoBaseData, [176 x i8] }
%struct.FunctionCallInfoBaseData = type { ptr, ptr, ptr, i32, i8, i16, [0 x %struct.NullableDatum] }
%struct.NullableDatum = type { i64, i8 }
%struct.ScanKeyData = type { i32, i16, i16, i32, i32, %struct.FmgrInfo, i64 }
%struct.ErrorSaveContext = type { i32, i8, i8, ptr }
%struct.StringInfoData = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"recovery is in progress\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Statistics cannot be modified during recovery.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"extended_stats_funcs.c\00", align 1
@__func__.pg_clear_extended_stats = private unnamed_addr constant [24 x i8] c"pg_clear_extended_stats\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not find schema \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"could not find extended statistics object \22%s.%s\22\00", align 1
@.str.5 = private unnamed_addr constant [89 x i8] c"could not clear extended statistics object \22%s.%s\22: incorrect relation \22%s.%s\22 specified\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"schemaname\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"relname\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"statistics_schemaname\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"statistics_name\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"inherited\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"n_distinct\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"dependencies\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"most_common_vals\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"most_common_freqs\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"most_common_base_freqs\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"exprs\00", align 1
@extarginfo = internal global [12 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.6, i32 25, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.7, i32 25, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.8, i32 25, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.9, i32 25, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.10, i32 16, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.11, i32 3361, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.12, i32 3402, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.13, i32 1009, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.14, i32 1022, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.15, i32 1022, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.16, i32 3802, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@__func__.extended_statistics_update = private unnamed_addr constant [27 x i8] c"extended_statistics_update\00", align 1
@.str.18 = private unnamed_addr constant [91 x i8] c"could not restore extended statistics object \22%s.%s\22: incorrect relation \22%s.%s\22 specified\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"cannot specify parameter \22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [77 x i8] c"Extended statistics object \22%s.%s\22 does not support statistics of this type.\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"cannot specify parameters \22%s\22, \22%s\22, or \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"could not use \22%s\22, \22%s\22, and \22%s\22: missing one or more parameters\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"stxkeys references nonexistent attnum %d\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"stxkeys references dropped attnum %d\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"stxkind is not a one-dimension char array\00", align 1
@__func__.expand_stxkind = private unnamed_addr constant [15 x i8] c"expand_stxkind\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"incorrect stxkind %c found\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"could not parse array \22%s\22: incorrect number of dimensions (%d required)\00", align 1
@__func__.import_mcv = private unnamed_addr constant [11 x i8] c"import_mcv\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"could not parse array \22%s\22: found %d attributes but expected %d\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"could not parse array \22%s\22: number of items (%d) exceeds maximum (%d)\00", align 1
@__func__.check_mcvlist_array = private unnamed_addr constant [20 x i8] c"check_mcvlist_array\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"could not parse array \22%s\22: NULL value found\00", align 1
@.str.31 = private unnamed_addr constant [81 x i8] c"could not parse array \22%s\22: incorrect number of elements (same as \22%s\22 required)\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"could not parse \22%s\22: root-level array required\00", align 1
@__func__.import_expressions = private unnamed_addr constant [19 x i8] c"import_expressions\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"could not parse \22%s\22: incorrect number of elements (%d required)\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"could not parse \22%s\22: invalid element in expression %d\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@__func__.import_pg_statistic = private unnamed_addr constant [20 x i8] c"import_pg_statistic\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"Value of element \22%s\22 must be a null or a string.\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"\22%s\22 and \22%s\22 must be both either strings or nulls.\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"\22%s\22, \22%s\22, and \22%s\22 must be all either strings or all nulls.\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"could not parse \22%s\22: invalid element type in expression %d\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"could not parse \22%s\22: invalid data in expression %d\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"\22%s\22, \22%s\22, and \22%s\22 can only be set for a range type.\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"could not parse \22%s\22: incorrect number of elements (same as \22%s\22 required)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"null_frac\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"avg_width\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"histogram_bounds\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"correlation\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"most_common_elems\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"most_common_elem_freqs\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"elem_count_histogram\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"range_length_histogram\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"range_empty_frac\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"range_bounds_histogram\00", align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"could not import element in expression %d: invalid key name\00", align 1
@__func__.check_all_expr_argnames_valid = private unnamed_addr constant [30 x i8] c"check_all_expr_argnames_valid\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"Element \22%s\22 in expression %d could not be parsed.\00", align 1
@__const.array_in_safe.escontext = private unnamed_addr constant { i32, i8, i8, [2 x i8], ptr } { i32 468, i8 0, i8 1, [2 x i8] zeroinitializer, ptr null }, align 8
@.str.54 = private unnamed_addr constant [80 x i8] c"could not import element \22%s\22 in expression %d: must be a one-dimensional array\00", align 1
@__func__.array_in_safe = private unnamed_addr constant [14 x i8] c"array_in_safe\00", align 1
@.str.55 = private unnamed_addr constant [65 x i8] c"could not import element \22%s\22 in expression %d: null value found\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @pg_restore_extended_stats(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %1 = alloca %struct.JsonbValue, align 8         ; 8 uses
  %2 = alloca %struct.JsonbValue, align 8         ; 6 uses
  %i.b = alloca [31 x i64], align 16              ; 14 uses
  %i.c = alloca [31 x i8], align 16               ; 11 uses
  %i.d = alloca [31 x i8], align 16               ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %3 = alloca [13 x %struct.JsonbValue], align 16 ; 34 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca [1 x i64], align 8                ; 6 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %i.p = alloca i8, align 1                       ; 5 uses
  %i.q = alloca i8, align 1                       ; 5 uses
  %i.r = alloca [1 x i64], align 8                ; 6 uses
  %i.s = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.FmgrInfo, align 8           ; 13 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca [6 x i64], align 16               ; 11 uses
  %i.x = alloca [6 x i8], align 1                 ; 11 uses
  %i.y = alloca [6 x i8], align 1                 ; 8 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %5 = alloca %union.anon, align 8                ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %5, i8 0, i64 29, i1 false)
  store i16 11, ptr %i.ab, align 2
  %i.ac = call zeroext i1 @stats_fill_fcinfo_from_arg_pairs(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @extarginfo) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.x, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.y, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #6
  store i32 0, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !8, !noundef !9
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !8
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %i.al, label %11, label %6

6:                                                ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 184
  %8 = load i8, ptr %7, align 8, !range !8, !noundef !9
  %9 = trunc nuw i8 %8 to i1
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %6, %bb.a
  %12 = phi i1 [ %10, %6 ], [ false, %bb.a ]      ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %15 = load i8, ptr %14, align 8, !range !8, !noundef !9 ; 2 uses
  %16 = trunc nuw i8 %15 to i1
  %17 = xor i8 %15, 1
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %20 = load i8, ptr %19, align 8, !range !8, !noundef !9 ; 2 uses
  %21 = trunc nuw i8 %20 to i1
  %22 = xor i8 %20, 1
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 192
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 200
  %25 = load i8, ptr %24, align 8, !range !8, !noundef !9 ; 2 uses
  %26 = trunc nuw i8 %25 to i1
  %27 = xor i8 %25, 1
  %28 = call zeroext i1 @RecoveryInProgress() #6
  br i1 %28, label %bb.b, label %bb.d

bb.b:                                             ; preds = %11
  %i.am = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.am, label %bb.c, label %extended_statistics_update.exit

bb.c:                                             ; preds = %bb.b
  %i.an = call i32 @errcode(i32 noundef 325) #6   ; 0 uses
  %i.ao = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #6 ; 0 uses
  %i.ap = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.1) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 371, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %extended_statistics_update.exit

bb.d:                                             ; preds = %11
  call void @stats_check_required_arg(ptr noundef nonnull %5, ptr noundef nonnull @extarginfo, i32 noundef 0) #6
  %i.aq = load i64, ptr %i.ad, align 8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = call ptr @text_to_cstring(ptr noundef %i.ar) #6 ; 2 uses
  call void @stats_check_required_arg(ptr noundef nonnull %5, ptr noundef nonnull @extarginfo, i32 noundef 1) #6
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.au = load i64, ptr %i.at, align 8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call ptr @text_to_cstring(ptr noundef %i.av) #6 ; 2 uses
  call void @stats_check_required_arg(ptr noundef nonnull %5, ptr noundef nonnull @extarginfo, i32 noundef 2) #6
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call ptr @text_to_cstring(ptr noundef %i.az) #6 ; 8 uses
  call void @stats_check_required_arg(ptr noundef nonnull %5, ptr noundef nonnull @extarginfo, i32 noundef 3) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = call ptr @text_to_cstring(ptr noundef %i.bd) #6 ; 7 uses
  call void @stats_check_required_arg(ptr noundef nonnull %5, ptr noundef nonnull @extarginfo, i32 noundef 4) #6
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = call ptr @makeRangeVar(ptr noundef %i.as, ptr noundef %i.aw, i32 noundef -1) #6
  %i.bj = call i32 @RangeVarGetRelidExtended(ptr noundef %i.bi, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @RangeVarCallbackForStats, ptr noundef nonnull %i.aa) #6 ; 2 uses
  %i.bk = call i32 @get_namespace_oid(ptr noundef %i.ba, i1 noundef zeroext true) #6 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bm = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.bm, label %bb.f, label %extended_statistics_update.exit

bb.f:                                             ; preds = %bb.e
  %i.bn = call i32 @errcode(i32 noundef 67137668) #6 ; 0 uses
  %i.bo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, ptr noundef %i.ba) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 404, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %extended_statistics_update.exit

bb.g:                                             ; preds = %bb.d
  %i.bp = call ptr @table_open(i32 noundef 3381, i32 noundef 3) #6 ; 3 uses
  %i.bq = call fastcc ptr @get_pg_statistic_ext(ptr noundef %i.bp, i32 noundef %i.bk, ptr noundef %i.be) ; 5 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.br = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.br, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bs = call i32 @errcode(i32 noundef 67137668) #6 ; 0 uses
  %i.bt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, ptr noundef %i.ba, ptr noundef %i.be) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 417, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %.thread.i

bb.j:                                             ; preds = %bb.g
  %i.bu = getelementptr i8, ptr %i.bq, i64 16
  %.val197.i = load ptr, ptr %i.bu, align 8       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val197.i, i64 22
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.val197.i, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %.not190.i = icmp eq i32 %i.ca, %i.bj
  br i1 %.not190.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.cb, label %bb.l, label %.thread233.i

bb.l:                                             ; preds = %bb.k
  %i.cc = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.cd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef %i.ba, ptr noundef %i.be, ptr noundef %i.as, ptr noundef %i.aw) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 434, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %.thread233.i

bb.m:                                             ; preds = %bb.j
  %i.ce = call i64 @SysCacheGetAttrNotNull(i32 noundef 72, ptr noundef nonnull %i.bq, i16 noundef signext 8) #6
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = call ptr @pg_detoast_datum(ptr noundef %i.cf) #6 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %.not.i.i = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i32, ptr %i.cj, align 4
  %.not21.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not21.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cm = load i32, ptr %i.cl, align 4
  %.not22.i.i = icmp eq i32 %i.cm, 18
  br i1 %.not22.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cn = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.co = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.25) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 237, ptr noundef nonnull @__func__.expand_stxkind) #6
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.preheader.i, label %expand_stxkind.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.q
  %i.ct = zext nneg i32 %i.cr to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.preheader.i
  %.sroa.9.0.i = phi i1 [ %.sroa.9.1.i, %bb.v ], [ false, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.7.0211.i = phi i1 [ %.sroa.7.1.i, %bb.v ], [ false, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.5.0.i = phi i1 [ %.sroa.5.1.i, %bb.v ], [ false, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.0.0210.i = phi i1 [ %.sroa.0.1.i, %bb.v ], [ false, %.lr.ph.i.preheader.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.v ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.i.i
  %i.cv = load i8, ptr %i.cu, align 1
  switch i8 %i.cv, label %bb.u [
    i8 100, label %bb.v
    i8 102, label %bb.r
    i8 109, label %bb.s
    i8 101, label %bb.t
  ]

bb.r:                                             ; preds = %.lr.ph.i.i
  br label %bb.v

bb.s:                                             ; preds = %.lr.ph.i.i
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.i.i
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.i.i
  %i.cx = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.cy = load i8, ptr %i.cw, align 1
  %i.cz = sext i8 %i.cy to i32
  %i.da = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.26, i32 noundef %i.cz) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 258, ptr noundef nonnull @__func__.expand_stxkind) #6
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph.i.i
  %.sroa.9.1.i = phi i1 [ true, %bb.t ], [ %.sroa.9.0.i, %bb.r ], [ %.sroa.9.0.i, %bb.s ], [ %.sroa.9.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.7.1.i = phi i1 [ %.sroa.7.0211.i, %bb.t ], [ %.sroa.7.0211.i, %bb.r ], [ true, %bb.s ], [ %.sroa.7.0211.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.1.i = phi i1 [ %.sroa.5.0.i, %bb.t ], [ true, %bb.r ], [ %.sroa.5.0.i, %bb.s ], [ %.sroa.5.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0210.i, %bb.t ], [ %.sroa.0.0210.i, %bb.r ], [ %.sroa.0.0210.i, %bb.s ], [ true, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.ct
  br i1 %exitcond.not.i, label %expand_stxkind.exit.i, label %.lr.ph.i.i, !llvm.loop !4

expand_stxkind.exit.i:                            ; preds = %bb.v, %bb.q
  %.sroa.9.2.i = phi i1 [ false, %bb.q ], [ %.sroa.9.1.i, %bb.v ]
  %.sroa.7.2.i = phi i1 [ false, %bb.q ], [ %.sroa.7.1.i, %bb.v ]
  %.sroa.5.2.i = phi i1 [ false, %bb.q ], [ %.sroa.5.1.i, %bb.v ]
  %.sroa.0.2.i = phi i1 [ false, %bb.q ], [ %.sroa.0.1.i, %bb.v ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.dd = load i32, ptr %i.dc, align 4            ; 7 uses
  %i.de = call i64 @SysCacheGetAttr(i32 noundef 72, ptr noundef nonnull %i.bq, i16 noundef signext 9, ptr noundef nonnull %i.z) #6
  %i.df = load i8, ptr %i.z, align 1, !range !8, !noundef !9
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %list_length.exit.i, label %bb.w

bb.w:                                             ; preds = %expand_stxkind.exit.i
  %i.dh = inttoptr i64 %i.de to ptr
  %i.di = call ptr @text_to_cstring(ptr noundef %i.dh) #6 ; 2 uses
  %i.dj = call ptr @stringToNode(ptr noundef %i.di) #6
  call void @pfree(ptr noundef %i.di) #6
  %i.dk = call ptr @eval_const_expressions(ptr noundef null, ptr noundef %i.dj) #6 ; 4 uses
  call void @fix_opfuncids(ptr noundef %i.dk) #6
  %.not.i198.i = icmp eq ptr %i.dk, null
  br i1 %.not.i198.i, label %list_length.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  br label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.x, %bb.w, %expand_stxkind.exit.i
  %.0179.i = phi ptr [ null, %expand_stxkind.exit.i ], [ null, %bb.w ], [ %i.dk, %bb.x ]
  %.0178.i = phi i32 [ 0, %expand_stxkind.exit.i ], [ 0, %bb.w ], [ %i.dm, %bb.x ] ; 8 uses
  %i.dn = add i32 %.0178.i, %i.dd                 ; 6 uses
  %or.cond.i = select i1 %16, i1 true, i1 %.sroa.0.2.i ; 2 uses
  br i1 %or.cond.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %list_length.exit.i
  %i.do = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.do, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dp = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 80), align 16
  %i.dr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef %i.dq) #6 ; 0 uses
  %i.ds = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.20, ptr noundef %i.ba, ptr noundef %i.be) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 487, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %list_length.exit.i
  %.sroa.0.0.i = phi i8 [ %17, %list_length.exit.i ], [ 0, %bb.z ], [ 0, %bb.y ]
  %or.cond6.i = select i1 %21, i1 true, i1 %.sroa.5.2.i
  br i1 %or.cond6.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 96), align 16
  %i.dw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef %i.dv) #6 ; 0 uses
  %i.dx = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.20, ptr noundef %i.ba, ptr noundef %i.be) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 504, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.7.0.i = phi i8 [ %22, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  %.1181.i = phi i1 [ %or.cond.i, %bb.aa ], [ false, %bb.ac ], [ false, %bb.ab ] ; 3 uses
  br i1 %.sroa.7.2.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load i8, ptr %i.af, align 8, !range !8, !noundef !9
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = load i8, ptr %i.ai, align 8, !range !8
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond13 = select i1 %i.dz, i1 %i.eb, i1 false
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.ec = load i8, ptr %29, align 8, !range !8
  %i.ed = trunc nuw i8 %i.ec to i1
  %or.cond16 = select i1 %or.cond13, i1 %i.ed, i1 false
  br i1 %or.cond16, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.ee, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ef = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 112), align 16
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 128), align 16
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 144), align 16
  %i.ej = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, ptr noundef %i.eg, ptr noundef %i.eh, ptr noundef %i.ei) #6 ; 0 uses
  %i.ek = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.20, ptr noundef %i.ba, ptr noundef %i.be) #6 ; 0 uses
  br label %.sink.split.i

bb.ah:                                            ; preds = %bb.ad
  br i1 %12, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = load i8, ptr %i.af, align 8, !range !8, !noundef !9
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = load i8, ptr %i.ai, align 8, !range !8
  %i.eo = trunc nuw i8 %i.en to i1
  %or.cond19 = select i1 %i.em, i1 %i.eo, i1 false
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.ep = load i8, ptr %30, align 8, !range !8
  %i.eq = trunc nuw i8 %i.ep to i1
  %or.cond22 = select i1 %or.cond19, i1 %i.eq, i1 false
  br i1 %or.cond22, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.er, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.es = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 112), align 16
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 128), align 16
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 144), align 16
  %i.ew = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef %i.et, ptr noundef %i.eu, ptr noundef %i.ev) #6 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ak, %bb.ag
  %.sink.i = phi i32 [ 550, %bb.ak ], [ 528, %bb.ag ]
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ae, %.sink.split.i, %bb.aj, %bb.ah, %bb.af
  %.sroa.11.0.shrunk.i = phi i1 [ true, %bb.ah ], [ false, %bb.ai ], [ false, %bb.af ], [ %12, %bb.ae ], [ false, %bb.aj ], [ false, %.sink.split.i ] ; 2 uses
  %.2.i = phi i1 [ %.1181.i, %bb.ah ], [ %.1181.i, %bb.ai ], [ false, %bb.af ], [ %.1181.i, %bb.ae ], [ false, %bb.aj ], [ false, %.sink.split.i ]
  %or.cond10.i = select i1 %26, i1 true, i1 %.sroa.9.2.i
  br i1 %or.cond10.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.ex, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ey = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 160), align 16
  %i.fa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef %i.ez) #6 ; 0 uses
  %i.fb = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.20, ptr noundef %i.ba, ptr noundef %i.be) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef nonnull @__func__.extended_statistics_update) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.16.0.i = phi i8 [ %27, %bb.al ], [ 0, %bb.an ], [ 0, %bb.am ]
  %.3.i = phi i1 [ %.2.i, %bb.al ], [ false, %bb.an ], [ false, %bb.am ] ; 2 uses
  %i.fc = trunc nuw i8 %.sroa.16.0.i to i1        ; 2 uses
  %or.cond13.i = select i1 %.sroa.11.0.shrunk.i, i1 true, i1 %i.fc
  br i1 %or.cond13.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  %i.fd = sext i32 %i.dn to i64                   ; 3 uses
  %i.fe = call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.fd) #6 ; 4 uses
  %i.ff = call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.fd) #6 ; 4 uses
  %i.fg = call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.fd) #6 ; 4 uses
  %i.fh = icmp sgt i32 %i.dd, 0
  br i1 %i.fh, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.fj = zext i32 %i.bj to i64
  %wide.trip.count.i = zext nneg i32 %i.dd to i64
  br label %bb.aq

.preheader.i:                                     ; preds = %bb.au, %bb.ap
  %i.fk = icmp slt i32 %i.dd, %i.dn
  br i1 %i.fk, label %.lr.ph287.i, label %.loopexit.i

.lr.ph287.i:                                      ; preds = %.preheader.i
  %i.fl = getelementptr i8, ptr %.0179.i, i64 16
  %i.fm = sext i32 %i.dd to i64
  br label %bb.av

bb.aq:                                            ; preds = %bb.au, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.au ] ; 5 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %indvars.iv.i
  %i.fo = load i16, ptr %i.fn, align 2            ; 3 uses
  %i.fp = sext i16 %i.fo to i64
  %i.fq = call ptr @SearchSysCache2(i32 noundef 7, i64 noundef %i.fj, i64 noundef %i.fp) #6 ; 3 uses
  %.not191.i = icmp eq ptr %i.fq, null
  br i1 %.not191.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fr = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.fs = sext i16 %i.fo to i32
  %i.ft = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, i32 noundef %i.fs) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 603, ptr noundef nonnull @__func__.extended_statistics_update) #6
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.fu = getelementptr i8, ptr %i.fq, i64 16
  %.val.i = load ptr, ptr %i.fu, align 8          ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.fw = load i8, ptr %i.fv, align 2
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.fx ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 91
  %i.ga = load i8, ptr %i.fz, align 1, !range !8, !noundef !9
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.gd = sext i16 %i.fo to i32
  %i.ge = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.24, i32 noundef %i.gd) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 608, ptr noundef nonnull @__func__.extended_statistics_update) #6
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 68
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i
  store i32 %i.gg, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 76
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i
  store i32 %i.gj, ptr %i.gk, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  store i32 %i.gm, ptr %i.gn, align 4
  call void @ReleaseSysCache(ptr noundef nonnull %i.fq) #6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond296.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond296.not.i, label %.preheader.i, label %bb.aq, !llvm.loop !5

bb.av:                                            ; preds = %bb.av, %.lr.ph287.i
  %indvars.iv297.i = phi i64 [ %i.fm, %.lr.ph287.i ], [ %indvars.iv.next298.i, %bb.av ] ; 5 uses
  %i.go = trunc nsw i64 %indvars.iv297.i to i32
  %i.gp = sub i32 %i.go, %i.dd
  %.0179.val.i = load ptr, ptr %i.fl, align 8
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0179.val.i, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.gt = call i32 @exprType(ptr noundef %i.gs) #6
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %indvars.iv297.i
  store i32 %i.gt, ptr %i.gu, align 4
  %i.gv = call i32 @exprTypmod(ptr noundef %i.gs) #6
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv297.i
  store i32 %i.gv, ptr %i.gw, align 4
  %i.gx = call i32 @exprCollation(ptr noundef %i.gs) #6
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv297.i
  store i32 %i.gx, ptr %i.gy, align 4
  %indvars.iv.next298.i = add nsw i64 %indvars.iv297.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next298.i to i32
  %exitcond300.not.i = icmp eq i32 %i.dn, %lftr.wideiv.i
  br i1 %exitcond300.not.i, label %.loopexit.i, label %bb.av, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.av, %.preheader.i, %bb.ao
  %.0176.i = phi ptr [ null, %bb.ao ], [ %i.fe, %.preheader.i ], [ %i.fe, %bb.av ] ; 3 uses
  %.0174.i = phi ptr [ null, %bb.ao ], [ %i.ff, %.preheader.i ], [ %i.ff, %bb.av ] ; 3 uses
  %.0173.i = phi ptr [ null, %bb.ao ], [ %i.fg, %.preheader.i ], [ %i.fg, %bb.av ] ; 3 uses
  %i.gz = load i32, ptr %i.by, align 4
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  store i64 %i.ha, ptr %i.w, align 16
  store i8 0, ptr %i.x, align 1
  %i.hb = zext i1 %i.bh to i64                    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.hb, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 0, ptr %i.hd, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.hi = trunc nuw i8 %.sroa.0.0.i to i1
  store i32 16843009, ptr %i.he, align 1
  br i1 %i.hi, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.loopexit.i
  %i.hj = load i64, ptr %13, align 8              ; 2 uses
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = call ptr @pg_detoast_datum_packed(ptr noundef %i.hk) #6
  %i.hm = call ptr @statext_ndistinct_deserialize(ptr noundef %i.hl) #6 ; 2 uses
  %i.hn = call zeroext i1 @statext_ndistinct_validate(ptr noundef %i.hm, ptr noundef nonnull %i.db, i32 noundef %.0178.i, i32 noundef 19) #6
  br i1 %i.hn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ho = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.hj, ptr %i.ho, align 16
  store i8 0, ptr %i.he, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 1, ptr %i.hp, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.4.i = phi i1 [ %.3.i, %bb.ax ], [ false, %bb.aw ]
  call void @statext_ndistinct_free(ptr noundef %i.hm) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit.i
  %.5.i = phi i1 [ %.4.i, %bb.ay ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %i.hq = trunc nuw i8 %.sroa.7.0.i to i1
  br i1 %i.hq, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.hr = load i64, ptr %18, align 8              ; 2 uses
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = call ptr @pg_detoast_datum_packed(ptr noundef %i.hs) #6
  %i.hu = call ptr @statext_dependencies_deserialize(ptr noundef %i.ht) #6 ; 2 uses
  %i.hv = call zeroext i1 @statext_dependencies_validate(ptr noundef %i.hu, ptr noundef nonnull %i.db, i32 noundef %.0178.i, i32 noundef 19) #6
  br i1 %i.hv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %i.hr, ptr %i.hw, align 8
  store i8 0, ptr %i.hf, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  store i8 1, ptr %i.hx, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.6.i = phi i1 [ %.5.i, %bb.bb ], [ false, %bb.ba ]
  call void @statext_dependencies_free(ptr noundef %i.hu) #6
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.7.i = phi i1 [ %.6.i, %bb.bc ], [ %.5.i, %bb.az ] ; 2 uses
  br i1 %.sroa.11.0.shrunk.i, label %bb.be, label %bb.bw

bb.be:                                            ; preds = %bb.bd
  %i.hy = load i64, ptr %i.ae, align 8
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = call ptr @pg_detoast_datum(ptr noundef %i.hz) #6 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = call ptr @pg_detoast_datum(ptr noundef %i.id) #6 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = call ptr @pg_detoast_datum(ptr noundef %i.ih) #6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ik = load i32, ptr %i.ij, align 4
  %.not.i199.i = icmp eq i32 %i.ik, 2
  br i1 %.not.i199.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.il = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.il, label %bb.bg, label %import_mcv.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.im = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.in = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 112), align 16
  %i.io = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27, ptr noundef %i.in, i32 noundef 2) #6 ; 0 uses
  br label %import_mcv.exit.thread.sink.split.i

bb.bh:                                            ; preds = %bb.be
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 20 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4
  %.not34.i.i = icmp eq i32 %i.iq, %i.dn
  br i1 %.not34.i.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ir = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.ir, label %bb.bj, label %import_mcv.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.is = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 112), align 16
  %i.iu = load i32, ptr %i.ip, align 4
  %i.iv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28, ptr noundef %i.it, i32 noundef %i.iu, i32 noundef %i.dn) #6 ; 0 uses
  br label %import_mcv.exit.thread.sink.split.i

bb.bk:                                            ; preds = %bb.bh
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ix = load i32, ptr %i.iw, align 4            ; 5 uses
  %i.iy = icmp sgt i32 %i.ix, 10000
  br i1 %i.iy, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.iz = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.iz, label %bb.bm, label %import_mcv.exit.thread.i

bb.bm:                                            ; preds = %bb.bl
  %i.ja = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.jb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 112), align 16
  %i.jc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, ptr noundef %i.jb, i32 noundef %i.ix, i32 noundef 10000) #6 ; 0 uses
  br label %import_mcv.exit.thread.sink.split.i

bb.bn:                                            ; preds = %bb.bk
  %i.jd = call fastcc zeroext i1 @check_mcvlist_array(ptr noundef %i.ie, i32 noundef 8, i32 noundef %i.ix)
  br i1 %i.jd, label %bb.bo, label %import_mcv.exit.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.je = call fastcc zeroext i1 @check_mcvlist_array(ptr noundef %i.ii, i32 noundef 9, i32 noundef %i.ix)
  br i1 %i.je, label %bb.bp, label %import_mcv.exit.thread.i

bb.bp:                                            ; preds = %bb.bo
  call void @deconstruct_array_builtin(ptr noundef nonnull %i.ia, i32 noundef 25, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #6
  %i.jf = load ptr, ptr %i.t, align 8
  %i.jg = load ptr, ptr %i.u, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ji = load i32, ptr %i.jh, align 4            ; 2 uses
  %.not35.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not35.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jj = sext i32 %i.ji to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = sext i32 %i.jl to i64
  %i.jn = shl nsw i64 %i.jm, 3
  %i.jo = add nsw i64 %i.jn, 16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jp = phi i64 [ %i.jj, %bb.bq ], [ %i.jo, %bb.br ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %.not36.i.i = icmp eq i32 %i.js, 0
  br i1 %.not36.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jt = sext i32 %i.js to i64
  br label %import_mcv.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = sext i32 %i.jv to i64
  %i.jx = shl nsw i64 %i.jw, 3
  %i.jy = add nsw i64 %i.jx, 16
  br label %import_mcv.exit.i

import_mcv.exit.thread.sink.split.i:              ; preds = %bb.bm, %bb.bj, %bb.bg
  %.sink327.i = phi i32 [ 865, %bb.bm ], [ 844, %bb.bj ], [ 834, %bb.bg ]
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef %.sink327.i, ptr noundef nonnull @__func__.import_mcv) #6
  br label %import_mcv.exit.thread.i

import_mcv.exit.thread.i:                         ; preds = %import_mcv.exit.thread.sink.split.i, %bb.bo, %bb.bn, %bb.bl, %bb.bi, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  br label %bb.bw

import_mcv.exit.i:                                ; preds = %bb.bu, %bb.bt
  %i.jz = phi i64 [ %i.jt, %bb.bt ], [ %i.jy, %bb.bu ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.jz
  %i.kb = call i64 @statext_mcv_import(i32 noundef 19, i32 noundef %i.dn, ptr noundef %.0176.i, ptr noundef %.0174.i, ptr noundef %.0173.i, i32 noundef %i.ix, ptr noundef %i.jf, ptr noundef %i.jg, ptr noundef %i.jq, ptr noundef %i.ka) #6 ; 2 uses
  %.not277.i = icmp eq i64 %i.kb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  br i1 %.not277.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %import_mcv.exit.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %i.kb, ptr %i.kc, align 16
  store i8 0, ptr %i.hg, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i8 1, ptr %i.kd, align 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %import_mcv.exit.i, %import_mcv.exit.thread.i, %bb.bd
  %.9.i = phi i1 [ %.7.i, %bb.bd ], [ %.7.i, %bb.bv ], [ false, %import_mcv.exit.i ], [ false, %import_mcv.exit.thread.i ] ; 2 uses
  br i1 %i.fc, label %bb.bx, label %bb.gj

bb.bx:                                            ; preds = %bb.bw
  %i.ke = call ptr @table_open(i32 noundef 2619, i32 noundef 3) #6 ; 4 uses
  %i.kf = sext i32 %i.dd to i64                   ; 3 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %.0176.i, i64 %i.kf
  %i.kh = getelementptr inbounds [4 x i8], ptr %.0174.i, i64 %i.kf
  %i.ki = getelementptr inbounds [4 x i8], ptr %.0173.i, i64 %i.kf
  %i.kj = load i64, ptr %23, align 8
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = call ptr @pg_detoast_datum(ptr noundef %i.kk) #6
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 160), align 16 ; 3 uses
  %i.kn = call i32 @get_rel_type_id(i32 noundef 2619) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4            ; 2 uses
  %i.kq = and i32 %i.kp, 1073741824
  %.not.i200.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i200.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.kr = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.kr, label %bb.bz, label %import_expressions.exit.thread.i

bb.bz:                                            ; preds = %bb.by
  %i.ks = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.kt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef %i.km) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1584, ptr noundef nonnull @__func__.import_expressions) #6
  br label %import_expressions.exit.thread.i

bb.ca:                                            ; preds = %bb.bx
  %i.ku = and i32 %i.kp, 268435455
  %.not58.i.i = icmp eq i32 %.0178.i, %i.ku
  br i1 %.not58.i.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kv = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.kv, label %bb.cc, label %import_expressions.exit.thread.i

bb.cc:                                            ; preds = %bb.cb
  %i.kw = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.kx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.33, ptr noundef %i.km, i32 noundef %.0178.i) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1600, ptr noundef nonnull @__func__.import_expressions) #6
  br label %import_expressions.exit.thread.i

bb.cd:                                            ; preds = %bb.ca
  call void @fmgr_info(i32 noundef 750, ptr noundef nonnull %4) #6
  %.not93.i.i = icmp eq i32 %.0178.i, 0
  br i1 %.not93.i.i, label %import_expressions.exit.thread216.i, label %.lr.ph.i201.i

import_expressions.exit.thread216.i:              ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @table_close(ptr noundef %i.ke, i32 noundef 3) #6
  br label %bb.gi

.lr.ph.i201.i:                                    ; preds = %bb.cd
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %.0178.i to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ge, %.lr.ph.i201.i
  %indvars.iv.i202.i = phi i64 [ 0, %.lr.ph.i201.i ], [ %indvars.iv.next.i203.i, %bb.ge ] ; 6 uses
  %.04875.i.i = phi i32 [ 0, %.lr.ph.i201.i ], [ %.2.i.i, %bb.ge ]
  %.05174.i.i = phi ptr [ null, %.lr.ph.i201.i ], [ %i.wp, %bb.ge ] ; 3 uses
  %i.mg = trunc nuw nsw i64 %indvars.iv.i202.i to i32
  %i.mh = trunc i64 %indvars.iv.i202.i to i16
  %i.mi = xor i16 %i.mh, -1                       ; 22 uses
  %i.mj = call ptr @getIthJsonbValueFromContainer(ptr noundef nonnull %i.ko, i32 noundef %i.mg) #6 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8
  switch i32 %i.mk, label %bb.gc [
    i32 18, label %bb.cf
    i32 0, label %bb.ge
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8            ; 15 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i202.i
  %i.mo = load i32, ptr %i.mn, align 4            ; 8 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.i202.i
  %i.mq = load i32, ptr %i.mp, align 4            ; 4 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv.i202.i
  %i.ms = load i32, ptr %i.mr, align 4
  %i.mt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @extarginfo, i64 160), align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %3, i8 0, i64 416, i1 false)
  %i.mu = load i32, ptr %i.mm, align 4
  %i.mv = and i32 %i.mu, 536870912
  %.not.i.i.i = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i.i, label %bb.cg, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.cf
  %i.mw = call ptr @getKeyJsonValueFromContainer(ptr noundef nonnull %i.mm, ptr noundef nonnull @.str.42, i32 noundef 9, ptr noundef nonnull %3) #6
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %.preheader.1.i.i.i, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.my = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.my, label %bb.ch, label %import_pg_statistic.exit.thread.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.mz = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.na = sext i16 %i.mi to i32
  %i.nb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.34, ptr noundef %i.mt, i32 noundef %i.na) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1137, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ci:                                            ; preds = %.preheader.preheader.i.i.i
  %i.nc = load i32, ptr %3, align 16
  switch i32 %i.nc, label %bb.ck [
    i32 1, label %bb.cj
    i32 0, label %.preheader.1.i.i.i
  ]

bb.cj:                                            ; preds = %bb.ci
  br label %.preheader.1.i.i.i

bb.ck:                                            ; preds = %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ci
  %.lcssa.i.i.i = phi ptr [ @.str.42, %bb.ci ], [ @.str.43, %bb.cm ], [ @.str.11, %bb.co ], [ @.str.13, %bb.cq ], [ @.str.14, %bb.cs ], [ @.str.44, %bb.cu ], [ @.str.45, %bb.cw ], [ @.str.46, %bb.cy ], [ @.str.47, %bb.da ], [ @.str.48, %bb.dc ], [ @.str.49, %bb.de ], [ @.str.50, %bb.dg ], [ @.str.51, %bb.di ]
  %i.nd = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.nd, label %bb.cl, label %import_pg_statistic.exit.thread.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ne = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.nf = sext i16 %i.mi to i32
  %i.ng = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.34, ptr noundef %i.mt, i32 noundef %i.nf) #6 ; 0 uses
  %i.nh = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.35, ptr noundef nonnull %.lcssa.i.i.i) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1167, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

.preheader.1.i.i.i:                               ; preds = %bb.cj, %bb.ci, %.preheader.preheader.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ false, %.preheader.preheader.i.i.i ], [ true, %bb.cj ], [ false, %bb.ci ]
  %i.ni = call ptr @getKeyJsonValueFromContainer(ptr noundef nonnull %i.mm, ptr noundef nonnull @.str.43, i32 noundef 9, ptr noundef nonnull %i.ky) #6
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %.preheader.2.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.preheader.1.i.i.i
  %i.nk = load i32, ptr %i.ky, align 16
  switch i32 %i.nk, label %bb.ck [
    i32 1, label %bb.cn
    i32 0, label %.preheader.2.i.i.i
  ]

bb.cn:                                            ; preds = %bb.cm
  br label %.preheader.2.i.i.i

.preheader.2.i.i.i:                               ; preds = %bb.cn, %bb.cm, %.preheader.1.i.i.i
  %.sroa.5.0.i.i.i = phi i1 [ false, %.preheader.1.i.i.i ], [ true, %bb.cn ], [ false, %bb.cm ]
  %i.nl = call ptr @getKeyJsonValueFromContainer(ptr noundef nonnull %i.mm, ptr noundef nonnull @.str.11, i32 noundef 10, ptr noundef nonnull %i.kz) #6
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %.preheader.3.i.i.i, label %bb.co

bb.co:                                            ; preds = %.preheader.2.i.i.i
  %i.nn = load i32, ptr %i.kz, align 16
  switch i32 %i.nn, label %bb.ck [
    i32 1, label %bb.cp
    i32 0, label %.preheader.3.i.i.i
  ]

bb.cp:                                            ; preds = %bb.co
  br label %.preheader.3.i.i.i

.preheader.3.i.i.i:                               ; preds = %bb.cp, %bb.co, %.preheader.2.i.i.i
  %.sroa.7.0.i.i.i = phi i1 [ false, %.preheader.2.i.i.i ], [ true, %bb.cp ], [ false, %bb.co ]
  %i.no = call ptr @getKeyJsonValueFromContainer(ptr noundef nonnull %i.mm, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef nonnull %i.la) #6
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %.preheader.4.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.preheader.3.i.i.i
end_hunk_0
