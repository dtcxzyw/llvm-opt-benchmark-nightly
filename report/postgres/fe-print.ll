Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-print?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sigset_t = type { [16 x i64] }
%struct.winsize = type { i16, i16, i16, i16 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"overlong field separator\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%-*s%s Value\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Field\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s%sValue\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"<center><h2>%s</h2></center>\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"<center><h2>Query retrieved %d rows * %d fields</h2></center>\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"<table %s><caption align=\22top\22>%d</caption>\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"-- RECORD %d --\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"</table>\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"<table %s><caption align=\22top\22>%s</caption>\0A\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"<table %s><caption align=\22top\22>Retrieved %d rows * %d fields</caption>\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"<table %s>\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"(%d row%s)\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\0AQuery returned %d row%s.\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%%s %%-%ds\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%%s %%s\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"|\0A%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"<tr><td align=\22left\22><b>%s</b></td><td align=\22%s\22>%s</td></tr>\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"%-*s%s %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"<tr>\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"<th align=\22%s\22>%s</th>\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c" %-*s \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c" %*s \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"</tr>\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"header size exceeds the maximum allowed\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"<td align=\22%s\22>%s</td>\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"</tr>\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1

; Function Attrs: nounwind uwtable
define void @PQprint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.winsize, align 2            ; 6 uses
  %i.b = tail call i32 @PQnfields(ptr noundef %1) #14 ; 16 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.dc

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #15 ; 4 uses
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %sext = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext, 32
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8
  %i.k = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.j, ptr noundef nonnull @.str) #14 ; 0 uses
  br label %bb.cw

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @PQntuples(ptr noundef %1) #14 ; 14 uses
  %i.m = zext nneg i32 %i.b to i64                ; 5 uses
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 8) #16 ; 13 uses
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 1) #16 ; 11 uses
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #16 ; 11 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ne ptr %i.o, null
  %or.cond = and i1 %i.q, %i.r
  %i.s = icmp ne ptr %i.p, null
  %or.cond3 = and i1 %or.cond, %i.s
  br i1 %or.cond3, label %.preheader317, label %bb.e

.preheader317:                                    ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.lr.ph327.preheader, label %.lr.ph.split

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8
  %i.w = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.cw

.lr.ph.split:                                     ; preds = %.preheader317, %.lr.ph.split
  %.0213320 = phi i32 [ %i.aa, %.lr.ph.split ], [ 0, %.preheader317 ] ; 3 uses
  %i.x = sext i32 %.0213320 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %.not252 = icmp eq ptr %i.z, null
  %i.aa = add i32 %.0213320, 1
  br i1 %.not252, label %.critedge.loopexit, label %.lr.ph.split

.critedge.loopexit:                               ; preds = %.lr.ph.split
  %i.ab = sext i32 %.0213320 to i64
  br label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %.preheader317, %.critedge.loopexit
  %.0213.lcssa = phi i64 [ 0, %.preheader317 ], [ %i.ab, %.critedge.loopexit ]
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph327

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph327.preheader ], [ %indvars.iv.next, %bb.i ] ; 7 uses
  %.0212326 = phi i32 [ 0, %.lr.ph327.preheader ], [ %i.ar, %bb.i ]
  %.0214325 = phi i32 [ 0, %.lr.ph327.preheader ], [ %spec.select, %bb.i ]
  %i.ac = icmp slt i64 %indvars.iv, %.0213.lcssa
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph327
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1
  %.not298 = icmp eq i8 %i.ag, 0
  br i1 %.not298, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.af, ptr %i.ah, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph327, %bb.f
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = tail call ptr @PQfname(ptr noundef %1, i32 noundef %i.ai) #14 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.aj, ptr %i.ak, align 8
  %.not299 = icmp eq ptr %i.aj, null
  br i1 %.not299, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.al = phi ptr [ %i.af, %.thread ], [ %i.aj, %bb.g ]
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #15
  %i.an = trunc i64 %i.am to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ao = phi i32 [ %i.an, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add i32 %i.ao, %i.g                     ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %.0214325) ; 3 uses
  %i.ar = add i32 %i.aq, %.0212326                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph327, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.i
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #15
  %i.au = trunc i64 %i.at to i32
  %i.av = mul i32 %i.b, %i.au
  %i.aw = add i32 %i.ar, 1
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = icmp eq ptr %0, null
  %i.az = load ptr, ptr @stdout, align 8          ; 2 uses
  %spec.select302 = select i1 %i.ay, ptr %i.az, ptr %0 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bb = load i8, ptr %i.ba, align 1
  %.not253 = icmp ne i8 %i.bb, 0
  %i.bc = icmp eq ptr %spec.select302, %i.az
  %or.cond304 = select i1 %.not253, i1 %i.bc, i1 false
  br i1 %or.cond304, label %bb.j, label %bb.w

