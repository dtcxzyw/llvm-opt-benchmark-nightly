Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/date_strptime?download=true
inline.NumInlined: 154
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@date__strptime.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"leftover\00", align 1
@date__strptime.rbimpl_id.1 = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"_fail\00", align 1
@date__strptime.rbimpl_id.3 = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"_cent\00", align 1
@date__strptime.rbimpl_id.5 = internal unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"cwyear\00", align 1
@date__strptime.rbimpl_id.7 = internal unnamed_addr global i64 0, align 8
@date__strptime.rbimpl_id.8 = internal unnamed_addr global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@date__strptime.rbimpl_id.10 = internal unnamed_addr global i64 0, align 8
@date__strptime.rbimpl_id.11 = internal unnamed_addr global i64 0, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"_merid\00", align 1
@date__strptime.rbimpl_id.13 = internal unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@date__strptime.rbimpl_id.15 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"cCxXyY\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"deHImMSuUVwWy\00", align 1
@date__strptime_internal.rbimpl_id.18 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.19 = internal unnamed_addr global i64 0, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@date__strptime_internal.rbimpl_id.21 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.22 = internal unnamed_addr global i64 0, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@date__strptime_internal.rbimpl_id.24 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.25 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.26 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.27 = internal unnamed_addr global i64 0, align 8
@.str.28 = private unnamed_addr constant [21 x i8] c"%a %b %e %H:%M:%S %Y\00", align 1
@date__strptime_internal.rbimpl_id.29 = internal unnamed_addr global i64 0, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@date__strptime_internal.rbimpl_id.31 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.32 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.33 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.34 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.35 = internal unnamed_addr global i64 0, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"mday\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@date__strptime_internal.rbimpl_id.38 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.39 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.40 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.41 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.42 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.43 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.44 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.45 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.46 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.47 = internal unnamed_addr global i64 0, align 8
@.str.48 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@date__strptime_internal.rbimpl_id.49 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.50 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.51 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.52 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.53 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.54 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.55 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.56 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.57 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.58 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.59 = internal unnamed_addr global i64 0, align 8
@.str.60 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@date__strptime_internal.rbimpl_id.61 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.62 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.63 = internal unnamed_addr global i64 0, align 8
@.str.64 = private unnamed_addr constant [3 x i8] c"-@\00", align 1
@date__strptime_internal.rbimpl_id.65 = internal unnamed_addr global i64 0, align 8
@.str.66 = private unnamed_addr constant [13 x i8] c"sec_fraction\00", align 1
@date__strptime_internal.rbimpl_id.67 = internal unnamed_addr global i64 0, align 8
@.str.68 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@date__strptime_internal.rbimpl_id.69 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.70 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.71 = internal unnamed_addr global i64 0, align 8
@.str.72 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@date__strptime_internal.rbimpl_id.73 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.74 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.75 = internal unnamed_addr global i64 0, align 8
@.str.76 = private unnamed_addr constant [2 x i8] c" \00", align 1
@date__strptime_internal.rbimpl_id.77 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.78 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.79 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.80 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.81 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.82 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.83 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.84 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.85 = internal unnamed_addr global i64 0, align 8
@.str.86 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@date__strptime_internal.rbimpl_id.88 = internal unnamed_addr global i64 0, align 8
@.str.89 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@date__strptime_internal.rbimpl_id.90 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.91 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.92 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.93 = internal unnamed_addr global i64 0, align 8
@.str.94 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@date__strptime_internal.rbimpl_id.95 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.96 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.97 = internal unnamed_addr global i64 0, align 8
@.str.98 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@date__strptime_internal.rbimpl_id.99 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.100 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.101 = internal global i64 0, align 8
@.str.103 = private unnamed_addr constant [6 x i8] c"wnum0\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"wnum1\00", align 1
@date__strptime_internal.rbimpl_id.105 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.106 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.107 = internal unnamed_addr global i64 0, align 8
@.str.108 = private unnamed_addr constant [6 x i8] c"cwday\00", align 1
@date__strptime_internal.rbimpl_id.109 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.110 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.111 = internal unnamed_addr global i64 0, align 8
@.str.112 = private unnamed_addr constant [6 x i8] c"cweek\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"%e-%b-%Y\00", align 1
@date__strptime_internal.rbimpl_id.114 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.115 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.116 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.117 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.118 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.119 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.120 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.121 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.122 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.123 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.124 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.125 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.127 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.128 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.129 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.130 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.pat_source = internal constant [131 x i8] c"\\A((?:gmt|utc?)?[-+]\\d+(?:[,.:]\\d+(?::\\d+)?)?|(?-i:[[:alpha:].\\s]+)(?:standard|daylight)\\s+time\\b|(?-i:[[:alpha:]]+)(?:\\s+dst)?\\b)\00", align 16
@date__strptime_internal.pat = internal unnamed_addr global i64 4, align 8
@date__strptime_internal.rbimpl_id.131 = internal unnamed_addr global i64 0, align 8
@.str.132 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@date__strptime_internal.rbimpl_id.133 = internal unnamed_addr global i64 0, align 8
@.str.134 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@date__strptime_internal.rbimpl_id.135 = internal unnamed_addr global i64 0, align 8
@.str.136 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@date__strptime_internal.rbimpl_id.137 = internal unnamed_addr global i64 0, align 8
@.str.138 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@date__strptime_internal.rbimpl_id.139 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.140 = internal global i64 0, align 8
@.str.141 = private unnamed_addr constant [24 x i8] c"%a %b %e %H:%M:%S %Z %Y\00", align 1
@date__strptime_internal.rbimpl_id.142 = internal unnamed_addr global i64 0, align 8
@date__strptime_internal.rbimpl_id.143 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.144 = internal global i64 0, align 8
@date__strptime_internal.rbimpl_id.145 = internal unnamed_addr global i64 0, align 8
@.str.146 = private unnamed_addr constant [7 x i8] c"Sunday\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"Monday\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"Tuesday\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"Wednesday\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"Thursday\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"Friday\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"Saturday\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"January\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"February\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"March\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"April\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"June\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"July\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"August\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"September\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"October\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"November\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"December\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"CDdeFGgHIjkLlMmNQRrSsTUuVvWwXxYy\00", align 1

; Function Attrs: nounwind uwtable
define noundef i64 @date__strptime(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @date__strptime_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) ; 3 uses
  %i.b = icmp ugt i64 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.d = sub nuw i64 %1, %i.a
  %i.e = tail call i64 @rb_usascii_str_new(ptr noundef %i.c, i64 noundef %i.d) #10
  %.pr.i = load i64, ptr @date__strptime.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 8) #10 ; 3 uses
  store i64 %i.f, ptr @date__strptime.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.f, %.lr.ph.i ]
  %i.g = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #10
  %i.h = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.g, i64 noundef %i.e) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit, %bb.a
  %.pr.i47 = load i64, ptr @date__strptime.rbimpl_id.1, align 8, !tbaa !12 ; 2 uses
  %.not4.i48 = icmp eq i64 %.pr.i47, 0
  br i1 %.not4.i48, label %.lr.ph.i50, label %rbimpl_intern_const.exit52

.lr.ph.i50:                                       ; preds = %bb.c, %.lr.ph.i50
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.i, ptr @date__strptime.rbimpl_id.1, align 8, !tbaa !12
  %.not.i51 = icmp eq i64 %i.i, 0
  br i1 %.not.i51, label %.lr.ph.i50, label %rbimpl_intern_const.exit52, !llvm.loop !0

rbimpl_intern_const.exit52:                       ; preds = %.lr.ph.i50, %bb.c
  %.lcssa.i49 = phi i64 [ %.pr.i47, %bb.c ], [ %i.i, %.lr.ph.i50 ]
  %i.j = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i49) #10
  %i.k = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.j) #10
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.l

bb.d:                                             ; preds = %rbimpl_intern_const.exit52
  %.pr.i53 = load i64, ptr @date__strptime.rbimpl_id.3, align 8, !tbaa !12 ; 2 uses
  %.not4.i54 = icmp eq i64 %.pr.i53, 0
  br i1 %.not4.i54, label %.lr.ph.i56, label %rbimpl_intern_const.exit58

.lr.ph.i56:                                       ; preds = %bb.d, %.lr.ph.i56
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.m, ptr @date__strptime.rbimpl_id.3, align 8, !tbaa !12
  %.not.i57 = icmp eq i64 %i.m, 0
  br i1 %.not.i57, label %.lr.ph.i56, label %rbimpl_intern_const.exit58, !llvm.loop !0

rbimpl_intern_const.exit58:                       ; preds = %.lr.ph.i56, %bb.d
  %.lcssa.i55 = phi i64 [ %.pr.i53, %bb.d ], [ %i.m, %.lr.ph.i56 ]
  %i.n = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i55) #10
  %i.o = tail call i64 @rb_hash_delete(i64 noundef %4, i64 noundef %i.n) #10 ; 3 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %bb.i, label %bb.e

bb.e:                                             ; preds = %rbimpl_intern_const.exit58
  %.pr.i59 = load i64, ptr @date__strptime.rbimpl_id.5, align 8, !tbaa !12 ; 2 uses
  %.not4.i60 = icmp eq i64 %.pr.i59, 0
  br i1 %.not4.i60, label %.lr.ph.i62, label %rbimpl_intern_const.exit64

.lr.ph.i62:                                       ; preds = %bb.e, %.lr.ph.i62
  %i.q = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 6) #10 ; 3 uses
  store i64 %i.q, ptr @date__strptime.rbimpl_id.5, align 8, !tbaa !12
  %.not.i63 = icmp eq i64 %i.q, 0
  br i1 %.not.i63, label %.lr.ph.i62, label %rbimpl_intern_const.exit64, !llvm.loop !0

rbimpl_intern_const.exit64:                       ; preds = %.lr.ph.i62, %bb.e
  %.lcssa.i61 = phi i64 [ %.pr.i59, %bb.e ], [ %i.q, %.lr.ph.i62 ]
  %i.r = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i61) #10
  %i.s = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.r) #10 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rbimpl_intern_const.exit64
  %.pr.i65 = load i64, ptr @date__strptime.rbimpl_id.7, align 8, !tbaa !12 ; 2 uses
  %.not4.i66 = icmp eq i64 %.pr.i65, 0
  br i1 %.not4.i66, label %.lr.ph.i68, label %rbimpl_intern_const.exit70

.lr.ph.i68:                                       ; preds = %bb.f, %.lr.ph.i68
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 6) #10 ; 3 uses
  store i64 %i.u, ptr @date__strptime.rbimpl_id.7, align 8, !tbaa !12
  %.not.i69 = icmp eq i64 %i.u, 0
  br i1 %.not.i69, label %.lr.ph.i68, label %rbimpl_intern_const.exit70, !llvm.loop !0

rbimpl_intern_const.exit70:                       ; preds = %.lr.ph.i68, %bb.f
  %.lcssa.i67 = phi i64 [ %.pr.i65, %bb.f ], [ %i.u, %.lr.ph.i68 ]
  %i.v = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i67) #10
  %i.w = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.o, i64 noundef 42, i32 noundef 1, i64 noundef 201) #10
end_hunk_0
begin_hunk_1_@date__strptime_internal:bb.a
  %.not.i1089 = icmp eq i16 %i.es, 0
  br i1 %.not.i1089, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.et = icmp eq i8 %i.eo, 37
  br i1 %i.et, label %bb.v, label %num_pattern_p.exit

bb.v:                                             ; preds = %bb.u
  %i.eu = getelementptr i8, ptr %i.em, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.ev, label %bb.x [
    i8 69, label %bb.w
    i8 79, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.ew = getelementptr i8, ptr %i.em, i64 4
  %.pr.i1090 = load i8, ptr %i.ew, align 1, !tbaa !14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ex = phi i8 [ %i.ev, %bb.v ], [ %.pr.i1090, %bb.w ] ; 3 uses
  %.not12.i = icmp eq i8 %i.ex, 0
  br i1 %.not12.i, label %num_pattern_p.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = sext i8 %i.ex to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.165, i32 %i.ey, i64 33)
  %.not13.i = icmp eq ptr %memchr.i, null
  br i1 %.not13.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ez = zext i8 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !22
  %i.fc = and i16 %i.fb, 2048
  %.not14.i = icmp eq i16 %i.fc, 0
  br i1 %.not14.i, label %num_pattern_p.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.z, %bb.y
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.fe = sub nuw i64 %1, %.07661990
  %i.ff = call fastcc i64 @read_digits(ptr noundef %i.fd, i64 noundef %i.fe, ptr noundef %i.a, i64 noundef 2) ; 2 uses
  %.not1011 = icmp eq i64 %i.ff, 0
  br i1 %.not1011, label %.thread1642, label %bb.ab

num_pattern_p.exit:                               ; preds = %bb.z, %bb.x, %bb.u
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.fh = sub nuw i64 %1, %.07661990
  %i.fi = call fastcc i64 @read_digits(ptr noundef %i.fg, i64 noundef %i.fh, ptr noundef %i.a, i64 noundef 9223372036854775807) ; 2 uses
  %.not1010 = icmp eq i64 %i.fi, 0
  br i1 %.not1010, label %.thread1642, label %bb.ab

bb.ab:                                            ; preds = %num_pattern_p.exit, %bb.aa
  %.pn1770 = phi i64 [ %i.ff, %bb.aa ], [ %i.fi, %num_pattern_p.exit ]
  %.12778 = add i64 %.pn1770, %.07661990
  %.pr.i1091 = load i64, ptr @date__strptime_internal.rbimpl_id.27, align 8, !tbaa !12 ; 2 uses
  %.not4.i1092 = icmp eq i64 %.pr.i1091, 0
  br i1 %.not4.i1092, label %.lr.ph.i1094, label %.loopexit1776

.lr.ph.i1094:                                     ; preds = %bb.ab, %.lr.ph.i1094
  %i.fj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.fj, ptr @date__strptime_internal.rbimpl_id.27, align 8, !tbaa !12
  %.not.i1095 = icmp eq i64 %i.fj, 0
  br i1 %.not.i1095, label %.lr.ph.i1094, label %.loopexit1776, !llvm.loop !0

.thread1642:                                      ; preds = %num_pattern_p.exit, %bb.aa
  %date__strptime_internal.rbimpl_id.25.sink = phi ptr [ @date__strptime_internal.rbimpl_id.25, %bb.aa ], [ @date__strptime_internal.rbimpl_id.26, %num_pattern_p.exit ]
  %i.fk = tail call fastcc i64 @rbimpl_intern_const(ptr noundef %date__strptime_internal.rbimpl_id.25.sink, ptr noundef @.str.2) #13
  %i.fl = tail call i64 @rb_id2sym(i64 noundef %i.fk) #10
  %i.fm = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.fl, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread1719

.loopexit1776:                                    ; preds = %.lr.ph.i1094, %bb.ab
  %.lcssa.i1093 = phi i64 [ %.pr.i1091, %bb.ab ], [ %i.fj, %.lr.ph.i1094 ]
  %i.fn = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1093) #10
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !12
  %i.fp = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.fn, i64 noundef %i.fo) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.gn

bb.ac:                                            ; preds = %.preheader1784
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.fr = sub nuw i64 %1, %.07661990
  %i.fs = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.fq, i64 noundef %i.fr, ptr noundef nonnull @.str.28, i64 noundef 20, i64 noundef %4)
  %.pr.i1097 = load i64, ptr @date__strptime_internal.rbimpl_id.29, align 8, !tbaa !12 ; 2 uses
  %.not4.i1098 = icmp eq i64 %.pr.i1097, 0
  br i1 %.not4.i1098, label %.lr.ph.i1100, label %rbimpl_intern_const.exit1102

.lr.ph.i1100:                                     ; preds = %bb.ac, %.lr.ph.i1100
  %i.ft = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.ft, ptr @date__strptime_internal.rbimpl_id.29, align 8, !tbaa !12
  %.not.i1101 = icmp eq i64 %i.ft, 0
  br i1 %.not.i1101, label %.lr.ph.i1100, label %rbimpl_intern_const.exit1102, !llvm.loop !0

rbimpl_intern_const.exit1102:                     ; preds = %.lr.ph.i1100, %bb.ac
  %.lcssa.i1099 = phi i64 [ %.pr.i1097, %bb.ac ], [ %i.ft, %.lr.ph.i1100 ]
  %i.fu = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1099) #10
  %i.fv = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.fu) #10
  %i.fw = icmp eq i64 %i.fv, 4
  %i.fx = add i64 %i.fs, %.07661990
  br i1 %i.fw, label %bb.gn, label %.thread1719

bb.ad:                                            ; preds = %.preheader1784
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.fz = sub nuw i64 %1, %.07661990
  %i.ga = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.fy, i64 noundef %i.fz, ptr noundef nonnull @.str.30, i64 noundef 8, i64 noundef %4)
  %.pr.i1103 = load i64, ptr @date__strptime_internal.rbimpl_id.31, align 8, !tbaa !12 ; 2 uses
  %.not4.i1104 = icmp eq i64 %.pr.i1103, 0
  br i1 %.not4.i1104, label %.lr.ph.i1106, label %rbimpl_intern_const.exit1108

.lr.ph.i1106:                                     ; preds = %bb.ad, %.lr.ph.i1106
  %i.gb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.gb, ptr @date__strptime_internal.rbimpl_id.31, align 8, !tbaa !12
  %.not.i1107 = icmp eq i64 %i.gb, 0
  br i1 %.not.i1107, label %.lr.ph.i1106, label %rbimpl_intern_const.exit1108, !llvm.loop !0

rbimpl_intern_const.exit1108:                     ; preds = %.lr.ph.i1106, %bb.ad
  %.lcssa.i1105 = phi i64 [ %.pr.i1103, %bb.ad ], [ %i.gb, %.lr.ph.i1106 ]
  %i.gc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1105) #10
  %i.gd = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.gc) #10
  %i.ge = icmp eq i64 %i.gd, 4
  %i.gf = add i64 %i.ga, %.07661990
  br i1 %i.ge, label %bb.gn, label %.thread1719

bb.ae:                                            ; preds = %.preheader1784, %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !14
  %i.gi = icmp eq i8 %i.gh, 32
  br i1 %i.gi, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.gj = add i64 %.07661990, 1                   ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  %i.gl = sub i64 %1, %i.gj
  %i.gm = call fastcc i64 @read_digits(ptr noundef %i.gk, i64 noundef %i.gl, ptr noundef %i.b, i64 noundef 1) ; 2 uses
  %.not1007 = icmp eq i64 %i.gm, 0
  br i1 %.not1007, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.pr.i1109 = load i64, ptr @date__strptime_internal.rbimpl_id.32, align 8, !tbaa !12 ; 2 uses
  %.not4.i1110 = icmp eq i64 %.pr.i1109, 0
  br i1 %.not4.i1110, label %.lr.ph.i1112, label %.thread1653

.lr.ph.i1112:                                     ; preds = %bb.ag, %.lr.ph.i1112
  %i.gn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.gn, ptr @date__strptime_internal.rbimpl_id.32, align 8, !tbaa !12
  %.not.i1113 = icmp eq i64 %i.gn, 0
  br i1 %.not.i1113, label %.lr.ph.i1112, label %.thread1653, !llvm.loop !0

bb.ah:                                            ; preds = %bb.af
  %i.go = add i64 %i.gm, %i.gj
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.gp = sub nuw i64 %1, %.07661990
  %i.gq = call fastcc i64 @read_digits(ptr noundef nonnull %i.gg, i64 noundef %i.gp, ptr noundef %i.b, i64 noundef 2) ; 2 uses
  %.not1006 = icmp eq i64 %i.gq, 0
  br i1 %.not1006, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.pr.i1115 = load i64, ptr @date__strptime_internal.rbimpl_id.33, align 8, !tbaa !12 ; 2 uses
  %.not4.i1116 = icmp eq i64 %.pr.i1115, 0
  br i1 %.not4.i1116, label %.lr.ph.i1118, label %.thread1653

