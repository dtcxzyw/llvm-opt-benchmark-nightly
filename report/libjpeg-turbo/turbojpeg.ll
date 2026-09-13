Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/turbojpeg?download=true
inline.NumInlined: 92
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 47
begin_hunk_0_@tjBufSize:bb.a
  %i.w = and i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, %i.s
  %i.z = mul i64 %i.y, %i.n
  %.fr9 = freeze i64 %i.z
  %i.aa = add i64 %.fr9, 2048                     ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %tj3JPEGBufSize.exit.thread, label %bb.e

tj3JPEGBufSize.exit.thread.sink.split:            ; preds = %bb.b, %bb.a
  %tj3JPEGBufSize.FUNCTION_NAME.sink = phi ptr [ @tjBufSize.FUNCTION_NAME, %bb.a ], [ @tj3JPEGBufSize.FUNCTION_NAME, %bb.b ]
  %i.ac = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ad = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull %tj3JPEGBufSize.FUNCTION_NAME.sink, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %tj3JPEGBufSize.exit.thread

tj3JPEGBufSize.exit.thread:                       ; preds = %tj3JPEGBufSize.exit.thread.sink.split, %tj3JPEGBufSize.exit
  br label %bb.e

bb.e:                                             ; preds = %tj3JPEGBufSize.exit, %tj3JPEGBufSize.exit.thread
  %i.ae = phi i64 [ -1, %tj3JPEGBufSize.exit.thread ], [ %i.aa, %tj3JPEGBufSize.exit ]
  ret i64 %i.ae
}

; Function Attrs: nofree nounwind uwtable
define i64 @TJBUFSIZE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = icmp slt i32 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @TJBUFSIZE.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %0, 15
  %i.f = and i32 %i.e, 2147483632
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nuw nsw i32 %1, 15
  %i.i = and i32 %i.h, 2147483632
  %i.j = zext nneg i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.g, 6
  %i.l = mul i64 %i.k, %i.j
  %i.m = add i64 %i.l, 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ %i.m, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind uwtable
define i64 @tj3YUVBufSize(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %1)
  %i.c = icmp samesign ugt i32 %i.b, 1
  %i.d = icmp ugt i32 %3, 8
  %or.cond3 = or i1 %i.c, %i.d
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVBufSize.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %3, 3
  %i.g = icmp slt i32 %0, 1                       ; 2 uses
  %i.h = zext nneg i32 %0 to i64
  %i.i = zext nneg i32 %3 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.i ; 2 uses
  %i.k = add nsw i64 %i.h, -1                     ; 2 uses
  %i.l = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr) ; 6 uses
  %i.m = icmp slt i32 %2, 1
  %i.n = zext nneg i32 %2 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.i ; 2 uses
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  %i.q = sub nsw i32 0, %1
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  br i1 %i.m, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d
  br i1 %i.g, label %.sink.split.i.us, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.s = load i32, ptr %i.j, align 4, !tbaa !92
  %i.t = sdiv i32 %i.s, 8                         ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add nsw i64 %i.k, %i.u
  %i.w = sub nsw i32 0, %i.t
  %i.x = sext i32 %i.w to i64
  %i.y = and i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.y, 2147483647
  br i1 %i.z, label %.sink.split.i.us, label %tj3YUVPlaneHeight.exit.thread

.sink.split.i.us:                                 ; preds = %bb.e, %.split.us
  %.str.28.sink.i.us = phi ptr [ @.str.28, %bb.e ], [ @.str.1, %.split.us ]
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.28.sink.i.us) #25 ; 0 uses
  br label %tj3YUVPlaneHeight.exit.thread

.split:                                           ; preds = %bb.d
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split
  %i.ab = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !92
  %i.ad = sdiv i32 %i.ac, 8                       ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.p, %i.ae
  %i.ag = sub nsw i32 0, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = and i64 %i.af, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 2147483647
  br i1 %i.aj, label %tj3YUVPlaneHeight.exit.thread, label %.critedge

bb.g:                                             ; preds = %.split
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !92  ; 2 uses
  %i.al = sdiv i32 %i.ak, 8                       ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = add nsw i64 %i.k, %i.am
  %i.ao = sub nsw i32 0, %i.al
  %i.ap = sext i32 %i.ao to i64
  %i.aq = and i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = sext i32 %i.ak to i64
  %i.at = icmp ugt i64 %i.aq, 2147483647
  br i1 %i.at, label %.sink.split.i.peel, label %bb.h