bb.j:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr @stdin, align 8
  %i.be = tail call i32 @fileno(ptr noundef %i.bd) #14
  %i.bf = tail call i32 @isatty(i32 noundef %i.be) #14
  %.not254 = icmp eq i32 %i.bf, 0
  br i1 %.not254, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr @stdout, align 8
  %i.bh = tail call i32 @fileno(ptr noundef %i.bg) #14
  %i.bi = tail call i32 @isatty(i32 noundef %i.bh) #14
  %.not255 = icmp eq i32 %i.bi, 0
  br i1 %.not255, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr @stdout, align 8
  %i.bk = tail call i32 @fileno(ptr noundef %i.bj) #14
  %i.bl = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.bk, i64 noundef 21523, ptr noundef nonnull %4) #14
  %i.bm = icmp eq i32 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2            ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  %or.cond7 = select i1 %i.bm, i1 true, i1 %i.bp
  %i.bq = load i16, ptr %4, align 2               ; 2 uses
  %i.br = icmp eq i16 %i.bq, 0
  %or.cond11 = select i1 %or.cond7, i1 true, i1 %i.br
  br i1 %or.cond11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i16 24, ptr %4, align 2
  store i16 80, ptr %i.bn, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bs = phi i16 [ %i.bo, %bb.l ], [ 80, %bb.m ]
  %i.bt = phi i16 [ %i.bq, %bb.l ], [ 24, %bb.m ] ; 2 uses
  %i.bu = call ptr @getenv(ptr noundef nonnull @.str.2) #14 ; 4 uses
  %.not256 = icmp eq ptr %i.bu, null
  br i1 %.not256, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = call i64 @strspn(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.3) #15
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #15
  %.not257 = icmp eq i64 %i.bv, %i.bw
  br i1 %.not257, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.by = load i8, ptr %i.bx, align 1
  %.not258 = icmp eq i8 %i.by, 0
  br i1 %.not258, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = load i8, ptr %i.bz, align 4
  %.not259 = icmp eq i8 %i.ca, 0
  br i1 %.not259, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = add nuw i32 %i.b, 1
  %i.cc = mul i32 %i.l, %i.cb
  %i.cd = zext i16 %i.bt to i32
  %.not260 = icmp slt i32 %i.cc, %i.cd
  br i1 %.not260, label %bb.w, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ce = zext i16 %i.bs to i32
  %i.cf = sdiv i32 %i.ax, %i.ce                   ; 2 uses
  %.neg357 = xor i32 %i.cf, -1
  %i.cg = add i32 %i.cf, 1
  %i.ch = mul i32 %i.cg, %i.l
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cj = load i8, ptr %i.ci, align 2
  %.not262 = icmp ne i8 %i.cj, 0
  %i.ck = zext i1 %.not262 to i32
  %i.cl = shl i32 %i.ch, %i.ck
  %i.cm = zext i16 %i.bt to i32
  %i.cn = load i8, ptr %2, align 8
  %.not263 = icmp eq i8 %i.cn, 0                  ; 2 uses
  %.neg358 = shl i32 %.neg357, 1
  %.neg359 = select i1 %.not263, i32 0, i32 %.neg358
  %i.co = add i32 %.neg359, %i.cm
  %.neg = select i1 %.not263, i32 0, i32 -2
  %i.cp = add i32 %i.co, %.neg
  %.not264 = icmp slt i32 %i.cl, %i.cp
  br i1 %.not264, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.cr = call noalias ptr @popen(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.4) ; 2 uses
  %.not265 = icmp eq ptr %i.cr, null
  br i1 %.not265, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @pq_block_sigpipe(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #14
  %i.ct = icmp eq i32 %i.cs, 0
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr @stdout, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.u, %bb.n, %bb.o, %bb.p, %bb.s, %bb.v, %bb.k, %bb.j, %._crit_edge
  %.1230 = phi ptr [ %spec.select302, %bb.p ], [ %spec.select302, %._crit_edge ], [ %i.cr, %bb.u ], [ %i.cu, %bb.v ], [ %spec.select302, %bb.j ], [ %spec.select302, %bb.s ], [ %spec.select302, %bb.o ], [ %spec.select302, %bb.n ], [ %spec.select302, %bb.k ], [ %spec.select302, %bb.r ] ; 37 uses
  %.0210 = phi i1 [ false, %bb.p ], [ false, %._crit_edge ], [ true, %bb.u ], [ false, %bb.v ], [ false, %bb.j ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.r ] ; 5 uses
  %.0208 = phi i1 [ false, %bb.p ], [ false, %._crit_edge ], [ %i.ct, %bb.u ], [ false, %bb.v ], [ false, %bb.j ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.r ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.cw = load i8, ptr %i.cv, align 4
  %.not266 = icmp eq i8 %i.cw, 0                  ; 2 uses
  br i1 %.not266, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cy = load i8, ptr %i.cx, align 1
  %.not267 = icmp eq i8 %i.cy, 0
  br i1 %.not267, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.da = load i8, ptr %i.cz, align 1
  %.not268 = icmp eq i8 %i.da, 0
  br i1 %.not268, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.db = sext i32 %i.l to i64
  %i.dc = add nsw i64 %i.db, 1
  %i.dd = shl nuw nsw i64 %i.m, 3
  %i.de = call noalias ptr @calloc(i64 noundef %i.dc, i64 noundef %i.dd) #16 ; 2 uses
  %.not269 = icmp eq ptr %i.de, null
  br i1 %.not269, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr @stderr, align 8
  %i.dg = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.cw

bb.ab:                                            ; preds = %bb.y, %bb.w
  %i.dh = load i8, ptr %2, align 8
  %.not270 = icmp eq i8 %i.dh, 0
  br i1 %.not270, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.dj = load i8, ptr %i.di, align 1
  %.not271 = icmp eq i8 %i.dj, 0
  br i1 %.not271, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not266, label %.lr.ph331.preheader, label %bb.ae

.lr.ph331.preheader:                              ; preds = %bb.ad
  %5 = zext nneg i32 %i.b to i64
  %wide.trip.count367 = zext nneg i32 %i.b to i64
  br label %.lr.ph331

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.dl = load i8, ptr %i.dk, align 1
  %.not274 = icmp eq i8 %i.dl, 0
  br i1 %.not274, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = sub i32 %spec.select, %i.g
  %i.dn = load ptr, ptr %i.d, align 8
  %i.do = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.5, i32 noundef %i.dm, ptr noundef nonnull @.str.6, ptr noundef %i.dn) #14 ; 0 uses
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.dp = load ptr, ptr %i.d, align 8
  %i.dq = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %i.dp) #14 ; 0 uses
  br label %bb.aj

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %bb.ai
  %indvars.iv363 = phi i64 [ 0, %.lr.ph331.preheader ], [ %indvars.iv.next364, %bb.ai ] ; 2 uses
  %.0207330 = phi i32 [ 0, %.lr.ph331.preheader ], [ %i.dx, %bb.ai ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv363
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = call i32 @fputs(ptr noundef %i.ds, ptr noundef %.1230) ; 0 uses
  %i.du = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #15
  %i.dv = add i64 %i.du, %i.f
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = add i32 %.0207330, %i.dw                ; 2 uses
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 3 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next364, %5
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph331
  %i.dz = load ptr, ptr %i.d, align 8
  %i.ea = call i32 @fputs(ptr noundef %i.dz, ptr noundef %.1230) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph331
  %exitcond368.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge332, label %.lr.ph331, !llvm.loop !5

._crit_edge332:                                   ; preds = %bb.ai
  %i.eb = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  %i.ec = sub i32 %i.dx, %i.g                     ; 2 uses
  %.not273334 = icmp eq i32 %i.ec, 0
  br i1 %.not273334, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %._crit_edge332, %.lr.ph337
  %.1335 = phi i32 [ %i.ed, %.lr.ph337 ], [ %i.ec, %._crit_edge332 ]
  %i.ed = add i32 %.1335, -1                      ; 2 uses
  %i.ee = call i32 @fputc(i32 noundef 45, ptr noundef %.1230) ; 0 uses
  %.not273 = icmp eq i32 %i.ed, 0
  br i1 %.not273, label %._crit_edge338, label %.lr.ph337, !llvm.loop !6

._crit_edge338:                                   ; preds = %.lr.ph337, %._crit_edge332
  %i.ef = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %bb.ac, %bb.af, %bb.ag, %._crit_edge338, %bb.z
  %.0217 = phi ptr [ null, %bb.ac ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %._crit_edge338 ], [ null, %bb.ab ], [ %i.de, %bb.z ] ; 6 uses
  %i.eg = load i8, ptr %i.cv, align 4
  %.not275 = icmp eq i8 %i.eg, 0
  br i1 %.not275, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ei = load i8, ptr %i.eh, align 1
  %.not276 = icmp eq i8 %i.ei, 0
  br i1 %.not276, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not277 = icmp eq ptr %i.ek, null
  br i1 %.not277, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ek) #14 ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.em = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.9, i32 noundef %i.l, i32 noundef %i.b) #14 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ak, %bb.aj
  %i.en = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.en, label %.lr.ph347, label %._crit_edge348

