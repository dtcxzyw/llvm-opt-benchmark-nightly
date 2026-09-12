Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tsvector_parser?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"there is no escaped character: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tsvector_parser.c\00", align 1
@__func__.gettoken_tsvector = private unnamed_addr constant [18 x i8] c"gettoken_tsvector\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"wrong position info in tsvector: \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"unrecognized state in gettoken_tsvector: %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"syntax error in tsquery: \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"syntax error in tsvector: \22%s\22\00", align 1
@__func__.prssyntaxerror = private unnamed_addr constant [15 x i8] c"prssyntaxerror\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @init_tsvector_parser(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 48) #7 ; 10 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.c, align 8
  %i.d = tail call ptr @palloc(i64 noundef 32) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %i.f = tail call i32 @pg_database_encoding_max_length() #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.f, ptr %i.g, align 4
  %i.h = trunc i32 %1 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = and i8 %i.h, 1
  store i8 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  %3 = lshr i32 %1, 1
  %4 = trunc i32 %3 to i8
  %i.l = and i8 %4, 1
  store i8 %i.l, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %5 = lshr i32 %1, 2
  %6 = trunc i32 %5 to i8
  %i.n = and i8 %6, 1
  store i8 %i.n, ptr %i.m, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %i.o, align 8
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

declare i32 @pg_database_encoding_max_length() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @reset_tsvector_parser(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_tsvector_parser(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @pfree(ptr noundef %i.b) #7
  tail call void @pfree(ptr noundef %0) #7
  ret void
}

declare void @pfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @gettoken_tsvector(ptr nofree noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 24 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.dx, %bb.a
  %.0316.ph = phi i32 [ %.1317, %bb.dx ], [ 0, %bb.a ] ; 18 uses
  %.0313.ph = phi ptr [ %.7, %bb.dx ], [ %i.b, %bb.a ] ; 33 uses
  %.0311.ph = phi i32 [ %.1312, %bb.dx ], [ 1, %bb.a ] ; 2 uses
  %.0308.ph = phi ptr [ %.2310, %bb.dx ], [ null, %bb.a ] ; 40 uses
  %.0305.ph = phi i32 [ %.2307, %bb.dx ], [ 0, %bb.a ] ; 31 uses
  %.0.ph = phi i32 [ %.2, %bb.dx ], [ 0, %bb.a ]  ; 23 uses
  switch i32 %.0311.ph, label %.loopexit555 [
    i32 1, label %bb.h
    i32 3, label %bb.r
    i32 2, label %bb.x
    i32 4, label %bb.bj
    i32 8, label %bb.b
    i32 5, label %.loopexit549
    i32 6, label %bb.cm
    i32 7, label %bb.cx
  ]

bb.b:                                             ; preds = %.outer
  %i.g = load i8, ptr %i.c, align 2, !range !4, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge570, label %bb.c

._crit_edge570:                                   ; preds = %bb.b
  %.pre571 = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 39
  %.pre572 = load ptr, ptr %i.a, align 8          ; 3 uses
  br i1 %i.k, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %._crit_edge570, %bb.c
  %i.l = phi ptr [ %.pre571, %._crit_edge570 ], [ %.pre572, %bb.c ] ; 2 uses
  %i.m = ptrtoint ptr %.0313.ph to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.d, align 4
  %i.r = add i32 %i.q, %i.p
  %i.s = load i32, ptr %i.e, align 8              ; 2 uses
  %.not368.peel = icmp slt i32 %i.r, %i.s
  br i1 %.not368.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = shl i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %i.e, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = tail call ptr @repalloc(ptr noundef %i.l, i64 noundef %i.u) #7 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8
  %sext369.peel = shl i64 %i.o, 32
  %i.w = ashr exact i64 %sext369.peel, 32
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.6.peel = phi ptr [ %i.x, %bb.e ], [ %.0313.ph, %bb.d ] ; 4 uses
  store i8 0, ptr %.6.peel, align 1
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = icmp eq ptr %.6.peel, %i.y
  br i1 %i.z, label %.loopexit557, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.f, align 8, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.loopexit558, label %.loopexit549

bb.h:                                             ; preds = %.outer
  %i.ac = load ptr, ptr %0, align 8               ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 6 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %prssyntaxerror.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.c, align 2, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  %i.ah = icmp ne i8 %i.ad, 39
  %or.cond.not = or i1 %i.ah, %i.ag
  br i1 %or.cond.not, label %bb.j, label %bb.dx

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ne i8 %i.ad, 92
  %or.cond411.not = or i1 %i.ai, %i.ag
  br i1 %or.cond411.not, label %bb.k, label %bb.dx

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.f, align 8, !range !4, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  switch i8 %i.ad, label %bb.m [
    i8 33, label %bb.n
    i8 38, label %bb.n
    i8 124, label %bb.n
    i8 40, label %bb.n
    i8 41, label %bb.n
    i8 60, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = icmp eq i8 %i.ad, 34
  %or.cond412 = and i1 %i.al, %i.ag
  br i1 %or.cond412, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = tail call zeroext i1 @errsave_start(ptr noundef %i.an, ptr noundef null) #7
  br i1 %i.ao, label %bb.o, label %prssyntaxerror.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call i32 @errcode(i32 noundef 16801924) #7 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ar = load i8, ptr %i.aq, align 1, !range !4, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %.str.4..str.5.i = select i1 %i.as, ptr @.str.4, ptr @.str.5
  %i.av = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull %.str.4..str.5.i, ptr noundef %i.au) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.an, ptr noundef nonnull @.str.1, i32 noundef 148, ptr noundef nonnull @__func__.prssyntaxerror) #7
  br label %prssyntaxerror.exit

bb.p:                                             ; preds = %bb.m
  %i.aw = tail call ptr @__ctype_b_loc() #8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext i8 %i.ad to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = and i16 %i.ba, 8192
  %.not394 = icmp eq i16 %i.bb, 0
  br i1 %.not394, label %bb.q, label %bb.dx

bb.q:                                             ; preds = %bb.p
  %i.bc = tail call i32 @pg_mblen_cstr(ptr noundef nonnull %i.ac) #7
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0313.ph, ptr nonnull readonly align 1 %i.ac, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds i8, ptr %.0313.ph, i64 %i.bd
  br label %bb.dx

bb.r:                                             ; preds = %.outer
  %i.bf = load ptr, ptr %0, align 8               ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = tail call zeroext i1 @errsave_start(ptr noundef %i.bj, ptr noundef null) #7
  br i1 %i.bk, label %bb.t, label %prssyntaxerror.exit

bb.t:                                             ; preds = %bb.s
  %i.bl = tail call i32 @errcode(i32 noundef 16801924) #7 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.bn) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.bj, ptr noundef nonnull @.str.1, i32 noundef 221, ptr noundef nonnull @__func__.gettoken_tsvector) #7
end_hunk_0
