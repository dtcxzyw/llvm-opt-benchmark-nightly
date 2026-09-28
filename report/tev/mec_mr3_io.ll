Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mec_mr3_io?download=true
inline.NumInlined: 44
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream = type { ptr, ptr, ptr, ptr }
%struct.app = type { ptr, ptr, ptr }
%struct.mec_mr3_info = type { i32, i32 }
%struct.mec_mr3_item_data = type { i32, ptr, i64 }
%struct.buffer136 = type { i32, [65 x i8], [65 x i8], i16 }
%struct.buffer436 = type { i32, [17 x i8], [9 x i8], [14 x i8], [29 x i8], [256 x i8], [65 x i8], [17 x i8], [3 x i8], [18 x i8], i32 }
%struct.buffer516 = type { [65 x i8], [21 x i8], [256 x i8], [17 x i8], [65 x i8], [65 x i8], [6 x i32] }
%struct.buffer325 = type { [5 x [65 x i8]] }
%struct.str40 = type { i32, [7 x [48 x i8]] }
%struct.buffer19 = type { [3 x i8], i8, i8, i8, i8, [9 x i8], i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c" %%\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%% \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SHIFT-JIS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"EUC-JP\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"{%u,%s,%s,%hu}\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"shift-jis\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"(%01x,%05x) %c%04x \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"|NotImplemented|\00", align 1
@print.buf = internal global [512 x i8] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [42 x i8] c"Missing: {0x%02x, 0x%08x, 0x%08x, \22\22}, //\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c" # %u,%u %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"{%.*s : %s:%s}\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\22%.*s\22\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"euc-jp\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%u:[\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"{%u;%s;%s;%s;%s;%.*s;%s;%s;%s;%u}\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"{%s;%s;%s;%s;%s;%.*s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"[%s:%s]\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@switch.table.read_group.30 = private unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_string_as_hex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %.not4 = icmp eq i8 %i.b, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i8 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ]
  %.05 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ]
  %i.d = zext i8 %i.c to i32
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9     ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @unicode_type_as_string(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_buffer136(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.e = load i16, ptr %i.d, align 2, !tbaa !14
  %i.f = zext i16 %i.e to i32
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.f) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @mec_mr3_print(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.stream, align 8             ; 8 uses
  %3 = alloca %struct.app, align 8                ; 10 uses
  %4 = alloca %struct.mec_mr3_info, align 4       ; 4 uses
  %5 = alloca %struct.mec_mr3_item_data, align 8  ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %2, ptr %3, align 8, !tbaa !18
  %i.d = call noalias ptr @iconv_open(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.g, align 8, !tbaa !22
  store ptr %0, ptr %2, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @stream_read, ptr %i.j, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.c

.preheader:                                       ; preds = %bb.e
  br i1 %i.ab, label %.lr.ph.preheader, label %.critedge51

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = add i32 %.13976, -1                      ; 2 uses
  %.not4785 = icmp eq i32 %i.l, 0
  br i1 %.not4785, label %.lr.ph._crit_edge, label %.lr.ph87

bb.c:                                             ; preds = %bb.b, %bb.e
  %.val54 = phi ptr [ %2, %bb.b ], [ %.val54.pre, %bb.e ] ; 3 uses
  %.060 = phi i8 [ 0, %bb.b ], [ %i.z, %bb.e ]    ; 2 uses
  %.03859 = phi i32 [ 1, %bb.b ], [ %.13976, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.m = getelementptr inbounds nuw i8, ptr %.val54, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = call i64 %i.n(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef %.val54) #14, !inline_history !31
  %i.p = icmp ne i64 %i.o, 1
  %i.q = load i32, ptr %i.b, align 4              ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %or.cond.not.not83 = select i1 %i.p, i1 true, i1 %i.r ; 2 uses
  %i.s = icmp ne i8 %.060, 5
  %or.cond4.not = or i1 %or.cond.not.not83, %i.s  ; 2 uses
  br i1 %or.cond4.not, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.u = call i64 %i.t(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.val54) #14, !inline_history !31
  %i.v = icmp eq i64 %i.u, 1
  %i.w = load i32, ptr %i.b, align 4              ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  %or.cond6.not = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond6.not, label %bb.e, label %.preheader.thread

bb.d:                                             ; preds = %bb.c
  %i.y = add i8 %.060, 1
  br i1 %or.cond.not.not83, label %.preheader.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split
  %i.z = phi i8 [ 6, %.split ], [ %i.y, %bb.d ]   ; 3 uses
  %.13976 = phi i32 [ %i.q, %.split ], [ %.03859, %bb.d ] ; 2 uses
  %i.aa = phi i32 [ %i.w, %.split ], [ %i.q, %bb.d ]
  %i.ab = call fastcc zeroext i1 @read_group(ptr noundef %3, i8 noundef zeroext %i.z, i32 noundef %i.aa, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.val54.pre = load ptr, ptr %3, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ac = and i1 %i.ab, %or.cond4.not
  br i1 %i.ac, label %bb.c, label %.preheader, !llvm.loop !32

.preheader.thread:                                ; preds = %bb.d, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.critedge51

.lr.ph:                                           ; preds = %bb.f
  %i.ad = add i32 %i.ae, -1                       ; 2 uses
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %.lr.ph._crit_edge, label %.lr.ph87, !llvm.loop !33

.lr.ph87:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi i32 [ %i.ad, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %.16286 = phi i8 [ %i.ai, %.lr.ph ], [ %i.z, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.val52 = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val52, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.ah = call i64 %i.ag(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef %.val52) #14, !inline_history !31
  %.not48 = icmp eq i64 %i.ah, 1
  br i1 %.not48, label %bb.f, label %.thread78

.thread78:                                        ; preds = %.lr.ph87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.critedge51

bb.f:                                             ; preds = %.lr.ph87
  %i.ai = add i8 %.16286, 1                       ; 2 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !28
  %i.ak = call fastcc zeroext i1 @read_group(ptr noundef %3, i8 noundef zeroext %i.ai, i32 noundef %i.aj, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br i1 %i.ak, label %.lr.ph, label %.critedge51, !llvm.loop !33

.critedge51:                                      ; preds = %bb.f, %.thread78, %.preheader.thread, %.preheader
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !29
  call void @free(ptr noundef %i.al) #14
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.an = call i32 @iconv_close(ptr noundef %i.am) #14 ; 0 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !20
  call void @free(ptr noundef %i.ao) #14
  br label %write_trailer.exit.thread

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !29
  call void @free(ptr noundef %i.ap) #14
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ar = call i32 @iconv_close(ptr noundef %i.aq) #14 ; 0 uses
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !20
  call void @free(ptr noundef %i.as) #14
  %.val55 = load ptr, ptr %3, align 8, !tbaa !18  ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val55, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %.val55, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %write_trailer.exit.thread, label %write_trailer.exit

write_trailer.exit:                               ; preds = %.lr.ph._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ay = getelementptr inbounds nuw i8, ptr %.val55, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.ba = call i64 %i.az(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %.val55) #14, !inline_history !34
  %.not.i = icmp eq i64 %i.ba, 1
  %i.bb = load i8, ptr %i.a, align 1
  %.not4.i = icmp eq i8 %i.bb, 0
  %.0.i = select i1 %.not.i, i1 %.not4.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.0.i, label %write_trailer.exit.write_trailer.exit.thread_crit_edge, label %write_trailer.exit.thread

write_trailer.exit.write_trailer.exit.thread_crit_edge: ; preds = %write_trailer.exit
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !22
  %.pre67 = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bc = icmp uge ptr %.pre, %.pre67
  br label %write_trailer.exit.thread

write_trailer.exit.thread:                        ; preds = %.lr.ph._crit_edge, %write_trailer.exit.write_trailer.exit.thread_crit_edge, %write_trailer.exit, %.critedge51
  %.043 = phi i1 [ false, %.critedge51 ], [ false, %write_trailer.exit ], [ %i.bc, %write_trailer.exit.write_trailer.exit.thread_crit_edge ], [ true, %.lr.ph._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %write_trailer.exit.thread
  %.144 = phi i1 [ %.043, %write_trailer.exit.thread ], [ false, %bb.a ]
  ret i1 %.144
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @read_group(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.buffer136, align 4          ; 7 uses
  %6 = alloca %struct.buffer436, align 4          ; 13 uses
  %7 = alloca %struct.buffer516, align 4          ; 9 uses
  %8 = alloca %struct.buffer325, align 1          ; 8 uses
  %9 = alloca %struct.str40, align 4              ; 15 uses
  %10 = alloca %struct.buffer19, align 1          ; 12 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [5 x i32], align 16               ; 9 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = zext i8 %1 to i32                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 65
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 130
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 195
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 260
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 424 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 65
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 86
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 342
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 359
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 329 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 30
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 394
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 411
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 414
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 432
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 69
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 134
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 100 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 148 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 196 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 244 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 292 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 18
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 3
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 5
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 7 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.029 = phi i32 [ 0, %.lr.ph ], [ %i.kx, %.critedge ]
  %.val = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = call i64 %i.av(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %.val) #14, !inline_history !36
  %.not.i = icmp eq i64 %i.aw, 1
  br i1 %.not.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val20.i, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.az = call i64 %i.ay(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %.val20.i) #14, !inline_history !37
  %.not.i19 = icmp eq i64 %i.az, 1
  br i1 %.not.i19, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %.val19.i = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val19.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !24
  %i.bc = call i64 %i.bb(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 5, ptr noundef %.val19.i) #14, !inline_history !37
  %.not15.i = icmp eq i64 %i.bc, 5
  br i1 %.not15.i, label %bb.e, label %read_data.exit.thread24

bb.e:                                             ; preds = %bb.d
  %i.bd = load i128, ptr %i.d, align 16
  %i.be = xor i128 %i.bd, 221360928884514619392
  %i.bf = getelementptr i8, ptr %i.d, i64 16
  %i.bg = load i32, ptr %i.bf, align 16
  %i.bh = zext i32 %i.bg to i128
  %i.bi = or i128 %i.be, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %compute_signature.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = load i32, ptr %i.d, align 16, !tbaa !28
  %i.bn = load i32, ptr %i.e, align 8
  %i.bo = icmp eq i32 %i.bn, 12
  %i.bp = load i32, ptr %i.f, align 4
  %.fr.i.i = freeze i32 %i.bp
  %i.bq = or i32 %.fr.i.i, %i.bm
  %i.br = icmp eq i32 %i.bq, 0
  %or.cond9.i = select i1 %i.br, i1 %i.bo, i1 false
  br i1 %or.cond9.i, label %compute_signature.exit.i, label %read_data.exit.thread24

compute_signature.exit.i:                         ; preds = %bb.f, %bb.e
  %i.bs = load i32, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !43
  %.not.i.i = icmp ult i64 %i.bu, %i.bt
  br i1 %.not.i.i, label %bb.g, label %compute_signature.exit._crit_edge.i

compute_signature.exit._crit_edge.i:              ; preds = %compute_signature.exit.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  br label %read_data.exit

bb.g:                                             ; preds = %compute_signature.exit.i
  %i.bv = icmp ult i32 %i.bs, 4096
  %i.bw = shl nuw nsw i64 %i.bt, 1
  %i.bx = select i1 %i.bv, i64 4096, i64 %i.bw    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.by = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 64, i64 noundef range(i64 0, 8589934591) %i.bx) #14
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cb = select i1 %i.bz, ptr %i.ca, ptr null    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.cc = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.cc, null
  br i1 %.not19.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.cc) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20.i.i = icmp eq ptr %i.cb, null
  br i1 %.not20.i.i, label %read_data.exit.thread24, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.cb, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  store i64 %i.bx, ptr %i.g, align 8, !tbaa !43
  %.pre10.i = load i32, ptr %4, align 8, !tbaa !27
  %.pre11.i = zext i32 %.pre10.i to i64
  br label %read_data.exit

read_data.exit.thread24:                          ; preds = %bb.d, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %._crit_edge

read_data.exit:                                   ; preds = %compute_signature.exit._crit_edge.i, %bb.j
  %.pre-phi.i = phi i64 [ %i.bt, %compute_signature.exit._crit_edge.i ], [ %.pre11.i, %bb.j ]
  %i.cd = phi ptr [ %.pre.i, %compute_signature.exit._crit_edge.i ], [ %i.ca, %bb.j ]
  %.val.i = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.cg = call i64 %i.cf(ptr noundef %i.cd, i64 noundef 1, i64 noundef range(i64 0, 4294967296) %.pre-phi.i, ptr noundef %.val.i) #14, !inline_history !37
  %i.ch = load i32, ptr %4, align 8, !tbaa !27
  %i.ci = zext i32 %i.ch to i64
  %.not18.i = icmp eq i64 %i.cg, %i.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %.not18.i, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %read_data.exit
  %i.cj = load i32, ptr %3, align 4, !tbaa !45
  %i.ck = call ptr @get_mec_mr3_info_name(i8 noundef zeroext %1, i32 noundef %i.cj) #14 ; 2 uses
  %i.cl = load i32, ptr %i.h, align 4, !tbaa !46  ; 2 uses
  %.not.i20 = icmp ult i32 %i.cl, 16777216
  %i.cm = load i32, ptr %3, align 4, !tbaa !45
  %i.cn = select i1 %.not.i20, i32 32, i32 95
  %i.co = lshr i32 %i.cl, 8
  %i.cp = and i32 %i.co, 65535
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.i, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef %i.cp) ; 0 uses
  %i.cr = load i32, ptr %i.h, align 4, !tbaa !46
  switch i32 %i.cr, label %bb.ao [
    i32 768, label %bb.l
    i32 1280, label %bb.t
    i32 1536, label %bb.v
    i32 3584, label %bb.x
    i32 2048000, label %bb.y
    i32 2048256, label %bb.z
    i32 2048768, label %bb.z
    i32 2049024, label %bb.z
    i32 2049536, label %bb.z
    i32 -16765952, label %switch.lookup72
    i32 -16775168, label %bb.ae
    i32 -16768000, label %bb.ag
    i32 -16766976, label %bb.ai
    i32 -16766720, label %bb.ak
    i32 -16776192, label %bb.am
    i32 -16766464, label %bb.an
    i32 -16768256, label %print_iso.exit.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 5 uses
  %i.ct = load i32, ptr %4, align 8, !tbaa !27    ; 4 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = icmp ugt i32 %i.ct, 2
  br i1 %i.cv, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.cw = load i16, ptr %i.cs, align 1
  %i.cx = xor i16 %i.cw, -33
  %i.cy = getelementptr i8, ptr %i.cs, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = xor i16 %i.da, 121
  %i.dc = or i16 %i.cx, %i.db
  %i.dd = icmp ne i16 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.dg = icmp ult i32 %i.ct, 19
  br i1 %i.dg, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %10, ptr noundef nonnull align 1 dereferenceable(19) %i.cs, i64 19, i1 false)
  %i.dh = load i8, ptr %i.am, align 1, !tbaa !48
  %i.di = icmp ne i8 %i.dh, 1
  %i.dj = load i8, ptr %i.an, align 1
  %i.dk = icmp ne i8 %i.dj, 0
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dk
  %i.dl = load i8, ptr %i.ao, align 1
  %i.dm = icmp ne i8 %i.dl, 2
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.dm
  %i.dn = load i8, ptr %i.ap, align 1
  %i.do = icmp ne i8 %i.dn, 0
  %or.cond11.i.i = select i1 %or.cond7.i.i, i1 true, i1 %i.do
  br i1 %or.cond11.i.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = load i8, ptr %i.aq, align 1, !tbaa !49
  %i.dq = zext i8 %i.dp to i64
  %i.dr = add nsw i64 %i.cu, -4
  %i.ds = icmp ne i64 %i.dr, %i.dq
  %i.dt = load i8, ptr %i.ar, align 1
  %i.du = icmp ne i8 %i.dt, 9
  %or.cond15.i.i = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %or.cond15.i.i, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = add nsw i64 %i.cu, -19                  ; 2 uses
  %i.dw = load i8, ptr %i.as, align 1, !tbaa !50
  %i.dx = zext i8 %i.dw to i64
  %.not.i.i22 = icmp eq i64 %i.dv, %i.dx
  br i1 %.not.i.i22, label %bb.r, label %.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.dy = load i64, ptr %i.at, align 1
  %i.dz = xor i64 %i.dy, 3258694320958427977
  %i.ea = getelementptr i8, ptr %i.at, i64 8
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.ec, 49
  %i.ee = or i64 %i.dz, %i.ed
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %.not35.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not35.i.i, label %switch.lookup, label %.thread.i.i

switch.lookup:                                    ; preds = %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 19
  %i.ei = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.eh, i64 noundef %i.dv)
  %i.ej = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.ek = zext nneg i32 %i.ei to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.ek
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 9, ptr noundef nonnull %i.at, ptr noundef nonnull %switch.load, ptr noundef %i.ej) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %print_iso.exit.i

.thread.i.i:                                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %print_iso.exit.i

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.em = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ct, ptr noundef %i.cs) ; 0 uses
  br label %print_iso.exit.i

bb.t:                                             ; preds = %bb.k
  %i.en = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.eo = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i.i = call i32 @putchar(i32 91)      ; 0 uses
  %i.ep = icmp sgt i32 %i.eo, 3
  br i1 %i.ep, label %bb.u, label %print_float32_vm2n.exit.i

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr i32 %i.eo, 2
  %wide.trip.count.i.i.i = zext nneg i32 %i.eq to i64
  %.0.copyload.peel.pre.i.i.i = load float, ptr %i.en, align 4
  %i.er = fpext float %.0.copyload.peel.pre.i.i.i to double
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.er) ; 0 uses
  %i.et = and i32 %i.eo, 2147483644
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.et, 4
  br i1 %exitcond.peel.not.i.i.i, label %print_float32_vm2n.exit.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %bb.u, %.lr.ph.peel.next.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.peel.next.i.i.i ], [ 1, %bb.u ] ; 2 uses
  %putchar7.i.i.i = call i32 @putchar(i32 44)     ; 0 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i.i.i
  %.0.copyload.i.i.i = load float, ptr %i.eu, align 4
  %i.ev = fpext float %.0.copyload.i.i.i to double
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.ev) ; 0 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %print_float32_vm2n.exit.i, label %.lr.ph.peel.next.i.i.i, !llvm.loop !38

print_float32_vm2n.exit.i:                        ; preds = %.lr.ph.peel.next.i.i.i, %bb.u, %bb.t
  %putchar6.i.i.i = call i32 @putchar(i32 93)     ; 0 uses
  br label %print_iso.exit.i

bb.v:                                             ; preds = %bb.k
  %i.ex = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.ey = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i58.i = call i32 @putchar(i32 91)    ; 0 uses
  %i.ez = icmp sgt i32 %i.ey, 3
  br i1 %i.ez, label %bb.w, label %print_float32_vm3n.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fa = lshr i32 %i.ey, 2
  %wide.trip.count.i.i60.i = zext nneg i32 %i.fa to i64
  %.0.copyload.peel.pre.i.i61.i = load float, ptr %i.ex, align 4
  %i.fb = fpext float %.0.copyload.peel.pre.i.i61.i to double
  %i.fc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.fb) ; 0 uses
  %i.fd = and i32 %i.ey, 2147483644
  %exitcond.peel.not.i.i62.i = icmp eq i32 %i.fd, 4
  br i1 %exitcond.peel.not.i.i62.i, label %print_float32_vm3n.exit.i, label %.lr.ph.peel.next.i.i63.i