.lr.ph347:                                        ; preds = %bb.ao
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.es = sub i32 %spec.select, %i.g
  %6 = zext nneg i32 %i.b to i64
  %wide.trip.count373 = zext nneg i32 %i.b to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph347, %bb.br
  %.0227345 = phi i32 [ 0, %.lr.ph347 ], [ %i.gz, %bb.br ] ; 6 uses
  %i.et = load i8, ptr %i.cv, align 4
  %.not292 = icmp eq i8 %i.et, 0
  br i1 %.not292, label %.lr.ph343, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = load i8, ptr %i.eo, align 1
  %.not293 = icmp eq i8 %i.eu, 0
  br i1 %.not293, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not294 = icmp eq ptr %i.ev, null
  %spec.select306 = select i1 %.not294, ptr @.str.11, ptr %i.ev
  %i.ew = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.10, ptr noundef nonnull %spec.select306, i32 noundef %.0227345) #14 ; 0 uses
  br label %.lr.ph343

bb.as:                                            ; preds = %bb.aq
  %i.ex = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.12, i32 noundef %.0227345) #14 ; 0 uses
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %bb.ap, %bb.as, %bb.ar
  %i.ey = mul i32 %.0227345, %i.b
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph343, %bb.bo
  %indvars.iv369 = phi i64 [ 0, %.lr.ph343 ], [ %indvars.iv.next370, %bb.bo ] ; 8 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv369 to i32 ; 3 uses
  %i.fa = call i32 @PQgetlength(ptr noundef %1, i32 noundef %.0227345, i32 noundef range(i32 -2147483648, 2147483647) %i.ez) #14 ; 3 uses
  %i.fb = call ptr @PQgetvalue(ptr noundef %1, i32 noundef %.0227345, i32 noundef range(i32 -2147483648, 2147483647) %i.ez) #14 ; 9 uses
  %i.fc = icmp sgt i32 %i.fa, 0
  %i.fd = icmp ne ptr %i.fb, null
  %or.cond.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fe = load i8, ptr %i.fb, align 1
  %.fr131134.i = freeze i8 %i.fe                  ; 2 uses
  %.not.i = icmp eq i8 %.fr131134.i, 0
  br i1 %.not.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ff = load i8, ptr %i.eq, align 1
  %.not117.i = icmp eq i8 %i.ff, 0
  br i1 %.not117.i, label %bb.aw, label %bb.bo

