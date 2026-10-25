Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cvrin?download=true
inline.NumInlined: 31
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.pla_types_struct = type { ptr, i32 }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@lineno = internal unnamed_addr global i32 0, align 4
@cube = external global %struct.cube_struct, align 8
@line_length_error = internal unnamed_addr global i1 false, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"product term(s) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"span more than one line (warning only)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kiss = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"declared size of variable %d (counting from variable 0) is too small\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"(warning): input line #%d ignored\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@echo_comments = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"extra .i ignored\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"error reading .i\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"extra .o ignored\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c".o cannot appear before .i\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"error reading .o\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"extra .mv ignored\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"cannot mix .i and .mv\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"error reading .mv\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"num_binary_vars (second field of .mv) cannot be negative\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"num_vars (1st field of .mv) must exceed num_binary_vars (2nd field of .mv)\00", align 1
@pla_types = external local_unnamed_addr global [0 x %struct.pla_types_struct], align 8
@.str.28 = private unnamed_addr constant [30 x i8] c"unknown type in .type command\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"PLA size must be declared before .ilb or .ob\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s.bar\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"PLA size must be declared before .label\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"var=%d\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Error reading labels\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"error reading .symbolic\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"error reading .symbolic-output\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"PLA size must be declared before .phase\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"extra .phase ignored\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"only 0 or 1 allowed in phase description\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"extra .pair ignored\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"syntax error in .pair\00", align 1
@echo_unknown_commands = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"%c%s \00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c" with .kiss option, third to last and second\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"to last variables must be the same size.\0A\00", align 1
@trace = external local_unnamed_addr global i32, align 4
@pos = external local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"MAP-INPUT  \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"MAP-OUTPUT \00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"# PLA is %s\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c" with %d inputs and %d outputs\0A\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c" with %d variables (%d binary, mv sizes\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"# ON-set cost is  %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"# OFF-set cost is %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"# DC-set cost is  %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"# phase is %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"# two-bit decoders:\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c" (%d %d)\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"# symbolic: \00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"# output symbolic: \00", align 1
@str = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @skip_line(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us
  %i.a = tail call i32 @getc(ptr noundef %0)
  switch i32 %i.a, label %.split.us [
    i32 -1, label %.split8.us.thread
    i32 10, label %.split8.us.thread
  ]

.split:                                           ; preds = %bb.a, %bb.b
  %i.b = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 -1, label %.split8.us
    i32 10, label %.split8.us
  ]

bb.b:                                             ; preds = %.split
  %i.c = tail call i32 @putc(i32 noundef %i.b, ptr noundef %1) ; 0 uses
  br label %.split

.split8.us:                                       ; preds = %.split, %.split
  %i.d = tail call i32 @putc(i32 noundef 10, ptr noundef %1) ; 0 uses
  br label %.split8.us.thread

.split8.us.thread:                                ; preds = %.split.us, %.split.us, %.split8.us
  %i.e = load i32, ptr @lineno, align 4, !tbaa !8
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr @lineno, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @get_word(ptr nofree noundef captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call i32 @getc(ptr noundef %0)      ; 3 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__ctype_b_loc() #16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = and i16 %i.f, 8192
  %.not16 = icmp eq i16 %i.g, 0
  br i1 %.not16, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.h = trunc i32 %i.a to i8
  store i8 %i.h, ptr %1, align 1, !tbaa !14
  %i.i = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not1719 = icmp eq i32 %i.i, -1
  br i1 %.not1719, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.j = tail call ptr @__ctype_b_loc() #16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.k = phi i32 [ %i.i, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !13
  %i.p = and i16 %i.o, 8192
  %.not18 = icmp eq i16 %i.p, 0
  br i1 %.not18, label %bb.e, label %.critedge2.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i32 %i.k to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 1, !tbaa !14
  %i.s = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not17 = icmp eq i32 %i.s, -1
  br i1 %.not17, label %.critedge2.loopexit, label %bb.d

.critedge2.loopexit:                              ; preds = %bb.e, %bb.d
  %.0.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.d ], [ %indvars.iv.next, %bb.e ]
  %i.t = and i64 %.0.lcssa.ph.in, 4294967295
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.0.lcssa = phi i64 [ 1, %.critedge ], [ %i.t, %.critedge2.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  store i8 0, ptr %i.u, align 1, !tbaa !14
  ret ptr %1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @read_cube(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !61 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = load i32, ptr @cube, align 8, !tbaa !20
  %i.i = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.c, i32 noundef %i.h) #17 ; 0 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.a
  %.lcssa154 = phi i32 [ %i.j, %bb.a ], [ %i.av, %bb.i ] ; 3 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.m = add nsw i32 %i.l, -1
  %i.n = icmp slt i32 %.lcssa154, %i.m
  br i1 %i.n, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = sext i32 %.lcssa154 to i64
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.0111156 = phi i32 [ %i.au, %bb.i ], [ 0, %bb.a ] ; 11 uses
  %i.q = tail call i32 @getc(ptr noundef %0)
  switch i32 %i.q, label %.loopexit [
    i32 63, label %bb.i
    i32 10, label %bb.b
    i32 32, label %bb.e
    i32 124, label %bb.e
    i32 9, label %bb.e
    i32 50, label %bb.f
    i32 45, label %bb.f
    i32 48, label %.lr.ph._crit_edge
    i32 49, label %bb.h
  ]

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = shl nsw i32 %.0111156, 1
  %.pre201 = and i32 %.pre, 30
  %.pre203 = ashr i32 %.0111156, 4
  %.pre205 = sext i32 %.pre203 to i64
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %.b119 = load i1, ptr @line_length_error, align 4
  br i1 %.b119, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i1 true, ptr @line_length_error, align 4
  %i.t = load i32, ptr @lineno, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @lineno, align 4, !tbaa !8
  %i.v = add nsw i32 %.0111156, -1
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.w = add nsw i32 %.0111156, -1
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  %i.x = shl nsw i32 %.0111156, 1
  %i.y = and i32 %i.x, 30                         ; 2 uses
  %i.z = shl nuw i32 2, %i.y
  %i.aa = ashr i32 %.0111156, 4
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = or i32 %i.ae, %i.z
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph._crit_edge, %bb.f
  %.pre-phi206 = phi i64 [ %.pre205, %.lr.ph._crit_edge ], [ %i.ab, %bb.f ]
  %.pre-phi202 = phi i32 [ %.pre201, %.lr.ph._crit_edge ], [ %i.y, %bb.f ]
  %i.ag = shl nuw nsw i32 1, %.pre-phi202
  %i.ah = getelementptr [4 x i8], ptr %i.c, i64 %.pre-phi206
  %i.ai = getelementptr i8, ptr %i.ah, i64 4      ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = or i32 %i.aj, %i.ag
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !8
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.al = shl nsw i32 %.0111156, 1
  %i.am = and i32 %i.al, 30
  %i.an = shl nuw i32 2, %i.am
  %i.ao = ashr i32 %.0111156, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 4      ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = or i32 %i.as, %i.an
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %.lr.ph
  %.1112 = phi i32 [ %.0111156, %.lr.ph ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %.0111156, %bb.g ], [ %.0111156, %bb.h ]
  %i.au = add nsw i32 %.1112, 1                   ; 2 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %.preheader

bb.j:                                             ; preds = %.lr.ph168, %.thread
  %indvars.iv198 = phi i64 [ %i.p, %.lr.ph168 ], [ %indvars.iv.next199, %.thread ] ; 11 uses
  %indvars200 = trunc nsw i64 %indvars.iv198 to i32 ; 3 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv198
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.bb = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #17 ; 0 uses
  %lhsv = load i16, ptr %i.a, align 16
  %.not129 = icmp eq i16 %lhsv, 45
  %lhsv130 = load i32, ptr %i.a, align 16         ; 2 uses
  %.not132 = icmp eq i32 %lhsv130, 5852737
  %or.cond = select i1 %.not129, i1 true, i1 %.not132
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr @kiss, align 4, !tbaa !8
  %.not138 = icmp eq i32 %i.bc, 0
  br i1 %.not138, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.be = add nsw i32 %i.bd, -2
  %i.bf = icmp eq i32 %i.be, %indvars200
  br i1 %i.bf, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !26
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv198
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bj = call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.c, ptr noundef %i.c, ptr noundef %i.bi) #17 ; 0 uses
  br label %.thread

bb.o:                                             ; preds = %bb.k
  %i.bk = and i32 %lhsv130, 65535
  %.not135 = icmp eq i32 %i.bk, 126
  br i1 %.not135, label %.thread, label %bb.p
end_hunk_0
begin_hunk_1_@read_cube:bb.a
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !8
  br label %bb.at

bb.at:                                            ; preds = %bb.al, %bb.am, %bb.ai, %bb.ao, %bb.an, %bb.aq, %bb.ap, %bb.as, %bb.ar
  %.4 = phi i32 [ %.3173, %bb.ai ], [ %i.fj, %bb.al ], [ %i.fk, %bb.am ], [ %.3173, %bb.ao ], [ %.3173, %bb.an ], [ %.3173, %bb.aq ], [ %.3173, %bb.ap ], [ %.3173, %bb.as ], [ %.3173, %bb.ar ] ; 2 uses
  %.2107 = phi i32 [ %.1106174, %bb.ai ], [ %.1106174, %bb.al ], [ %.1106174, %bb.am ], [ 1, %bb.ao ], [ %.1106174, %bb.an ], [ %.1106174, %bb.aq ], [ %.1106174, %bb.ap ], [ %.1106174, %bb.as ], [ %.1106174, %bb.ar ] ; 2 uses
  %.1104 = phi i32 [ %.0103175, %bb.ai ], [ %.0103175, %bb.al ], [ %.0103175, %bb.am ], [ %.0103175, %bb.ao ], [ %.0103175, %bb.an ], [ %.0103175, %bb.aq ], [ %.0103175, %bb.ap ], [ 1, %bb.as ], [ %.0103175, %bb.ar ] ; 2 uses
  %.2 = phi i32 [ %.1176, %bb.ai ], [ %.1176, %bb.al ], [ %.1176, %bb.am ], [ %.1176, %bb.ao ], [ %.1176, %bb.an ], [ 1, %bb.aq ], [ %.1176, %bb.ap ], [ %.1176, %bb.as ], [ %.1176, %bb.ar ] ; 2 uses
  %i.gp = add nsw i32 %.4, 1
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.ex
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !8
  %.not120.not = icmp slt i32 %.4, %i.gs
  br i1 %.not120.not, label %bb.ai, label %._crit_edge179.loopexit

