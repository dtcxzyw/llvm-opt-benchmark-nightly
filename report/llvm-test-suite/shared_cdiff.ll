Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shared_cdiff?download=true
inline.NumInlined: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cdiff_ctx = type { ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"!cdiff_apply: Can't duplicate descriptor %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"!cdiff_apply: lseek(desc, %d, SEEK_END) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"!cdiff_apply: Can't read %d bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"!cdiff_apply: No digital signature in cdiff file\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"!cdiff_apply: Can't fstat file\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"!cdiff_apply: compressed data end offset < 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"!cdiff_apply: lseek(desc, 0, SEEK_SET) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ClamAV-Diff:%*u:%u:\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"!cdiff_apply: Incorrect file format\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"!cdiff_apply: Can't gzdopen descriptor %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"!cdiff_apply: Premature EOF at line %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"!cdiff_apply: Error executing command at line %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"!cdiff_apply: fdopen() failed for descriptor %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"*cdiff_apply: File %s was not properly closed\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"*cdiff_apply: Parsed %d lines and executed %d commands\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"!cdiff_apply: Problem parsing line\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"!cdiff_apply: Unknown command %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"!cdiff_apply: Not enough arguments for %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"!cdiff_apply: Can't execute command %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"XCHG\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"UNLINK\00", align 1
@commands = internal unnamed_addr constant [8 x { ptr, i16, [6 x i8], ptr }] [{ ptr, i16, [6 x i8], ptr } { ptr @.str.21, i16 1, [6 x i8] zeroinitializer, ptr @cdiff_cmd_open }, { ptr, i16, [6 x i8], ptr } { ptr @.str.22, i16 1, [6 x i8] zeroinitializer, ptr @cdiff_cmd_add }, { ptr, i16, [6 x i8], ptr } { ptr @.str.23, i16 2, [6 x i8] zeroinitializer, ptr @cdiff_cmd_del }, { ptr, i16, [6 x i8], ptr } { ptr @.str.24, i16 3, [6 x i8] zeroinitializer, ptr @cdiff_cmd_xchg }, { ptr, i16, [6 x i8], ptr } { ptr @.str.25, i16 0, [6 x i8] zeroinitializer, ptr @cdiff_cmd_close }, { ptr, i16, [6 x i8], ptr } { ptr @.str.26, i16 6, [6 x i8] zeroinitializer, ptr @cdiff_cmd_move }, { ptr, i16, [6 x i8], ptr } { ptr @.str.27, i16 1, [6 x i8] zeroinitializer, ptr @cdiff_cmd_unlink }, { ptr, i16, [6 x i8], ptr } zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_open: Can't get first argument\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_open: %s not closed before opening %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"!cdiff_cmd_open: Forbidden characters found in database name\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"!cdiff_cmd_add: Can't get first argument\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"!cdiff_cmd_add: Can't allocate memory for cdiff_node\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"!cdiff_cmd_del: Can't get first argument\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_del: Can't get second argument\0A\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"!cdiff_cmd_del: Can't allocate memory for cdiff_node\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_xchg: Can't get first argument\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_xchg: Can't get second argument\0A\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"!cdiff_cmd_xchg: Can't allocate memory for cdiff_node\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"!cdiff_cmd_close: No database to close\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_close: Can't open file %s for reading\0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"!cdiff_cmd_close: Can't generate temporary name\0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_close: Can't open file %s for writing\0A\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"!cdiff_cmd_close: Can't apply DEL at line %d of %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"!cdiff_cmd_close: Can't apply XCHG at line %d of %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"!cdiff_cmd_close: Can't write to %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"!cdiff_cmd_close: Not all DEL/XCHG have been executed\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"!cdiff_cmd_close: Can't unlink %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"!cdiff_cmd_close: Can't rename %s to %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"!cdiff_cmd_close: Can't open file %s for appending\0A\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Database %s is still open\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get third argument\0A\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get fifth argument\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"!cdiff_cmd_move: end_line < start_line\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Can't get fourth argument\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get sixth argument\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"!cdiff_cmd_move: Can't get first argument\0A\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Can't open %s for reading\0A\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"!cdiff_cmd_move: Can't get second argument\0A\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"!cdiff_cmd_move: Can't open %s for appending\0A\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"!cdiff_cmd_move: Can't generate temporary name\0A\00", align 1
@.str.66 = private unnamed_addr constant [49 x i8] c"!cdiff_cmd_move: Can't open file %s for writing\0A\00", align 1
@.str.67 = private unnamed_addr constant [63 x i8] c"!cdiff_cmd_close: Can't apply MOVE due to conflict at line %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"!cdiff_cmd_move: Can't write to %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"!cdiff_cmd_move: No data was moved from %s to %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"!cdiff_cmd_move: Can't unlink %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"!cdiff_cmd_move: Can't rename %s to %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"!cdiff_cmd_unlink: Database %s is still open\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"!cdiff_cmd_unlink: Can't get first argument\0A\00", align 1
@.str.74 = private unnamed_addr constant [64 x i8] c"!cdiff_cmd_unlink: Forbidden characters found in database name\0A\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"!cdiff_cmd_unlink: Can't unlink %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @cdiff_apply(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cdiff_ctx, align 8          ; 10 uses
  %i.a = alloca [1024 x i8], align 16             ; 20 uses
  %i.b = alloca [8192 x i8], align 16             ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.d = tail call i32 @dup(i32 noundef %0) #18   ; 21 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str, i32 noundef %0) #18 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i16 %1, 1
  br i1 %i.g, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 @lseek(i32 noundef %i.d, i64 noundef -350, i32 noundef 2) #18
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.1, i32 noundef -350) #18 ; 0 uses
  %i.k = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.l = call i64 @read(i32 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 350) #18
  %.not79 = icmp eq i64 %i.l, 350
  br i1 %.not79, label %.preheader95, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.2, i32 noundef 350) #18 ; 0 uses
  %i.n = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

