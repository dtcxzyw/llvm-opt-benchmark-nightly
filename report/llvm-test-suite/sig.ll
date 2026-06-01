inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@type2str = dso_local local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"Error converting signature to a type.\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"byte %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"char %s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"double %s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"float %s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"int %s\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"long %s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"java/lang/\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"short %s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"boolean %s\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Non-function with function sig!\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"<clinit>\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Function Parameter type mismatch\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"var%d\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"void %s\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Error reading type signature!\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 0, 12) i32 @_Z8sig2typePc(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.a, label %bb.b [
    i8 66, label %bb.c
    i8 67, label %1
    i8 68, label %2
    i8 70, label %3
    i8 73, label %4
    i8 74, label %5
    i8 76, label %6
    i8 83, label %7
    i8 90, label %8
    i8 91, label %6
    i8 40, label %9
    i8 86, label %10
  ]

1:                                                ; preds = %bb.a
  br label %bb.c

2:                                                ; preds = %bb.a
  br label %bb.c

3:                                                ; preds = %bb.a
  br label %bb.c

4:                                                ; preds = %bb.a
  br label %bb.c

5:                                                ; preds = %bb.a
  br label %bb.c

6:                                                ; preds = %bb.a, %bb.a
  br label %bb.c

7:                                                ; preds = %bb.a
  br label %bb.c

8:                                                ; preds = %bb.a
  br label %bb.c

9:                                                ; preds = %bb.a
  br label %bb.c

10:                                               ; preds = %bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.9, i64 38, i64 1, ptr %i.b) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.c:                                             ; preds = %bb.a, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %.0 = phi i32 [ 0, %10 ], [ 2, %1 ], [ 7, %2 ], [ 6, %3 ], [ 4, %4 ], [ 5, %5 ], [ 8, %6 ], [ 3, %7 ], [ 10, %8 ], [ 1, %bb.a ], [ 11, %9 ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 10 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !12
  %i.d = load i8, ptr %i.b, align 1, !tbaa !8
  switch i8 %i.d, label %bb.al [
    i8 66, label %bb.b
    i8 67, label %bb.c
    i8 68, label %bb.d
    i8 70, label %bb.e
    i8 73, label %bb.f
    i8 74, label %bb.g
    i8 76, label %.preheader194
    i8 83, label %bb.l
    i8 90, label %bb.m
    i8 91, label %.preheader160
    i8 40, label %bb.p
    i8 86, label %bb.ak
  ]

.preheader160:                                    ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !tbaa !8
  %i.f = add i8 %i.e, -48
  %or.cond171 = icmp ult i8 %i.f, 10
  br i1 %or.cond171, label %.lr.ph173, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader160
  %i.g = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

.preheader194:                                    ; preds = %bb.a, %.preheader194
  %i.n = phi ptr [ %i.o, %.preheader194 ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !12
  %i.p = load i8, ptr %i.n, align 1, !tbaa !8
  %.not154 = icmp eq i8 %i.p, 59
  br i1 %.not154, label %bb.h, label %.preheader194, !llvm.loop !14

bb.h:                                             ; preds = %.preheader194
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #13 ; 7 uses
  %i.u = xor i64 %i.r, -1                         ; 2 uses
  %i.v = add i64 %i.q, %i.u
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c, i64 noundef %i.v) #12 ; 0 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q
  store i8 0, ptr %i.y, align 1, !tbaa !8
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.16, i64 noundef 10) #14
  %.not155 = icmp eq i32 %i.z, 0
  br i1 %.not155, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.aa = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 47) #14 ; 2 uses
  %.not156176 = icmp eq ptr %i.aa, null
  br i1 %.not156176, label %.loopexit, label %.lr.ph177

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  br label %.loopexit

.lr.ph177:                                        ; preds = %.preheader, %.lr.ph177
  %i.ac = phi ptr [ %i.ad, %.lr.ph177 ], [ %i.aa, %.preheader ] ; 2 uses
  store i8 46, ptr %i.ac, align 1, !tbaa !8
  %i.ad = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ac, i32 noundef 47) #14 ; 2 uses
  %.not156 = icmp eq ptr %i.ad, null
  br i1 %.not156, label %.loopexit, label %.lr.ph177, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph177, %.preheader, %bb.i
  %i.ae = phi ptr [ %i.ab, %bb.i ], [ %i.t, %.preheader ], [ %i.t, %.lr.ph177 ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not157 = icmp eq ptr %i.ag, null
  br i1 %.not157, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #14
  %sext = shl i64 %i.ah, 32
  %i.ai = ashr exact i64 %sext, 32                ; 2 uses
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, i64 noundef %i.ai) #14
  %.not159 = icmp eq i32 %i.aj, 0
  br i1 %.not159, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.k, %bb.j
  %i.am = phi ptr [ %i.ae, %.loopexit ], [ %i.al, %bb.k ], [ %i.ae, %bb.j ]
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %i.am, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.l:                                             ; preds = %bb.a
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.m:                                             ; preds = %bb.a
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

.lr.ph173:                                        ; preds = %.preheader160, %.lr.ph173
  %.0135172 = phi i32 [ %i.aw, %.lr.ph173 ], [ 0, %.preheader160 ]
  %i.aq = phi ptr [ %i.as, %.lr.ph173 ], [ %i.c, %.preheader160 ] ; 2 uses
  %i.ar = mul nsw i32 %.0135172, 10
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !12
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.au = sext i8 %i.at to i32
  %i.av = add i32 %i.ar, -48
  %i.aw = add i32 %i.av, %i.au                    ; 3 uses
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !8
  %i.ay = add i8 %i.ax, -48
  %or.cond = icmp ult i8 %i.ay, 10
  br i1 %or.cond, label %.lr.ph173, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %.lr.ph173
  %i.az = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  %.not153 = icmp eq i32 %i.aw, 0
  br i1 %.not153, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %i.aw) #12 ; 0 uses
  br label %bb.am

bb.o:                                             ; preds = %.critedge.thread, %.critedge
  %i.bb = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %1) ; 0 uses
  br label %bb.am

bb.p:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bd = tail call i64 @fwrite(ptr nonnull @.str.22, i64 32, i64 1, ptr %i.bc) #10 ; 0 uses
  br label %bb.am

bb.r:                                             ; preds = %bb.p
  store ptr %i.c, ptr %i.a, align 8, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %i.be = phi ptr [ %i.bf, %bb.s ], [ %i.c, %bb.r ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !12
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !8
  %.not143 = icmp eq i8 %i.bg, 41
  br i1 %.not143, label %bb.t, label %bb.s, !llvm.loop !29

bb.t:                                             ; preds = %bb.s
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %.not144 = icmp eq i32 %i.bh, 0
  br i1 %.not144, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #14
  %i.bj = add i64 %i.bi, 1
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #13 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !30
  %i.bm = load ptr, ptr %2, align 8, !tbaa !12
  %i.bn = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(1) %i.bm) #12 ; 0 uses
end_hunk_0
