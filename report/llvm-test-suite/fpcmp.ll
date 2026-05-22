inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: error: unable to open '%s'\0A\00", align 1
@g_program = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: error: unable to seek '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: error: unable to allocate buffer for '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: error: unable to read data for '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"%s: Comparison failed, textual difference between '%c' and '%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%s: Comparison failed, unexpected end of one of the files\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"usage: %s [-a VALUE] [-r VALUE] [-i] <path-A> <path-B>\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [248 x i8] c"Search two text files for differences.\0AIf either -a or -r is specified (even if zero), floating numbers are parsed and considered equal if neither the absolute nor relative tolerance is exceeded.\0AThe -i switch also ignores whitespace differences.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"error: invalid argument '%s'\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"error: missing argument to '%s'\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"error: invalid argument to '%s': '%s'\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"error: invalid number of arguments\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"%s: FP Comparison failed, not a numeric difference between '%c' and '%c'\0A\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"%s: Compared: %e and %e\0Aabs. diff = %e rel.diff = %e\0AOut of tolerance: rel/abs: %e/%e\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Input 1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Input 2\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\0A%s: Contains binary data.\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"\0A%s:\0A%s\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @load_file(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.c = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.1, ptr noundef %i.c, ptr noundef %0) #14 ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.h = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.2, ptr noundef %i.h, ptr noundef %0) #14 ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 5 uses
  %i.k = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.n = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.2, ptr noundef %i.n, ptr noundef %0) #14 ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %i.j, 0
  br i1 %i.p, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %i.j, 1
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not26 = icmp eq ptr %i.r, null
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.t = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.3, ptr noundef %i.t, ptr noundef %0) #14 ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.j
  store i8 0, ptr %i.v, align 1, !tbaa !13
  %i.w = tail call i64 @fread(ptr noundef nonnull %i.r, i64 noundef %i.j, i64 noundef 1, ptr noundef nonnull %i.a)
  %.not27 = icmp eq i64 %i.w, 1
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.y = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.4, ptr noundef %i.y, ptr noundef %0) #14 ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  %.0 = phi ptr [ %i.r, %bb.l ], [ null, %bb.g ]
  store i64 %i.j, ptr %1, align 8, !tbaa !14
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @diff_file(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, double noundef %3, double noundef %4, i1 noundef zeroext %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.e = call ptr @load_file(ptr noundef %0, ptr noundef nonnull %i.c) ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = call ptr @load_file(ptr noundef %1, ptr noundef nonnull %i.d) ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !14   ; 5 uses
  %i.j = load i64, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %i.e, ptr %i.g, i64 %i.i)
  %i.l = icmp eq i32 %bcmp, 0
  br i1 %i.l, label %bb.bg, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 21 uses
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 21 uses
  %.not263 = icmp sgt i64 %i.i, 0
  br i1 %.not263, label %.lr.ph266, label %.thread

.lr.ph266:                                        ; preds = %bb.c
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = fcmp oeq double %3, 0.000000e+00
  %i.r = fcmp oeq double %4, 0.000000e+00
  %i.s = add i64 %i.i, %i.f                       ; 3 uses
  %i.t = add i64 %i.j, %i.h                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph266, %.backedge
  %.0189265 = phi ptr [ %i.g, %.lr.ph266 ], [ %.0189.be, %.backedge ] ; 24 uses
  %.0194264 = phi ptr [ %i.e, %.lr.ph266 ], [ %.0194.be, %.backedge ] ; 23 uses
  %.0189265301 = ptrtoint ptr %.0189265 to i64    ; 6 uses
  %.0194264298 = ptrtoint ptr %.0194264 to i64    ; 3 uses
  %.not74 = icmp ult ptr %.0189265, %i.n
  br i1 %.not74, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %5, label %.lr.ph.i, label %skip_whitespace.exit84

.thread:                                          ; preds = %.backedge, %bb.c
  %.0194.lcssa = phi ptr [ %i.e, %bb.c ], [ %.0194.be, %.backedge ] ; 2 uses
  %.0189.lcssa = phi ptr [ %i.g, %bb.c ], [ %.0189.be, %.backedge ] ; 3 uses
  br i1 %5, label %.thread.skip_whitespace.exit_crit_edge, label %skip_whitespace.exit84