.lr.ph.i1118:                                     ; preds = %bb.aj, %.lr.ph.i1118
  %i.gr = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.gr, ptr @date__strptime_internal.rbimpl_id.33, align 8, !tbaa !12
  %.not.i1119 = icmp eq i64 %i.gr, 0
  br i1 %.not.i1119, label %.lr.ph.i1118, label %.thread1653, !llvm.loop !0

bb.ak:                                            ; preds = %bb.ai
  %i.gs = add i64 %i.gq, %.07661990
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.18784 = phi i64 [ %i.go, %bb.ah ], [ %i.gs, %bb.ak ]
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !12  ; 5 uses
  %i.gu = trunc i64 %i.gt to i1
  br i1 %i.gu, label %.split, label %bb.am

.split:                                           ; preds = %bb.al
  %i.gv = tail call i64 @rb_fix2int(i64 noundef %i.gt) #10
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = add i32 %i.gw, -1
  %.not13.i1122 = icmp ult i32 %i.gx, 31
  br i1 %.not13.i1122, label %bb.an, label %valid_range_p.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.gy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.gt, i64 noundef 60, i32 noundef 1, i64 noundef 3) #10
  %.not.i1121 = icmp eq i64 %i.gy, 0
  br i1 %.not.i1121, label %valid_range_p.exit, label %valid_range_p.exit.thread

valid_range_p.exit:                               ; preds = %bb.am
  %i.gz = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.gt, i64 noundef 62, i32 noundef 1, i64 noundef 63) #10
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.an, label %valid_range_p.exit.thread

valid_range_p.exit.thread:                        ; preds = %bb.am, %.split, %valid_range_p.exit
  %.pr.i1123 = load i64, ptr @date__strptime_internal.rbimpl_id.34, align 8, !tbaa !12 ; 2 uses
  %.not4.i1124 = icmp eq i64 %.pr.i1123, 0
  br i1 %.not4.i1124, label %.lr.ph.i1126, label %.thread1653

.lr.ph.i1126:                                     ; preds = %valid_range_p.exit.thread, %.lr.ph.i1126
  %i.hb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.hb, ptr @date__strptime_internal.rbimpl_id.34, align 8, !tbaa !12
  %.not.i1127 = icmp eq i64 %i.hb, 0
  br i1 %.not.i1127, label %.lr.ph.i1126, label %.thread1653, !llvm.loop !0

bb.an:                                            ; preds = %.split, %valid_range_p.exit
  %.pr.i1129 = load i64, ptr @date__strptime_internal.rbimpl_id.35, align 8, !tbaa !12 ; 2 uses
  %.not4.i1130 = icmp eq i64 %.pr.i1129, 0
  br i1 %.not4.i1130, label %.lr.ph.i1132, label %.loopexit1777

.lr.ph.i1132:                                     ; preds = %bb.an, %.lr.ph.i1132
  %i.hc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.36, i64 noundef 4) #10 ; 3 uses
  store i64 %i.hc, ptr @date__strptime_internal.rbimpl_id.35, align 8, !tbaa !12
  %.not.i1133 = icmp eq i64 %i.hc, 0
  br i1 %.not.i1133, label %.lr.ph.i1132, label %.loopexit1777, !llvm.loop !0

.thread1653:                                      ; preds = %.lr.ph.i1118, %.lr.ph.i1126, %.lr.ph.i1112, %valid_range_p.exit.thread, %bb.aj, %bb.ag
  %.lcssa.i1125.sink = phi i64 [ %i.gn, %.lr.ph.i1112 ], [ %i.hb, %.lr.ph.i1126 ], [ %.pr.i1109, %bb.ag ], [ %.pr.i1115, %bb.aj ], [ %.pr.i1123, %valid_range_p.exit.thread ], [ %i.gr, %.lr.ph.i1118 ]
  %i.hd = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1125.sink) #10
  %i.he = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.hd, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread1719

.loopexit1777:                                    ; preds = %.lr.ph.i1132, %bb.an
  %.lcssa.i1131 = phi i64 [ %.pr.i1129, %bb.an ], [ %i.hc, %.lr.ph.i1132 ]
  %i.hf = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1131) #10
  %i.hg = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.hf, i64 noundef %i.gt) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.gn

bb.ao:                                            ; preds = %.preheader1784
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.hi = sub nuw i64 %1, %.07661990
  %i.hj = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull @.str.37, i64 noundef 8, i64 noundef %4)
  %.pr.i1135 = load i64, ptr @date__strptime_internal.rbimpl_id.38, align 8, !tbaa !12 ; 2 uses
  %.not4.i1136 = icmp eq i64 %.pr.i1135, 0
  br i1 %.not4.i1136, label %.lr.ph.i1138, label %rbimpl_intern_const.exit1140

.lr.ph.i1138:                                     ; preds = %bb.ao, %.lr.ph.i1138
  %i.hk = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.hk, ptr @date__strptime_internal.rbimpl_id.38, align 8, !tbaa !12
  %.not.i1139 = icmp eq i64 %i.hk, 0
  br i1 %.not.i1139, label %.lr.ph.i1138, label %rbimpl_intern_const.exit1140, !llvm.loop !0

rbimpl_intern_const.exit1140:                     ; preds = %.lr.ph.i1138, %bb.ao
  %.lcssa.i1137 = phi i64 [ %.pr.i1135, %bb.ao ], [ %i.hk, %.lr.ph.i1138 ]
  %i.hl = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1137) #10
  %i.hm = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.hl) #10
  %i.hn = icmp eq i64 %i.hm, 4
  %i.ho = add i64 %i.hj, %.07661990
  br i1 %i.hn, label %bb.gn, label %.thread1719

bb.ap:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.hp = getelementptr i8, ptr %2, i64 %.2839    ; 3 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 2
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !14  ; 2 uses
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !22
  %i.hv = and i16 %i.hu, 2048
  %.not.i1141 = icmp eq i16 %i.hv, 0
  br i1 %.not.i1141, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.hw = icmp eq i8 %i.hr, 37
  br i1 %i.hw, label %bb.ar, label %num_pattern_p.exit1148

bb.ar:                                            ; preds = %bb.aq
  %i.hx = getelementptr i8, ptr %i.hp, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.hy, label %bb.at [
    i8 69, label %bb.as
    i8 79, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.hz = getelementptr i8, ptr %i.hp, i64 4
  %.pr.i1143 = load i8, ptr %i.hz, align 1, !tbaa !14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ia = phi i8 [ %i.hy, %bb.ar ], [ %.pr.i1143, %bb.as ] ; 3 uses
  %.not12.i1144 = icmp eq i8 %i.ia, 0
  br i1 %.not12.i1144, label %num_pattern_p.exit1148, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ib = sext i8 %i.ia to i32
  %memchr.i1145 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.165, i32 %i.ib, i64 33)
  %.not13.i1146 = icmp eq ptr %memchr.i1145, null
  br i1 %.not13.i1146, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ic = zext i8 %i.ia to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !22
  %i.if = and i16 %i.ie, 2048
  %.not14.i1147 = icmp eq i16 %i.if, 0
  br i1 %.not14.i1147, label %num_pattern_p.exit1148, label %bb.aw

bb.aw:                                            ; preds = %bb.ap, %bb.av, %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.ih = sub nuw i64 %1, %.07661990
  %i.ii = call fastcc i64 @read_digits(ptr noundef %i.ig, i64 noundef %i.ih, ptr noundef %i.c, i64 noundef 4) ; 2 uses
  %.not1005 = icmp eq i64 %i.ii, 0
  br i1 %.not1005, label %.thread1663, label %bb.ax

num_pattern_p.exit1148:                           ; preds = %bb.av, %bb.at, %bb.aq
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.ik = sub nuw i64 %1, %.07661990
  %i.il = call fastcc i64 @read_digits(ptr noundef %i.ij, i64 noundef %i.ik, ptr noundef %i.c, i64 noundef 9223372036854775807) ; 2 uses
  %.not1004 = icmp eq i64 %i.il, 0
  br i1 %.not1004, label %.thread1663, label %bb.ax

bb.ax:                                            ; preds = %num_pattern_p.exit1148, %bb.aw
  %.pn1769 = phi i64 [ %i.ii, %bb.aw ], [ %i.il, %num_pattern_p.exit1148 ]
  %.23789 = add i64 %.pn1769, %.07661990
  %.pr.i1149 = load i64, ptr @date__strptime_internal.rbimpl_id.41, align 8, !tbaa !12 ; 2 uses
  %.not4.i1150 = icmp eq i64 %.pr.i1149, 0
  br i1 %.not4.i1150, label %.lr.ph.i1152, label %.loopexit1778

.lr.ph.i1152:                                     ; preds = %bb.ax, %.lr.ph.i1152
  %i.im = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 6) #10 ; 3 uses
  store i64 %i.im, ptr @date__strptime_internal.rbimpl_id.41, align 8, !tbaa !12
  %.not.i1153 = icmp eq i64 %i.im, 0
  br i1 %.not.i1153, label %.lr.ph.i1152, label %.loopexit1778, !llvm.loop !0

.thread1663:                                      ; preds = %num_pattern_p.exit1148, %bb.aw
  %date__strptime_internal.rbimpl_id.39.sink = phi ptr [ @date__strptime_internal.rbimpl_id.39, %bb.aw ], [ @date__strptime_internal.rbimpl_id.40, %num_pattern_p.exit1148 ]
  %i.in = tail call fastcc i64 @rbimpl_intern_const(ptr noundef %date__strptime_internal.rbimpl_id.39.sink, ptr noundef @.str.2) #13
  %i.io = tail call i64 @rb_id2sym(i64 noundef %i.in) #10
  %i.ip = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.io, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.thread1719

.loopexit1778:                                    ; preds = %.lr.ph.i1152, %bb.ax
  %.lcssa.i1151 = phi i64 [ %.pr.i1149, %bb.ax ], [ %i.im, %.lr.ph.i1152 ]
  %i.iq = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1151) #10
  %i.ir = load i64, ptr %i.c, align 8, !tbaa !12
  %i.is = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.iq, i64 noundef %i.ir) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.gn

bb.ay:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.iu = sub nuw i64 %1, %.07661990
  %i.iv = call fastcc i64 @read_digits(ptr noundef %i.it, i64 noundef %i.iu, ptr noundef %i.d, i64 noundef 2) ; 2 uses
  %.not1000 = icmp eq i64 %i.iv, 0
  br i1 %.not1000, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.pr.i1155 = load i64, ptr @date__strptime_internal.rbimpl_id.42, align 8, !tbaa !12 ; 2 uses
  %.not4.i1156 = icmp eq i64 %.pr.i1155, 0
  br i1 %.not4.i1156, label %.lr.ph.i1158, label %.critedge1028

.lr.ph.i1158:                                     ; preds = %bb.az, %.lr.ph.i1158
  %i.iw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.iw, ptr @date__strptime_internal.rbimpl_id.42, align 8, !tbaa !12
  %.not.i1159 = icmp eq i64 %i.iw, 0
  br i1 %.not.i1159, label %.lr.ph.i1158, label %.critedge1028, !llvm.loop !0

bb.ba:                                            ; preds = %bb.ay
  %i.ix = add i64 %i.iv, %.07661990
  %i.iy = load i64, ptr %i.d, align 8, !tbaa !12  ; 6 uses
  %i.iz = trunc i64 %i.iy to i1
  br i1 %i.iz, label %.split2379, label %bb.bb

.split2379:                                       ; preds = %bb.ba
  %i.ja = tail call i64 @rb_fix2int(i64 noundef %i.iy) #10
  %i.jb = trunc i64 %i.ja to i32
  %.not13.i1164 = icmp ult i32 %i.jb, 100
  br i1 %.not13.i1164, label %bb.bc, label %valid_range_p.exit1165.thread

bb.bb:                                            ; preds = %bb.ba
  %i.jc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.iy, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1161 = icmp eq i64 %i.jc, 0
  br i1 %.not.i1161, label %valid_range_p.exit1165, label %valid_range_p.exit1165.thread

valid_range_p.exit1165:                           ; preds = %bb.bb
  %i.jd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.iy, i64 noundef 62, i32 noundef 1, i64 noundef 199) #10
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %bb.bc, label %valid_range_p.exit1165.thread

valid_range_p.exit1165.thread:                    ; preds = %bb.bb, %.split2379, %valid_range_p.exit1165
  %i.jf = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.43, ptr noundef @.str.2) #13
  br label %.critedge1028

bb.bc:                                            ; preds = %.split2379, %valid_range_p.exit1165
  %.pr.i1166 = load i64, ptr @date__strptime_internal.rbimpl_id.44, align 8, !tbaa !12 ; 2 uses
  %.not4.i1167 = icmp eq i64 %.pr.i1166, 0
  br i1 %.not4.i1167, label %.lr.ph.i1169, label %rbimpl_intern_const.exit1171

.lr.ph.i1169:                                     ; preds = %bb.bc, %.lr.ph.i1169
  %i.jg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 6) #10 ; 3 uses
  store i64 %i.jg, ptr @date__strptime_internal.rbimpl_id.44, align 8, !tbaa !12
  %.not.i1170 = icmp eq i64 %i.jg, 0
  br i1 %.not.i1170, label %.lr.ph.i1169, label %rbimpl_intern_const.exit1171, !llvm.loop !0

rbimpl_intern_const.exit1171:                     ; preds = %.lr.ph.i1169, %bb.bc
  %.lcssa.i1168 = phi i64 [ %.pr.i1166, %bb.bc ], [ %i.jg, %.lr.ph.i1169 ]
  %i.jh = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1168) #10
  %i.ji = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.jh, i64 noundef %i.iy) #10 ; 0 uses
  %.pr.i1172 = load i64, ptr @date__strptime_internal.rbimpl_id.45, align 8, !tbaa !12 ; 2 uses
  %.not4.i1173 = icmp eq i64 %.pr.i1172, 0
  br i1 %.not4.i1173, label %.lr.ph.i1175, label %rbimpl_intern_const.exit1177

.lr.ph.i1175:                                     ; preds = %rbimpl_intern_const.exit1171, %.lr.ph.i1175
  %i.jj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.jj, ptr @date__strptime_internal.rbimpl_id.45, align 8, !tbaa !12
  %.not.i1176 = icmp eq i64 %i.jj, 0
  br i1 %.not.i1176, label %.lr.ph.i1175, label %rbimpl_intern_const.exit1177, !llvm.loop !0

rbimpl_intern_const.exit1177:                     ; preds = %.lr.ph.i1175, %rbimpl_intern_const.exit1171
  %.lcssa.i1174 = phi i64 [ %.pr.i1172, %rbimpl_intern_const.exit1171 ], [ %i.jj, %.lr.ph.i1175 ]
  %i.jk = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1174) #10
  %i.jl = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.jk) #10
  %i.jm = icmp eq i64 %i.jl, 4
  br i1 %i.jm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %rbimpl_intern_const.exit1177
  %.pr.i1178 = load i64, ptr @date__strptime_internal.rbimpl_id.46, align 8, !tbaa !12 ; 2 uses
  %.not4.i1179 = icmp eq i64 %.pr.i1178, 0
  br i1 %.not4.i1179, label %.lr.ph.i1181, label %rbimpl_intern_const.exit1183

.lr.ph.i1181:                                     ; preds = %bb.bd, %.lr.ph.i1181
  %i.jn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.jn, ptr @date__strptime_internal.rbimpl_id.46, align 8, !tbaa !12
  %.not.i1182 = icmp eq i64 %i.jn, 0
  br i1 %.not.i1182, label %.lr.ph.i1181, label %rbimpl_intern_const.exit1183, !llvm.loop !0

rbimpl_intern_const.exit1183:                     ; preds = %.lr.ph.i1181, %bb.bd
  %.lcssa.i1180 = phi i64 [ %.pr.i1178, %bb.bd ], [ %i.jn, %.lr.ph.i1181 ]
  %i.jo = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1180) #10
  %.pr.i1184 = load i64, ptr @date__strptime_internal.rbimpl_id.47, align 8, !tbaa !12 ; 2 uses
  %.not4.i1185 = icmp eq i64 %.pr.i1184, 0
  br i1 %.not4.i1185, label %.lr.ph.i1187, label %rbimpl_intern_const.exit1189

.lr.ph.i1187:                                     ; preds = %rbimpl_intern_const.exit1183, %.lr.ph.i1187
  %i.jp = tail call i64 @rb_intern2(ptr noundef nonnull @.str.48, i64 noundef 2) #10 ; 3 uses
  store i64 %i.jp, ptr @date__strptime_internal.rbimpl_id.47, align 8, !tbaa !12
  %.not.i1188 = icmp eq i64 %i.jp, 0
  br i1 %.not.i1188, label %.lr.ph.i1187, label %rbimpl_intern_const.exit1189, !llvm.loop !0

rbimpl_intern_const.exit1189:                     ; preds = %.lr.ph.i1187, %rbimpl_intern_const.exit1183
  %.lcssa.i1186 = phi i64 [ %.pr.i1184, %rbimpl_intern_const.exit1183 ], [ %i.jp, %.lr.ph.i1187 ]
  %i.jq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.iy, i64 noundef %.lcssa.i1186, i32 noundef 1, i64 noundef 139) #10
  %.not1002 = icmp eq i64 %i.jq, 0
  %i.jr = select i1 %.not1002, i64 41, i64 39
  %i.js = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.jo, i64 noundef %i.jr) #10 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %rbimpl_intern_const.exit1177, %rbimpl_intern_const.exit1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.gn

bb.bf:                                            ; preds = %.preheader1784, %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !14
  %i.jv = icmp eq i8 %i.ju, 32
  br i1 %i.jv, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.jw = add i64 %.07661990, 1                   ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %i.jw
  %i.jy = sub i64 %1, %i.jw
  %i.jz = call fastcc i64 @read_digits(ptr noundef %i.jx, i64 noundef %i.jy, ptr noundef %i.e, i64 noundef 1) ; 2 uses
  %.not998 = icmp eq i64 %i.jz, 0
  br i1 %.not998, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.pr.i1190 = load i64, ptr @date__strptime_internal.rbimpl_id.49, align 8, !tbaa !12 ; 2 uses
  %.not4.i1191 = icmp eq i64 %.pr.i1190, 0
  br i1 %.not4.i1191, label %.lr.ph.i1193, label %.thread1679

.lr.ph.i1193:                                     ; preds = %bb.bh, %.lr.ph.i1193
  %i.ka = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.ka, ptr @date__strptime_internal.rbimpl_id.49, align 8, !tbaa !12
  %.not.i1194 = icmp eq i64 %i.ka, 0
  br i1 %.not.i1194, label %.lr.ph.i1193, label %.thread1679, !llvm.loop !0

bb.bi:                                            ; preds = %bb.bg
  %i.kb = add i64 %i.jz, %i.jw
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bf
  %i.kc = sub nuw i64 %1, %.07661990
  %i.kd = call fastcc i64 @read_digits(ptr noundef nonnull %i.jt, i64 noundef %i.kc, ptr noundef %i.e, i64 noundef 2) ; 2 uses
  %.not997 = icmp eq i64 %i.kd, 0
  br i1 %.not997, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %.pr.i1196 = load i64, ptr @date__strptime_internal.rbimpl_id.50, align 8, !tbaa !12 ; 2 uses
  %.not4.i1197 = icmp eq i64 %.pr.i1196, 0
  br i1 %.not4.i1197, label %.lr.ph.i1199, label %.thread1679

.lr.ph.i1199:                                     ; preds = %bb.bk, %.lr.ph.i1199
  %i.ke = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.ke, ptr @date__strptime_internal.rbimpl_id.50, align 8, !tbaa !12
  %.not.i1200 = icmp eq i64 %i.ke, 0
  br i1 %.not.i1200, label %.lr.ph.i1199, label %.thread1679, !llvm.loop !0

