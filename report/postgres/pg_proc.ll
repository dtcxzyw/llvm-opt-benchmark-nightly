Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_proc?download=true
inline.NumInlined: 53
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ObjectAddress = type { i32, i32, i32 }
%struct.nameData = type { [64 x i8] }
%struct.parse_error_callback_arg = type { ptr, ptr }
%struct.ErrorContextCallback = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [44 x i8] c"functions cannot have more than %d argument\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"functions cannot have more than %d arguments\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pg_proc.c\00", align 1
@__func__.ProcedureCreate = private unnamed_addr constant [16 x i8] c"ProcedureCreate\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"allParameterTypes is not a 1-D Oid array\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"parameterModes is not a 1-D char array\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"cannot determine result data type\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"unsafe use of pseudo-type \22internal\22\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"variadic parameter must be last\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"variadic parameter is not an array\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"invalid parameter mode '%c'\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"function \22%s\22 already exists with same argument types\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"cannot change routine kind\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\22%s\22 is an aggregate function.\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\22%s\22 is a function.\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"\22%s\22 is a procedure.\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"\22%s\22 is a window function.\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"DROP PROCEDURE\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"DROP AGGREGATE\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"DROP FUNCTION\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"cannot change whether a procedure has output parameters\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"cannot change return type of existing function\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Use %s %s first.\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"Row type defined by OUT parameters is different.\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"cannot change name of input parameter \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"cannot remove parameter defaults from existing function\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"cannot change data type of existing parameter default value\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"function \22%s\22 will be effectively temporary\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"It depends on temporary %s.\00", align 1
@object_access_hook = external local_unnamed_addr global ptr, align 8
@check_function_bodies = external local_unnamed_addr global i8, align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@__func__.fmgr_internal_validator = private unnamed_addr constant [24 x i8] c"fmgr_internal_validator\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"there is no built-in function named \22%s\22\00", align 1
@__func__.fmgr_c_validator = private unnamed_addr constant [17 x i8] c"fmgr_c_validator\00", align 1
@__func__.fmgr_sql_validator = private unnamed_addr constant [19 x i8] c"fmgr_sql_validator\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"SQL functions cannot return type %s\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"SQL functions cannot have arguments of type %s\00", align 1
@error_context_stack = external local_unnamed_addr global ptr, align 8
@ActivePortal = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"SQL function \22%s\22\00", align 1
@switch.table.ProcedureCreate = private unnamed_addr constant [23 x ptr] [ptr @.str.13, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.14, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.15, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.16], align 8

; Function Attrs: nounwind uwtable
define dso_local { i64, i32 } @ProcedureCreate(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef signext %11, i1 noundef zeroext %12, i1 noundef zeroext %13, i1 noundef zeroext %14, i8 noundef signext %15, i8 noundef signext %16, ptr noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, ptr noundef %21, i64 noundef %22, ptr nofree noundef readonly captures(address_is_null) %23, i64 noundef %24, i32 noundef %25, float noundef %26, float noundef %27) local_unnamed_addr #0 {
bb.a:
  %28 = alloca %struct.ObjectAddress, align 8     ; 6 uses
  %i.a = alloca [30 x i8], align 16               ; 14 uses
  %i.b = alloca [30 x i64], align 16              ; 34 uses
  %i.c = alloca [30 x i8], align 16               ; 7 uses
  %29 = alloca %struct.nameData, align 1          ; 4 uses
  %30 = alloca %struct.ObjectAddress, align 4     ; 16 uses
  %31 = alloca %struct.ObjectAddress, align 4     ; 4 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #6
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %or.cond = icmp ugt i32 %i.h, 100
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 50856197) #6 ; 0 uses
  %i.k = tail call i32 (ptr, ptr, i64, ...) @errmsg_plural(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 100, i32 noundef 100) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i64 %18, 0                      ; 3 uses
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %18 to ptr                  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp ne i32 %i.p, 1
  %i.r = icmp slt i32 %i.n, 1
  %or.cond3 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 4
  %.not345 = icmp eq i32 %i.t, 0
  br i1 %.not345, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %.not346 = icmp eq i32 %i.v, 26
  br i1 %.not346, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.f
  %.0305 = phi i32 [ %i.n, %bb.f ], [ %i.h, %bb.c ] ; 6 uses
  %.pn = phi ptr [ %i.l, %bb.f ], [ %17, %bb.c ]
  %.0304 = getelementptr inbounds nuw i8, ptr %.pn, i64 24 ; 3 uses
  %.not347 = icmp eq i64 %19, 0                   ; 2 uses
  br i1 %.not347, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = inttoptr i64 %19 to ptr                  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %.not348 = icmp eq i32 %i.aa, 1
  br i1 %.not348, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i32, ptr %i.ab, align 4
  %.not349 = icmp eq i32 %i.ac, %.0305
  br i1 %.not349, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i32, ptr %i.ad, align 4
  %.not350 = icmp eq i32 %i.ae, 0
  br i1 %.not350, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ag = load i32, ptr %i.af, align 4
  %.not351 = icmp eq i32 %i.ag, 18
  br i1 %.not351, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ah = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 205, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.0303 = phi ptr [ %i.aj, %bb.n ], [ null, %bb.h ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.al = tail call ptr @check_valid_polymorphic_signature(i32 noundef %4, ptr noundef nonnull %i.ak, i32 noundef %i.h) #6 ; 2 uses
  %.not352 = icmp eq ptr %i.al, null
  br i1 %.not352, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.an = tail call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.ao = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #6 ; 0 uses
  %i.ap = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.al) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 220, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = tail call ptr @check_valid_internal_signature(i32 noundef %4, ptr noundef nonnull %i.ak, i32 noundef %i.h) #6 ; 2 uses
  %.not353 = icmp eq ptr %i.aq, null
  br i1 %.not353, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.as = tail call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.at = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #6 ; 0 uses
  %i.au = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.aq) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 233, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.av = icmp ne i32 %.0305, 0                   ; 2 uses
  %or.cond447 = select i1 %.not, i1 %i.av, i1 false
  br i1 %or.cond447, label %.lr.ph, label %.loopexit409