bb.aw:                                            ; preds = %bb.av
  %i.fg = load i8, ptr %i.cv, align 4
  %.not118.i = icmp eq i8 %i.fg, 0
  br i1 %.not118.i, label %bb.bl, label %bb.bo

bb.ax:                                            ; preds = %bb.au
  %i.fh = load i8, ptr %i.eq, align 1
  %.not119.i = icmp eq i8 %i.fh, 0
  br i1 %.not119.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv369 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1
  %.not120.i = icmp eq i8 %i.fj, 0
  br i1 %.not120.i, label %.lr.ph.i, label %bb.ba

.lr.ph.i:                                         ; preds = %bb.ay, %bb.az
  %.fr131137.i = phi i8 [ %.fr131.i, %bb.az ], [ %.fr131134.i, %bb.ay ] ; 2 uses
  %.0110136.i = phi ptr [ %i.fo, %bb.az ], [ %i.fb, %bb.ay ] ; 2 uses
  %i.fk = add i8 %.fr131137.i, -48
  %or.cond4.i = icmp ult i8 %i.fk, 10             ; 2 uses
  br i1 %or.cond4.i, label %bb.az, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr131137.i, label %.loopexit.i.thread [
    i8 101, label %bb.az
    i8 69, label %bb.az
    i8 46, label %bb.az
    i8 45, label %bb.az
    i8 32, label %bb.az
  ]

