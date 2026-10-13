Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/str_util?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.wmem_ascii_strdown = private unnamed_addr constant [19 x i8] c"wmem_ascii_strdown\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@g_ascii_table = external local_unnamed_addr constant ptr, align 8
@g_utf8_skip = external local_unnamed_addr constant ptr, align 8
@thousands_grouping_fmt = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@thousands_grouping_fmt_flt = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bits/s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bps\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"bytes/s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Bps\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"packets\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pkts\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"packets/s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pkts/s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"evts\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"events/s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"evts/s\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"flds\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"erlangs\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"wsutil/str_util.c\00", align 1
@__func__.format_units = private unnamed_addr constant [13 x i8] c"format_units\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"assertion \22not reached\22 failed\00", align 1
@__func__.format_size_wmem = private unnamed_addr constant [17 x i8] c"format_size_wmem\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Errno(%d)\00", align 1
@hex = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@EBCDIC_translate_ASCII = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./..23456789:;<=.? ...........<(+|&.........!$*);^-/........|,%_>?..........:#@'=\22.abcdefghi.......jklmnopqr.......~stuvwxyz...[...............]..{ABCDEFGHI......}JKLMNOPQR......\\.STUVWXYZ......0123456789......", align 16
@hex_dump_buffer.binhex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@prefix_parameters_for_flags.si_prefixes = internal constant [13 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 16
@.str.28 = private unnamed_addr constant [3 x i8] c" a\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c" f\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" p\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c" n\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c" \CE\BC\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" m\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c" k\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c" M\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c" G\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c" T\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c" P\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c" E\00", align 1
@prefix_parameters_for_flags.si_parameters = internal unnamed_addr constant { ptr, i32, i32, i32, [4 x i8] } { ptr @prefix_parameters_for_flags.si_prefixes, i32 13, i32 1000, i32 6, [4 x i8] zeroinitializer }, align 8
@prefix_parameters_for_flags.iec_prefixes = internal constant [7 x ptr] [ptr @.str.34, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], align 16
@.str.41 = private unnamed_addr constant [4 x i8] c" Ki\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c" Mi\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" Gi\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" Ti\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" Pi\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" Ei\00", align 1
@prefix_parameters_for_flags.iec_parameters = internal unnamed_addr constant { ptr, i32, i32, i32, [4 x i8] } { ptr @prefix_parameters_for_flags.iec_prefixes, i32 7, i32 1024, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"%'d\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%'ld\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"%'.*f\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@decimal_point = internal unnamed_addr global ptr null, align 8
@switch.table.ws_xton = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias noundef ptr @wmem_strconcat(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.b = add i64 %i.a, 1
  call void @llvm.va_start.p0(ptr nonnull %2)
  %.promoted = load i32, ptr %2, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16
  %.promoted20 = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.f = phi ptr [ %.promoted20, %bb.b ], [ %i.m, %bb.g ] ; 3 uses
  %i.g = phi i32 [ %.promoted, %bb.b ], [ %i.n, %bb.g ] ; 4 uses
  %.011 = phi i64 [ %i.b, %bb.b ], [ %i.r, %bb.g ] ; 2 uses
  %i.h = icmp ult i32 %i.g, 41
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i
  %i.k = add nuw nsw i32 %i.g, 8                  ; 2 uses
  store i32 %i.k, ptr %2, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  store ptr %i.l, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.e ]
  %i.n = phi i32 [ %i.k, %bb.d ], [ %i.g, %bb.e ]
  %i.o = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.e ]
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #25
  %i.r = add i64 %i.q, %.011
  br label %bb.c, !llvm.loop !8

bb.h:                                             ; preds = %bb.f
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.s = call noalias ptr @wmem_alloc(ptr noundef %0, i64 noundef %.011) #26 ; 2 uses
  %i.t = call ptr @g_stpcpy(ptr noundef %i.s, ptr noundef nonnull %1)
  call void @llvm.va_start.p0(ptr nonnull %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %.0 = phi ptr [ %i.t, %bb.h ], [ %i.ae, %bb.m ]
  %i.u = load i32, ptr %2, align 16               ; 3 uses
  %i.v = icmp ult i32 %i.u, 41
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.d, align 16
  %i.x = zext nneg i32 %i.u to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = add nuw nsw i32 %i.u, 8
  store i32 %i.z, ptr %2, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi ptr [ %i.y, %bb.j ], [ %i.aa, %bb.k ]
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not19 = icmp eq ptr %i.ad, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = call ptr @g_stpcpy(ptr noundef %.0, ptr noundef nonnull %i.ad)
  br label %bb.i, !llvm.loop !9

bb.n:                                             ; preds = %bb.l
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.012 = phi ptr [ %i.s, %bb.n ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_stpcpy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias noundef ptr @wmem_strjoin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.a, ptr @.str, ptr %1 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #25
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.d = add i64 %i.c, 1
  call void @llvm.va_start.p0(ptr nonnull %3)
  %.promoted = load i32, ptr %3, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16
  %.promoted25 = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.h = phi ptr [ %.promoted25, %bb.b ], [ %i.o, %bb.g ] ; 3 uses
  %i.i = phi i32 [ %.promoted, %bb.b ], [ %i.p, %bb.g ] ; 4 uses
  %.016 = phi i64 [ %i.d, %bb.b ], [ %i.u, %bb.g ] ; 2 uses
  %i.j = icmp ult i32 %i.i, 41
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr i8, ptr %i.g, i64 %i.k
  %i.m = add nuw nsw i32 %i.i, 8                  ; 2 uses
  store i32 %i.m, ptr %3, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  store ptr %i.n, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.h, %bb.d ], [ %i.n, %bb.e ]
  %i.p = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.e ]
  %i.q = phi ptr [ %i.l, %bb.d ], [ %i.h, %bb.e ]
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.r, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #25
  %i.t = add i64 %.016, %i.b
  %i.u = add i64 %i.t, %i.s
  br label %bb.c, !llvm.loop !10

bb.h:                                             ; preds = %bb.f
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.v = call noalias ptr @wmem_alloc(ptr noundef %0, i64 noundef %.016) #26 ; 2 uses
  %i.w = call ptr @g_stpcpy(ptr noundef %i.v, ptr noundef nonnull %2)
  call void @llvm.va_start.p0(ptr nonnull %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %.0 = phi ptr [ %i.w, %bb.h ], [ %i.ai, %bb.m ]
  %i.x = load i32, ptr %3, align 16               ; 3 uses
  %i.y = icmp ult i32 %i.x, 41
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.f, align 16
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
end_hunk_0
begin_hunk_1_@ascii_strup_inplace:bb.a
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not10 = icmp eq i8 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @g_ascii_table, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.c = phi i8 [ %i.a, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %.011 = phi ptr [ %0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr [2 x i8], ptr %i.b, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 32
  %.not9 = icmp eq i16 %i.g, 0
  %i.h = add i8 %i.c, -32
  %i.i = select i1 %.not9, i8 %i.c, i8 %i.h
  store i8 %i.i, ptr %.011, align 1
  %i.j = getelementptr i8, ptr %.011, i64 1       ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @isprint_string(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @g_ascii_table, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add i32 %.08, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i8 [ %i.a, %.lr.ph ], [ %i.f, %bb.b ]
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ]
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [2 x i8], ptr %i.b, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = and i16 %i.j, 64
  %.not6.not.not = icmp ne i16 %i.k, 0            ; 3 uses
  br i1 %.not6.not.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not6.not.not, %bb.b ], [ %.not6.not.not, %bb.c ]
  ret i1 %.not.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @isprint_utf8_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a       ; 2 uses
  %i.c = tail call i32 @g_utf8_validate(ptr noundef %0, i64 noundef %i.a, ptr noundef null)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp ult ptr %0, %i.b
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr @g_utf8_skip, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0911 = phi ptr [ %0, %.lr.ph ], [ %i.m, %bb.c ] ; 3 uses
  %i.f = tail call i32 @g_utf8_get_char(ptr noundef %.0911) #25
  %i.g = tail call i32 @g_unichar_isprint(i32 noundef %i.f) #27
  %.not10.not.not = icmp ne i32 %i.g, 0           ; 3 uses
  br i1 %.not10.not.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.0911, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %.0911, i64 %i.l   ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.b
  br i1 %i.n, label %bb.b, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not10.not.not, %bb.c ], [ %.not10.not.not, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_utf8_validate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_unichar_isprint(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare i32 @g_utf8_get_char(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @isdigit_string(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @g_ascii_table, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add i32 %.08, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i8 [ %i.a, %.lr.ph ], [ %i.f, %bb.b ]
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ]
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [2 x i8], ptr %i.b, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = and i16 %i.j, 8
  %.not6.not.not = icmp ne i16 %i.k, 0            ; 3 uses
  br i1 %.not6.not.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not6.not.not, %bb.b ], [ %.not6.not.not, %bb.c ]
  ret i1 %.not.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @ws_ascii_strcasestr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #25 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef %1) #25 ; 3 uses
  %.not13 = icmp ult i64 %i.a, %i.b
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.in = phi i64 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.01014 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.c = tail call i32 @g_ascii_strncasecmp(ptr noundef %.01014, ptr noundef %1, i64 noundef %i.b)
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i64 %.in, -1                         ; 2 uses
  %i.e = getelementptr i8, ptr %.01014, i64 1
  %.not = icmp ult i64 %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.09 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.01014, %.lr.ph ]
  ret ptr %.09
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @ws_memrchr(ptr nofree noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @memrchr(ptr noundef %0, i32 noundef %1, i64 noundef %2) #25
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(read) uwtable
define ptr @ws_strchrnul(ptr nofree noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @strchrnul(ptr noundef %0, i32 noundef %1) #25
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @format_units(ptr noundef %0, double noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_strbuf_new(ptr noundef %0, ptr noundef null) ; 7 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 6 uses
  %i.c = and i16 %3, 2
  %.not.i.not = icmp eq i16 %i.c, 0
  %5 = select i1 %.not.i.not, ptr @prefix_parameters_for_flags.si_parameters, ptr @prefix_parameters_for_flags.iec_parameters ; 4 uses
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = load i32, ptr %6, align 8                  ; 8 uses
  %i.d = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @wmem_strbuf_new(ptr noundef null, ptr noundef null) ; 3 uses
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.f, ptr noundef nonnull @.str.47, i32 noundef 22)
  %i.g = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.f)
  %i.h = tail call i32 @g_strcmp0(ptr noundef %i.g, ptr noundef nonnull @.str.48)
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %.str.49..str.51.i = select i1 %i.i, ptr @.str.49, ptr @.str.51
  %.str.50..str.52.i = select i1 %i.i, ptr @.str.50, ptr @.str.52
  store ptr %.str.49..str.51.i, ptr @thousands_grouping_fmt, align 8
  store ptr %.str.50..str.52.i, ptr @thousands_grouping_fmt_flt, align 8
  tail call void @wmem_strbuf_destroy(ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (sub norm) */ i32 408)
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %4, 0
  %i.k = select i1 %i.j, double 1.000000e+01, double 1.000000e+00 ; 2 uses
  %i.l = fcmp olt double %i.b, 1.000000e+00
  %8 = getelementptr i8, ptr %5, i64 12
  %9 = load i32, ptr %8, align 4
  %10 = sitofp i32 %9 to double                   ; 3 uses
  br i1 %i.l, label %.preheader.preheader, label %.preheader85

.preheader.preheader:                             ; preds = %bb.d
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %.loopexit84, label %.lr.ph128

.preheader85:                                     ; preds = %bb.d
  %i.m = fmul nnan double %i.k, %10               ; 2 uses
  %i.n = fcmp ult double %i.b, %i.m
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader85
  %12 = getelementptr i8, ptr %5, i64 8
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, -1                           ; 2 uses
  %15 = icmp eq i32 %7, %14
  br i1 %15, label %.loopexit84, label %bb.f

.preheader:                                       ; preds = %.lr.ph128
  %i.o = icmp eq i32 %i.q, 0
  br i1 %i.o, label %.loopexit84, label %.lr.ph128, !llvm.loop !24

.lr.ph128:                                        ; preds = %.preheader.preheader, %.preheader
  %.06495127 = phi double [ %i.p, %.preheader ], [ %i.b, %.preheader.preheader ]
  %.096126 = phi i32 [ %i.q, %.preheader ], [ %7, %.preheader.preheader ]
  %i.p = fmul double %.06495127, %10              ; 3 uses
  %i.q = add i32 %.096126, -1                     ; 3 uses
  %i.r = fcmp olt double %i.p, %i.k
  br i1 %i.r, label %.preheader, label %.loopexit, !llvm.loop !24

bb.e:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %i.u, %14
  br i1 %i.s, label %.loopexit84, label %bb.f, !llvm.loop !25

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.16592125 = phi double [ %i.t, %bb.e ], [ %i.b, %.lr.ph ]
  %.193124 = phi i32 [ %i.u, %bb.e ], [ %7, %.lr.ph ]
  %i.t = fdiv double %.16592125, %10              ; 3 uses
  %i.u = add i32 %.193124, 1                      ; 3 uses
  %i.v = fcmp ult double %i.t, %i.m
  br i1 %i.v, label %.loopexit, label %bb.e, !llvm.loop !25

.loopexit84:                                      ; preds = %bb.e, %.preheader, %.lr.ph, %.preheader.preheader
  %i.w = add i32 %4, 1
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.2, i32 noundef %i.w, double noundef %1)
  br label %truncate_numeric_strbuf.exit

.loopexit:                                        ; preds = %bb.f, %.lr.ph128, %.preheader85, %bb.c
  %.367.ph = phi double [ %i.b, %bb.c ], [ %i.p, %.lr.ph128 ], [ %i.b, %.preheader85 ], [ %i.t, %bb.f ]
  %.3.ph = phi i32 [ %7, %bb.c ], [ %i.q, %.lr.ph128 ], [ %7, %.preheader85 ], [ %i.u, %bb.f ] ; 3 uses
  %i.x = icmp eq i32 %.3.ph, %7                   ; 2 uses
  %i.y = tail call double @llvm.copysign.f64(double %.367.ph, double %1)
  %i.z = load ptr, ptr @thousands_grouping_fmt_flt, align 8
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef %i.z, i32 noundef %4, double noundef %i.y)
  %i.aa = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.a) ; 2 uses
  %i.ab = load ptr, ptr @decimal_point, align 8   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.ad = tail call ptr @localeconv() #24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  store ptr %i.ae, ptr @decimal_point, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %i.ab, %.loopexit ]
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call ptr @strchr(ptr noundef %i.aa, i32 noundef %i.ah) #25 ; 4 uses
  %.not.i74 = icmp eq ptr %i.ai, null
  br i1 %.not.i74, label %truncate_numeric_strbuf.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.aj = icmp sgt i32 %4, -1
  br i1 %i.aj, label %.lr.ph.preheader.i, label %._crit_edge.i.preheader

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %narrow.i = add nuw i32 %4, 1
  %i.ak = zext i32 %narrow.i to i64
  %scevgep.i = getelementptr i8, ptr %i.ai, i64 %i.ak
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.020.i = phi i32 [ %i.an, %bb.i ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %.01519.i = phi ptr [ %i.ao, %bb.i ], [ %i.ai, %.lr.ph.preheader.i ] ; 3 uses
  %i.al = load i8, ptr %.01519.i, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %._crit_edge.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.an = add nsw i32 %.020.i, -1
  %i.ao = getelementptr i8, ptr %.01519.i, i64 1
  %i.ap = icmp sgt i32 %.020.i, 0
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i.preheader, !llvm.loop !26

._crit_edge.i.preheader:                          ; preds = %bb.i, %.lr.ph.i, %.preheader.i
  %.015.pn.i.ph = phi ptr [ %i.ai, %.preheader.i ], [ %.01519.i, %.lr.ph.i ], [ %scevgep.i, %bb.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %.015.pn.i = phi ptr [ %.1.i, %._crit_edge.i ], [ %.015.pn.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %.1.i = getelementptr i8, ptr %.015.pn.i, i64 -1 ; 3 uses
  %i.aq = load i8, ptr %.1.i, align 1             ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 48
  br i1 %i.ar, label %._crit_edge.i, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %._crit_edge.i
  %.not18.i = icmp eq i8 %i.aq, %i.ag
  %spec.select.i = select i1 %.not18.i, ptr %.1.i, ptr %.015.pn.i
  %i.as = ptrtoint ptr %spec.select.i to i64
  %i.at = ptrtoint ptr %i.aa to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @wmem_strbuf_truncate(ptr noundef %i.a, i64 noundef %i.au)
  br label %truncate_numeric_strbuf.exit

truncate_numeric_strbuf.exit:                     ; preds = %bb.j, %bb.h, %.loopexit84
  %.171 = phi i1 [ false, %.loopexit84 ], [ %i.x, %bb.h ], [ %i.x, %bb.j ] ; 11 uses
  %.4 = phi i32 [ %7, %.loopexit84 ], [ %.3.ph, %bb.h ], [ %.3.ph, %bb.j ]
  %16 = load ptr, ptr %5, align 8
  %i.av = sext i32 %.4 to i64
  %i.aw = getelementptr [8 x i8], ptr %16, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef %i.ax)
  switch i32 %2, label %bb.v [
    i32 0, label %bb.w
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %bb.u
  ]

bb.k:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.ay = select i1 %.171, ptr @.str.3, ptr @.str.4
  br label %.sink.split

bb.l:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.az = select i1 %.171, ptr @.str.5, ptr @.str.6
  br label %.sink.split

bb.m:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.ba = select i1 %.171, ptr @.str.7, ptr @.str.8
  br label %.sink.split

bb.n:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bb = select i1 %.171, ptr @.str.9, ptr @.str.10
  br label %.sink.split

bb.o:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bc = select i1 %.171, ptr @.str.11, ptr @.str.12
  br label %.sink.split

bb.p:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bd = select i1 %.171, ptr @.str.13, ptr @.str.14
  br label %.sink.split

bb.q:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.be = select i1 %.171, ptr @.str.15, ptr @.str.16
  br label %.sink.split

bb.r:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bf = select i1 %.171, ptr @.str.17, ptr @.str.18
  br label %.sink.split

bb.s:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bg = select i1 %.171, ptr @.str.19, ptr @.str.20
  br label %.sink.split

bb.t:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bh = select i1 %.171, ptr @.str.21, ptr @.str.22
  br label %.sink.split

bb.u:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bi = select i1 %.171, ptr @.str.23, ptr @.str.24
  br label %.sink.split

bb.v:                                             ; preds = %truncate_numeric_strbuf.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.25, i64 noundef 604, ptr noundef nonnull @__func__.format_units, ptr noundef nonnull @.str.26) #28
  unreachable

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.sink = phi ptr [ %i.bi, %bb.u ], [ %i.bh, %bb.t ], [ %i.bg, %bb.s ], [ %i.bf, %bb.r ], [ %i.be, %bb.q ], [ %i.bd, %bb.p ], [ %i.bc, %bb.o ], [ %i.bb, %bb.n ], [ %i.ba, %bb.m ], [ %i.az, %bb.l ], [ %i.ay, %bb.k ]
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef nonnull %.sink)
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %truncate_numeric_strbuf.exit
  %i.bj = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.a)
  %i.bk = tail call ptr @g_strchomp(ptr noundef %i.bj)
  ret ptr %i.bk
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #13

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchomp(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @format_size_wmem(ptr noundef %0, i64 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_strbuf_new(ptr noundef %0, ptr noundef null) ; 4 uses
  %i.b = and i16 %3, 2
  %.not.i = icmp eq i16 %i.b, 0
  %4 = select i1 %.not.i, ptr @prefix_parameters_for_flags.si_parameters, ptr @prefix_parameters_for_flags.iec_parameters ; 4 uses
  %i.c = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @wmem_strbuf_new(ptr noundef null, ptr noundef null) ; 3 uses
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.e, ptr noundef nonnull @.str.47, i32 noundef 22)
  %i.f = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.e)
  %i.g = tail call i32 @g_strcmp0(ptr noundef %i.f, ptr noundef nonnull @.str.48)
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %.str.49..str.51.i = select i1 %i.h, ptr @.str.49, ptr @.str.51
  %.str.50..str.52.i = select i1 %i.h, ptr @.str.50, ptr @.str.52
  store ptr %.str.49..str.51.i, ptr @thousands_grouping_fmt, align 8
  store ptr %.str.50..str.52.i, ptr @thousands_grouping_fmt_flt, align 8
  tail call void @wmem_strbuf_destroy(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %5 = getelementptr i8, ptr %4, i64 16
  %6 = load i32, ptr %5, align 8                  ; 4 uses
  %7 = getelementptr i8, ptr %4, i64 12
  %8 = getelementptr i8, ptr %4, i64 8
  %9 = load i32, ptr %8, align 8                  ; 3 uses
  %10 = load i32, ptr %7, align 4                 ; 2 uses
  %i.i = mul i32 %10, 10
  %11 = sext i32 %i.i to i64
  %12 = sext i32 %10 to i64
  %13 = add i32 %6, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %9, i32 %13)
  %i.j = add i32 %smax, -1                        ; 2 uses
  %14 = add i32 %6, 1                             ; 2 uses
  %15 = icmp slt i32 %14, %9
  br i1 %15, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %16 = sdiv i64 9223372036854775807, %11
  br label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.k = add i32 %i.l, 1                          ; 2 uses
  %17 = icmp slt i32 %i.k, %9
  br i1 %17, label %.lr.ph, label %.critedge, !llvm.loop !28

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.l = phi i32 [ %i.k, %bb.d ], [ %14, %.lr.ph.preheader ] ; 2 uses
  %.052 = phi i64 [ %i.n, %bb.d ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.04551 = phi i32 [ %i.l, %bb.d ], [ %6, %.lr.ph.preheader ] ; 2 uses
  %i.m = icmp slt i64 %.052, %16
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.n = mul i64 %.052, %12                       ; 3 uses
  %i.o = mul i64 %i.n, 10
  %.not = icmp slt i64 %1, %i.o
  br i1 %.not, label %..critedge_crit_edge57, label %bb.d, !llvm.loop !28

..critedge_crit_edge57:                           ; preds = %bb.e
  br label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %bb.d, %.lr.ph, %..critedge_crit_edge57, %bb.c
  %.0.lcssa = phi i64 [ 1, %bb.c ], [ %.052, %..critedge_crit_edge57 ], [ %i.n, %bb.d ], [ %.052, %.lr.ph ]
  %.045.lcssa = phi i32 [ %i.j, %bb.c ], [ %.04551, %..critedge_crit_edge57 ], [ %i.j, %bb.d ], [ %.04551, %.lr.ph ] ; 2 uses
  %i.p = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.q = sdiv i64 %1, %.0.lcssa
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef %i.p, i64 noundef %i.q)
  %18 = load ptr, ptr %4, align 8
  %i.r = sext i32 %.045.lcssa to i64
  %i.s = getelementptr [8 x i8], ptr %18, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef %i.t)
  %i.u = icmp eq i32 %.045.lcssa, %6              ; 11 uses
  switch i32 %2, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
  ]