.lr.ph.peel.next.i.i63.i:                         ; preds = %bb.w, %.lr.ph.peel.next.i.i63.i
  %indvars.iv.i.i64.i = phi i64 [ %indvars.iv.next.i.i67.i, %.lr.ph.peel.next.i.i63.i ], [ 1, %bb.w ] ; 2 uses
  %putchar7.i.i65.i = call i32 @putchar(i32 44)   ; 0 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i.i64.i
  %.0.copyload.i.i66.i = load float, ptr %i.fe, align 4
  %i.ff = fpext float %.0.copyload.i.i66.i to double
  %i.fg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.ff) ; 0 uses
  %indvars.iv.next.i.i67.i = add nuw nsw i64 %indvars.iv.i.i64.i, 1 ; 2 uses
  %exitcond.not.i.i68.i = icmp eq i64 %indvars.iv.next.i.i67.i, %wide.trip.count.i.i60.i
  br i1 %exitcond.not.i.i68.i, label %print_float32_vm3n.exit.i, label %.lr.ph.peel.next.i.i63.i, !llvm.loop !38

print_float32_vm3n.exit.i:                        ; preds = %.lr.ph.peel.next.i.i63.i, %bb.w, %bb.v
  %putchar6.i.i59.i = call i32 @putchar(i32 93)   ; 0 uses
  br label %print_iso.exit.i