bb.az:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %i.fl = load i32, ptr %i.er, align 4
  %i.fm = call i32 @PQmblenBounded(ptr noundef nonnull %.0110136.i, i32 noundef %i.fl) #14
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %.0110136.i, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1
  %.fr131.i = freeze i8 %i.fp                     ; 2 uses
  %.not121.i = icmp eq i8 %.fr131.i, 0
  br i1 %.not121.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.az
  br i1 %or.cond4.i, label %switch.early.test, label %.loopexit.i.thread

switch.early.test:                                ; preds = %.loopexit.i
  %i.fq = load i8, ptr %i.fb, align 1
  switch i8 %i.fq, label %bb.ba [
    i8 101, label %.loopexit.i.thread
    i8 69, label %.loopexit.i.thread
  ]

.loopexit.i.thread:                               ; preds = %switch.early.test.i, %switch.early.test, %switch.early.test, %.loopexit.i
  store i8 1, ptr %i.fi, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %switch.early.test, %.loopexit.i.thread, %bb.ay, %bb.ax
  %i.fr = load i8, ptr %i.cv, align 4
  %.not122.i = icmp eq i8 %i.fr, 0
  br i1 %.not122.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.fs = load i8, ptr %i.eq, align 1
  %.not123.i = icmp eq i8 %i.fs, 0
  br i1 %.not123.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ft = load i8, ptr %i.eo, align 1
  %.not124.i = icmp eq i8 %i.ft, 0
  br i1 %.not124.i, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv369 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.fa, i32 %i.fv)
  store i32 %spec.store.select, ptr %i.fu, align 4
  %narrow.i = add nuw i32 %i.fa, 1
  %i.fw = zext i32 %narrow.i to i64
  %i.fx = call noalias ptr @malloc(i64 noundef %i.fw) #17 ; 3 uses
  %i.fy = add i32 %i.ey, %i.ez
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0217, i64 %i.fz
  store ptr %i.fx, ptr %i.ga, align 8
  %.not125.i = icmp eq ptr %i.fx, null
  br i1 %.not125.i, label %do_field.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fx, ptr noundef nonnull dereferenceable(1) %i.fb) #14 ; 0 uses
  br label %bb.bo

bb.bf:                                            ; preds = %bb.ba
  %i.gc = load i8, ptr %i.eo, align 1
  %.not128.i = icmp eq i8 %i.gc, 0
  br i1 %.not128.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv369
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv369
  %i.gg = load i8, ptr %i.gf, align 1
  %.not130.i = icmp eq i8 %i.gg, 0
  %i.gh = select i1 %.not130.i, ptr @.str.30, ptr @.str.29
  %i.gi = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.28, ptr noundef %i.ge, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.fb) #14 ; 0 uses
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.gj = load i8, ptr %i.eq, align 1
  %.not129.i = icmp eq i8 %i.gj, 0
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv369
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = load ptr, ptr %i.d, align 8             ; 2 uses
  br i1 %.not129.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gn = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.31, i32 noundef %i.es, ptr noundef %i.gl, ptr noundef %i.gm, ptr noundef nonnull %i.fb) #14 ; 0 uses
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bh
  %i.go = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.32, ptr noundef %i.gl, ptr noundef %i.gm, ptr noundef nonnull %i.fb) #14 ; 0 uses
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bc
  %i.gp = call i32 @fputs(ptr noundef nonnull %i.fb, ptr noundef %.1230) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.aw
  %i.gq = add nuw nsw i64 %indvars.iv369, 1
  %i.gr = icmp samesign ult i64 %i.gq, %6
  br i1 %i.gr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gs = load ptr, ptr %i.d, align 8
  %i.gt = call i32 @fputs(ptr noundef %i.gs, ptr noundef %.1230) ; 0 uses
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.gu = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  br label %bb.bo

