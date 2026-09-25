Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/str?download=true
inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@c11__unicode_index_to_byte:bb.a
  unreachable

c11__u8_header.exit:                              ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 6, %bb.f ], [ 1, %.lr.ph ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ]
  %i.s = add nuw nsw i32 %.0.i, %.08              ; 2 uses
  %i.t = add nsw i32 %.057, -1
  %i.u = icmp sgt i32 %.057, 1
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %c11__u8_header.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.s, %c11__u8_header.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define range(i32 0, 7) i32 @c11__u8_header(i8 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 5 uses
  %i.b = icmp sgt i8 %0, -1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 224
  %i.d = icmp eq i32 %i.c, 192
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.a, 240
  %i.f = icmp eq i32 %i.e, 224
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.a, 248
  %i.h = icmp eq i32 %i.g, 240
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.a, 252
  %i.j = icmp eq i32 %i.i, 248
  br i1 %i.j, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.a, 254
  %i.l = icmp eq i32 %i.k, 252                    ; 2 uses
  %brmerge = or i1 %1, %i.l
  %.mux = select i1 %i.l, i32 6, i32 0
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.m) #27 ; 0 uses
  %i.n = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #28
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %.mux, %bb.f ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @c11_sv__u8_slice(ptr %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.c11_sbuf, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @c11_sbuf__ctor(ptr noundef nonnull %5) #26
  %i.a = icmp sgt i32 %4, 0                       ; 2 uses
  %i.b = icmp slt i32 %2, %3
  %i.c = icmp sgt i32 %2, %3
  %.in10 = select i1 %i.a, i1 %i.b, i1 %i.c
  br i1 %.in10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = call ptr @c11_sbuf__submit(ptr noundef nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %i.d

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %i.h, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.e = call { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %.011) ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = extractvalue { ptr, i32 } %i.e, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %5, ptr %i.f, i32 %i.g) #26
  %i.h = add nsw i32 %.011, %4                    ; 3 uses
  %i.i = icmp slt i32 %i.h, %3
  %i.j = icmp sgt i32 %i.h, %3
  %.in = select i1 %i.a, i1 %i.i, i1 %i.j
  br i1 %.in, label %.lr.ph, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, i32 } @c11_sv__slice(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %1) ; 2 uses
  %i.a = sext i32 %spec.select.i to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = sub nsw i32 %1, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %i.c, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define { ptr, i32 } @c11_sv__strip(ptr %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader.i.i, label %c11__unicode_index_to_byte.exit59

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi121 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !13
  %wide.load122 = load <4 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.d = icmp sgt <4 x i8> %wide.load, splat (i8 -65)
  %i.e = icmp sgt <4 x i8> %wide.load122, splat (i8 -65)
  %i.f = zext <4 x i1> %i.d to <4 x i32>
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = add <4 x i32> %vec.phi, %i.f             ; 2 uses
  %i.i = add <4 x i32> %vec.phi121, %i.g          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %c11_sv__u8_length.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.k, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not.i.i = icmp sgt i8 %i.m, -65
  %i.n = zext i1 %.not.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.067.i.i, %i.n ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %c11_sv__u8_length.exit, label %.lr.ph.i.i, !llvm.loop !39

c11_sv__u8_length.exit:                           ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.k, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 7 uses
  %i.o = icmp ne i32 %spec.select.i.i.lcssa, 0
  %or.cond = select i1 %4, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph, label %c11_sv__index2.exit.thread

.lr.ph:                                           ; preds = %c11_sv__u8_length.exit
  %i.p = add i32 %3, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %c11_sv__index2.exit
  %.073 = phi i32 [ 0, %.lr.ph ], [ %i.x, %c11_sv__index2.exit ] ; 4 uses
  %i.q = tail call { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %.073) ; 2 uses
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = extractvalue { ptr, i32 } %i.q, 1        ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %c11_sv__index2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21.i = icmp slt i32 %3, %i.s
  br i1 %.not21.i, label %c11_sv__index2.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = sext i32 %i.s to i64
  %i.v = sub i32 %i.p, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.w, ptr readonly %i.r, i64 %i.u)
  %.not20.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not20.i, label %c11_sv__index2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond, label %c11_sv__index2.exit.thread, label %bb.d, !llvm.loop !0