bb.bl:                                            ; preds = %bb.bj
  %i.kf = add i64 %i.kd, %.07661990
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %.28794 = phi i64 [ %i.kb, %bb.bi ], [ %i.kf, %bb.bl ]
  %i.kg = load i64, ptr %i.e, align 8, !tbaa !12  ; 5 uses
  %i.kh = trunc i64 %i.kg to i1
  br i1 %i.kh, label %.split2380, label %bb.bn

.split2380:                                       ; preds = %bb.bm
  %i.ki = tail call i64 @rb_fix2int(i64 noundef %i.kg) #10
  %i.kj = trunc i64 %i.ki to i32
  %.not13.i1205 = icmp ult i32 %i.kj, 25
  br i1 %.not13.i1205, label %bb.bo, label %valid_range_p.exit1206.thread

bb.bn:                                            ; preds = %bb.bm
  %i.kk = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.kg, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1202 = icmp eq i64 %i.kk, 0
  br i1 %.not.i1202, label %valid_range_p.exit1206, label %valid_range_p.exit1206.thread

valid_range_p.exit1206:                           ; preds = %bb.bn
  %i.kl = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.kg, i64 noundef 62, i32 noundef 1, i64 noundef 49) #10
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %bb.bo, label %valid_range_p.exit1206.thread

valid_range_p.exit1206.thread:                    ; preds = %bb.bn, %.split2380, %valid_range_p.exit1206
  %.pr.i1207 = load i64, ptr @date__strptime_internal.rbimpl_id.51, align 8, !tbaa !12 ; 2 uses
  %.not4.i1208 = icmp eq i64 %.pr.i1207, 0
  br i1 %.not4.i1208, label %.lr.ph.i1210, label %.thread1679

.lr.ph.i1210:                                     ; preds = %valid_range_p.exit1206.thread, %.lr.ph.i1210
  %i.kn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.kn, ptr @date__strptime_internal.rbimpl_id.51, align 8, !tbaa !12
  %.not.i1211 = icmp eq i64 %i.kn, 0
  br i1 %.not.i1211, label %.lr.ph.i1210, label %.thread1679, !llvm.loop !0

bb.bo:                                            ; preds = %.split2380, %valid_range_p.exit1206
  %.pr.i1213 = load i64, ptr @date__strptime_internal.rbimpl_id.52, align 8, !tbaa !12 ; 2 uses
  %.not4.i1214 = icmp eq i64 %.pr.i1213, 0
  br i1 %.not4.i1214, label %.lr.ph.i1216, label %.loopexit1779

.lr.ph.i1216:                                     ; preds = %bb.bo, %.lr.ph.i1216
  %i.ko = tail call i64 @rb_intern2(ptr noundef nonnull @.str.14, i64 noundef 4) #10 ; 3 uses
  store i64 %i.ko, ptr @date__strptime_internal.rbimpl_id.52, align 8, !tbaa !12
  %.not.i1217 = icmp eq i64 %i.ko, 0
  br i1 %.not.i1217, label %.lr.ph.i1216, label %.loopexit1779, !llvm.loop !0

.thread1679:                                      ; preds = %.lr.ph.i1199, %.lr.ph.i1210, %.lr.ph.i1193, %valid_range_p.exit1206.thread, %bb.bk, %bb.bh
  %.lcssa.i1209.sink = phi i64 [ %i.ka, %.lr.ph.i1193 ], [ %i.kn, %.lr.ph.i1210 ], [ %.pr.i1190, %bb.bh ], [ %.pr.i1196, %bb.bk ], [ %.pr.i1207, %valid_range_p.exit1206.thread ], [ %i.ke, %.lr.ph.i1199 ]
  %i.kp = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1209.sink) #10
  %i.kq = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.kp, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread1719

.loopexit1779:                                    ; preds = %.lr.ph.i1216, %bb.bo
  %.lcssa.i1215 = phi i64 [ %.pr.i1213, %bb.bo ], [ %i.ko, %.lr.ph.i1216 ]
  %i.kr = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1215) #10
  %i.ks = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.kr, i64 noundef %i.kg) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.gn

bb.bp:                                            ; preds = %.preheader1784, %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !14
  %i.kv = icmp eq i8 %i.ku, 32
  br i1 %i.kv, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.kw = add i64 %.07661990, 1                   ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %i.kw
  %i.ky = sub i64 %1, %i.kw
  %i.kz = call fastcc i64 @read_digits(ptr noundef %i.kx, i64 noundef %i.ky, ptr noundef %i.f, i64 noundef 1) ; 2 uses
  %.not995 = icmp eq i64 %i.kz, 0
  br i1 %.not995, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.pr.i1219 = load i64, ptr @date__strptime_internal.rbimpl_id.53, align 8, !tbaa !12 ; 2 uses
  %.not4.i1220 = icmp eq i64 %.pr.i1219, 0
  br i1 %.not4.i1220, label %.lr.ph.i1222, label %.thread1690

.lr.ph.i1222:                                     ; preds = %bb.br, %.lr.ph.i1222
  %i.la = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.la, ptr @date__strptime_internal.rbimpl_id.53, align 8, !tbaa !12
  %.not.i1223 = icmp eq i64 %i.la, 0
  br i1 %.not.i1223, label %.lr.ph.i1222, label %.thread1690, !llvm.loop !0

bb.bs:                                            ; preds = %bb.bq
  %i.lb = add i64 %i.kz, %i.kw
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bp
  %i.lc = sub nuw i64 %1, %.07661990
  %i.ld = call fastcc i64 @read_digits(ptr noundef nonnull %i.kt, i64 noundef %i.lc, ptr noundef %i.f, i64 noundef 2) ; 2 uses
  %.not994 = icmp eq i64 %i.ld, 0
  br i1 %.not994, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.pr.i1225 = load i64, ptr @date__strptime_internal.rbimpl_id.54, align 8, !tbaa !12 ; 2 uses
  %.not4.i1226 = icmp eq i64 %.pr.i1225, 0
  br i1 %.not4.i1226, label %.lr.ph.i1228, label %.thread1690

.lr.ph.i1228:                                     ; preds = %bb.bu, %.lr.ph.i1228
  %i.le = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.le, ptr @date__strptime_internal.rbimpl_id.54, align 8, !tbaa !12
  %.not.i1229 = icmp eq i64 %i.le, 0
  br i1 %.not.i1229, label %.lr.ph.i1228, label %.thread1690, !llvm.loop !0

bb.bv:                                            ; preds = %bb.bt
  %i.lf = add i64 %i.ld, %.07661990
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.32798 = phi i64 [ %i.lb, %bb.bs ], [ %i.lf, %bb.bv ]
  %i.lg = load i64, ptr %i.f, align 8, !tbaa !12  ; 5 uses
  %i.lh = trunc i64 %i.lg to i1
  br i1 %i.lh, label %.split2381, label %bb.bx

.split2381:                                       ; preds = %bb.bw
  %i.li = tail call i64 @rb_fix2int(i64 noundef %i.lg) #10
  %i.lj = trunc i64 %i.li to i32
  %i.lk = add i32 %i.lj, -1
  %.not13.i1234 = icmp ult i32 %i.lk, 12
  br i1 %.not13.i1234, label %bb.by, label %valid_range_p.exit1235.thread

bb.bx:                                            ; preds = %bb.bw
  %i.ll = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.lg, i64 noundef 60, i32 noundef 1, i64 noundef 3) #10
  %.not.i1231 = icmp eq i64 %i.ll, 0
  br i1 %.not.i1231, label %valid_range_p.exit1235, label %valid_range_p.exit1235.thread

valid_range_p.exit1235:                           ; preds = %bb.bx
  %i.lm = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.lg, i64 noundef 62, i32 noundef 1, i64 noundef 25) #10
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.by, label %valid_range_p.exit1235.thread

valid_range_p.exit1235.thread:                    ; preds = %bb.bx, %.split2381, %valid_range_p.exit1235
  %.pr.i1236 = load i64, ptr @date__strptime_internal.rbimpl_id.55, align 8, !tbaa !12 ; 2 uses
  %.not4.i1237 = icmp eq i64 %.pr.i1236, 0
  br i1 %.not4.i1237, label %.lr.ph.i1239, label %.thread1690

.lr.ph.i1239:                                     ; preds = %valid_range_p.exit1235.thread, %.lr.ph.i1239
  %i.lo = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.lo, ptr @date__strptime_internal.rbimpl_id.55, align 8, !tbaa !12
  %.not.i1240 = icmp eq i64 %i.lo, 0
  br i1 %.not.i1240, label %.lr.ph.i1239, label %.thread1690, !llvm.loop !0

bb.by:                                            ; preds = %.split2381, %valid_range_p.exit1235
  %.pr.i1242 = load i64, ptr @date__strptime_internal.rbimpl_id.56, align 8, !tbaa !12 ; 2 uses
  %.not4.i1243 = icmp eq i64 %.pr.i1242, 0
  br i1 %.not4.i1243, label %.lr.ph.i1245, label %.loopexit1780

.lr.ph.i1245:                                     ; preds = %bb.by, %.lr.ph.i1245
  %i.lp = tail call i64 @rb_intern2(ptr noundef nonnull @.str.14, i64 noundef 4) #10 ; 3 uses
  store i64 %i.lp, ptr @date__strptime_internal.rbimpl_id.56, align 8, !tbaa !12
  %.not.i1246 = icmp eq i64 %i.lp, 0
  br i1 %.not.i1246, label %.lr.ph.i1245, label %.loopexit1780, !llvm.loop !0

.thread1690:                                      ; preds = %.lr.ph.i1228, %.lr.ph.i1239, %.lr.ph.i1222, %valid_range_p.exit1235.thread, %bb.bu, %bb.br
  %.lcssa.i1238.sink = phi i64 [ %i.la, %.lr.ph.i1222 ], [ %i.lo, %.lr.ph.i1239 ], [ %.pr.i1219, %bb.br ], [ %.pr.i1225, %bb.bu ], [ %.pr.i1236, %valid_range_p.exit1235.thread ], [ %i.le, %.lr.ph.i1228 ]
  %i.lq = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1238.sink) #10
  %i.lr = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.lq, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %.thread1719

.loopexit1780:                                    ; preds = %.lr.ph.i1245, %bb.by
  %.lcssa.i1244 = phi i64 [ %.pr.i1242, %bb.by ], [ %i.lp, %.lr.ph.i1245 ]
  %i.ls = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1244) #10
  %i.lt = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.ls, i64 noundef %i.lg) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.gn

bb.bz:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.lv = sub nuw i64 %1, %.07661990
  %i.lw = call fastcc i64 @read_digits(ptr noundef %i.lu, i64 noundef %i.lv, ptr noundef %i.g, i64 noundef 3) ; 2 uses
  %.not992 = icmp eq i64 %i.lw, 0
  br i1 %.not992, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.pr.i1248 = load i64, ptr @date__strptime_internal.rbimpl_id.57, align 8, !tbaa !12 ; 2 uses
  %.not4.i1249 = icmp eq i64 %.pr.i1248, 0
  br i1 %.not4.i1249, label %.lr.ph.i1251, label %.thread1693

.lr.ph.i1251:                                     ; preds = %bb.ca, %.lr.ph.i1251
  %i.lx = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.lx, ptr @date__strptime_internal.rbimpl_id.57, align 8, !tbaa !12
  %.not.i1252 = icmp eq i64 %i.lx, 0
  br i1 %.not.i1252, label %.lr.ph.i1251, label %.thread1693, !llvm.loop !0

bb.cb:                                            ; preds = %bb.bz
  %i.ly = add i64 %i.lw, %.07661990
  %i.lz = load i64, ptr %i.g, align 8, !tbaa !12  ; 5 uses
  %i.ma = trunc i64 %i.lz to i1
  br i1 %i.ma, label %.split2382, label %bb.cc

.split2382:                                       ; preds = %bb.cb
  %i.mb = tail call i64 @rb_fix2int(i64 noundef %i.lz) #10
  %i.mc = trunc i64 %i.mb to i32
  %i.md = add i32 %i.mc, -1
  %.not13.i1257 = icmp ult i32 %i.md, 366
  br i1 %.not13.i1257, label %.critedge1030, label %valid_range_p.exit1258.thread

bb.cc:                                            ; preds = %bb.cb
  %i.me = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.lz, i64 noundef 60, i32 noundef 1, i64 noundef 3) #10
  %.not.i1254 = icmp eq i64 %i.me, 0
  br i1 %.not.i1254, label %valid_range_p.exit1258, label %valid_range_p.exit1258.thread

valid_range_p.exit1258:                           ; preds = %bb.cc
  %i.mf = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.lz, i64 noundef 62, i32 noundef 1, i64 noundef 733) #10
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %.critedge1030, label %valid_range_p.exit1258.thread

valid_range_p.exit1258.thread:                    ; preds = %bb.cc, %.split2382, %valid_range_p.exit1258
  %i.mh = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.58, ptr noundef @.str.2) #13
  br label %.thread1693

.critedge1030:                                    ; preds = %.split2382, %valid_range_p.exit1258
  %.pr.i1259 = load i64, ptr @date__strptime_internal.rbimpl_id.59, align 8, !tbaa !12 ; 2 uses
  %.not4.i1260 = icmp eq i64 %.pr.i1259, 0
  br i1 %.not4.i1260, label %.lr.ph.i1262, label %rbimpl_intern_const.exit1264

.lr.ph.i1262:                                     ; preds = %.critedge1030, %.lr.ph.i1262
  %i.mi = tail call i64 @rb_intern2(ptr noundef nonnull @.str.60, i64 noundef 4) #10 ; 3 uses
  store i64 %i.mi, ptr @date__strptime_internal.rbimpl_id.59, align 8, !tbaa !12
  %.not.i1263 = icmp eq i64 %i.mi, 0
  br i1 %.not.i1263, label %.lr.ph.i1262, label %rbimpl_intern_const.exit1264, !llvm.loop !0

rbimpl_intern_const.exit1264:                     ; preds = %.lr.ph.i1262, %.critedge1030
  %.lcssa.i1261 = phi i64 [ %.pr.i1259, %.critedge1030 ], [ %i.mi, %.lr.ph.i1262 ]
  %i.mj = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1261) #10
  %i.mk = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.mj, i64 noundef %i.lz) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.gn

.thread1693:                                      ; preds = %.lr.ph.i1251, %bb.ca, %valid_range_p.exit1258.thread
  %.lcssa.i1250.sink = phi i64 [ %i.mh, %valid_range_p.exit1258.thread ], [ %.pr.i1248, %bb.ca ], [ %i.lx, %.lr.ph.i1251 ]
  %i.ml = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1250.sink) #10
  %i.mm = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.ml, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %.thread1719

bb.cd:                                            ; preds = %.preheader1784, %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.mo, label %bb.cf [
    i8 45, label %bb.ce
    i8 43, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd, %bb.cd
  %i.mp = icmp eq i8 %i.mo, 45
  %i.mq = add i64 %.07661990, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %.1918 = phi i1 [ %i.mp, %bb.ce ], [ false, %bb.cd ]
  %.35801 = phi i64 [ %i.mq, %bb.ce ], [ %.07661990, %bb.cd ] ; 5 uses
  %i.mr = getelementptr i8, ptr %2, i64 %.2839    ; 3 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 2
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !14  ; 2 uses
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !22
  %i.mx = and i16 %i.mw, 2048
  %.not.i1265 = icmp eq i16 %i.mx, 0
  br i1 %.not.i1265, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.my = icmp eq i8 %i.mt, 37
  br i1 %i.my, label %bb.ch, label %num_pattern_p.exit1272

bb.ch:                                            ; preds = %bb.cg
  %i.mz = getelementptr i8, ptr %i.mr, i64 3
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.na, label %bb.cj [
    i8 69, label %bb.ci
    i8 79, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch
  %i.nb = getelementptr i8, ptr %i.mr, i64 4
  %.pr.i1267 = load i8, ptr %i.nb, align 1, !tbaa !14
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.nc = phi i8 [ %i.na, %bb.ch ], [ %.pr.i1267, %bb.ci ] ; 3 uses
  %.not12.i1268 = icmp eq i8 %i.nc, 0
  br i1 %.not12.i1268, label %num_pattern_p.exit1272, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nd = sext i8 %i.nc to i32
  %memchr.i1269 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.165, i32 %i.nd, i64 33)
  %.not13.i1270 = icmp eq ptr %memchr.i1269, null
  br i1 %.not13.i1270, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ne = zext i8 %i.nc to i64
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ne
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !22
  %i.nh = and i16 %i.ng, 2048
  %.not14.i1271 = icmp eq i16 %i.nh, 0
  br i1 %.not14.i1271, label %num_pattern_p.exit1272, label %bb.cm

bb.cm:                                            ; preds = %bb.cf, %bb.cl, %bb.ck
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 %.35801
  %i.nj = sub i64 %1, %.35801
  %i.nk = icmp eq i8 %i.az, 76
  %i.nl = select i1 %i.nk, i64 3, i64 9
  %i.nm = call fastcc i64 @read_digits(ptr noundef %i.ni, i64 noundef %i.nj, ptr noundef %i.h, i64 noundef %i.nl) ; 2 uses
  %.not991 = icmp eq i64 %i.nm, 0
  br i1 %.not991, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.pr.i1273 = load i64, ptr @date__strptime_internal.rbimpl_id.61, align 8, !tbaa !12 ; 2 uses
  %.not4.i1274 = icmp eq i64 %.pr.i1273, 0
  br i1 %.not4.i1274, label %.lr.ph.i1276, label %.thread1705

.lr.ph.i1276:                                     ; preds = %bb.cn, %.lr.ph.i1276
  %i.nn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.nn, ptr @date__strptime_internal.rbimpl_id.61, align 8, !tbaa !12
  %.not.i1277 = icmp eq i64 %i.nn, 0
  br i1 %.not.i1277, label %.lr.ph.i1276, label %.thread1705, !llvm.loop !0

num_pattern_p.exit1272:                           ; preds = %bb.cl, %bb.cj, %bb.cg
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 %.35801
  %i.np = sub i64 %1, %.35801
  %i.nq = call fastcc i64 @read_digits(ptr noundef %i.no, i64 noundef %i.np, ptr noundef %i.h, i64 noundef 9223372036854775807) ; 2 uses
  %.not990 = icmp eq i64 %i.nq, 0
  br i1 %.not990, label %5, label %bb.co

5:                                                ; preds = %num_pattern_p.exit1272
  %.pr.i1279 = load i64, ptr @date__strptime_internal.rbimpl_id.62, align 8, !tbaa !12 ; 2 uses
  %.not4.i1280 = icmp eq i64 %.pr.i1279, 0
  br i1 %.not4.i1280, label %.thread1702, label %.thread1705

.thread1702:                                      ; preds = %5, %.thread1702
  %6 = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %6, ptr @date__strptime_internal.rbimpl_id.62, align 8, !tbaa !12
  %.not.i1283 = icmp eq i64 %6, 0
  br i1 %.not.i1283, label %.thread1702, label %.thread1705, !llvm.loop !0

bb.co:                                            ; preds = %num_pattern_p.exit1272, %bb.cm
  %.pn1768 = phi i64 [ %i.nm, %bb.cm ], [ %i.nq, %num_pattern_p.exit1272 ] ; 4 uses
  %.38804 = add i64 %.pn1768, %.35801
  br i1 %.1918, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.nr = load i64, ptr %i.h, align 8, !tbaa !12
  %.pr.i1279.a = load i64, ptr @date__strptime_internal.rbimpl_id.63, align 8, !tbaa !12 ; 2 uses
  %.not4.i1280.a = icmp eq i64 %.pr.i1279.a, 0
  br i1 %.not4.i1280.a, label %.lr.ph.i1282, label %rbimpl_intern_const.exit1284

.lr.ph.i1282:                                     ; preds = %bb.cp, %.lr.ph.i1282
  %i.ns = tail call i64 @rb_intern2(ptr noundef nonnull @.str.64, i64 noundef 2) #10 ; 3 uses
  store i64 %i.ns, ptr @date__strptime_internal.rbimpl_id.63, align 8, !tbaa !12
  %.not.i1283.a = icmp eq i64 %i.ns, 0
  br i1 %.not.i1283.a, label %.lr.ph.i1282, label %rbimpl_intern_const.exit1284, !llvm.loop !0

rbimpl_intern_const.exit1284:                     ; preds = %.lr.ph.i1282, %bb.cp
  %.lcssa.i1281 = phi i64 [ %.pr.i1279.a, %bb.cp ], [ %i.ns, %.lr.ph.i1282 ]
  %i.nt = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.nr, i64 noundef %.lcssa.i1281, i32 noundef 0) #10
  store i64 %i.nt, ptr %i.h, align 8, !tbaa !12
  br label %bb.cq