._crit_edge179.loopexit:                          ; preds = %bb.at
  %i.gt = icmp eq i32 %.1104, 0
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %._crit_edge179.loopexit, %bb.ah
  %.1106.lcssa = phi i32 [ %.0102, %bb.ah ], [ %.2107, %._crit_edge179.loopexit ]
  %.0103.lcssa = phi i1 [ true, %bb.ah ], [ %i.gt, %._crit_edge179.loopexit ]
  %.1.lcssa = phi i32 [ %.0102, %bb.ah ], [ %.2, %._crit_edge179.loopexit ]
  %.not121 = icmp eq i32 %.1106.lcssa, 0
  br i1 %.not121, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge179
  %i.gu = load ptr, ptr %1, align 8, !tbaa !38
  %i.gv = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.gu, ptr noundef %i.c) #17
  store ptr %i.gv, ptr %1, align 8, !tbaa !38
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge179
  br i1 %.0103.lcssa, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !39
  %i.gy = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.gx, ptr noundef %i.g) #17
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !39
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.not123 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not123, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !40
  %i.hb = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.ha, ptr noundef %i.e) #17
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !40
  br label %bb.ba

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph159, %bb.ai
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.hd = load i32, ptr @lineno, align 4, !tbaa !8
  %i.he = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.7, i32 noundef %i.hd) #18 ; 0 uses
  %i.hf = load ptr, ptr @stdout, align 8, !tbaa !24 ; 2 uses
  br label %.split.i

.split.i:                                         ; preds = %bb.az, %.loopexit
  %i.hg = call i32 @getc(ptr noundef %0)          ; 2 uses
  switch i32 %i.hg, label %bb.az [
    i32 -1, label %skip_line.exit
    i32 10, label %skip_line.exit
  ]

bb.az:                                            ; preds = %.split.i
  %i.hh = call i32 @putc(i32 noundef %i.hg, ptr noundef %i.hf) ; 0 uses
  br label %.split.i

skip_line.exit:                                   ; preds = %.split.i, %.split.i
  %i.hi = call i32 @putc(i32 noundef 10, ptr noundef %i.hf) ; 0 uses
  %i.hj = load i32, ptr @lineno, align 4, !tbaa !8
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr @lineno, align 4, !tbaa !8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.ay, %skip_line.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare ptr @set_clear(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @set_or(...) local_unnamed_addr #5

declare ptr @util_strsav(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare ptr @set_xor(...) local_unnamed_addr #5

declare ptr @set_copy(...) local_unnamed_addr #5

declare ptr @sf_addset(...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @parse_pla(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [256 x i8], align 16              ; 60 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 1, ptr @lineno, align 4, !tbaa !8
  store i1 false, ptr @line_length_error, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %PLA_labels.exit

PLA_labels.exit:                                  ; preds = %PLA_labels.exit.backedge, %bb.a
  %i.o = call i32 @getc(ptr noundef %0)           ; 2 uses
  switch i32 %i.o, label %bb.dx [
    i32 -1, label %bb.ee
    i32 10, label %bb.b
    i32 32, label %PLA_labels.exit.backedge
    i32 9, label %PLA_labels.exit.backedge
    i32 12, label %PLA_labels.exit.backedge
    i32 13, label %PLA_labels.exit.backedge
    i32 35, label %bb.c
    i32 46, label %.preheader317
  ]

bb.b:                                             ; preds = %PLA_labels.exit
  %i.p = load i32, ptr @lineno, align 4, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

bb.c:                                             ; preds = %PLA_labels.exit
  %i.r = call i32 @ungetc(i32 noundef 35, ptr noundef %0) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !24 ; 2 uses
  %i.t = load i32, ptr @echo_comments, align 4, !tbaa !8
  %.not6.i = icmp eq i32 %i.t, 0
  br i1 %.not6.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.c, %.split.us.i
  %i.u = call i32 @getc(ptr noundef %0)
  switch i32 %i.u, label %.split.us.i [
    i32 -1, label %skip_line.exit
    i32 10, label %skip_line.exit
  ]

.split.i:                                         ; preds = %bb.c, %bb.d
  %i.v = call i32 @getc(ptr noundef %0)           ; 2 uses
  switch i32 %i.v, label %bb.d [
    i32 -1, label %.split8.us.i
    i32 10, label %.split8.us.i
  ]

bb.d:                                             ; preds = %.split.i
  %i.w = call i32 @putc(i32 noundef %i.v, ptr noundef %i.s) ; 0 uses
  br label %.split.i

.split8.us.i:                                     ; preds = %.split.i, %.split.i
  %i.x = call i32 @putc(i32 noundef 10, ptr noundef %i.s) ; 0 uses
  br label %skip_line.exit

skip_line.exit:                                   ; preds = %.split.us.i, %.split.us.i, %.split8.us.i
  %i.y = load i32, ptr @lineno, align 4, !tbaa !8
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

.preheader317:                                    ; preds = %PLA_labels.exit, %bb.e
  %i.aa = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader317
  %i.ab = tail call ptr @__ctype_b_loc() #16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !13
  %i.ag = and i16 %i.af, 8192
  %.not16.i = icmp eq i16 %i.ag, 0
  br i1 %.not16.i, label %.critedge.i, label %.preheader317

.critedge.i:                                      ; preds = %bb.e, %.preheader317
  %i.ah = trunc i32 %i.aa to i8
  store i8 %i.ah, ptr %i.c, align 16, !tbaa !14
  %i.ai = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i = icmp eq i32 %i.ai, -1
  br i1 %.not1719.i, label %get_word.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.aj = tail call ptr @__ctype_b_loc() #16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ak = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.as, %bb.g ] ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13
  %i.ap = and i16 %i.ao, 8192
  %.not18.i = icmp eq i16 %i.ap, 0
  br i1 %.not18.i, label %bb.g, label %.critedge2.loopexit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = trunc i32 %i.ak to i8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !14
  %i.as = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i = icmp eq i32 %i.as, -1
  br i1 %.not17.i, label %.critedge2.loopexit.i, label %bb.f

.critedge2.loopexit.i:                            ; preds = %bb.g, %bb.f
  %.0.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.f ], [ %indvars.iv.next.i, %bb.g ]
  %i.at = and i64 %.0.lcssa.ph.in.i, 4294967295
  br label %get_word.exit

get_word.exit:                                    ; preds = %.critedge.i, %.critedge2.loopexit.i
  %.0.lcssa.i = phi i64 [ 1, %.critedge.i ], [ %i.at, %.critedge2.loopexit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i
  store i8 0, ptr %i.au, align 1, !tbaa !14
  %lhsv302 = load i16, ptr %i.c, align 16         ; 3 uses
  switch i16 %lhsv302, label %bb.t [
    i16 105, label %bb.h
    i16 111, label %bb.m
  ]

bb.h:                                             ; preds = %get_word.exit
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %.not167 = icmp eq ptr %i.av, null
  br i1 %.not167, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite169 = call i64 @fwrite(ptr nonnull @.str.9, i64 17, i64 1, ptr %i.aw) #21 ; 0 uses
  br label %.split.us.i171

.split.us.i171:                                   ; preds = %.split.us.i171, %bb.i
  %i.ax = call i32 @getc(ptr noundef %0)
  switch i32 %i.ax, label %.split.us.i171 [
    i32 -1, label %skip_line.exit172
    i32 10, label %skip_line.exit172
  ]

skip_line.exit172:                                ; preds = %.split.us.i171, %.split.us.i171
  %i.ay = load i32, ptr @lineno, align 4, !tbaa !8
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

bb.j:                                             ; preds = %bb.h
  %i.ba = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cube, i64 8)) #17
  %.not168 = icmp eq i32 %i.ba, 1
  br i1 %.not168, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = call noalias ptr @malloc(i64 noundef %i.be) #22
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  br label %PLA_labels.exit.backedge

bb.m:                                             ; preds = %get_word.exit
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %.not164 = icmp eq ptr %i.bg, null
  br i1 %.not164, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite166 = call i64 @fwrite(ptr nonnull @.str.13, i64 17, i64 1, ptr %i.bh) #21 ; 0 uses
  br label %.split.us.i173

.split.us.i173:                                   ; preds = %.split.us.i173, %bb.n
  %i.bi = call i32 @getc(ptr noundef %0)
  switch i32 %i.bi, label %.split.us.i173 [
    i32 -1, label %skip_line.exit174
    i32 10, label %skip_line.exit174
  ]

skip_line.exit174:                                ; preds = %.split.us.i173, %.split.us.i173
  %i.bj = load i32, ptr @lineno, align 4, !tbaa !8
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.14) #17
  %.pre375 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = phi ptr [ %.pre375, %bb.p ], [ %i.bl, %bb.o ]
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.br) #17
  %.not165 = icmp eq i32 %i.bs, 1
  br i1 %.not165, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (...) @cube_setup() #17
  %i.bt = load i32, ptr @cube, align 8, !tbaa !20 ; 3 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = call noalias ptr @malloc(i64 noundef %i.bv) #22 ; 2 uses
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !35
  %i.bx = icmp sgt i32 %i.bt, 0
  br i1 %i.bx, label %.lr.ph.preheader.i, label %PLA_labels.exit.backedge

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.bz, i1 false), !tbaa !36
  br label %PLA_labels.exit.backedge

bb.t:                                             ; preds = %get_word.exit
  %i.ca = load i16, ptr %i.c, align 16
  %i.cb = xor i16 %i.ca, 30317
  %i.cc = getelementptr i8, ptr %i.c, i64 2
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = zext i8 %i.cd to i16
  %i.cf = or i16 %i.cb, %i.ce
  %i.cg = icmp ne i16 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %.not158 = icmp eq ptr %i.cj, null
  br i1 %.not158, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite163 = call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %i.ck) #21 ; 0 uses
  br label %.split.us.i175

.split.us.i175:                                   ; preds = %.split.us.i175, %bb.v
  %i.cl = call i32 @getc(ptr noundef %0)
  switch i32 %i.cl, label %.split.us.i175 [
    i32 -1, label %skip_line.exit176
    i32 10, label %skip_line.exit176
  ]

skip_line.exit176:                                ; preds = %.split.us.i175, %.split.us.i175
  %i.cm = load i32, ptr @lineno, align 4, !tbaa !8
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

