inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"readbuffer\00", align 1
@methods_readbuffer = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 521, [4 x i8] zeroinitializer, ptr @.str, ptr @bwrite_conv, ptr @readbuffer_write, ptr @bread_conv, ptr @readbuffer_read, ptr @readbuffer_puts, ptr @readbuffer_gets, ptr @readbuffer_ctrl, ptr @readbuffer_new, ptr @readbuffer_free, ptr @readbuffer_callback_ctrl, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"../../deps/openssl/openssl/crypto/bio/bf_readbuff.c\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BIO_f_readbuffer() local_unnamed_addr #0 {
bb.a:
  ret ptr @methods_readbuffer
}

declare i32 @bwrite_conv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @readbuffer_write(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #0 {
bb.a:
  ret i32 0
}

declare i32 @bread_conv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @readbuffer_read(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %readbuffer_resize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %readbuffer_resize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %readbuffer_resize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BIO_clear_flags(ptr noundef nonnull %0, i32 noundef 15) #5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 4 uses
  %.pre = load i32, ptr %i.i, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.n, %bb.d
  %i.l = phi i32 [ %.pre, %bb.d ], [ %i.am, %bb.n ] ; 3 uses
  %.048 = phi ptr [ %1, %bb.d ], [ %.149, %bb.n ] ; 3 uses
  %.046 = phi i32 [ %2, %bb.d ], [ %.147, %bb.n ] ; 4 uses
  %.044 = phi i32 [ 0, %bb.d ], [ %.1, %bb.n ]    ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  %.pre59 = load i32, ptr %i.k, align 4, !tbaa !23 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.046) ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.n = sext i32 %.pre59 to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = sext i32 %spec.select to i64             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.048, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.q = load i32, ptr %i.k, align 4, !tbaa !23
  %i.r = add nsw i32 %i.q, %spec.select           ; 2 uses
  store i32 %i.r, ptr %i.k, align 4, !tbaa !23
  %i.s = load i32, ptr %i.i, align 8, !tbaa !21
  %i.t = sub nsw i32 %i.s, %spec.select
  store i32 %i.t, ptr %i.i, align 8, !tbaa !21
  %i.u = add nsw i32 %spec.select, %.044          ; 2 uses
  %.not58 = icmp sgt i32 %.046, %i.l
  br i1 %.not58, label %bb.g, label %readbuffer_resize.exit

bb.g:                                             ; preds = %bb.f
  %i.v = sub nsw i32 %.046, %spec.select
  %i.w = getelementptr inbounds i8, ptr %.048, i64 %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = phi i32 [ %i.r, %bb.g ], [ %.pre59, %bb.e ] ; 2 uses
  %.149 = phi ptr [ %i.w, %bb.g ], [ %.048, %bb.e ]
  %.147 = phi i32 [ %i.v, %bb.g ], [ %.046, %bb.e ] ; 3 uses
  %.1 = phi i32 [ %i.u, %bb.g ], [ %.044, %bb.e ] ; 4 uses
  %i.y = add i32 %.147, 4095
  %i.z = add i32 %i.y, %i.x
  %i.aa = sdiv i32 %i.z, 4096
  %i.ab = shl nsw i32 %i.aa, 12                   ; 3 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !25
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  %.pre60 = load ptr, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = sext i32 %i.ab to i64
  %i.af = tail call ptr @CRYPTO_realloc(ptr noundef %.pre60, i64 noundef %i.ae, ptr noundef nonnull @.str.2, i32 noundef 97) #5 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %readbuffer_resize.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.af, ptr %i.j, align 8, !tbaa !24
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !25
  %.pre61 = load i32, ptr %i.k, align 4, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ah = phi i32 [ %.pre61, %bb.j ], [ %i.x, %bb.h ]
  %i.ai = phi ptr [ %i.af, %bb.j ], [ %.pre60, %bb.h ]
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = tail call i32 @BIO_read(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %.147) #5 ; 5 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0) #5
  %i.ao = icmp slt i32 %i.am, 0
  br i1 %i.ao, label %bb.m, label %readbuffer_resize.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp sgt i32 %.1, 0
  %i.aq = select i1 %i.ap, i32 %.1, i32 %i.am
  br label %readbuffer_resize.exit

