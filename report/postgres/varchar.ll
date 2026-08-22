Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varchar?download=true
inline.NumInlined: 195
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"value too long for type character(%d)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"varchar.c\00", align 1
@__func__.bpchar = private unnamed_addr constant [7 x i8] c"bpchar\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"value too long for type character varying(%d)\00", align 1
@__func__.varchar = private unnamed_addr constant [8 x i8] c"varchar\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"could not determine which collation to use for string hashing\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1
@__func__.hashbpchar = private unnamed_addr constant [11 x i8] c"hashbpchar\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"pg_strnxfrm() returned unexpected result\00", align 1
@__func__.hashbpcharextended = private unnamed_addr constant [19 x i8] c"hashbpcharextended\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"value too long for type character(%zu)\00", align 1
@__func__.bpchar_input = private unnamed_addr constant [13 x i8] c"bpchar_input\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid type modifier\00", align 1
@__func__.anychar_typmodin = private unnamed_addr constant [17 x i8] c"anychar_typmodin\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"length for type %s must be at least 1\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"length for type %s cannot exceed %d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"value too long for type character varying(%zu)\00", align 1
@__func__.varchar_input = private unnamed_addr constant [14 x i8] c"varchar_input\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"could not determine which collation to use for string comparison\00", align 1
@__func__.check_collation_set = private unnamed_addr constant [20 x i8] c"check_collation_set\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @bpcharin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call fastcc ptr @bpchar_input(ptr noundef nonnull %i.c, i64 noundef %i.g, i32 noundef %i.f, ptr noundef %i.i)
  %i.k = ptrtoint ptr %i.j to i64
  ret i64 %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @bpchar_input(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 4
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, -4                       ; 4 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = trunc i64 %1 to i32                      ; 2 uses
  %i.e = tail call i32 @pg_mbstrlen_with_len(ptr noundef %0, i32 noundef %i.d) #10 ; 2 uses
  %i.f = icmp ugt i32 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @pg_mbcharcliplen(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.b) #10
  %i.h = sext i32 %i.g to i64                     ; 6 uses
  %.not5760 = icmp ugt i64 %1, %i.h
  br i1 %.not5760, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.i = add i64 %.04161, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.04161 = phi i64 [ %i.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.04161
  %i.k = load i8, ptr %i.j, align 1
  %.not = icmp eq i8 %i.k, 32
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.l = tail call zeroext i1 @errsave_start(ptr noundef %3, ptr noundef null) #10
  br i1 %i.l, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @errcode(i32 noundef 16777346) #10 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef %i.c) #10 ; 0 uses
  tail call void @errsave_finish(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 162, ptr noundef nonnull @__func__.bpchar_input) #10
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %narrow = sub nuw nsw i32 %i.b, %i.e
  %i.o = zext nneg i32 %narrow to i64
  %i.p = add i64 %1, %i.o
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.g, %bb.a
  %.351 = phi i64 [ %1, %bb.a ], [ %1, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 4 uses
  %.3 = phi i64 [ %1, %bb.a ], [ %i.p, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.q = add i64 %.3, 4                           ; 2 uses
  %i.r = tail call ptr @palloc(i64 noundef %i.q) #10 ; 4 uses
  %i.s = trunc i64 %i.q to i32
  %i.t = shl i32 %i.s, 2
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %0, i64 %.351, i1 false)
  %i.v = icmp ugt i64 %.3, %.351
  br i1 %i.v, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.351
  %i.x = sub nuw i64 %.3, %.351
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 32, i64 %i.x, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %.loopexit, %bb.h
  %.347 = phi ptr [ %i.r, %.loopexit ], [ %i.r, %bb.h ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.347
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @bpcharout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @text_to_cstring(ptr noundef %i.c) #10
  %i.e = ptrtoint ptr %i.d to i64
  ret i64 %i.e
}

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @bpcharrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sub i32 %i.i, %i.k
  %i.m = call ptr @pq_getmsgtext(ptr noundef %i.d, i32 noundef %i.l, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.n = load i32, ptr %i.a, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = call fastcc ptr @bpchar_input(ptr noundef %i.m, i64 noundef %i.o, i32 noundef %i.g, ptr noundef null)
  call void @pfree(ptr noundef %i.m) #10
  %i.q = ptrtoint ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.q
}

declare ptr @pq_getmsgtext(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @bpcharsend(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @textsend(ptr noundef %0) #10
  ret i64 %i.a
}

declare i64 @textsend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @bpchar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #10 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %.not60 = icmp eq i64 %i.i, 0
  %i.j = icmp slt i32 %i.g, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.d to i64
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.g, -4                     ; 5 uses
  %i.m = load i8, ptr %i.d, align 1               ; 3 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = icmp eq i8 %i.m, 1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.p, align 1            ; 2 uses
  %i.q = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.q, 3
  %i.r = icmp eq i8 %.val.i, 18
  %i.s = select i1 %i.r, i32 16, i32 0
  %i.t = select i1 %or.cond.i.i.i, i32 8, i32 %i.s
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.u = and i32 %i.n, 1
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %i.n, 1
  %i.w = add nsw i32 %i.v, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.d, align 4
  %i.y = lshr i32 %i.x, 2
  %i.z = add nsw i32 %i.y, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.t, %bb.d ], [ %i.w, %bb.f ], [ %i.z, %bb.g ] ; 6 uses
  %i.aa = and i8 %i.m, 1
  %.not.i59 = icmp eq i8 %i.aa, 0
  %.v.i = select i1 %.not.i59, i64 4, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 4 uses
  %i.ac = tail call i32 @pg_mbstrlen_with_len(ptr noundef nonnull %i.ab, i32 noundef %.0.i) #10 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, %i.l
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.ae = ptrtoint ptr %i.d to i64
  br label %.critedge

bb.i:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.af = icmp sgt i32 %i.ac, %i.l
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @pg_mbcharcliplen(ptr noundef nonnull %i.ab, i32 noundef %.0.i, i32 noundef %i.l) #10 ; 6 uses
  %i.ah = icmp slt i32 %i.ag, %.0.i
  %or.cond = select i1 %.not60, i1 %i.ah, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ai = sext i32 %i.ag to i64
  br label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.0.i, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %.not = icmp eq i8 %i.ak, 32
  br i1 %.not, label %bb.k, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = tail call zeroext i1 @errsave_start(ptr noundef %i.am, ptr noundef null) #10
  br i1 %i.an, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call i32 @errcode(i32 noundef 16777346) #10 ; 0 uses
  %i.ap = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, i32 noundef %i.l) #10 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.am, ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @__func__.bpchar) #10
  br label %.critedge

bb.n:                                             ; preds = %bb.i
  %i.aq = add i32 %.0.i, %i.l
  %i.ar = sub i32 %i.aq, %i.ac
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.n
  %.152 = phi i32 [ %i.ar, %bb.n ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %.0.i, %bb.n ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ] ; 3 uses
  %i.as = add i32 %.152, 4                        ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = tail call ptr @palloc(i64 noundef %i.at) #10 ; 3 uses
  %i.av = shl i32 %i.as, 2
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.ax = sext i32 %.1 to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 1 %i.ab, i64 %i.ax, i1 false)
  %i.ay = icmp sgt i32 %.152, %.1
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %i.ba = sub i32 %.152, %.1
  %i.bb = sext i32 %i.ba to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 32, i64 %i.bb, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %i.bc = ptrtoint ptr %i.au to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.p, %bb.h, %bb.b
  %.154 = phi i64 [ %i.k, %bb.b ], [ %i.ae, %bb.h ], [ %i.bc, %bb.p ], [ 0, %bb.m ], [ 0, %bb.l ]
  ret i64 %.154
}

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #3