bb.w:                                             ; preds = %bb.u
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %.not159 = icmp eq ptr %i.co, null
  br i1 %.not159, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cp = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cube, i64 4), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cube, i64 8)) #17
  %.not160 = icmp eq i32 %i.cp, 2
  br i1 %.not160, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.20) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.21) #17
  %.pre372 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cs = phi i32 [ %.pre372, %bb.ab ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %i.cs
  br i1 %i.cu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.22) #17
  %.pre373 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %.pre374 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cv = phi i32 [ %.pre374, %bb.ad ], [ %i.cs, %bb.ac ] ; 3 uses
  %i.cw = phi i32 [ %.pre373, %bb.ad ], [ %i.ct, %bb.ac ] ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2
  %i.cz = call noalias ptr @malloc(i64 noundef %i.cy) #22
  store ptr %i.cz, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !8
  %i.da = icmp slt i32 %i.cv, %i.cw
  br i1 %i.da, label %.lr.ph344, label %._crit_edge345

.lr.ph344:                                        ; preds = %bb.ae, %bb.ag
  %storemerge161342 = phi i32 [ %i.dg, %bb.ag ], [ %i.cv, %bb.ae ]
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.dc = sext i32 %storemerge161342 to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.dd) #17
  %.not162 = icmp eq i32 %i.de, 1
  br i1 %.not162, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph344
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.20) #17
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph344, %bb.af
  %i.df = load i32, ptr %i.a, align 4, !tbaa !8
  %i.dg = add nsw i32 %i.df, 1                    ; 3 uses
  store i32 %i.dg, ptr %i.a, align 4, !tbaa !8
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph344, label %._crit_edge345

._crit_edge345:                                   ; preds = %bb.ag, %bb.ae
  call void (...) @cube_setup() #17
  %i.dj = load i32, ptr @cube, align 8, !tbaa !20 ; 3 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 3
  %i.dm = call noalias ptr @malloc(i64 noundef %i.dl) #22 ; 2 uses
  store ptr %i.dm, ptr %i.h, align 8, !tbaa !35
  %i.dn = icmp sgt i32 %i.dj, 0
  br i1 %i.dn, label %.lr.ph.preheader.i177, label %PLA_labels.exit.backedge

.lr.ph.preheader.i177:                            ; preds = %._crit_edge345
  %i.do = zext nneg i32 %i.dj to i64
  %i.dp = shl nuw nsw i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dm, i8 0, i64 %i.dp, i1 false), !tbaa !36
  br label %PLA_labels.exit.backedge

bb.ah:                                            ; preds = %bb.t
  %.not123 = icmp eq i16 %lhsv302, 112
  br i1 %.not123, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dq = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b) #17 ; 0 uses
  br label %PLA_labels.exit.backedge

bb.aj:                                            ; preds = %bb.ah
  %.not126 = icmp eq i16 %lhsv302, 101
  %lhsv127 = load i32, ptr %i.c, align 16         ; 2 uses
  %.not129 = icmp eq i32 %lhsv127, 6581861
  %or.cond = select i1 %.not126, i1 true, i1 %.not129
  br i1 %or.cond, label %bb.ee, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = load i32, ptr %i.c, align 16
  %i.ds = xor i32 %i.dr, 1936943467
  %i.dt = getelementptr i8, ptr %i.c, i64 4
  %i.du = load i8, ptr %i.dt, align 4
  %i.dv = zext i8 %i.du to i32
  %i.dw = or i32 %i.ds, %i.dv
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr @kiss, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

bb.am:                                            ; preds = %bb.ak
  %i.ea = load i32, ptr %i.c, align 16
  %i.eb = xor i32 %i.ea, 1701869940
  %i.ec = getelementptr i8, ptr %i.c, i64 4
  %i.ed = load i8, ptr %i.ec, align 4
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or i32 %i.eb, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.preheader309, label %bb.as

.preheader309:                                    ; preds = %bb.am, %bb.an
  %i.ej = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i179 = icmp eq i32 %i.ej, -1
  br i1 %.not.i179, label %.critedge.i181, label %bb.an

bb.an:                                            ; preds = %.preheader309
  %i.ek = tail call ptr @__ctype_b_loc() #16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !11
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !13
  %i.ep = and i16 %i.eo, 8192
  %.not16.i180 = icmp eq i16 %i.ep, 0
  br i1 %.not16.i180, label %.critedge.i181, label %.preheader309

.critedge.i181:                                   ; preds = %bb.an, %.preheader309
  %i.eq = trunc i32 %i.ej to i8
  store i8 %i.eq, ptr %i.c, align 16, !tbaa !14
  %i.er = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i182 = icmp eq i32 %i.er, -1
  br i1 %.not1719.i182, label %get_word.exit191, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.critedge.i181
  %i.es = tail call ptr @__ctype_b_loc() #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i183
  %indvars.iv.i184 = phi i64 [ 1, %.lr.ph.i183 ], [ %indvars.iv.next.i189, %bb.ap ] ; 3 uses
  %i.et = phi i32 [ %i.er, %.lr.ph.i183 ], [ %i.fb, %bb.ap ] ; 2 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !11
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !13
  %i.ey = and i16 %i.ex, 8192
  %.not18.i185 = icmp eq i16 %i.ey, 0
  br i1 %.not18.i185, label %bb.ap, label %.critedge2.loopexit.i186

bb.ap:                                            ; preds = %bb.ao
  %i.ez = trunc i32 %i.et to i8
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i184
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !14
  %i.fb = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i190 = icmp eq i32 %i.fb, -1
  br i1 %.not17.i190, label %.critedge2.loopexit.i186, label %bb.ao

.critedge2.loopexit.i186:                         ; preds = %bb.ap, %bb.ao
  %.0.lcssa.ph.in.i187 = phi i64 [ %indvars.iv.i184, %bb.ao ], [ %indvars.iv.next.i189, %bb.ap ]
  %i.fc = and i64 %.0.lcssa.ph.in.i187, 4294967295
  br label %get_word.exit191

get_word.exit191:                                 ; preds = %.critedge.i181, %.critedge2.loopexit.i186
  %.0.lcssa.i188 = phi i64 [ 1, %.critedge.i181 ], [ %i.fc, %.critedge2.loopexit.i186 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i188
  store i8 0, ptr %i.fd, align 1, !tbaa !14
  %i.fe = load ptr, ptr @pla_types, align 8, !tbaa !63 ; 2 uses
  %.not157339 = icmp eq ptr %i.fe, null
  br i1 %.not157339, label %._crit_edge, label %.lr.ph341

bb.aq:                                            ; preds = %.lr.ph341
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr @pla_types, i64 %indvars.iv.next369
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !63 ; 2 uses
  %.not157 = icmp eq ptr %i.fg, null
  br i1 %.not157, label %._crit_edge, label %.lr.ph341

.lr.ph341:                                        ; preds = %get_word.exit191, %bb.aq
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %bb.aq ], [ 0, %get_word.exit191 ] ; 2 uses
  %i.fh = phi ptr [ %i.fg, %bb.aq ], [ %i.fe, %get_word.exit191 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ar, label %bb.aq

bb.ar:                                            ; preds = %.lr.ph341
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr @pla_types, i64 %indvars.iv368
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !64
  store i32 %i.fn, ptr %i.l, align 8, !tbaa !37
  br label %PLA_labels.exit.backedge

._crit_edge:                                      ; preds = %bb.aq, %get_word.exit191
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.28) #17
  br label %PLA_labels.exit.backedge

bb.as:                                            ; preds = %bb.am
  %.not134 = icmp eq i32 %lhsv127, 6450281
  br i1 %.not134, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.30) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.aw, label %PLA_labels.exit193

bb.aw:                                            ; preds = %bb.av
  %i.fs = load i32, ptr @cube, align 8, !tbaa !20 ; 3 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 3
  %i.fv = call noalias ptr @malloc(i64 noundef %i.fu) #22 ; 2 uses
  store ptr %i.fv, ptr %i.h, align 8, !tbaa !35
  %i.fw = icmp sgt i32 %i.fs, 0
  br i1 %i.fw, label %.lr.ph.preheader.i192, label %PLA_labels.exit193

.lr.ph.preheader.i192:                            ; preds = %bb.aw
  %i.fx = zext nneg i32 %i.fs to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fv, i8 0, i64 %i.fy, i1 false), !tbaa !36
  br label %PLA_labels.exit193

PLA_labels.exit193:                               ; preds = %.lr.ph.preheader.i192, %bb.aw, %bb.av
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.preheader, label %PLA_labels.exit.backedge

.preheader:                                       ; preds = %PLA_labels.exit193, %.preheader.backedge
  %i.gb = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i194 = icmp eq i32 %i.gb, -1
  br i1 %.not.i194, label %.critedge.i196, label %bb.ax

bb.ax:                                            ; preds = %.preheader
  %i.gc = tail call ptr @__ctype_b_loc() #16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11
  %i.ge = sext i32 %i.gb to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !13
  %i.gh = and i16 %i.gg, 8192
  %.not16.i195 = icmp eq i16 %i.gh, 0
  br i1 %.not16.i195, label %.critedge.i196, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.ax, %get_word.exit206
  br label %.preheader

.critedge.i196:                                   ; preds = %bb.ax, %.preheader
  %i.gi = trunc i32 %i.gb to i8
  store i8 %i.gi, ptr %i.c, align 16, !tbaa !14
  %i.gj = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i197 = icmp eq i32 %i.gj, -1
  br i1 %.not1719.i197, label %get_word.exit206, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.critedge.i196
  %i.gk = tail call ptr @__ctype_b_loc() #16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.lr.ph.i198
  %indvars.iv.i199 = phi i64 [ 1, %.lr.ph.i198 ], [ %indvars.iv.next.i204, %bb.az ] ; 3 uses
  %i.gl = phi i32 [ %i.gj, %.lr.ph.i198 ], [ %i.gt, %bb.az ] ; 2 uses
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !11
  %i.gn = sext i32 %i.gl to i64
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !13
  %i.gq = and i16 %i.gp, 8192
  %.not18.i200 = icmp eq i16 %i.gq, 0
  br i1 %.not18.i200, label %bb.az, label %.critedge2.loopexit.i201