.preheader95:                                     ; preds = %bb.f, %bb.h
  %.058115 = phi i32 [ %13, %bb.h ], [ 349, %bb.f ] ; 7 uses
  %4 = zext nneg i32 %.058115 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.p, 58
  br i1 %i.q, label %bb.i, label %.preheader95.1

.preheader95.1:                                   ; preds = %.preheader95
  %5 = add nsw i32 %.058115, -1                   ; 2 uses
  %6 = zext nneg i32 %5 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 58
  br i1 %i.t, label %bb.i, label %.preheader95.2

.preheader95.2:                                   ; preds = %.preheader95.1
  %7 = add nsw i32 %.058115, -2                   ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %8
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 58
  br i1 %i.w, label %bb.i, label %.preheader95.3

.preheader95.3:                                   ; preds = %.preheader95.2
  %9 = add nsw i32 %.058115, -3                   ; 2 uses
  %10 = zext nneg i32 %9 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %10
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp eq i8 %i.y, 58
  br i1 %i.z, label %bb.i, label %.preheader95.4

.preheader95.4:                                   ; preds = %.preheader95.3
  %11 = add nsw i32 %.058115, -4                  ; 3 uses
  %12 = zext nneg i32 %11 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %12
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = icmp eq i8 %i.ab, 58
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader95.4
  %13 = add nsw i32 %.058115, -5
  %i.ad = icmp eq i32 %11, 0
  br i1 %i.ad, label %.critedge89, label %.preheader95, !llvm.loop !9

.critedge89:                                      ; preds = %bb.h
  %i.ae = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.3) #18 ; 0 uses
  %i.af = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %.preheader95.4, %.preheader95.3, %.preheader95.2, %.preheader95.1, %.preheader95
  %.058115.lcssa = phi i32 [ %.058115, %.preheader95 ], [ %5, %.preheader95.1 ], [ %7, %.preheader95.2 ], [ %9, %.preheader95.3 ], [ %11, %.preheader95.4 ]
  %i.ag = call i32 @fstat(i32 noundef %i.d, ptr noundef nonnull %3) #18
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.4) #18 ; 0 uses
  %i.aj = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %.neg = add nsw i32 %.058115.lcssa, -350
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %.neg, %i.am
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.5) #18 ; 0 uses
  %i.aq = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ar = tail call i64 @lseek(i32 noundef %i.d, i64 noundef 0, i32 noundef 0) #18
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.6) #18 ; 0 uses
  %i.au = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.av = tail call i64 @lseek(i32 noundef %i.d, i64 noundef 0, i32 noundef 0) #18
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.p, label %.preheader