declare i32 @pg_mbstrlen_with_len(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pg_mbcharcliplen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @char_bpchar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @palloc(i64 noundef 5) #10 ; 3 uses
  store i32 20, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.c, ptr %i.e, align 4
  %i.f = ptrtoint ptr %i.d to i64
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bpchar_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #10 ; 5 uses
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp eq i8 %i.e, 1
  br i1 %i.g, label %VARSIZE_ANY_EXHDR.exit.thread, label %bb.b

VARSIZE_ANY_EXHDR.exit.thread:                    ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.h, align 1            ; 2 uses
  %i.i = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.i, 3
  %i.j = icmp eq i8 %.val.i, 18
  %i.k = select i1 %i.j, i32 16, i32 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i32 %i.f, 1
  %i.o = add nsw i32 %i.n, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.d, align 4
  %i.q = lshr i32 %i.p, 2
  %i.r = add nsw i32 %i.q, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = and i8 %i.e, 1
  %.not.i15 = icmp eq i8 %i.s, 0
  %.v.i = select i1 %.not.i15, i64 4, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 3 uses
  %i.u = icmp sgt i32 %.0.i, 63
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.v = tail call i32 @pg_mbcliplen(ptr noundef nonnull %i.t, i32 noundef %.0.i, i32 noundef 63) #10
  br label %bb.f

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.thread, %bb.e, %VARSIZE_ANY_EXHDR.exit
  %i.w = phi ptr [ %i.t, %bb.e ], [ %i.t, %VARSIZE_ANY_EXHDR.exit ], [ %i.l, %VARSIZE_ANY_EXHDR.exit.thread ] ; 2 uses
  %.0 = phi i32 [ %i.v, %bb.e ], [ %.0.i, %VARSIZE_ANY_EXHDR.exit ], [ %i.k, %VARSIZE_ANY_EXHDR.exit.thread ] ; 3 uses
  %i.x = icmp sgt i32 %.0, 0
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %VARSIZE_ANY_EXHDR.exit.thread, %bb.f
  %.023 = phi i32 [ %.0, %bb.f ], [ 8, %VARSIZE_ANY_EXHDR.exit.thread ]
  %i.y = phi ptr [ %i.w, %bb.f ], [ %i.l, %VARSIZE_ANY_EXHDR.exit.thread ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.116 = phi i32 [ %2, %bb.g ], [ %.023, %.lr.ph.preheader ] ; 4 uses
  %1 = zext nneg i32 %.116 to i64
  %i.z = getelementptr i8, ptr %i.y, i64 %1
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1
  %.not = icmp eq i8 %i.ab, 32
  br i1 %.not, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph
  %2 = add nsw i32 %.116, -1
  %i.ac = icmp sgt i32 %.116, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %bb.f
  %i.ad = phi ptr [ %i.w, %bb.f ], [ %i.y, %.lr.ph ], [ %i.y, %bb.g ]
  %.1.lcssa = phi i32 [ %.0, %bb.f ], [ 0, %bb.g ], [ %.116, %.lr.ph ]
  %i.ae = tail call ptr @palloc0(i64 noundef 64) #10 ; 2 uses
  %i.af = sext i32 %.1.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ag = ptrtoint ptr %i.ae to i64
  ret i64 %i.ag
}

declare i32 @pg_mbcliplen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @name_bpchar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @cstring_to_text(ptr noundef %i.c) #10
  %i.e = ptrtoint ptr %i.d to i64
  ret i64 %i.e
}

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i64 5, 10485765) i64 @bpchartypmodin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10
  %i.e = tail call fastcc i32 @anychar_typmodin(ptr noundef %i.d, ptr noundef nonnull @.str.2)
  %i.f = zext nneg i32 %i.e to i64
  ret i64 %i.f
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 5, 10485765) i32 @anychar_typmodin(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @ArrayGetIntegerTypmods(ptr noundef %0, ptr noundef nonnull %i.a) #10
  %i.c = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.e = call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.f = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 48, ptr noundef nonnull @__func__.anychar_typmodin) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.b, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.j = call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef %1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__func__.anychar_typmodin) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = icmp samesign ugt i32 %i.g, 10485760
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.n = call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.o = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef 10485760) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__func__.anychar_typmodin) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = add nuw nsw i32 %i.g, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bpchartypmodout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = tail call ptr @palloc(i64 noundef 64) #10 ; 3 uses
  %i.e = icmp sgt i32 %i.c, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -4
  %i.g = tail call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.d, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %i.f) #10 ; 0 uses
  br label %anychar_typmodout.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.d, align 1
  br label %anychar_typmodout.exit