c11_sv__index2.exit:                              ; preds = %bb.d, %bb.b
  %i.x = add nuw i32 %.073, 1                     ; 2 uses
  %exitcond87.not = icmp eq i32 %i.x, %spec.select.i.i.lcssa
  br i1 %exitcond87.not, label %.lr.ph.i51.preheader, label %bb.b

c11_sv__index2.exit.thread:                       ; preds = %bb.c, %bb.e, %c11_sv__u8_length.exit
  %.2 = phi i32 [ 0, %c11_sv__u8_length.exit ], [ %.073, %bb.e ], [ %.073, %bb.c ] ; 5 uses
  %6 = icmp slt i32 %.2, %spec.select.i.i.lcssa
  %or.cond81 = select i1 %5, i1 %6, i1 false
  br i1 %or.cond81, label %.lr.ph77, label %c11_sv__index2.exit50.thread

.lr.ph77:                                         ; preds = %c11_sv__index2.exit.thread
  %i.y = add i32 %3, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph77, %c11_sv__index2.exit50
  %.03476 = phi i32 [ %spec.select.i.i.lcssa, %.lr.ph77 ], [ %i.z, %c11_sv__index2.exit50 ] ; 3 uses
  %i.z = add nsw i32 %.03476, -1                  ; 3 uses
  %i.aa = tail call { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %i.z) ; 2 uses
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = extractvalue { ptr, i32 } %i.aa, 1      ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %c11_sv__index2.exit50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not21.i40 = icmp slt i32 %3, %i.ac
  br i1 %.not21.i40, label %c11_sv__index2.exit50.thread, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.g
  %i.ae = sext i32 %i.ac to i64
  %i.af = sub i32 %i.y, %i.ac
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i45, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i42
  %bcmp.i43 = tail call i32 @bcmp(ptr readonly %i.ag, ptr readonly %i.ab, i64 %i.ae)
  %.not20.i44 = icmp eq i32 %bcmp.i43, 0
  br i1 %.not20.i44, label %c11_sv__index2.exit50, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %lftr.wideiv88 = trunc i64 %indvars.iv.next.i45 to i32
  %exitcond89 = icmp eq i32 %i.af, %lftr.wideiv88
  br i1 %exitcond89, label %c11_sv__index2.exit50.thread, label %bb.h, !llvm.loop !0

c11_sv__index2.exit50:                            ; preds = %bb.h, %bb.f
  %i.ah = icmp slt i32 %.2, %i.z
  br i1 %i.ah, label %bb.f, label %c11_sv__index2.exit50.thread

c11_sv__index2.exit50.thread:                     ; preds = %c11_sv__index2.exit50, %bb.g, %bb.i, %c11_sv__index2.exit.thread
  %.236 = phi i32 [ %spec.select.i.i.lcssa, %c11_sv__index2.exit.thread ], [ %.03476, %bb.i ], [ %.03476, %bb.g ], [ %.2, %c11_sv__index2.exit50 ] ; 2 uses
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %c11__unicode_index_to_byte.exit, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %c11_sv__index2.exit, %c11_sv__index2.exit50.thread
  %.236110 = phi i32 [ %.236, %c11_sv__index2.exit50.thread ], [ %spec.select.i.i.lcssa, %c11_sv__index2.exit ]
  %.2100109 = phi i32 [ %.2, %c11_sv__index2.exit50.thread ], [ %spec.select.i.i.lcssa, %c11_sv__index2.exit ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %c11__u8_header.exit.i
  %.08.i = phi i32 [ %i.az, %c11__u8_header.exit.i ], [ 0, %.lr.ph.i51.preheader ] ; 2 uses
  %.057.i = phi i32 [ %i.ba, %c11__u8_header.exit.i ], [ %.2100109, %.lr.ph.i51.preheader ] ; 2 uses
  %i.ai = zext nneg i32 %.08.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13  ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 5 uses
  %i.am = icmp sgt i8 %i.ak, -1
  br i1 %i.am, label %c11__u8_header.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i51
  %i.an = and i32 %i.al, 224
  %i.ao = icmp eq i32 %i.an, 192
  br i1 %i.ao, label %c11__u8_header.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = and i32 %i.al, 240
  %i.aq = icmp eq i32 %i.ap, 224
  br i1 %i.aq, label %c11__u8_header.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = and i32 %i.al, 248
  %i.as = icmp eq i32 %i.ar, 240
  br i1 %i.as, label %c11__u8_header.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = and i32 %i.al, 252
  %i.au = icmp eq i32 %i.at, 248
  br i1 %i.au, label %c11__u8_header.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = and i32 %i.al, 254
  %i.aw = icmp eq i32 %i.av, 252
  br i1 %i.aw, label %c11__u8_header.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.ax) #27 ; 0 uses
  %i.ay = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit.i:                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph.i51
  %.0.i.i = phi i32 [ 6, %bb.n ], [ 1, %.lr.ph.i51 ], [ 2, %bb.j ], [ 3, %bb.k ], [ 4, %bb.l ], [ 5, %bb.m ]
  %i.az = add nuw nsw i32 %.0.i.i, %.08.i         ; 2 uses
  %i.ba = add nsw i32 %.057.i, -1
  %i.bb = icmp sgt i32 %.057.i, 1
  br i1 %i.bb, label %.lr.ph.i51, label %c11__unicode_index_to_byte.exit, !llvm.loop !1