bb.cq:                                            ; preds = %rbimpl_intern_const.exit1284, %bb.co
  %.pr.i1285 = load i64, ptr @date__strptime_internal.rbimpl_id.65, align 8, !tbaa !12 ; 2 uses
  %.not4.i1286 = icmp eq i64 %.pr.i1285, 0
  br i1 %.not4.i1286, label %.lr.ph.i1288, label %rbimpl_intern_const.exit1290

.lr.ph.i1288:                                     ; preds = %bb.cq, %.lr.ph.i1288
  %i.nu = tail call i64 @rb_intern2(ptr noundef nonnull @.str.66, i64 noundef 12) #10 ; 3 uses
  store i64 %i.nu, ptr @date__strptime_internal.rbimpl_id.65, align 8, !tbaa !12
  %.not.i1289 = icmp eq i64 %i.nu, 0
  br i1 %.not.i1289, label %.lr.ph.i1288, label %rbimpl_intern_const.exit1290, !llvm.loop !0

rbimpl_intern_const.exit1290:                     ; preds = %.lr.ph.i1288, %bb.cq
  %.lcssa.i1287 = phi i64 [ %.pr.i1285, %bb.cq ], [ %i.nu, %.lr.ph.i1288 ]
  %i.nv = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1287) #10
  %i.nw = load i64, ptr %i.h, align 8, !tbaa !12
  %.pr.i1291 = load i64, ptr @date__strptime_internal.rbimpl_id.67, align 8, !tbaa !12 ; 2 uses
  %.not4.i1292 = icmp eq i64 %.pr.i1291, 0
  br i1 %.not4.i1292, label %.lr.ph.i1294, label %rbimpl_intern_const.exit1296

.lr.ph.i1294:                                     ; preds = %rbimpl_intern_const.exit1290, %.lr.ph.i1294
  %i.nx = tail call i64 @rb_intern2(ptr noundef nonnull @.str.68, i64 noundef 2) #10 ; 3 uses
  store i64 %i.nx, ptr @date__strptime_internal.rbimpl_id.67, align 8, !tbaa !12
  %.not.i1295 = icmp eq i64 %i.nx, 0
  br i1 %.not.i1295, label %.lr.ph.i1294, label %rbimpl_intern_const.exit1296, !llvm.loop !0

rbimpl_intern_const.exit1296:                     ; preds = %.lr.ph.i1294, %rbimpl_intern_const.exit1290
  %.lcssa.i1293 = phi i64 [ %.pr.i1291, %rbimpl_intern_const.exit1290 ], [ %i.nx, %.lr.ph.i1294 ]
  %i.ny = icmp ult i64 %.pn1768, 4611686018427387904
  br i1 %i.ny, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %rbimpl_intern_const.exit1296
  %i.nz = shl nuw nsw i64 %.pn1768, 1
  %i.oa = or disjoint i64 %i.nz, 1
  br label %bb.ct

bb.cs:                                            ; preds = %rbimpl_intern_const.exit1296
  %i.ob = tail call i64 @rb_uint2big(i64 noundef %.pn1768) #10
  br label %bb.ct

.thread1705:                                      ; preds = %.lr.ph.i1276, %.thread1702, %5, %bb.cn
  %.lcssa.i1275.sink = phi i64 [ %6, %.thread1702 ], [ %.pr.i1273, %bb.cn ], [ %.pr.i1279, %5 ], [ %i.nn, %.lr.ph.i1276 ]
  %i.oc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1275.sink) #10
  %i.od = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.oc, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %.thread1719

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0.i1297 = phi i64 [ %i.oa, %bb.cr ], [ %i.ob, %bb.cs ]
  %i.oe = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 21, i64 noundef %.lcssa.i1293, i32 noundef 1, i64 noundef %.0.i1297) #10
  %i.of = tail call i64 @rb_rational_new(i64 noundef %i.nw, i64 noundef %i.oe) #10
  %i.og = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.nv, i64 noundef %i.of) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %bb.gn

bb.cu:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.oi = sub nuw i64 %1, %.07661990
  %i.oj = call fastcc i64 @read_digits(ptr noundef %i.oh, i64 noundef %i.oi, ptr noundef %i.i, i64 noundef 2) ; 2 uses
  %.not987 = icmp eq i64 %i.oj, 0
  br i1 %.not987, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.pr.i1298 = load i64, ptr @date__strptime_internal.rbimpl_id.69, align 8, !tbaa !12 ; 2 uses
  %.not4.i1299 = icmp eq i64 %.pr.i1298, 0
  br i1 %.not4.i1299, label %.lr.ph.i1301, label %.thread1708

.lr.ph.i1301:                                     ; preds = %bb.cv, %.lr.ph.i1301
  %i.ok = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.ok, ptr @date__strptime_internal.rbimpl_id.69, align 8, !tbaa !12
  %.not.i1302 = icmp eq i64 %i.ok, 0
  br i1 %.not.i1302, label %.lr.ph.i1301, label %.thread1708, !llvm.loop !0

bb.cw:                                            ; preds = %bb.cu
  %i.ol = add i64 %i.oj, %.07661990
  %i.om = load i64, ptr %i.i, align 8, !tbaa !12  ; 5 uses
  %i.on = trunc i64 %i.om to i1
  br i1 %i.on, label %.split2383, label %bb.cx

.split2383:                                       ; preds = %bb.cw
  %i.oo = tail call i64 @rb_fix2int(i64 noundef %i.om) #10
  %i.op = trunc i64 %i.oo to i32
  %.not13.i1307 = icmp ult i32 %i.op, 60
  br i1 %.not13.i1307, label %.critedge1032, label %valid_range_p.exit1308.thread

bb.cx:                                            ; preds = %bb.cw
  %i.oq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.om, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1304 = icmp eq i64 %i.oq, 0
  br i1 %.not.i1304, label %valid_range_p.exit1308, label %valid_range_p.exit1308.thread

valid_range_p.exit1308:                           ; preds = %bb.cx
  %i.or = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.om, i64 noundef 62, i32 noundef 1, i64 noundef 119) #10
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %.critedge1032, label %valid_range_p.exit1308.thread

valid_range_p.exit1308.thread:                    ; preds = %bb.cx, %.split2383, %valid_range_p.exit1308
  %i.ot = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.70, ptr noundef @.str.2) #13
  br label %.thread1708

.critedge1032:                                    ; preds = %.split2383, %valid_range_p.exit1308
  %.pr.i1309 = load i64, ptr @date__strptime_internal.rbimpl_id.71, align 8, !tbaa !12 ; 2 uses
  %.not4.i1310 = icmp eq i64 %.pr.i1309, 0
  br i1 %.not4.i1310, label %.lr.ph.i1312, label %rbimpl_intern_const.exit1314

.lr.ph.i1312:                                     ; preds = %.critedge1032, %.lr.ph.i1312
  %i.ou = tail call i64 @rb_intern2(ptr noundef nonnull @.str.72, i64 noundef 3) #10 ; 3 uses
  store i64 %i.ou, ptr @date__strptime_internal.rbimpl_id.71, align 8, !tbaa !12
  %.not.i1313 = icmp eq i64 %i.ou, 0
  br i1 %.not.i1313, label %.lr.ph.i1312, label %rbimpl_intern_const.exit1314, !llvm.loop !0

rbimpl_intern_const.exit1314:                     ; preds = %.lr.ph.i1312, %.critedge1032
  %.lcssa.i1311 = phi i64 [ %.pr.i1309, %.critedge1032 ], [ %i.ou, %.lr.ph.i1312 ]
  %i.ov = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1311) #10
  %i.ow = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.ov, i64 noundef %i.om) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %bb.gn

.thread1708:                                      ; preds = %.lr.ph.i1301, %bb.cv, %valid_range_p.exit1308.thread
  %.lcssa.i1300.sink = phi i64 [ %i.ot, %valid_range_p.exit1308.thread ], [ %.pr.i1298, %bb.cv ], [ %i.ok, %.lr.ph.i1301 ]
  %i.ox = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1300.sink) #10
  %i.oy = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.ox, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %.thread1719

bb.cy:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.pa = sub nuw i64 %1, %.07661990
  %i.pb = call fastcc i64 @read_digits(ptr noundef %i.oz, i64 noundef %i.pa, ptr noundef %i.j, i64 noundef 2) ; 2 uses
  %.not985 = icmp eq i64 %i.pb, 0
  br i1 %.not985, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.pr.i1315 = load i64, ptr @date__strptime_internal.rbimpl_id.73, align 8, !tbaa !12 ; 2 uses
  %.not4.i1316 = icmp eq i64 %.pr.i1315, 0
  br i1 %.not4.i1316, label %.lr.ph.i1318, label %.thread1713

.lr.ph.i1318:                                     ; preds = %bb.cz, %.lr.ph.i1318
  %i.pc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.pc, ptr @date__strptime_internal.rbimpl_id.73, align 8, !tbaa !12
  %.not.i1319 = icmp eq i64 %i.pc, 0
  br i1 %.not.i1319, label %.lr.ph.i1318, label %.thread1713, !llvm.loop !0

bb.da:                                            ; preds = %bb.cy
  %i.pd = add i64 %i.pb, %.07661990
  %i.pe = load i64, ptr %i.j, align 8, !tbaa !12  ; 5 uses
  %i.pf = trunc i64 %i.pe to i1
  br i1 %i.pf, label %.split2384, label %bb.db

.split2384:                                       ; preds = %bb.da
  %i.pg = tail call i64 @rb_fix2int(i64 noundef %i.pe) #10
  %i.ph = trunc i64 %i.pg to i32
  %i.pi = add i32 %i.ph, -1
  %.not13.i1324 = icmp ult i32 %i.pi, 12
  br i1 %.not13.i1324, label %.critedge1034, label %valid_range_p.exit1325.thread

bb.db:                                            ; preds = %bb.da
  %i.pj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.pe, i64 noundef 60, i32 noundef 1, i64 noundef 3) #10
  %.not.i1321 = icmp eq i64 %i.pj, 0
  br i1 %.not.i1321, label %valid_range_p.exit1325, label %valid_range_p.exit1325.thread

valid_range_p.exit1325:                           ; preds = %bb.db
  %i.pk = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.pe, i64 noundef 62, i32 noundef 1, i64 noundef 25) #10
  %i.pl = icmp eq i64 %i.pk, 0
  br i1 %i.pl, label %.critedge1034, label %valid_range_p.exit1325.thread

valid_range_p.exit1325.thread:                    ; preds = %bb.db, %.split2384, %valid_range_p.exit1325
  %i.pm = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.74, ptr noundef @.str.2) #13
  br label %.thread1713

.critedge1034:                                    ; preds = %.split2384, %valid_range_p.exit1325
  %.pr.i1326 = load i64, ptr @date__strptime_internal.rbimpl_id.75, align 8, !tbaa !12 ; 2 uses
  %.not4.i1327 = icmp eq i64 %.pr.i1326, 0
  br i1 %.not4.i1327, label %.lr.ph.i1329, label %rbimpl_intern_const.exit1331

.lr.ph.i1329:                                     ; preds = %.critedge1034, %.lr.ph.i1329
  %i.pn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.23, i64 noundef 3) #10 ; 3 uses
  store i64 %i.pn, ptr @date__strptime_internal.rbimpl_id.75, align 8, !tbaa !12
  %.not.i1330 = icmp eq i64 %i.pn, 0
  br i1 %.not.i1330, label %.lr.ph.i1329, label %rbimpl_intern_const.exit1331, !llvm.loop !0

rbimpl_intern_const.exit1331:                     ; preds = %.lr.ph.i1329, %.critedge1034
  %.lcssa.i1328 = phi i64 [ %.pr.i1326, %.critedge1034 ], [ %i.pn, %.lr.ph.i1329 ]
  %i.po = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1328) #10
  %i.pp = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.po, i64 noundef %i.pe) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %bb.gn

.thread1713:                                      ; preds = %.lr.ph.i1318, %bb.cz, %valid_range_p.exit1325.thread
  %.lcssa.i1317.sink = phi i64 [ %i.pm, %valid_range_p.exit1325.thread ], [ %.pr.i1315, %bb.cz ], [ %i.pc, %.lr.ph.i1318 ]
  %i.pq = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1317.sink) #10
  %i.pr = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.pq, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %.thread1719

bb.dc:                                            ; preds = %.preheader1784, %.preheader1784
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.pt = sub nuw i64 %1, %.07661990
  %i.pu = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.ps, i64 noundef %i.pt, ptr noundef nonnull @.str.76, i64 noundef 1, i64 noundef %4)
  %.pr.i1332 = load i64, ptr @date__strptime_internal.rbimpl_id.77, align 8, !tbaa !12 ; 2 uses
  %.not4.i1333 = icmp eq i64 %.pr.i1332, 0
  br i1 %.not4.i1333, label %.lr.ph.i1335, label %rbimpl_intern_const.exit1337

.lr.ph.i1335:                                     ; preds = %bb.dc, %.lr.ph.i1335
  %i.pv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.pv, ptr @date__strptime_internal.rbimpl_id.77, align 8, !tbaa !12
  %.not.i1336 = icmp eq i64 %i.pv, 0
  br i1 %.not.i1336, label %.lr.ph.i1335, label %rbimpl_intern_const.exit1337, !llvm.loop !0

rbimpl_intern_const.exit1337:                     ; preds = %.lr.ph.i1335, %bb.dc
  %.lcssa.i1334 = phi i64 [ %.pr.i1332, %bb.dc ], [ %i.pv, %.lr.ph.i1335 ]
  %i.pw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1334) #10
  %i.px = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.pw) #10
  %i.py = icmp eq i64 %i.px, 4
  %i.pz = add i64 %i.pu, %.07661990
  br i1 %i.py, label %bb.gn, label %.thread1719

bb.dd:                                            ; preds = %.preheader1784, %.preheader1784
  %i.qa = sub nuw i64 %1, %.07661990              ; 2 uses
  %i.qb = icmp ult i64 %i.qa, 2
  br i1 %i.qb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qc = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.78, ptr noundef @.str.2) #13
  %i.qd = tail call i64 @rb_id2sym(i64 noundef %i.qc) #10
  %i.qe = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.qd, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.df:                                            ; preds = %bb.dd
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990 ; 3 uses
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !14  ; 2 uses
  %i.qh = and i8 %i.qg, -33
  %i.qi = icmp eq i8 %i.qh, 80
  switch i8 %i.qg, label %bb.dg [
    i8 112, label %bb.dh
    i8 97, label %bb.dh
    i8 80, label %bb.dh
    i8 65, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %.pr.i1338 = load i64, ptr @date__strptime_internal.rbimpl_id.79, align 8, !tbaa !12 ; 2 uses
  %.not4.i1339 = icmp eq i64 %.pr.i1338, 0
  br i1 %.not4.i1339, label %.lr.ph.i1341, label %rbimpl_intern_const.exit1343

.lr.ph.i1341:                                     ; preds = %bb.dg, %.lr.ph.i1341
  %i.qj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.qj, ptr @date__strptime_internal.rbimpl_id.79, align 8, !tbaa !12
  %.not.i1342 = icmp eq i64 %i.qj, 0
  br i1 %.not.i1342, label %.lr.ph.i1341, label %rbimpl_intern_const.exit1343, !llvm.loop !0

rbimpl_intern_const.exit1343:                     ; preds = %.lr.ph.i1341, %bb.dg
  %.lcssa.i1340 = phi i64 [ %.pr.i1338, %bb.dg ], [ %i.qj, %.lr.ph.i1341 ]
  %i.qk = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1340) #10
  %i.ql = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.qk, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.dh:                                            ; preds = %bb.df, %bb.df, %bb.df, %bb.df
  %i.qm = getelementptr i8, ptr %i.qf, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !14  ; 2 uses
  %i.qo = icmp eq i8 %i.qn, 46
  br i1 %i.qo, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.qp = icmp ult i64 %i.qa, 4
  br i1 %i.qp, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qq = getelementptr i8, ptr %i.qf, i64 3
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !14
  %.not984 = icmp eq i8 %i.qr, 46
  br i1 %.not984, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %.pr.i1344 = load i64, ptr @date__strptime_internal.rbimpl_id.80, align 8, !tbaa !12 ; 2 uses
  %.not4.i1345 = icmp eq i64 %.pr.i1344, 0
  br i1 %.not4.i1345, label %.lr.ph.i1347, label %rbimpl_intern_const.exit1349

.lr.ph.i1347:                                     ; preds = %bb.dk, %.lr.ph.i1347
  %i.qs = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.qs, ptr @date__strptime_internal.rbimpl_id.80, align 8, !tbaa !12
  %.not.i1348 = icmp eq i64 %i.qs, 0
  br i1 %.not.i1348, label %.lr.ph.i1347, label %rbimpl_intern_const.exit1349, !llvm.loop !0

rbimpl_intern_const.exit1349:                     ; preds = %.lr.ph.i1347, %bb.dk
  %.lcssa.i1346 = phi i64 [ %.pr.i1344, %bb.dk ], [ %i.qs, %.lr.ph.i1347 ]
  %i.qt = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1346) #10
  %i.qu = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.qt, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.dl:                                            ; preds = %bb.dj
  %i.qv = add i64 %.07661990, 2                   ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !14
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dh
  %.0919 = phi i8 [ %i.qx, %bb.dl ], [ %i.qn, %bb.dh ]
  %.43809 = phi i64 [ %i.qv, %bb.dl ], [ %.07661990, %bb.dh ]
  %i.qy = and i8 %.0919, -33
  %or.cond71 = icmp eq i8 %i.qy, 77
  br i1 %or.cond71, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.pr.i1350 = load i64, ptr @date__strptime_internal.rbimpl_id.81, align 8, !tbaa !12 ; 2 uses
  %.not4.i1351 = icmp eq i64 %.pr.i1350, 0
  br i1 %.not4.i1351, label %.lr.ph.i1353, label %rbimpl_intern_const.exit1355

.lr.ph.i1353:                                     ; preds = %bb.dn, %.lr.ph.i1353
  %i.qz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.qz, ptr @date__strptime_internal.rbimpl_id.81, align 8, !tbaa !12
  %.not.i1354 = icmp eq i64 %i.qz, 0
  br i1 %.not.i1354, label %.lr.ph.i1353, label %rbimpl_intern_const.exit1355, !llvm.loop !0

rbimpl_intern_const.exit1355:                     ; preds = %.lr.ph.i1353, %bb.dn
  %.lcssa.i1352 = phi i64 [ %.pr.i1350, %bb.dn ], [ %i.qz, %.lr.ph.i1353 ]
  %i.ra = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1352) #10
  %i.rb = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.ra, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.do:                                            ; preds = %bb.dm
  %i.rc = add i64 %.43809, 2
  %.pr.i1356 = load i64, ptr @date__strptime_internal.rbimpl_id.82, align 8, !tbaa !12 ; 2 uses
  %.not4.i1357 = icmp eq i64 %.pr.i1356, 0
  br i1 %.not4.i1357, label %.lr.ph.i1359, label %.loopexit1781