bb.x:                                             ; preds = %bb.k
  %i.fh = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  %i.fi = load i32, ptr %4, align 8, !tbaa !27
  %i.fj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.fi, ptr noundef %i.fh) ; 0 uses
  br label %print_iso.exit.i

bb.y:                                             ; preds = %bb.k
  %i.fk = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.fl = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i = call i32 @putchar(i32 123)       ; 0 uses
  %i.fm = udiv i32 %i.fl, 340
  %.zext.i.i = zext nneg i32 %i.fm to i64
  %.not23.i.i = icmp ult i32 %i.fl, 340
  br i1 %.not23.i.i, label %print_str40.exit.i, label %switch.lookup48

switch.lookup48:                                  ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %9, ptr noundef nonnull readonly align 1 dereferenceable(340) %i.fk, i64 340, i1 false)
  %.pre.i.i = load i32, ptr %9, align 4, !tbaa !53
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %.pre.i.i) ; 0 uses
  %i.fo = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.af, i64 noundef 48)
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.fq = zext nneg i32 %i.fo to i64
  %switch.gep49 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.fq
  %switch.load50 = load ptr, ptr %switch.gep49, align 8
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load50, ptr noundef %i.fp) ; 0 uses
  %putchar20.1.peel.i.i = call i32 @putchar(i32 44) ; 0 uses
  %i.fs = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, i64 noundef 48)
  %i.ft = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.fu = zext nneg i32 %i.fs to i64
  %switch.gep76 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.fu
  %switch.load77 = load ptr, ptr %switch.gep76, align 8
  %i.fv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load77, ptr noundef %i.ft) ; 0 uses
  %putchar20.2.peel.i.i = call i32 @putchar(i32 44) ; 0 uses
  %i.fw = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef 48)
  %i.fx = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.fy = zext nneg i32 %i.fw to i64
  %switch.gep52 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.fy
  %switch.load53 = load ptr, ptr %switch.gep52, align 8
  %i.fz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load53, ptr noundef %i.fx) ; 0 uses
  %putchar20.3.peel.i.i = call i32 @putchar(i32 44) ; 0 uses
  %i.ga = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i64 noundef 48)
  %i.gb = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.gc = zext nneg i32 %i.ga to i64
  %switch.gep88 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.gc
  %switch.load89 = load ptr, ptr %switch.gep88, align 8
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load89, ptr noundef %i.gb) ; 0 uses
  %putchar20.4.peel.i.i = call i32 @putchar(i32 44) ; 0 uses
  %i.ge = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i64 noundef 48)
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.gg = zext nneg i32 %i.ge to i64
  %switch.gep55 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.gg
  %switch.load56 = load ptr, ptr %switch.gep55, align 8
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load56, ptr noundef %i.gf) ; 0 uses
  %putchar20.5.peel.i.i = call i32 @putchar(i32 44) ; 0 uses
  %i.gi = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i64 noundef 48)
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.gk = zext nneg i32 %i.gi to i64
  %switch.gep79 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.gk
  %switch.load80 = load ptr, ptr %switch.gep79, align 8
  %i.gl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load80, ptr noundef %i.gj) ; 0 uses
  %putchar20.6.peel.i.i = call i32 @putchar(i32 44) ; 0 uses
  %i.gm = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef 48)
  %i.gn = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.go = zext nneg i32 %i.gm to i64
  %switch.gep58 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.go
  %switch.load59 = load ptr, ptr %switch.gep58, align 8
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load59, ptr noundef %i.gn) ; 0 uses
  %putchar18.peel.i.i = call i32 @putchar(i32 93) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %exitcond.peel.not.i.i = icmp ult i32 %i.fl, 680
  br i1 %exitcond.peel.not.i.i, label %print_str40.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %switch.lookup48, %.peel.next.i.i
  %.01522.i.i = phi i64 [ %i.hw, %.peel.next.i.i ], [ 1, %switch.lookup48 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.gq = mul nuw nsw i64 %.01522.i.i, 340
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %9, ptr noundef nonnull readonly align 1 dereferenceable(340) %i.gr, i64 340, i1 false)
  %putchar17.i.i = call i32 @putchar(i32 44)      ; 0 uses
  %i.gs = load i32, ptr %9, align 4, !tbaa !53
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.gs) ; 0 uses
  %i.gu = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.af, i64 noundef 48)
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.gw = zext nneg i32 %i.gu to i64
  %switch.gep61 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.gw
  %switch.load62 = load ptr, ptr %switch.gep61, align 8
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load62, ptr noundef %i.gv) ; 0 uses
  %putchar20.1.i.i = call i32 @putchar(i32 44)    ; 0 uses
  %i.gy = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, i64 noundef 48)
  %i.gz = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.ha = zext nneg i32 %i.gy to i64
  %switch.gep82 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.ha
  %switch.load83 = load ptr, ptr %switch.gep82, align 8
  %i.hb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load83, ptr noundef %i.gz) ; 0 uses
  %putchar20.2.i.i = call i32 @putchar(i32 44)    ; 0 uses
  %i.hc = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef 48)
  %i.hd = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.he = zext nneg i32 %i.hc to i64
  %switch.gep64 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.he
  %switch.load65 = load ptr, ptr %switch.gep64, align 8
  %i.hf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load65, ptr noundef %i.hd) ; 0 uses
  %putchar20.3.i.i = call i32 @putchar(i32 44)    ; 0 uses
  %i.hg = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i64 noundef 48)
  %i.hh = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.hi = zext nneg i32 %i.hg to i64
  %switch.gep91 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.hi
  %switch.load92 = load ptr, ptr %switch.gep91, align 8
  %i.hj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load92, ptr noundef %i.hh) ; 0 uses
  %putchar20.4.i.i = call i32 @putchar(i32 44)    ; 0 uses
  %i.hk = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i64 noundef 48)
  %i.hl = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.hm = zext nneg i32 %i.hk to i64
  %switch.gep67 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.hm
  %switch.load68 = load ptr, ptr %switch.gep67, align 8
  %i.hn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load68, ptr noundef %i.hl) ; 0 uses
  %putchar20.5.i.i = call i32 @putchar(i32 44)    ; 0 uses
  %i.ho = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i64 noundef 48)
  %i.hp = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.hq = zext nneg i32 %i.ho to i64
  %switch.gep85 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.hq
  %switch.load86 = load ptr, ptr %switch.gep85, align 8
  %i.hr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load86, ptr noundef %i.hp) ; 0 uses
  %putchar20.6.i.i = call i32 @putchar(i32 44)    ; 0 uses
  %i.hs = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef 48)
  %i.ht = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.hu = zext nneg i32 %i.hs to i64
  %switch.gep70 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.hu
  %switch.load71 = load ptr, ptr %switch.gep70, align 8
  %i.hv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %switch.load71, ptr noundef %i.ht) ; 0 uses
  %putchar18.i.i = call i32 @putchar(i32 93)      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.hw = add nuw nsw i64 %.01522.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hw, %.zext.i.i
  br i1 %exitcond.not.i.i, label %print_str40.exit.i, label %.peel.next.i.i, !llvm.loop !39

