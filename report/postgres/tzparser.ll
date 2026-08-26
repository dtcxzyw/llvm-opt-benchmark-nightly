Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tzparser?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"TZParserMemory\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@GUC_check_errmsg_string = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid time zone file name \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"time zone file recursion limit exceeded in file \22%s\22\00", align 1
@my_exec_path = external global [0 x i8], align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s/timezonesets/%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s/timezonesets\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [125 x i8] c"This may indicate an incomplete PostgreSQL installation, or that the file \22%s\22 has been moved away from its proper location.\00", align 1
@GUC_check_errhint_string = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"could not read time zone file \22%s\22: %m\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"line is too long in time zone file \22%s\22, line %d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"@INCLUDE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"@INCLUDE without file name in time zone file \22%s\22, line %d\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"@OVERRIDE\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"missing time zone abbreviation in time zone file \22%s\22, line %d\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"missing time zone offset in time zone file \22%s\22, line %d\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"invalid number for time zone offset in time zone file \22%s\22, line %d\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"invalid syntax in time zone file \22%s\22, line %d\00", align 1
@.str.20 = private unnamed_addr constant [96 x i8] c"time zone abbreviation \22%s\22 is too long (maximum %d characters) in time zone file \22%s\22, line %d\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"time zone offset %d is out of range in time zone file \22%s\22, line %d\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"time zone abbreviation \22%s\22 is multiply defined\00", align 1
@.str.23 = private unnamed_addr constant [83 x i8] c"Entry in time zone file \22%s\22, line %d, conflicts with entry in file \22%s\22, line %d.\00", align 1
@GUC_check_errdetail_string = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @load_tzoffsets(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = load ptr, ptr @CurrentMemoryContext, align 8
  %i.d = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.c, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #9 ; 2 uses
  %i.e = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.d, ptr @CurrentMemoryContext, align 8
  store i32 128, ptr %i.b, align 4
  %i.f = tail call ptr @palloc_mul(i64 noundef 40, i64 noundef 128) #9
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call fastcc i32 @ParseTzFile(ptr noundef %0, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0) ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call ptr @ConvertTimeZoneAbbrevs(ptr noundef %i.i, i32 noundef %i.g) #9 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__errno_location() #10
  %i.l = load i32, ptr %i.k, align 4
  tail call void @pre_format_elog_string(i32 noundef %i.l, ptr noundef null) #9
  %i.m = tail call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.1) #9
  store ptr %i.m, ptr @GUC_check_errmsg_string, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  tail call void @MemoryContextDelete(ptr noundef %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ParseTzFile(ptr noundef %0, i32 noundef range(i32 0, 5) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 7 uses
  %i.e = alloca [1024 x i8], align 16             ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.g = load i8, ptr %0, align 1                 ; 2 uses
  %.not168 = icmp eq i8 %i.g, 0
  br i1 %.not168, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = tail call ptr @__ctype_b_loc() #10
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.053169, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !4

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.l = phi i8 [ %i.g, %.lr.ph ], [ %i.k, %bb.b ]
  %.053169 = phi ptr [ %0, %.lr.ph ], [ %i.j, %bb.b ]
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, 1024
  %.not76.a = icmp eq i16 %i.p, 0
  br i1 %.not76.a, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %.not77 = icmp eq i32 %1, 0
  br i1 %.not77, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #10
  %i.r = load i32, ptr %i.q, align 4
  tail call void @pre_format_elog_string(i32 noundef %i.r, ptr noundef null) #9
  %i.s = tail call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #9
  store ptr %i.s, ptr @GUC_check_errmsg_string, align 8
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = icmp samesign ugt i32 %1, 3
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.u = tail call ptr @__errno_location() #10
  %i.v = load i32, ptr %i.u, align 4
  tail call void @pre_format_elog_string(i32 noundef %i.v, ptr noundef null) #9
  %i.w = tail call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #9
  store ptr %i.w, ptr @GUC_check_errmsg_string, align 8
  br label %bb.ax

bb.g:                                             ; preds = %._crit_edge
  call void @get_share_path(ptr noundef nonnull @my_exec_path, ptr noundef nonnull %i.c) #9
  %i.x = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.d, i64 noundef 1024, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c, ptr noundef nonnull %0) #9 ; 0 uses
  %i.y = call ptr @AllocateFile(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.5) #9 ; 8 uses
  %.not69.a = icmp eq ptr %i.y, null
  br i1 %.not69.a, label %bb.h, label %.preheader126

.preheader126:                                    ; preds = %bb.g
  %5 = call i32 @feof(ptr noundef nonnull %i.y) #9
  %.not69167171176 = icmp eq i32 %5, 0
  br i1 %.not69167171176, label %.preheader127, label %.loopexit128

.preheader127:                                    ; preds = %.preheader126
  %i.z = add nuw nsw i32 %1, 1
  br label %.lr.ph169.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call ptr @__errno_location() #10   ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ac = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.d, i64 noundef 1024, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.ad = call ptr @AllocateDir(ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.aa, align 4
  call void @pre_format_elog_string(i32 noundef %i.af, ptr noundef null) #9
  %i.ag = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.d) #9
  store ptr %i.ag, ptr @GUC_check_errmsg_string, align 8
  %i.ah = load i32, ptr %i.aa, align 4
  call void @pre_format_elog_string(i32 noundef %i.ah, ptr noundef null) #9
  %i.ai = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.8, ptr noundef nonnull @my_exec_path) #9
  store ptr %i.ai, ptr @GUC_check_errhint_string, align 8
  br label %bb.ax