.lr.ph.i1359:                                     ; preds = %bb.do, %.lr.ph.i1359
  %i.rd = tail call i64 @rb_intern2(ptr noundef nonnull @.str.12, i64 noundef 6) #10 ; 3 uses
  store i64 %i.rd, ptr @date__strptime_internal.rbimpl_id.82, align 8, !tbaa !12
  %.not.i1360 = icmp eq i64 %i.rd, 0
  br i1 %.not.i1360, label %.lr.ph.i1359, label %.loopexit1781, !llvm.loop !0

.loopexit1781:                                    ; preds = %.lr.ph.i1359, %bb.do
  %.lcssa.i1358 = phi i64 [ %.pr.i1356, %bb.do ], [ %i.rd, %.lr.ph.i1359 ]
  %i.re = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1358) #10
  %i.rf = select i1 %i.qi, i64 25, i64 1
  %i.rg = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.re, i64 noundef %i.rf) #10 ; 0 uses
  br label %bb.gn

bb.dp:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !14
  %i.rj = icmp eq i8 %i.ri, 45                    ; 2 uses
  %i.rk = zext i1 %i.rj to i64
  %spec.select = add i64 %.07661990, %i.rk        ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  %i.rm = sub i64 %1, %spec.select
  %i.rn = call fastcc i64 @read_digits(ptr noundef %i.rl, i64 noundef %i.rm, ptr noundef %i.k, i64 noundef 9223372036854775807) ; 2 uses
  %.not983.not = icmp eq i64 %i.rn, 0
  br i1 %.not983.not, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %.pr.i1362 = load i64, ptr @date__strptime_internal.rbimpl_id.83, align 8, !tbaa !12 ; 2 uses
  %.not4.i1363 = icmp eq i64 %.pr.i1362, 0
  br i1 %.not4.i1363, label %.lr.ph.i1365, label %.critedge1036

.lr.ph.i1365:                                     ; preds = %bb.dq, %.lr.ph.i1365
  %i.ro = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.ro, ptr @date__strptime_internal.rbimpl_id.83, align 8, !tbaa !12
  %.not.i1366 = icmp eq i64 %i.ro, 0
  br i1 %.not.i1366, label %.lr.ph.i1365, label %.critedge1036, !llvm.loop !0

bb.dr:                                            ; preds = %bb.dp
  %i.rp = add i64 %spec.select, %i.rn
  br i1 %i.rj, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.rq = load i64, ptr %i.k, align 8, !tbaa !12
  %.pr.i1368 = load i64, ptr @date__strptime_internal.rbimpl_id.84, align 8, !tbaa !12 ; 2 uses
  %.not4.i1369 = icmp eq i64 %.pr.i1368, 0
  br i1 %.not4.i1369, label %.lr.ph.i1371, label %rbimpl_intern_const.exit1373

.lr.ph.i1371:                                     ; preds = %bb.ds, %.lr.ph.i1371
  %i.rr = tail call i64 @rb_intern2(ptr noundef nonnull @.str.64, i64 noundef 2) #10 ; 3 uses
  store i64 %i.rr, ptr @date__strptime_internal.rbimpl_id.84, align 8, !tbaa !12
  %.not.i1372 = icmp eq i64 %i.rr, 0
  br i1 %.not.i1372, label %.lr.ph.i1371, label %rbimpl_intern_const.exit1373, !llvm.loop !0

rbimpl_intern_const.exit1373:                     ; preds = %.lr.ph.i1371, %bb.ds
  %.lcssa.i1370.a = phi i64 [ %.pr.i1368, %bb.ds ], [ %i.rr, %.lr.ph.i1371 ]
  %i.rs = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.rq, i64 noundef %.lcssa.i1370.a, i32 noundef 0) #10
  store i64 %i.rs, ptr %i.k, align 8, !tbaa !12
  br label %bb.dt

bb.dt:                                            ; preds = %rbimpl_intern_const.exit1373, %bb.dr
  %.pr.i1374 = load i64, ptr @date__strptime_internal.rbimpl_id.85, align 8, !tbaa !12 ; 2 uses
  %.not4.i1375 = icmp eq i64 %.pr.i1374, 0
  br i1 %.not4.i1375, label %.lr.ph.i1377, label %rbimpl_intern_const.exit1379

.lr.ph.i1377:                                     ; preds = %bb.dt, %.lr.ph.i1377
  %i.rt = tail call i64 @rb_intern2(ptr noundef nonnull @.str.86, i64 noundef 7) #10 ; 3 uses
  store i64 %i.rt, ptr @date__strptime_internal.rbimpl_id.85, align 8, !tbaa !12
  %.not.i1378 = icmp eq i64 %i.rt, 0
  br i1 %.not.i1378, label %.lr.ph.i1377, label %rbimpl_intern_const.exit1379, !llvm.loop !0

rbimpl_intern_const.exit1379:                     ; preds = %.lr.ph.i1377, %bb.dt
  %.lcssa.i1376 = phi i64 [ %.pr.i1374, %bb.dt ], [ %i.rt, %.lr.ph.i1377 ]
  %i.ru = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1376) #10
  %i.rv = load i64, ptr %i.k, align 8, !tbaa !12
  %i.rw = tail call i64 @rb_rational_new(i64 noundef %i.rv, i64 noundef 2001) #10
  %i.rx = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.ru, i64 noundef %i.rw) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %bb.gn

bb.du:                                            ; preds = %.preheader1784
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.rz = sub nuw i64 %1, %.07661990
  %i.sa = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.ry, i64 noundef %i.rz, ptr noundef nonnull @.str.87, i64 noundef 5, i64 noundef %4)
  %.pr.i1380 = load i64, ptr @date__strptime_internal.rbimpl_id.88, align 8, !tbaa !12 ; 2 uses
  %.not4.i1381 = icmp eq i64 %.pr.i1380, 0
  br i1 %.not4.i1381, label %.lr.ph.i1383, label %rbimpl_intern_const.exit1385

.lr.ph.i1383:                                     ; preds = %bb.du, %.lr.ph.i1383
  %i.sb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.sb, ptr @date__strptime_internal.rbimpl_id.88, align 8, !tbaa !12
  %.not.i1384 = icmp eq i64 %i.sb, 0
  br i1 %.not.i1384, label %.lr.ph.i1383, label %rbimpl_intern_const.exit1385, !llvm.loop !0

rbimpl_intern_const.exit1385:                     ; preds = %.lr.ph.i1383, %bb.du
  %.lcssa.i1382 = phi i64 [ %.pr.i1380, %bb.du ], [ %i.sb, %.lr.ph.i1383 ]
  %i.sc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1382) #10
  %i.sd = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.sc) #10
  %i.se = icmp eq i64 %i.sd, 4
  %i.sf = add i64 %i.sa, %.07661990
  br i1 %i.se, label %bb.gn, label %.thread1719

bb.dv:                                            ; preds = %.preheader1784
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.sh = sub nuw i64 %1, %.07661990
  %i.si = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.sg, i64 noundef %i.sh, ptr noundef nonnull @.str.89, i64 noundef 11, i64 noundef %4)
  %.pr.i1386 = load i64, ptr @date__strptime_internal.rbimpl_id.90, align 8, !tbaa !12 ; 2 uses
  %.not4.i1387 = icmp eq i64 %.pr.i1386, 0
  br i1 %.not4.i1387, label %.lr.ph.i1389, label %rbimpl_intern_const.exit1391

.lr.ph.i1389:                                     ; preds = %bb.dv, %.lr.ph.i1389
  %i.sj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.sj, ptr @date__strptime_internal.rbimpl_id.90, align 8, !tbaa !12
  %.not.i1390 = icmp eq i64 %i.sj, 0
  br i1 %.not.i1390, label %.lr.ph.i1389, label %rbimpl_intern_const.exit1391, !llvm.loop !0

rbimpl_intern_const.exit1391:                     ; preds = %.lr.ph.i1389, %bb.dv
  %.lcssa.i1388 = phi i64 [ %.pr.i1386, %bb.dv ], [ %i.sj, %.lr.ph.i1389 ]
  %i.sk = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1388) #10
  %i.sl = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.sk) #10
  %i.sm = icmp eq i64 %i.sl, 4
  %i.sn = add i64 %i.si, %.07661990
  br i1 %i.sm, label %bb.gn, label %.thread1719

bb.dw:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.sp = sub nuw i64 %1, %.07661990
  %i.sq = call fastcc i64 @read_digits(ptr noundef %i.so, i64 noundef %i.sp, ptr noundef %i.l, i64 noundef 2) ; 2 uses
  %.not981 = icmp eq i64 %i.sq, 0
  br i1 %.not981, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %.pr.i1392 = load i64, ptr @date__strptime_internal.rbimpl_id.91, align 8, !tbaa !12 ; 2 uses
  %.not4.i1393 = icmp eq i64 %.pr.i1392, 0
  br i1 %.not4.i1393, label %.lr.ph.i1395, label %.thread1724

.lr.ph.i1395:                                     ; preds = %bb.dx, %.lr.ph.i1395
  %i.sr = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.sr, ptr @date__strptime_internal.rbimpl_id.91, align 8, !tbaa !12
  %.not.i1396 = icmp eq i64 %i.sr, 0
  br i1 %.not.i1396, label %.lr.ph.i1395, label %.thread1724, !llvm.loop !0

bb.dy:                                            ; preds = %bb.dw
  %i.ss = add i64 %i.sq, %.07661990
  %i.st = load i64, ptr %i.l, align 8, !tbaa !12  ; 5 uses
  %i.su = trunc i64 %i.st to i1
  br i1 %i.su, label %.split2385, label %bb.dz

.split2385:                                       ; preds = %bb.dy
  %i.sv = tail call i64 @rb_fix2int(i64 noundef %i.st) #10
  %i.sw = trunc i64 %i.sv to i32
  %.not13.i1401 = icmp ult i32 %i.sw, 61
  br i1 %.not13.i1401, label %.critedge1038, label %valid_range_p.exit1402.thread

bb.dz:                                            ; preds = %bb.dy
  %i.sx = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.st, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1398 = icmp eq i64 %i.sx, 0
  br i1 %.not.i1398, label %valid_range_p.exit1402, label %valid_range_p.exit1402.thread

valid_range_p.exit1402:                           ; preds = %bb.dz
  %i.sy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.st, i64 noundef 62, i32 noundef 1, i64 noundef 121) #10
  %i.sz = icmp eq i64 %i.sy, 0
  br i1 %i.sz, label %.critedge1038, label %valid_range_p.exit1402.thread

valid_range_p.exit1402.thread:                    ; preds = %bb.dz, %.split2385, %valid_range_p.exit1402
  %i.ta = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.92, ptr noundef @.str.2) #13
  br label %.thread1724

.critedge1038:                                    ; preds = %.split2385, %valid_range_p.exit1402
  %.pr.i1403 = load i64, ptr @date__strptime_internal.rbimpl_id.93, align 8, !tbaa !12 ; 2 uses
  %.not4.i1404 = icmp eq i64 %.pr.i1403, 0
  br i1 %.not4.i1404, label %.lr.ph.i1406, label %rbimpl_intern_const.exit1408

.lr.ph.i1406:                                     ; preds = %.critedge1038, %.lr.ph.i1406
  %i.tb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.94, i64 noundef 3) #10 ; 3 uses
  store i64 %i.tb, ptr @date__strptime_internal.rbimpl_id.93, align 8, !tbaa !12
  %.not.i1407 = icmp eq i64 %i.tb, 0
  br i1 %.not.i1407, label %.lr.ph.i1406, label %rbimpl_intern_const.exit1408, !llvm.loop !0

rbimpl_intern_const.exit1408:                     ; preds = %.lr.ph.i1406, %.critedge1038
  %.lcssa.i1405 = phi i64 [ %.pr.i1403, %.critedge1038 ], [ %i.tb, %.lr.ph.i1406 ]
  %i.tc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1405) #10
  %i.td = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.tc, i64 noundef %i.st) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %bb.gn

.thread1724:                                      ; preds = %.lr.ph.i1395, %bb.dx, %valid_range_p.exit1402.thread
  %.lcssa.i1394.sink = phi i64 [ %i.ta, %valid_range_p.exit1402.thread ], [ %.pr.i1392, %bb.dx ], [ %i.sr, %.lr.ph.i1395 ]
  %i.te = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1394.sink) #10
  %i.tf = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.te, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %.thread1719

bb.ea:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !14
  %i.ti = icmp eq i8 %i.th, 45                    ; 2 uses
  %i.tj = zext i1 %i.ti to i64
  %spec.select1039 = add i64 %.07661990, %i.tj    ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select1039
  %i.tl = sub i64 %1, %spec.select1039
  %i.tm = call fastcc i64 @read_digits(ptr noundef %i.tk, i64 noundef %i.tl, ptr noundef %i.m, i64 noundef 9223372036854775807) ; 2 uses
  %.not980.not = icmp eq i64 %i.tm, 0
  br i1 %.not980.not, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %.pr.i1409 = load i64, ptr @date__strptime_internal.rbimpl_id.95, align 8, !tbaa !12 ; 2 uses
  %.not4.i1410 = icmp eq i64 %.pr.i1409, 0
  br i1 %.not4.i1410, label %.lr.ph.i1412, label %.critedge1041

.lr.ph.i1412:                                     ; preds = %bb.eb, %.lr.ph.i1412
  %i.tn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.tn, ptr @date__strptime_internal.rbimpl_id.95, align 8, !tbaa !12
  %.not.i1413 = icmp eq i64 %i.tn, 0
  br i1 %.not.i1413, label %.lr.ph.i1412, label %.critedge1041, !llvm.loop !0

bb.ec:                                            ; preds = %bb.ea
  %i.to = add i64 %spec.select1039, %i.tm
  br i1 %i.ti, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.tp = load i64, ptr %i.m, align 8, !tbaa !12
  %.pr.i1415 = load i64, ptr @date__strptime_internal.rbimpl_id.96, align 8, !tbaa !12 ; 2 uses
  %.not4.i1416 = icmp eq i64 %.pr.i1415, 0
  br i1 %.not4.i1416, label %.lr.ph.i1418, label %rbimpl_intern_const.exit1420

.lr.ph.i1418:                                     ; preds = %bb.ed, %.lr.ph.i1418
  %i.tq = tail call i64 @rb_intern2(ptr noundef nonnull @.str.64, i64 noundef 2) #10 ; 3 uses
  store i64 %i.tq, ptr @date__strptime_internal.rbimpl_id.96, align 8, !tbaa !12
  %.not.i1419 = icmp eq i64 %i.tq, 0
  br i1 %.not.i1419, label %.lr.ph.i1418, label %rbimpl_intern_const.exit1420, !llvm.loop !0

rbimpl_intern_const.exit1420:                     ; preds = %.lr.ph.i1418, %bb.ed
  %.lcssa.i1417.a = phi i64 [ %.pr.i1415, %bb.ed ], [ %i.tq, %.lr.ph.i1418 ]
  %i.tr = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.tp, i64 noundef %.lcssa.i1417.a, i32 noundef 0) #10
  store i64 %i.tr, ptr %i.m, align 8, !tbaa !12
  br label %bb.ee

bb.ee:                                            ; preds = %rbimpl_intern_const.exit1420, %bb.ec
  %.pr.i1421 = load i64, ptr @date__strptime_internal.rbimpl_id.97, align 8, !tbaa !12 ; 2 uses
  %.not4.i1422 = icmp eq i64 %.pr.i1421, 0
  br i1 %.not4.i1422, label %.lr.ph.i1424, label %rbimpl_intern_const.exit1426

.lr.ph.i1424:                                     ; preds = %bb.ee, %.lr.ph.i1424
  %i.ts = tail call i64 @rb_intern2(ptr noundef nonnull @.str.86, i64 noundef 7) #10 ; 3 uses
  store i64 %i.ts, ptr @date__strptime_internal.rbimpl_id.97, align 8, !tbaa !12
  %.not.i1425 = icmp eq i64 %i.ts, 0
  br i1 %.not.i1425, label %.lr.ph.i1424, label %rbimpl_intern_const.exit1426, !llvm.loop !0

rbimpl_intern_const.exit1426:                     ; preds = %.lr.ph.i1424, %bb.ee
  %.lcssa.i1423 = phi i64 [ %.pr.i1421, %bb.ee ], [ %i.ts, %.lr.ph.i1424 ]
  %i.tt = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1423) #10
  %i.tu = load i64, ptr %i.m, align 8, !tbaa !12
  %i.tv = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.tt, i64 noundef %i.tu) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %bb.gn

bb.ef:                                            ; preds = %.preheader1784
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.tx = sub nuw i64 %1, %.07661990
  %i.ty = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.tw, i64 noundef %i.tx, ptr noundef nonnull @.str.98, i64 noundef 8, i64 noundef %4)
  %.pr.i1427 = load i64, ptr @date__strptime_internal.rbimpl_id.99, align 8, !tbaa !12 ; 2 uses
  %.not4.i1428 = icmp eq i64 %.pr.i1427, 0
  br i1 %.not4.i1428, label %.lr.ph.i1430, label %rbimpl_intern_const.exit1432

.lr.ph.i1430:                                     ; preds = %bb.ef, %.lr.ph.i1430
  %i.tz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.tz, ptr @date__strptime_internal.rbimpl_id.99, align 8, !tbaa !12
  %.not.i1431 = icmp eq i64 %i.tz, 0
  br i1 %.not.i1431, label %.lr.ph.i1430, label %rbimpl_intern_const.exit1432, !llvm.loop !0

rbimpl_intern_const.exit1432:                     ; preds = %.lr.ph.i1430, %bb.ef
  %.lcssa.i1429 = phi i64 [ %.pr.i1427, %bb.ef ], [ %i.tz, %.lr.ph.i1430 ]
  %i.ua = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1429) #10
  %i.ub = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.ua) #10
  %i.uc = icmp eq i64 %i.ub, 4
  %i.ud = add i64 %i.ty, %.07661990
  br i1 %i.uc, label %bb.gn, label %.thread1719

bb.eg:                                            ; preds = %.preheader1784, %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.uf = sub nuw i64 %1, %.07661990
  %i.ug = call fastcc i64 @read_digits(ptr noundef %i.ue, i64 noundef %i.uf, ptr noundef %i.n, i64 noundef 2) ; 2 uses
  %.not978 = icmp eq i64 %i.ug, 0
  br i1 %.not978, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %.pr.i1433 = load i64, ptr @date__strptime_internal.rbimpl_id.100, align 8, !tbaa !12 ; 2 uses
  %.not4.i1434 = icmp eq i64 %.pr.i1433, 0
  br i1 %.not4.i1434, label %.lr.ph.i1436, label %.thread1731.a

.lr.ph.i1436:                                     ; preds = %bb.eh, %.lr.ph.i1436
  %i.uh = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.uh, ptr @date__strptime_internal.rbimpl_id.100, align 8, !tbaa !12
  %.not.i1437 = icmp eq i64 %i.uh, 0
  br i1 %.not.i1437, label %.lr.ph.i1436, label %.thread1731.a, !llvm.loop !0

bb.ei:                                            ; preds = %bb.eg
  %i.ui = add i64 %i.ug, %.07661990
  %i.uj = load i64, ptr %i.n, align 8, !tbaa !12  ; 5 uses
  %i.uk = trunc i64 %i.uj to i1
  br i1 %i.uk, label %.split2386, label %bb.ej

.split2386:                                       ; preds = %bb.ei
  %i.ul = tail call i64 @rb_fix2int(i64 noundef %i.uj) #10
  %i.um = trunc i64 %i.ul to i32
  %.not13.i1442 = icmp ult i32 %i.um, 54
  br i1 %.not13.i1442, label %.critedge1043, label %valid_range_p.exit1443.thread

