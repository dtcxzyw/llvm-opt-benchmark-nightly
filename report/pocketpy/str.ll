Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/str?download=true
inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@c11_sv__hash:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi i64 [ 5381, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.067.epil = phi i64 [ %.067.epil.init, %.lr.ph.epil.preheader ], [ %i.g, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = mul i64 %.067.epil, 33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = add i64 %i.c, %i.f                       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.06.lcssa = phi i64 [ 5381, %bb.a ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  ret i64 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.067 = phi i64 [ 5381, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = mul i64 %.067, 33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  %i.m = mul i64 %i.l, 33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  %i.r = add i64 %i.m, %i.q
  %i.s = mul i64 %i.r, 33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = add i64 %i.s, %i.w
  %i.y = mul i64 %i.x, 33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !42
}

; Function Attrs: nounwind uwtable
define void @c11_sv__splitwhitespace(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2) local_unnamed_addr #5 {
bb.a:
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ] ; 3 uses
  %.not = icmp sgt i32 %.018.lcssa, %2
  br i1 %.not, label %bb.j, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.f ] ; 4 uses
  %.01821 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !48
  %i.k = and i16 %i.j, 8192
  %.not20 = icmp eq i16 %i.k, 0
  br i1 %.not20, label %._crit_edge25, label %bb.c

._crit_edge25:                                    ; preds = %bb.b
  %.pre26 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %.01821 to i64
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = sub nsw i32 %i.n, %.01821
  %i.p = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !22
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.s) #26
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %.pre, %bb.d ], [ %i.p, %bb.c ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !23
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v ; 3 uses
  store ptr %i.m, ptr %i.w, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.o, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %i.x = load i32, ptr %i.c, align 8, !tbaa !21
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.c, align 8, !tbaa !21
  %i.z = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge25, %bb.e
  %indvars.iv.next.pre-phi = phi i64 [ %.pre26, %._crit_edge25 ], [ %i.z, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.01821, %._crit_edge25 ], [ %i.aa, %bb.e ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !44

bb.g:                                             ; preds = %._crit_edge
  %i.ab = sext i32 %.018.lcssa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = sub nsw i32 %2, %.018.lcssa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.aj) #26
  %.pre24 = load i32, ptr %i.ae, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %.pre24, %bb.h ], [ %i.af, %bb.g ]
  %i.al = load ptr, ptr %0, align 8, !tbaa !23
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ao = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ae, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

declare void @c11_vector__ctor(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

declare void @c11_vector__reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @c11_vector__nextcap(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @c11_sv__splitlines(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.u
  %.07188 = phi i32 [ 0, %.preheader.lr.ph ], [ %.5, %bb.u ] ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.u, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader, %bb.l
  %.187 = phi i32 [ %.07188, %.preheader ], [ %i.al, %bb.l ] ; 12 uses
  %i.d = sext i32 %.187 to i64
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 5 uses
  %i.h = icmp sgt i8 %i.f, -1
  br i1 %i.h, label %c11__u8_header.exit.jt6, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.g, 224
  %i.j = icmp eq i32 %i.i, 192
  br i1 %i.j, label %c11__u8_header.exit.jt2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.g, 240
  %i.l = icmp eq i32 %i.k, 224
  br i1 %i.l, label %c11__u8_header.exit.jt3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.g, 248
  %i.n = icmp eq i32 %i.m, 240
  br i1 %i.n, label %c11__u8_header.exit.jt6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %i.g, 252
  %i.p = icmp eq i32 %i.o, 248
  br i1 %i.p, label %c11__u8_header.exit.jt6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %i.g, 254
  %i.r = icmp eq i32 %i.q, 252
  br i1 %i.r, label %c11__u8_header.exit.jt6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.s) #27 ; 0 uses
  %i.t = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit.jt6:                          ; preds = %bb.f, %bb.e, %bb.b, %bb.g
  %.0.i.jt6 = phi i32 [ 6, %bb.g ], [ 1, %bb.b ], [ 4, %bb.e ], [ 5, %bb.f ] ; 8 uses
  switch i8 %i.f, label %bb.l [
    i8 30, label %.thread
    i8 29, label %.thread
    i8 28, label %.thread
    i8 13, label %.thread
    i8 12, label %.thread
    i8 11, label %.thread
    i8 10, label %.thread
  ]

c11__u8_header.exit.jt2:                          ; preds = %bb.c
  %i.u = add nsw i32 %.187, 1                     ; 2 uses
  %i.v = icmp slt i32 %i.u, %2
  %i.w = icmp eq i8 %i.f, -62
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %c11__u8_header.exit.jt2
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = icmp eq i8 %i.z, -123
  br i1 %i.aa, label %.thread, label %bb.l

c11__u8_header.exit.jt3:                          ; preds = %bb.d
  %i.ab = add nsw i32 %.187, 2                    ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %2
  %i.ad = icmp eq i8 %i.f, -30
  %or.cond20 = and i1 %i.ac, %i.ad
  br i1 %or.cond20, label %bb.j, label %bb.l

bb.j:                                             ; preds = %c11__u8_header.exit.jt3
  %i.ae = getelementptr i8, ptr %i.e, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = icmp eq i8 %i.af, -128
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = sext i32 %i.ab to i64
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = and i8 %i.aj, -2
  %switch = icmp eq i8 %i.ak, -88
  br i1 %switch, label %.thread, label %bb.l

bb.l:                                             ; preds = %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt3, %bb.j, %bb.i, %bb.k, %c11__u8_header.exit.jt2
  %.0.i94 = phi i32 [ 2, %c11__u8_header.exit.jt2 ], [ 3, %c11__u8_header.exit.jt3 ], [ 3, %bb.j ], [ 2, %bb.i ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ 3, %bb.k ]
  %i.al = add nsw i32 %.0.i94, %.187              ; 4 uses
  %i.am = icmp slt i32 %i.al, %2
  br i1 %i.am, label %bb.b, label %bb.s

.thread:                                          ; preds = %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %bb.k, %bb.i
  %.274.ph = phi i32 [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ 2, %bb.i ], [ 3, %bb.k ]
  %i.an = icmp slt i32 %.187, %2
  br i1 %i.an, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.thread
  %i.ao = sext i32 %.187 to i64
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = icmp eq i8 %i.aq, 13
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %.187, 1                    ; 2 uses
  %i.at = icmp slt i32 %i.as, %2
  br i1 %i.at, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = icmp eq i8 %i.aw, 10
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %.187, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.az = add nsw i32 %.274.ph, %.187
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4 = phi i32 [ %i.ay, %bb.p ], [ %i.az, %bb.q ] ; 2 uses
  %spec.select = select i1 %3, i32 %.4, i32 %.187
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %.thread
  %.075 = phi i32 [ %.187, %.thread ], [ %spec.select, %bb.r ], [ %i.al, %bb.l ]
  %.5 = phi i32 [ %.187, %.thread ], [ %.4, %bb.r ], [ %i.al, %bb.l ] ; 2 uses
  %i.ba = sext i32 %.07188 to i64
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.ba
  %i.bc = sub nsw i32 %.075, %.07188
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.be = load i32, ptr %i.c, align 4, !tbaa !22
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.bg) #26
  %.pre = load i32, ptr %i.b, align 8, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = phi i32 [ %.pre, %bb.t ], [ %i.bd, %bb.s ]
  %i.bi = load ptr, ptr %0, align 8, !tbaa !23
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  store ptr %i.bb, ptr %i.bk, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.bl = load i32, ptr %i.b, align 8, !tbaa !21
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.b, align 8, !tbaa !21
  %i.bn = icmp slt i32 %.5, %2
  br i1 %i.bn, label %.preheader, label %._crit_edge, !llvm.loop !49
}