bb.j:                                             ; preds = %bb.h
  %i.aj = call i32 @FreeDir(ptr noundef nonnull %i.ad) #9 ; 0 uses
  store i32 %i.ab, ptr %i.aa, align 4
  %i.ak = icmp ne i32 %i.ab, 2
  %i.al = icmp ne i32 %1, 0
  %or.cond = or i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.k, label %bb.ax

bb.k:                                             ; preds = %bb.j
  call void @pre_format_elog_string(i32 noundef %i.ab, ptr noundef null) #9
  %i.am = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.9, ptr noundef nonnull %0) #9
  store ptr %i.am, ptr @GUC_check_errmsg_string, align 8
  br label %bb.ax

.lr.ph175:                                        ; preds = %.outer, %.backedge
  %.055174 = phi i32 [ %.055.ph, %.outer ], [ %i.an, %.backedge ]
  %i.an = add i32 %.055174, 1                     ; 10 uses
  %i.ao = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef nonnull %i.y)
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph175
  %i.aq = call i32 @ferror(ptr noundef nonnull %i.y) #9
  %.not75 = icmp eq i32 %i.aq, 0
  br i1 %.not75, label %.loopexit128, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call ptr @__errno_location() #10
  %i.as = load i32, ptr %i.ar, align 4
  call void @pre_format_elog_string(i32 noundef %i.as, ptr noundef null) #9
  %i.at = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.9, ptr noundef nonnull %0) #9
  store ptr %i.at, ptr @GUC_check_errmsg_string, align 8
  br label %.loopexit128

bb.n:                                             ; preds = %.lr.ph175
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #11
  %i.av = icmp eq i64 %i.au, 1023
  br i1 %i.av, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.aw = load i8, ptr %i.e, align 16             ; 2 uses
  %cond170 = icmp eq i8 %i.aw, 0
  br i1 %cond170, label %.backedge, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader
  %i.ax = tail call ptr @__ctype_b_loc() #10      ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = tail call ptr @__errno_location() #10
  %i.ba = load i32, ptr %i.az, align 4
  call void @pre_format_elog_string(i32 noundef %i.ba, ptr noundef null) #9
  %i.bb = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.10, ptr noundef nonnull %0, i32 noundef %i.an) #9
  store ptr %i.bb, ptr @GUC_check_errmsg_string, align 8
  br label %.loopexit128

bb.p:                                             ; preds = %.lr.ph172, %bb.q
  %i.bc = phi i8 [ %i.aw, %.lr.ph172 ], [ %i.bi, %bb.q ] ; 2 uses
  %.056171 = phi ptr [ %i.e, %.lr.ph172 ], [ %i.bh, %bb.q ] ; 5 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = and i16 %i.bf, 8192
  %.not72.a = icmp eq i16 %i.bg, 0
  br i1 %.not72.a, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.056171, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %cond = icmp eq i8 %i.bi, 0
  br i1 %cond, label %.backedge, label %bb.p, !llvm.loop !6

.critedge:                                        ; preds = %bb.p
  %cond236 = icmp eq i8 %i.bc, 35
  br i1 %cond236, label %.backedge, label %bb.r