.thread.skip_whitespace.exit_crit_edge:           ; preds = %.thread
  %.pre = ptrtoint ptr %.0189.lcssa to i64
  br label %skip_whitespace.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = tail call ptr @__ctype_b_loc() #18
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 2 uses
  %i.w = load i8, ptr %.0194264, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18
  %i.aa = and i16 %i.z, 8192
  %.not.peel.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.peel.not.i, label %skip_whitespace.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0194264, i64 1 ; 3 uses
  %exitcond.peel.not.i = icmp eq ptr %i.ab, %i.m
  br i1 %exitcond.peel.not.i, label %skip_whitespace.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.f
  %scevgep308 = getelementptr i8, ptr %.0194264, i64 %i.s
  %i.ac = sub i64 0, %.0194264298
  %scevgep310 = getelementptr i8, ptr %scevgep308, i64 %i.ac
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.g
  %.5199 = phi ptr [ %i.ai, %bb.g ], [ %i.ab, %.peel.next.i.preheader ] ; 3 uses
  %i.ad = load i8, ptr %.5199, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !18
  %i.ah = and i16 %i.ag, 8192
  %.not.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i, label %skip_whitespace.exit, label %bb.g

bb.g:                                             ; preds = %.peel.next.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.5199, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ai, %i.m
  br i1 %exitcond.not.i, label %skip_whitespace.exit, label %.peel.next.i, !llvm.loop !20

skip_whitespace.exit:                             ; preds = %.peel.next.i, %bb.g, %.thread.skip_whitespace.exit_crit_edge, %.lr.ph.i, %bb.f
  %.0189234311.pre-phi = phi i64 [ %.pre, %.thread.skip_whitespace.exit_crit_edge ], [ %.0189265301, %bb.f ], [ %.0189265301, %.lr.ph.i ], [ %.0189265301, %bb.g ], [ %.0189265301, %.peel.next.i ]
  %.0189234 = phi ptr [ %.0189.lcssa, %.thread.skip_whitespace.exit_crit_edge ], [ %.0189265, %bb.f ], [ %.0189265, %.lr.ph.i ], [ %.0189265, %bb.g ], [ %.0189265, %.peel.next.i ] ; 6 uses
  %.6200 = phi ptr [ %.0194.lcssa, %.thread.skip_whitespace.exit_crit_edge ], [ %i.ab, %bb.f ], [ %.0194264, %.lr.ph.i ], [ %.5199, %.peel.next.i ], [ %scevgep310, %bb.g ] ; 5 uses
  %i.aj = icmp ult ptr %.0189234, %i.n
  br i1 %i.aj, label %.lr.ph.i78, label %skip_whitespace.exit84

.lr.ph.i78:                                       ; preds = %skip_whitespace.exit
  %i.ak = tail call ptr @__ctype_b_loc() #18
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.am = load i8, ptr %.0189234, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18
  %i.aq = and i16 %i.ap, 8192
  %.not.peel.not.i79 = icmp eq i16 %i.aq, 0
  br i1 %.not.peel.not.i79, label %skip_whitespace.exit84, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i78
  %i.ar = getelementptr inbounds nuw i8, ptr %.0189234, i64 1 ; 3 uses
  %exitcond.peel.not.i80 = icmp eq ptr %i.ar, %i.n
  br i1 %exitcond.peel.not.i80, label %skip_whitespace.exit84, label %.peel.next.i81.preheader

.peel.next.i81.preheader:                         ; preds = %bb.h
  %i.as = add i64 %i.j, %i.h
  %i.at = sub i64 %i.as, %.0189234311.pre-phi
  %scevgep312 = getelementptr i8, ptr %.0189234, i64 %i.at
  br label %.peel.next.i81

.peel.next.i81:                                   ; preds = %.peel.next.i81.preheader, %bb.i
  %.5193 = phi ptr [ %i.az, %bb.i ], [ %i.ar, %.peel.next.i81.preheader ] ; 3 uses
  %i.au = load i8, ptr %.5193, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !18
  %i.ay = and i16 %i.ax, 8192
  %.not.i82 = icmp eq i16 %i.ay, 0
  br i1 %.not.i82, label %skip_whitespace.exit84, label %bb.i