do_field.exit:                                    ; preds = %bb.bd
  %i.gv = load ptr, ptr @stderr, align 8
  %i.gw = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.gv, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.cw

bb.bo:                                            ; preds = %bb.av, %bb.aw, %bb.be, %bb.bi, %bb.bn, %bb.bm, %bb.bg, %bb.bj
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond374.not.a = icmp eq i64 %indvars.iv.next370, %wide.trip.count373
  br i1 %exitcond374.not.a, label %._crit_edge344, label %bb.at, !llvm.loop !8

._crit_edge344:                                   ; preds = %bb.bo
  %i.gx = load i8, ptr %i.eo, align 1
  %.not295 = icmp eq i8 %i.gx, 0
  br i1 %.not295, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge344
  %i.gy = load i8, ptr %i.cv, align 4
  %.not296 = icmp eq i8 %i.gy, 0
  br i1 %.not296, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %fwrite297 = call i64 @fwrite(ptr nonnull @.str.13, i64 9, i64 1, ptr %.1230) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge344, %bb.bp, %bb.bq
  %i.gz = add nuw nsw i32 %.0227345, 1            ; 2 uses
  %exitcond375.not = icmp eq i32 %i.gz, %i.l
  br i1 %exitcond375.not, label %._crit_edge348, label %bb.ap, !llvm.loop !9

._crit_edge348:                                   ; preds = %bb.br, %bb.ao
  %i.ha = load i8, ptr %i.cv, align 4
  %.not278 = icmp eq i8 %i.ha, 0
  br i1 %.not278, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %._crit_edge348
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.hc = load i8, ptr %i.hb, align 1
  %.not279 = icmp eq i8 %i.hc, 0
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.he = load i8, ptr %i.hd, align 1
  %.not280 = icmp eq i8 %i.he, 0                  ; 2 uses
  br i1 %.not279, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not280, label %.loopexit, label %.thread400

.thread400:                                       ; preds = %bb.bt
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 3
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  br i1 %.not280, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %.thread400, %bb.bu
  %i.hh = phi ptr [ %i.hf, %.thread400 ], [ %i.hg, %bb.bu ] ; 3 uses
  %i.hi = load i8, ptr %2, align 8
  %.not282 = icmp eq i8 %i.hi, 0
  br i1 %.not282, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not284 = icmp eq ptr %i.hk, null
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %.not285 = icmp eq ptr %i.hm, null
  %spec.select308 = select i1 %.not285, ptr @.str.11, ptr %i.hm ; 2 uses
  br i1 %.not284, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hn = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.14, ptr noundef nonnull %spec.select308, ptr noundef nonnull %i.hk) #14 ; 0 uses
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.ho = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.15, ptr noundef nonnull %spec.select308, i32 noundef %i.l, i32 noundef %i.b) #14 ; 0 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not283 = icmp eq ptr %i.hq, null
  %spec.select309 = select i1 %.not283, ptr @.str.11, ptr %i.hq
  %i.hr = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.16, ptr noundef nonnull %spec.select309) #14 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bu
  %i.hs = phi ptr [ %i.hh, %bb.bz ], [ %i.hh, %bb.by ], [ %i.hh, %bb.bx ], [ %i.hg, %bb.bu ] ; 3 uses
  %i.ht = load i8, ptr %2, align 8
  %.not287 = icmp eq i8 %i.ht, 0
  br i1 %.not287, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hu = call fastcc ptr @do_header(ptr noundef %.1230, ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %i.p, ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.g, ptr noundef %1)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0219 = phi ptr [ %i.hu, %bb.cb ], [ null, %bb.ca ] ; 3 uses
  br i1 %i.en, label %.lr.ph351, label %.loopexit

