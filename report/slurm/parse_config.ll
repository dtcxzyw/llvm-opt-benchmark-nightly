Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parse_config?download=true
inline.NumInlined: 78
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.s_p_values = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.regmatch_t = type { i32, i32 }

@conf_includes_list = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [15 x i8] c"parse_config.c\00", align 1
@__func__.s_p_hashtbl_create_cnt = private unnamed_addr constant [23 x i8] c"s_p_hashtbl_create_cnt\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"keyvalue regex compilation failed\00", align 1
@__func__._hashtbl_copy_keys = private unnamed_addr constant [19 x i8] c"_hashtbl_copy_keys\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Parsing error at unrecognized key: %s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"s_p_parse_file: No filename given.\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%s: cannot stat file %s: %m, retrying in 1sec up to 60sec\00", align 1
@__func__.s_p_parse_file = private unnamed_addr constant [15 x i8] c"s_p_parse_file\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"s_p_parse_file: file \22%s\22 is empty\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"s_p_parse_file: unable to read \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\22Include\22 failed in file %s line %d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Parse error in file %s line %d: \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"s_p_parse_buffer: No buffer given.\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"s_p_parse_buffer : error in line %d: \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"s_p_parse_buffer: ending after line %u\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Error parsing '%s = %s', most left part of the line: %s.\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Unable to parse line %s\00", align 1
@__func__.s_p_parse_line_expanded = private unnamed_addr constant [24 x i8] c"s_p_parse_line_expanded\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: Parsing error at unrecognized key: %s\00", align 1
@__func__.s_p_parse_pair_with_op = private unnamed_addr constant [23 x i8] c"s_p_parse_pair_with_op\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"%s: Value pointer is NULL for key %s\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Parse error in data for key %s: %s\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Invalid key \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%s = %s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%s = %ld\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%s = %hu\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s = %u\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s = %lu\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%s = %zx\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"%s, count = %d\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"%s = %f\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"%s = %Lf\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"%s: unsupported pack type %d\00", align 1
@__func__.s_p_pack_hashtbl = private unnamed_addr constant [17 x i8] c"s_p_pack_hashtbl\00", align 1
@__func__.s_p_unpack_hashtbl_full = private unnamed_addr constant [24 x i8] c"s_p_unpack_hashtbl_full\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"%s: failed\00", align 1
@__func__.transfer_s_p_options = private unnamed_addr constant [21 x i8] c"transfer_s_p_options\00", align 1
@.str.33 = private unnamed_addr constant [108 x i8] c"^[[:space:]]*([[:alnum:]_.]+)[[:space:]]*([-*+/]?)=[[:space:]]*((\22([^\22]*)\22)|([^[:space:]]+))([[:space:]]|$)\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"regexec(%s)\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"%s: unsupported s_p_value_t type %d\00", align 1
@__func__._handle_keyvalue_match = private unnamed_addr constant [23 x i8] c"_handle_keyvalue_match\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s 1 specified more than once, latest value used\00", align 1
@__func__._handle_long = private unnamed_addr constant [13 x i8] c"_handle_long\00", align 1
@__func__._handle_uint16 = private unnamed_addr constant [15 x i8] c"_handle_uint16\00", align 1
@__func__._handle_uint32 = private unnamed_addr constant [15 x i8] c"_handle_uint32\00", align 1
@__func__._handle_uint64 = private unnamed_addr constant [15 x i8] c"_handle_uint64\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"%s 2 specified more than once, latest value used\00", align 1
@__func__._handle_array = private unnamed_addr constant [14 x i8] c"_handle_array\00", align 1
@__func__._handle_boolean = private unnamed_addr constant [16 x i8] c"_handle_boolean\00", align 1
@__func__._handle_expline_sc = private unnamed_addr constant [19 x i8] c"_handle_expline_sc\00", align 1
@__func__._handle_expline_ac = private unnamed_addr constant [19 x i8] c"_handle_expline_ac\00", align 1
@__func__._handle_float = private unnamed_addr constant [14 x i8] c"_handle_float\00", align 1
@__func__._handle_double = private unnamed_addr constant [15 x i8] c"_handle_double\00", align 1
@__func__._handle_ldouble = private unnamed_addr constant [16 x i8] c"_handle_ldouble\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c"Included file %s at %s should be 600 is %o accessible for group or others\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"slurm.conf\00", align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.43 = private unnamed_addr constant [160 x i8] c"Slurm does not support glob parsing. %s from %s will be skipped over. If this expected, ignore this message and set DebugFlags=GLOB_SILENCE in your slurm.conf.\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"ClusterName\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"%s: Did not get ClusterName for include path\00", align 1
@__func__._parse_for_format = private unnamed_addr constant [18 x i8] c"_parse_for_format\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.49 = private unnamed_addr constant [53 x i8] c"%s: Value for include modifier %s could not be found\00", align 1
@__func__._handle_include = private unnamed_addr constant [16 x i8] c"_handle_include\00", align 1
@__func__._parse_next_key = private unnamed_addr constant [16 x i8] c"_parse_next_key\00", align 1
@__func__._parse_expline_adapt_table = private unnamed_addr constant [27 x i8] c"_parse_expline_adapt_table\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"parsing %s=%s.\00", align 1
@.str.51 = private unnamed_addr constant [110 x i8] c"parsing %s=%s : count is not coherent with the amount of records or there must be no more than one (%d vs %d)\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"parsing %s=%s after expansion.\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Key \22%s\22 is not typed correctly\00", align 1
@switch.table._keyvalue_regex = private unnamed_addr constant [6 x i8] [i8 3, i8 1, i8 poison, i8 2, i8 poison, i8 4], align 4