.backedge:                                        ; preds = %bb.q, %.critedge, %.preheader
  %i.bj = call i32 @feof(ptr noundef nonnull %i.y) #9
  %.not70 = icmp eq i32 %i.bj, 0
  br i1 %.not70, label %.lr.ph175, label %.loopexit128

bb.r:                                             ; preds = %.critedge
  %i.bk = call i32 @pg_strncasecmp(ptr noundef nonnull %.056171, ptr noundef nonnull @.str.11, i64 noundef 8) #9
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.s, label %.outer129

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.056171, i64 8
  %i.bn = call ptr @pstrdup(ptr noundef nonnull %i.bm) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.bo = call ptr @strtok_r(ptr noundef %i.bn, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.f) #9 ; 3 uses
  %.not73.a = icmp eq ptr %i.bo, null
  br i1 %.not73.a, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %i.bo, align 1
  %.not74 = icmp eq i8 %i.bp, 0
  br i1 %.not74, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bq = tail call ptr @__errno_location() #10
  %i.br = load i32, ptr %i.bq, align 4
  call void @pre_format_elog_string(i32 noundef %i.br, ptr noundef null) #9
  %i.bs = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.13, ptr noundef nonnull %0, i32 noundef %i.an) #9
  store ptr %i.bs, ptr @GUC_check_errmsg_string, align 8
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.bt = call fastcc i32 @ParseTzFile(ptr noundef nonnull %i.bo, i32 noundef %i.z, ptr noundef %2, ptr noundef %3, i32 noundef %.057.ph) ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v, %bb.u
  %.1.ph = phi i32 [ -1, %bb.u ], [ %i.bt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.loopexit128

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.w, %addToArray.exit
  %.057.ph.be = phi i32 [ %.260.i, %addToArray.exit ], [ %i.bt, %bb.w ] ; 2 uses
  %6 = call i32 @feof(ptr noundef nonnull %i.y) #9
  %.not69167 = icmp eq i32 %6, 0
  br i1 %.not69167, label %.outer, label %.loopexit128, !llvm.loop !7

.outer:                                           ; preds = %.lr.ph169.lr.ph, %.outer.backedge
  %.057.ph = phi i32 [ %.053.ph179, %.lr.ph169.lr.ph ], [ %.057.ph.be, %.outer.backedge ] ; 12 uses
  %.055.ph = phi i32 [ %.058.ph177, %.lr.ph169.lr.ph ], [ %i.an, %.outer.backedge ]
  br label %.lr.ph175

.outer129:                                        ; preds = %bb.r
  %7 = call i32 @pg_strncasecmp(ptr noundef nonnull %.056171, ptr noundef nonnull @.str.14, i64 noundef 9) #9
  %.not70173 = icmp eq i32 %7, 0
  br i1 %.not70173, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.outer129
  %8 = call i32 @feof(ptr noundef nonnull %i.y) #9
  %i.bv = icmp eq i32 %8, 0
  br i1 %i.bv, label %.lr.ph169.lr.ph, label %.loopexit128, !llvm.loop !7

.lr.ph169.lr.ph:                                  ; preds = %.preheader127, %bb.x
  %.053.ph179 = phi i32 [ %4, %.preheader127 ], [ %.057.ph, %bb.x ]
  %.057.ph178 = phi i1 [ false, %.preheader127 ], [ true, %bb.x ]
  %.058.ph177 = phi i32 [ 0, %.preheader127 ], [ %i.an, %bb.x ]
  br label %.outer

bb.y:                                             ; preds = %.outer129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.bw = call ptr @strtok_r(ptr noundef nonnull %.056171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %splitTzLine.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = call ptr @pstrdup(ptr noundef nonnull %i.bw) #9 ; 7 uses
  %i.by = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #9 ; 5 uses
  %.not41.i = icmp eq ptr %i.by, null
  br i1 %.not41.i, label %splitTzLine.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = load ptr, ptr %i.ax, align 8
  %i.ca = load i8, ptr %i.by, align 1             ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %.fr48.i = freeze i16 %i.cd
  %i.ce = and i16 %.fr48.i, 2048
  %.not42.not.i = icmp eq i16 %i.ce, 0
  br i1 %.not42.not.i, label %switch.early.test.i, label %bb.ab

switch.early.test.i:                              ; preds = %bb.aa
  switch i8 %i.ca, label %bb.af [
    i8 45, label %bb.ab
    i8 43, label %bb.ab
  ]

bb.ab:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.aa
  %i.cf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.by, ptr noundef nonnull %i.b, i32 noundef 10) #9
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.by
  br i1 %i.ci, label %splitTzLine.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i8, ptr %i.ch, align 1
  %.not43.i = icmp eq i8 %i.cj, 0
  br i1 %.not43.i, label %bb.ad, label %splitTzLine.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ck = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not44.i = icmp eq ptr %i.ck, null
  br i1 %.not44.i, label %.thread96, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = call i32 @pg_strcasecmp(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.18) #9
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ag, label %.thread102

bb.af:                                            ; preds = %switch.early.test.i
  %i.cn = call ptr @pstrdup(ptr noundef nonnull %i.by) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.17.2 = phi i8 [ 0, %bb.af ], [ 1, %bb.ae ] ; 2 uses
  %.sroa.11.2 = phi i32 [ 0, %bb.af ], [ %i.cg, %bb.ae ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %i.cn, %bb.af ], [ null, %bb.ae ] ; 2 uses
  %i.co = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not45.i = icmp eq ptr %i.co, null
  br i1 %.not45.i, label %.thread96, label %.thread102

.thread102:                                       ; preds = %bb.ae, %bb.ag
  %.0.i111 = phi ptr [ %i.co, %bb.ag ], [ %i.ck, %bb.ae ]
  %.sroa.8.2110 = phi ptr [ %.sroa.8.2, %bb.ag ], [ null, %bb.ae ]
  %.sroa.11.2109 = phi i32 [ %.sroa.11.2, %bb.ag ], [ %i.cg, %bb.ae ]
  %.sroa.17.2108 = phi i8 [ %.sroa.17.2, %bb.ag ], [ 0, %bb.ae ]
  %i.cp = load i8, ptr %.0.i111, align 1
  %.not46.i = icmp eq i8 %i.cp, 35
  br i1 %.not46.i, label %.thread96, label %splitTzLine.exit

splitTzLine.exit:                                 ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %.thread102
  %.str.19.sink.i = phi ptr [ @.str.17, %bb.ab ], [ @.str.16, %bb.z ], [ @.str.15, %bb.y ], [ @.str.17, %bb.ac ], [ @.str.19, %.thread102 ]
  %i.cq = tail call ptr @__errno_location() #10
  %i.cr = load i32, ptr %i.cq, align 4
  call void @pre_format_elog_string(i32 noundef %i.cr, ptr noundef null) #9
  %i.cs = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull %.str.19.sink.i, ptr noundef nonnull %0, i32 noundef %i.an) #9
  store ptr %i.cs, ptr @GUC_check_errmsg_string, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit128