bb.f:                                             ; preds = %.critedge
  %i.v = select i1 %i.u, ptr @.str.3, ptr @.str.4
  br label %.sink.split

bb.g:                                             ; preds = %.critedge
  %i.w = select i1 %i.u, ptr @.str.5, ptr @.str.6
  br label %.sink.split

bb.h:                                             ; preds = %.critedge
  %i.x = select i1 %i.u, ptr @.str.7, ptr @.str.8
  br label %.sink.split

bb.i:                                             ; preds = %.critedge
  %i.y = select i1 %i.u, ptr @.str.9, ptr @.str.10
  br label %.sink.split

bb.j:                                             ; preds = %.critedge
  %i.z = select i1 %i.u, ptr @.str.11, ptr @.str.12
  br label %.sink.split

bb.k:                                             ; preds = %.critedge
  %i.aa = select i1 %i.u, ptr @.str.13, ptr @.str.14
  br label %.sink.split

bb.l:                                             ; preds = %.critedge
  %i.ab = select i1 %i.u, ptr @.str.15, ptr @.str.16
  br label %.sink.split

bb.m:                                             ; preds = %.critedge
  %i.ac = select i1 %i.u, ptr @.str.17, ptr @.str.18
  br label %.sink.split

bb.n:                                             ; preds = %.critedge
  %i.ad = select i1 %i.u, ptr @.str.19, ptr @.str.20
  br label %.sink.split