@slurm_s_p_hashtbl_create = dso_local alias ptr (ptr), ptr @s_p_hashtbl_create
@slurm_s_p_hashtbl_destroy = dso_local alias void (ptr), ptr @s_p_hashtbl_destroy
@slurm_s_p_parse_buffer = dso_local alias i32 (ptr, ptr, ptr, i1), ptr @s_p_parse_buffer
@slurm_s_p_parse_file = dso_local alias i32 (ptr, ptr, ptr, i32, ptr), ptr @s_p_parse_file
@slurm_s_p_parse_pair = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_parse_pair
@slurm_s_p_parse_line = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_parse_line
@slurm_s_p_hashtbl_merge = dso_local alias void (ptr, ptr), ptr @s_p_hashtbl_merge
@slurm_s_p_get_string = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_string
@slurm_s_p_get_long = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_long
@slurm_s_p_get_uint16 = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_uint16
@slurm_s_p_get_uint32 = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_uint32
@slurm_s_p_get_uint64 = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_uint64
@slurm_s_p_get_float = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_float
@slurm_s_p_get_double = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_double
@slurm_s_p_get_long_double = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_long_double
@slurm_s_p_get_pointer = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_pointer
@slurm_s_p_get_array = dso_local alias i32 (ptr, ptr, ptr, ptr), ptr @s_p_get_array
@slurm_s_p_get_boolean = dso_local alias i32 (ptr, ptr, ptr), ptr @s_p_get_boolean
@slurm_s_p_dump_values = dso_local alias void (ptr, ptr), ptr @s_p_dump_values
@slurm_transfer_s_p_options = dso_local alias void (ptr, ptr, ptr), ptr @transfer_s_p_options