.lr.ph:                                           ; preds = %bb.s
  %cond = icmp eq ptr %.0303, null
  br i1 %cond, label %.loopexit407, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.0305 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0303, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1
  switch i8 %i.ax, label %bb.t [
    i8 105, label %bb.x
    i8 118, label %bb.x
  ]

bb.t:                                             ; preds = %.lr.ph.split
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.0304, i64 %indvars.iv ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = tail call ptr @check_valid_polymorphic_signature(i32 noundef %i.az, ptr noundef nonnull %i.ak, i32 noundef %i.h) #6 ; 2 uses
  %.not381 = icmp eq ptr %i.ba, null
  br i1 %.not381, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bc = tail call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #6 ; 0 uses
  %i.be = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ba) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 254, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bf = load i32, ptr %i.ay, align 4
  %i.bg = tail call ptr @check_valid_internal_signature(i32 noundef %i.bf, ptr noundef nonnull %i.ak, i32 noundef %i.h) #6 ; 2 uses
  %.not382 = icmp eq ptr %i.bg, null
  br i1 %.not382, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bi = tail call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.bj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #6 ; 0 uses
  %i.bk = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.bg) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 262, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.x:                                             ; preds = %.lr.ph.split, %.lr.ph.split, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit409, label %.lr.ph.split, !llvm.loop !7

.loopexit409:                                     ; preds = %bb.x, %bb.s
  %.not354 = icmp ne ptr %.0303, null
  %or.cond448 = select i1 %.not354, i1 %i.av, i1 false
  br i1 %or.cond448, label %.lr.ph427, label %.loopexit407