bb.o:                                             ; preds = %.critedge
  %i.ae = select i1 %i.u, ptr @.str.21, ptr @.str.22
  br label %.sink.split

bb.p:                                             ; preds = %.critedge
  %i.af = select i1 %i.u, ptr @.str.23, ptr @.str.24
  br label %.sink.split

bb.q:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.25, i64 noundef 689, ptr noundef nonnull @__func__.format_size_wmem, ptr noundef nonnull @.str.26) #28
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink = phi ptr [ %i.af, %bb.p ], [ %i.ae, %bb.o ], [ %i.ad, %bb.n ], [ %i.ac, %bb.m ], [ %i.ab, %bb.l ], [ %i.aa, %bb.k ], [ %i.z, %bb.j ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %i.v, %bb.f ]
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef nonnull %.sink)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.critedge
  %i.ag = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.a)
  %i.ah = tail call ptr @g_strchomp(ptr noundef %i.ag)
  ret ptr %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define signext i8 @printable_char_or_period(i8 noundef signext %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @g_ascii_table, align 8
  %i.b = zext i8 %0 to i64
  %i.c = getelementptr [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 64
  %.not = icmp eq i16 %i.e, 0
  %i.f = select i1 %.not, i8 46, i8 %0
  ret i8 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @ws_escape_string_len(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef readonly %1) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]   ; 4 uses
  %i.d = add i64 %i.c, 2
  %spec.select.i = select i1 %3, i64 %i.d, i64 %i.c
  %i.e = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %spec.select.i) ; 5 uses
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext 34)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %bb.e, %bb.n
  %.058.i = phi i64 [ %i.h, %bb.n ], [ 0, %bb.e ] ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %.058.i
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  switch i8 %i.g, label %bb.n [
    i8 7, label %bb.m
    i8 8, label %.sink.split
    i8 12, label %bb.f
    i8 10, label %bb.g
    i8 13, label %bb.h
    i8 9, label %bb.i
    i8 11, label %bb.j
    i8 92, label %bb.k
    i8 0, label %bb.l
    i8 34, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.i:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.j:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.k:                                             ; preds = %.lr.ph.split.split.i, %.lr.ph.split.split.i
  br label %.sink.split

bb.l:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.lr.ph.split.split.i
  %.sink77.i.ph = phi i8 [ 98, %.lr.ph.split.split.i ], [ 97, %bb.m ], [ 48, %bb.l ], [ 102, %bb.f ], [ 110, %bb.g ], [ 114, %bb.h ], [ 116, %bb.i ], [ 118, %bb.j ], [ %i.g, %bb.k ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext 92)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.lr.ph.split.split.i
  %.sink77.i = phi i8 [ %i.g, %.lr.ph.split.split.i ], [ %.sink77.i.ph, %.sink.split ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext %.sink77.i)
  %i.h = add nuw i64 %.058.i, 1                   ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.h, %i.c
  br i1 %exitcond65.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.n, %bb.e
  br i1 %3, label %bb.o, label %escape_string_len.exit

bb.o:                                             ; preds = %._crit_edge.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext 34)
  br label %escape_string_len.exit