.sink.split.i.peel:                               ; preds = %bb.g
  %i.au = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull @.str.28) #25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.sink.split.i.peel
  %.1.i.peel = phi i64 [ %i.aq, %bb.g ], [ 0, %.sink.split.i.peel ] ; 2 uses
  %i.av = trunc nuw nsw i64 %.1.i.peel to i32
  %i.aw = load i32, ptr %i.o, align 4, !tbaa !92  ; 2 uses
  %i.ax = sdiv i32 %i.aw, 8                       ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.p, %i.ay
  %i.ba = sub nsw i32 0, %i.ax
  %i.bb = sext i32 %i.ba to i64
  %i.bc = and i64 %i.az, %i.bb                    ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 2147483647
  br i1 %i.bd, label %tj3YUVPlaneHeight.exit.thread, label %tj3YUVPlaneHeight.exit.peel

tj3YUVPlaneHeight.exit.peel:                      ; preds = %bb.h
  %i.be = icmp ne i64 %.1.i.peel, 0
  %i.bf = icmp ne i64 %i.bc, 0
  %or.cond5.not.peel = and i1 %i.be, %i.bf
  br i1 %or.cond5.not.peel, label %bb.i, label %.critedge

bb.i:                                             ; preds = %tj3YUVPlaneHeight.exit.peel
  %narrow.peel = add nuw i32 %1, %i.av
  %i.bg = zext i32 %narrow.peel to i64
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = and i64 %i.bh, %i.r
  %i.bj = mul nuw nsw i64 %i.bc, %i.bi            ; 2 uses
  br i1 %.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.i
  %i.bk = udiv i64 %i.ar, %i.as                   ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 2147483647          ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bn = sext i32 %i.aw to i64                   ; 3 uses
  %i.bo = icmp uge i64 %i.bm, %i.bn               ; 2 uses
  br i1 %i.bl, label %.sink.split.i, label %bb.j

.sink.split.i:                                    ; preds = %.peel.next
  %i.bp = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull @.str.28) #25 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.peel.next, %.sink.split.i
  %.1.i = phi i64 [ %i.bk, %.peel.next ], [ 0, %.sink.split.i ] ; 2 uses
  %i.bq = trunc nuw nsw i64 %.1.i to i32
  %i.br = udiv i64 %i.bm, %i.bn                   ; 2 uses
  %i.bs = icmp samesign ugt i64 %i.br, 2147483647
  br i1 %i.bs, label %tj3YUVPlaneHeight.exit.thread, label %tj3YUVPlaneHeight.exit

tj3YUVPlaneHeight.exit.thread:                    ; preds = %bb.j, %bb.l, %bb.h, %bb.e, %.sink.split.i.us, %bb.f
  %.us-phi = phi ptr [ @.str.1, %bb.e ], [ @.str.29, %bb.f ], [ @.str.1, %.sink.split.i.us ], [ @.str.29, %bb.h ], [ @.str.29, %bb.l ], [ @.str.29, %bb.j ]
  %i.bt = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneHeight.FUNCTION_NAME, ptr noundef nonnull %.us-phi) #25 ; 0 uses
  br label %.critedge

tj3YUVPlaneHeight.exit:                           ; preds = %bb.j
  %i.bu = icmp ne i64 %.1.i, 0
  %or.cond5.not = and i1 %i.bu, %i.bo
  br i1 %or.cond5.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %tj3YUVPlaneHeight.exit
  %narrow = add nuw i32 %1, %i.bq
  %i.bv = zext i32 %narrow to i64
  %i.bw = add nsw i64 %i.bv, -1
  %i.bx = and i64 %i.bw, %i.r
  %i.by = mul nuw nsw i64 %i.br, %i.bx
  %i.bz = add i64 %i.by, %i.bj
  br i1 %i.bl, label %.sink.split.i.1, label %bb.l

.sink.split.i.1:                                  ; preds = %bb.k
  %i.ca = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull @.str.28) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i.1, %bb.k
  %.1.i.1 = phi i64 [ %i.bk, %bb.k ], [ 0, %.sink.split.i.1 ] ; 2 uses
  %i.cb = trunc nuw nsw i64 %.1.i.1 to i32
  %i.cc = udiv i64 %i.bm, %i.bn                   ; 2 uses
  %i.cd = icmp samesign ugt i64 %i.cc, 2147483647
  br i1 %i.cd, label %tj3YUVPlaneHeight.exit.thread, label %tj3YUVPlaneHeight.exit.1