bb.i:                                             ; preds = %.peel.next.i81
  %i.az = getelementptr inbounds nuw i8, ptr %.5193, i64 1 ; 2 uses
  %exitcond.not.i83 = icmp eq ptr %i.az, %i.n
  br i1 %exitcond.not.i83, label %skip_whitespace.exit84, label %.peel.next.i81, !llvm.loop !20

bb.j:                                             ; preds = %bb.d
  %i.ba = load i8, ptr %.0194264, align 1, !tbaa !13 ; 5 uses
  %i.bb = load i8, ptr %.0189265, align 1, !tbaa !13 ; 5 uses
  %i.bc = icmp eq i8 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %isPossibleStartOfNumber.exit.thread

bb.k:                                             ; preds = %bb.j
  br i1 %2, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.off.i.i = add i8 %i.ba, -48
  %switch.i.i = icmp ult i8 %.off.i.i, 10
  br i1 %switch.i.i, label %isPossibleStartOfNumber.exit.thread, label %isPossibleStartOfNumber.exit

isPossibleStartOfNumber.exit:                     ; preds = %bb.l
  switch i8 %i.ba, label %bb.m [
    i8 46, label %isPossibleStartOfNumber.exit.thread
    i8 45, label %isPossibleStartOfNumber.exit.thread
    i8 43, label %isPossibleStartOfNumber.exit.thread
  ]

bb.m:                                             ; preds = %isPossibleStartOfNumber.exit, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.0194264, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0189265, i64 1
  br label %.backedge

.backedge:                                        ; preds = %.peel.next.i99, %bb.q, %.lr.ph.i96, %.lr.ph.i96.thread, %bb.x, %bb.bc, %bb.al, %bb.p, %bb.m
  %.0194.be = phi ptr [ %i.bd, %bb.m ], [ %.8202, %.lr.ph.i96 ], [ %i.dr, %bb.x ], [ %.046.i, %bb.bc ], [ %i.gl, %bb.al ], [ %.8202351, %bb.p ], [ %i.bl, %.lr.ph.i96.thread ], [ %.8202351, %bb.q ], [ %.8202351, %.peel.next.i99 ] ; 3 uses
  %.0189.be = phi ptr [ %i.be, %bb.m ], [ %.0189265, %.lr.ph.i96 ], [ %i.ds, %bb.x ], [ %.046.i128, %bb.bc ], [ %i.gm, %bb.al ], [ %i.cf, %bb.p ], [ %.0189265, %.lr.ph.i96.thread ], [ %scevgep302, %bb.q ], [ %.7, %.peel.next.i99 ] ; 2 uses
  %.not = icmp ult ptr %.0194.be, %i.m
  br i1 %.not, label %bb.d, label %.thread

isPossibleStartOfNumber.exit.thread:              ; preds = %isPossibleStartOfNumber.exit, %isPossibleStartOfNumber.exit, %isPossibleStartOfNumber.exit, %bb.l, %bb.j
  br i1 %5, label %.lr.ph.i87, label %bb.r

.lr.ph.i87:                                       ; preds = %isPossibleStartOfNumber.exit.thread
  %i.bf = tail call ptr @__ctype_b_loc() #18
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16 ; 6 uses
  %i.bh = zext i8 %i.ba to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !18
  %i.bk = and i16 %i.bj, 8192
  %.not.peel.not.i88.not = icmp eq i16 %i.bk, 0
  br i1 %.not.peel.not.i88.not, label %.lr.ph.i96.thread353, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i87
  %i.bl = getelementptr inbounds nuw i8, ptr %.0194264, i64 1 ; 4 uses
  %exitcond.peel.not.i89 = icmp eq ptr %i.bl, %i.m
  br i1 %exitcond.peel.not.i89, label %.lr.ph.i96.thread, label %.peel.next.i90.preheader

.peel.next.i90.preheader:                         ; preds = %bb.n
  %scevgep297 = getelementptr i8, ptr %.0194264, i64 %i.s
  %i.bm = sub i64 0, %.0194264298
  %scevgep299 = getelementptr i8, ptr %scevgep297, i64 %i.bm
  br label %.peel.next.i90