escape_string_len.exit:                           ; preds = %._crit_edge.i, %bb.o
  %i.i = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.e)
  ret ptr %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @ws_escape_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef readonly %1) #25 ; 4 uses
  %i.b = add i64 %i.a, 2
  %spec.select.i = select i1 %2, i64 %i.b, i64 %i.a
  %i.c = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %spec.select.i) ; 5 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 34)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %bb.c, %bb.l
  %.058.i = phi i64 [ %i.f, %bb.l ], [ 0, %bb.c ] ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %.058.i
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  switch i8 %i.e, label %bb.l [
    i8 7, label %bb.k
end_hunk_1
begin_hunk_2_@hex_dump_buffer:bb.a
  %i.l = lshr i32 %.05270, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.p, ptr %i.q, align 2
  %i.r = add i32 %.046, -2                        ; 3 uses
  %i.s = shl i32 %i.r, 2
  %i.t = lshr i32 %.05270, %i.s
  %i.u = and i32 %i.t, 15
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.y = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.x, ptr %i.y, align 1
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !45

.unr-lcssa:                                       ; preds = %.preheader
  br i1 %lcmp.mod.not, label %bb.g, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.z = shl i32 %i.r, 2
  %i.aa = add i32 %i.z, -4
  %i.ab = lshr i32 %.05270, %i.aa
  %i.ac = and i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ag, align 1
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.unr-lcssa ], [ %indvars.iv.next.1, %.preheader.epil.preheader ] ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.ai = add nuw i64 %indvars.iv.lcssa, 2
  store i8 32, ptr %i.g, align 1
  %i.aj = add i32 %i.ah, 3                        ; 4 uses
  %i.ak = and i64 %i.ai, 4294967295
  %i.al = getelementptr i8, ptr %i.a, i64 %i.ak
  store i8 32, ptr %i.al, align 1
  %i.am = zext i32 %i.aj to i64                   ; 4 uses
  %i.an = getelementptr i8, ptr %i.a, i64 %i.am
  %i.ao = sub nsw i64 79, %i.am
  %i.ap = icmp ugt i32 %i.aj, 79
  %i.aq = select i1 %i.ap, i64 0, i64 %i.ao       ; 2 uses
  %i.ar = icmp ne i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = call ptr @__memset_chk(ptr noundef %i.an, i32 noundef 32, i64 noundef 68, i64 noundef %i.aq) #24 ; 0 uses
  %i.at = add i32 %i.ah, 53                       ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = add i32 %i.ah, 54
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr i8, ptr %i.a, i64 %i.av
  store i8 124, ptr %i.aw, align 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge77, %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %._crit_edge77 ], [ %i.am, %bb.g ], [ %i.am, %bb.h ]
  %.250 = phi i32 [ %.04872, %._crit_edge77 ], [ %i.aj, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.04773, %._crit_edge77 ], [ %i.at, %bb.g ], [ %i.au, %bb.h ] ; 5 uses
  %i.ax = getelementptr i8, ptr %.05569, i64 1
  %i.ay = load i8, ptr %.05569, align 1           ; 3 uses
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = lshr i32 %i.az, 4
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = add i32 %.250, 1
  %i.bf = getelementptr i8, ptr %i.a, i64 %.pre-phi
  store i8 %i.bd, ptr %i.bf, align 1
  %i.bg = and i32 %i.az, 15
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i32 %i.be to i64
  %i.bl = getelementptr i8, ptr %i.a, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1
  %i.bm = add i32 %.250, 3
  br i1 %.not61, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.045 = phi i8 [ %i.bp, %bb.k ], [ %i.ay, %bb.j ] ; 2 uses
  %i.bq = add i8 %.045, -32
  %or.cond = icmp ult i8 %i.bq, 95
  %narrow = select i1 %or.cond, i8 %.045, i8 46
  %i.br = add i32 %.1, 1                          ; 3 uses
  %i.bs = zext i32 %.1 to i64
  %i.bt = getelementptr i8, ptr %i.a, i64 %i.bs
  store i8 %narrow, ptr %i.bt, align 1
  %i.bu = add nuw i32 %.05171, 1                  ; 5 uses
  %i.bv = and i32 %i.bu, 15
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = icmp eq i32 %i.bu, %3
  %or.cond62 = or i1 %i.bx, %i.bw
  br i1 %or.cond62, label %bb.m, label %bb.p