tj3YUVPlaneHeight.exit.1:                         ; preds = %bb.l
  %i.ce = icmp ne i64 %.1.i.1, 0
  %or.cond5.not.1 = and i1 %i.ce, %i.bo
  br i1 %or.cond5.not.1, label %bb.m, label %.critedge

bb.m:                                             ; preds = %tj3YUVPlaneHeight.exit.1
  %narrow.1 = add nuw i32 %1, %i.cb
  %i.cf = zext i32 %narrow.1 to i64
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, %i.r
  %i.ci = mul nuw nsw i64 %i.cc, %i.ch
  %i.cj = add i64 %i.ci, %i.bz
  br label %.critedge

.critedge:                                        ; preds = %tj3YUVPlaneHeight.exit, %tj3YUVPlaneHeight.exit.1, %bb.m, %tj3YUVPlaneHeight.exit.peel, %bb.i, %bb.f, %tj3YUVPlaneHeight.exit.thread, %bb.c
  %.235 = phi i64 [ 0, %bb.c ], [ 0, %tj3YUVPlaneHeight.exit.thread ], [ 0, %bb.f ], [ 0, %tj3YUVPlaneHeight.exit.peel ], [ %i.bj, %bb.i ], [ %i.cj, %bb.m ], [ 0, %tj3YUVPlaneHeight.exit ], [ 0, %tj3YUVPlaneHeight.exit.1 ]
  ret i64 %.235
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, -2147483648) i32 @tj3YUVPlaneWidth(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %i.b = icmp ugt i32 %2, 8
  %or.cond3 = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %0, 0
  %or.cond = or i1 %or.cond3, %i.c
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 3
  %i.e = select i1 %i.d, i32 1, i32 3
  %.not = icmp samesign ult i32 %0, %i.e
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !92   ; 2 uses
  %i.j = sdiv i32 %i.i, 8                         ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.f, -1
  %i.m = add nsw i64 %i.l, %i.k
  %i.n = sub nsw i32 0, %i.j
  %i.o = sext i32 %i.n to i64
  %i.p = and i64 %i.m, %i.o                       ; 2 uses
  %i.q = icmp eq i32 %0, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = shl nsw i64 %i.p, 3
  %i.s = sext i32 %i.i to i64
  %i.t = udiv i64 %i.r, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.t, %bb.d ], [ %i.p, %bb.c ]  ; 2 uses
  %i.u = icmp ugt i64 %.0, 2147483647
  br i1 %i.u, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.a
  %.str.28.sink = phi ptr [ @.str.28, %bb.e ], [ @.str.1, %bb.a ], [ @.str.1, %bb.b ]
  %i.v = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.28.sink) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.1 = phi i64 [ %.0, %bb.e ], [ 0, %.sink.split ]
  %i.x = trunc nuw nsw i64 %.1 to i32
  ret i32 %i.x
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, -2147483648) i32 @tj3YUVPlaneHeight(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %i.b = icmp ugt i32 %2, 8
  %or.cond3 = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %0, 0
  %or.cond = or i1 %or.cond3, %i.c
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 3
  %i.e = select i1 %i.d, i32 1, i32 3
  %.not = icmp samesign ult i32 %0, %i.e
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !92   ; 2 uses
  %i.j = sdiv i32 %i.i, 8                         ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.f, -1
  %i.m = add nsw i64 %i.l, %i.k
  %i.n = sub nsw i32 0, %i.j
  %i.o = sext i32 %i.n to i64
  %i.p = and i64 %i.m, %i.o                       ; 2 uses
  %i.q = icmp eq i32 %0, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = shl nsw i64 %i.p, 3
  %i.s = sext i32 %i.i to i64
  %i.t = udiv i64 %i.r, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.t, %bb.d ], [ %i.p, %bb.c ]  ; 2 uses
  %i.u = icmp ugt i64 %.0, 2147483647
  br i1 %i.u, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.a
  %.str.29.sink = phi ptr [ @.str.29, %bb.e ], [ @.str.1, %bb.a ], [ @.str.1, %bb.b ]
  %i.v = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneHeight.FUNCTION_NAME, ptr noundef nonnull %.str.29.sink) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.1 = phi i64 [ %.0, %bb.e ], [ 0, %.sink.split ]
  %i.x = trunc nuw nsw i64 %.1 to i32
  ret i32 %i.x
}

