Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/err_prn?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c":%s:%d:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"crypto/err/err_prn.c\00", align 1

; Function Attrs: nounwind uwtable
define void @ERR_print_errors_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [4096 x i8], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = tail call i64 @CRYPTO_THREAD_get_current_id() #5
  store i64 %i.h, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = call i64 @ERR_get_error_all(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f) #5 ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.g, i8 0, i64 4096, i1 false)
  %i.j = load i32, ptr %i.f, align 4, !tbaa !10
  %i.k = and i32 %i.j, 2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @.str, ptr %i.c, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call ptr @ossl_buf2hexstr_sep(ptr noundef nonnull %i.a, i64 noundef 8, i8 noundef signext 0) #5 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = select i1 %i.n, ptr @.str.2, ptr %i.m
  %i.p = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.g, i64 noundef 4096, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.o) #5 ; 0 uses
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #6 ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !11
  %sext = shl i64 %i.q, 32
  %i.s = ashr exact i64 %sext, 32                 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.g, i64 %i.s ; 2 uses
  %i.u = sub nsw i64 4096, %i.s
  call void @ossl_err_string_int(i64 noundef %i.i, ptr noundef %i.r, ptr noundef nonnull %i.t, i64 noundef %i.u) #5
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #6
  %i.w = add i64 %i.v, %i.q
  %sext13 = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext13, 32               ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  %i.z = sub nsw i64 4096, %i.x
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !10
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ad = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.3, ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %i.ac) #5 ; 0 uses
  call void @CRYPTO_free(ptr noundef %i.m, ptr noundef nonnull @.str.4, i32 noundef 41) #5
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #6
  %i.af = call i32 %0(ptr noundef nonnull %i.g, i64 noundef %i.ae, ptr noundef %1) #5
  %i.ag = icmp slt i32 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br i1 %i.ag, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @CRYPTO_THREAD_get_current_id() local_unnamed_addr #2

declare i64 @ERR_get_error_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @ossl_buf2hexstr_sep(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @ossl_err_string_int(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ERR_add_error_txt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.f = tail call i64 @ERR_peek_last_error() #5  ; 3 uses
  %i.g = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.g, ptr @.str, ptr %0 ; 7 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 1, i32 noundef 0, ptr noundef null) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i64 %i.f, 2147483648
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = trunc i64 %i.f to i32                    ; 2 uses
  %i.k = lshr i32 %i.j, 23
  %.0.i = select i1 %.not.i, i32 %i.k, i32 2
  br label %bb.d

bb.d:                                             ; preds = %bb.s, %bb.c
  %.070 = phi ptr [ %1, %bb.c ], [ %.272, %bb.s ] ; 12 uses
  %i.l = call i64 @ERR_peek_last_error_all(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.m = load i32, ptr %i.e, align 4, !tbaa !10
  %i.n = and i32 %i.m, 2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @.str, ptr %i.d, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.p = phi ptr [ @.str, %bb.e ], [ %.pre, %._crit_edge ]
  %.062 = phi ptr [ @.str, %bb.e ], [ %spec.store.select, %._crit_edge ] ; 2 uses
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #6 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 3995
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #6 ; 2 uses
  %i.t = sub nuw nsw i64 3996, %i.q               ; 2 uses
  %.not = icmp ult i64 %i.s, %i.t
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = xor i64 %i.s, -1
  %i.v = add nsw i64 %i.t, %i.u
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.069 = phi i64 [ %i.v, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.w = load i8, ptr %spec.store.select, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.y = ptrtoint ptr %.070 to i64                ; 2 uses
  %i.z = load i8, ptr %.070, align 1, !tbaa !14
  %.not80111 = icmp eq i8 %i.z, 0
  br i1 %.not80111, label %.thread.thread, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.070) #6 ; 2 uses
  %.not84 = icmp ugt i64 %i.aa, %.069
  %i.ab = getelementptr inbounds nuw i8, ptr %.070, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.070, i64 %.069
  br i1 %.not84, label %.thread100, label %.thread.thread

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %.061113 = phi i32 [ %.1, %bb.m ], [ 0, %.preheader ]
  %.164112 = phi ptr [ %.265, %bb.m ], [ %.070, %.preheader ] ; 4 uses
  %i.ad = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.164112, ptr noundef nonnull dereferenceable(1) %spec.store.select) #6 ; 2 uses
  %.not83 = icmp eq ptr %i.ad, null
  br i1 %.not83, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.164112) #6
  %i.ak = getelementptr inbounds nuw i8, ptr %.164112, i64 %i.aj ; 2 uses
  %.pre118 = load i8, ptr %i.ak, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = phi i8 [ %i.ag, %bb.k ], [ %.pre118, %bb.l ]
  %.265 = phi ptr [ %i.af, %bb.k ], [ %i.ak, %bb.l ] ; 5 uses
  %.1 = phi i32 [ %i.ai, %bb.k ], [ %.061113, %bb.l ] ; 2 uses
  %.not80 = icmp eq i8 %i.al, 0
  %i.am = ptrtoint ptr %.265 to i64
  %i.an = sub i64 %i.am, %i.y
  %.not81 = icmp ugt i64 %i.an, %.069             ; 2 uses
  %or.cond = select i1 %.not80, i1 true, i1 %.not81
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !15

