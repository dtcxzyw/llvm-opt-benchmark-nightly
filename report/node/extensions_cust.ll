inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"../../deps/openssl/openssl/ssl/statem/extensions_cust.c\00", align 1
@__func__.custom_ext_parse = private unnamed_addr constant [17 x i8] c"custom_ext_parse\00", align 1
@__func__.custom_ext_add = private unnamed_addr constant [15 x i8] c"custom_ext_add\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @custom_ext_find(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %.not27 = icmp eq i64 %i.b, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = icmp eq i32 %1, 2
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.023.us = phi ptr [ %i.i, %bb.b ], [ %i.c, %.lr.ph ] ; 3 uses
  %.01522.us = phi i64 [ %i.h, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = load i16, ptr %.023.us, align 8, !tbaa !14
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %2, %i.f
  br i1 %i.g, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = add nuw i64 %.01522.us, 1                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.023.us, i64 56
  %exitcond34.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond34.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.023 = phi ptr [ %i.r, %bb.e ], [ %i.c, %.lr.ph ] ; 4 uses
  %.01522 = phi i64 [ %i.q, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = load i16, ptr %.023, align 8, !tbaa !14
  %i.k = zext i16 %i.j to i32
  %i.l = icmp eq i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.split
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %i.o = icmp eq i32 %1, %i.n
  %i.p = icmp eq i32 %i.n, 2
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %.split.us, label %bb.e

.split.us:                                        ; preds = %bb.c, %.lr.ph.split.us
  %.us-phi = phi i64 [ %.01522.us, %.lr.ph.split.us ], [ %.01522, %bb.c ]
  %.us-phi24 = phi ptr [ %.023.us, %.lr.ph.split.us ], [ %.023, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.split.us
  store i64 %.us-phi, ptr %3, align 8, !tbaa !20
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %.lr.ph.split
  %i.q = add nuw i64 %.01522, 1                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.023, i64 56
  %exitcond.not = icmp eq i64 %i.q, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !17

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a, %.split.us, %bb.d
  %.016 = phi ptr [ %.us-phi24, %.split.us ], [ %.us-phi24, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ]
  ret ptr %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @custom_ext_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.b, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi ptr [ %i.c, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = and i32 %i.f, -4
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 68 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = and i32 %i.i, -4
  store i32 %i.j, ptr %i.h, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 124 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = and i32 %i.l, -4
  store i32 %i.m, ptr %i.k, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 180 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = and i32 %i.o, -4
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.07, i64 224 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.q, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07.epil = phi ptr [ %i.u, %.lr.ph.epil ], [ %.07.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.07.epil, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  %i.t = and i32 %i.s, -4
  store i32 %i.t, ptr %i.r, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.07.epil, i64 56
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @custom_ext_parse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.e = and i32 %1, 384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !85
  %.not29 = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not29 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %.not27.i = icmp eq i64 %i.j, 0
  br i1 %.not27.i, label %custom_ext_find.exit.thread, label %.lr.ph.split.i.preheader

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %.not27.i49 = icmp eq i64 %i.l, 0
  br i1 %.not27.i49, label %custom_ext_find.exit.thread, label %.lr.ph.split.us.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.thread
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.c
  %.023.us.i = phi ptr [ %i.s, %bb.c ], [ %i.n, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %.01522.us.i = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.o = load i16, ptr %.023.us.i, align 8, !tbaa !14
  %i.p = zext i16 %i.o to i32
  %i.q = icmp eq i32 %2, %i.p
  br i1 %i.q, label %custom_ext_find.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.r = add nuw i64 %.01522.us.i, 1              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.023.us.i, i64 56
  %exitcond34.not.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond34.not.i, label %custom_ext_find.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !17

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.e
  %.023.i = phi ptr [ %i.ab, %bb.e ], [ %i.m, %.lr.ph.split.i.preheader ] ; 4 uses
  %.01522.i = phi i64 [ %i.aa, %bb.e ], [ 0, %.lr.ph.split.i.preheader ]
  %i.t = load i16, ptr %.023.i, align 8, !tbaa !14
  %i.u = zext i16 %i.t to i32
  %i.v = icmp eq i32 %2, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.w = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !19   ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.h
  %i.z = icmp eq i32 %i.x, 2
  %or.cond.i = or i1 %i.y, %i.z
  br i1 %or.cond.i, label %custom_ext_find.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i
  %i.aa = add nuw i64 %.01522.i, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.023.i, i64 56
  %exitcond.not.i = icmp eq i64 %i.aa, %i.j
  br i1 %exitcond.not.i, label %custom_ext_find.exit.thread, label %.lr.ph.split.i, !llvm.loop !17

custom_ext_find.exit:                             ; preds = %bb.d, %.lr.ph.split.us.i
  %.016.i = phi ptr [ %.023.us.i, %.lr.ph.split.us.i ], [ %.023.i, %bb.d ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !86
  %i.ae = tail call i32 @extension_is_relevant(ptr noundef %0, i32 noundef %i.ad, i32 noundef %1) #10
  %.not31 = icmp eq i32 %i.ae, 0
  br i1 %.not31, label %custom_ext_find.exit.thread, label %bb.f

bb.f:                                             ; preds = %custom_ext_find.exit
  %i.af = and i32 %1, 1792
  %.not32 = icmp eq i32 %i.af, 0
  br i1 %.not32, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.016.i, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = and i32 %i.ah, 2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @__func__.custom_ext_parse) #10
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 110, i32 noundef 110, ptr noundef null) #10
  br label %custom_ext_find.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ak = and i32 %1, 16512
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.016.i, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = or i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.016.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %custom_ext_find.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !89
  %i.av = call i32 %i.ap(ptr noundef %i.as, i32 noundef %2, i32 noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, ptr noundef %i.au) #10
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.m, label %custom_ext_find.exit.thread

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @__func__.custom_ext_parse) #10
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !5
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef %i.ax, i32 noundef 110, ptr noundef null) #10
  br label %custom_ext_find.exit.thread

custom_ext_find.exit.thread:                      ; preds = %bb.e, %bb.c, %.thread, %bb.b, %bb.l, %bb.k, %custom_ext_find.exit, %bb.m, %bb.h
  %.026 = phi i32 [ 0, %bb.h ], [ 1, %custom_ext_find.exit ], [ 0, %bb.m ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.b ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.026
}

declare i32 @extension_is_relevant(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @ossl_statem_fatal(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @custom_ext_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.g = and i32 %1, 32768
  %.not = icmp eq i32 %i.g, 0                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %.not94 = icmp eq i64 %i.i, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = and i32 %1, 73472
  %.not69 = icmp eq i32 %i.j, 0
  %i.k = and i32 %1, 128
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread88
  %.06193 = phi i64 [ 0, %.lr.ph ], [ %i.br, %.thread88 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.06193 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !86
  %i.r = call i32 @should_add_extension(ptr noundef %0, i32 noundef %i.q, i32 noundef %1, i32 noundef %5) #10
  %.not68 = icmp eq i32 %i.r, 0
  br i1 %.not68, label %.thread88, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = and i32 %i.t, 1
  %.not70 = icmp eq i32 %i.u, 0
  br i1 %.not70, label %.thread88, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91   ; 2 uses
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %.thread88, label %.thread

bb.g:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.z = load i16, ptr %i.o, align 8, !tbaa !14
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = call i32 %i.w(ptr noundef %i.y, i32 noundef %i.aa, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.a, ptr noundef %i.ac) #10 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.thread
  br i1 %.not, label %bb.i, label %.thread85

bb.i:                                             ; preds = %bb.h
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @__func__.custom_ext_add) #10
  %i.af = load i32, ptr %i.a, align 4, !tbaa !5
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef %i.af, i32 noundef 234, ptr noundef null) #10
  br label %.thread85

bb.j:                                             ; preds = %.thread
  %.not90 = icmp eq i32 %i.ad, 0
  br i1 %.not90, label %.thread88, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ag = load i16, ptr %i.o, align 8, !tbaa !14
  %i.ah = zext i16 %i.ag to i64
  %i.ai = call i32 @WPACKET_put_bytes__(ptr noundef %2, i64 noundef %i.ah, i64 noundef 2) #10
  %.not72 = icmp eq i32 %i.ai, 0
  br i1 %.not72, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 @WPACKET_start_sub_packet_len__(ptr noundef %2, i64 noundef 2) #10
  %.not73 = icmp eq i32 %i.aj, 0
  br i1 %.not73, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %.not74 = icmp eq i64 %i.ak, 0
  br i1 %.not74, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.am = call i32 @WPACKET_memcpy(ptr noundef %2, ptr noundef %i.al, i64 noundef %i.ak) #10
  %.not75 = icmp eq i32 %i.am, 0
  br i1 %.not75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = call i32 @WPACKET_close(ptr noundef %2) #10
  %.not76 = icmp eq i32 %i.an, 0
  br i1 %.not76, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93 ; 2 uses
  %.not77 = icmp eq ptr %i.ap, null
  br i1 %.not77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.ar = load i16, ptr %i.o, align 8, !tbaa !14
  %i.as = zext i16 %i.ar to i32
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92
  call void %i.ap(ptr noundef %i.aq, i32 noundef %i.as, i32 noundef %1, ptr noundef %i.at, ptr noundef %i.av) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not, label %bb.s, label %.thread85

bb.s:                                             ; preds = %bb.r
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 226, ptr noundef nonnull @__func__.custom_ext_add) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread85

bb.t:                                             ; preds = %bb.o
  br i1 %i.l, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21 ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.z, label %bb.v, !prof !94

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !93 ; 2 uses
  %.not79 = icmp eq ptr %i.bb, null
  br i1 %.not79, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.bd = load i16, ptr %i.o, align 8, !tbaa !14
  %i.be = zext i16 %i.bd to i32
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !92
  call void %i.bb(ptr noundef %i.bc, i32 noundef %i.be, i32 noundef %1, ptr noundef %i.bf, ptr noundef %i.bh) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not, label %bb.y, label %.thread85

bb.y:                                             ; preds = %bb.x
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 238, ptr noundef nonnull @__func__.custom_ext_add) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread85

bb.z:                                             ; preds = %bb.u
  %i.bi = or disjoint i32 %i.ax, 2
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 2 uses
  %.not80 = icmp eq ptr %i.bk, null
  br i1 %.not80, label %.thread88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.bm = load i16, ptr %i.o, align 8, !tbaa !14
  %i.bn = zext i16 %i.bm to i32
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !92
  call void %i.bk(ptr noundef %i.bl, i32 noundef %i.bn, i32 noundef %1, ptr noundef %i.bo, ptr noundef %i.bq) #10
  br label %.thread88

.thread85:                                        ; preds = %bb.x, %bb.r, %bb.s, %bb.y, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.loopexit

.thread88:                                        ; preds = %bb.j, %bb.b, %bb.f, %bb.aa, %bb.ab, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.br = add nuw i64 %.06193, 1                  ; 2 uses
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !9
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.b, label %.loopexit, !llvm.loop !95

.loopexit:                                        ; preds = %.thread88, %bb.a, %.thread85
  %.4 = phi i32 [ 0, %.thread85 ], [ 1, %bb.a ], [ 1, %.thread88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.4
}

declare i32 @should_add_extension(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @WPACKET_start_sub_packet_len__(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @WPACKET_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @custom_exts_copy_flags(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  %.not27.i = icmp eq i64 %i.e, 0
  br i1 %.not27.i, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split, %custom_ext_find.exit.thread
  %.018 = phi i64 [ 0, %.lr.ph.split ], [ %i.z, %custom_ext_find.exit.thread ]
  %.01017 = phi ptr [ %i.a, %.lr.ph.split ], [ %i.aa, %custom_ext_find.exit.thread ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01017, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = load i16, ptr %.01017, align 8, !tbaa !14 ; 2 uses
  %i.j = icmp eq i32 %i.h, 2
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.b
  %.023.us.i = phi ptr [ %i.n, %bb.b ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %.01522.us.i = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph.i ]
  %i.k = load i16, ptr %.023.us.i, align 8, !tbaa !14
  %i.l = icmp eq i16 %i.i, %i.k
  br i1 %i.l, label %custom_ext_find.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.m = add nuw i64 %.01522.us.i, 1              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.023.us.i, i64 56
  %exitcond34.not.i = icmp eq i64 %i.m, %i.e
  br i1 %exitcond34.not.i, label %custom_ext_find.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !17

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.d
  %.023.i = phi ptr [ %i.v, %bb.d ], [ %i.f, %.lr.ph.i ] ; 4 uses
  %.01522.i = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph.i ]
  %i.o = load i16, ptr %.023.i, align 8, !tbaa !14
  %i.p = icmp eq i16 %i.i, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.q = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19   ; 2 uses
  %i.s = icmp eq i32 %i.h, %i.r
  %i.t = icmp eq i32 %i.r, 2
  %or.cond.i = or i1 %i.s, %i.t
  br i1 %or.cond.i, label %custom_ext_find.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.i
  %i.u = add nuw i64 %.01522.i, 1                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.023.i, i64 56
  %exitcond.not.i = icmp eq i64 %i.u, %i.e
  br i1 %exitcond.not.i, label %custom_ext_find.exit.thread, label %.lr.ph.split.i, !llvm.loop !17

custom_ext_find.exit:                             ; preds = %bb.c, %.lr.ph.split.us.i
  %.016.i = phi ptr [ %.023.us.i, %.lr.ph.split.us.i ], [ %.023.i, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01017, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !21
  br label %custom_ext_find.exit.thread

custom_ext_find.exit.thread:                      ; preds = %bb.d, %bb.b, %custom_ext_find.exit
  %i.z = add nuw i64 %.018, 1                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01017, i64 56
  %exitcond.not = icmp eq i64 %i.z, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !96

._crit_edge:                                      ; preds = %custom_ext_find.exit.thread, %.lr.ph, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @custom_exts_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = mul i64 %i.b, 56
  %i.e = tail call ptr @CRYPTO_memdup(ptr noundef %i.c, i64 noundef %i.d, ptr noundef nonnull @.str, i32 noundef 308) #10 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !13
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !9
  %.not25 = icmp eq i64 %i.g, 0
  br i1 %.not25, label %.thread, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.c, %custom_ext_copy_old_cb.exit
  %.ph = phi i64 [ %i.ah, %custom_ext_copy_old_cb.exit ], [ %i.g, %bb.c ] ; 4 uses
  %.024.ph = phi i64 [ %i.ai, %custom_ext_copy_old_cb.exit ], [ 0, %bb.c ] ; 5 uses
  %.02023.ph = phi i32 [ %.2, %custom_ext_copy_old_cb.exit ], [ 0, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.024.ph ; 4 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.024.ph ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %.not.i.peel = icmp eq ptr %i.n, @custom_ext_add_old_cb_wrap
  br i1 %.not.i.peel, label %bb.d, label %custom_ext_copy_old_cb.exit

bb.d:                                             ; preds = %.lr.ph.outer
  %.not11.i.peel = icmp eq i32 %.02023.ph, 0
  br i1 %.not11.i.peel, label %bb.e, label %custom_ext_copy_old_cb.exit.thread.peel

custom_ext_copy_old_cb.exit.thread.peel:          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.o, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !89
  %i.q = add nuw i64 %.024.ph, 1                  ; 2 uses
  %i.r = icmp ult i64 %i.q, %.ph
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread35

.lr.ph:                                           ; preds = %custom_ext_copy_old_cb.exit.thread.peel, %custom_ext_copy_old_cb.exit.thread
  %.024 = phi i64 [ %i.am, %custom_ext_copy_old_cb.exit.thread ], [ %i.q, %custom_ext_copy_old_cb.exit.thread.peel ] ; 4 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.024 ; 2 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.v, @custom_ext_add_old_cb_wrap
  br i1 %.not.i, label %custom_ext_copy_old_cb.exit.thread, label %custom_ext_copy_old_cb.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92
  %i.y = tail call ptr @CRYPTO_memdup(ptr noundef %i.x, i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 290) #10
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %i.ac = tail call ptr @CRYPTO_memdup(ptr noundef %i.ab, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 292) #10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !89
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !92
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = icmp eq ptr %i.ac, null
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ag
  %spec.select = zext i1 %or.cond.i to i32
  %.pre = load i64, ptr %i.a, align 8, !tbaa !9
  br label %custom_ext_copy_old_cb.exit

custom_ext_copy_old_cb.exit:                      ; preds = %.lr.ph.outer, %.lr.ph, %bb.e
  %.02466 = phi i64 [ %.024.ph, %bb.e ], [ %.024.ph, %.lr.ph.outer ], [ %.024, %.lr.ph ]
  %i.ah = phi i64 [ %.pre, %bb.e ], [ %.ph, %.lr.ph ], [ %.ph, %.lr.ph.outer ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.e ], [ %.02023.ph, %.lr.ph.outer ], [ 1, %.lr.ph ] ; 2 uses
  %i.ai = add nuw i64 %.02466, 1                  ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  br i1 %i.aj, label %.lr.ph.outer, label %._crit_edge, !llvm.loop !97

custom_ext_copy_old_cb.exit.thread:               ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.ak, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr null, ptr %i.al, align 8, !tbaa !89
  %i.am = add nuw i64 %.024, 1                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %.ph
  br i1 %i.an, label %.lr.ph, label %._crit_edge.thread35, !llvm.loop !98

._crit_edge:                                      ; preds = %custom_ext_copy_old_cb.exit
  %i.ao = icmp eq i32 %.2, 0
  br i1 %i.ao, label %.thread, label %._crit_edge.thread35

._crit_edge.thread35:                             ; preds = %custom_ext_copy_old_cb.exit.thread, %custom_ext_copy_old_cb.exit.thread.peel, %._crit_edge
  %i.ap = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !9   ; 2 uses
  %.not13.i = icmp eq i64 %i.aq, 0
  br i1 %.not13.i, label %custom_exts_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.thread35, %bb.g
  %i.ar = phi i64 [ %i.ay, %bb.g ], [ %i.aq, %._crit_edge.thread35 ]
  %.012.i = phi ptr [ %i.ba, %bb.g ], [ %i.ap, %._crit_edge.thread35 ] ; 4 uses
  %.01011.i = phi i64 [ %i.az, %bb.g ], [ 0, %._crit_edge.thread35 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !91
  %.not.i18 = icmp eq ptr %i.at, @custom_ext_add_old_cb_wrap
  br i1 %.not.i18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92
  tail call void @CRYPTO_free(ptr noundef %i.av, ptr noundef nonnull @.str, i32 noundef 385) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89
  tail call void @CRYPTO_free(ptr noundef %i.ax, ptr noundef nonnull @.str, i32 noundef 386) #10
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ay = phi i64 [ %i.ar, %.lr.ph.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.az = add nuw i64 %.01011.i, 1                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i, i64 56
  %i.bb = icmp ult i64 %i.az, %i.ay
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !100

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %.pre14.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %custom_exts_free.exit

custom_exts_free.exit:                            ; preds = %._crit_edge.thread35, %._crit_edge.loopexit.i
  %i.bc = phi ptr [ %.pre14.i, %._crit_edge.loopexit.i ], [ %i.ap, %._crit_edge.thread35 ]
  tail call void @CRYPTO_free(ptr noundef %i.bc, ptr noundef nonnull @.str, i32 noundef 388) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %._crit_edge, %bb.b, %custom_exts_free.exit
  %.015 = phi i32 [ 0, %bb.b ], [ 0, %custom_exts_free.exit ], [ 1, %._crit_edge ], [ 1, %bb.a ], [ 1, %bb.c ]
  ret i32 %.015
}

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @custom_exts_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %.not13 = icmp eq i64 %i.c, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %.012 = phi ptr [ %i.m, %bb.c ], [ %i.a, %bb.a ] ; 4 uses
  %.01011 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %.not = icmp eq ptr %i.f, @custom_ext_add_old_cb_wrap
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.012, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  tail call void @CRYPTO_free(ptr noundef %i.h, ptr noundef nonnull @.str, i32 noundef 385) #10
  %i.i = getelementptr inbounds nuw i8, ptr %.012, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  tail call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef 386) #10
  %.pre = load i64, ptr %i.b, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi i64 [ %i.d, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %i.l = add nuw i64 %.01011, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 56
  %i.n = icmp ult i64 %i.l, %i.k
  br i1 %i.n, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !100

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi ptr [ %.pre14, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  tail call void @CRYPTO_free(ptr noundef %i.o, ptr noundef nonnull @.str, i32 noundef 388) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @custom_exts_copy_conn(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 5 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader66
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %20, %vector.body ]
  %vec.phi93 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %21, %vector.body ]
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %index
  %2 = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %index
  %3 = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %index
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 68
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 124
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  %7 = load i32, ptr %i.f, align 4, !tbaa !21
  %8 = load i32, ptr %4, align 4, !tbaa !21
  %9 = insertelement <2 x i32> poison, i32 %7, i64 0
  %10 = insertelement <2 x i32> %9, i32 %8, i64 1
  %i.g = load i32, ptr %5, align 4, !tbaa !21
  %11 = load i32, ptr %6, align 4, !tbaa !21
  %12 = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %13 = insertelement <2 x i32> %12, i32 %11, i64 1
  %14 = lshr <2 x i32> %10, splat (i32 2)
  %15 = lshr <2 x i32> %13, splat (i32 2)
  %16 = and <2 x i32> %14, splat (i32 1)
  %17 = and <2 x i32> %15, splat (i32 1)
  %18 = zext nneg <2 x i32> %16 to <2 x i64>
  %19 = zext nneg <2 x i32> %17 to <2 x i64>
  %20 = add <2 x i64> %vec.phi, %18               ; 2 uses
  %21 = add <2 x i64> %vec.phi93, %19             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %21, %20
  %22 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader66, %middle.block
  %.04468.ph = phi i64 [ 0, %.preheader66 ], [ %22, %middle.block ]
  %.04667.ph = phi i64 [ 0, %.preheader66 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.04468 = phi i64 [ %spec.select.a, %scalar.ph ], [ %.04468.ph, %scalar.ph.preheader ]
  %.04667.a = phi i64 [ %i.o, %scalar.ph ], [ %.04667.ph, %scalar.ph.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.04667.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = lshr i32 %i.k, 2
  %i.m = and i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %spec.select.a = add i64 %.04468, %i.n          ; 2 uses
  %i.o = add nuw i64 %.04667.a, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.b
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !104

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %22, %middle.block ], [ %spec.select.a, %scalar.ph ] ; 3 uses
  %.not49 = icmp eq i64 %spec.select.lcssa, 0
  br i1 %.not49, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.p = load ptr, ptr %0, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = add i64 %i.r, %spec.select.lcssa
  %i.t = mul i64 %i.s, 56
  %i.u = tail call ptr @CRYPTO_realloc(ptr noundef %i.p, i64 noundef %i.t, ptr noundef nonnull @.str, i32 noundef 341) #10 ; 4 uses
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.v = load i64, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %.not78 = icmp eq i64 %i.v, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %custom_ext_copy_old_cb.exit
  %i.w = phi i64 [ %i.ap, %custom_ext_copy_old_cb.exit ], [ %i.v, %.preheader ] ; 2 uses
  %.14770 = phi i64 [ %i.aq, %custom_ext_copy_old_cb.exit ], [ 0, %.preheader ] ; 3 uses
  %.069 = phi i32 [ %.4, %custom_ext_copy_old_cb.exit ], [ 0, %.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %.14770 ; 4 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %.14770 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.ab, @custom_ext_add_old_cb_wrap
  br i1 %.not.i, label %bb.c, label %custom_ext_copy_old_cb.exit

bb.c:                                             ; preds = %.lr.ph
  %.not11.i = icmp eq i32 %.069, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !89
  br label %custom_ext_copy_old_cb.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.ag = tail call ptr @CRYPTO_memdup(ptr noundef %i.af, i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 290) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89
  %i.ak = tail call ptr @CRYPTO_memdup(ptr noundef %i.aj, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 292) #10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.an = icmp eq ptr %i.am, null
  %i.ao = icmp eq ptr %i.ak, null
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.ao
  %spec.select64 = zext i1 %or.cond.i to i32
  %.pre = load i64, ptr %i.q, align 8, !tbaa !9
  br label %custom_ext_copy_old_cb.exit

custom_ext_copy_old_cb.exit:                      ; preds = %bb.e, %.lr.ph, %bb.d
  %i.ap = phi i64 [ %i.w, %.lr.ph ], [ %.pre, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.4 = phi i32 [ %.069, %.lr.ph ], [ %spec.select64, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.aq = add nuw i64 %.14770, 1                  ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %custom_ext_copy_old_cb.exit, %.preheader
  %i.as = phi i64 [ 0, %.preheader ], [ %i.ap, %custom_ext_copy_old_cb.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %.4, %custom_ext_copy_old_cb.exit ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !13
  %i.at = load i64, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %.not79 = icmp eq i64 %i.at, 0
  br i1 %.not79, label %.critedge53, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.as
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.j
  %i.av = phi i64 [ %i.bs, %bb.j ], [ %i.at, %.lr.ph76.preheader ]
  %.04274 = phi ptr [ %.143, %bb.j ], [ %i.au, %.lr.ph76.preheader ] ; 7 uses
  %.24873 = phi i64 [ %i.bt, %bb.j ], [ 0, %.lr.ph76.preheader ] ; 2 uses
  %.172 = phi i32 [ %.2, %bb.j ], [ %.0.lcssa, %.lr.ph76.preheader ] ; 3 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %.24873 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  %i.ba = and i32 %i.az, 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.04274, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !91
  %.not.i54 = icmp eq ptr %i.bd, @custom_ext_add_old_cb_wrap
  br i1 %.not.i54, label %bb.g, label %custom_ext_copy_old_cb.exit57

bb.g:                                             ; preds = %bb.f
  %.not11.i55 = icmp eq i32 %.172, 0
  br i1 %.not11.i55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.04274, i64 32
  store ptr null, ptr %i.be, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %.04274, i64 48
  store ptr null, ptr %i.bf, align 8, !tbaa !89
  br label %custom_ext_copy_old_cb.exit57

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !92
  %i.bi = tail call ptr @CRYPTO_memdup(ptr noundef %i.bh, i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 290) #10
  %i.bj = getelementptr inbounds nuw i8, ptr %.04274, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !89
  %i.bm = tail call ptr @CRYPTO_memdup(ptr noundef %i.bl, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 292) #10 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.04274, i64 48
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !89
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !92
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = icmp eq ptr %i.bm, null
  %or.cond.i56 = select i1 %i.bp, i1 true, i1 %i.bq
  %spec.select65 = zext i1 %or.cond.i56 to i32
  br label %custom_ext_copy_old_cb.exit57

custom_ext_copy_old_cb.exit57:                    ; preds = %bb.i, %bb.f, %bb.h
  %.5 = phi i32 [ %.172, %bb.f ], [ %spec.select65, %bb.i ], [ 1, %bb.h ]
  %i.br = getelementptr inbounds nuw i8, ptr %.04274, i64 56
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph76, %custom_ext_copy_old_cb.exit57
  %i.bs = phi i64 [ %i.av, %.lr.ph76 ], [ %.pre81, %custom_ext_copy_old_cb.exit57 ] ; 2 uses
  %.2 = phi i32 [ %.172, %.lr.ph76 ], [ %.5, %custom_ext_copy_old_cb.exit57 ] ; 2 uses
  %.143 = phi ptr [ %.04274, %.lr.ph76 ], [ %i.br, %custom_ext_copy_old_cb.exit57 ]
  %i.bt = add nuw i64 %.24873, 1                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %.lr.ph76, label %.critedge53.loopexit, !llvm.loop !106

.critedge53.loopexit:                             ; preds = %bb.j
  %.pre82 = load i64, ptr %i.q, align 8, !tbaa !9
  br label %.critedge53

.critedge53:                                      ; preds = %.critedge53.loopexit, %._crit_edge
  %i.bv = phi i64 [ %i.as, %._crit_edge ], [ %.pre82, %.critedge53.loopexit ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %.2, %.critedge53.loopexit ]
  %i.bw = add i64 %i.bv, %spec.select.lcssa       ; 3 uses
  store i64 %i.bw, ptr %i.q, align 8, !tbaa !9
  %.not51 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not51, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.critedge53
  %i.bx = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not13.i = icmp eq i64 %i.bw, 0
  br i1 %.not13.i, label %custom_exts_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %i.by = phi i64 [ %i.cf, %bb.m ], [ %i.bw, %bb.k ]
  %.012.i = phi ptr [ %i.ch, %bb.m ], [ %i.bx, %bb.k ] ; 4 uses
  %.01011.i = phi i64 [ %i.cg, %bb.m ], [ 0, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !91
  %.not.i58 = icmp eq ptr %i.ca, @custom_ext_add_old_cb_wrap
  br i1 %.not.i58, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !92
  tail call void @CRYPTO_free(ptr noundef %i.cc, ptr noundef nonnull @.str, i32 noundef 385) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !89
  tail call void @CRYPTO_free(ptr noundef %i.ce, ptr noundef nonnull @.str, i32 noundef 386) #10
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.cf = phi i64 [ %i.by, %.lr.ph.i ], [ %.pre.i, %bb.l ] ; 2 uses
  %i.cg = add nuw i64 %.01011.i, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i, i64 56
  %i.ci = icmp ult i64 %i.cg, %i.cf
  br i1 %i.ci, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !100

._crit_edge.loopexit.i:                           ; preds = %bb.m
  %.pre14.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %custom_exts_free.exit

custom_exts_free.exit:                            ; preds = %bb.k, %._crit_edge.loopexit.i
  %i.cj = phi ptr [ %.pre14.i, %._crit_edge.loopexit.i ], [ %i.bx, %bb.k ]
  tail call void @CRYPTO_free(ptr noundef %i.cj, ptr noundef nonnull @.str, i32 noundef 388) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.a, %.critedge53, %bb.b, %custom_exts_free.exit
  %.3 = phi i32 [ 0, %custom_exts_free.exit ], [ 1, %.loopexit ], [ 0, %bb.b ], [ 1, %.critedge53 ], [ 1, %bb.a ]
  ret i32 %.3
}

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal i32 @custom_ext_add_old_cb_wrap(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, i64 %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %8, align 8, !tbaa !109
  %i.e = tail call i32 %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @SSL_CTX_has_client_custom_ext(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not27.i = icmp eq i64 %i.d, 0
  br i1 %.not27.i, label %custom_ext_find.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %.lr.ph.i
  %.023.i = phi ptr [ %i.n, %bb.c ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %.01522.i = phi i64 [ %i.m, %bb.c ], [ 0, %.lr.ph.i ]
  %i.g = load i16, ptr %.023.i, align 8, !tbaa !14
  %i.h = zext i16 %i.g to i32
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = and i32 %i.k, -3
  %or.cond.i = icmp eq i32 %i.l, 0
  br i1 %or.cond.i, label %custom_ext_find.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.i
  %i.m = add nuw i64 %.01522.i, 1                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i, i64 56
  %exitcond.not.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i, label %custom_ext_find.exit, label %.lr.ph.split.i, !llvm.loop !17

custom_ext_find.exit:                             ; preds = %bb.b, %bb.c, %bb.a
  %.016.i = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.016.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_tls_add_custom_ext_intern(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp ne ptr %6, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %custom_ext_find.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.046 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]  ; 3 uses
  %i.g = icmp eq i32 %3, 18
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %4, 128
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.j, %i.i
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @SSL_CTX_ct_is_enabled(ptr noundef nonnull %0) #10
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %custom_ext_find.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.l = tail call i32 @SSL_extension_supported(i32 noundef %3)
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp ne i32 %3, 18
  %or.cond5 = and i1 %i.n, %i.m
  %i.o = icmp ugt i32 %3, 65535
  %or.cond52 = or i1 %i.o, %or.cond5
  br i1 %or.cond52, label %custom_ext_find.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.046, i64 8 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9    ; 4 uses
  %.not27.i = icmp eq i64 %i.q, 0
  %.pre = load ptr, ptr %.046, align 8, !tbaa !13 ; 3 uses
  br i1 %.not27.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = icmp eq i32 %2, 2
  br i1 %i.r, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.i
  %.023.us.i = phi ptr [ %i.w, %bb.i ], [ %.pre, %.lr.ph.i ] ; 2 uses
  %.01522.us.i = phi i64 [ %i.v, %bb.i ], [ 0, %.lr.ph.i ]
  %i.s = load i16, ptr %.023.us.i, align 8, !tbaa !14
  %i.t = zext i16 %i.s to i32
  %i.u = icmp eq i32 %3, %i.t
  br i1 %i.u, label %custom_ext_find.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.v = add nuw i64 %.01522.us.i, 1              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.023.us.i, i64 56
  %exitcond34.not.i = icmp eq i64 %i.v, %i.q
  br i1 %exitcond34.not.i, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !17

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %.023.i = phi ptr [ %i.af, %bb.k ], [ %.pre, %.lr.ph.i ] ; 3 uses
  %.01522.i = phi i64 [ %i.ae, %bb.k ], [ 0, %.lr.ph.i ]
  %i.x = load i16, ptr %.023.i, align 8, !tbaa !14
  %i.y = zext i16 %i.x to i32
  %i.z = icmp eq i32 %3, %i.y
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19 ; 2 uses
  %i.ac = icmp eq i32 %2, %i.ab
  %i.ad = icmp eq i32 %i.ab, 2
  %or.cond.i = or i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %custom_ext_find.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.i
  %i.ae = add nuw i64 %.01522.i, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.023.i, i64 56
  %exitcond.not.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !17

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.h
  %i.ag = mul i64 %i.q, 56
  %i.ah = add i64 %i.ag, 56
  %i.ai = tail call ptr @CRYPTO_realloc(ptr noundef %.pre, i64 noundef %i.ah, ptr noundef nonnull @.str, i32 noundef 450) #10 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %custom_ext_find.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  store ptr %i.ai, ptr %.046, align 8, !tbaa !13
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.ak ; 10 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %2, ptr %i.am, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %4, ptr %i.an, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %8, ptr %i.ao, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %5, ptr %i.ap, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %6, ptr %i.aq, align 8, !tbaa !93
  %i.ar = trunc nuw i32 %3 to i16
  store i16 %i.ar, ptr %i.al, align 8, !tbaa !14
  %i.as = icmp eq ptr %0, null
  %i.at = select i1 %i.as, i32 4, i32 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.at, ptr %i.au, align 4, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %7, ptr %i.av, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %9, ptr %i.aw, align 8, !tbaa !89
  %i.ax = load i64, ptr %i.p, align 8, !tbaa !9
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.p, align 8, !tbaa !9
  br label %custom_ext_find.exit

custom_ext_find.exit:                             ; preds = %bb.j, %.lr.ph.split.us.i, %.loopexit, %bb.g, %bb.f, %bb.a, %bb.l
  %.0 = phi i32 [ 1, %bb.l ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %.loopexit ], [ 0, %.lr.ph.split.us.i ], [ 0, %bb.j ]
  ret i32 %.0
}

declare i32 @SSL_CTX_ct_is_enabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @SSL_extension_supported(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 16, label %bb.c
    i32 11, label %bb.c
    i32 10, label %bb.c
    i32 51, label %bb.c
    i32 13172, label %bb.c
    i32 21, label %bb.c
    i32 65281, label %bb.c
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 35, label %bb.c
    i32 13, label %bb.c
    i32 12, label %bb.c
    i32 5, label %bb.c
    i32 18, label %bb.c
    i32 14, label %bb.c
    i32 22, label %bb.c
    i32 43, label %bb.c
    i32 23, label %bb.c
    i32 45, label %bb.c
    i32 44, label %bb.c
    i32 42, label %bb.c
    i32 47, label %bb.c
    i32 41, label %bb.c
    i32 49, label %bb.c
    i32 27, label %bb.c
    i32 19, label %bb.c
    i32 20, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_CTX_add_client_custom_ext(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 479) #10 ; 6 uses
  %i.b = tail call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 481) #10 ; 5 uses
  %i.c = icmp eq ptr %i.a, null
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %4, ptr %i.a, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !125
  store ptr %6, ptr %i.b, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.g, align 8, !tbaa !128
  %i.h = tail call i32 @ossl_tls_add_custom_ext_intern(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef %1, i32 noundef 464, ptr noundef nonnull @custom_ext_add_old_cb_wrap, ptr noundef nonnull @custom_ext_free_old_cb_wrap, ptr noundef nonnull %i.a, ptr noundef nonnull @custom_ext_parse_old_cb_wrap, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.sink.split.i, label %add_old_custom_ext.exit

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  %.sink29.i = phi i32 [ 485, %bb.a ], [ 505, %bb.b ]
  %.sink.i = phi i32 [ 486, %bb.a ], [ 506, %bb.b ]
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef %.sink29.i) #10
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %.sink.i) #10
  br label %add_old_custom_ext.exit

add_old_custom_ext.exit:                          ; preds = %bb.b, %.sink.split.i
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_CTX_add_server_custom_ext(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 479) #10 ; 6 uses
  %i.b = tail call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 481) #10 ; 5 uses
  %i.c = icmp eq ptr %i.a, null
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %4, ptr %i.a, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !125
  store ptr %6, ptr %i.b, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.g, align 8, !tbaa !128
  %i.h = tail call i32 @ossl_tls_add_custom_ext_intern(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef %1, i32 noundef 464, ptr noundef nonnull @custom_ext_add_old_cb_wrap, ptr noundef nonnull @custom_ext_free_old_cb_wrap, ptr noundef nonnull %i.a, ptr noundef nonnull @custom_ext_parse_old_cb_wrap, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.sink.split.i, label %add_old_custom_ext.exit

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  %.sink29.i = phi i32 [ 485, %bb.a ], [ 505, %bb.b ]
  %.sink.i = phi i32 [ 486, %bb.a ], [ 506, %bb.b ]
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef %.sink29.i) #10
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %.sink.i) #10
  br label %add_old_custom_ext.exit

add_old_custom_ext.exit:                          ; preds = %bb.b, %.sink.split.i
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_CTX_add_custom_ext(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @ossl_tls_add_custom_ext_intern(ptr noundef %0, ptr noundef null, i32 noundef 2, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @custom_ext_free_old_cb_wrap(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !109
  tail call void %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @custom_ext_parse_old_cb_wrap(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef %3, i64 noundef %4, ptr nofree readnone captures(none) %5, i64 %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %8, align 8, !tbaa !126
  %i.e = tail call i32 %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %7, ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 8}
!10 = !{!"", !11, i64 0, !12, i64 8}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"", !16, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!16 = !{!"short", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!15, !6, i64 4}
!20 = !{!12, !12, i64 0}
!21 = !{!15, !6, i64 12}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!26, !63, i64 2176}
!26 = !{!"ssl_connection_st", !27, i64 0, !34, i64 64, !6, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !6, i64 104, !11, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !36, i64 136, !36, i64 144, !37, i64 152, !6, i64 240, !38, i64 248, !11, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !39, i64 288, !11, i64 336, !40, i64 344, !41, i64 352, !54, i64 1264, !11, i64 1272, !11, i64 1280, !6, i64 1288, !55, i64 1296, !56, i64 1304, !62, i64 1368, !62, i64 1376, !62, i64 1384, !62, i64 1392, !6, i64 1400, !7, i64 1404, !7, i64 1468, !7, i64 1532, !7, i64 1596, !7, i64 1660, !7, i64 1724, !7, i64 1788, !7, i64 1852, !7, i64 1916, !7, i64 1980, !7, i64 2044, !7, i64 2108, !63, i64 2176, !7, i64 2184, !12, i64 2248, !6, i64 2256, !12, i64 2264, !7, i64 2272, !64, i64 2304, !64, i64 2312, !46, i64 2320, !12, i64 2328, !11, i64 2336, !7, i64 2344, !12, i64 2376, !6, i64 2384, !11, i64 2392, !11, i64 2400, !6, i64 2408, !6, i64 2412, !11, i64 2416, !11, i64 2424, !11, i64 2432, !11, i64 2440, !59, i64 2448, !12, i64 2456, !47, i64 2464, !47, i64 2472, !12, i64 2480, !6, i64 2488, !6, i64 2492, !6, i64 2496, !12, i64 2504, !6, i64 2512, !6, i64 2516, !12, i64 2520, !12, i64 2528, !12, i64 2536, !65, i64 2544, !11, i64 2904, !6, i64 2912, !11, i64 2920, !11, i64 2928, !71, i64 2936, !6, i64 2944, !28, i64 2952, !72, i64 2960, !73, i64 2968, !6, i64 2976, !6, i64 2980, !6, i64 2984, !6, i64 2988, !46, i64 2992, !12, i64 3000, !6, i64 3008, !42, i64 3016, !74, i64 3024, !11, i64 3152, !76, i64 3160, !11, i64 5400, !11, i64 5408, !81, i64 5416, !82, i64 5424, !12, i64 5432, !6, i64 5440, !6, i64 5444, !6, i64 5448, !12, i64 5456, !12, i64 5464, !12, i64 5472, !11, i64 5480, !11, i64 5488, !11, i64 5496, !11, i64 5504, !83, i64 5512, !12, i64 5520, !46, i64 5528, !12, i64 5536, !46, i64 5544, !12, i64 5552}
!27 = !{!"ssl_st", !6, i64 0, !28, i64 8, !29, i64 16, !29, i64 24, !30, i64 32, !11, i64 40, !31, i64 48}
!28 = !{!"p1 _ZTS10ssl_ctx_st", !11, i64 0}
!29 = !{!"p1 _ZTS13ssl_method_st", !11, i64 0}
!30 = !{!"", !7, i64 0}
!31 = !{!"crypto_ex_data_st", !32, i64 0, !33, i64 8}
!32 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!33 = !{!"p1 _ZTS13stack_st_void", !11, i64 0}
!34 = !{!"p1 _ZTS6ssl_st", !11, i64 0}
!35 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!36 = !{!"", !12, i64 0}
!37 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !6, i64 80}
!38 = !{!"p1 _ZTS10buf_mem_st", !11, i64 0}
!39 = !{!"ossl_quic_tls_callbacks_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!40 = !{!"p1 _ZTS11quic_tls_st", !11, i64 0}
!41 = !{!"", !12, i64 0, !7, i64 8, !7, i64 40, !35, i64 72, !42, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !7, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !43, i64 128, !7, i64 704, !12, i64 768, !7, i64 776, !12, i64 840, !6, i64 848, !6, i64 852, !46, i64 856, !12, i64 864, !46, i64 872, !12, i64 880, !6, i64 888, !7, i64 892, !7, i64 893, !16, i64 894, !45, i64 896, !16, i64 904}
!42 = !{!"p1 _ZTS13evp_md_ctx_st", !11, i64 0}
!43 = !{!"", !7, i64 0, !12, i64 128, !7, i64 136, !12, i64 264, !12, i64 272, !6, i64 280, !44, i64 288, !45, i64 296, !7, i64 304, !7, i64 336, !12, i64 344, !6, i64 352, !46, i64 360, !12, i64 368, !47, i64 376, !12, i64 384, !46, i64 392, !48, i64 400, !49, i64 408, !6, i64 416, !12, i64 424, !46, i64 432, !6, i64 440, !46, i64 448, !12, i64 456, !46, i64 464, !12, i64 472, !46, i64 480, !12, i64 488, !50, i64 496, !51, i64 504, !52, i64 512, !52, i64 520, !12, i64 528, !12, i64 536, !50, i64 544, !53, i64 552, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572}
!44 = !{!"p1 _ZTS13ssl_cipher_st", !11, i64 0}
!45 = !{!"p1 _ZTS11evp_pkey_st", !11, i64 0}
!46 = !{!"p1 omnipotent char", !11, i64 0}
!47 = !{!"p1 _ZTS18stack_st_X509_NAME", !11, i64 0}
!48 = !{!"p1 _ZTS13evp_cipher_st", !11, i64 0}
!49 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!50 = !{!"p1 _ZTS16sigalg_lookup_st", !11, i64 0}
!51 = !{!"p1 _ZTS12cert_pkey_st", !11, i64 0}
!52 = !{!"p1 short", !11, i64 0}
!53 = !{!"p1 int", !11, i64 0}
!54 = !{!"p1 _ZTS14dtls1_state_st", !11, i64 0}
!55 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !11, i64 0}
!56 = !{!"ssl_dane_st", !57, i64 0, !58, i64 8, !59, i64 16, !60, i64 24, !61, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !12, i64 56}
!57 = !{!"p1 _ZTS11dane_ctx_st", !11, i64 0}
!58 = !{!"p1 _ZTS23stack_st_danetls_record", !11, i64 0}
!59 = !{!"p1 _ZTS13stack_st_X509", !11, i64 0}
!60 = !{!"p1 _ZTS17danetls_record_st", !11, i64 0}
!61 = !{!"p1 _ZTS7x509_st", !11, i64 0}
!62 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !11, i64 0}
!63 = !{!"p1 _ZTS7cert_st", !11, i64 0}
!64 = !{!"p1 _ZTS14ssl_session_st", !11, i64 0}
!65 = !{!"", !7, i64 0, !11, i64 32, !11, i64 40, !46, i64 48, !6, i64 56, !46, i64 64, !16, i64 72, !6, i64 76, !66, i64 80, !6, i64 112, !6, i64 116, !12, i64 120, !46, i64 128, !12, i64 136, !46, i64 144, !12, i64 152, !52, i64 160, !12, i64 168, !52, i64 176, !12, i64 184, !52, i64 192, !12, i64 200, !69, i64 208, !70, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !46, i64 256, !12, i64 264, !46, i64 272, !12, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !46, i64 304, !12, i64 312, !6, i64 320, !7, i64 324, !6, i64 328, !7, i64 332, !6, i64 348, !7, i64 352, !7, i64 353, !7, i64 354, !7, i64 355}
!66 = !{!"", !67, i64 0, !68, i64 8, !46, i64 16, !12, i64 24}
!67 = !{!"p1 _ZTS20stack_st_OCSP_RESPID", !11, i64 0}
!68 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !11, i64 0}
!69 = !{!"p1 long", !11, i64 0}
!70 = !{!"p1 _ZTS25tls_session_ticket_ext_st", !11, i64 0}
!71 = !{!"p1 _ZTS12stack_st_SCT", !11, i64 0}
!72 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !11, i64 0}
!73 = !{!"p1 _ZTS26srtp_protection_profile_st", !11, i64 0}
!74 = !{!"srp_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !46, i64 32, !75, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !46, i64 104, !6, i64 112, !12, i64 120}
!75 = !{!"p1 _ZTS9bignum_st", !11, i64 0}
!76 = !{!"record_layer_st", !77, i64 0, !78, i64 8, !11, i64 16, !78, i64 24, !78, i64 32, !79, i64 40, !79, i64 48, !35, i64 56, !12, i64 64, !6, i64 72, !12, i64 80, !7, i64 88, !12, i64 96, !12, i64 104, !7, i64 112, !46, i64 120, !6, i64 128, !80, i64 136, !11, i64 144, !11, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !7, i64 192}
!77 = !{!"p1 _ZTS17ssl_connection_st", !11, i64 0}
!78 = !{!"p1 _ZTS21ossl_record_method_st", !11, i64 0}
!79 = !{!"p1 _ZTS20ossl_record_layer_st", !11, i64 0}
!80 = !{!"p1 _ZTS20dtls_record_layer_st", !11, i64 0}
!81 = !{!"p1 _ZTS12async_job_st", !11, i64 0}
!82 = !{!"p1 _ZTS17async_wait_ctx_st", !11, i64 0}
!83 = !{!"p2 _ZTS16sigalg_lookup_st", !84, i64 0}
!84 = !{!"any p2 pointer", !11, i64 0}
!85 = !{!26, !6, i64 120}
!86 = !{!15, !6, i64 8}
!87 = !{!15, !11, i64 40}
!88 = !{!26, !34, i64 64}
!89 = !{!15, !11, i64 48}
!90 = !{!46, !46, i64 0}
!91 = !{!15, !11, i64 16}
!92 = !{!15, !11, i64 32}
!93 = !{!15, !11, i64 24}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18, !99}
!99 = !{!"llvm.loop.peeled.count", i32 1}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !18, !103, !102}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = !{!108, !11, i64 8}
!108 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!109 = !{!108, !11, i64 0}
!110 = !{!111, !63, i64 344}
!111 = !{!"ssl_ctx_st", !32, i64 0, !29, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !112, i64 40, !113, i64 48, !12, i64 56, !64, i64 64, !64, i64 72, !6, i64 80, !36, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !114, i64 120, !30, i64 164, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !31, i64 240, !49, i64 256, !49, i64 264, !59, i64 272, !115, i64 280, !11, i64 288, !47, i64 296, !47, i64 304, !12, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !12, i64 336, !63, i64 344, !11, i64 352, !6, i64 360, !11, i64 368, !11, i64 376, !6, i64 384, !12, i64 392, !7, i64 400, !11, i64 432, !11, i64 440, !55, i64 448, !6, i64 456, !116, i64 464, !11, i64 472, !11, i64 480, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !117, i64 520, !11, i64 528, !11, i64 536, !11, i64 544, !11, i64 552, !118, i64 560, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !74, i64 832, !120, i64 960, !72, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !6, i64 1024, !6, i64 1028, !11, i64 1032, !11, i64 1040, !12, i64 1048, !12, i64 1056, !11, i64 1064, !11, i64 1072, !11, i64 1080, !12, i64 1088, !11, i64 1096, !11, i64 1104, !6, i64 1112, !11, i64 1120, !11, i64 1128, !46, i64 1136, !7, i64 1144, !7, i64 1200, !7, i64 1392, !7, i64 1504, !12, i64 1616, !12, i64 1624, !50, i64 1632, !52, i64 1640, !122, i64 1648, !12, i64 1656, !12, i64 1664, !123, i64 1672, !12, i64 1680, !12, i64 1688, !6, i64 1696, !6, i64 1700, !6, i64 1704, !6, i64 1708, !46, i64 1712, !12, i64 1720, !46, i64 1728, !12, i64 1736, !12, i64 1744, !124, i64 1752, !46, i64 1760}
!112 = !{!"p1 _ZTS13x509_store_st", !11, i64 0}
!113 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !11, i64 0}
!114 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!115 = !{!"p1 _ZTS17stack_st_SSL_COMP", !11, i64 0}
!116 = !{!"p1 _ZTS14ctlog_store_st", !11, i64 0}
!117 = !{!"p1 _ZTS9engine_st", !11, i64 0}
!118 = !{!"", !11, i64 0, !11, i64 8, !7, i64 16, !119, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !6, i64 72, !7, i64 76, !12, i64 80, !46, i64 88, !12, i64 96, !52, i64 104, !12, i64 112, !52, i64 120, !12, i64 128, !69, i64 136, !11, i64 144, !11, i64 152, !46, i64 160, !12, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !7, i64 208}
!119 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !11, i64 0}
!120 = !{!"dane_ctx_st", !121, i64 0, !46, i64 8, !7, i64 16, !12, i64 24}
!121 = !{!"p2 _ZTS9evp_md_st", !84, i64 0}
!122 = !{!"p1 _ZTS17tls_group_info_st", !11, i64 0}
!123 = !{!"p1 _ZTS18tls_sigalg_info_st", !11, i64 0}
!124 = !{!"p1 _ZTS18ssl_token_store_st", !11, i64 0}
!125 = !{!108, !11, i64 16}
!126 = !{!127, !11, i64 0}
!127 = !{!"", !11, i64 0, !11, i64 8}
!128 = !{!127, !11, i64 8}
end_hunk_0