bb.az:                                            ; preds = %bb.ay
  %i.gr = trunc i32 %i.gl to i8
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i199, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i199
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !14
  %i.gt = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i205 = icmp eq i32 %i.gt, -1
  br i1 %.not17.i205, label %.critedge2.loopexit.i201, label %bb.ay

.critedge2.loopexit.i201:                         ; preds = %bb.az, %bb.ay
  %.0.lcssa.ph.in.i202 = phi i64 [ %indvars.iv.i199, %bb.ay ], [ %indvars.iv.next.i204, %bb.az ]
  %i.gu = and i64 %.0.lcssa.ph.in.i202, 4294967295
  br label %get_word.exit206

get_word.exit206:                                 ; preds = %.critedge.i196, %.critedge2.loopexit.i201
  %.0.lcssa.i203 = phi i64 [ 1, %.critedge.i196 ], [ %i.gu, %.critedge2.loopexit.i201 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i203
  store i8 0, ptr %i.gv, align 1, !tbaa !14
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.gx = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %i.hb = call ptr @util_strsav(ptr noundef nonnull %i.c) #17
  %i.hc = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.hd = sext i32 %i.ha to i64
  %i.he = getelementptr [8 x i8], ptr %i.hc, i64 %i.hd ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  store ptr %i.hb, ptr %i.hf, align 8, !tbaa !36
  %i.hg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.hh = add i64 %i.hg, 6
  %i.hi = call noalias ptr @malloc(i64 noundef %i.hh) #22 ; 2 uses
  store ptr %i.hi, ptr %i.he, align 8, !tbaa !36
  %i.hj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hi, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %i.c) #17 ; 0 uses
  %i.hk = load i32, ptr %i.a, align 4, !tbaa !8
  %i.hl = add nsw i32 %i.hk, 1                    ; 2 uses
  store i32 %i.hl, ptr %i.a, align 4, !tbaa !8
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  %i.hn = icmp slt i32 %i.hl, %i.hm
  br i1 %i.hn, label %.preheader.backedge, label %PLA_labels.exit.backedge

bb.ba:                                            ; preds = %bb.as
  %i.ho = load i16, ptr %i.c, align 16
  %i.hp = xor i16 %i.ho, 25199
  %i.hq = getelementptr i8, ptr %i.c, i64 2
  %i.hr = load i8, ptr %i.hq, align 2
  %i.hs = zext i8 %i.hr to i16
  %i.ht = or i16 %i.hp, %i.hs
  %i.hu = icmp ne i16 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.30) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hz = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.be, label %PLA_labels.exit208

bb.be:                                            ; preds = %bb.bd
  %i.ib = load i32, ptr @cube, align 8, !tbaa !20 ; 3 uses
  %i.ic = sext i32 %i.ib to i64
  %i.id = shl nsw i64 %i.ic, 3
  %i.ie = call noalias ptr @malloc(i64 noundef %i.id) #22 ; 2 uses
  store ptr %i.ie, ptr %i.h, align 8, !tbaa !35
  %i.if = icmp sgt i32 %i.ib, 0
  br i1 %i.if, label %.lr.ph.preheader.i207, label %PLA_labels.exit208

.lr.ph.preheader.i207:                            ; preds = %bb.be
  %i.ig = zext nneg i32 %i.ib to i64
  %i.ih = shl nuw nsw i64 %i.ig, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ie, i8 0, i64 %i.ih, i1 false), !tbaa !36
  br label %PLA_labels.exit208

PLA_labels.exit208:                               ; preds = %.lr.ph.preheader.i207, %bb.be, %bb.bd
  %i.ii = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.ij = add nsw i32 %i.ii, -1                   ; 2 uses
  store i32 %i.ij, ptr %i.a, align 4, !tbaa !8
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.il = sext i32 %i.ij to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !8  ; 2 uses
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.il
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8
  %.not156337 = icmp sgt i32 %i.in, %i.iq
  br i1 %.not156337, label %PLA_labels.exit.backedge, label %.preheader305.preheader

.preheader305.preheader:                          ; preds = %PLA_labels.exit208
  %i.ir = sext i32 %i.in to i64
  br label %.preheader305

.preheader305:                                    ; preds = %.preheader305.preheader, %get_word.exit221
  %indvars.iv365 = phi i64 [ %i.ir, %.preheader305.preheader ], [ %indvars.iv.next366, %get_word.exit221 ] ; 3 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader305, %bb.bg
  %i.is = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i209 = icmp eq i32 %i.is, -1
  br i1 %.not.i209, label %.critedge.i211, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.it = tail call ptr @__ctype_b_loc() #16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !11
  %i.iv = sext i32 %i.is to i64
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !13
  %i.iy = and i16 %i.ix, 8192
  %.not16.i210 = icmp eq i16 %i.iy, 0
  br i1 %.not16.i210, label %.critedge.i211, label %bb.bf

.critedge.i211:                                   ; preds = %bb.bg, %bb.bf
  %i.iz = trunc i32 %i.is to i8
  store i8 %i.iz, ptr %i.c, align 16, !tbaa !14
  %i.ja = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i212 = icmp eq i32 %i.ja, -1
  br i1 %.not1719.i212, label %get_word.exit221, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.critedge.i211
  %i.jb = tail call ptr @__ctype_b_loc() #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph.i213
  %indvars.iv.i214 = phi i64 [ 1, %.lr.ph.i213 ], [ %indvars.iv.next.i219, %bb.bi ] ; 3 uses
  %i.jc = phi i32 [ %i.ja, %.lr.ph.i213 ], [ %i.jk, %bb.bi ] ; 2 uses
  %i.jd = load ptr, ptr %i.jb, align 8, !tbaa !11
  %i.je = sext i32 %i.jc to i64
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.jd, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !13
  %i.jh = and i16 %i.jg, 8192
  %.not18.i215 = icmp eq i16 %i.jh, 0
  br i1 %.not18.i215, label %bb.bi, label %.critedge2.loopexit.i216

bb.bi:                                            ; preds = %bb.bh
  %i.ji = trunc i32 %i.jc to i8
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i214, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i214
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !14
  %i.jk = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i220 = icmp eq i32 %i.jk, -1
  br i1 %.not17.i220, label %.critedge2.loopexit.i216, label %bb.bh

.critedge2.loopexit.i216:                         ; preds = %bb.bi, %bb.bh
  %.0.lcssa.ph.in.i217 = phi i64 [ %indvars.iv.i214, %bb.bh ], [ %indvars.iv.next.i219, %bb.bi ]
  %i.jl = and i64 %.0.lcssa.ph.in.i217, 4294967295
  br label %get_word.exit221

get_word.exit221:                                 ; preds = %.critedge.i211, %.critedge2.loopexit.i216
  %.0.lcssa.i218 = phi i64 [ 1, %.critedge.i211 ], [ %i.jl, %.critedge2.loopexit.i216 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i218
  store i8 0, ptr %i.jm, align 1, !tbaa !14
  %i.jn = call ptr @util_strsav(ptr noundef nonnull %i.c) #17
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %indvars.iv365
  store ptr %i.jn, ptr %i.jp, align 8, !tbaa !36
  %indvars.iv.next366 = add nsw i64 %indvars.iv365, 1
  %i.jq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.jr = load i32, ptr %i.a, align 4, !tbaa !8
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !8
  %i.jv = sext i32 %i.ju to i64
  %.not156.not = icmp slt i64 %indvars.iv365, %i.jv
  br i1 %.not156.not, label %.preheader305, label %PLA_labels.exit.backedge

bb.bj:                                            ; preds = %bb.ba
  %i.jw = load i32, ptr %i.c, align 16
  %i.jx = xor i32 %i.jw, 1700946284
  %i.jy = getelementptr i8, ptr %i.c, i64 4
  %i.jz = load i16, ptr %i.jy, align 4
  %i.ka = zext i16 %i.jz to i32
  %i.kb = xor i32 %i.ka, 108
  %i.kc = or i32 %i.jx, %i.kb
  %i.kd = icmp ne i32 %i.kc, 0
  %i.ke = zext i1 %i.kd to i32
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.bk, label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  %i.kg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.34) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ki = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.bn, label %PLA_labels.exit223

bb.bn:                                            ; preds = %bb.bm
  %i.kk = load i32, ptr @cube, align 8, !tbaa !20 ; 3 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 3
  %i.kn = call noalias ptr @malloc(i64 noundef %i.km) #22 ; 2 uses
  store ptr %i.kn, ptr %i.h, align 8, !tbaa !35
  %i.ko = icmp sgt i32 %i.kk, 0
  br i1 %i.ko, label %.lr.ph.preheader.i222, label %PLA_labels.exit223

.lr.ph.preheader.i222:                            ; preds = %bb.bn
  %i.kp = zext nneg i32 %i.kk to i64
  %i.kq = shl nuw nsw i64 %i.kp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kn, i8 0, i64 %i.kq, i1 false), !tbaa !36
  br label %PLA_labels.exit223

PLA_labels.exit223:                               ; preds = %.lr.ph.preheader.i222, %bb.bn, %bb.bm
  %i.kr = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.a) #17
  %.not154 = icmp eq i32 %i.kr, 1
  br i1 %.not154, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %PLA_labels.exit223
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.36) #17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %PLA_labels.exit223
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.kt = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ku = sext i32 %i.kt to i64                   ; 2 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8  ; 2 uses
  %i.kx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.ku
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !8
  %.not155335 = icmp sgt i32 %i.kw, %i.kz
  br i1 %.not155335, label %PLA_labels.exit.backedge, label %.preheader306.preheader

.preheader306.preheader:                          ; preds = %bb.bp
  %i.la = sext i32 %i.kw to i64
  br label %.preheader306

.preheader306:                                    ; preds = %.preheader306.preheader, %get_word.exit236
  %indvars.iv362 = phi i64 [ %i.la, %.preheader306.preheader ], [ %indvars.iv.next363, %get_word.exit236 ] ; 3 uses
  br label %bb.bq

bb.bq:                                            ; preds = %.preheader306, %bb.br
  %i.lb = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i224 = icmp eq i32 %i.lb, -1
  br i1 %.not.i224, label %.critedge.i226, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lc = tail call ptr @__ctype_b_loc() #16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !11
  %i.le = sext i32 %i.lb to i64
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !13
  %i.lh = and i16 %i.lg, 8192
  %.not16.i225 = icmp eq i16 %i.lh, 0
  br i1 %.not16.i225, label %.critedge.i226, label %bb.bq