bb.p:                                             ; preds = %bb.o
  %i.ax = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.6) #18 ; 0 uses
  %i.ay = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

.preheader:                                       ; preds = %bb.o, %bb.s
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.s ], [ 0, %bb.o ] ; 3 uses
  %.159116 = phi i32 [ %.2, %bb.s ], [ 0, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.a ; 2 uses
  %i.ba = call i64 @read(i32 noundef %i.d, ptr noundef nonnull %i.az, i64 noundef 1) #18
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.preheader
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 3 uses
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = icmp eq i8 %i.bc, 58
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = add nuw nsw i32 %.159116, 1             ; 2 uses
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2 = phi i32 [ %i.be, %bb.r ], [ %.159116, %bb.q ]
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, 8191
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !15

.critedge:                                        ; preds = %bb.s, %bb.r, %.preheader
  %.1 = phi i64 [ %indvars.iv.next.a, %bb.r ], [ %indvars.iv.a, %.preheader ], [ 8191, %bb.s ]
  %sext = shl i64 %.1, 32
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = getelementptr inbounds i8, ptr %i.b, i64 %i.bg
  store i8 0, ptr %i.bh, align 1, !tbaa !8
  %i.bi = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.c) #18
  %.not81 = icmp eq i32 %i.bi, 1
  br i1 %.not81, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.bj = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.8) #18 ; 0 uses
  %i.bk = call i32 @close(i32 noundef %i.d) #18   ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %.critedge
  %i.bl = call ptr @gzdopen(i32 noundef %i.d, ptr noundef nonnull @.str.9) #18 ; 5 uses
  %.not82 = icmp eq ptr %i.bl, null
  br i1 %.not82, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.10, i32 noundef %i.d) #18 ; 0 uses
  %i.bn = call i32 @close(i32 noundef %i.d) #18   ; 0 uses
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %.not83118 = icmp eq i32 %i.bo, 0
  br i1 %.not83118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.w, %bb.ac
  %.060121 = phi i32 [ %i.bw, %bb.ac ], [ %i.bo, %bb.w ] ; 2 uses
  %.062120 = phi i32 [ %.163, %bb.ac ], [ 0, %bb.w ] ; 3 uses
  %.065119 = phi i32 [ %i.bx, %bb.ac ], [ 0, %bb.w ] ; 2 uses
  %i.bp = call i32 @llvm.umin.i32(i32 %.060121, i32 1023)
  %narrow = add nuw nsw i32 %i.bp, 1
  %i.bq = call ptr @gzgets(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.a, i32 noundef %narrow) #18
  %.not85 = icmp eq ptr %i.bq, null
  br i1 %.not85, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph123
  %i.br = add i32 %.065119, 1
  %i.bs = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.11, i32 noundef %i.br) #18 ; 0 uses
  call fastcc void @cdiff_ctx_free(ptr noundef nonnull %2)
  %i.bt = call i32 @gzclose(ptr noundef nonnull %i.bl) #18 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %.lr.ph123
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sub i32 %.060121, %i.bv                 ; 2 uses
  %i.bx = add i32 %.065119, 1                     ; 3 uses
  %i.by = call i32 @cli_chomp(ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.bz = load i8, ptr %i.a, align 16, !tbaa !8
  switch i8 %i.bz, label %bb.z [
    i8 35, label %bb.ac
    i8 0, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.ca = call fastcc i32 @cdiff_execute(ptr noundef %i.a, ptr noundef %2)
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.12, i32 noundef %i.bx) #18 ; 0 uses
  call fastcc void @cdiff_ctx_free(ptr noundef nonnull %2)
  %i.cd = call i32 @gzclose(ptr noundef nonnull %i.bl) #18 ; 0 uses
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.ce = add i32 %.062120, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.y, %bb.ab
  %.163 = phi i32 [ %i.ce, %bb.ab ], [ %.062120, %bb.y ], [ %.062120, %bb.y ] ; 2 uses
  %.not83 = icmp eq i32 %i.bw, 0
  br i1 %.not83, label %._crit_edge124, label %.lr.ph123

._crit_edge124:                                   ; preds = %bb.ac, %bb.w
  %.065.lcssa = phi i32 [ 0, %bb.w ], [ %i.bx, %bb.ac ]
  %.062.lcssa = phi i32 [ 0, %bb.w ], [ %.163, %bb.ac ]
  %i.cf = call i32 @gzclose(ptr noundef nonnull %i.bl) #18 ; 0 uses
  br label %bb.ai

bb.ad:                                            ; preds = %bb.c
  %i.cg = tail call noalias ptr @fdopen(i32 noundef %i.d, ptr noundef nonnull @.str.13) #18 ; 6 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.ae, label %.preheader96

.preheader96:                                     ; preds = %bb.ad
  %i.ch = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.cg)
  %.not77105110 = icmp eq ptr %i.ch, null
  br i1 %.not77105110, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %bb.ad
  %i.ci = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.14, i32 noundef %i.d) #18 ; 0 uses
  %i.cj = tail call i32 @close(i32 noundef %i.d) #18 ; 0 uses
  br label %.thread