.peel.next.i90:                                   ; preds = %.peel.next.i90.preheader, %bb.o
  %.7201 = phi ptr [ %i.bs, %bb.o ], [ %i.bl, %.peel.next.i90.preheader ] ; 3 uses
  %i.bn = load i8, ptr %.7201, align 1, !tbaa !13
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !18
  %i.br = and i16 %i.bq, 8192
  %.not.i91 = icmp eq i16 %i.br, 0
  br i1 %.not.i91, label %.lr.ph.i96, label %bb.o

bb.o:                                             ; preds = %.peel.next.i90
  %i.bs = getelementptr inbounds nuw i8, ptr %.7201, i64 1 ; 2 uses
  %exitcond.not.i92 = icmp eq ptr %i.bs, %i.m
  br i1 %exitcond.not.i92, label %.lr.ph.i96, label %.peel.next.i90, !llvm.loop !20

.lr.ph.i96:                                       ; preds = %bb.o, %.peel.next.i90
  %.8202 = phi ptr [ %.7201, %.peel.next.i90 ], [ %scevgep299, %bb.o ] ; 2 uses
end_hunk_0
begin_hunk_1_@diff_file:bb.a
.lr.ph260:                                        ; preds = %.lr.ph72.i151
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  %exitcond83.not.i156 = icmp eq ptr %i.ge, %i.n
  br i1 %exitcond83.not.i156, label %.lr.ph260..AdvanceNumber.exit166.loopexit_crit_edge_crit_edge, label %.lr.ph72.i151, !llvm.loop !25

.lr.ph72.i151:                                    ; preds = %.lr.ph72.i151.lr.ph, %.lr.ph260
  %i.gf = phi ptr [ %i.gd, %.lr.ph72.i151.lr.ph ], [ %i.ge, %.lr.ph260 ] ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !13
  %.off.i56.i154 = add i8 %i.gg, -48
  %switch.i57.i155 = icmp ult i8 %.off.i56.i154, 10
  br i1 %switch.i57.i155, label %.lr.ph260, label %AdvanceNumber.exit166, !llvm.loop !25

.lr.ph260..AdvanceNumber.exit166.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph260
  br label %.AdvanceNumber.exit166.loopexit_crit_edge, !llvm.loop !25

.AdvanceNumber.exit166.loopexit_crit_edge:        ; preds = %.lr.ph260..AdvanceNumber.exit166.loopexit_crit_edge_crit_edge, %.lr.ph260.preheader
  br label %AdvanceNumber.exit166, !llvm.loop !25

AdvanceNumber.exit166:                            ; preds = %.lr.ph72.i151, %.lr.ph72.preheader.i148, %.AdvanceNumber.exit166.loopexit_crit_edge, %.critedge2.thread.i142, %bb.ah, %bb.ak
  %.046.i128 = phi ptr [ %.262.i143, %bb.ak ], [ %.262.i143, %bb.ah ], [ %.262.i143, %.critedge2.thread.i142 ], [ %.262.i143, %.lr.ph72.preheader.i148 ], [ %scevgep82.i150, %.AdvanceNumber.exit166.loopexit_crit_edge ], [ %i.gf, %.lr.ph72.i151 ] ; 3 uses
  %i.gh = icmp ne ptr %.046.i, null
  %i.gi = icmp ne ptr %.046.i128, null
  %or.cond = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond, label %bb.am, label %AdvanceNumber.exit166.thread

AdvanceNumber.exit166.thread:                     ; preds = %bb.ag, %.critedge2.i138, %AdvanceNumber.exit166
  %i.gj = load i8, ptr %.0194264, align 1, !tbaa !13
  %i.gk = load i8, ptr %.0189265, align 1, !tbaa !13
  %.not75 = icmp eq i8 %i.gj, %i.gk
  br i1 %.not75, label %bb.al, label %skip_whitespace.exit84

bb.al:                                            ; preds = %AdvanceNumber.exit166.thread
  %i.gl = getelementptr inbounds nuw i8, ptr %.0194264, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %.0189265, i64 1
  br label %.backedge