.critedge.i226:                                   ; preds = %bb.br, %bb.bq
  %i.li = trunc i32 %i.lb to i8
  store i8 %i.li, ptr %i.c, align 16, !tbaa !14
  %i.lj = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i227 = icmp eq i32 %i.lj, -1
  br i1 %.not1719.i227, label %get_word.exit236, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.critedge.i226
  %i.lk = tail call ptr @__ctype_b_loc() #16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i228
  %indvars.iv.i229 = phi i64 [ 1, %.lr.ph.i228 ], [ %indvars.iv.next.i234, %bb.bt ] ; 3 uses
  %i.ll = phi i32 [ %i.lj, %.lr.ph.i228 ], [ %i.lt, %bb.bt ] ; 2 uses
  %i.lm = load ptr, ptr %i.lk, align 8, !tbaa !11
  %i.ln = sext i32 %i.ll to i64
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !13
  %i.lq = and i16 %i.lp, 8192
  %.not18.i230 = icmp eq i16 %i.lq, 0
  br i1 %.not18.i230, label %bb.bt, label %.critedge2.loopexit.i231

bb.bt:                                            ; preds = %bb.bs
  %i.lr = trunc i32 %i.ll to i8
  %indvars.iv.next.i234 = add nuw nsw i64 %indvars.iv.i229, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i229
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !14
  %i.lt = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i235 = icmp eq i32 %i.lt, -1
  br i1 %.not17.i235, label %.critedge2.loopexit.i231, label %bb.bs

.critedge2.loopexit.i231:                         ; preds = %bb.bt, %bb.bs
  %.0.lcssa.ph.in.i232 = phi i64 [ %indvars.iv.i229, %bb.bs ], [ %indvars.iv.next.i234, %bb.bt ]
  %i.lu = and i64 %.0.lcssa.ph.in.i232, 4294967295
  br label %get_word.exit236

get_word.exit236:                                 ; preds = %.critedge.i226, %.critedge2.loopexit.i231
  %.0.lcssa.i233 = phi i64 [ 1, %.critedge.i226 ], [ %i.lu, %.critedge2.loopexit.i231 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i233
  store i8 0, ptr %i.lv, align 1, !tbaa !14
  %i.lw = call ptr @util_strsav(ptr noundef nonnull %i.c) #17
  %i.lx = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %indvars.iv362
  store ptr %i.lw, ptr %i.ly, align 8, !tbaa !36
  %indvars.iv.next363 = add nsw i64 %indvars.iv362, 1
  %i.lz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.ma = load i32, ptr %i.a, align 4, !tbaa !8
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !8
  %i.me = sext i32 %i.md to i64
  %.not155.not = icmp slt i64 %indvars.iv362, %i.me
  br i1 %.not155.not, label %.preheader306, label %PLA_labels.exit.backedge

bb.bu:                                            ; preds = %bb.bj
  %i.mf = load i64, ptr %i.c, align 16
  %i.mg = xor i64 %i.mf, 7163375907957995891
  %i.mh = getelementptr i8, ptr %i.c, i64 8
  %i.mi = load i8, ptr %i.mh, align 8
  %i.mj = zext i8 %i.mi to i64
  %i.mk = or i64 %i.mg, %i.mj
  %i.ml = icmp ne i64 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.mo = call i32 @read_symbolic(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not152 = icmp eq i32 %i.mo, 0
  br i1 %.not152, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mp = load ptr, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.bx, label %.preheader312

bb.bx:                                            ; preds = %bb.bw
  %i.mr = load ptr, ptr %i.d, align 8, !tbaa !43
  store ptr %i.mr, ptr %i.k, align 8, !tbaa !42
  br label %bb.ca

.preheader312:                                    ; preds = %bb.bw, %.preheader312
  %.0107 = phi ptr [ %i.mt, %.preheader312 ], [ %i.mp, %bb.bw ] ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !47 ; 2 uses
  %.not153 = icmp eq ptr %i.mt, null
  br i1 %.not153, label %bb.by, label %.preheader312

bb.by:                                            ; preds = %.preheader312
  %i.mu = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.mv = load ptr, ptr %i.d, align 8, !tbaa !43
  store ptr %i.mv, ptr %i.mu, align 8, !tbaa !47
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.38) #17
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %PLA_labels.exit.backedge

bb.cb:                                            ; preds = %bb.bu
  %i.mw = load i128, ptr %i.c, align 16
  %i.mx = icmp ne i128 %i.mw, 604688387110099328072347220534196595
  %i.my = zext i1 %i.mx to i32
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.na = call i32 @read_symbolic(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  %.not150 = icmp eq i32 %i.na, 0
  br i1 %.not150, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nb = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.ce, label %.preheader313

bb.ce:                                            ; preds = %bb.cd
  %i.nd = load ptr, ptr %i.e, align 8, !tbaa !43
  store ptr %i.nd, ptr %i.j, align 8, !tbaa !48
  br label %bb.ch

.preheader313:                                    ; preds = %bb.cd, %.preheader313
  %.0 = phi ptr [ %i.nf, %.preheader313 ], [ %i.nb, %bb.cd ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !47 ; 2 uses
  %.not151 = icmp eq ptr %i.nf, null
  br i1 %.not151, label %bb.cf, label %.preheader313

bb.cf:                                            ; preds = %.preheader313
  %i.ng = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.nh = load ptr, ptr %i.e, align 8, !tbaa !43
  store ptr %i.nh, ptr %i.ng, align 8, !tbaa !47
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.40) #17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ce, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %PLA_labels.exit.backedge

bb.ci:                                            ; preds = %bb.cb
  %i.ni = load i32, ptr %i.c, align 16
  %i.nj = xor i32 %i.ni, 1935763568
  %i.nk = getelementptr i8, ptr %i.c, i64 4
  %i.nl = load i16, ptr %i.nk, align 4
  %i.nm = zext i16 %i.nl to i32
  %i.nn = xor i32 %i.nm, 101
  %i.no = or i32 %i.nj, %i.nn
  %i.np = icmp ne i32 %i.no, 0
  %i.nq = zext i1 %i.np to i32
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.cj, label %bb.cr

bb.cj:                                            ; preds = %bb.ci
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.42) #17
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.nu = load ptr, ptr %i.i, align 8, !tbaa !49
  %.not146 = icmp eq ptr %i.nu, null
  br i1 %.not146, label %.preheader315, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nv = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite149 = call i64 @fwrite(ptr nonnull @.str.43, i64 21, i64 1, ptr %i.nv) #21 ; 0 uses
  br label %.split.us.i237

.split.us.i237:                                   ; preds = %.split.us.i237, %bb.cm
  %i.nw = call i32 @getc(ptr noundef %0)
  switch i32 %i.nw, label %.split.us.i237 [
    i32 -1, label %skip_line.exit238
    i32 10, label %skip_line.exit238
  ]

skip_line.exit238:                                ; preds = %.split.us.i237, %.split.us.i237
  %i.nx = load i32, ptr @lineno, align 4, !tbaa !8
  %i.ny = add nsw i32 %i.nx, 1
  store i32 %i.ny, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

.preheader315:                                    ; preds = %bb.cl, %.preheader315.backedge
  %i.nz = call i32 @getc(ptr noundef %0)          ; 2 uses
  switch i32 %i.nz, label %bb.cn [
    i32 32, label %.preheader315.backedge
    i32 9, label %.preheader315.backedge
  ]

.preheader315.backedge:                           ; preds = %.preheader315, %.preheader315
  br label %.preheader315

bb.cn:                                            ; preds = %.preheader315
  %i.oa = call i32 @ungetc(i32 noundef %i.nz, ptr noundef %0) ; 0 uses
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !8
  %i.od = shl i32 %i.oc, 5
  %i.oe = and i32 %i.od, 32736                    ; 2 uses
  %i.of = icmp samesign ult i32 %i.oe, 33
  %i.og = add nsw i32 %i.oe, -32
  %i.oh = lshr exact i32 %i.og, 3
  %i.oi = add nuw nsw i32 %i.oh, 8
  %narrow = select i1 %i.of, i32 8, i32 %i.oi
  %i.oj = zext nneg i32 %narrow to i64
  %i.ok = call noalias ptr @malloc(i64 noundef %i.oj) #22
  %i.ol = call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ok, ptr noundef nonnull %i.ob) #17
  store ptr %i.ol, ptr %i.i, align 8, !tbaa !49
  %i.om = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.on = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.oo = add nsw i32 %i.on, -1
  %i.op = sext i32 %i.oo to i64                   ; 2 uses
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !8  ; 2 uses
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.op
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !8  ; 2 uses
  %.not147333 = icmp sgt i32 %i.ou, %i.or
  br i1 %.not147333, label %PLA_labels.exit.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cn, %bb.cq
  %.3334 = phi i32 [ %i.pg, %bb.cq ], [ %i.ou, %bb.cn ] ; 4 uses
  %i.ov = call i32 @getc(ptr noundef %0)
  switch i32 %i.ov, label %bb.cp [
    i32 48, label %bb.co
    i32 49, label %bb.cq
  ]

bb.co:                                            ; preds = %.lr.ph
  %i.ow = and i32 %.3334, 31
  %i.ox = shl nuw i32 1, %i.ow
  %i.oy = xor i32 %i.ox, -1
  %i.oz = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.pa = ashr i32 %.3334, 5
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr [4 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 4      ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !8
  %i.pf = and i32 %i.pe, %i.oy
  store i32 %i.pf, ptr %i.pd, align 4, !tbaa !8
  br label %bb.cq

bb.cp:                                            ; preds = %.lr.ph
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.44) #17
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph, %bb.co, %bb.cp
  %i.pg = add i32 %.3334, 1
  %exitcond.not = icmp eq i32 %.3334, %i.or
  br i1 %exitcond.not, label %PLA_labels.exit.backedge, label %.lr.ph

bb.cr:                                            ; preds = %bb.ci
  %i.ph = load i32, ptr %i.c, align 16
  %i.pi = xor i32 %i.ph, 1919508848
  %i.pj = getelementptr i8, ptr %i.c, i64 4
  %i.pk = load i8, ptr %i.pj, align 4
  %i.pl = zext i8 %i.pk to i32
  %i.pm = or i32 %i.pi, %i.pl
  %i.pn = icmp ne i32 %i.pm, 0
  %i.po = zext i1 %i.pn to i32
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.cs, label %bb.du