bb.n:                                             ; preds = %bb.k
  store i32 %i.am, ptr %i.i, align 8, !tbaa !21
  br label %bb.e

readbuffer_resize.exit:                           ; preds = %bb.i, %bb.f, %bb.l, %bb.b, %bb.c, %bb.a, %bb.m
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.aq, %bb.m ], [ %.1, %bb.l ], [ 0, %bb.i ], [ %i.u, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @readbuffer_puts(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @readbuffer_gets(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %readbuffer_resize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, -1                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %readbuffer_resize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %readbuffer_resize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BIO_clear_flags(ptr noundef nonnull %0, i32 noundef 15) #5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %._crit_edge110

._crit_edge110:                                   ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.pre111 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !23
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = icmp sgt i32 %2, 1
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %3 = sext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.06583 = phi ptr [ %1, %.lr.ph.preheader ], [ %i.v, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.06583, i64 1 ; 3 uses
  store i8 %i.u, ptr %.06583, align 1, !tbaa !26
  %i.w = icmp eq i8 %i.u, 10
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = add nuw nsw i32 %i.x, 1
  %.pre = load i32, ptr %i.j, align 8, !tbaa !21
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.z = load i32, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  %4 = icmp slt i64 %indvars.iv.next, %3
  %i.ac = select i1 %i.ab, i1 %4, i1 false
  br i1 %i.ac, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %bb.g
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre, %bb.f ], [ %i.k, %bb.e ], [ %i.z, %.loopexit.loopexit ]
  %i.af = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %.loopexit.loopexit ]
  %.166 = phi ptr [ %i.v, %bb.f ], [ %1, %bb.e ], [ %i.v, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ], [ %i.ad, %.loopexit.loopexit ] ; 5 uses
  %i.ag = sub nsw i32 %i.c, %.1                   ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %.1
  store i32 %i.ah, ptr %i.j, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !23
  %i.aj = add nsw i32 %i.ai, %.1                  ; 2 uses
  store i32 %i.aj, ptr %i.o, align 4, !tbaa !23
  %i.ak = icmp eq i32 %i.ag, 0
  %or.cond3 = select i1 %i.af, i1 true, i1 %i.ak
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  store i8 0, ptr %.166, align 1, !tbaa !26
  br label %readbuffer_resize.exit

bb.i:                                             ; preds = %._crit_edge110, %.loopexit
  %i.al = phi i32 [ %i.aj, %.loopexit ], [ %.pre111, %._crit_edge110 ] ; 2 uses
  %.068 = phi i32 [ %i.ag, %.loopexit ], [ %i.c, %._crit_edge110 ] ; 3 uses
  %.267 = phi ptr [ %.166, %.loopexit ], [ %1, %._crit_edge110 ] ; 2 uses
  %.063 = phi i32 [ %.1, %.loopexit ], [ 0, %._crit_edge110 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.an = add i32 %.068, 4096
  %i.ao = add i32 %i.an, %i.al
  %i.ap = sdiv i32 %i.ao, 4096
  %i.aq = shl nsw i32 %i.ap, 12                   ; 3 uses
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !25
  %i.as = icmp sgt i32 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  br i1 %i.as, label %bb.j, label %._crit_edge112

bb.j:                                             ; preds = %bb.i
  %i.av = sext i32 %i.aq to i64
  %i.aw = tail call ptr @CRYPTO_realloc(ptr noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.2, i32 noundef 97) #5 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %readbuffer_resize.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !24
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !25
  %.pre115 = load i32, ptr %i.am, align 4, !tbaa !23
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.i, %bb.k
  %i.ay = phi i32 [ %.pre115, %bb.k ], [ %i.al, %bb.i ]
  %i.az = phi ptr [ %i.aw, %bb.k ], [ %i.au, %bb.i ]
  %i.ba = icmp sgt i32 %.068, 0
  br i1 %i.ba, label %.lr.ph91.preheader, label %._crit_edge

.lr.ph91.preheader:                               ; preds = %._crit_edge112
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %bb.m
  %.05990 = phi i32 [ %i.bq, %bb.m ], [ 0, %.lr.ph91.preheader ]
  %.06089 = phi ptr [ %i.bp, %bb.m ], [ %i.bc, %.lr.ph91.preheader ] ; 4 uses
  %.16488 = phi i32 [ %i.bk, %bb.m ], [ %.063, %.lr.ph91.preheader ] ; 3 uses
  %.387 = phi ptr [ %i.bj, %bb.m ], [ %.267, %.lr.ph91.preheader ] ; 3 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.be = tail call i32 @BIO_read(ptr noundef %i.bd, ptr noundef %.06089, i32 noundef 1) #5 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph91
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0) #5
  store i8 0, ptr %.387, align 1, !tbaa !26
  %i.bg = icmp sgt i32 %.16488, 0
  %i.bh = select i1 %i.bg, i32 %.16488, i32 %i.be
  br label %readbuffer_resize.exit

bb.m:                                             ; preds = %.lr.ph91
  %i.bi = load i8, ptr %.06089, align 1, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.387, i64 1 ; 2 uses
  store i8 %i.bi, ptr %.387, align 1, !tbaa !26
  %i.bk = add nsw i32 %.16488, 1                  ; 2 uses
  %i.bl = load i32, ptr %i.am, align 4, !tbaa !23
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.am, align 4, !tbaa !23
  %i.bn = load i8, ptr %.06089, align 1, !tbaa !26
  %i.bo = icmp ne i8 %i.bn, 10
  %i.bp = getelementptr inbounds nuw i8, ptr %.06089, i64 1
  %i.bq = add nuw nsw i32 %.05990, 1              ; 2 uses
  %i.br = icmp slt i32 %i.bq, %.068
  %or.cond99 = select i1 %i.bo, i1 %i.br, i1 false
  br i1 %or.cond99, label %.lr.ph91, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.m, %._crit_edge112
  %.4 = phi ptr [ %.267, %._crit_edge112 ], [ %i.bj, %bb.m ]
  %.2 = phi i32 [ %.063, %._crit_edge112 ], [ %i.bk, %bb.m ]
  store i8 0, ptr %.4, align 1, !tbaa !26
  br label %readbuffer_resize.exit

readbuffer_resize.exit:                           ; preds = %bb.j, %bb.b, %bb.c, %bb.a, %._crit_edge, %bb.l, %bb.h
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.1, %bb.h ], [ %i.bh, %bb.l ], [ %.2, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @readbuffer_ctrl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  switch i32 %1, label %bb.k [
    i32 2, label %bb.b
    i32 128, label %bb.e
    i32 1, label %bb.e
    i32 133, label %bb.g
    i32 3, label %bb.g
    i32 10, label %bb.h
    i32 12, label %bb.l
    i32 11, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.g, i32 noundef 2, i64 noundef %2, ptr noundef %3) #5
  br label %bb.l

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add nsw i32 %i.m, %i.k                   ; 2 uses
  %i.o = icmp slt i64 %2, 0
  %i.p = sext i32 %i.n to i64
  %i.q = icmp sgt i64 %2, %i.p
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = trunc nuw nsw i64 %2 to i32              ; 2 uses
  store i32 %i.r, ptr %i.j, align 4, !tbaa !23
  %i.s = sub i32 %i.n, %i.r
  store i32 %i.s, ptr %i.l, align 8, !tbaa !21
  br label %bb.l

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = sext i32 %i.u to i64
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.ab, i32 noundef 10, i64 noundef %2, ptr noundef %3) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.k, %bb.j, %bb.h, %bb.a, %bb.a, %bb.i, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.k ], [ %i.i, %bb.d ], [ 1, %bb.f ], [ %i.v, %bb.g ], [ %i.ad, %bb.j ], [ %i.y, %bb.h ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @readbuffer_new(ptr nofree noundef writeonly captures(none) %0) #2 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 40, ptr noundef nonnull @.str.2, i32 noundef 55) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4096, ptr %i.a, align 8, !tbaa !25
end_hunk_0