anychar_typmodout.exit:                           ; preds = %bb.b, %bb.c
  %i.h = ptrtoint ptr %i.d to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @varcharin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call fastcc ptr @varchar_input(ptr noundef nonnull %i.c, i64 noundef %i.g, i32 noundef %i.f, ptr noundef %i.i)
  %i.k = ptrtoint ptr %i.j to i64
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @varchar_input(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, -4                           ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp sgt i32 %2, 3
  %i.d = icmp ugt i64 %1, %i.b
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i32
  %i.f = tail call i32 @pg_mbcharcliplen(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.a) #10
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %.not2931 = icmp ugt i64 %1, %i.g
  br i1 %.not2931, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.h = add i64 %.02232, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02232 = phi i64 [ %i.h, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.02232
  %i.j = load i8, ptr %i.i, align 1
  %.not = icmp eq i8 %i.j, 32
  br i1 %.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = tail call zeroext i1 @errsave_start(ptr noundef %3, ptr noundef null) #10
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @errcode(i32 noundef 16777346) #10 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i64 noundef %i.b) #10 ; 0 uses
  tail call void @errsave_finish(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 479, ptr noundef nonnull @__func__.varchar_input) #10
  br label %.thread

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.125 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.c ]
  %i.n = trunc i64 %.125 to i32
  %i.o = tail call ptr @cstring_to_text_with_len(ptr noundef %0, i32 noundef %i.n) #10
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %.loopexit
  %.1 = phi ptr [ %i.o, %.loopexit ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @varcharout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @text_to_cstring(ptr noundef %i.c) #10
  %i.e = ptrtoint ptr %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @varcharrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
end_hunk_0
