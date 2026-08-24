Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/getopt?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@optarg = dso_local local_unnamed_addr global ptr null, align 8
@optind = dso_local local_unnamed_addr global i32 0, align 4
@opterr = dso_local local_unnamed_addr global i32 1, align 4
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@nextchar = internal unnamed_addr global ptr null, align 8
@ordering = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"_POSIX_OPTION_ORDER\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: unrecognized option, character code 0%o\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: unrecognized option `-%c'\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: no argument for `-%c' option\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -128, 128) i32 @getopt(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @optind, align 4, !tbaa !4 ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr @optind, align 4, !tbaa !4
  store i32 1, ptr @last_nonopt, align 4, !tbaa !4
  store i32 1, ptr @first_nonopt, align 4, !tbaa !4
  store ptr null, ptr @nextchar, align 8, !tbaa !8
  %i.c = load i8, ptr %2, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, 45
  br i1 %i.d, label %.thread69, label %bb.c

.thread69:                                        ; preds = %bb.b
  store i32 2, ptr @ordering, align 4, !tbaa !4
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str) #6
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread.thread, label %.thread.thread98

.thread.thread98:                                 ; preds = %bb.c
  store i32 0, ptr @ordering, align 4, !tbaa !4
  br label %bb.k

.thread.thread:                                   ; preds = %bb.c
  store i32 1, ptr @ordering, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.pr.pre = load ptr, ptr @nextchar, align 8, !tbaa !8 ; 3 uses
  %i.f = icmp eq ptr %.pr.pre, null
  br i1 %i.f, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %.pr.pre, align 1, !tbaa !11 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.e, %bb.d
  %.pr68.pr = load i32, ptr @ordering, align 4, !tbaa !4
  %i.i = icmp eq i32 %.pr68.pr, 1
  br i1 %i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread.thread, %.thread
  %i.j = phi i32 [ 1, %.thread.thread ], [ %i.a, %.thread ] ; 4 uses
  %i.k = load i32, ptr @first_nonopt, align 4, !tbaa !4 ; 2 uses
  %i.l = load i32, ptr @last_nonopt, align 4, !tbaa !4 ; 3 uses
  %.not51 = icmp eq i32 %i.k, %i.l
  %.not52 = icmp eq i32 %i.l, %i.j                ; 2 uses
  %or.cond65 = or i1 %.not51, %.not52
  br i1 %or.cond65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = sub nsw i32 %i.l, %i.k
  %i.n = shl i32 %i.m, 3
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #7 ; 2 uses
  %3 = load i32, ptr @first_nonopt, align 4, !tbaa !4 ; 2 uses
  %i.q = sext i32 %3 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.r, i64 %i.o, i1 false)
  %4 = load i32, ptr @last_nonopt, align 4, !tbaa !4 ; 3 uses
  %i.s = sext i32 %4 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %5 = load i32, ptr @optind, align 4, !tbaa !4
  %i.u = sub nsw i32 %5, %4
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.t, i64 %i.w, i1 false)
  %i.x = load i32, ptr @optind, align 4, !tbaa !4
  %i.y = sub i32 %3, %4                           ; 2 uses
  %i.z = add i32 %i.x, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.p, i64 %i.o, i1 false)
  %i.ac = load i32, ptr @optind, align 4, !tbaa !4 ; 2 uses
  %i.ad = add i32 %i.ac, %i.y
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  br i1 %.not52, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink103 = phi i32 [ %i.ad, %bb.g ], [ %i.j, %bb.h ]
  %optind.promoted.ph = phi i32 [ %i.ac, %bb.g ], [ %i.j, %bb.h ]
  store i32 %.sink103, ptr @first_nonopt, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %optind.promoted = phi i32 [ %i.j, %bb.h ], [ %optind.promoted.ph, %.sink.split ] ; 5 uses
  %i.ae = icmp slt i32 %optind.promoted, %0
  br i1 %i.ae, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.af = sext i32 %optind.promoted to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %i.ag = phi i32 [ %optind.promoted, %.lr.ph.preheader ], [ %i.an, %.critedge2 ]
  %indvars.iv = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %.not54 = icmp eq i8 %i.aj, 45
  br i1 %.not54, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %.critedge2, label %.critedge.loopexit.split.loop.exit100

