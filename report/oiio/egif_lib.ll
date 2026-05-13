inline.NumInlined: 44
inline.NumDeleted: 3
begin_hunk_0_@EGifPutComment:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 2) #14, !inline_history !93 ; 0 uses
  br label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 2, ptr noundef %i.s) ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.042 = phi ptr [ %i.ak, %bb.l ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01741 = phi i32 [ %i.al, %bb.l ], [ %i.f, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22
  %i.w = and i32 %i.v, 1
  %.not.i20 = icmp eq i32 %i.w, 0
  br i1 %.not.i20, label %EGifPutExtensionBlock.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store i8 -1, ptr %i.c, align 1, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.y, null
  br i1 %.not.i.i21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 %i.y(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 1) #14, !inline_history !94 ; 0 uses
  br label %InternalWrite.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %fputc.i = call i32 @fputc(i32 -1, ptr %i.ab)   ; 0 uses
  br label %InternalWrite.exit.i

InternalWrite.exit.i:                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !14  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %InternalWrite.exit.i
  %i.af = call i32 %i.ae(ptr noundef nonnull %0, ptr noundef nonnull %.042, i32 noundef 255) #14, !inline_history !94 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %InternalWrite.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = call i64 @fwrite(ptr noundef nonnull %.042, i64 noundef 1, i64 noundef 255, ptr noundef %i.ah) ; 0 uses
  br label %bb.l

EGifPutExtensionBlock.exit:                       ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.aj, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.w

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %.042, i64 255 ; 3 uses
  %i.al = add i32 %.01741, -255                   ; 6 uses
  %i.am = icmp ugt i32 %i.al, 255
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !14  ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !22
  %i.ap = and i32 %i.ao, 1
  %.not.i23 = icmp eq i32 %i.ap, 0
  br i1 %.not.i23, label %EGifPutExtensionBlock.exit29, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.aq = trunc nuw i32 %i.al to i8
  store i8 %i.aq, ptr %i.b, align 1, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.as, null
  br i1 %.not.i.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = call i32 %i.as(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1) #14, !inline_history !94 ; 0 uses
  br label %InternalWrite.exit.i25

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %sext.i = shl nuw i32 %i.al, 24
  %chari.i = ashr exact i32 %sext.i, 24
  %fputc.i28 = call i32 @fputc(i32 %chari.i, ptr %i.av) ; 0 uses
  br label %InternalWrite.exit.i25

InternalWrite.exit.i25:                           ; preds = %bb.o, %bb.n
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !14  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %.not.i8.i26 = icmp eq ptr %i.ay, null
  br i1 %.not.i8.i26, label %bb.q, label %bb.p

bb.p:                                             ; preds = %InternalWrite.exit.i25
  %i.az = call i32 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i32 noundef %i.al) #14, !inline_history !94 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %InternalWrite.exit.i25
  %i.ba = zext nneg i32 %i.al to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bd = call i64 @fwrite(ptr noundef nonnull %i.ak, i64 noundef 1, i64 noundef %i.ba, ptr noundef %i.bc) ; 0 uses
  br label %bb.r

EGifPutExtensionBlock.exit29:                     ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.be, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.w

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !14  ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !22
  %i.bh = and i32 %i.bg, 1
  %.not.i30 = icmp eq i32 %i.bh, 0
  br i1 %.not.i30, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.a, align 1, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i31, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = call i32 %i.bj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #14, !inline_history !96 ; 0 uses
  br label %EGifPutExtensionTrailer.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21
  %fputc.i34 = call i32 @fputc(i32 0, ptr %i.bm)  ; 0 uses
  br label %EGifPutExtensionTrailer.exit.thread

EGifPutExtensionTrailer.exit.thread:              ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.bn, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %EGifPutExtensionTrailer.exit.thread, %EGifPutExtensionBlock.exit29, %EGifPutExtensionBlock.exit, %EGifPutExtensionLeader.exit.thread, %bb.b
  %.018 = phi i32 [ %i.h, %bb.b ], [ 0, %EGifPutExtensionBlock.exit29 ], [ 0, %EGifPutExtensionLeader.exit.thread ], [ 0, %EGifPutExtensionBlock.exit ], [ 0, %bb.v ], [ 1, %EGifPutExtensionTrailer.exit.thread ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EGifPutExtension(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [3 x i8], align 1                 ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  %i.g = trunc i32 %2 to i8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.h, align 8, !tbaa !26
  br label %InternalWrite.exit19

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 %i.k(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #14, !inline_history !49 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %InternalWrite.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %sext = shl i32 %2, 24
  %chari = ashr exact i32 %sext, 24
  %fputc = tail call i32 @fputc(i32 %chari, ptr %i.n) ; 0 uses
  br label %InternalWrite.exit

bb.g:                                             ; preds = %bb.c
  store i8 33, ptr %i.b, align 1, !tbaa !60
  %i.o = trunc i32 %1 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.q, align 1, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %.not.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call i32 %i.s(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 3) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 3, ptr noundef %i.v) ; 0 uses
  br label %InternalWrite.exit

InternalWrite.exit:                               ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %4 = phi i32 [ %2, %bb.i ], [ %2, %bb.h ], [ %2, %bb.f ], [ %.pre, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %.not.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %InternalWrite.exit
  %i.aa = call i32 %i.z(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %4) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit16

bb.k:                                             ; preds = %InternalWrite.exit
  %i.ab = sext i32 %4 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = call i64 @fwrite(ptr noundef %3, i64 noundef 1, i64 noundef %i.ab, ptr noundef %i.ad) ; 0 uses
  br label %InternalWrite.exit16

InternalWrite.exit16:                             ; preds = %bb.j, %bb.k
  store i8 0, ptr %i.b, align 1, !tbaa !60
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %InternalWrite.exit16
  %i.ai = call i32 %i.ah(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit19

bb.m:                                             ; preds = %InternalWrite.exit16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %fputc22 = call i32 @fputc(i32 0, ptr %i.ak)    ; 0 uses
  br label %InternalWrite.exit19

InternalWrite.exit19:                             ; preds = %bb.m, %bb.l, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.l ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EGifPutExtensionLeader(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.f, align 8, !tbaa !26
  br label %InternalWrite.exit

bb.c:                                             ; preds = %bb.a
  store i8 33, ptr %i.a, align 1, !tbaa !60
  %i.g = trunc i32 %1 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 2, ptr noundef %i.m) ; 0 uses
  br label %InternalWrite.exit

InternalWrite.exit:                               ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EGifPutExtensionBlock(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.f, align 8, !tbaa !26
  br label %InternalWrite.exit10

bb.c:                                             ; preds = %bb.a
  %i.g = trunc i32 %1 to i8
  store i8 %i.g, ptr %i.a, align 1, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %sext = shl i32 %1, 24
  %chari = ashr exact i32 %sext, 24
  %fputc = tail call i32 @fputc(i32 %chari, ptr %i.l) ; 0 uses
  br label %InternalWrite.exit

InternalWrite.exit:                               ; preds = %bb.d, %bb.e
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not.i8 = icmp eq ptr %i.o, null
  br i1 %.not.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %InternalWrite.exit
  %i.p = call i32 %i.o(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %1) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit10

bb.g:                                             ; preds = %InternalWrite.exit
  %i.q = sext i32 %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %i.q, ptr noundef %i.s) ; 0 uses
  br label %InternalWrite.exit10

InternalWrite.exit10:                             ; preds = %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EGifPutExtensionTrailer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.f, align 8, !tbaa !26
  br label %InternalWrite.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %fputc = tail call i32 @fputc(i32 0, ptr %i.k)  ; 0 uses
  br label %InternalWrite.exit

InternalWrite.exit:                               ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @EGifGCBToExtension(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #9 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !97
  %i.c = icmp ne i32 %i.b, -1
  %i.d = zext i1 %i.c to i8                       ; 2 uses
  store i8 %i.d, ptr %1, align 1, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !99, !range !44, !noundef !45
  %i.g = shl nuw nsw i8 %i.f, 1
  %i.h = or disjoint i8 %i.g, %i.d                ; 2 uses
  store i8 %i.h, ptr %1, align 1, !tbaa !60
  %i.i = load i32, ptr %0, align 4, !tbaa !100
end_hunk_0