.lr.ph427:                                        ; preds = %.loopexit409
  %i.bl = icmp eq i8 %11, 112
  %wide.trip.count463 = zext nneg i32 %.0305 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph427, %bb.al
  %indvars.iv460 = phi i64 [ 0, %.lr.ph427 ], [ %indvars.iv.next461, %bb.al ] ; 4 uses
  %.0300425 = phi i32 [ 0, %.lr.ph427 ], [ %.1301, %bb.al ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0303, i64 %indvars.iv460
  %i.bn = load i8, ptr %i.bm, align 1
  switch i8 %i.bn, label %bb.ak [
    i8 105, label %bb.z
    i8 98, label %bb.z
    i8 111, label %bb.ab
    i8 116, label %bb.al
    i8 118, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %.not380 = icmp eq i32 %.0300425, 0
  br i1 %.not380, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 281, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bq = icmp ne i32 %.0300425, 0
  %or.cond6 = and i1 %i.bl, %i.bq
  br i1 %or.cond6, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.br = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bs = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 285, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.ad:                                            ; preds = %bb.y
  %.not378 = icmp eq i32 %.0300425, 0
  br i1 %.not378, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bu = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 292, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.0304, i64 %indvars.iv460
  %i.bw = load i32, ptr %i.bv, align 4            ; 3 uses
  switch i32 %i.bw, label %bb.ai [
    i32 2276, label %bb.al
    i32 2277, label %bb.ag
    i32 5078, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.bx = tail call i32 @get_element_type(i32 noundef %i.bw) #6 ; 2 uses
  %.not379 = icmp eq i32 %i.bx, 0
  br i1 %.not379, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.by = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bz = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 307, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %.0303, i64 %indvars.iv460
  %i.cb = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.cc = load i8, ptr %i.ca, align 1
  %i.cd = sext i8 %i.cc to i32
  %i.ce = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.cd) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 312, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.al:                                            ; preds = %bb.af, %bb.y, %bb.z, %bb.ab, %bb.ai, %bb.ah, %bb.ag
  %.1301 = phi i32 [ 0, %bb.z ], [ %.0300425, %bb.ab ], [ %.0300425, %bb.y ], [ %i.bx, %bb.ai ], [ 5077, %bb.ah ], [ 2283, %bb.ag ], [ %i.bw, %bb.af ] ; 2 uses
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count463
  br i1 %exitcond464.not, label %.loopexit407.loopexit, label %bb.y, !llvm.loop !8

.loopexit407.loopexit:                            ; preds = %bb.al
  %i.cf = zext i32 %.1301 to i64
  br label %.loopexit407

.loopexit407:                                     ; preds = %.loopexit407.loopexit, %.lr.ph, %.loopexit409
  %.2302 = phi i64 [ 0, %.loopexit409 ], [ 0, %.lr.ph ], [ %i.cf, %.loopexit407.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.a, i8 0, i64 30, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.b, i8 0, i64 240, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.c, i8 1, i64 30, i1 false)
  call void @namestrcpy(ptr noundef nonnull %29, ptr noundef %0) #6
  %i.cg = ptrtoint ptr %29 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = zext i32 %1 to i64                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ci, ptr %i.cj, align 16
  %i.ck = zext i32 %5 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = zext i32 %6 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.cm, ptr %i.cn, align 16
  %i.co = insertelement <2 x float> poison, float %26, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %27, i64 1
  %i.cq = bitcast <2 x float> %i.cp to <2 x i32>
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cs = sext <2 x i32> %i.cq to <2 x i64>
  store <2 x i64> %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.2302, ptr %i.ct, align 8
  %i.cu = zext i32 %25 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.cu, ptr %i.cv, align 16
  %i.cw = sext i8 %11 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = zext i1 %12 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.cy, ptr %i.cz, align 16
  %i.da = zext i1 %13 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = zext i1 %14 to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.dc, ptr %i.dd, align 16
  %i.de = zext i1 %3 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = sext i8 %15 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.dg, ptr %i.dh, align 16
end_hunk_0
begin_hunk_1_@ProcedureCreate:bb.a
bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.hr = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.hs = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.ht = load ptr, ptr %i.e, align 8
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv468
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %i.hv) #6 ; 0 uses
  %i.hx = load i32, ptr %i.fh, align 4
  %i.hy = call ptr @format_procedure(i32 noundef %i.hx) #6
  %i.hz = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.fz, ptr noundef %i.hy) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 523, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.ch:                                            ; preds = %bb.cf, %bb.cc
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %._crit_edge, label %bb.cc, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.ch, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge, %bb.ca
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fh, i64 106 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2            ; 2 uses
  %.not367 = icmp eq i16 %i.ib, 0
  br i1 %.not367, label %.loopexit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not.i, label %list_length.exit393, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.id = load i32, ptr %i.ic, align 4
  br label %list_length.exit393

list_length.exit393:                              ; preds = %bb.cj, %bb.ck
  %i.ie = phi i32 [ %i.id, %bb.ck ], [ 0, %bb.cj ]
  %i.if = sext i16 %i.ib to i32
  %i.ig = icmp slt i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %list_length.exit393
  %i.ih = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ii = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.ij = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #6 ; 0 uses
  %i.ik = load i32, ptr %i.fh, align 4
  %i.il = call ptr @format_procedure(i32 noundef %i.ik) #6
  %i.im = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.fz, ptr noundef %i.il) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 549, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.cm:                                            ; preds = %list_length.exit393
  %i.in = call i64 @SysCacheGetAttrNotNull(i32 noundef 46, ptr noundef nonnull %i.fc, i16 noundef signext 24) #6
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = call ptr @text_to_cstring(ptr noundef %i.io) #6
  %i.iq = call ptr @stringToNode(ptr noundef %i.ip) #6 ; 3 uses
  br i1 %.not.i, label %list_length.exit395, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ir = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  br label %list_length.exit395