print_str40.exit.i:                               ; preds = %.peel.next.i.i, %switch.lookup48, %bb.y
  %putchar16.i.i = call i32 @putchar(i32 125)     ; 0 uses
  br label %print_iso.exit.i

bb.z:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.hx = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 4 uses
  %i.hy = load i32, ptr %4, align 8, !tbaa !27
  switch i32 %i.hy, label %print_iso.exit.i [
    i32 136, label %bb.aa
    i32 436, label %bb.ab
    i32 516, label %bb.ac
    i32 325, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %5, ptr noundef nonnull readonly align 1 dereferenceable(136) %i.hx, i64 136, i1 false)
  %i.hz = load i32, ptr %5, align 4, !tbaa !13
  %i.ia = load i16, ptr %i.ae, align 2, !tbaa !14
  %i.ib = zext i16 %i.ia to i32
  %i.ic = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.hz, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, i32 noundef %i.ib) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %print_iso.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(436) %6, ptr noundef nonnull readonly align 1 dereferenceable(436) %i.hx, i64 436, i1 false)
  %i.id = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 65) #15
  %i.ie = trunc i64 %i.id to i32
  %i.if = load i32, ptr %6, align 4, !tbaa !55
  %i.ig = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ih = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.if, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i32 noundef %i.ie, ptr noundef nonnull %i.t, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i32 noundef %i.ig) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %print_iso.exit.i

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull readonly align 1 dereferenceable(516) %i.hx, i64 516, i1 false)
  %i.ii = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 65) #15
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %7, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i32 noundef %i.ij, ptr noundef nonnull %i.o) ; 0 uses
  %putchar.i.i70.i = call i32 @putchar(i32 125)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %print_iso.exit.i

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(325) %8, ptr noundef nonnull readonly align 1 dereferenceable(325) %i.hx, i64 325, i1 false)
  %putchar.i14.i.i = call i32 @putchar(i32 123)   ; 0 uses
  %i.il = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %8) ; 0 uses
  %putchar5.1.i.i.i = call i32 @putchar(i32 59)   ; 0 uses
  %i.im = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.k) ; 0 uses
  %putchar5.2.i.i.i = call i32 @putchar(i32 59)   ; 0 uses
  %i.in = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.l) ; 0 uses
  %putchar5.3.i.i.i = call i32 @putchar(i32 59)   ; 0 uses
  %i.io = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.m) ; 0 uses
  %putchar5.4.i.i.i = call i32 @putchar(i32 59)   ; 0 uses
  %i.ip = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.n) ; 0 uses
  %putchar4.i.i.i = call i32 @putchar(i32 125)    ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %print_iso.exit.i

