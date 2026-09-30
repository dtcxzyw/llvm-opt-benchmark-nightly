Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ftplistparser?download=true
inline.NumInlined: 13
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Curl_cfree = external local_unnamed_addr global ptr, align 8
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"total \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rwx-tTsS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"APM0123456789:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"<DIR>\00", align 1

; Function Attrs: nounwind uwtable
define void @Curl_wildcard_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @Curl_llist_init(ptr noundef nonnull %i.a, ptr noundef nonnull @fileinfo_dtor) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.b, align 8, !tbaa !15
  ret void
}

declare void @Curl_llist_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @fileinfo_dtor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @Curl_fileinfo_cleanup(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_wildcard_dtor(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void %i.c(ptr noundef %i.e) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @Curl_llist_destroy(ptr noundef nonnull %i.f, ptr noundef null) #7
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void %i.g(ptr noundef %i.h) #7
  store ptr null, ptr %i.a, align 8, !tbaa !98
  %i.i = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  tail call void %i.i(ptr noundef %i.k) #7
  store ptr null, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %i.l, align 8, !tbaa !15
  %i.m = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  tail call void %i.m(ptr noundef nonnull %i.a) #7
  store ptr null, ptr %0, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @Curl_llist_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @Curl_ftp_parselist_data_alloc() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !18
  %i.b = tail call ptr %i.a(i64 noundef 1, i64 noundef 88) #7
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @Curl_ftp_parselist_data_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  tail call void @Curl_fileinfo_cleanup(ptr noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  tail call void %i.d(ptr noundef %i.a) #7
  store ptr null, ptr %0, align 8, !tbaa !99
  ret void
}

declare void @Curl_fileinfo_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Curl_ftp_parselist_geterror(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define noundef i64 @Curl_ftp_parselist(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i8, align 1                       ; 7 uses
  %i.h = mul i64 %2, %1                           ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4632
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.fr

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.m, align 8, !tbaa !101
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ne i64 %i.h, 0                      ; 2 uses
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %.thread94, label %bb.c

.thread94:                                        ; preds = %bb.b
  %i.s = load i8, ptr %0, align 1, !tbaa !102
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  %i.v = select i1 %i.u, i32 2, i32 1
  store i32 %i.v, ptr %i.m, align 8, !tbaa !101
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread94, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 41 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 67 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 22 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 43 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %parse_unix.exit.thread63
  %.04773 = phi i64 [ 0, %.lr.ph ], [ %i.na, %parse_unix.exit.thread63 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.04773
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !102
  store i8 %i.ai, ptr %i.g, align 1, !tbaa !102
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !24  ; 2 uses
  %.not53 = icmp eq ptr %i.aj, null
  br i1 %.not53, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = call ptr @Curl_fileinfo_alloc() #7      ; 3 uses
  store ptr %i.ak, ptr %i.w, align 8, !tbaa !24
  %.not54 = icmp eq ptr %i.ak, null
  br i1 %.not54, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 27, ptr %i.n, align 4, !tbaa !25
  br label %.thread

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %i.x, align 8, !tbaa !103
  store i32 0, ptr %i.y, align 8, !tbaa !104
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  call void @curlx_dyn_init(ptr noundef nonnull %i.al, i64 noundef 10000) #7
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.am = phi ptr [ %.pre, %bb.g ], [ %i.aj, %bb.d ] ; 11 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 22 uses
  %i.ao = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.an, ptr noundef nonnull %i.g, i64 noundef 1) #7
  %.not55 = icmp eq i32 %i.ao, 0
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.n, align 4, !tbaa !25
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.m, align 8, !tbaa !101
  switch i32 %i.ap, label %bb.fq [
    i32 1, label %bb.k
    i32 2, label %bb.en
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.g, align 1, !tbaa !102  ; 52 uses
  %i.ar = load i32, ptr %i.z, align 4, !tbaa !102
  switch i32 %i.ar, label %parse_unix.exit.thread63 [
    i32 0, label %bb.l
    i32 1, label %bb.v
    i32 2, label %bb.ae
    i32 3, label %bb.bl
    i32 4, label %bb.bu
    i32 5, label %bb.bz
    i32 6, label %bb.ce
    i32 7, label %bb.cp
    i32 8, label %bb.dk
    i32 9, label %bb.ds
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = call i64 @curlx_dyn_len(ptr noundef nonnull %i.an) #7 ; 2 uses
  %i.at = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.an) #7 ; 3 uses
  %i.au = load i32, ptr %i.aa, align 8, !tbaa !102
  switch i32 %i.au, label %bb.u [
    i32 0, label %bb.m
    i32 1, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = icmp eq i8 %i.aq, 116
  br i1 %i.av, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.aa, align 8, !tbaa !102
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !104
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.y, align 8, !tbaa !104
  br label %bb.u

.thread.i:                                        ; preds = %bb.m
  store i32 1, ptr %i.z, align 4, !tbaa !102
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.y, align 8, !tbaa !104 ; 3 uses
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.y, align 8, !tbaa !104
  switch i8 %i.aq, label %bb.u [
    i8 13, label %bb.p
    i8 10, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  store i32 %i.ay, ptr %i.y, align 8, !tbaa !104
  %.not26.i.i = icmp eq i64 %i.as, 0
  br i1 %.not26.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = add i64 %i.as, -1
  %i.bb = call i32 @curlx_dyn_setlen(ptr noundef nonnull %i.an, i64 noundef %i.ba) #7 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !102
  %i.be = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str, ptr noundef nonnull dereferenceable(1) %i.at, i64 noundef 6) #8
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.s, label %parse_unix.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !105
  call void @curlx_str_passblanks(ptr noundef nonnull %i.f) #7
  %.promoted.i.i = load ptr, ptr %i.f, align 8, !tbaa !105 ; 2 uses
  %i.bg = load i8, ptr %.promoted.i.i, align 1, !tbaa !102 ; 2 uses
  %i.bh = add i8 %i.bg, -48
  %or.cond29.i.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond29.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bi = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.promoted.i.i, %bb.s ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 3 uses
  store ptr %i.bj, ptr %i.f, align 8, !tbaa !105
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !102 ; 2 uses
  %i.bl = add i8 %i.bk, -48
  %or.cond.i.i = icmp ult i8 %i.bl, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !100

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %bb.s
  %.lcssa.i.i = phi i8 [ %i.bg, %bb.s ], [ %i.bk, %.lr.ph.i.i ]
  %.not25.i.i = icmp eq i8 %.lcssa.i.i, 0
  br i1 %.not25.i.i, label %bb.t, label %.critedge28.i.i

bb.t:                                             ; preds = %.critedge.i.i
  store i32 1, ptr %i.z, align 4, !tbaa !102
  call void @curlx_dyn_reset(ptr noundef nonnull %i.an) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.u

.critedge28.i.i:                                  ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %parse_unix.exit

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l
  %.pr.i = load i32, ptr %i.z, align 4, !tbaa !102
  %.not42.i = icmp eq i32 %.pr.i, 1
  br i1 %.not42.i, label %bb.v, label %parse_unix.exit.thread63

bb.v:                                             ; preds = %bb.u, %.thread.i, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  switch i8 %i.aq, label %parse_unix.exit [
    i8 45, label %bb.ad
    i8 100, label %bb.w
    i8 108, label %bb.x
    i8 112, label %bb.y
    i8 115, label %bb.z
    i8 99, label %bb.aa
    i8 98, label %bb.ab
    i8 68, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  br label %bb.ad

bb.y:                                             ; preds = %bb.v
  br label %bb.ad

bb.z:                                             ; preds = %bb.v
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  br label %bb.ad

bb.ab:                                            ; preds = %bb.v
  br label %bb.ad

bb.ac:                                            ; preds = %bb.v
end_hunk_0