.thread96:                                        ; preds = %bb.ad, %bb.ag, %.thread102
  %.sroa.17.3.ph = phi i8 [ %.sroa.17.2, %bb.ag ], [ %.sroa.17.2108, %.thread102 ], [ 0, %bb.ad ] ; 3 uses
  %.sroa.11.3.ph = phi i32 [ %.sroa.11.2, %bb.ag ], [ %.sroa.11.2109, %.thread102 ], [ %i.cg, %bb.ad ] ; 5 uses
  %.sroa.8.3.ph = phi ptr [ %.sroa.8.2, %bb.ag ], [ %.sroa.8.2110, %.thread102 ], [ null, %bb.ad ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ct = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #11
  %i.cu = icmp ugt i64 %i.ct, 10
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread96
  %i.cv = tail call ptr @__errno_location() #10
  %i.cw = load i32, ptr %i.cv, align 4
  call void @pre_format_elog_string(i32 noundef %i.cw, ptr noundef null) #9
  %i.cx = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.bx, i32 noundef 10, ptr noundef nonnull %0, i32 noundef %i.an) #9
  br label %validateTzEntry.exit

bb.ai:                                            ; preds = %.thread96
  %i.cy = add i32 %.sroa.11.3.ph, -50401
  %or.cond.i = icmp ult i32 %i.cy, -100801
  br i1 %or.cond.i, label %bb.aj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ai
  %i.cz = load i8, ptr %i.bx, align 1             ; 2 uses
  %.not18.i = icmp eq i8 %i.cz, 0
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.i