switch.lookup72:                                  ; preds = %bb.k
  %i.iq = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  %i.ir = load i32, ptr %4, align 8, !tbaa !27
  %i.is = zext i32 %i.ir to i64
  %i.it = call fastcc i32 @guess_unicode_and_convert(ptr noundef nonnull %0, ptr noundef %i.iq, i64 noundef range(i64 0, 4294967296) %i.is)
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.iv = zext nneg i32 %i.it to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.read_group.30, i64 %i.iv
  %switch.load74 = load ptr, ptr %switch.gep73, align 8
  %i.iw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull %switch.load74, ptr noundef %i.iu) ; 0 uses
  br label %print_iso.exit.i

bb.ae:                                            ; preds = %bb.k
  %i.ix = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.iy = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i72.i = call i32 @putchar(i32 91)    ; 0 uses
  %i.iz = icmp sgt i32 %i.iy, 3
  br i1 %i.iz, label %bb.af, label %print_float32.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ja = lshr i32 %i.iy, 2
  %wide.trip.count.i.i74.i = zext nneg i32 %i.ja to i64
  %.0.copyload.peel.pre.i.i75.i = load float, ptr %i.ix, align 4
  %i.jb = fpext float %.0.copyload.peel.pre.i.i75.i to double
  %i.jc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.jb) ; 0 uses
  %i.jd = and i32 %i.iy, 2147483644
  %exitcond.peel.not.i.i76.i = icmp eq i32 %i.jd, 4
  br i1 %exitcond.peel.not.i.i76.i, label %print_float32.exit.i, label %.lr.ph.peel.next.i.i77.i

.lr.ph.peel.next.i.i77.i:                         ; preds = %bb.af, %.lr.ph.peel.next.i.i77.i
  %indvars.iv.i.i78.i = phi i64 [ %indvars.iv.next.i.i81.i, %.lr.ph.peel.next.i.i77.i ], [ 1, %bb.af ] ; 2 uses
  %putchar7.i.i79.i = call i32 @putchar(i32 44)   ; 0 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.i.i78.i
  %.0.copyload.i.i80.i = load float, ptr %i.je, align 4
  %i.jf = fpext float %.0.copyload.i.i80.i to double
  %i.jg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.jf) ; 0 uses
  %indvars.iv.next.i.i81.i = add nuw nsw i64 %indvars.iv.i.i78.i, 1 ; 2 uses
  %exitcond.not.i.i82.i = icmp eq i64 %indvars.iv.next.i.i81.i, %wide.trip.count.i.i74.i
  br i1 %exitcond.not.i.i82.i, label %print_float32.exit.i, label %.lr.ph.peel.next.i.i77.i, !llvm.loop !38