bb.ej:                                            ; preds = %bb.ei
  %i.un = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.uj, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1439 = icmp eq i64 %i.un, 0
  br i1 %.not.i1439, label %valid_range_p.exit1443, label %valid_range_p.exit1443.thread

valid_range_p.exit1443:                           ; preds = %bb.ej
  %i.uo = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.uj, i64 noundef 62, i32 noundef 1, i64 noundef 107) #10
  %i.up = icmp eq i64 %i.uo, 0
  br i1 %i.up, label %.critedge1043, label %valid_range_p.exit1443.thread

valid_range_p.exit1443.thread:                    ; preds = %bb.ej, %.split2386, %valid_range_p.exit1443
  %i.uq = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.101, ptr noundef @.str.2) #13
  br label %.thread1731.a

.critedge1043:                                    ; preds = %.split2386, %valid_range_p.exit1443
  %i.ur = icmp eq i8 %i.az, 85
  %i.us = select i1 %i.ur, ptr @.str.103, ptr @.str.104
  %i.ut = tail call i64 @rb_intern(ptr noundef nonnull %i.us) #10
  %i.uu = tail call i64 @rb_id2sym(i64 noundef %i.ut) #10
  %i.uv = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.uu, i64 noundef %i.uj) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  br label %bb.gn

.thread1731.a:                                    ; preds = %.lr.ph.i1436, %bb.eh, %valid_range_p.exit1443.thread
  %.lcssa.i1435.sink = phi i64 [ %i.uq, %valid_range_p.exit1443.thread ], [ %.pr.i1433, %bb.eh ], [ %i.uh, %.lr.ph.i1436 ]
  %i.uw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1435.sink) #10
  %i.ux = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.uw, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  br label %.thread1719

bb.ek:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.uz = sub nuw i64 %1, %.07661990
  %i.va = call fastcc i64 @read_digits(ptr noundef %i.uy, i64 noundef %i.uz, ptr noundef %i.o, i64 noundef 1) ; 2 uses
  %.not976 = icmp eq i64 %i.va, 0
  br i1 %.not976, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %.pr.i1444 = load i64, ptr @date__strptime_internal.rbimpl_id.105, align 8, !tbaa !12 ; 2 uses
  %.not4.i1445 = icmp eq i64 %.pr.i1444, 0
  br i1 %.not4.i1445, label %.lr.ph.i1447, label %.thread1736

.lr.ph.i1447:                                     ; preds = %bb.el, %.lr.ph.i1447
  %i.vb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.vb, ptr @date__strptime_internal.rbimpl_id.105, align 8, !tbaa !12
  %.not.i1448 = icmp eq i64 %i.vb, 0
  br i1 %.not.i1448, label %.lr.ph.i1447, label %.thread1736, !llvm.loop !0

bb.em:                                            ; preds = %bb.ek
  %i.vc = add i64 %i.va, %.07661990
  %i.vd = load i64, ptr %i.o, align 8, !tbaa !12  ; 5 uses
  %i.ve = trunc i64 %i.vd to i1
  br i1 %i.ve, label %.split2387, label %bb.en

.split2387:                                       ; preds = %bb.em
  %i.vf = tail call i64 @rb_fix2int(i64 noundef %i.vd) #10
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = add i32 %i.vg, -1
  %.not13.i1453 = icmp ult i32 %i.vh, 7
  br i1 %.not13.i1453, label %.critedge1045, label %valid_range_p.exit1454.thread

bb.en:                                            ; preds = %bb.em
  %i.vi = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.vd, i64 noundef 60, i32 noundef 1, i64 noundef 3) #10
  %.not.i1450 = icmp eq i64 %i.vi, 0
  br i1 %.not.i1450, label %valid_range_p.exit1454, label %valid_range_p.exit1454.thread

valid_range_p.exit1454:                           ; preds = %bb.en
  %i.vj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.vd, i64 noundef 62, i32 noundef 1, i64 noundef 15) #10
  %i.vk = icmp eq i64 %i.vj, 0
  br i1 %i.vk, label %.critedge1045, label %valid_range_p.exit1454.thread

valid_range_p.exit1454.thread:                    ; preds = %bb.en, %.split2387, %valid_range_p.exit1454
  %i.vl = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.106, ptr noundef @.str.2) #13
  br label %.thread1736

.critedge1045:                                    ; preds = %.split2387, %valid_range_p.exit1454
  %.pr.i1455 = load i64, ptr @date__strptime_internal.rbimpl_id.107, align 8, !tbaa !12 ; 2 uses
  %.not4.i1456 = icmp eq i64 %.pr.i1455, 0
  br i1 %.not4.i1456, label %.lr.ph.i1458, label %rbimpl_intern_const.exit1460

.lr.ph.i1458:                                     ; preds = %.critedge1045, %.lr.ph.i1458
  %i.vm = tail call i64 @rb_intern2(ptr noundef nonnull @.str.108, i64 noundef 5) #10 ; 3 uses
  store i64 %i.vm, ptr @date__strptime_internal.rbimpl_id.107, align 8, !tbaa !12
  %.not.i1459 = icmp eq i64 %i.vm, 0
  br i1 %.not.i1459, label %.lr.ph.i1458, label %rbimpl_intern_const.exit1460, !llvm.loop !0

rbimpl_intern_const.exit1460:                     ; preds = %.lr.ph.i1458, %.critedge1045
  %.lcssa.i1457 = phi i64 [ %.pr.i1455, %.critedge1045 ], [ %i.vm, %.lr.ph.i1458 ]
  %i.vn = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1457) #10
  %i.vo = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.vn, i64 noundef %i.vd) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %bb.gn

.thread1736:                                      ; preds = %.lr.ph.i1447, %bb.el, %valid_range_p.exit1454.thread
  %.lcssa.i1446.sink = phi i64 [ %i.vl, %valid_range_p.exit1454.thread ], [ %.pr.i1444, %bb.el ], [ %i.vb, %.lr.ph.i1447 ]
  %i.vp = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1446.sink) #10
  %i.vq = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.vp, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.thread1719

bb.eo:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.vs = sub nuw i64 %1, %.07661990
  %i.vt = call fastcc i64 @read_digits(ptr noundef %i.vr, i64 noundef %i.vs, ptr noundef %i.p, i64 noundef 2) ; 2 uses
  %.not974 = icmp eq i64 %i.vt, 0
  br i1 %.not974, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %.pr.i1461 = load i64, ptr @date__strptime_internal.rbimpl_id.109, align 8, !tbaa !12 ; 2 uses
  %.not4.i1462 = icmp eq i64 %.pr.i1461, 0
  br i1 %.not4.i1462, label %.lr.ph.i1464, label %.thread1741

.lr.ph.i1464:                                     ; preds = %bb.ep, %.lr.ph.i1464
  %i.vu = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.vu, ptr @date__strptime_internal.rbimpl_id.109, align 8, !tbaa !12
  %.not.i1465 = icmp eq i64 %i.vu, 0
  br i1 %.not.i1465, label %.lr.ph.i1464, label %.thread1741, !llvm.loop !0

bb.eq:                                            ; preds = %bb.eo
  %i.vv = add i64 %i.vt, %.07661990
  %i.vw = load i64, ptr %i.p, align 8, !tbaa !12  ; 5 uses
  %i.vx = trunc i64 %i.vw to i1
  br i1 %i.vx, label %.split2388, label %bb.er

.split2388:                                       ; preds = %bb.eq
  %i.vy = tail call i64 @rb_fix2int(i64 noundef %i.vw) #10
  %i.vz = trunc i64 %i.vy to i32
  %i.wa = add i32 %i.vz, -1
  %.not13.i1470 = icmp ult i32 %i.wa, 53
  br i1 %.not13.i1470, label %.critedge1047, label %valid_range_p.exit1471.thread

bb.er:                                            ; preds = %bb.eq
  %i.wb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.vw, i64 noundef 60, i32 noundef 1, i64 noundef 3) #10
  %.not.i1467 = icmp eq i64 %i.wb, 0
  br i1 %.not.i1467, label %valid_range_p.exit1471, label %valid_range_p.exit1471.thread

valid_range_p.exit1471:                           ; preds = %bb.er
  %i.wc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.vw, i64 noundef 62, i32 noundef 1, i64 noundef 107) #10
  %i.wd = icmp eq i64 %i.wc, 0
  br i1 %i.wd, label %.critedge1047, label %valid_range_p.exit1471.thread

valid_range_p.exit1471.thread:                    ; preds = %bb.er, %.split2388, %valid_range_p.exit1471
  %i.we = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.110, ptr noundef @.str.2) #13
  br label %.thread1741

.critedge1047:                                    ; preds = %.split2388, %valid_range_p.exit1471
  %.pr.i1472 = load i64, ptr @date__strptime_internal.rbimpl_id.111, align 8, !tbaa !12 ; 2 uses
  %.not4.i1473 = icmp eq i64 %.pr.i1472, 0
  br i1 %.not4.i1473, label %.lr.ph.i1475, label %rbimpl_intern_const.exit1477

.lr.ph.i1475:                                     ; preds = %.critedge1047, %.lr.ph.i1475
  %i.wf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.112, i64 noundef 5) #10 ; 3 uses
  store i64 %i.wf, ptr @date__strptime_internal.rbimpl_id.111, align 8, !tbaa !12
  %.not.i1476 = icmp eq i64 %i.wf, 0
  br i1 %.not.i1476, label %.lr.ph.i1475, label %rbimpl_intern_const.exit1477, !llvm.loop !0

rbimpl_intern_const.exit1477:                     ; preds = %.lr.ph.i1475, %.critedge1047
  %.lcssa.i1474 = phi i64 [ %.pr.i1472, %.critedge1047 ], [ %i.wf, %.lr.ph.i1475 ]
  %i.wg = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1474) #10
  %i.wh = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.wg, i64 noundef %i.vw) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  br label %bb.gn

.thread1741:                                      ; preds = %.lr.ph.i1464, %bb.ep, %valid_range_p.exit1471.thread
  %.lcssa.i1463.sink = phi i64 [ %i.we, %valid_range_p.exit1471.thread ], [ %.pr.i1461, %bb.ep ], [ %i.vu, %.lr.ph.i1464 ]
  %i.wi = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1463.sink) #10
  %i.wj = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.wi, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  br label %.thread1719

bb.es:                                            ; preds = %.preheader1784
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.wl = sub nuw i64 %1, %.07661990
  %i.wm = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.wk, i64 noundef %i.wl, ptr noundef nonnull @.str.113, i64 noundef 8, i64 noundef %4)
  %.pr.i1478 = load i64, ptr @date__strptime_internal.rbimpl_id.114, align 8, !tbaa !12 ; 2 uses
  %.not4.i1479 = icmp eq i64 %.pr.i1478, 0
  br i1 %.not4.i1479, label %.lr.ph.i1481, label %rbimpl_intern_const.exit1483

.lr.ph.i1481:                                     ; preds = %bb.es, %.lr.ph.i1481
  %i.wn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.wn, ptr @date__strptime_internal.rbimpl_id.114, align 8, !tbaa !12
  %.not.i1482 = icmp eq i64 %i.wn, 0
  br i1 %.not.i1482, label %.lr.ph.i1481, label %rbimpl_intern_const.exit1483, !llvm.loop !0

rbimpl_intern_const.exit1483:                     ; preds = %.lr.ph.i1481, %bb.es
  %.lcssa.i1480 = phi i64 [ %.pr.i1478, %bb.es ], [ %i.wn, %.lr.ph.i1481 ]
  %i.wo = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1480) #10
  %i.wp = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.wo) #10
  %i.wq = icmp eq i64 %i.wp, 4
  %i.wr = add i64 %i.wm, %.07661990
  br i1 %i.wq, label %bb.gn, label %.thread1719

bb.et:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #10
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.wt = sub nuw i64 %1, %.07661990
  %i.wu = call fastcc i64 @read_digits(ptr noundef %i.ws, i64 noundef %i.wt, ptr noundef %i.q, i64 noundef 1) ; 2 uses
  %.not972 = icmp eq i64 %i.wu, 0
  br i1 %.not972, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %.pr.i1484 = load i64, ptr @date__strptime_internal.rbimpl_id.115, align 8, !tbaa !12 ; 2 uses
  %.not4.i1485 = icmp eq i64 %.pr.i1484, 0
  br i1 %.not4.i1485, label %.lr.ph.i1487, label %.thread1746

.lr.ph.i1487:                                     ; preds = %bb.eu, %.lr.ph.i1487
  %i.wv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.wv, ptr @date__strptime_internal.rbimpl_id.115, align 8, !tbaa !12
  %.not.i1488 = icmp eq i64 %i.wv, 0
  br i1 %.not.i1488, label %.lr.ph.i1487, label %.thread1746, !llvm.loop !0

bb.ev:                                            ; preds = %bb.et
  %i.ww = add i64 %i.wu, %.07661990
  %i.wx = load i64, ptr %i.q, align 8, !tbaa !12  ; 5 uses
  %i.wy = trunc i64 %i.wx to i1
  br i1 %i.wy, label %.split2389, label %bb.ew

.split2389:                                       ; preds = %bb.ev
  %i.wz = tail call i64 @rb_fix2int(i64 noundef %i.wx) #10
  %i.xa = trunc i64 %i.wz to i32
  %.not13.i1493 = icmp ult i32 %i.xa, 7
  br i1 %.not13.i1493, label %.critedge1049, label %valid_range_p.exit1494.thread

bb.ew:                                            ; preds = %bb.ev
  %i.xb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.wx, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1490 = icmp eq i64 %i.xb, 0
  br i1 %.not.i1490, label %valid_range_p.exit1494, label %valid_range_p.exit1494.thread

valid_range_p.exit1494:                           ; preds = %bb.ew
  %i.xc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.wx, i64 noundef 62, i32 noundef 1, i64 noundef 13) #10
  %i.xd = icmp eq i64 %i.xc, 0
  br i1 %i.xd, label %.critedge1049, label %valid_range_p.exit1494.thread

valid_range_p.exit1494.thread:                    ; preds = %bb.ew, %.split2389, %valid_range_p.exit1494
  %i.xe = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.116, ptr noundef @.str.2) #13
  br label %.thread1746

.critedge1049:                                    ; preds = %.split2389, %valid_range_p.exit1494
  %.pr.i1495 = load i64, ptr @date__strptime_internal.rbimpl_id.117, align 8, !tbaa !12 ; 2 uses
  %.not4.i1496 = icmp eq i64 %.pr.i1495, 0
  br i1 %.not4.i1496, label %.lr.ph.i1498, label %rbimpl_intern_const.exit1500

.lr.ph.i1498:                                     ; preds = %.critedge1049, %.lr.ph.i1498
  %i.xf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 4) #10 ; 3 uses
  store i64 %i.xf, ptr @date__strptime_internal.rbimpl_id.117, align 8, !tbaa !12
  %.not.i1499 = icmp eq i64 %i.xf, 0
  br i1 %.not.i1499, label %.lr.ph.i1498, label %rbimpl_intern_const.exit1500, !llvm.loop !0

rbimpl_intern_const.exit1500:                     ; preds = %.lr.ph.i1498, %.critedge1049
  %.lcssa.i1497 = phi i64 [ %.pr.i1495, %.critedge1049 ], [ %i.xf, %.lr.ph.i1498 ]
  %i.xg = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1497) #10
  %i.xh = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.xg, i64 noundef %i.wx) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #10
  br label %bb.gn

.thread1746:                                      ; preds = %.lr.ph.i1487, %bb.eu, %valid_range_p.exit1494.thread
  %.lcssa.i1486.sink = phi i64 [ %i.xe, %valid_range_p.exit1494.thread ], [ %.pr.i1484, %bb.eu ], [ %i.wv, %.lr.ph.i1487 ]
  %i.xi = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1486.sink) #10
  %i.xj = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.xi, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #10
  br label %.thread1719

bb.ex:                                            ; preds = %.preheader1784
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.xl = sub nuw i64 %1, %.07661990
  %i.xm = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.xk, i64 noundef %i.xl, ptr noundef nonnull @.str.98, i64 noundef 8, i64 noundef %4)
  %.pr.i1501 = load i64, ptr @date__strptime_internal.rbimpl_id.118, align 8, !tbaa !12 ; 2 uses
  %.not4.i1502 = icmp eq i64 %.pr.i1501, 0
  br i1 %.not4.i1502, label %.lr.ph.i1504, label %rbimpl_intern_const.exit1506

.lr.ph.i1504:                                     ; preds = %bb.ex, %.lr.ph.i1504
  %i.xn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.xn, ptr @date__strptime_internal.rbimpl_id.118, align 8, !tbaa !12
  %.not.i1505 = icmp eq i64 %i.xn, 0
  br i1 %.not.i1505, label %.lr.ph.i1504, label %rbimpl_intern_const.exit1506, !llvm.loop !0

rbimpl_intern_const.exit1506:                     ; preds = %.lr.ph.i1504, %bb.ex
  %.lcssa.i1503 = phi i64 [ %.pr.i1501, %bb.ex ], [ %i.xn, %.lr.ph.i1504 ]
  %i.xo = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1503) #10
  %i.xp = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.xo) #10
  %i.xq = icmp eq i64 %i.xp, 4
  %i.xr = add i64 %i.xm, %.07661990
  br i1 %i.xq, label %bb.gn, label %.thread1719

bb.ey:                                            ; preds = %.preheader1784
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.xt = sub nuw i64 %1, %.07661990
  %i.xu = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.xs, i64 noundef %i.xt, ptr noundef nonnull @.str.30, i64 noundef 8, i64 noundef %4)
  %.pr.i1507 = load i64, ptr @date__strptime_internal.rbimpl_id.119, align 8, !tbaa !12 ; 2 uses
  %.not4.i1508 = icmp eq i64 %.pr.i1507, 0
  br i1 %.not4.i1508, label %.lr.ph.i1510, label %rbimpl_intern_const.exit1512

.lr.ph.i1510:                                     ; preds = %bb.ey, %.lr.ph.i1510
  %i.xv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.xv, ptr @date__strptime_internal.rbimpl_id.119, align 8, !tbaa !12
  %.not.i1511 = icmp eq i64 %i.xv, 0
  br i1 %.not.i1511, label %.lr.ph.i1510, label %rbimpl_intern_const.exit1512, !llvm.loop !0

rbimpl_intern_const.exit1512:                     ; preds = %.lr.ph.i1510, %bb.ey
  %.lcssa.i1509 = phi i64 [ %.pr.i1507, %bb.ey ], [ %i.xv, %.lr.ph.i1510 ]
  %i.xw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1509) #10
  %i.xx = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.xw) #10
  %i.xy = icmp eq i64 %i.xx, 4
  %i.xz = add i64 %i.xu, %.07661990
  br i1 %i.xy, label %bb.gn, label %.thread1719

bb.ez:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #10
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.yb, label %bb.fb [
    i8 45, label %bb.fa
    i8 43, label %bb.fa
  ]

bb.fa:                                            ; preds = %bb.ez, %bb.ez
  %i.yc = icmp eq i8 %i.yb, 45
  %i.yd = add i64 %.07661990, 1
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %.1916 = phi i1 [ %i.yc, %bb.fa ], [ false, %bb.ez ]
  %.60826 = phi i64 [ %i.yd, %bb.fa ], [ %.07661990, %bb.ez ] ; 5 uses
  %i.ye = getelementptr i8, ptr %2, i64 %.2839    ; 3 uses
  %i.yf = getelementptr i8, ptr %i.ye, i64 2
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !14  ; 2 uses
  %i.yh = zext i8 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.yh
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !22
  %i.yk = and i16 %i.yj, 2048
  %.not.i1513 = icmp eq i16 %i.yk, 0
  br i1 %.not.i1513, label %bb.fc, label %bb.fi

bb.fc:                                            ; preds = %bb.fb
  %i.yl = icmp eq i8 %i.yg, 37
  br i1 %i.yl, label %bb.fd, label %num_pattern_p.exit1520