.lr.ph351:                                        ; preds = %bb.cc
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 4 uses
  %invariant.op.i = add nsw i32 %i.b, -1
  %i.hw = zext nneg i32 %invariant.op.i to i64
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph351, %output_row.exit
  %.1228349 = phi i32 [ 0, %.lr.ph351 ], [ %i.jd, %output_row.exit ] ; 2 uses
  %i.hx = load i8, ptr %i.hs, align 1
  %.not.i310 = icmp eq i8 %i.hx, 0
  br i1 %.not.i310, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.33, i64 4, i64 1, ptr %.1230) ; 0 uses
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.hy = load i8, ptr %i.hv, align 2
  %.not38.i = icmp eq i8 %i.hy, 0
  br i1 %.not38.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hz = load ptr, ptr %i.d, align 8
  %i.ia = call i32 @fputs(ptr noundef %i.hz, ptr noundef %.1230) ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.ib = mul i32 %.1228349, %i.b
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cm, %bb.ch
  %indvars.iv.i = phi i64 [ 0, %bb.ch ], [ %indvars.iv.next.i, %bb.cm ] ; 5 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.id = add i32 %i.ib, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %.0217, i64 %i.ie
  %i.ig = load ptr, ptr %i.if, align 8            ; 4 uses
  %i.ih = load i8, ptr %i.hs, align 1
  %.not42.i = icmp eq i8 %i.ih, 0
  %i.ii = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  %i.ij = load i8, ptr %i.ii, align 1
  %.not43.i = icmp eq i8 %i.ij, 0                 ; 2 uses
  br i1 %.not42.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ik = select i1 %.not43.i, ptr @.str.30, ptr @.str.29
  %.not49.i = icmp eq ptr %i.ig, null
  %i.il = select i1 %.not49.i, ptr @.str.11, ptr %i.ig
  %i.im = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.il) #14 ; 0 uses
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.in = load i8, ptr %i.hv, align 2
  %.not44.i = icmp eq i8 %i.in, 0                 ; 2 uses
  %i.io = select i1 %.not44.i, ptr @.str.37, ptr @.str.35
  %i.ip = select i1 %.not44.i, ptr @.str.38, ptr @.str.36
  %i.iq = select i1 %.not43.i, ptr %i.ip, ptr %i.io
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.is = load i32, ptr %i.ir, align 4
  %.not46.i = icmp eq ptr %i.ig, null
  %i.it = select i1 %.not46.i, ptr @.str.11, ptr %i.ig
  %i.iu = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull %i.iq, i32 noundef %i.is, ptr noundef nonnull %i.it) #14 ; 0 uses
  %i.iv = load i8, ptr %i.hv, align 2
  %.not47.i = icmp ne i8 %i.iv, 0
  %i.iw = icmp samesign ult i64 %indvars.iv.i, %i.hw
  %or.cond.i311 = select i1 %.not47.i, i1 true, i1 %i.iw
  br i1 %or.cond.i311, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ix = load ptr, ptr %i.d, align 8
  %i.iy = call i32 @fputs(ptr noundef %i.ix, ptr noundef %.1230) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %bb.cn, label %bb.ci, !llvm.loop !10

bb.cn:                                            ; preds = %bb.cm
  %i.iz = load i8, ptr %i.hs, align 1
  %.not39.i = icmp eq i8 %i.iz, 0
  br i1 %.not39.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %fwrite41.i = call i64 @fwrite(ptr nonnull @.str.43, i64 5, i64 1, ptr %.1230) ; 0 uses
  br label %output_row.exit

bb.cp:                                            ; preds = %bb.cn
  %i.ja = load i8, ptr %i.hv, align 2
  %.not40.i = icmp eq i8 %i.ja, 0
  br i1 %.not40.i, label %output_row.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jb = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.44, ptr noundef %.0219) #14 ; 0 uses
  br label %output_row.exit

output_row.exit:                                  ; preds = %bb.co, %bb.cp, %bb.cq
  %i.jc = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  %i.jd = add nuw nsw i32 %.1228349, 1            ; 2 uses
  %exitcond376.not = icmp eq i32 %i.jd, %i.l
  br i1 %exitcond376.not, label %.loopexit, label %bb.cd, !llvm.loop !11

.loopexit:                                        ; preds = %output_row.exit, %bb.cc, %bb.bt, %._crit_edge348
  %.1220 = phi ptr [ null, %._crit_edge348 ], [ null, %bb.bt ], [ %.0219, %bb.cc ], [ %.0219, %output_row.exit ] ; 3 uses
  %i.je = load i8, ptr %2, align 8
  %.not288 = icmp eq i8 %i.je, 0
  br i1 %.not288, label %bb.ct, label %bb.cr

end_hunk_0