list_length.exit395:                              ; preds = %bb.cm, %bb.cn
  %i.it = phi i32 [ %i.is, %bb.cn ], [ 0, %bb.cm ]
  %i.iu = getelementptr i8, ptr %21, i64 16       ; 2 uses
  %.not368 = icmp eq ptr %i.iq, null
  br i1 %.not368, label %.loopexit, label %.lr.ph433

.lr.ph433:                                        ; preds = %list_length.exit395
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.ix = getelementptr i8, ptr %21, i64 4
  %i.iy = load i32, ptr %i.iv, align 4
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph437.preheader, label %.loopexit

.lr.ph437.preheader:                              ; preds = %.lr.ph433
  %.val389 = load ptr, ptr %i.iu, align 8
  %i.ja = load i16, ptr %i.ia, align 2
  %i.jb = sext i16 %i.ja to i32
  %i.jc = sub i32 %i.it, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %.val389, i64 %i.jd
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.preheader, %bb.co
  %indvars.iv473 = phi i64 [ 0, %.lr.ph437.preheader ], [ %indvars.iv.next474, %bb.co ] ; 2 uses
  %.0293431436 = phi ptr [ %i.je, %.lr.ph437.preheader ], [ %..i, %bb.co ] ; 2 uses
  %i.jf = load ptr, ptr %i.iw, align 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv473
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = load ptr, ptr %.0293431436, align 8
  %i.jj = call i32 @exprType(ptr noundef %i.jh) #6
  %i.jk = call i32 @exprType(ptr noundef %i.ji) #6
  %.not377 = icmp eq i32 %i.jj, %i.jk
  br i1 %.not377, label %bb.co, label %.split

.split:                                           ; preds = %.lr.ph437
  %i.jl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.jm = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.jn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26) #6 ; 0 uses
  %i.jo = load i32, ptr %i.fh, align 4
  %i.jp = call ptr @format_procedure(i32 noundef %i.jo) #6
  %i.jq = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.fz, ptr noundef %i.jp) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 573, ptr noundef nonnull @__func__.ProcedureCreate) #6
  unreachable

bb.co:                                            ; preds = %.lr.ph437
  %.val390 = load i32, ptr %i.ix, align 4
  %.val391 = load ptr, ptr %i.iu, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %.0293431436, i64 8 ; 2 uses
  %i.js = sext i32 %.val390 to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %.val391, i64 %i.js
  %i.ju = icmp ult ptr %i.jr, %i.jt
  %..i = select i1 %i.ju, ptr %i.jr, ptr null
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.jv = load i32, ptr %i.iv, align 4
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp slt i64 %indvars.iv.next474, %i.jw
  br i1 %i.jx, label %.lr.ph437, label %.loopexit