bb.fd:                                            ; preds = %bb.fc
  %i.ym = getelementptr i8, ptr %i.ye, i64 3
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.yn, label %bb.ff [
    i8 69, label %bb.fe
    i8 79, label %bb.fe
  ]

bb.fe:                                            ; preds = %bb.fd, %bb.fd
  %i.yo = getelementptr i8, ptr %i.ye, i64 4
  %.pr.i1515 = load i8, ptr %i.yo, align 1, !tbaa !14
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.yp = phi i8 [ %i.yn, %bb.fd ], [ %.pr.i1515, %bb.fe ] ; 3 uses
  %.not12.i1516 = icmp eq i8 %i.yp, 0
  br i1 %.not12.i1516, label %num_pattern_p.exit1520, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yq = sext i8 %i.yp to i32
  %memchr.i1517 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.165, i32 %i.yq, i64 33)
  %.not13.i1518 = icmp eq ptr %memchr.i1517, null
  br i1 %.not13.i1518, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.yr = zext i8 %i.yp to i64
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.yr
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !22
  %i.yu = and i16 %i.yt, 2048
  %.not14.i1519 = icmp eq i16 %i.yu, 0
  br i1 %.not14.i1519, label %num_pattern_p.exit1520, label %bb.fi

bb.fi:                                            ; preds = %bb.fb, %bb.fh, %bb.fg
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 %.60826
  %i.yw = sub i64 %1, %.60826
  %i.yx = call fastcc i64 @read_digits(ptr noundef %i.yv, i64 noundef %i.yw, ptr noundef %i.r, i64 noundef 4) ; 2 uses
  %.not971 = icmp eq i64 %i.yx, 0
  br i1 %.not971, label %.thread1758, label %bb.fj

num_pattern_p.exit1520:                           ; preds = %bb.fh, %bb.ff, %bb.fc
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 %.60826
  %i.yz = sub i64 %1, %.60826
  %i.za = call fastcc i64 @read_digits(ptr noundef %i.yy, i64 noundef %i.yz, ptr noundef %i.r, i64 noundef 9223372036854775807) ; 2 uses
  %.not970 = icmp eq i64 %i.za, 0
  br i1 %.not970, label %.thread1758, label %bb.fj

bb.fj:                                            ; preds = %num_pattern_p.exit1520, %bb.fi
  %.pn = phi i64 [ %i.yx, %bb.fi ], [ %i.za, %num_pattern_p.exit1520 ]
  %.63829 = add i64 %.pn, %.60826
  br i1 %.1916, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.zb = load i64, ptr %i.r, align 8, !tbaa !12
  %.pr.i1521 = load i64, ptr @date__strptime_internal.rbimpl_id.122, align 8, !tbaa !12 ; 2 uses
  %.not4.i1522 = icmp eq i64 %.pr.i1521, 0
  br i1 %.not4.i1522, label %.lr.ph.i1524, label %rbimpl_intern_const.exit1526

.lr.ph.i1524:                                     ; preds = %bb.fk, %.lr.ph.i1524
  %i.zc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.64, i64 noundef 2) #10 ; 3 uses
  store i64 %i.zc, ptr @date__strptime_internal.rbimpl_id.122, align 8, !tbaa !12
  %.not.i1525 = icmp eq i64 %i.zc, 0
  br i1 %.not.i1525, label %.lr.ph.i1524, label %rbimpl_intern_const.exit1526, !llvm.loop !0

rbimpl_intern_const.exit1526:                     ; preds = %.lr.ph.i1524, %bb.fk
  %.lcssa.i1523 = phi i64 [ %.pr.i1521, %bb.fk ], [ %i.zc, %.lr.ph.i1524 ]
  %i.zd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.zb, i64 noundef %.lcssa.i1523, i32 noundef 0) #10
  store i64 %i.zd, ptr %i.r, align 8, !tbaa !12
  br label %bb.fl

bb.fl:                                            ; preds = %rbimpl_intern_const.exit1526, %bb.fj
  %.pr.i1527 = load i64, ptr @date__strptime_internal.rbimpl_id.123, align 8, !tbaa !12 ; 2 uses
  %.not4.i1528 = icmp eq i64 %.pr.i1527, 0
  br i1 %.not4.i1528, label %.lr.ph.i1530, label %.loopexit1782

.lr.ph.i1530:                                     ; preds = %bb.fl, %.lr.ph.i1530
  %i.ze = tail call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 4) #10 ; 3 uses
  store i64 %i.ze, ptr @date__strptime_internal.rbimpl_id.123, align 8, !tbaa !12
  %.not.i1531 = icmp eq i64 %i.ze, 0
  br i1 %.not.i1531, label %.lr.ph.i1530, label %.loopexit1782, !llvm.loop !0

.thread1758:                                      ; preds = %num_pattern_p.exit1520, %bb.fi
  %date__strptime_internal.rbimpl_id.120.sink = phi ptr [ @date__strptime_internal.rbimpl_id.120, %bb.fi ], [ @date__strptime_internal.rbimpl_id.121, %num_pattern_p.exit1520 ]
  %i.zf = tail call fastcc i64 @rbimpl_intern_const(ptr noundef %date__strptime_internal.rbimpl_id.120.sink, ptr noundef @.str.2) #13
  %i.zg = tail call i64 @rb_id2sym(i64 noundef %i.zf) #10
  %i.zh = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.zg, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #10
  br label %.thread1719

.loopexit1782:                                    ; preds = %.lr.ph.i1530, %bb.fl
  %.lcssa.i1529 = phi i64 [ %.pr.i1527, %bb.fl ], [ %i.ze, %.lr.ph.i1530 ]
  %i.zi = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1529) #10
  %i.zj = load i64, ptr %i.r, align 8, !tbaa !12
  %i.zk = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.zi, i64 noundef %i.zj) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #10
  br label %bb.gn

bb.fm:                                            ; preds = %.preheader1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #10
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.zm = sub nuw i64 %1, %.07661990
  %i.zn = call fastcc i64 @read_digits(ptr noundef %i.zl, i64 noundef %i.zm, ptr noundef %i.s, i64 noundef 2) ; 2 uses
  %.not966 = icmp eq i64 %i.zn, 0
  br i1 %.not966, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %.pr.i1533 = load i64, ptr @date__strptime_internal.rbimpl_id.124, align 8, !tbaa !12 ; 2 uses
  %.not4.i1534 = icmp eq i64 %.pr.i1533, 0
  br i1 %.not4.i1534, label %.lr.ph.i1536, label %.critedge1051

.lr.ph.i1536:                                     ; preds = %bb.fn, %.lr.ph.i1536
  %i.zo = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.zo, ptr @date__strptime_internal.rbimpl_id.124, align 8, !tbaa !12
  %.not.i1537 = icmp eq i64 %i.zo, 0
  br i1 %.not.i1537, label %.lr.ph.i1536, label %.critedge1051, !llvm.loop !0

bb.fo:                                            ; preds = %bb.fm
  %i.zp = add i64 %i.zn, %.07661990
  %i.zq = load i64, ptr %i.s, align 8, !tbaa !12  ; 6 uses
  %i.zr = trunc i64 %i.zq to i1
  br i1 %i.zr, label %.split2390, label %bb.fp

.split2390:                                       ; preds = %bb.fo
  %i.zs = tail call i64 @rb_fix2int(i64 noundef %i.zq) #10
  %i.zt = trunc i64 %i.zs to i32
  %.not13.i1542 = icmp ult i32 %i.zt, 100
  br i1 %.not13.i1542, label %bb.fq, label %valid_range_p.exit1543.thread

bb.fp:                                            ; preds = %bb.fo
  %i.zu = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.zq, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  %.not.i1539 = icmp eq i64 %i.zu, 0
  br i1 %.not.i1539, label %valid_range_p.exit1543, label %valid_range_p.exit1543.thread

valid_range_p.exit1543:                           ; preds = %bb.fp
  %i.zv = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.zq, i64 noundef 62, i32 noundef 1, i64 noundef 199) #10
  %i.zw = icmp eq i64 %i.zv, 0
  br i1 %i.zw, label %bb.fq, label %valid_range_p.exit1543.thread

valid_range_p.exit1543.thread:                    ; preds = %bb.fp, %.split2390, %valid_range_p.exit1543
  %i.zx = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.125, ptr noundef @.str.2) #13
  br label %.critedge1051

bb.fq:                                            ; preds = %.split2390, %valid_range_p.exit1543
  %.pr.i1544 = load i64, ptr @date__strptime_internal.rbimpl_id.127, align 8, !tbaa !12 ; 2 uses
  %.not4.i1545 = icmp eq i64 %.pr.i1544, 0
  br i1 %.not4.i1545, label %.lr.ph.i1547, label %rbimpl_intern_const.exit1549

.lr.ph.i1547:                                     ; preds = %bb.fq, %.lr.ph.i1547
  %i.zy = tail call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 4) #10 ; 3 uses
  store i64 %i.zy, ptr @date__strptime_internal.rbimpl_id.127, align 8, !tbaa !12
  %.not.i1548 = icmp eq i64 %i.zy, 0
  br i1 %.not.i1548, label %.lr.ph.i1547, label %rbimpl_intern_const.exit1549, !llvm.loop !0

rbimpl_intern_const.exit1549:                     ; preds = %.lr.ph.i1547, %bb.fq
  %.lcssa.i1546 = phi i64 [ %.pr.i1544, %bb.fq ], [ %i.zy, %.lr.ph.i1547 ]
  %i.zz = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1546) #10
  %i.aaa = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.zz, i64 noundef %i.zq) #10 ; 0 uses
  %.pr.i1550 = load i64, ptr @date__strptime_internal.rbimpl_id.128, align 8, !tbaa !12 ; 2 uses
  %.not4.i1551 = icmp eq i64 %.pr.i1550, 0
  br i1 %.not4.i1551, label %.lr.ph.i1553, label %rbimpl_intern_const.exit1555

.lr.ph.i1553:                                     ; preds = %rbimpl_intern_const.exit1549, %.lr.ph.i1553
  %i.aab = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.aab, ptr @date__strptime_internal.rbimpl_id.128, align 8, !tbaa !12
  %.not.i1554 = icmp eq i64 %i.aab, 0
  br i1 %.not.i1554, label %.lr.ph.i1553, label %rbimpl_intern_const.exit1555, !llvm.loop !0

rbimpl_intern_const.exit1555:                     ; preds = %.lr.ph.i1553, %rbimpl_intern_const.exit1549
  %.lcssa.i1552 = phi i64 [ %.pr.i1550, %rbimpl_intern_const.exit1549 ], [ %i.aab, %.lr.ph.i1553 ]
  %i.aac = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1552) #10
  %i.aad = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.aac) #10
  %i.aae = icmp eq i64 %i.aad, 4
  br i1 %i.aae, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %rbimpl_intern_const.exit1555
  %.pr.i1556 = load i64, ptr @date__strptime_internal.rbimpl_id.129, align 8, !tbaa !12 ; 2 uses
  %.not4.i1557 = icmp eq i64 %.pr.i1556, 0
  br i1 %.not4.i1557, label %.lr.ph.i1559, label %rbimpl_intern_const.exit1561

.lr.ph.i1559:                                     ; preds = %bb.fr, %.lr.ph.i1559
  %i.aaf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.aaf, ptr @date__strptime_internal.rbimpl_id.129, align 8, !tbaa !12
  %.not.i1560 = icmp eq i64 %i.aaf, 0
  br i1 %.not.i1560, label %.lr.ph.i1559, label %rbimpl_intern_const.exit1561, !llvm.loop !0

rbimpl_intern_const.exit1561:                     ; preds = %.lr.ph.i1559, %bb.fr
  %.lcssa.i1558 = phi i64 [ %.pr.i1556, %bb.fr ], [ %i.aaf, %.lr.ph.i1559 ]
  %i.aag = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1558) #10
  %.pr.i1562 = load i64, ptr @date__strptime_internal.rbimpl_id.130, align 8, !tbaa !12 ; 2 uses
  %.not4.i1563 = icmp eq i64 %.pr.i1562, 0
  br i1 %.not4.i1563, label %.lr.ph.i1565, label %rbimpl_intern_const.exit1567

.lr.ph.i1565:                                     ; preds = %rbimpl_intern_const.exit1561, %.lr.ph.i1565
  %i.aah = tail call i64 @rb_intern2(ptr noundef nonnull @.str.48, i64 noundef 2) #10 ; 3 uses
  store i64 %i.aah, ptr @date__strptime_internal.rbimpl_id.130, align 8, !tbaa !12
  %.not.i1566 = icmp eq i64 %i.aah, 0
  br i1 %.not.i1566, label %.lr.ph.i1565, label %rbimpl_intern_const.exit1567, !llvm.loop !0

rbimpl_intern_const.exit1567:                     ; preds = %.lr.ph.i1565, %rbimpl_intern_const.exit1561
  %.lcssa.i1564 = phi i64 [ %.pr.i1562, %rbimpl_intern_const.exit1561 ], [ %i.aah, %.lr.ph.i1565 ]
  %i.aai = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.zq, i64 noundef %.lcssa.i1564, i32 noundef 1, i64 noundef 139) #10
  %.not968 = icmp eq i64 %i.aai, 0
  %i.aaj = select i1 %.not968, i64 41, i64 39
  %i.aak = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.aag, i64 noundef %i.aaj) #10 ; 0 uses
  br label %bb.fs

bb.fs:                                            ; preds = %rbimpl_intern_const.exit1555, %rbimpl_intern_const.exit1567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  br label %bb.gn

bb.ft:                                            ; preds = %.preheader1784, %.preheader1784
  %i.aal = load i64, ptr @date__strptime_internal.pat, align 8, !tbaa !12
  %i.aam = icmp eq i64 %i.aal, 4
  br i1 %i.aam, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aan = tail call i64 @rb_reg_new(ptr noundef nonnull @date__strptime_internal.pat_source, i64 noundef 130, i32 noundef 1) #10 ; 2 uses
  store i64 %i.aan, ptr @date__strptime_internal.pat, align 8, !tbaa !12
  %i.aao = tail call i64 @rb_obj_freeze(i64 noundef %i.aan) #10 ; 0 uses
  %i.aap = load i64, ptr @date__strptime_internal.pat, align 8, !tbaa !12
  tail call void @rb_gc_register_mark_object(i64 noundef %i.aap) #10
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.aaq = tail call i64 @rb_backref_get() #10    ; 3 uses
  tail call void @rb_match_busy(i64 noundef %i.aaq) #10
  %i.aar = load i64, ptr @date__strptime_internal.pat, align 8, !tbaa !12
  %.pr.i1568 = load i64, ptr @date__strptime_internal.rbimpl_id.131, align 8, !tbaa !12 ; 2 uses
  %.not4.i1569 = icmp eq i64 %.pr.i1568, 0
  br i1 %.not4.i1569, label %.lr.ph.i1571, label %rbimpl_intern_const.exit1573

.lr.ph.i1571:                                     ; preds = %bb.fv, %.lr.ph.i1571
  %i.aas = tail call i64 @rb_intern2(ptr noundef nonnull @.str.132, i64 noundef 5) #10 ; 3 uses
  store i64 %i.aas, ptr @date__strptime_internal.rbimpl_id.131, align 8, !tbaa !12
  %.not.i1572 = icmp eq i64 %i.aas, 0
  br i1 %.not.i1572, label %.lr.ph.i1571, label %rbimpl_intern_const.exit1573, !llvm.loop !0

rbimpl_intern_const.exit1573:                     ; preds = %.lr.ph.i1571, %bb.fv
  %.lcssa.i1570 = phi i64 [ %.pr.i1568, %bb.fv ], [ %i.aas, %.lr.ph.i1571 ]
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.aau = sub nuw i64 %1, %.07661990
  %i.aav = tail call i64 @rb_usascii_str_new(ptr noundef %i.aat, i64 noundef %i.aau) #10
  %i.aaw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.aar, i64 noundef %.lcssa.i1570, i32 noundef 1, i64 noundef %i.aav) #10 ; 3 uses
  %i.aax = icmp eq i64 %i.aaw, 4
  br i1 %i.aax, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %rbimpl_intern_const.exit1573
  %i.aay = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %i.aaw) #10 ; 2 uses
  %.pr.i1574 = load i64, ptr @date__strptime_internal.rbimpl_id.133, align 8, !tbaa !12 ; 2 uses
  %.not4.i1575 = icmp eq i64 %.pr.i1574, 0
  br i1 %.not4.i1575, label %.lr.ph.i1577, label %rbimpl_intern_const.exit1579

.lr.ph.i1577:                                     ; preds = %bb.fw, %.lr.ph.i1577
  %i.aaz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.134, i64 noundef 3) #10 ; 3 uses
  store i64 %i.aaz, ptr @date__strptime_internal.rbimpl_id.133, align 8, !tbaa !12
  %.not.i1578 = icmp eq i64 %i.aaz, 0
  br i1 %.not.i1578, label %.lr.ph.i1577, label %rbimpl_intern_const.exit1579, !llvm.loop !0

rbimpl_intern_const.exit1579:                     ; preds = %.lr.ph.i1577, %bb.fw
  %.lcssa.i1576 = phi i64 [ %.pr.i1574, %bb.fw ], [ %i.aaz, %.lr.ph.i1577 ]
  %i.aba = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.aaw, i64 noundef %.lcssa.i1576, i32 noundef 1, i64 noundef 1) #10 ; 3 uses
  %i.abb = tail call i64 @date_zone_to_diff(i64 noundef %i.aay) #10
  %i.abc = trunc i64 %i.aba to i1
  br i1 %i.abc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %rbimpl_intern_const.exit1579
  %i.abd = ashr i64 %i.aba, 1
  br label %rb_num2long_inline.exit

bb.fy:                                            ; preds = %rbimpl_intern_const.exit1579
  %i.abe = tail call i64 @rb_num2long(i64 noundef %i.aba) #10
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.fx, %bb.fy
  %.0.i1580 = phi i64 [ %i.abd, %bb.fx ], [ %i.abe, %bb.fy ]
  %i.abf = add i64 %.0.i1580, %.07661990
  %.pr.i1581 = load i64, ptr @date__strptime_internal.rbimpl_id.135, align 8, !tbaa !12 ; 2 uses
  %.not4.i1582 = icmp eq i64 %.pr.i1581, 0
  br i1 %.not4.i1582, label %.lr.ph.i1584, label %rbimpl_intern_const.exit1586

.lr.ph.i1584:                                     ; preds = %rb_num2long_inline.exit, %.lr.ph.i1584
  %i.abg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.136, i64 noundef 4) #10 ; 3 uses
  store i64 %i.abg, ptr @date__strptime_internal.rbimpl_id.135, align 8, !tbaa !12
  %.not.i1585 = icmp eq i64 %i.abg, 0
  br i1 %.not.i1585, label %.lr.ph.i1584, label %rbimpl_intern_const.exit1586, !llvm.loop !0

rbimpl_intern_const.exit1586:                     ; preds = %.lr.ph.i1584, %rb_num2long_inline.exit
  %.lcssa.i1583 = phi i64 [ %.pr.i1581, %rb_num2long_inline.exit ], [ %i.abg, %.lr.ph.i1584 ]
  %i.abh = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1583) #10
  %i.abi = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.abh, i64 noundef %i.aay) #10 ; 0 uses
  %.pr.i1587 = load i64, ptr @date__strptime_internal.rbimpl_id.137, align 8, !tbaa !12 ; 2 uses
  %.not4.i1588 = icmp eq i64 %.pr.i1587, 0
  br i1 %.not4.i1588, label %.lr.ph.i1590, label %.loopexit1783

.lr.ph.i1590:                                     ; preds = %rbimpl_intern_const.exit1586, %.lr.ph.i1590
  %i.abj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.138, i64 noundef 6) #10 ; 3 uses
  store i64 %i.abj, ptr @date__strptime_internal.rbimpl_id.137, align 8, !tbaa !12
  %.not.i1591 = icmp eq i64 %i.abj, 0
  br i1 %.not.i1591, label %.lr.ph.i1590, label %.loopexit1783, !llvm.loop !0