bb.aj:                                            ; preds = %bb.ai
  %i.da = tail call ptr @__errno_location() #10
  %i.db = load i32, ptr %i.da, align 4
  call void @pre_format_elog_string(i32 noundef %i.db, ptr noundef null) #9
  %i.dc = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.21, i32 noundef %.sroa.11.3.ph, ptr noundef nonnull %0, i32 noundef %i.an) #9
  br label %validateTzEntry.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dd = phi i8 [ %i.dg, %.lr.ph.i ], [ %i.cz, %.preheader.i ]
  %.019.i = phi ptr [ %i.df, %.lr.ph.i ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.de = call zeroext i8 @pg_tolower(i8 noundef zeroext %i.dd) #9
  store i8 %i.de, ptr %.019.i, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %.not.i78 = icmp eq i8 %i.dg, 0
  br i1 %.not.i78, label %.loopexit, label %.lr.ph.i, !llvm.loop !8

validateTzEntry.exit:                             ; preds = %bb.ah, %bb.aj
  %.sink.i = phi ptr [ %i.dc, %bb.aj ], [ %i.cx, %bb.ah ]
  store ptr %.sink.i, ptr @GUC_check_errmsg_string, align 8
  br label %.loopexit128

.loopexit:                                        ; preds = %.lr.ph.i, %.preheader.i
  %i.dh = load ptr, ptr %2, align 8               ; 2 uses
  %i.di = add i32 %.057.ph, -1                    ; 2 uses
  %.not76.i = icmp slt i32 %i.di, 0
  br i1 %.not76.i, label %._crit_edge.i, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.loopexit, %bb.au
  %.05478.i = phi i32 [ %.2.i.a, %bb.au ], [ 0, %.loopexit ] ; 2 uses
  %.05577.i = phi i32 [ %.257.i.a, %bb.au ], [ %i.di, %.loopexit ] ; 2 uses
  %i.dj = add i32 %.05577.i, %.05478.i
  %i.dk = ashr i32 %i.dj, 1                       ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [40 x i8], ptr %i.dh, i64 %i.dl ; 8 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(1) %i.dn) #11 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i79
  %i.dq = add nsw i32 %i.dk, -1
  br label %bb.au

bb.al:                                            ; preds = %.lr.ph.i79
  %.not66.i = icmp eq i32 %i.do, 0
  br i1 %.not66.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = add nsw i32 %i.dk, 1
  br label %bb.au

bb.an:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  %i.dv = icmp eq ptr %.sroa.8.3.ph, null         ; 2 uses
  br i1 %i.du, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %i.dv, label %bb.ap, label %.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = icmp eq i32 %i.dx, %.sroa.11.3.ph
  br i1 %i.dy, label %bb.aq, label %.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.ea = load i8, ptr %i.dz, align 4, !range !9, !noundef !10
  %i.eb = icmp eq i8 %i.ea, %.sroa.17.3.ph
  br i1 %i.eb, label %addToArray.exit, label %.thread.i

bb.ar:                                            ; preds = %bb.an
  br i1 %i.dv, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dt, ptr noundef nonnull dereferenceable(1) %.sroa.8.3.ph) #11
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %addToArray.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.ee = phi ptr [ %.sroa.8.3.ph, %bb.ao ], [ null, %bb.ap ], [ null, %bb.aq ], [ %.sroa.8.3.ph, %bb.as ], [ null, %bb.ar ]
  br i1 %.057.ph178, label %bb.at, label %addToArray.exit.thread

bb.at:                                            ; preds = %.thread.i
  store ptr %i.ee, ptr %i.ds, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %.sroa.11.3.ph, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  store i8 %.sroa.17.3.ph, ptr %i.eg, align 4
  br label %addToArray.exit

addToArray.exit.thread:                           ; preds = %.thread.i
  %i.eh = tail call ptr @__errno_location() #10   ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  call void @pre_format_elog_string(i32 noundef %i.ei, ptr noundef null) #9
  %i.ej = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.bx) #9
  store ptr %i.ej, ptr @GUC_check_errmsg_string, align 8
  %i.ek = load i32, ptr %i.eh, align 4
  call void @pre_format_elog_string(i32 noundef %i.ek, ptr noundef null) #9
  %i.el = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.23, ptr noundef %i.em, i32 noundef %i.eo, ptr noundef nonnull %0, i32 noundef %i.an) #9
  store ptr %i.ep, ptr @GUC_check_errdetail_string, align 8
  br label %.loopexit128