print_float32.exit.i:                             ; preds = %.lr.ph.peel.next.i.i77.i, %bb.af, %bb.ae
  %putchar6.i.i73.i = call i32 @putchar(i32 93)   ; 0 uses
  br label %print_iso.exit.i

bb.ag:                                            ; preds = %bb.k
  %i.jh = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.ji = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i83.i = call i32 @putchar(i32 91)    ; 0 uses
  %i.jj = icmp sgt i32 %i.ji, 3
  br i1 %i.jj, label %bb.ah, label %print_int32.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.jk = lshr i32 %i.ji, 2
  %wide.trip.count.i.i85.i = zext nneg i32 %i.jk to i64
  %.0.copyload.peel.pre.i.i86.i = load i32, ptr %i.jh, align 4
  %i.jl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %.0.copyload.peel.pre.i.i86.i) ; 0 uses
  %i.jm = and i32 %i.ji, 2147483644
  %exitcond.peel.not.i.i87.i = icmp eq i32 %i.jm, 4
  br i1 %exitcond.peel.not.i.i87.i, label %print_int32.exit.i, label %.lr.ph.peel.next.i.i88.i

.lr.ph.peel.next.i.i88.i:                         ; preds = %bb.ah, %.lr.ph.peel.next.i.i88.i
  %indvars.iv.i.i89.i = phi i64 [ %indvars.iv.next.i.i92.i, %.lr.ph.peel.next.i.i88.i ], [ 1, %bb.ah ] ; 2 uses
  %putchar7.i.i90.i = call i32 @putchar(i32 44)   ; 0 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i.i89.i
  %.0.copyload.i.i91.i = load i32, ptr %i.jn, align 4
  %i.jo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %.0.copyload.i.i91.i) ; 0 uses
  %indvars.iv.next.i.i92.i = add nuw nsw i64 %indvars.iv.i.i89.i, 1 ; 2 uses
  %exitcond.not.i.i93.i = icmp eq i64 %indvars.iv.next.i.i92.i, %wide.trip.count.i.i85.i
  br i1 %exitcond.not.i.i93.i, label %print_int32.exit.i, label %.lr.ph.peel.next.i.i88.i, !llvm.loop !40

print_int32.exit.i:                               ; preds = %.lr.ph.peel.next.i.i88.i, %bb.ah, %bb.ag
  %putchar6.i.i84.i = call i32 @putchar(i32 93)   ; 0 uses
  br label %print_iso.exit.i

bb.ai:                                            ; preds = %bb.k
  %i.jp = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.jq = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i94.i = call i32 @putchar(i32 91)    ; 0 uses
  %i.jr = icmp sgt i32 %i.jq, 3
  br i1 %i.jr, label %bb.aj, label %print_float32_vm1n.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.js = lshr i32 %i.jq, 2
  %wide.trip.count.i.i96.i = zext nneg i32 %i.js to i64
  %.0.copyload.peel.pre.i.i97.i = load float, ptr %i.jp, align 4
  %i.jt = fpext float %.0.copyload.peel.pre.i.i97.i to double
  %i.ju = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.jt) ; 0 uses
  %i.jv = and i32 %i.jq, 2147483644
  %exitcond.peel.not.i.i98.i = icmp eq i32 %i.jv, 4
  br i1 %exitcond.peel.not.i.i98.i, label %print_float32_vm1n.exit.i, label %.lr.ph.peel.next.i.i99.i

.lr.ph.peel.next.i.i99.i:                         ; preds = %bb.aj, %.lr.ph.peel.next.i.i99.i
  %indvars.iv.i.i100.i = phi i64 [ %indvars.iv.next.i.i103.i, %.lr.ph.peel.next.i.i99.i ], [ 1, %bb.aj ] ; 2 uses
  %putchar7.i.i101.i = call i32 @putchar(i32 44)  ; 0 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i.i100.i
  %.0.copyload.i.i102.i = load float, ptr %i.jw, align 4
  %i.jx = fpext float %.0.copyload.i.i102.i to double
  %i.jy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.jx) ; 0 uses
  %indvars.iv.next.i.i103.i = add nuw nsw i64 %indvars.iv.i.i100.i, 1 ; 2 uses
  %exitcond.not.i.i104.i = icmp eq i64 %indvars.iv.next.i.i103.i, %wide.trip.count.i.i96.i
  br i1 %exitcond.not.i.i104.i, label %print_float32_vm1n.exit.i, label %.lr.ph.peel.next.i.i99.i, !llvm.loop !38

print_float32_vm1n.exit.i:                        ; preds = %.lr.ph.peel.next.i.i99.i, %bb.aj, %bb.ai
  %putchar6.i.i95.i = call i32 @putchar(i32 93)   ; 0 uses
  br label %print_iso.exit.i

bb.ak:                                            ; preds = %bb.k
  %i.jz = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %i.ka = load i32, ptr %4, align 8, !tbaa !27    ; 3 uses
  %putchar.i.i105.i = call i32 @putchar(i32 91)   ; 0 uses
  %i.kb = icmp sgt i32 %i.ka, 7
  br i1 %i.kb, label %bb.al, label %print_float64.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.kc = lshr i32 %i.ka, 3
  %wide.trip.count.i.i107.i = zext nneg i32 %i.kc to i64
  %.pre.i.i.i = load double, ptr %i.jz, align 8, !tbaa !58
  %i.kd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %.pre.i.i.i) ; 0 uses
  %i.ke = and i32 %i.ka, 2147483640
  %exitcond.peel.not.i.i108.i = icmp eq i32 %i.ke, 8
  br i1 %exitcond.peel.not.i.i108.i, label %print_float64.exit.i, label %.lr.ph.peel.next.i.i109.i

.lr.ph.peel.next.i.i109.i:                        ; preds = %bb.al, %.lr.ph.peel.next.i.i109.i
  %indvars.iv.i.i110.i = phi i64 [ %indvars.iv.next.i.i112.i, %.lr.ph.peel.next.i.i109.i ], [ 1, %bb.al ] ; 2 uses
  %putchar7.i.i111.i = call i32 @putchar(i32 44)  ; 0 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.i.i110.i
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !58
  %i.kh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %i.kg) ; 0 uses
  %indvars.iv.next.i.i112.i = add nuw nsw i64 %indvars.iv.i.i110.i, 1 ; 2 uses
  %exitcond.not.i.i113.i = icmp eq i64 %indvars.iv.next.i.i112.i, %wide.trip.count.i.i107.i
  br i1 %exitcond.not.i.i113.i, label %print_float64.exit.i, label %.lr.ph.peel.next.i.i109.i, !llvm.loop !41