bb.af:                                            ; preds = %.lr.ph, %.backedge
  %.267106 = phi i32 [ %.267.ph111, %.lr.ph ], [ %i.ck, %.backedge ]
  %i.ck = add i32 %.267106, 1                     ; 5 uses
  %i.cl = call i32 @cli_chomp(ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.cm = load i8, ptr %i.a, align 16, !tbaa !8
  switch i8 %i.cm, label %bb.ag [
    i8 35, label %.backedge
    i8 0, label %.backedge
  ]

.backedge:                                        ; preds = %bb.af, %bb.af
  %i.cn = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.cg)
  %.not77 = icmp eq ptr %i.cn, null
  br i1 %.not77, label %.outer._crit_edge, label %bb.af

bb.ag:                                            ; preds = %bb.af
  %i.co = call fastcc i32 @cdiff_execute(ptr noundef %i.a, ptr noundef %2)
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.ah, label %.outer

bb.ah:                                            ; preds = %bb.ag
  %i.cq = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.12, i32 noundef %i.ck) #18 ; 0 uses
  call fastcc void @cdiff_ctx_free(ptr noundef nonnull %2)
  %i.cr = call i32 @fclose(ptr noundef nonnull %i.cg) ; 0 uses
  br label %.thread

.outer:                                           ; preds = %bb.ag
  %i.cs = add i32 %.264.ph112, 1                  ; 2 uses
  %i.ct = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.cg)
  %.not77105 = icmp eq ptr %i.ct, null
  br i1 %.not77105, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader96, %.outer
  %.264.ph112 = phi i32 [ %i.cs, %.outer ], [ 0, %.preheader96 ] ; 2 uses
  %.267.ph111 = phi i32 [ %i.ck, %.outer ], [ 0, %.preheader96 ]
  br label %bb.af

.outer._crit_edge:                                ; preds = %.outer, %.backedge, %.preheader96
  %.264.ph.lcssa104 = phi i32 [ %.264.ph112, %.backedge ], [ 0, %.preheader96 ], [ %i.cs, %.outer ]
  %.267.lcssa = phi i32 [ %i.ck, %.backedge ], [ 0, %.preheader96 ], [ %i.ck, %.outer ]
  %i.cu = call i32 @fclose(ptr noundef nonnull %i.cg) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.outer._crit_edge, %._crit_edge124
  %.368 = phi i32 [ %.065.lcssa, %._crit_edge124 ], [ %.267.lcssa, %.outer._crit_edge ]
  %.3 = phi i32 [ %.062.lcssa, %._crit_edge124 ], [ %.264.ph.lcssa104, %.outer._crit_edge ]
end_hunk_0