bb.au:                                            ; preds = %bb.am, %bb.ak
  %.257.i.a = phi i32 [ %i.dq, %bb.ak ], [ %.05577.i, %bb.am ] ; 2 uses
  %.2.i.a = phi i32 [ %.05478.i, %bb.ak ], [ %i.dr, %bb.am ] ; 3 uses
  %.not.i80 = icmp sgt i32 %.2.i.a, %.257.i.a
  br i1 %.not.i80, label %._crit_edge.i, label %.lr.ph.i79, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.au, %.loopexit
  %.055.lcssa.i = phi i32 [ 0, %.loopexit ], [ %.2.i.a, %bb.au ] ; 2 uses
  %i.eq = load i32, ptr %3, align 4               ; 2 uses
  %.not65.i = icmp slt i32 %.057.ph, %i.eq
  br i1 %.not65.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i
  %i.er = shl i32 %i.eq, 1                        ; 2 uses
  store i32 %i.er, ptr %3, align 4
  %i.es = load ptr, ptr %2, align 8
  %i.et = sext i32 %i.er to i64
  %i.eu = mul nsw i64 %i.et, 40
  %i.ev = call ptr @repalloc(ptr noundef %i.es, i64 noundef %i.eu) #9 ; 2 uses
  store ptr %i.ev, ptr %2, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i
  %i.ew = phi ptr [ %i.ev, %bb.av ], [ %i.dh, %._crit_edge.i ]
  %i.ex = sext i32 %.055.lcssa.i to i64
  %i.ey = getelementptr inbounds [40 x i8], ptr %i.ew, i64 %i.ex ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = sub i32 %.057.ph, %.055.lcssa.i
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr align 8 %i.ey, i64 %i.fc, i1 false)
  store ptr %i.bx, ptr %i.ey, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %.sroa.8.3.ph, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i32 %.sroa.11.3.ph, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  store i8 %.sroa.17.3.ph, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.2288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i32 %i.an, ptr %.sroa.2288.0..sroa_idx, align 8
  %.sroa.2691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %0, ptr %.sroa.2691.0..sroa_idx, align 8
  %i.fd = add i32 %.057.ph, 1
  br label %addToArray.exit

addToArray.exit:                                  ; preds = %bb.aq, %bb.as, %bb.at, %bb.aw
  %.260.i = phi i32 [ %i.fd, %bb.aw ], [ %.057.ph, %bb.as ], [ %.057.ph, %bb.at ], [ %.057.ph, %bb.aq ] ; 3 uses
  %i.fe = icmp slt i32 %.260.i, 0
  br i1 %i.fe, label %.loopexit128, label %.outer.backedge

.loopexit128:                                     ; preds = %bb.x, %.outer.backedge, %addToArray.exit, %.backedge, %.preheader126, %addToArray.exit.thread, %validateTzEntry.exit, %splitTzLine.exit, %.thread, %bb.l, %bb.o, %bb.m
  %.2 = phi i32 [ -1, %bb.m ], [ %.057.ph, %bb.l ], [ -1, %bb.o ], [ %.1.ph, %.thread ], [ -1, %validateTzEntry.exit ], [ -1, %splitTzLine.exit ], [ -1, %addToArray.exit.thread ], [ %4, %.preheader126 ], [ %.260.i, %addToArray.exit ], [ %.057.ph, %.backedge ], [ %.057.ph.be, %.outer.backedge ], [ %.057.ph, %bb.x ]
  %i.ff = call i32 @FreeFile(ptr noundef nonnull %i.y) #9 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.i, %bb.j, %bb.k, %bb.d, %bb.e, %.loopexit128, %bb.f
  %.159 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %.2, %.loopexit128 ], [ -1, %bb.e ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.159
}

declare ptr @ConvertTimeZoneAbbrevs(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pre_format_elog_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare ptr @format_elog_string(ptr noundef, ...) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

declare void @get_share_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @AllocateFile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AllocateDir(ptr noundef) local_unnamed_addr #2

declare i32 @FreeDir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @pg_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

declare i32 @FreeFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @pg_tolower(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !5}
end_hunk_0