bb.am:                                            ; preds = %AdvanceNumber.exit166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.gn = ptrtoint ptr %.046.i to i64
  %i.go = ptrtoint ptr %.0186 to i64              ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 3 uses
  %i.gq = ptrtoint ptr %.046.i128 to i64
  %i.gr = ptrtoint ptr %.0 to i64                 ; 2 uses
  %i.gs = sub i64 %i.gq, %i.gr                    ; 2 uses
  %i.gt = icmp eq i64 %i.gp, %i.gs
  br i1 %i.gt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %bcmp.i = tail call i32 @bcmp(ptr %.0186, ptr nonnull %.0, i64 %i.gp)
  %i.gu = icmp eq i32 %bcmp.i, 0
  br i1 %i.gu, label %bb.bc, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gv = call double @strtod(ptr noundef %.0186, ptr noundef nonnull %i.a) #17
  %i.gw = call double @strtod(ptr noundef nonnull %.0, ptr noundef nonnull %i.b) #17
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  switch i8 %i.gy, label %bb.aq [
    i8 68, label %bb.ap
    i8 100, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.gz = add nsw i64 %i.gp, 1                    ; 2 uses
  %i.ha = tail call noalias ptr @malloc(i64 noundef %i.gz) #16 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %.0186, i64 %i.gz, i1 false)
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.hb, %i.go
  %i.hd = and i64 %i.hc, 4294967295
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hd
  store i8 101, ptr %i.he, align 1, !tbaa !13
  %i.hf = call double @strtod(ptr noundef %i.ha, ptr noundef nonnull %i.a) #17
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.ha to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %.0186, i64 %i.hj
  tail call void @free(ptr noundef %i.ha) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hl = phi ptr [ %i.hk, %bb.ap ], [ %i.gx, %bb.ao ]
  %.059.i = phi double [ %i.hf, %bb.ap ], [ %i.gv, %bb.ao ] ; 7 uses
  %i.hm = load ptr, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !13
  switch i8 %i.hn, label %bb.as [
    i8 68, label %bb.ar
    i8 100, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.ho = add nsw i64 %i.gs, 1                    ; 2 uses
  %i.hp = tail call noalias ptr @malloc(i64 noundef %i.ho) #16 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr nonnull align 1 %.0, i64 %i.ho, i1 false)
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hq, %i.gr
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hs
  store i8 101, ptr %i.ht, align 1, !tbaa !13
  %i.hu = call double @strtod(ptr noundef %i.hp, ptr noundef nonnull %i.b) #17
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hp to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %.0, i64 %i.hy
  tail call void @free(ptr noundef %i.hp) #17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ia = phi ptr [ %i.hz, %bb.ar ], [ %i.hm, %bb.aq ]
  %.061.i = phi double [ %i.hu, %bb.ar ], [ %i.gw, %bb.aq ] ; 7 uses
  %i.ib = icmp eq ptr %i.hl, %.0186
  %i.ic = icmp eq ptr %i.ia, %.0
  %or.cond.i = select i1 %i.ib, i1 true, i1 %i.ic
  br i1 %or.cond.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ie = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.if = load i8, ptr %.0186, align 1, !tbaa !13
  %i.ig = sext i8 %i.if to i32
  %i.ih = load i8, ptr %.0, align 1, !tbaa !13
  %i.ii = sext i8 %i.ih to i32
  %i.ij = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.13, ptr noundef %i.ie, i32 noundef %i.ig, i32 noundef %i.ii) #14 ; 0 uses
  br label %.thread213

bb.au:                                            ; preds = %bb.as
  %i.ik = fcmp oeq double %.059.i, %.061.i
  br i1 %i.ik, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.q, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.il = fsub double %.059.i, %.061.i
  %i.im = tail call double @llvm.fabs.f64(double %i.il)
  %i.in = fcmp olt double %3, %i.im
  br i1 %i.in, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.io = fcmp une double %.061.i, 0.000000e+00
  br i1 %i.io, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ip = fdiv double %.059.i, %.061.i
  %i.iq = fadd double %i.ip, -1.000000e+00
  %i.ir = tail call double @llvm.fabs.f64(double %i.iq)
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.is = fcmp une double %.059.i, 0.000000e+00
  br i1 %i.is, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.it = fdiv double %.061.i, %.059.i
  %i.iu = fadd double %i.it, -1.000000e+00
  %i.iv = tail call double @llvm.fabs.f64(double %i.iu)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i = phi double [ %i.ir, %bb.ay ], [ %i.iv, %bb.ba ], [ 0.000000e+00, %bb.az ] ; 2 uses
  %i.iw = fcmp ogt double %.0.i, %4
  %or.cond68.i = select i1 %i.r, i1 true, i1 %i.iw
  br i1 %or.cond68.i, label %.critedge.i168, label %bb.bc

.critedge.i168:                                   ; preds = %bb.bb
  %i.ix = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.iy = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.iz = fsub double %.059.i, %.061.i
  %i.ja = tail call double @llvm.fabs.f64(double %i.iz)
  %i.jb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.14, ptr noundef %i.iy, double noundef %.059.i, double noundef %.061.i, double noundef %i.ja, double noundef %.0.i, double noundef %4, double noundef %3) #14 ; 0 uses
  br label %.thread213