bb.cp:                                            ; preds = %bb.bk
  %i.jy = call ptr @get_user_default_acl(i32 noundef 19, i32 noundef %5, i32 noundef %1) #6 ; 3 uses
  %.not361 = icmp eq ptr %i.jy, null
  br i1 %.not361, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i64 %i.jz, ptr %i.ka, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 1, ptr %i.kb, align 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.kc = call i32 @GetNewOidWithIndex(ptr noundef nonnull %i.ey, i32 noundef 2690, i16 noundef signext 1) #6
  %i.kd = zext i32 %i.kc to i64
  store i64 %i.kd, ptr %i.b, align 16
  %i.ke = call ptr @heap_form_tuple(ptr noundef %i.fa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6 ; 3 uses
  call void @CatalogTupleInsert(ptr noundef nonnull %i.ey, ptr noundef %i.ke) #6
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  %.0298.val = load ptr, ptr %i.kf, align 8       ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0298.val, i64 22
  %i.kh = load i8, ptr %i.kg, align 2
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %.0298.val, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4
  br label %bb.ct

.loopexit:                                        ; preds = %bb.co, %list_length.exit395, %.lr.ph433, %bb.ci
  store i8 0, ptr %i.c, align 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.kl, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  store i8 0, ptr %i.km, align 1
  %i.kn = call ptr @heap_modify_tuple(ptr noundef nonnull %i.fc, ptr noundef %i.fa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #6 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  call void @CatalogTupleUpdate(ptr noundef %i.ey, ptr noundef nonnull %i.ko, ptr noundef %i.kn) #6
  call void @ReleaseSysCache(ptr noundef nonnull %i.fc) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.kp = getelementptr i8, ptr %i.kn, i64 16
  %.0298.val398 = load ptr, ptr %i.kp, align 8    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0298.val398, i64 22
  %i.kr = load i8, ptr %i.kq, align 2
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %.0298.val398, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4            ; 2 uses
  %i.kv = call i64 @deleteDependencyRecordsFor(i32 noundef 1255, i32 noundef %i.ku, i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.loopexit
  %i.kw = phi i32 [ %i.ku, %.loopexit ], [ %i.kk, %bb.cs ] ; 7 uses
  %.0298401 = phi ptr [ %i.kn, %.loopexit ], [ %i.ke, %bb.cs ]
  %.0299399 = phi ptr [ null, %.loopexit ], [ %i.jy, %bb.cs ]
  %i.kx = call ptr @new_object_addresses() #6     ; 11 uses
  store i32 1255, ptr %28, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %i.kw, ptr %i.ky, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i32 0, ptr %i.kz, align 8
  store i32 2615, ptr %30, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %30, i64 4 ; 6 uses
  store i32 %1, ptr %i.la, align 4
  %i.lb = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  store i32 0, ptr %i.lb, align 4
  call void @add_exact_object_address(ptr noundef nonnull %30, ptr noundef %i.kx) #6
  store i32 2612, ptr %30, align 4
  store i32 %6, ptr %i.la, align 4
  store i32 0, ptr %i.lb, align 4
  call void @add_exact_object_address(ptr noundef nonnull %30, ptr noundef %i.kx) #6
  store i32 1247, ptr %30, align 4
  store i32 %4, ptr %i.la, align 4
  store i32 0, ptr %i.lb, align 4
  call void @add_exact_object_address(ptr noundef nonnull %30, ptr noundef %i.kx) #6
  %.not449 = icmp eq i32 %.0305, 0
  br i1 %.not449, label %.preheader405, label %.lr.ph440.preheader

.lr.ph440.preheader:                              ; preds = %bb.ct
  %wide.trip.count479 = zext nneg i32 %.0305 to i64
  br label %.lr.ph440

.preheader405:                                    ; preds = %.lr.ph440, %bb.ct
  %i.lc = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 2 uses
  %.not376 = icmp eq ptr %23, null
  %i.ld = getelementptr inbounds nuw i8, ptr %23, i64 16
  br i1 %.not376, label %.split446, label %.lr.ph442.split

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %.lr.ph440
  %indvars.iv476 = phi i64 [ 0, %.lr.ph440.preheader ], [ %indvars.iv.next477, %.lr.ph440 ] ; 2 uses
  store i32 1247, ptr %30, align 4
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0304, i64 %indvars.iv476
  %i.lf = load i32, ptr %i.le, align 4
  store i32 %i.lf, ptr %i.la, align 4
  store i32 0, ptr %i.lb, align 4
  call void @add_exact_object_address(ptr noundef nonnull %30, ptr noundef %i.kx) #6
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count479
  br i1 %exitcond480.not, label %.preheader405, label %.lr.ph440, !llvm.loop !10

.lr.ph442.split:                                  ; preds = %.preheader405
  %i.lg = load i32, ptr %i.lc, align 4
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph445, label %.split446

.split446:                                        ; preds = %.lr.ph445, %.lr.ph442.split, %.preheader405
  %.not371 = icmp eq i32 %25, 0
  br i1 %.not371, label %bb.cv, label %bb.cu

.lr.ph445:                                        ; preds = %.lr.ph442.split, %.lr.ph445
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %.lr.ph445 ], [ 0, %.lr.ph442.split ] ; 2 uses
  %i.li = load ptr, ptr %i.ld, align 8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv481
  %i.lk = load i32, ptr %i.lj, align 8
  store i32 3576, ptr %30, align 4
  store i32 %i.lk, ptr %i.la, align 4
  store i32 0, ptr %i.lb, align 4
  call void @add_exact_object_address(ptr noundef nonnull %30, ptr noundef %i.kx) #6
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %i.ll = load i32, ptr %i.lc, align 4
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next482, %i.lm
  br i1 %i.ln, label %.lr.ph445, label %.split446

bb.cu:                                            ; preds = %.split446
  store i32 1255, ptr %30, align 4
  store i32 %25, ptr %i.la, align 4
  store i32 0, ptr %i.lb, align 4
  call void @add_exact_object_address(ptr noundef nonnull %30, ptr noundef %i.kx) #6
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.split446
  %i.lo = icmp eq i32 %6, 14
  %or.cond12 = and i1 %i.lo, %i.eq
  br i1 %or.cond12, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @collectDependenciesOfExpr(ptr noundef %i.kx, ptr noundef nonnull %10, ptr noundef null) #6
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %.not.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @collectDependenciesOfExpr(ptr noundef %i.kx, ptr noundef nonnull %21, ptr noundef null) #6
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.lp = call zeroext i1 @isTempNamespace(i32 noundef %1) #6
  %i.lq = call zeroext i1 @find_temp_object(ptr noundef %i.kx, i1 noundef zeroext %i.lp, ptr noundef nonnull %31) #6
  br i1 %i.lq, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.lr = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #6
  br i1 %i.lr, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ls = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27, ptr noundef %0) #6 ; 0 uses
  %i.lt = call ptr @getObjectDescription(ptr noundef nonnull %31, i1 noundef zeroext false) #6
  %i.lu = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.28, ptr noundef %i.lt) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 684, ptr noundef nonnull @__func__.ProcedureCreate) #6
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db, %bb.cz
  call void @record_object_address_dependencies(ptr noundef nonnull %28, ptr noundef %i.kx, i32 noundef 110) #6
  call void @free_object_addresses(ptr noundef %i.kx) #6
  br i1 %.not360, label %.critedge386, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @recordDependencyOnOwner(i32 noundef 1255, i32 noundef %i.kw, i32 noundef %5) #6
  call void @recordDependencyOnNewAcl(i32 noundef 1255, i32 noundef %i.kw, i32 noundef 0, i32 noundef %5, ptr noundef %.0299399) #6
  br label %.critedge386