; Function Attrs: nounwind uwtable
define dso_local ptr @s_p_hashtbl_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @s_p_hashtbl_create_cnt(ptr noundef %0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @s_p_hashtbl_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader8

bb.b:                                             ; preds = %._crit_edge17
  call void @regfree(ptr noundef nonnull %0) #12
  call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  br label %bb.l

.preheader8:                                      ; preds = %.preheader8.preheader, %._crit_edge17
  %indvars.iv24 = phi i64 [ 0, %.preheader8.preheader ], [ %indvars.iv.next25, %._crit_edge17 ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not713 = icmp eq ptr %i.d, null
  br i1 %.not713, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader8, %_conf_file_values_free.exit
  %i.e = phi ptr [ %i.g, %_conf_file_values_free.exit ], [ %i.d, %.preheader8 ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_conf_file_values_free.exit

bb.c:                                             ; preds = %.lr.ph16
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8
  switch i32 %i.l, label %bb.i [
    i32 7, label %.lr.ph11
    i32 9, label %bb.g
    i32 10, label %bb.g
  ]

.lr.ph11:                                         ; preds = %bb.c, %bb.f
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %i.t, %bb.f ], [ %i.e, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv21 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph11
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.q(ptr noundef %i.s) #12, !inline_history !17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph11
  call void @slurm_xfree(ptr noundef %i.r) #12, !inline_history !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next22, %i.w
  br i1 %i.x, label %.lr.ph11, label %._crit_edge12, !llvm.loop !18

._crit_edge12:                                    ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @slurm_xfree(ptr noundef nonnull %i.y) #12, !inline_history !17
  br label %_conf_file_values_free.exit

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.ab), !inline_history !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.ad), !inline_history !17
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.al), !inline_history !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.h, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @slurm_xfree(ptr noundef nonnull %i.ar) #12, !inline_history !17
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @slurm_xfree(ptr noundef nonnull %i.at) #12, !inline_history !17
  br label %_conf_file_values_free.exit

bb.i:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br i1 %.not14.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.av(ptr noundef %i.ax) #12, !inline_history !17
  br label %_conf_file_values_free.exit

bb.k:                                             ; preds = %bb.i
  call void @slurm_xfree(ptr noundef nonnull %i.aw) #12, !inline_history !17
  br label %_conf_file_values_free.exit

_conf_file_values_free.exit:                      ; preds = %.lr.ph16, %._crit_edge12, %._crit_edge, %bb.j, %bb.k
  %i.ay = load ptr, ptr %i.a, align 8
  call void @slurm_xfree(ptr noundef %i.ay) #12, !inline_history !17
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %._crit_edge17, label %.lr.ph16, !llvm.loop !20

._crit_edge17:                                    ; preds = %_conf_file_values_free.exit, %.preheader8
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next25, 173
  br i1 %exitcond.not, label %bb.b, label %.preheader8, !llvm.loop !21

bb.l:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @s_p_parse_buffer(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.e, align 8
  %i.h = load i32, ptr %i.f, align 4
  %.not203639 = icmp eq i32 %i.g, %i.h
  br i1 %.not203639, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.10) #12 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.01437 = phi i32 [ %.014.ph41, %.lr.ph ], [ %i.l, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.j = call i32 @unpackstr_xmalloc_chooser(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #12
  %.not21 = icmp eq i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %.not21, label %bb.d, label %.loopexit29

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %.loopexit29, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %.01437, 1                   ; 5 uses
  %i.m = load i8, ptr %i.k, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  %i.o = load i32, ptr %i.e, align 8
  %i.p = load i32, ptr %i.f, align 4
  %.not20 = icmp eq i32 %i.o, %i.p
  br i1 %.not20, label %.loopexit, label %bb.c, !llvm.loop !22

bb.g:                                             ; preds = %bb.e
  %i.q = call fastcc i32 @_parse_next_key(ptr noundef %0, ptr noundef nonnull %i.k, ptr noundef %i.a, i1 noundef zeroext %3)
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.h, %_line_is_space.exit.thread
  %.015.ph.be = phi i32 [ 0, %_line_is_space.exit.thread ], [ -1, %bb.h ] ; 2 uses
  %i.r = load i32, ptr %i.e, align 8
  %i.s = load i32, ptr %i.f, align 4
  %.not2036 = icmp eq i32 %i.r, %i.s
  br i1 %.not2036, label %.loopexit, label %.lr.ph, !llvm.loop !22

.lr.ph:                                           ; preds = %.preheader, %.outer.backedge
end_hunk_0