bb.cs:                                            ; preds = %bb.cr
  %i.pq = load ptr, ptr %i.f, align 8, !tbaa !50
  %.not142 = icmp eq ptr %i.pq, null
  br i1 %.not142, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pr = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite = call i64 @fwrite(ptr nonnull @.str.46, i64 20, i64 1, ptr %i.pr) #21 ; 0 uses
  br label %PLA_labels.exit.backedge

bb.cu:                                            ; preds = %bb.cs
  %i.ps = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #22 ; 6 uses
  store ptr %i.ps, ptr %i.f, align 8, !tbaa !50
  %i.pt = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.ps) #17
  %.not143 = icmp eq i32 %i.pt, 1
  br i1 %.not143, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.47) #17
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.pu = load i32, ptr %i.ps, align 8, !tbaa !52 ; 2 uses
  %i.pv = sext i32 %i.pu to i64
  %i.pw = shl nsw i64 %i.pv, 2                    ; 2 uses
  %i.px = call noalias ptr @malloc(i64 noundef %i.pw) #22
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 2 uses
  store ptr %i.px, ptr %i.py, align 8, !tbaa !53
  %i.pz = call noalias ptr @malloc(i64 noundef %i.pw) #22
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 16 ; 2 uses
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !54
  %i.qb = icmp sgt i32 %i.pu, 0
  br i1 %i.qb, label %.preheader308, label %PLA_labels.exit.backedge

PLA_labels.exit.backedge:                         ; preds = %bb.dt, %bb.cq, %get_word.exit236, %get_word.exit221, %get_word.exit206, %bb.cw, %bb.cn, %bb.bp, %PLA_labels.exit208, %PLA_labels.exit193, %bb.ct, %bb.ar, %.lr.ph.preheader.i177, %._crit_edge345, %.lr.ph.preheader.i, %bb.s, %bb.l, %skip_line.exit172, %skip_line.exit176, %._crit_edge, %bb.ca, %skip_line.exit238, %skip_line.exit291, %bb.ch, %bb.al, %bb.ai, %skip_line.exit174, %PLA_labels.exit, %PLA_labels.exit, %PLA_labels.exit, %PLA_labels.exit, %bb.b, %bb.ed, %skip_line.exit296, %skip_line.exit
  br label %PLA_labels.exit

.preheader308:                                    ; preds = %bb.cw, %bb.dt
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dt ], [ 0, %bb.cw ] ; 3 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.preheader308, %bb.cy
  %i.qc = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i239 = icmp eq i32 %i.qc, -1
  br i1 %.not.i239, label %.critedge.i241, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qd = tail call ptr @__ctype_b_loc() #16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !11
  %i.qf = sext i32 %i.qc to i64
  %i.qg = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.qf
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !13
  %i.qi = and i16 %i.qh, 8192
  %.not16.i240 = icmp eq i16 %i.qi, 0
  br i1 %.not16.i240, label %.critedge.i241, label %bb.cx

.critedge.i241:                                   ; preds = %bb.cy, %bb.cx
  %i.qj = trunc i32 %i.qc to i8
  store i8 %i.qj, ptr %i.c, align 16, !tbaa !14
  %i.qk = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i242 = icmp eq i32 %i.qk, -1
  br i1 %.not1719.i242, label %get_word.exit251, label %.lr.ph.i243

.lr.ph.i243:                                      ; preds = %.critedge.i241
  %i.ql = tail call ptr @__ctype_b_loc() #16
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %.lr.ph.i243
  %indvars.iv.i244 = phi i64 [ 1, %.lr.ph.i243 ], [ %indvars.iv.next.i249, %bb.da ] ; 3 uses
  %i.qm = phi i32 [ %i.qk, %.lr.ph.i243 ], [ %i.qu, %bb.da ] ; 2 uses
  %i.qn = load ptr, ptr %i.ql, align 8, !tbaa !11
  %i.qo = sext i32 %i.qm to i64
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qn, i64 %i.qo
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !13
  %i.qr = and i16 %i.qq, 8192
  %.not18.i245 = icmp eq i16 %i.qr, 0
  br i1 %.not18.i245, label %bb.da, label %.critedge2.loopexit.i246

bb.da:                                            ; preds = %bb.cz
  %i.qs = trunc i32 %i.qm to i8
  %indvars.iv.next.i249 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i244
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !14
  %i.qu = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i250 = icmp eq i32 %i.qu, -1
  br i1 %.not17.i250, label %.critedge2.loopexit.i246, label %bb.cz

.critedge2.loopexit.i246:                         ; preds = %bb.da, %bb.cz
  %.0.lcssa.ph.in.i247 = phi i64 [ %indvars.iv.i244, %bb.cz ], [ %indvars.iv.next.i249, %bb.da ]
  %i.qv = and i64 %.0.lcssa.ph.in.i247, 4294967295
  br label %get_word.exit251

get_word.exit251:                                 ; preds = %.critedge.i241, %.critedge2.loopexit.i246
  %.0.lcssa.i248 = phi i64 [ 1, %.critedge.i241 ], [ %i.qv, %.critedge2.loopexit.i246 ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i248
  store i8 0, ptr %i.qw, align 1, !tbaa !14
  %i.qx = load i8, ptr %i.c, align 16, !tbaa !14
  %i.qy = icmp eq i8 %i.qx, 40
  br i1 %i.qy, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %get_word.exit251
  %i.qz = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.g) #17 ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %get_word.exit251
  %i.ra = load ptr, ptr %i.h, align 8, !tbaa !35  ; 3 uses
  %i.rb = icmp eq ptr %i.ra, null
  br i1 %i.rb, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rc = load ptr, ptr %i.ra, align 8, !tbaa !36
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.de, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.dd
  %i.re = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.rf = icmp sgt i32 %i.re, 0
  br i1 %i.rf, label %.preheader.lr.ph.i, label %.loopexit307

.preheader.lr.ph.i:                               ; preds = %.preheader22.i
  %i.rg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.rh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  %wide.trip.count33.i = zext nneg i32 %i.re to i64
  br label %.preheader.i

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ri = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #17
  %i.rj = icmp eq i32 %i.ri, 1
  br i1 %i.rj, label %.label_index.exit_crit_edge, label %.loopexit307

.label_index.exit_crit_edge:                      ; preds = %bb.de
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %label_index.exit

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next31.i, %._crit_edge.i ] ; 4 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv30.i
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !8  ; 2 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  br i1 %i.rm, label %.lr.ph.i252, label %._crit_edge.i

.lr.ph.i252:                                      ; preds = %.preheader.i
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv30.i
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !8
  %i.rp = sext i32 %i.ro to i64
  %wide.trip.count.i = zext nneg i32 %i.rl to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ra, i64 %i.rp
  br label %bb.df

bb.df:                                            ; preds = %bb.dh, %.lr.ph.i252
  %indvars.iv.i253 = phi i64 [ 0, %.lr.ph.i252 ], [ %indvars.iv.next.i254, %bb.dh ] ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i253
  %i.rq = load ptr, ptr %gep.i, align 8, !tbaa !36
  %i.rr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.rq, ptr noundef nonnull readonly dereferenceable(1) %i.c) #19
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.rt = trunc nuw nsw i64 %indvars.iv30.i to i32 ; 2 uses
  store i32 %i.rt, ptr %i.a, align 4, !tbaa !8
  br label %label_index.exit

bb.dh:                                            ; preds = %bb.df
  %indvars.iv.next.i254 = add nuw nsw i64 %indvars.iv.i253, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i254, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.df

._crit_edge.i:                                    ; preds = %bb.dh, %.preheader.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %.loopexit307, label %.preheader.i

label_index.exit:                                 ; preds = %.label_index.exit_crit_edge, %bb.dg
  %i.ru = phi i32 [ %.pre, %.label_index.exit_crit_edge ], [ %i.rt, %bb.dg ]
  %i.rv = add nsw i32 %i.ru, 1
  %i.rw = load ptr, ptr %i.py, align 8, !tbaa !53
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv
  store i32 %i.rv, ptr %i.rx, align 4, !tbaa !8
  br label %.preheader453

.loopexit307:                                     ; preds = %._crit_edge.i, %.preheader22.i, %bb.de
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.47) #17
  br label %.preheader453

.preheader453:                                    ; preds = %.loopexit307, %label_index.exit
  br label %bb.di

bb.di:                                            ; preds = %.preheader453, %bb.dj
  %i.ry = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i255 = icmp eq i32 %i.ry, -1
  br i1 %.not.i255, label %.critedge.i257, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rz = tail call ptr @__ctype_b_loc() #16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !11
  %i.sb = sext i32 %i.ry to i64
  %i.sc = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.sb
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !13
  %i.se = and i16 %i.sd, 8192
  %.not16.i256 = icmp eq i16 %i.se, 0
  br i1 %.not16.i256, label %.critedge.i257, label %bb.di