.critedge386:                                     ; preds = %bb.dc, %bb.dd
  call void @recordDependencyOnCurrentExtension(ptr noundef nonnull %28, i1 noundef zeroext %.not360) #6
  call void @heap_freetuple(ptr noundef nonnull %.0298401) #6
  %i.lv = load ptr, ptr @object_access_hook, align 8
  %.not372 = icmp eq ptr %i.lv, null
  br i1 %.not372, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.critedge386
  call void @RunObjectPostCreateHook(i32 noundef 1255, i32 noundef %i.kw, i32 noundef 0, i1 noundef zeroext false) #6
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.critedge386
  call void @table_close(ptr noundef %i.ey, i32 noundef 3) #6
  %.not373 = icmp eq i32 %7, 0
  br i1 %.not373, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @CommandCounterIncrement() #6
  %i.lw = load i8, ptr @check_function_bodies, align 1, !range !5, !noundef !6
  %i.lx = trunc nuw i8 %i.lw to i1
  %.not374 = icmp ne i64 %24, 0
  %or.cond404.not = and i1 %.not374, %i.lx
  br i1 %or.cond404.not, label %bb.dh, label %.critedge388

bb.dh:                                            ; preds = %bb.dg
  %i.ly = inttoptr i64 %24 to ptr
  %i.lz = call i32 @NewGUCNestLevel() #6
  %i.ma = call zeroext i1 @superuser() #6
  %i.mb = select i1 %i.ma, i32 5, i32 6
  call void @ProcessGUCArray(ptr noundef nonnull %i.ly, i32 noundef %i.mb, i32 noundef 13, i32 noundef 2) #6
  %i.mc = zext i32 %i.kw to i64
  %i.md = call i64 @OidFunctionCall1Coll(i32 noundef %7, i32 noundef 0, i64 noundef %i.mc) #6 ; 0 uses
  call void @AtEOXact_GUC(i1 noundef zeroext true, i32 noundef %i.lz) #6
  br label %bb.di

.critedge388:                                     ; preds = %bb.dg
  %i.me = zext i32 %i.kw to i64
  %i.mf = call i64 @OidFunctionCall1Coll(i32 noundef %7, i32 noundef 0, i64 noundef %i.me) #6 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.critedge388, %bb.df
  br i1 %.not360, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @pgstat_create_function(i32 noundef %i.kw) #6
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.sroa.0.0.copyload = load i64, ptr %28, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.kz, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @check_valid_polymorphic_signature(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare i32 @errdetail_internal(ptr noundef, ...) local_unnamed_addr #3

declare ptr @check_valid_internal_signature(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_element_type(i32 noundef) local_unnamed_addr #3

declare void @namestrcpy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #3

declare ptr @nodeToString(ptr noundef) local_unnamed_addr #3

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @SearchSysCache3(i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @object_ownercheck(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @aclcheck_error(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

end_hunk_1