.critedge2:                                       ; preds = %.lr.ph, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.an = trunc i64 %indvars.iv.next to i32       ; 3 uses
  store i32 %i.an, ptr @optind, align 4, !tbaa !4
  %exitcond.not = icmp eq i32 %0, %i.an
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !12

.critedge.loopexit.split.loop.exit100:            ; preds = %bb.j
  %i.ao = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.loopexit.split.loop.exit100, %bb.i
  %i.ap = phi i32 [ %optind.promoted, %bb.i ], [ %i.ag, %.critedge.loopexit.split.loop.exit100 ], [ %0, %.critedge2 ]
  %.lcssa = phi i32 [ %optind.promoted, %bb.i ], [ %i.ao, %.critedge.loopexit.split.loop.exit100 ], [ %0, %.critedge2 ]
  store i32 %.lcssa, ptr @last_nonopt, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %.thread.thread98, %.thread69, %.critedge, %.thread
  %i.aq = phi i32 [ 1, %.thread69 ], [ %i.ap, %.critedge ], [ %i.a, %.thread ], [ 1, %.thread.thread98 ] ; 6 uses
  %.not55 = icmp eq i32 %i.aq, %0
  br i1 %.not55, label %.thread96, label %sub_0

sub_0:                                            ; preds = %bb.k
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8  ; 3 uses
  %i.au = load i8, ptr %i.at, align 1
  %.not72 = icmp eq i8 %i.au, 45
  br i1 %.not72, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %.not73 = icmp eq i8 %i.aw, 45
  br i1 %.not73, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.l, label %.tail.thread

bb.l:                                             ; preds = %.tail
  %i.ba = add nsw i32 %i.aq, 1                    ; 3 uses
  store i32 %i.ba, ptr @optind, align 4, !tbaa !4
  %i.bb = load i32, ptr @first_nonopt, align 4, !tbaa !4 ; 2 uses
  %i.bc = load i32, ptr @last_nonopt, align 4, !tbaa !4 ; 3 uses
  %.not57 = icmp eq i32 %i.bb, %i.bc              ; 2 uses
  %.not58 = icmp eq i32 %i.bc, %i.ba
  %or.cond66 = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = sub nsw i32 %i.bc, %i.bb
  %i.be = shl i32 %i.bd, 3
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #7 ; 2 uses
  %6 = load i32, ptr @first_nonopt, align 4, !tbaa !4 ; 2 uses
  %i.bh = sext i32 %6 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bg, ptr align 8 %i.bi, i64 %i.bf, i1 false)
  %7 = load i32, ptr @last_nonopt, align 4, !tbaa !4 ; 3 uses
  %i.bj = sext i32 %7 to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bj
  %8 = load i32, ptr @optind, align 4, !tbaa !4
  %i.bl = sub nsw i32 %8, %7
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bi, ptr align 8 %i.bk, i64 %i.bn, i1 false)
  %i.bo = load i32, ptr @optind, align 4, !tbaa !4
  %i.bp = sub i32 %6, %7                          ; 2 uses
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bs, ptr align 8 %i.bg, i64 %i.bf, i1 false)
  %i.bt = load i32, ptr @optind, align 4, !tbaa !4
  %i.bu = add i32 %i.bt, %i.bp
  br label %.sink.split104

bb.n:                                             ; preds = %bb.l
  br i1 %.not57, label %.sink.split104, label %bb.o

.sink.split104:                                   ; preds = %bb.n, %bb.m
  %.sink105 = phi i32 [ %i.bu, %bb.m ], [ %i.ba, %bb.n ]
  store i32 %.sink105, ptr @first_nonopt, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %.sink.split104, %bb.n
  store i32 %0, ptr @last_nonopt, align 4, !tbaa !4
  store i32 %0, ptr @optind, align 4, !tbaa !4
  br label %.thread96

.thread96:                                        ; preds = %bb.k, %bb.o
  %i.bv = load i32, ptr @first_nonopt, align 4, !tbaa !4 ; 2 uses
  %i.bw = load i32, ptr @last_nonopt, align 4, !tbaa !4
  %.not64 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not64, label %bb.an, label %bb.p

bb.p:                                             ; preds = %.thread96
  store i32 %i.bv, ptr @optind, align 4, !tbaa !4
  br label %bb.an