.critedge.i257:                                   ; preds = %bb.dj, %bb.di
  %i.sf = trunc i32 %i.ry to i8
  store i8 %i.sf, ptr %i.c, align 16, !tbaa !14
  %i.sg = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i258 = icmp eq i32 %i.sg, -1
  br i1 %.not1719.i258, label %get_word.exit267, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.critedge.i257
  %i.sh = tail call ptr @__ctype_b_loc() #16
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dl, %.lr.ph.i259
  %indvars.iv.i260 = phi i64 [ 1, %.lr.ph.i259 ], [ %indvars.iv.next.i265, %bb.dl ] ; 3 uses
  %i.si = phi i32 [ %i.sg, %.lr.ph.i259 ], [ %i.sq, %bb.dl ] ; 2 uses
  %i.sj = load ptr, ptr %i.sh, align 8, !tbaa !11
  %i.sk = sext i32 %i.si to i64
  %i.sl = getelementptr inbounds [2 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !13
  %i.sn = and i16 %i.sm, 8192
  %.not18.i261 = icmp eq i16 %i.sn, 0
  br i1 %.not18.i261, label %bb.dl, label %.critedge2.loopexit.i262

bb.dl:                                            ; preds = %bb.dk
  %i.so = trunc i32 %i.si to i8
  %indvars.iv.next.i265 = add nuw nsw i64 %indvars.iv.i260, 1 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i260
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !14
  %i.sq = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i266 = icmp eq i32 %i.sq, -1
  br i1 %.not17.i266, label %.critedge2.loopexit.i262, label %bb.dk

.critedge2.loopexit.i262:                         ; preds = %bb.dl, %bb.dk
  %.0.lcssa.ph.in.i263 = phi i64 [ %indvars.iv.i260, %bb.dk ], [ %indvars.iv.next.i265, %bb.dl ]
  %i.sr = and i64 %.0.lcssa.ph.in.i263, 4294967295
  br label %get_word.exit267

get_word.exit267:                                 ; preds = %.critedge.i257, %.critedge2.loopexit.i262
  %.0.lcssa.i264 = phi i64 [ 1, %.critedge.i257 ], [ %i.sr, %.critedge2.loopexit.i262 ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i264
  store i8 0, ptr %i.ss, align 1, !tbaa !14
  %i.st = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.su = getelementptr i8, ptr %i.c, i64 %i.st
  %i.sv = getelementptr i8, ptr %i.su, i64 -1     ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !14
  %i.sx = icmp eq i8 %i.sw, 41
  br i1 %i.sx, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %get_word.exit267
  store i8 0, ptr %i.sv, align 1, !tbaa !14
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %get_word.exit267
  %i.sy = load ptr, ptr %i.h, align 8, !tbaa !35  ; 3 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ta = load ptr, ptr %i.sy, align 8, !tbaa !36
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.dp, label %.preheader22.i268

.preheader22.i268:                                ; preds = %bb.do
  %i.tc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.td = icmp sgt i32 %i.tc, 0
  br i1 %i.td, label %.preheader.lr.ph.i270, label %.loopexit

.preheader.lr.ph.i270:                            ; preds = %.preheader22.i268
  %i.te = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.tf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  %wide.trip.count33.i271 = zext nneg i32 %i.tc to i64
  br label %.preheader.i272

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.tg = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #17
  %i.th = icmp eq i32 %i.tg, 1
  br i1 %i.th, label %.label_index.exit286_crit_edge, label %.loopexit

.label_index.exit286_crit_edge:                   ; preds = %bb.dp
  %.pre371 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %label_index.exit286

.preheader.i272:                                  ; preds = %._crit_edge.i274, %.preheader.lr.ph.i270
  %indvars.iv30.i273 = phi i64 [ 0, %.preheader.lr.ph.i270 ], [ %indvars.iv.next31.i275, %._crit_edge.i274 ] ; 4 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv30.i273
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !8  ; 2 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph.i277, label %._crit_edge.i274

.lr.ph.i277:                                      ; preds = %.preheader.i272
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv30.i273
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !8
  %i.tn = sext i32 %i.tm to i64
  %wide.trip.count.i278 = zext nneg i32 %i.tj to i64
  %invariant.gep.i279 = getelementptr [8 x i8], ptr %i.sy, i64 %i.tn
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ds, %.lr.ph.i277
  %indvars.iv.i280 = phi i64 [ 0, %.lr.ph.i277 ], [ %indvars.iv.next.i282, %bb.ds ] ; 2 uses
  %gep.i281 = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.i280
  %i.to = load ptr, ptr %gep.i281, align 8, !tbaa !36
  %i.tp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.to, ptr noundef nonnull readonly dereferenceable(1) %i.c) #19
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.tr = trunc nuw nsw i64 %indvars.iv30.i273 to i32 ; 2 uses
  store i32 %i.tr, ptr %i.a, align 4, !tbaa !8
  br label %label_index.exit286

bb.ds:                                            ; preds = %bb.dq
  %indvars.iv.next.i282 = add nuw nsw i64 %indvars.iv.i280, 1 ; 2 uses
  %exitcond.not.i283 = icmp eq i64 %indvars.iv.next.i282, %wide.trip.count.i278
  br i1 %exitcond.not.i283, label %._crit_edge.i274, label %bb.dq

._crit_edge.i274:                                 ; preds = %bb.ds, %.preheader.i272
  %indvars.iv.next31.i275 = add nuw nsw i64 %indvars.iv30.i273, 1 ; 2 uses
  %exitcond34.not.i276 = icmp eq i64 %indvars.iv.next31.i275, %wide.trip.count33.i271
  br i1 %exitcond34.not.i276, label %.loopexit, label %.preheader.i272

label_index.exit286:                              ; preds = %.label_index.exit286_crit_edge, %bb.dr
  %i.ts = phi i32 [ %.pre371, %.label_index.exit286_crit_edge ], [ %i.tr, %bb.dr ]
  %i.tt = add nsw i32 %i.ts, 1
  %i.tu = load ptr, ptr %i.qa, align 8, !tbaa !54
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv
  store i32 %i.tt, ptr %i.tv, align 4, !tbaa !8
  br label %bb.dt

.loopexit:                                        ; preds = %._crit_edge.i274, %.preheader22.i268, %bb.dp
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.47) #17
  br label %bb.dt

bb.dt:                                            ; preds = %label_index.exit286, %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tw = load i32, ptr %i.ps, align 8, !tbaa !52
  %i.tx = sext i32 %i.tw to i64
  %i.ty = icmp slt i64 %indvars.iv.next, %i.tx
  br i1 %i.ty, label %.preheader308, label %PLA_labels.exit.backedge

bb.du:                                            ; preds = %bb.cr
  %i.tz = load i32, ptr @echo_unknown_commands, align 4, !tbaa !8
  %.not141 = icmp eq i32 %i.tz, 0
  br i1 %.not141, label %.split.us.i290.preheader, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ua = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef 46, ptr noundef nonnull %i.c) ; 0 uses
  %.pr = load i32, ptr @echo_unknown_commands, align 4, !tbaa !8
  %i.ub = icmp eq i32 %.pr, 0
  %i.uc = load ptr, ptr @stdout, align 8, !tbaa !24 ; 2 uses
  br i1 %i.ub, label %.split.us.i290.preheader, label %.split.i288

.split.us.i290.preheader:                         ; preds = %bb.du, %bb.dv
  br label %.split.us.i290

.split.us.i290:                                   ; preds = %.split.us.i290.preheader, %.split.us.i290
  %i.ud = call i32 @getc(ptr noundef %0)
  switch i32 %i.ud, label %.split.us.i290 [
    i32 -1, label %skip_line.exit291
    i32 10, label %skip_line.exit291
  ]

.split.i288:                                      ; preds = %bb.dv, %bb.dw
  %i.ue = call i32 @getc(ptr noundef %0)          ; 2 uses
  switch i32 %i.ue, label %bb.dw [
    i32 -1, label %.split8.us.i289
    i32 10, label %.split8.us.i289
  ]

bb.dw:                                            ; preds = %.split.i288
  %i.uf = call i32 @putc(i32 noundef %i.ue, ptr noundef %i.uc) ; 0 uses
  br label %.split.i288

.split8.us.i289:                                  ; preds = %.split.i288, %.split.i288
  %i.ug = call i32 @putc(i32 noundef 10, ptr noundef %i.uc) ; 0 uses
  br label %skip_line.exit291

skip_line.exit291:                                ; preds = %.split.us.i290, %.split.us.i290, %.split8.us.i289
  %i.uh = load i32, ptr @lineno, align 4, !tbaa !8
  %i.ui = add nsw i32 %i.uh, 1
  store i32 %i.ui, ptr @lineno, align 4, !tbaa !8
  br label %PLA_labels.exit.backedge

bb.dx:                                            ; preds = %PLA_labels.exit
  %i.uj = call i32 @ungetc(i32 noundef %i.o, ptr noundef %0) ; 0 uses
  %i.uk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.um = load i32, ptr @echo_comments, align 4, !tbaa !8
  %.not170 = icmp eq i32 %i.um, 0
  br i1 %.not170, label %.split.us.i295.preheader, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.un = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.uo = call noundef i32 @putc(i32 noundef 35, ptr noundef %i.un), !inline_history !0 ; 0 uses
  %.pr301 = load i32, ptr @echo_comments, align 4, !tbaa !8
  %i.up = icmp eq i32 %.pr301, 0
  %i.uq = load ptr, ptr @stdout, align 8, !tbaa !24 ; 2 uses
  br i1 %i.up, label %.split.us.i295.preheader, label %.split.i293

.split.us.i295.preheader:                         ; preds = %bb.dy, %bb.dz
  br label %.split.us.i295
end_hunk_1
begin_hunk_2_@free_PLA:bb.a
bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.g) #17
  store ptr null, ptr %i.f, align 8, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 3 uses
  %.not82 = icmp eq ptr %i.i, null
  br i1 %.not82, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %.not83 = icmp eq ptr %i.k, null
  br i1 %.not83, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.k) #17
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.n = phi ptr [ %i.l, %bb.k ], [ %i.i, %bb.j ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %.not84 = icmp eq ptr %i.p, null
  br i1 %.not84, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.p) #17
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.s = phi ptr [ %i.q, %.thread ], [ %i.n, %bb.l ]
  tail call void @free(ptr noundef nonnull %i.s) #17
  store ptr null, ptr %i.h, align 8, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %.not86 = icmp eq ptr %i.u, null
  br i1 %.not86, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.v = load i32, ptr @cube, align 8, !tbaa !20  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %i.x = phi i32 [ %i.ad, %bb.p ], [ %i.v, %.preheader ]
  %i.y = phi ptr [ %i.ae, %bb.p ], [ %i.u, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not93 = icmp eq ptr %i.aa, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.aa) #17
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store ptr null, ptr %i.ac, align 8, !tbaa !36
  %.pre = load i32, ptr @cube, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %i.ad = phi i32 [ %i.x, %.lr.ph ], [ %.pre, %bb.o ] ; 2 uses
  %i.ae = phi ptr [ %i.y, %.lr.ph ], [ %i.ab, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = sext i32 %i.ad to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.ah = phi ptr [ %i.u, %.preheader ], [ %i.ae, %bb.p ]
  tail call void @free(ptr noundef nonnull %i.ah) #17
  store ptr null, ptr %i.t, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55 ; 2 uses
  %.not88 = icmp eq ptr %i.aj, null
  br i1 %.not88, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.aj) #17
  store ptr null, ptr %i.ai, align 8, !tbaa !55
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %.not89101 = icmp eq ptr %i.al, null
  br i1 %.not89101, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.s, %._crit_edge100
  %.065102 = phi ptr [ %i.aq, %._crit_edge100 ], [ %i.al, %bb.s ] ; 3 uses
  %i.am = load ptr, ptr %.065102, align 8, !tbaa !59 ; 2 uses
  %.not9296 = icmp eq ptr %i.am, null
  br i1 %.not9296, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph104, %.lr.ph99
  %.06697 = phi ptr [ %i.ao, %.lr.ph99 ], [ %i.am, %.lr.ph104 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06697, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06697) #17
  %.not92 = icmp eq ptr %i.ao, null
  br i1 %.not92, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99, %.lr.ph104
  %i.ap = getelementptr inbounds nuw i8, ptr %.065102, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  tail call void @free(ptr noundef nonnull %.065102) #17
  %.not89 = icmp eq ptr %i.aq, null
  br i1 %.not89, label %._crit_edge105, label %.lr.ph104