; Function Attrs: nounwind uwtable
define void @c11_sv__split(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, i8 noundef signext %3) local_unnamed_addr #5 {
bb.a:
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ] ; 3 uses
  %.not = icmp sgt i32 %.019.lcssa, %2
  br i1 %.not, label %bb.j, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.f ] ; 4 uses
  %.01921 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp eq i8 %i.e, %3
  br i1 %i.f, label %bb.c, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.b
  %.pre26 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %.01921 to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = sub nsw i32 %i.i, %.01921
  %i.k = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !22
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.n) #26
  %.pre = load i32, ptr %i.b, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %.pre, %bb.d ], [ %i.k, %bb.c ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  store ptr %i.h, ptr %i.r, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.j, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %i.s = load i32, ptr %i.b, align 8, !tbaa !21
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !21
  %i.u = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge25, %bb.e
  %indvars.iv.next.pre-phi = phi i64 [ %.pre26, %._crit_edge25 ], [ %i.u, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.01921, %._crit_edge25 ], [ %i.v, %bb.e ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !50

bb.g:                                             ; preds = %._crit_edge
  %i.w = sext i32 %.019.lcssa to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = sub nsw i32 %2, %.019.lcssa
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.ae) #26
  %.pre24 = load i32, ptr %i.z, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi i32 [ %.pre24, %bb.h ], [ %i.aa, %bb.g ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !23
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  store ptr %i.x, ptr %i.ai, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !21
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.z, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @c11_sv__split2(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, ptr nofree readonly captures(none) %3, i32 %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !13
  tail call void @c11_sv__split(ptr dead_on_unwind writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, i8 noundef signext %i.b)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.c = icmp eq i32 %4, 0
  %i.d = sub nsw i32 %2, %4                       ; 2 uses
  %i.e = sext i32 %4 to i64
  %i.f = add i32 %2, 1
  %i.g = sub i32 %i.f, %4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  br i1 %i.c, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !22
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %.split.us.sink.split, label %.split.us.preheader64

.split.us.sink.split:                             ; preds = %.split.us, %.split.us.preheader
  %i.m = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.m) #26
  %.pre44 = load i32, ptr %i.h, align 8, !tbaa !21
  br label %.split.us.preheader64

.split.us.preheader64:                            ; preds = %.split.us.preheader, %.split.us.sink.split
  %.sink.ph = phi i32 [ %.pre44, %.split.us.sink.split ], [ %i.j, %.split.us.preheader ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader64, %.split.us
  %.sink = phi i32 [ %i.r, %.split.us ], [ %.sink.ph, %.split.us.preheader64 ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = sext i32 %.sink to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o ; 3 uses
  store ptr %1, ptr %i.p, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx.us, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx.us, align 4
  %i.q = load i32, ptr %i.h, align 8, !tbaa !21
  %i.r = add nsw i32 %i.q, 1                      ; 3 uses
  store i32 %i.r, ptr %i.h, align 8, !tbaa !21
  %i.s = load i32, ptr %i.i, align 4, !tbaa !22
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %.split.us.sink.split, label %.split.us

.split:                                           ; preds = %bb.c
  %.not21.i34 = icmp slt i32 %i.d, 0
  br i1 %.not21.i34, label %c11_sv__index2.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.02335 = phi i32 [ %i.ak, %bb.h ], [ 0, %.split ] ; 4 uses
  %i.u = sext i32 %.02335 to i64                  ; 2 uses
  br label %bb.d

end_hunk_0