.thread213:                                       ; preds = %bb.at, %.critedge.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bg

bb.bc:                                            ; preds = %bb.an, %bb.au, %bb.bb, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.backedge

skip_whitespace.exit84:                           ; preds = %AdvanceNumber.exit166.thread, %bb.w, %.critedge, %bb.i, %.peel.next.i81, %bb.h, %.lr.ph.i78, %skip_whitespace.exit, %.thread, %bb.e
  %.4198 = phi ptr [ %.6200, %bb.i ], [ %.0194.lcssa, %.thread ], [ %.0194264, %bb.e ], [ %.6200, %skip_whitespace.exit ], [ %.6200, %.lr.ph.i78 ], [ %.6200, %bb.h ], [ %.6200, %.peel.next.i81 ], [ %.0194264, %.critedge ], [ %.0194264, %bb.w ], [ %.0194264, %AdvanceNumber.exit166.thread ] ; 2 uses
  %.4192 = phi ptr [ %scevgep312, %bb.i ], [ %.0189.lcssa, %.thread ], [ %.0189265, %bb.e ], [ %.0189234, %skip_whitespace.exit ], [ %.0189234, %.lr.ph.i78 ], [ %i.ar, %bb.h ], [ %.5193, %.peel.next.i81 ], [ %.0189265, %.critedge ], [ %.0189265, %bb.w ], [ %.0189265, %AdvanceNumber.exit166.thread ] ; 2 uses
  %i.jc = icmp uge ptr %.4198, %i.m               ; 2 uses
  %i.jd = icmp uge ptr %.4192, %i.n               ; 2 uses
  %or.cond3 = select i1 %i.jc, i1 true, i1 %i.jd
  br i1 %or.cond3, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %skip_whitespace.exit84
  %i.je = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jf = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.jg = load i8, ptr %.4198, align 1, !tbaa !13
  %i.jh = sext i8 %i.jg to i32
  %i.ji = load i8, ptr %.4192, align 1, !tbaa !13
  %i.jj = sext i8 %i.ji to i32
  %i.jk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.je, ptr noundef nonnull @.str.5, ptr noundef %i.jf, i32 noundef %i.jh, i32 noundef %i.jj) #14 ; 0 uses
  br label %.sink.split

bb.be:                                            ; preds = %skip_whitespace.exit84
  %or.cond5 = select i1 %i.jc, i1 %i.jd, i1 false
  br i1 %or.cond5, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jm = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.jn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jl, ptr noundef nonnull @.str.6, ptr noundef %i.jm) #14 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bd, %bb.bf
  tail call fastcc void @dump_inputs(ptr noundef %i.e, ptr noundef %i.g)
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.be, %bb.b, %.thread213
  %.5 = phi i32 [ 0, %bb.be ], [ 1, %.thread213 ], [ 0, %bb.b ], [ 1, %.sink.split ]
  tail call void @free(ptr noundef %i.e) #17
  tail call void @free(ptr noundef %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @dump_inputs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #19 ; 2 uses
  %.not1213.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not1213.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #18
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = add nuw i64 %.0914.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.d, %i.a
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.0914.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.0914.i.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !18
  %i.j = and i16 %i.i, 24576
  %or.cond.i.i = icmp eq i16 %i.j, 0
  br i1 %or.cond.i.i, label %contains_non_printable_characters.exit.i, label %bb.b

contains_non_printable_characters.exit.i:         ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #14 ; 0 uses
  br label %dump_input.exit

.loopexit.i:                                      ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, ptr noundef nonnull %0) #14 ; 0 uses
  br label %dump_input.exit