.thread:                                          ; preds = %bb.i
  %i.by = add nuw i32 %.05171, 1                  ; 4 uses
  %i.bz = and i32 %i.by, 15
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = icmp eq i32 %i.by, %3
  %or.cond6264 = or i1 %i.cb, %i.ca
  br i1 %or.cond6264, label %.thread66, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.d, label %bb.n, label %.thread66

bb.n:                                             ; preds = %bb.m
  %i.cc = add i32 %.1, 2
  %i.cd = zext i32 %i.br to i64
  %i.ce = getelementptr i8, ptr %i.a, i64 %i.cd
  store i8 124, ptr %i.ce, align 1
  br label %.thread66

.thread66:                                        ; preds = %.thread, %bb.n, %bb.m
  %i.cf = phi i32 [ %i.bu, %bb.n ], [ %i.bu, %bb.m ], [ %i.by, %.thread ]
  %.3 = phi i32 [ %i.cc, %bb.n ], [ %i.br, %bb.m ], [ %.1, %.thread ] ; 2 uses
  %i.cg = zext i32 %.3 to i64
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  store i8 0, ptr %i.ch, align 1
  %i.ci = call zeroext i1 %0(ptr noundef %1, ptr noundef nonnull %i.a)
  br i1 %i.ci, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %.thread66
  %i.cj = add i32 %.05270, 16
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.l, %bb.o
  %i.ck = phi i32 [ %i.cf, %bb.o ], [ %i.bu, %bb.l ], [ %i.by, %.thread ] ; 2 uses
  %.153 = phi i32 [ %i.cj, %bb.o ], [ %.05270, %bb.l ], [ %.05270, %.thread ]
  %.4 = phi i32 [ %.3, %bb.o ], [ %i.br, %bb.l ], [ %.1, %.thread ]
  %.not75 = icmp ult i32 %i.ck, %3
  br i1 %.not75, label %bb.f, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.thread66, %bb.p, %bb.e
  %.lcssa68 = phi i1 [ true, %bb.e ], [ true, %bb.p ], [ false, %.thread66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.lcssa68
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localeconv() local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_truncate(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #13

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_unichar_validate(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_unichar_isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { allocsize(1) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn }
attributes #29 = { allocsize(2) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, i1 false, !"memcpy.inline"}
!32 = distinct !{!32, !31, !"memcpy.inline: argument 1"}
!33 = distinct !{!33, !31, !"memcpy.inline: argument 0"}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, i1 false, !"memcpy.inline"}
!37 = distinct !{!37, !36, !"memcpy.inline: argument 1"}
!38 = distinct !{!38, !36, !"memcpy.inline: argument 0"}
!39 = !{!33, !32}
!40 = !{!38, !37}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
end_hunk_2
