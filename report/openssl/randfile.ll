Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/randfile?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/rand/randfile.c\00", align 1
@__func__.RAND_load_file = private unnamed_addr constant [15 x i8] c"RAND_load_file\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Filename=%s\00", align 1
@__func__.RAND_write_file = private unnamed_addr constant [16 x i8] c"RAND_write_file\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"RANDFILE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".rnd\00", align 1

; Function Attrs: nounwind uwtable
define i32 @RAND_load_file(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1280 x i8], align 16             ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @openssl_fopen(ptr noundef %0, ptr noundef nonnull @.str) #9 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 106, ptr noundef nonnull @__func__.RAND_load_file) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 36, i32 noundef 121, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @fileno(ptr noundef nonnull %i.c) #9
  %i.f = call i32 @fstat(i32 noundef %i.e, ptr noundef nonnull %2) #9
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__func__.RAND_load_file) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 36, i32 noundef 113, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  %i.l = and i32 %i.k, 61440
  %i.m = icmp eq i32 %i.l, 32768
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12
  %i.p = freeze i64 %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.031 = phi i64 [ %i.p, %bb.h ], [ %1, %bb.f ], [ 256, %bb.g ]
  tail call void @setbuf(ptr noundef nonnull %i.c, ptr noundef null) #9
  br label %.outer

.outer:                                           ; preds = %.split.us, %bb.i
  %.132.ph = phi i64 [ %i.ab, %.split.us ], [ %.031, %bb.i ] ; 4 uses
  %.0.ph = phi i32 [ %i.z, %.split.us ], [ 0, %bb.i ] ; 3 uses
  %i.q = icmp sgt i64 %.132.ph, 0                 ; 2 uses
  %i.r = icmp slt i64 %.132.ph, 1281
  %sext = shl i64 %.132.ph, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = select i1 %i.r, i64 %i.s, i64 1024
  %.030 = select i1 %i.q, i64 %i.t, i64 1280
  br i1 %i.q, label %.outer.split.us, label %.outer42

bb.j:                                             ; preds = %.outer.split.us
  %i.u = tail call ptr @__errno_location() #10
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @clearerr(ptr noundef nonnull %i.c) #9
  %cond.us = icmp eq i32 %i.af, 0
  br i1 %cond.us, label %.outer.split.us, label %.split.us

bb.l:                                             ; preds = %.outer.split.us, %bb.j
  %i.x = icmp eq i32 %i.af, 0
  br i1 %i.x, label %.loopexit, label %.split.us

.split.us:                                        ; preds = %bb.k, %bb.l
  %i.y = sitofp i32 %i.af to double
  call void @RAND_add(ptr noundef nonnull %i.a, i32 noundef %i.af, double noundef %i.y) #9
  %i.z = add nsw i32 %.0.ph, %i.af                ; 3 uses
  %sext40 = shl i64 %i.ae, 32
  %i.aa = ashr exact i64 %sext40, 32
  %i.ab = sub i64 %.132.ph, %i.aa                 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  %i.ad = icmp sgt i32 %i.z, 2147482367
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %.loopexit, label %.outer

.outer.split.us:                                  ; preds = %.outer, %bb.k
  %i.ae = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %.030, ptr noundef nonnull %i.c) ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 5 uses
  %i.ag = call i32 @ferror(ptr noundef nonnull %i.c) #9
  %.not.us = icmp eq i32 %i.ag, 0
  br i1 %.not.us, label %bb.l, label %bb.j

.outer42:                                         ; preds = %.outer, %.loopexit44
  %.0.ph43 = phi i32 [ %i.ap, %.loopexit44 ], [ %.0.ph, %.outer ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.outer42, %bb.o
  %i.ah = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1280, ptr noundef nonnull %i.c)
  %i.ai = trunc i64 %i.ah to i32                  ; 5 uses
  %i.aj = call i32 @ferror(ptr noundef nonnull %i.c) #9
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call ptr @__errno_location() #10
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @clearerr(ptr noundef nonnull %i.c) #9
  %cond = icmp eq i32 %i.ai, 0
  br i1 %cond, label %bb.m, label %.loopexit44

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.an = icmp eq i32 %i.ai, 0
  br i1 %i.an, label %.loopexit, label %.loopexit44

.loopexit44:                                      ; preds = %bb.o, %bb.p
  %i.ao = sitofp i32 %i.ai to double
  call void @RAND_add(ptr noundef nonnull %i.a, i32 noundef %i.ai, double noundef %i.ao) #9
  %i.ap = add nsw i32 %.0.ph43, %i.ai             ; 3 uses
  %.old1 = icmp sgt i32 %i.ap, 2147482367
  br i1 %.old1, label %.loopexit, label %.outer42

.loopexit:                                        ; preds = %.split.us, %bb.l, %bb.p, %.loopexit44
  %.1 = phi i32 [ %.0.ph43, %bb.p ], [ %i.ap, %.loopexit44 ], [ %i.z, %.split.us ], [ %.0.ph, %bb.l ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1280) #9
  %i.aq = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.ar = call i32 @RAND_status() #9
  %.not41 = icmp eq i32 %i.ar, 0
  br i1 %.not41, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__func__.RAND_load_file) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 36, i32 noundef 118, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.a, %bb.q, %bb.e, %bb.c
  %.033 = phi i32 [ -1, %bb.q ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ], [ %.1, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @openssl_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @setbuf(ptr noundef captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #3

declare void @RAND_add(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RAND_status() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @RAND_write_file(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.b = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #9
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 32768
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 194, ptr noundef nonnull @__func__.RAND_write_file) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 36, i32 noundef 122, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = call i32 @RAND_priv_bytes(ptr noundef nonnull %i.a, i32 noundef 1024) #9
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 65, i32 noundef 384) #9 ; 3 uses
  %.not23 = icmp eq i32 %i.i, -1
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call noalias ptr @fdopen(i32 noundef %i.i, ptr noundef nonnull @.str.3) #9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %.thread25

.critedge:                                        ; preds = %bb.f
  %i.l = call i32 @close(i32 noundef %i.i) #9     ; 0 uses
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__func__.RAND_write_file) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 36, i32 noundef 121, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = call ptr @openssl_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %.thread25

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 251, ptr noundef nonnull @__func__.RAND_write_file) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 36, i32 noundef 121, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %bb.i

.thread25:                                        ; preds = %bb.f, %bb.g
  %.227 = phi ptr [ %i.m, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %i.o = call i32 @chmod(ptr noundef %0, i32 noundef 384) #9 ; 0 uses
  %i.p = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1024, ptr noundef nonnull %.227)
  %i.q = trunc i64 %i.p to i32
  %i.r = call i32 @fclose(ptr noundef nonnull %.227) ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1024) #9
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.d, %.thread25, %bb.h, %bb.c
  %.119 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ %i.q, %.thread25 ], [ -1, %.critedge ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.119
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @RAND_priv_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef ptr @RAND_file_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ossl_safe_getenv(ptr noundef nonnull @.str.4) #9 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !14
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = tail call ptr @ossl_safe_getenv(ptr noundef nonnull @.str.5) #9 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.d
end_hunk_0