; Function Attrs: nofree nounwind uwtable
define i64 @tjBufSizeYUV2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @tj3YUVBufSize(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: nofree nounwind uwtable
define i64 @tjBufSizeYUV(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @tj3YUVBufSize(i32 noundef %0, i32 noundef 4, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: nofree nounwind uwtable
define i64 @TJBUFSIZEYUV(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @tj3YUVBufSize(i32 noundef %0, i32 noundef 4, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: nofree nounwind uwtable
define range(i64 0, 4611686014132420610) i64 @tj3YUVPlaneSize(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %i.b = icmp slt i32 %3, 1
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ugt i32 %4, 8
  %or.cond5 = or i1 %or.cond, %i.c
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneSize.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %0, 0
  br i1 %i.f, label %tj3YUVPlaneHeight.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %4, 3
  %i.h = select i1 %i.g, i32 1, i32 3
  %.not.i = icmp samesign ult i32 %0, %i.h
  br i1 %.not.i, label %bb.e, label %tj3YUVPlaneHeight.exit.thread.sink.split

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %1 to i64
  %i.j = zext nneg i32 %4 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92   ; 2 uses
  %i.m = sdiv i32 %i.l, 8                         ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.i, -1
end_hunk_0
begin_hunk_1_@tj3DecompressToYUV8:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.as, ptr %i.at, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !84
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.bc = load <2 x i16>, ptr %i.ba, align 4, !tbaa !106
  %i.bd = zext <2 x i16> %i.bc to <2 x i32>
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 898
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !131
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !87
  %i.bi = icmp eq i32 %i.t, -1
  br i1 %i.bi, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %setDecompParameters.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !133 ; 2 uses
  %i.bl = mul i32 %i.bk, %i.w
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1884
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !134 ; 3 uses
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  %i.bp = add i32 %i.bo, %i.bl
  %i.bq = udiv i32 %i.bp, %i.bn                   ; 3 uses
  %i.br = mul i32 %i.bk, %i.z
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = udiv i32 %i.bs, %i.bn                   ; 3 uses
  %i.bu = icmp slt i32 %i.bq, 1                   ; 2 uses
  %i.bv = icmp ugt i32 %i.t, 8
  %or.cond3.i = or i1 %i.bv, %i.bu
  br i1 %or.cond3.i, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = zext nneg i32 %i.bq to i64
  %i.bx = zext nneg i32 %i.t to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !92
  %i.ca = sdiv i32 %i.bz, 8                       ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = add nsw i64 %i.bw, -1
  %i.cd = add nsw i64 %i.cc, %i.cb
  %i.ce = sub nsw i32 0, %i.ca
  %i.cf = sext i32 %i.ce to i64
  %i.cg = and i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 2147483647
  br i1 %i.ch, label %.sink.split.i, label %tj3YUVPlaneWidth.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.str.28.sink.i = phi ptr [ @.str.28, %bb.i ], [ @.str.1, %bb.h ]
  %i.ci = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.cj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ci, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.28.sink.i) #25 ; 0 uses
  %.pre = load i32, ptr %i.u, align 4, !tbaa !76
  br label %tj3YUVPlaneWidth.exit

tj3YUVPlaneWidth.exit:                            ; preds = %bb.i, %.sink.split.i
  %i.ck = phi i32 [ %i.t, %bb.i ], [ %.pre, %.sink.split.i ] ; 3 uses
  %.1.i = phi i64 [ %i.cg, %bb.i ], [ 0, %.sink.split.i ]
  %i.cl = trunc nuw nsw i64 %.1.i to i32
  %i.cm = icmp slt i32 %i.bt, 1                   ; 2 uses
  %i.cn = icmp ugt i32 %i.ck, 8
  %or.cond3.i83 = or i1 %i.cm, %i.cn
  br i1 %or.cond3.i83, label %.sink.split.i84, label %bb.j

bb.j:                                             ; preds = %tj3YUVPlaneWidth.exit
  %i.co = zext nneg i32 %i.bt to i64
  %i.cp = zext nneg i32 %i.ck to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !92
  %i.cs = sdiv i32 %i.cr, 8                       ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = add nsw i64 %i.co, -1
  %i.cv = add nsw i64 %i.cu, %i.ct
  %i.cw = sub nsw i32 0, %i.cs
  %i.cx = sext i32 %i.cw to i64
  %i.cy = and i64 %i.cv, %i.cx                    ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, 2147483647
  br i1 %i.cz, label %.sink.split.i84, label %tj3YUVPlaneHeight.exit

.sink.split.i84:                                  ; preds = %bb.j, %tj3YUVPlaneWidth.exit
  %.str.29.sink.i = phi ptr [ @.str.29, %bb.j ], [ @.str.1, %tj3YUVPlaneWidth.exit ]
  %i.da = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.db = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.da, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneHeight.FUNCTION_NAME, ptr noundef nonnull %.str.29.sink.i) #25 ; 0 uses
  %.pre106 = load i32, ptr %i.u, align 4, !tbaa !76
  br label %tj3YUVPlaneHeight.exit

tj3YUVPlaneHeight.exit:                           ; preds = %bb.j, %.sink.split.i84
  %i.dc = phi i32 [ %i.ck, %bb.j ], [ %.pre106, %.sink.split.i84 ] ; 4 uses
  %.1.i85 = phi i64 [ %i.cy, %bb.j ], [ 0, %.sink.split.i84 ] ; 2 uses
  %i.dd = trunc nuw nsw i64 %.1.i85 to i32
  store ptr %3, ptr %i.a, align 16, !tbaa !57
  %i.de = add nsw i32 %4, -1                      ; 2 uses
  %i.df = add nuw i32 %i.de, %i.cl
  %i.dg = sub nsw i32 0, %4                       ; 2 uses
  %i.dh = and i32 %i.df, %i.dg                    ; 3 uses
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !92
  %i.di = icmp eq i32 %i.dc, 3
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %tj3YUVPlaneHeight.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.dj, align 4, !tbaa !92
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.dk, align 4, !tbaa !92
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %tj3YUVPlaneHeight.exit
  %i.dm = icmp ugt i32 %i.dc, 8
  %or.cond3.i86 = or i1 %i.bu, %i.dm
  br i1 %or.cond3.i86, label %.sink.split.i87, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = zext nneg i32 %i.bq to i64
  %i.do = zext nneg i32 %i.dc to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !92 ; 2 uses
  %i.dr = sdiv i32 %i.dq, 8                       ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i64 %i.dn, -1
  %i.du = add nsw i64 %i.dt, %i.ds
  %i.dv = sub nsw i32 0, %i.dr
  %i.dw = sext i32 %i.dv to i64
  %i.dx = and i64 %i.du, %i.dw
  %i.dy = shl nsw i64 %i.dx, 3
  %i.dz = sext i32 %i.dq to i64
  %i.ea = udiv i64 %i.dy, %i.dz                   ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 2147483647
  br i1 %i.eb, label %.sink.split.i87, label %tj3YUVPlaneWidth.exit90

.sink.split.i87:                                  ; preds = %bb.m, %bb.l
  %.str.28.sink.i88 = phi ptr [ @.str.28, %bb.m ], [ @.str.1, %bb.l ]
  %i.ec = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ed = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ec, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.28.sink.i88) #25 ; 0 uses
  %.pre107 = load i32, ptr %i.u, align 4, !tbaa !76
  br label %tj3YUVPlaneWidth.exit90

tj3YUVPlaneWidth.exit90:                          ; preds = %bb.m, %.sink.split.i87
  %i.ee = phi i32 [ %i.dc, %bb.m ], [ %.pre107, %.sink.split.i87 ] ; 3 uses
  %.1.i89 = phi i64 [ %i.ea, %bb.m ], [ 0, %.sink.split.i87 ]
  %i.ef = trunc nuw nsw i64 %.1.i89 to i32
  %i.eg = icmp ugt i32 %i.ee, 8
  %.not105 = icmp eq i32 %i.ee, 3
  %i.eh = or i1 %i.eg, %.not105
  %or.cond = or i1 %i.eh, %i.cm
  br i1 %or.cond, label %.sink.split.i93, label %bb.n

bb.n:                                             ; preds = %tj3YUVPlaneWidth.exit90
  %i.ei = zext nneg i32 %i.bt to i64
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !92 ; 2 uses
  %i.em = sdiv i32 %i.el, 8                       ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = add nsw i64 %i.ei, -1
  %i.ep = add nsw i64 %i.eo, %i.en
  %i.eq = sub nsw i32 0, %i.em
  %i.er = sext i32 %i.eq to i64
  %i.es = and i64 %i.ep, %i.er
  %i.et = shl nsw i64 %i.es, 3
  %i.eu = sext i32 %i.el to i64
  %i.ev = udiv i64 %i.et, %i.eu                   ; 2 uses
  %i.ew = icmp ugt i64 %i.ev, 2147483647
  br i1 %i.ew, label %.sink.split.i93, label %tj3YUVPlaneHeight.exit96

.sink.split.i93:                                  ; preds = %bb.n, %tj3YUVPlaneWidth.exit90
  %.str.29.sink.i94 = phi ptr [ @.str.29, %bb.n ], [ @.str.1, %tj3YUVPlaneWidth.exit90 ]
  %i.ex = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ey = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ex, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneHeight.FUNCTION_NAME, ptr noundef nonnull %.str.29.sink.i94) #25 ; 0 uses
  br label %tj3YUVPlaneHeight.exit96

tj3YUVPlaneHeight.exit96:                         ; preds = %bb.n, %.sink.split.i93
  %.1.i95 = phi i64 [ %i.ev, %bb.n ], [ 0, %.sink.split.i93 ] ; 2 uses
  %i.ez = add nuw i32 %i.de, %i.ef
  %i.fa = and i32 %i.ez, %i.dg                    ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !92
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !92
  %i.fd = zext nneg i32 %i.dh to i64
  %i.fe = mul nuw nsw i64 %.1.i85, %i.fd
  %i.ff = icmp samesign ugt i64 %i.fe, 2147483647
  %i.fg = zext nneg i32 %i.fa to i64
  %i.fh = mul nuw nsw i64 %.1.i95, %i.fg
  %i.fi = icmp samesign ugt i64 %i.fh, 2147483647
  %or.cond82 = select i1 %i.ff, i1 true, i1 %i.fi
  br i1 %or.cond82, label %.sink.split, label %.thread

.thread:                                          ; preds = %tj3YUVPlaneHeight.exit96
  %i.fj = trunc nuw nsw i64 %.1.i95 to i32
  %i.fk = mul nsw i32 %i.dh, %i.dd
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !57
  %i.fo = mul nsw i32 %i.fa, %i.fj
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.fq, ptr %i.fr, align 16, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.k
  %i.fs = call i32 @tj3DecompressToYUVPlanes8(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %bb.r

.sink.split:                                      ; preds = %tj3YUVPlaneHeight.exit96, %setDecompParameters.exit, %bb.c
  %.str.49.sink123 = phi ptr [ @.str.54, %setDecompParameters.exit ], [ @.str.1, %bb.c ], [ @.str.49, %tj3YUVPlaneHeight.exit96 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.fu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ft, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUV8.FUNCTION_NAME, ptr noundef nonnull %.str.49.sink123) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !69
  %i.fv = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.fw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fv, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUV8.FUNCTION_NAME, ptr noundef nonnull %.str.49.sink123) #25 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.d
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !119
  %i.fz = icmp sgt i32 %i.fy, 200
  br i1 %i.fz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.e) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.b
  %.067 = phi i32 [ -1, %bb.b ], [ %i.fs, %bb.o ], [ -1, %bb.q ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjDecompressToYUV2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tjDecompressToYUV2.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = and i32 %i.g, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %1, null
  %i.k = icmp eq i64 %2, 0
  %or.cond = or i1 %i.j, %i.k
  %i.l = or i32 %6, %4
  %i.m = icmp slt i32 %i.l, 0
  %or.cond5 = or i1 %or.cond, %i.m
  br i1 %or.cond5, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.o = call i32 @_setjmp(ptr noundef nonnull %i.n) #26
  %.not75 = icmp eq i32 %i.o, 0
  br i1 %.not75, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.p = call i32 @jpeg_read_header(ptr noundef nonnull %i.c, i32 noundef 1) #25 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.r = load i32, ptr %i.q, align 8, !tbaa !164  ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165  ; 17 uses
  %i.u = icmp eq i32 %4, 0
  %spec.select = select i1 %i.u, i32 %i.r, i32 %4 ; 16 uses
  %i.v = icmp eq i32 %6, 0
  %.068 = select i1 %i.v, i32 %i.t, i32 %6        ; 16 uses
  %i.w = shl nsw i32 %i.r, 1
  %.not76 = icmp sgt i32 %i.w, %spec.select
  %i.x = shl nsw i32 %i.t, 1
  %.not77 = icmp sgt i32 %i.x, %.068
  %or.cond85 = select i1 %.not76, i1 true, i1 %.not77
  br i1 %or.cond85, label %bb.g, label %bb.aj

bb.g:                                             ; preds = %bb.f
  %i.y = mul nsw i32 %i.r, 15
  %i.z = add i32 %i.y, 7
  %i.aa = sdiv i32 %i.z, 8
  %.not76.1 = icmp sgt i32 %i.aa, %spec.select
  br i1 %.not76.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = mul nsw i32 %i.t, 15
  %i.ac = add i32 %i.ab, 7
  %i.ad = sdiv i32 %i.ac, 8
  %.not77.1 = icmp sgt i32 %i.ad, %.068
  br i1 %.not77.1, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = mul nsw i32 %i.r, 7                     ; 2 uses
  %i.af = add i32 %i.ae, 3
  %i.ag = sdiv i32 %i.af, 4
  %.not76.2 = icmp sgt i32 %i.ag, %spec.select
  br i1 %.not76.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = mul nsw i32 %i.t, 7
  %i.ai = add i32 %i.ah, 3
  %i.aj = sdiv i32 %i.ai, 4
  %.not77.2 = icmp sgt i32 %i.aj, %.068
  br i1 %.not77.2, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = mul nsw i32 %i.r, 13
  %i.al = add i32 %i.ak, 7
  %i.am = sdiv i32 %i.al, 8
  %.not76.3 = icmp sgt i32 %i.am, %spec.select
  br i1 %.not76.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = mul nsw i32 %i.t, 13
  %i.ao = add i32 %i.an, 7
  %i.ap = sdiv i32 %i.ao, 8
  %.not77.3 = icmp sgt i32 %i.ap, %.068
  br i1 %.not77.3, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = mul nsw i32 %i.r, 3                     ; 3 uses
  %i.ar = add i32 %i.aq, 1
  %i.as = sdiv i32 %i.ar, 2
  %.not76.4 = icmp sgt i32 %i.as, %spec.select
  br i1 %.not76.4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = mul nsw i32 %i.t, 3
  %i.au = add i32 %i.at, 1
  %i.av = sdiv i32 %i.au, 2
  %.not77.4 = icmp sgt i32 %i.av, %.068
  br i1 %.not77.4, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = mul nsw i32 %i.r, 11
  %i.ax = add i32 %i.aw, 7
  %i.ay = sdiv i32 %i.ax, 8
  %.not76.5 = icmp sgt i32 %i.ay, %spec.select
  br i1 %.not76.5, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = mul nsw i32 %i.t, 11
  %i.ba = add i32 %i.az, 7
  %i.bb = sdiv i32 %i.ba, 8
  %.not77.5 = icmp sgt i32 %i.bb, %.068
  br i1 %.not77.5, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = mul nsw i32 %i.r, 5                     ; 2 uses
  %i.bd = add i32 %i.bc, 3
  %i.be = sdiv i32 %i.bd, 4
  %.not76.6 = icmp sgt i32 %i.be, %spec.select
  br i1 %.not76.6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = mul nsw i32 %i.t, 5
  %i.bg = add i32 %i.bf, 3
  %i.bh = sdiv i32 %i.bg, 4
  %.not77.6 = icmp sgt i32 %i.bh, %.068
  br i1 %.not77.6, label %bb.s, label %bb.aj

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = mul nsw i32 %i.r, 9
  %i.bj = add i32 %i.bi, 7
  %i.bk = sdiv i32 %i.bj, 8
  %.not76.7 = icmp sgt i32 %i.bk, %spec.select
  br i1 %.not76.7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = mul nsw i32 %i.t, 9
  %i.bm = add i32 %i.bl, 7
  %i.bn = sdiv i32 %i.bm, 8
  %.not77.7 = icmp sgt i32 %i.bn, %.068
  br i1 %.not77.7, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not76.8 = icmp sgt i32 %i.r, %spec.select
  %.not77.8 = icmp sgt i32 %i.t, %.068
  %or.cond86 = select i1 %.not76.8, i1 true, i1 %.not77.8
  br i1 %or.cond86, label %bb.v, label %bb.aj

bb.v:                                             ; preds = %bb.u
  %i.bo = add i32 %i.ae, 7
  %i.bp = sdiv i32 %i.bo, 8
  %.not76.9 = icmp sgt i32 %i.bp, %spec.select
end_hunk_1