.tail.thread:                                     ; preds = %.tail, %sub_0, %sub_1
  %i.bx = sext i32 %i.aq to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8  ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %.not59 = icmp eq i8 %i.ca, 45
  br i1 %.not59, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.tail.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11  ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %.tail.thread
  %9 = load i32, ptr @ordering, align 4, !tbaa !4
  %i.ce = icmp eq i32 %9, 0
  br i1 %i.ce, label %bb.an, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = add nsw i32 %i.aq, 1
  store i32 %i.cf, ptr @optind, align 4, !tbaa !4
  store ptr %i.bz, ptr @optarg, align 8, !tbaa !8
  br label %bb.an

bb.t:                                             ; preds = %bb.q, %bb.e
  %i.cg = phi i32 [ %i.a, %bb.e ], [ %i.aq, %bb.q ] ; 2 uses
  %i.ch = phi i8 [ %i.g, %bb.e ], [ %i.cc, %bb.q ] ; 3 uses
  %i.ci = phi ptr [ %.pr.pre, %bb.e ], [ %i.cb, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 5 uses
  store ptr %i.cj, ptr @nextchar, align 8, !tbaa !8
  %i.ck = sext i8 %i.ch to i32                    ; 7 uses
  %i.cl = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.ck) #8 ; 3 uses
  %i.cm = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.co, ptr @optind, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cp = phi i32 [ %i.co, %bb.u ], [ %i.cg, %bb.t ] ; 5 uses
  %i.cq = icmp eq ptr %i.cl, null
  %i.cr = icmp eq i8 %i.ch, 58
  %or.cond = or i1 %i.cr, %i.cq
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cs = load i32, ptr @opterr, align 4, !tbaa !4
  %.not63 = icmp eq i32 %i.cs, 0
  br i1 %.not63, label %bb.an, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = add i8 %i.ch, -127
  %or.cond7 = icmp ult i8 %i.ct, -95
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !14 ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  br i1 %or.cond7, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.2, ptr noundef %i.cv, i32 noundef %i.ck) #9 ; 0 uses
  br label %bb.an

bb.z:                                             ; preds = %bb.x
  %i.cx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.3, ptr noundef %i.cv, i32 noundef %i.ck) #9 ; 0 uses
  br label %bb.an

bb.aa:                                            ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11
  %i.da = icmp eq i8 %i.cz, 58
  br i1 %i.da, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = icmp eq i8 %i.dc, 58
  %i.de = load i8, ptr %i.cj, align 1, !tbaa !11
  %.not62 = icmp eq i8 %i.de, 0                   ; 2 uses
  br i1 %i.dd, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not62, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = add nsw i32 %i.cp, 1
  store i32 %i.df, ptr @optind, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sink = phi ptr [ %i.cj, %bb.ad ], [ null, %bb.ac ]
  store ptr %.sink, ptr @optarg, align 8, !tbaa !8
  store ptr null, ptr @nextchar, align 8, !tbaa !8
  br label %bb.an

bb.af:                                            ; preds = %bb.ab
  br i1 %.not62, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cj, ptr @optarg, align 8, !tbaa !8
  %i.dg = add nsw i32 %i.cp, 1
  store i32 %i.dg, ptr @optind, align 4, !tbaa !4
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.dh = icmp eq i32 %i.cp, %0
  br i1 %i.dh, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.di = load i32, ptr @opterr, align 4, !tbaa !4
  %.not61 = icmp eq i32 %i.di, 0
  br i1 %.not61, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dk = load ptr, ptr %1, align 8, !tbaa !8
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.4, ptr noundef %i.dk, i32 noundef %i.ck) #9 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr @optarg, align 8, !tbaa !8
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.dm = add nsw i32 %i.cp, 1
  store i32 %i.dm, ptr @optind, align 4, !tbaa !4
  %i.dn = sext i32 %i.cp to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8
  store ptr %i.dp, ptr @optarg, align 8, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ag
  store ptr null, ptr @nextchar, align 8, !tbaa !8
  br label %bb.an

bb.an:                                            ; preds = %bb.y, %bb.z, %bb.w, %bb.ae, %bb.am, %bb.aa, %bb.r, %.thread96, %bb.p, %bb.s
  %.1 = phi i32 [ -1, %bb.r ], [ -1, %.thread96 ], [ 0, %bb.s ], [ -1, %bb.p ], [ 63, %bb.w ], [ 63, %bb.y ], [ 63, %bb.z ], [ %i.ck, %bb.ae ], [ %i.ck, %bb.am ], [ %i.ck, %bb.aa ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
end_hunk_0