dump_input.exit:                                  ; preds = %contains_non_printable_characters.exit.i, %.loopexit.i
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #19 ; 2 uses
  %.not1213.not.i.i2 = icmp eq i64 %i.o, 0
  br i1 %.not1213.not.i.i2, label %.loopexit.i7, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %dump_input.exit
  %i.p = tail call ptr @__ctype_b_loc() #18
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nuw i64 %.0914.i.i4, 1               ; 2 uses
  %exitcond.not.i.i6 = icmp eq i64 %i.r, %i.o
  br i1 %exitcond.not.i.i6, label %.loopexit.i7, label %bb.e, !llvm.loop !26

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i3
  %.0914.i.i4 = phi i64 [ 0, %.lr.ph.i.i3 ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.0914.i.i4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = and i16 %i.w, 24576
  %or.cond.i.i5 = icmp eq i16 %i.x, 0
  br i1 %or.cond.i.i5, label %contains_non_printable_characters.exit.i8, label %bb.d

contains_non_printable_characters.exit.i8:        ; preds = %bb.e
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16) #14 ; 0 uses
  br label %dump_input.exit9

.loopexit.i7:                                     ; preds = %bb.d, %dump_input.exit
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #14 ; 0 uses
  br label %dump_input.exit9

dump_input.exit9:                                 ; preds = %contains_non_printable_characters.exit.i8, %.loopexit.i7
  ret void
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @usage() local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.b = load ptr, ptr @g_program, align 8, !tbaa !11
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.7, ptr noundef %i.b) #14 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.8, i64 247, i64 1, ptr %i.d) #20 ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11
  store ptr %i.b, ptr @g_program, align 8, !tbaa !11
  %.not94 = icmp eq i32 %0, 1
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.03399 = phi double [ %.3.ph, %bb.l ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.03498 = phi i32 [ %i.ae, %bb.l ], [ 1, %bb.a ] ; 4 uses
  %.03897 = phi i1 [ %.240.ph, %bb.l ], [ false, %bb.a ] ; 2 uses
  %.04296 = phi i1 [ %.244.ph, %bb.l ], [ false, %bb.a ] ; 2 uses
  %.04695 = phi double [ %.349.ph, %bb.l ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.c = sext i32 %.03498 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 7 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %.not54 = icmp eq i8 %i.f, 45
  br i1 %.not54, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #19
  %.not55 = icmp eq i64 %i.g, 2
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.e) #14 ; 0 uses
  tail call void @usage()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  switch i8 %i.k, label %bb.k [
    i8 97, label %bb.e
    i8 114, label %bb.e
    i8 105, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = add nsw i32 %.03498, 1                   ; 3 uses
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.e) #14 ; 0 uses
  tail call void @usage()
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = call double @strtod(ptr noundef %i.r, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.t, align 1, !tbaa !13
  %.not56 = icmp eq i8 %i.v, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.e, ptr noundef %i.y) #14 ; 0 uses
  tail call void @usage()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.j, align 1, !tbaa !13
  %i.ab = icmp eq i8 %i.aa, 97                    ; 2 uses
  %..046 = select i1 %i.ab, double %i.s, double %.04695
  %.033. = select i1 %i.ab, double %.03399, double %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.e) #14 ; 0 uses
  tail call void @usage()
  unreachable

bb.l:                                             ; preds = %bb.d, %bb.j
  %.349.ph = phi double [ %.04695, %bb.d ], [ %..046, %bb.j ] ; 2 uses
  %.244.ph = phi i1 [ %.04296, %bb.d ], [ true, %bb.j ] ; 2 uses
  %.240.ph = phi i1 [ true, %bb.d ], [ %.03897, %bb.j ] ; 2 uses
  %.236.ph = phi i32 [ %.03498, %bb.d ], [ %i.l, %bb.j ]
  %.3.ph = phi double [ %.03399, %bb.d ], [ %.033., %bb.j ] ; 2 uses
  %i.ae = add nsw i32 %.236.ph, 1                 ; 2 uses
  %.not = icmp eq i32 %i.ae, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27
end_hunk_1