c11__unicode_index_to_byte.exit:                  ; preds = %c11__u8_header.exit.i, %c11_sv__index2.exit50.thread
  %.236104 = phi i32 [ %.236, %c11_sv__index2.exit50.thread ], [ %.236110, %c11__u8_header.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %c11_sv__index2.exit50.thread ], [ %i.az, %c11__u8_header.exit.i ] ; 2 uses
  %i.bc = icmp sgt i32 %.236104, 0
  br i1 %i.bc, label %.lr.ph.i53, label %c11__unicode_index_to_byte.exit59

.lr.ph.i53:                                       ; preds = %c11__unicode_index_to_byte.exit, %c11__u8_header.exit.i57
  %.08.i54 = phi i32 [ %i.bu, %c11__u8_header.exit.i57 ], [ 0, %c11__unicode_index_to_byte.exit ] ; 2 uses
  %.057.i55 = phi i32 [ %i.bv, %c11__u8_header.exit.i57 ], [ %.236104, %c11__unicode_index_to_byte.exit ] ; 2 uses
  %i.bd = zext nneg i32 %.08.i54 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13  ; 2 uses
  %i.bg = zext i8 %i.bf to i32                    ; 5 uses
  %i.bh = icmp sgt i8 %i.bf, -1
  br i1 %i.bh, label %c11__u8_header.exit.i57, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i53
  %i.bi = and i32 %i.bg, 224
  %i.bj = icmp eq i32 %i.bi, 192
  br i1 %i.bj, label %c11__u8_header.exit.i57, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = and i32 %i.bg, 240
  %i.bl = icmp eq i32 %i.bk, 224
  br i1 %i.bl, label %c11__u8_header.exit.i57, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = and i32 %i.bg, 248
  %i.bn = icmp eq i32 %i.bm, 240
  br i1 %i.bn, label %c11__u8_header.exit.i57, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = and i32 %i.bg, 252
  %i.bp = icmp eq i32 %i.bo, 248
  br i1 %i.bp, label %c11__u8_header.exit.i57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = and i32 %i.bg, 254
  %i.br = icmp eq i32 %i.bq, 252
  br i1 %i.br, label %c11__u8_header.exit.i57, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite.i.i56 = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.bs) #27 ; 0 uses
  %i.bt = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit.i57:                          ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.lr.ph.i53
  %.0.i.i58 = phi i32 [ 6, %bb.t ], [ 1, %.lr.ph.i53 ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ]
  %i.bu = add nuw nsw i32 %.0.i.i58, %.08.i54     ; 2 uses
  %i.bv = add nsw i32 %.057.i55, -1
  %i.bw = icmp sgt i32 %.057.i55, 1
  br i1 %i.bw, label %.lr.ph.i53, label %c11__unicode_index_to_byte.exit59, !llvm.loop !1