print_float64.exit.i:                             ; preds = %.lr.ph.peel.next.i.i109.i, %bb.al, %bb.ak
  %putchar6.i.i106.i = call i32 @putchar(i32 93)  ; 0 uses
  br label %print_iso.exit.i

bb.am:                                            ; preds = %bb.k
  %i.ki = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  %i.kj = load i32, ptr %4, align 8, !tbaa !27
  %i.kk = zext i32 %i.kj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr readonly align 1 %i.ki, i64 range(i64 0, 4294967296) %i.kk, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.kl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %.0..0..0..0..0..0..0..0..i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %print_iso.exit.i

bb.an:                                            ; preds = %bb.k
  %i.km = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  %i.kn = load i32, ptr %4, align 8, !tbaa !27
  %i.ko = zext i32 %i.kn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr readonly align 1 %i.km, i64 range(i64 0, 4294967296) %i.ko, i1 false)
  %.0..0..0..0..0..0..0..0..i114.i = load i32, ptr %i.a, align 4, !tbaa !28
  %.not.i115.i = icmp eq i32 %.0..0..0..0..0..0..0..0..i114.i, 0
  %i.kp = select i1 %.not.i115.i, ptr @.str.34, ptr @.str.33
  %i.kq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.kp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %print_iso.exit.i

bb.ao:                                            ; preds = %bb.k
  %i.kr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  br label %print_iso.exit.i

print_iso.exit.i:                                 ; preds = %bb.ao, %bb.an, %bb.am, %print_float64.exit.i, %print_float32_vm1n.exit.i, %print_int32.exit.i, %print_float32.exit.i, %switch.lookup72, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %print_str40.exit.i, %bb.x, %print_float32_vm3n.exit.i, %print_float32_vm2n.exit.i, %bb.s, %switch.lookup, %.thread.i.i, %bb.k
  %.0.shrunk.i = phi i1 [ true, %bb.ao ], [ true, %bb.k ], [ true, %print_float32_vm2n.exit.i ], [ true, %print_float32_vm3n.exit.i ], [ true, %bb.x ], [ true, %print_str40.exit.i ], [ true, %bb.s ], [ true, %switch.lookup72 ], [ true, %print_float32.exit.i ], [ true, %print_int32.exit.i ], [ true, %print_float32_vm1n.exit.i ], [ true, %print_float64.exit.i ], [ true, %bb.am ], [ true, %bb.an ], [ false, %.thread.i.i ], [ true, %switch.lookup ], [ false, %bb.z ], [ true, %bb.ab ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.aa ] ; 2 uses
  %.not57.i = icmp eq ptr %i.ck, null
  br i1 %.not57.i, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %print_iso.exit.i
  %i.ks = load i32, ptr %3, align 4, !tbaa !45
  %i.kt = load i32, ptr %i.h, align 4, !tbaa !46
  %i.ku = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @print.buf, i64 noundef 512, ptr noundef nonnull @.str.11, i32 noundef %i.i, i32 noundef %i.ks, i32 noundef %i.kt) #14 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %print_iso.exit.i
  %.055.i = phi ptr [ %i.ck, %print_iso.exit.i ], [ @print.buf, %bb.ap ]
  %i.kv = load i32, ptr %4, align 8, !tbaa !27
  %i.kw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.kv, i32 noundef 1, ptr noundef nonnull %.055.i) ; 0 uses
  %i.kx = add nuw i32 %.029, 1                    ; 2 uses
  %i.ky = icmp ult i32 %i.kx, %2
  %i.kz = and i1 %.0.shrunk.i, %i.ky
  br i1 %i.kz, label %bb.b, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.c, %bb.b, %read_data.exit, %.critedge, %read_data.exit.thread24, %bb.a
  %.018.lcssa = phi i1 [ true, %bb.a ], [ false, %read_data.exit.thread24 ], [ false, %bb.c ], [ false, %bb.b ], [ false, %read_data.exit ], [ %.0.shrunk.i, %.critedge ]
  ret i1 %.018.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @iconv_close(ptr noundef) local_unnamed_addr #6

declare noalias ptr @iconv_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @stream_read(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = mul i64 %2, %1                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %.not = icmp ugt ptr %i.f, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %.0 = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !22
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @get_mec_mr3_info_name(i8 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @guess_unicode_and_convert(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = icmp samesign ult i64 %2, 128
  %i.f = shl nuw nsw i64 %2, 1
  %i.g = select i1 %i.e, i64 128, i64 %i.f        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.g) #16 ; 4 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.j, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 %2, ptr %i.c, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 %i.g, ptr %i.d, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = call i64 @iconv(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #14
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %is_valid_utf8.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.l
  %.052.i = phi ptr [ %.153.lcssa.i, %bb.l ], [ %1, %bb.b ] ; 6 uses
  %i.o = load i8, ptr %.052.i, align 1, !tbaa !9  ; 3 uses
  %i.p = zext i8 %i.o to i32                      ; 5 uses
  %.not58.i = icmp eq i8 %i.o, 0
  br i1 %.not58.i, label %is_valid_utf8.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.q = icmp slt i8 %i.o, 0                      ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.p, 224
  %i.s = icmp ne i32 %i.r, 192                    ; 5 uses
  br i1 %i.s, label %bb.e, label %.lr.ph.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.p, 240
  %i.u = icmp eq i32 %i.t, 224
  br i1 %i.u, label %.lr.ph.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.p, 248
  %i.w = icmp eq i32 %i.v, 240
  br i1 %i.w, label %.lr.ph.preheader.i, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.15367.i = getelementptr inbounds nuw i8, ptr %.052.i, i64 1
  br label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i = phi i32 [ 31, %bb.d ], [ 15, %bb.e ], [ 7, %bb.f ]
  %.ph77.i = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ] ; 3 uses
  %.ph78.i = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.f ] ; 3 uses
  %exitcond.not.i.1 = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  %.050.ph.i = phi i64 [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ]
  %i.x = and i32 %.sink.i, %i.p
  %i.y = getelementptr i8, ptr %.052.i, i64 %.050.ph.i ; 3 uses
  %.15371.i = getelementptr inbounds nuw i8, ptr %.052.i, i64 1
  %i.z = load i8, ptr %.15371.i, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = and i32 %i.aa, 192
  %.not59.i = icmp eq i32 %i.ab, 128
  br i1 %.not59.i, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.preheader.i
  %i.ac = shl nuw nsw i32 %i.x, 6
  %i.ad = and i32 %i.aa, 63
  %i.ae = or disjoint i32 %i.ad, %i.ac            ; 2 uses
  br i1 %i.s, label %.lr.ph.i.1, label %.critedge.i