bb.fz:                                            ; preds = %rbimpl_intern_const.exit1573
  tail call void @rb_backref_set(i64 noundef %i.aaq) #10
  %.pr.i1593 = load i64, ptr @date__strptime_internal.rbimpl_id.139, align 8, !tbaa !12 ; 2 uses
  %.not4.i1594 = icmp eq i64 %.pr.i1593, 0
  br i1 %.not4.i1594, label %.lr.ph.i1596, label %.thread1766

.lr.ph.i1596:                                     ; preds = %bb.fz, %.lr.ph.i1596
  %i.abk = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.abk, ptr @date__strptime_internal.rbimpl_id.139, align 8, !tbaa !12
  %.not.i1597 = icmp eq i64 %i.abk, 0
  br i1 %.not.i1597, label %.lr.ph.i1596, label %.thread1766, !llvm.loop !0

.thread1766:                                      ; preds = %.lr.ph.i1596, %bb.fz
  %.lcssa.i1595.a = phi i64 [ %.pr.i1593, %bb.fz ], [ %i.abk, %.lr.ph.i1596 ]
  %i.abl = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1595.a) #10
  %i.abm = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.abl, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

.loopexit1783:                                    ; preds = %.lr.ph.i1590, %rbimpl_intern_const.exit1586
  %.lcssa.i1589 = phi i64 [ %.pr.i1587, %rbimpl_intern_const.exit1586 ], [ %i.abj, %.lr.ph.i1590 ]
  %i.abn = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1589) #10
  %i.abo = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.abn, i64 noundef %i.abb) #10 ; 0 uses
  tail call void @rb_backref_set(i64 noundef %i.aaq) #10
  br label %bb.gn

bb.ga:                                            ; preds = %.preheader1784
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !14
  %.not965 = icmp eq i8 %i.abq, 37
  br i1 %.not965, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.abr = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.140, ptr noundef @.str.2) #13
  %i.abs = tail call i64 @rb_id2sym(i64 noundef %i.abr) #10
  %i.abt = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.abs, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.gc:                                            ; preds = %bb.ga
  %i.abu = add nuw i64 %.07661990, 1
  br label %bb.gn

bb.gd:                                            ; preds = %.preheader1784
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.abw = sub nuw i64 %1, %.07661990
  %i.abx = tail call fastcc i64 @date__strptime_internal(ptr noundef %i.abv, i64 noundef %i.abw, ptr noundef nonnull @.str.141, i64 noundef 23, i64 noundef %4)
  %.pr.i1599 = load i64, ptr @date__strptime_internal.rbimpl_id.142, align 8, !tbaa !12 ; 2 uses
  %.not4.i1600 = icmp eq i64 %.pr.i1599, 0
  br i1 %.not4.i1600, label %.lr.ph.i1602, label %rbimpl_intern_const.exit1604

.lr.ph.i1602:                                     ; preds = %bb.gd, %.lr.ph.i1602
  %i.aby = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.aby, ptr @date__strptime_internal.rbimpl_id.142, align 8, !tbaa !12
  %.not.i1603 = icmp eq i64 %i.aby, 0
  br i1 %.not.i1603, label %.lr.ph.i1602, label %rbimpl_intern_const.exit1604, !llvm.loop !0

rbimpl_intern_const.exit1604:                     ; preds = %.lr.ph.i1602, %bb.gd
  %.lcssa.i1601 = phi i64 [ %.pr.i1599, %bb.gd ], [ %i.aby, %.lr.ph.i1602 ]
  %i.abz = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1601) #10
  %i.aca = tail call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.abz) #10
  %i.acb = icmp eq i64 %i.aca, 4
  %i.acc = add i64 %i.abx, %.07661990
  br i1 %i.acb, label %bb.gn, label %.thread1719

bb.ge:                                            ; preds = %.preheader1784
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !14
  %.not1022 = icmp eq i8 %i.ace, 37
  br i1 %.not1022, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.acf = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.143, ptr noundef @.str.2) #13
  %i.acg = tail call i64 @rb_id2sym(i64 noundef %i.acf) #10
  %i.ach = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.acg, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.gg:                                            ; preds = %bb.ge
  %i.aci = add nuw i64 %.07661990, 1              ; 3 uses
  %i.acj = icmp ult i64 %i.ax, %3
  br i1 %i.acj, label %bb.gh, label %bb.gn

bb.gh:                                            ; preds = %bb.gg
  %.not1023 = icmp ult i64 %i.aci, %1
  br i1 %.not1023, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 %i.aci
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !14
  %.not1024 = icmp eq i8 %i.acl, %i.az
  br i1 %.not1024, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %i.acm = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @date__strptime_internal.rbimpl_id.144, ptr noundef @.str.2) #13
  %i.acn = tail call i64 @rb_id2sym(i64 noundef %i.acm) #10
  %i.aco = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.acn, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.gk:                                            ; preds = %bb.gi
  %i.acp = add i64 %.07661990, 2
  br label %bb.gn

.loopexit1785.loopexit:                           ; preds = %bb.i, %bb.h, %bb.k, %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 %.2839
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  br label %.loopexit1785

.loopexit1785:                                    ; preds = %.loopexit1785.loopexit, %bb.g
  %i.acq = phi i8 [ %i.w, %bb.g ], [ %.pre, %.loopexit1785.loopexit ]
  %.7844 = phi i64 [ %.08371989, %bb.g ], [ %.2839, %.loopexit1785.loopexit ]
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 %.07661990
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !14
  %.not1021 = icmp eq i8 %i.acs, %i.acq
  br i1 %.not1021, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.loopexit1785
  %.pr.i1605 = load i64, ptr @date__strptime_internal.rbimpl_id.145, align 8, !tbaa !12 ; 2 uses
  %.not4.i1606 = icmp eq i64 %.pr.i1605, 0
  br i1 %.not4.i1606, label %.lr.ph.i1608, label %rbimpl_intern_const.exit1610

.lr.ph.i1608:                                     ; preds = %bb.gl, %.lr.ph.i1608
  %i.act = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 5) #10 ; 3 uses
  store i64 %i.act, ptr @date__strptime_internal.rbimpl_id.145, align 8, !tbaa !12
  %.not.i1609 = icmp eq i64 %i.act, 0
  br i1 %.not.i1609, label %.lr.ph.i1608, label %rbimpl_intern_const.exit1610, !llvm.loop !0

rbimpl_intern_const.exit1610:                     ; preds = %.lr.ph.i1608, %bb.gl
  %.lcssa.i1607 = phi i64 [ %.pr.i1605, %bb.gl ], [ %i.act, %.lr.ph.i1608 ]
  %i.acu = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1607) #10
  %i.acv = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.acu, i64 noundef 20) #10 ; 0 uses
  br label %.thread1719

bb.gm:                                            ; preds = %.loopexit1785
  %i.acw = add i64 %.07661990, 1
  %i.acx = add i64 %.7844, 1
  br label %.backedge1787

bb.gn:                                            ; preds = %.loopexit1783, %.loopexit1782, %rbimpl_intern_const.exit1426, %rbimpl_intern_const.exit1379, %.loopexit1781, %bb.ct, %.loopexit1780, %.loopexit1779, %.loopexit1778, %.loopexit1777, %.loopexit1776, %.thread1631, %.thread1619, %bb.fs, %rbimpl_intern_const.exit1500, %rbimpl_intern_const.exit1477, %rbimpl_intern_const.exit1460, %.critedge1043, %rbimpl_intern_const.exit1408, %rbimpl_intern_const.exit1331, %rbimpl_intern_const.exit1314, %rbimpl_intern_const.exit1264, %bb.be, %bb.gg, %bb.gk, %rbimpl_intern_const.exit1604, %rbimpl_intern_const.exit1512, %rbimpl_intern_const.exit1506, %rbimpl_intern_const.exit1483, %rbimpl_intern_const.exit1432, %rbimpl_intern_const.exit1391, %rbimpl_intern_const.exit1385, %rbimpl_intern_const.exit1337, %rbimpl_intern_const.exit1140, %rbimpl_intern_const.exit1108, %rbimpl_intern_const.exit1102, %bb.gc
  %.69835 = phi i64 [ %i.acp, %bb.gk ], [ %i.aci, %bb.gg ], [ %.12778, %.loopexit1776 ], [ %i.dd, %.thread1631 ], [ %i.cg, %.thread1619 ], [ %i.fx, %rbimpl_intern_const.exit1102 ], [ %i.gf, %rbimpl_intern_const.exit1108 ], [ %.18784, %.loopexit1777 ], [ %i.ho, %rbimpl_intern_const.exit1140 ], [ %.23789, %.loopexit1778 ], [ %i.ix, %bb.be ], [ %.28794, %.loopexit1779 ], [ %.32798, %.loopexit1780 ], [ %i.ly, %rbimpl_intern_const.exit1264 ], [ %.38804, %bb.ct ], [ %i.ol, %rbimpl_intern_const.exit1314 ], [ %i.pd, %rbimpl_intern_const.exit1331 ], [ %i.pz, %rbimpl_intern_const.exit1337 ], [ %i.rc, %.loopexit1781 ], [ %i.rp, %rbimpl_intern_const.exit1379 ], [ %i.sf, %rbimpl_intern_const.exit1385 ], [ %i.sn, %rbimpl_intern_const.exit1391 ], [ %i.ss, %rbimpl_intern_const.exit1408 ], [ %i.to, %rbimpl_intern_const.exit1426 ], [ %i.ud, %rbimpl_intern_const.exit1432 ], [ %i.ui, %.critedge1043 ], [ %i.vc, %rbimpl_intern_const.exit1460 ], [ %i.vv, %rbimpl_intern_const.exit1477 ], [ %i.wr, %rbimpl_intern_const.exit1483 ], [ %i.ww, %rbimpl_intern_const.exit1500 ], [ %i.xr, %rbimpl_intern_const.exit1506 ], [ %i.xz, %rbimpl_intern_const.exit1512 ], [ %.63829, %.loopexit1782 ], [ %i.zp, %bb.fs ], [ %i.abu, %bb.gc ], [ %i.abf, %.loopexit1783 ], [ %i.acc, %rbimpl_intern_const.exit1604 ]
  %i.acy = add i64 %.2839, 2
  br label %.backedge1787

.critedge1028:                                    ; preds = %.lr.ph.i1158, %bb.az, %valid_range_p.exit1165.thread
  %.lcssa.i1157.sink = phi i64 [ %i.jf, %valid_range_p.exit1165.thread ], [ %.pr.i1155, %bb.az ], [ %i.iw, %.lr.ph.i1158 ]
  %i.acz = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1157.sink) #10
  %i.ada = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.acz, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.thread1719

.critedge1036:                                    ; preds = %.lr.ph.i1365, %bb.dq
  %.lcssa.i1364 = phi i64 [ %.pr.i1362, %bb.dq ], [ %i.ro, %.lr.ph.i1365 ]
  %i.adb = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1364) #10
  %i.adc = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.adb, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %.thread1719

.critedge1041:                                    ; preds = %.lr.ph.i1412, %bb.eb
  %.lcssa.i1411 = phi i64 [ %.pr.i1409, %bb.eb ], [ %i.tn, %.lr.ph.i1412 ]
  %i.add = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1411) #10
  %i.ade = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.add, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %.thread1719

.critedge1051:                                    ; preds = %.lr.ph.i1536, %bb.fn, %valid_range_p.exit1543.thread
  %.lcssa.i1535.sink = phi i64 [ %i.zx, %valid_range_p.exit1543.thread ], [ %.pr.i1533, %bb.fn ], [ %i.zo, %.lr.ph.i1536 ]
  %i.adf = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i1535.sink) #10
  %i.adg = tail call i64 @rb_hash_aset(i64 noundef %4, i64 noundef %i.adf, i64 noundef 20) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  br label %.thread1719

.thread1719:                                      ; preds = %rbimpl_intern_const.exit1604, %rbimpl_intern_const.exit1512, %rbimpl_intern_const.exit1506, %rbimpl_intern_const.exit1483, %rbimpl_intern_const.exit1432, %rbimpl_intern_const.exit1391, %rbimpl_intern_const.exit1385, %rbimpl_intern_const.exit1337, %rbimpl_intern_const.exit1140, %rbimpl_intern_const.exit1108, %rbimpl_intern_const.exit1102, %.backedge1787, %.critedge, %bb.d, %bb.a, %rbimpl_intern_const.exit1343, %rbimpl_intern_const.exit1355, %rbimpl_intern_const.exit1349, %.thread1766, %.thread1758, %.thread1705, %.thread1690, %.thread1679, %.thread1663, %.thread1653, %.thread1642, %.loopexit1775, %.loopexit, %.thread, %.critedge1051, %.thread1746, %.thread1741, %.thread1736, %.thread1731.a, %.critedge1041, %.thread1724, %.critedge1036, %.thread1713, %.thread1708, %.thread1693, %.critedge1028, %rbimpl_intern_const.exit1610, %bb.gj, %bb.gf, %bb.gb, %bb.de, %rbimpl_intern_const.exit
  %.75 = phi i64 [ 0, %rbimpl_intern_const.exit ], [ 0, %bb.gf ], [ 0, %bb.gj ], [ 0, %rbimpl_intern_const.exit1610 ], [ 0, %.thread ], [ 0, %.loopexit ], [ 0, %.loopexit1775 ], [ 0, %.thread1642 ], [ 0, %rbimpl_intern_const.exit1343 ], [ 0, %.thread1746 ], [ 0, %.thread1653 ], [ 0, %rbimpl_intern_const.exit1349 ], [ 0, %.thread1663 ], [ 0, %.critedge1028 ], [ 0, %.thread1679 ], [ 0, %.thread1690 ], [ 0, %.thread1693 ], [ 0, %.thread1705 ], [ 0, %.thread1708 ], [ 0, %.thread1713 ], [ 0, %rbimpl_intern_const.exit1355 ], [ 0, %bb.de ], [ 0, %.critedge1041 ], [ 0, %.thread1758 ], [ 0, %.critedge1051 ], [ 0, %.thread1766 ], [ 0, %.thread1724 ], [ 0, %.critedge1036 ], [ 0, %bb.gb ], [ 0, %.thread1731.a ], [ 0, %.thread1736 ], [ 0, %.thread1741 ], [ 0, %bb.a ], [ %.1767.lcssa, %bb.d ], [ 0, %rbimpl_intern_const.exit1604 ], [ 0, %rbimpl_intern_const.exit1512 ], [ 0, %rbimpl_intern_const.exit1506 ], [ 0, %rbimpl_intern_const.exit1483 ], [ 0, %rbimpl_intern_const.exit1432 ], [ 0, %rbimpl_intern_const.exit1391 ], [ 0, %rbimpl_intern_const.exit1102 ], [ 0, %rbimpl_intern_const.exit1385 ], [ 0, %rbimpl_intern_const.exit1337 ], [ 0, %rbimpl_intern_const.exit1140 ], [ 0, %rbimpl_intern_const.exit1108 ], [ %.0766.be, %.backedge1787 ], [ %.1767.lcssa, %.critedge ]
  ret i64 %.75
}

declare i64 @rb_usascii_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #3 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #10 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !12
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_delete(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @read_digits(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 1, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.033 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.d ]   ; 4 uses
  %exitcond.not = icmp eq i64 %.033, %1
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.033
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = sext i8 %i.c to i32
  %i.e = add nsw i32 %i.d, -48
  %i.f = icmp ult i32 %i.e, 10
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %.033, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %3
  br i1 %i.h, label %.critedge.thread, label %bb.b, !llvm.loop !23

.critedge:                                        ; preds = %bb.b, %bb.c
  %.033.lcssa = phi i64 [ %1, %bb.b ], [ %.033, %bb.c ] ; 2 uses
  %i.i = icmp eq i64 %.033.lcssa, 0
  br i1 %i.i, label %bb.k, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %.143 = phi i64 [ %.033.lcssa, %.critedge ], [ %3, %bb.d ] ; 10 uses
  %i.j = shl i64 %.143, 2
  %i.k = icmp ult i64 %i.j, 65
  br i1 %i.k, label %.lr.ph.preheader, label %bb.g

.lr.ph.preheader:                                 ; preds = %.critedge.thread
  %xtraiter = and i64 %.143, 3                    ; 3 uses
  %i.l = icmp ult i64 %.143, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.143, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.046 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.03645 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = mul nsw i64 %.046, 10
  %i.n = load i8, ptr %.03645, align 1, !tbaa !14
  %i.o = sext i8 %i.n to i64
  %i.p = add i64 %i.m, -48
  %i.q = add i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.03645, i64 1
  %i.s = mul nsw i64 %i.q, 10
  %i.t = load i8, ptr %i.r, align 1, !tbaa !14
  %i.u = sext i8 %i.t to i64
  %i.v = add i64 %i.s, -48
  %i.w = add i64 %i.v, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %.03645, i64 2
  %i.y = mul nsw i64 %i.w, 10
  %i.z = load i8, ptr %i.x, align 1, !tbaa !14
  %i.aa = sext i8 %i.z to i64
  %i.ab = add i64 %i.y, -48
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.03645, i64 3
  %i.ae = mul nsw i64 %i.ac, 10
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.ag = sext i8 %i.af to i64
  %i.ah = add i64 %i.ae, -48
  %i.ai = add i64 %i.ah, %i.ag                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03645, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.046.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %.03645.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.046.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.046.epil.init, %.lr.ph.epil.preheader ]
  %.03645.epil = phi ptr [ %i.ap, %.lr.ph.epil ], [ %.03645.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ak = mul nsw i64 %.046.epil, 10
  %i.al = load i8, ptr %.03645.epil, align 1, !tbaa !14
  %i.am = sext i8 %i.al to i64
  %i.an = add i64 %i.ak, -48
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03645.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i64 [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ] ; 3 uses
  %i.aq = add i64 %.lcssa, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.aq, -1
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ar = shl nsw i64 %.lcssa, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %._crit_edge
  %i.at = tail call i64 @rb_int2big(i64 noundef %.lcssa) #10
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.as, %bb.e ], [ %i.at, %bb.f ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !12
  br label %bb.k

bb.g:                                             ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !12
  %i.au = add i64 %.143, 1                        ; 3 uses
  %i.av = icmp ult i64 %i.au, 1024
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = alloca i8, i64 %i.au, align 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = add i64 %.143, 8
  %i.ay = lshr i64 %i.ax, 3
  %i.az = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 1024, 0) %i.au, i64 noundef %i.ay) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = phi ptr [ %i.aw, %bb.h ], [ %i.az, %bb.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.143, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.143
  store i8 0, ptr %i.bb, align 1, !tbaa !14
  %i.bc = call i64 @rb_cstr_to_inum(ptr noundef nonnull %i.ba, i32 noundef 10, i32 noundef 0) #10
  store i64 %i.bc, ptr %2, align 8, !tbaa !12
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.k

bb.k:                                             ; preds = %rb_long2num_inline.exit, %.critedge, %bb.j
  %.135 = phi i64 [ %.143, %bb.j ], [ 0, %.critedge ], [ %.143, %rb_long2num_inline.exit ]
  ret i64 %.135
}

declare i64 @rb_rational_new(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #2

declare i64 @rb_reg_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #2

declare void @rb_gc_register_mark_object(i64 noundef) local_unnamed_addr #2

declare i64 @rb_backref_get() local_unnamed_addr #2

declare void @rb_match_busy(i64 noundef) local_unnamed_addr #2

declare i64 @rb_reg_nth_match(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @date_zone_to_diff(i64 noundef) local_unnamed_addr #2

declare void @rb_backref_set(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_cstr_to_inum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #2

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { nounwind allocsize(1,2) }
end_hunk_1