._crit_edge105:                                   ; preds = %._crit_edge100, %bb.s
  store ptr null, ptr %i.ak, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not90111 = icmp eq ptr %i.as, null
  br i1 %.not90111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge105, %._crit_edge110
  %.1112 = phi ptr [ %i.ax, %._crit_edge110 ], [ %i.as, %._crit_edge105 ] ; 3 uses
  %i.at = load ptr, ptr %.1112, align 8, !tbaa !59 ; 2 uses
  %.not91106 = icmp eq ptr %i.at, null
  br i1 %.not91106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph114, %.lr.ph109
  %.167107 = phi ptr [ %i.av, %.lr.ph109 ], [ %i.at, %.lr.ph114 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.167107, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60 ; 2 uses
  tail call void @free(ptr noundef nonnull %.167107) #17
  %.not91 = icmp eq ptr %i.av, null
  br i1 %.not91, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %.lr.ph114
  %i.aw = getelementptr inbounds nuw i8, ptr %.1112, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 2 uses
  tail call void @free(ptr noundef nonnull %.1112) #17
  %.not90 = icmp eq ptr %i.ax, null
  br i1 %.not90, label %._crit_edge115, label %.lr.ph114

._crit_edge115:                                   ; preds = %._crit_edge110, %._crit_edge105
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @read_symbolic(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #22 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !47
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.bj, %bb.o ]
  %.035 = phi ptr [ null, %bb.a ], [ %i.be, %bb.o ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = call i32 @getc(ptr noundef %0)           ; 3 uses
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__ctype_b_loc() #16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !13
  %i.p = and i16 %i.o, 8192
  %.not16.i = icmp eq i16 %i.p, 0
  br i1 %.not16.i, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.q = trunc i32 %i.j to i8
  store i8 %i.q, ptr %2, align 1, !tbaa !14
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not1719.i = icmp eq i32 %i.r, -1
  br i1 %.not1719.i, label %get_word.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.s = tail call ptr @__ctype_b_loc() #16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.t = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ab, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !13
  %i.y = and i16 %i.x, 8192
  %.not18.i = icmp eq i16 %i.y, 0
  br i1 %.not18.i, label %bb.f, label %.critedge2.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.z = trunc i32 %i.t to i8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !14
  %i.ab = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i = icmp eq i32 %i.ab, -1
  br i1 %.not17.i, label %.critedge2.loopexit.i, label %bb.e

.critedge2.loopexit.i:                            ; preds = %bb.f, %bb.e
  %.0.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.e ], [ %indvars.iv.next.i, %bb.f ]
  %i.ac = and i64 %.0.lcssa.ph.in.i, 4294967295
  br label %get_word.exit

get_word.exit:                                    ; preds = %.critedge.i, %.critedge2.loopexit.i
  %.0.lcssa.i = phi i64 [ 1, %.critedge.i ], [ %i.ac, %.critedge2.loopexit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa.i
  store i8 0, ptr %i.ad, align 1, !tbaa !14
  %i.ae = load i8, ptr %2, align 1
  %.not = icmp eq i8 %i.ae, 59
  br i1 %.not, label %get_word.exit.tail, label %get_word.exit.tail.thread

get_word.exit.tail:                               ; preds = %get_word.exit
  %i.af = load i8, ptr %i.g, align 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.preheader, label %get_word.exit.tail.thread

get_word.exit.tail.thread:                        ; preds = %get_word.exit, %get_word.exit.tail
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !35  ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %get_word.exit.tail.thread
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.h, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.g
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.lr.ph.i, label %label_index.exit.thread

.preheader.lr.ph.i:                               ; preds = %.preheader22.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  %wide.trip.count33.i = zext nneg i32 %i.al to i64
  br label %.preheader.i

bb.h:                                             ; preds = %bb.g, %get_word.exit.tail.thread
  %i.ap = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #17
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %label_index.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  br label %label_index.exit

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next31.i, %._crit_edge.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv30.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i37, label %._crit_edge.i

.lr.ph.i37:                                       ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv30.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = sext i32 %i.aw to i64
  %wide.trip.count.i = zext nneg i32 %i.at to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ah, i64 %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i37
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i39, %bb.l ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i38
  %i.ay = load ptr, ptr %gep.i, align 8, !tbaa !36
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull readonly dereferenceable(1) %2) #19
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %indvars.iv30.i to i32 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.i38 to i32
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !8
  br label %label_index.exit

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %label_index.exit.thread, label %.preheader.i

label_index.exit:                                 ; preds = %bb.k, %bb.i
  %i.bd = phi i32 [ %i.ar, %bb.i ], [ %i.bb, %bb.k ]
  %.1 = phi i32 [ %i.ar, %bb.i ], [ %i.bc, %bb.k ]
  %i.be = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %.1, ptr %i.bf, align 4, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !60
  %i.bh = icmp eq ptr %.035, null
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %label_index.exit
  store ptr %i.be, ptr %i.b, align 8, !tbaa !59
  br label %bb.o

bb.n:                                             ; preds = %label_index.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.035, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = add nuw nsw i32 %i.i, 1                 ; 2 uses
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !67
  br label %bb.b

.preheader:                                       ; preds = %get_word.exit.tail, %bb.v
  %i.bk = phi i32 [ %i.co, %bb.v ], [ 0, %get_word.exit.tail ]
  %.0 = phi ptr [ %i.cj, %bb.v ], [ null, %get_word.exit.tail ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader
  %i.bl = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i40 = icmp eq i32 %i.bl, -1
  br i1 %.not.i40, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call ptr @__ctype_b_loc() #16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !13
  %i.br = and i16 %i.bq, 8192
  %.not16.i41 = icmp eq i16 %i.br, 0
  br i1 %.not16.i41, label %.critedge.i42, label %bb.p

.critedge.i42:                                    ; preds = %bb.q, %bb.p
  %i.bs = trunc i32 %i.bl to i8
  store i8 %i.bs, ptr %2, align 1, !tbaa !14
  %i.bt = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i43 = icmp eq i32 %i.bt, -1
  br i1 %.not1719.i43, label %get_word.exit52, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.critedge.i42
  %i.bu = tail call ptr @__ctype_b_loc() #16
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i44
  %indvars.iv.i45 = phi i64 [ 1, %.lr.ph.i44 ], [ %indvars.iv.next.i50, %bb.s ] ; 3 uses
  %i.bv = phi i32 [ %i.bt, %.lr.ph.i44 ], [ %i.cd, %bb.s ] ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !11
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !13
  %i.ca = and i16 %i.bz, 8192
  %.not18.i46 = icmp eq i16 %i.ca, 0
  br i1 %.not18.i46, label %bb.s, label %.critedge2.loopexit.i47

bb.s:                                             ; preds = %bb.r
  %i.cb = trunc i32 %i.bv to i8
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i45
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !14
  %i.cd = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i51 = icmp eq i32 %i.cd, -1
  br i1 %.not17.i51, label %.critedge2.loopexit.i47, label %bb.r

.critedge2.loopexit.i47:                          ; preds = %bb.s, %bb.r
  %.0.lcssa.ph.in.i48 = phi i64 [ %indvars.iv.i45, %bb.r ], [ %indvars.iv.next.i50, %bb.s ]
  %i.ce = and i64 %.0.lcssa.ph.in.i48, 4294967295
  br label %get_word.exit52

get_word.exit52:                                  ; preds = %.critedge.i42, %.critedge2.loopexit.i47
  %.0.lcssa.i49 = phi i64 [ 1, %.critedge.i42 ], [ %i.ce, %.critedge2.loopexit.i47 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa.i49
  store i8 0, ptr %i.cf, align 1, !tbaa !14
  %i.cg = load i8, ptr %2, align 1
  %.not64 = icmp eq i8 %i.cg, 59
  br i1 %.not64, label %get_word.exit52.tail, label %get_word.exit52.tail.thread

get_word.exit52.tail:                             ; preds = %get_word.exit52
  %i.ch = load i8, ptr %i.g, align 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %get_word.exit52.tail.thread

get_word.exit52.tail.thread:                      ; preds = %get_word.exit52, %get_word.exit52.tail
  %i.cj = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.ck = call ptr @util_strsav(ptr noundef nonnull %2) #17
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !72
  %i.cm = icmp eq ptr %.0, null
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %get_word.exit52.tail.thread
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !68
  br label %bb.v

bb.u:                                             ; preds = %get_word.exit52.tail.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !72
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.co = add nuw nsw i32 %i.bk, 1                ; 2 uses
  store i32 %i.co, ptr %i.f, align 8, !tbaa !69
  br label %.preheader

bb.w:                                             ; preds = %get_word.exit52.tail
  store ptr %i.b, ptr %3, align 8, !tbaa !43
  br label %label_index.exit.thread

label_index.exit.thread:                          ; preds = %bb.h, %.preheader22.i, %._crit_edge.i, %bb.w
  %.036 = phi i32 [ 1, %bb.w ], [ 0, %._crit_edge.i ], [ 0, %.preheader22.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.036
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @label_index(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader22
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  %wide.trip.count33 = zext nneg i32 %i.f to i64
  br label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %2) #17
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %2, align 4, !tbaa !8
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next31, %._crit_edge ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv30
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv30
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.n to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.r
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load ptr, ptr %gep, align 8, !tbaa !36
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) %1) #19
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.v, ptr %2, align 4, !tbaa !8
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %.loopexit, label %.preheader

.loopexit.sink.split:                             ; preds = %bb.d, %bb.f
  %.sink = phi i32 [ %i.w, %bb.f ], [ %i.l, %bb.d ]
  store i32 %.sink, ptr %3, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.sink.split, %.preheader22, %bb.c
  %.020 = phi i32 [ 0, %.preheader22 ], [ 1, %.loopexit.sink.split ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i32 %.020
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind willreturn memory(read) }
end_hunk_2