.critedge:                                        ; preds = %bb.m
  br i1 %.not81, label %.thread100, label %.thread

.thread100:                                       ; preds = %.critedge, %bb.j
  %.268105 = phi ptr [ %.164112, %.critedge ], [ %i.ac, %bb.j ] ; 3 uses
  %.not87 = icmp eq ptr %.268105, %.070
  br i1 %.not87, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.thread100
  %i.ao = ptrtoint ptr %.268105 to i64
  %i.ap = ptrtoint ptr %.070 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = call ptr @CRYPTO_strndup(ptr noundef %.070, i64 noundef %i.aq, ptr noundef nonnull @.str.4, i32 noundef 121) #5 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge92, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.ar) #5
  call void @CRYPTO_free(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.4, i32 noundef 125) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread100
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.av = load i32, ptr %i.b, align 4, !tbaa !10
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef %i.au, i32 noundef %i.av, ptr noundef %i.at) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef range(i32 0, 256) %.0.i, i32 noundef %i.j, ptr noundef null) #5
  br label %bb.s

.thread:                                          ; preds = %.critedge
  %i.aw = icmp eq i32 %.1, 0
  br i1 %i.aw, label %.thread.thread, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #6
  %i.ay = sub i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %.265, i64 %i.ay
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.y
  %i.bc = call ptr @CRYPTO_strndup(ptr noundef nonnull %.070, i64 noundef %i.bb, ptr noundef nonnull @.str.4, i32 noundef 131) #5 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.critedge92, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull %.062, ptr noundef nonnull %i.bc) #5
  call void @CRYPTO_free(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.4, i32 noundef 136) #5
  br label %bb.s

.thread.thread:                                   ; preds = %.preheader, %bb.j, %.thread
  %.398109 = phi ptr [ %.265, %.thread ], [ %i.ab, %bb.j ], [ %.070, %.preheader ]
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull %.062, ptr noundef %.070) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.thread, %bb.p
  %.272 = phi ptr [ %.398109, %.thread.thread ], [ %.265, %bb.r ], [ %.268105, %bb.p ] ; 2 uses
  %i.be = load i8, ptr %.272, align 1, !tbaa !14
  %.not88 = icmp eq i8 %i.be, 0
  br i1 %.not88, label %.critedge92, label %bb.d, !llvm.loop !17

.critedge92:                                      ; preds = %bb.n, %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i64 @ERR_peek_last_error_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @CRYPTO_strndup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ERR_add_error_mem_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call i64 @BIO_ctrl(ptr noundef nonnull %1, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %.not9 = icmp eq i8 %i.g, 0
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @BIO_write(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 1) #5
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i64 @BIO_ctrl(ptr noundef nonnull %1, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.b, %bb.c ]
  %i.k = icmp sgt i64 %.0, 1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @ERR_add_error_txt(ptr noundef %0, ptr noundef %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ERR_print_errors(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ERR_print_errors_cb(ptr noundef nonnull @print_bio, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @print_bio(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = tail call i32 @BIO_write(ptr noundef %2, ptr noundef %0, i32 noundef %i.a) #5
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define void @ERR_print_errors_fp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_print_errors_cb(ptr noundef nonnull @print_bio, ptr noundef nonnull %i.a)
  %i.c = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