c11__unicode_index_to_byte.exit59:                ; preds = %c11__u8_header.exit.i57, %bb.a, %c11__unicode_index_to_byte.exit
  %.0.lcssa.i106 = phi i32 [ %.0.lcssa.i, %c11__unicode_index_to_byte.exit ], [ 0, %bb.a ], [ %.0.lcssa.i, %c11__u8_header.exit.i57 ]
  %.0.lcssa.i52 = phi i32 [ 0, %c11__unicode_index_to_byte.exit ], [ 0, %bb.a ], [ %i.bu, %c11__u8_header.exit.i57 ]
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i106, i32 %1) ; 3 uses
  %.0.i = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i52, i32 %1)
  %.1.i = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %spec.select.i)
  %i.bx = sext i32 %spec.select.i to i64
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx
  %i.bz = sub nsw i32 %.1.i, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.by, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %i.bz, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483648, 2147483647) i32 @c11_sv__index(ptr nofree readonly captures(none) %0, i32 %1, i8 noundef signext %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %i.d = icmp eq i8 %i.c, %2
  br i1 %i.d, label %._crit_edge.loopexit.split.loop.exit14, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit.split.loop.exit14:           ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit14, %bb.a
  %i.f = phi i32 [ -1, %bb.a ], [ %i.e, %._crit_edge.loopexit.split.loop.exit14 ], [ -1, %bb.b ]
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2147483647) i32 @c11_sv__rindex(ptr nofree readonly captures(none) %0, i32 %1, i8 noundef signext %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.split.loop.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = icmp sgt i32 %indvars.le, 0
  br i1 %i.c, label %bb.c, label %.split.loop.exit, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv13 = phi i64 [ %i.b, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv13, -1 ; 3 uses
  %i.d = and i64 %indvars.iv.next, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, %2
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %i.g, label %.split.loop.exit, label %bb.b, !llvm.loop !2

.split.loop.exit:                                 ; preds = %bb.b, %bb.c, %bb.a
  %i.h = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le, %bb.c ]
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { ptr, i32 } @c11_sv__filename(ptr %0, i32 %1) local_unnamed_addr #13 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %c11_sv__rindex.exit

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp sgt i32 %indvars.le.i, 0
  br i1 %i.c, label %.lr.ph, label %c11_sv__rindex.exit, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.a, %bb.a ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i19, -1 ; 3 uses
  %i.d = and i64 %indvars.iv.next.i, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, 47
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  br i1 %i.g, label %c11_sv__rindex.exit, label %bb.b, !llvm.loop !2

c11_sv__rindex.exit:                              ; preds = %bb.b, %.lr.ph, %bb.a
  %i.h = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le.i, %.lr.ph ]
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph21, label %c11_sv__rindex.exit15

bb.c:                                             ; preds = %.lr.ph21
  %i.j = icmp sgt i32 %indvars.le.i14, 0
  br i1 %i.j, label %.lr.ph21, label %c11_sv__rindex.exit15, !llvm.loop !2

.lr.ph21:                                         ; preds = %c11_sv__rindex.exit, %bb.c
  %indvars.iv.i1120 = phi i64 [ %indvars.iv.next.i12, %bb.c ], [ %i.a, %c11_sv__rindex.exit ]
  %indvars.iv.next.i12 = add nsw i64 %indvars.iv.i1120, -1 ; 3 uses
  %i.k = and i64 %indvars.iv.next.i12, 4294967295
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, 92
  %indvars.le.i14 = trunc i64 %indvars.iv.next.i12 to i32 ; 2 uses
  br i1 %i.n, label %c11_sv__rindex.exit15, label %bb.c, !llvm.loop !2

c11_sv__rindex.exit15:                            ; preds = %bb.c, %.lr.ph21, %c11_sv__rindex.exit
  %i.o = phi i32 [ -1, %c11_sv__rindex.exit ], [ -1, %bb.c ], [ %indvars.le.i14, %.lr.ph21 ]
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.o) ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %c11_sv__rindex.exit15
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.p, i32 -1)
  %spec.store.select.i.i = add nsw i32 %i.r, 1
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.i, i32 %1) ; 2 uses
  %i.s = sext i32 %spec.select.i.i to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = sub nsw i32 %1, %spec.select.i.i
  br label %bb.e

bb.e:                                             ; preds = %c11_sv__rindex.exit15, %bb.d
  %.pn18 = phi ptr [ %i.t, %bb.d ], [ %0, %c11_sv__rindex.exit15 ]
  %.pn16 = phi i32 [ %i.u, %bb.d ], [ %1, %c11_sv__rindex.exit15 ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn18, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn16, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11_sv__count(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = sub nsw i32 %1, %3
  %i.c = sext i32 %3 to i64
  %i.d = add i32 %1, 1
  %i.e = sub i32 %i.d, %3
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %1, 1
  br label %c11_sv__index2.exit.thread

end_hunk_0