.lr.ph.i.1:                                       ; preds = %bb.h
  %.15371.i.1 = getelementptr inbounds nuw i8, ptr %.052.i, i64 2
  %i.af = load i8, ptr %.15371.i.1, align 1, !tbaa !9
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not59.i.1 = icmp eq i32 %i.ah, 128
  br i1 %.not59.i.1, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ai = shl nuw nsw i32 %i.ae, 6
  %i.aj = and i32 %i.ag, 63
  %i.ak = or disjoint i32 %i.aj, %i.ai            ; 2 uses
  br i1 %exitcond.not.i.1, label %.critedge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.i
  %.15371.i.2 = getelementptr inbounds nuw i8, ptr %.052.i, i64 3
  %i.al = load i8, ptr %.15371.i.2, align 1, !tbaa !9
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = and i32 %i.am, 192
  %.not59.i.2 = icmp eq i32 %i.an, 128
  br i1 %.not59.i.2, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.i.2
  %i.ao = shl nuw nsw i32 %i.ak, 6
  %i.ap = and i32 %i.am, 63
  %i.aq = or disjoint i32 %i.ap, %i.ao
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %i.ar = phi i1 [ true, %bb.g ], [ %.ph78.i, %bb.j ], [ %.ph78.i, %bb.i ], [ %.ph78.i, %bb.h ]
  %i.as = phi i1 [ true, %bb.g ], [ %.ph77.i, %bb.j ], [ %.ph77.i, %bb.i ], [ %.ph77.i, %bb.h ]
  %i.at = phi i1 [ true, %bb.g ], [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.h ]
  %.1.lcssa.i = phi i32 [ %i.p, %bb.g ], [ %i.ae, %bb.h ], [ %i.ak, %bb.i ], [ %i.aq, %bb.j ] ; 6 uses
  %.153.lcssa.i = phi ptr [ %.15367.i, %bb.g ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  %i.au = icmp ugt i32 %.1.lcssa.i, 1114111
  %i.av = and i32 %.1.lcssa.i, 2095104
  %or.cond.i = icmp eq i32 %i.av, 55296
  %or.cond61.i = or i1 %i.au, %or.cond.i
  %i.aw = icmp ult i32 %.1.lcssa.i, 128
  %or.cond3.i = and i1 %i.q, %i.aw
  %or.cond62.i = or i1 %or.cond3.i, %or.cond61.i
  br i1 %or.cond62.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.ax = add nsw i32 %.1.lcssa.i, -128
  %or.cond5.i = icmp ult i32 %i.ax, 1920
  %or.cond7.i = and i1 %i.at, %or.cond5.i
  br i1 %or.cond7.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %.1.lcssa.i, -2048
  %or.cond9.i = icmp ult i32 %i.ay, 63488
  %or.cond11.i = and i1 %i.as, %or.cond9.i
  %i.az = icmp samesign ugt i32 %.1.lcssa.i, 65535
  %or.cond15.i = and i1 %i.ar, %i.az
  %or.cond63.i = select i1 %or.cond11.i, i1 true, i1 %or.cond15.i
  br i1 %or.cond63.i, label %.loopexit, label %.preheader.i, !llvm.loop !59

is_valid_utf8.exit:                               ; preds = %.preheader.i, %bb.b
  %i.ba = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %1) #14 ; 0 uses
  br label %bb.n

.loopexit:                                        ; preds = %bb.l, %bb.k, %.critedge.i, %bb.f, %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2
  %i.bb = call noalias ptr @iconv_open(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16) #14 ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !19
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  %i.bc = call i64 @iconv(ptr noundef %i.bb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.be = call i32 @iconv_close(ptr noundef %i.bd) #14 ; 0 uses
  %i.bf = call noalias ptr @iconv_open(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.loopexit
  %.023 = phi i32 [ 2, %.loopexit ], [ 1, %bb.a ]
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !62
  %i.bh = sub i64 %i.g, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %is_valid_utf8.exit
  %.0 = phi i32 [ 0, %is_valid_utf8.exit ], [ %.023, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"short", !5, i64 0}
!12 = !{!"buffer136", !6, i64 0, !5, i64 4, !5, i64 69, !11, i64 134}
!13 = !{!12, !6, i64 0}
!14 = !{!12, !11, i64 134}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS6stream", !15, i64 0}
!17 = !{!"app", !16, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !15, i64 8}
!20 = !{!17, !15, i64 16}
!21 = !{!"stream", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!22 = !{!21, !15, i64 16}
!23 = !{!21, !15, i64 8}
!24 = !{!21, !15, i64 24}
!25 = !{!"long", !5, i64 0}
!26 = !{!"mec_mr3_item_data", !6, i64 0, !15, i64 8, !25, i64 16}
!27 = !{!26, !6, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!26, !15, i64 8}
!30 = distinct !{!30, !10}
!31 = distinct !{null}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{null, null}
!35 = !{!21, !15, i64 0}
!36 = distinct !{null, null}
!37 = distinct !{null, null}
!38 = distinct !{!38, !10, !51}
!39 = distinct !{!39, !10, !51}
!40 = distinct !{!40, !10, !51}
!41 = distinct !{!41, !10, !51}
!42 = distinct !{!42, !10}
!43 = !{!26, !25, i64 16}
!44 = !{!"mec_mr3_info", !6, i64 0, !6, i64 4}
!45 = !{!44, !6, i64 0}
!46 = !{!44, !6, i64 4}
!47 = !{!"buffer19", !5, i64 0, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 16, !5, i64 17, !5, i64 18}
!48 = !{!47, !5, i64 4}
!49 = !{!47, !5, i64 3}
!50 = !{!47, !5, i64 17}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = !{!"str40", !6, i64 0, !5, i64 4}
!53 = !{!52, !6, i64 0}
!54 = !{!"buffer436", !6, i64 0, !5, i64 4, !5, i64 21, !5, i64 30, !5, i64 44, !5, i64 73, !5, i64 329, !5, i64 394, !5, i64 411, !5, i64 414, !6, i64 432}
!55 = !{!54, !6, i64 0}
!56 = !{!54, !6, i64 432}
!57 = !{!"double", !5, i64 0}
!58 = !{!57, !57, i64 0}
!59 = distinct !{!59, !10}
!60 = !{!"p1 omnipotent char", !15, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!25, !25, i64 0}
end_hunk_0
