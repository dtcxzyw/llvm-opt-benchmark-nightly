Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bio_dump?download=true
inline.NumInlined: 4
begin_hunk_0_@BIO_dump_indent_cb:bb.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 6)
  %reass.sub = sub nsw i32 %.074, %i.c
  %i.d = add nsw i32 %reass.sub, 3                ; 2 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = sub nsw i32 16, %i.e                     ; 5 uses
  %i.g = sdiv i32 %3, %i.f                        ; 2 uses
  %i.h = mul nsw i32 %i.g, %i.f
  %i.i = icmp slt i32 %i.h, %3
  %i.j = zext i1 %i.i to i32
  %.069 = add nsw i32 %i.g, %i.j                  ; 2 uses
  %i.k = icmp sgt i32 %.069, 0
  br i1 %i.k, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.a
  %i.l = icmp ult i32 %i.d, 64                    ; 2 uses
  %i.m = sext i32 %i.f to i64
  %wide.trip.count113 = zext nneg i32 %.069 to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.p
  %indvars.iv110 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next111, %bb.p ] ; 2 uses
  %.07396 = phi i32 [ 0, %.lr.ph99 ], [ %i.bi, %bb.p ]
  %i.n = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.o = mul nsw i32 %i.f, %i.n                   ; 6 uses
  %i.p = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 289, ptr noundef nonnull @.str, i32 noundef %.074, ptr noundef nonnull @.str.1, i32 noundef %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %._crit_edge100, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.087 = phi i32 [ %i.p, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.t = zext nneg i32 %.087 to i64               ; 2 uses
  %i.u = add nsw i32 %.087, -290
  %i.v = icmp ult i32 %i.u, -4
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i64 %indvars.iv to i32
  %i.x = add i32 %i.o, %i.w
  %.not83 = icmp slt i32 %i.x, %3
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i32 2105376, ptr %i.y, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.ac = zext i8 %i.aa to i32
  %i.ad = icmp eq i64 %indvars.iv, 7
  %i.ae = select i1 %i.ad, i32 45, i32 32
  %i.af = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.ab, i64 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %i.ac, i32 noundef %i.ae) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add nuw nsw i32 %.087, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.1 = phi i32 [ %i.ag, %bb.g ], [ %.087, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.0.lcssa = phi i32 [ %i.p, %.preheader ], [ %.1, %bb.h ] ; 4 uses
  %i.ah = add nsw i32 %.0.lcssa, -290
  %i.ai = icmp ult i32 %i.ah, -3
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.aj = zext nneg i32 %.0.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false) #6
  %i.al = add nuw nsw i32 %.0.lcssa, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi i32 [ %i.al, %bb.i ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.not88 = icmp slt i32 %i.o, %3
  %or.cond8489 = and i1 %i.l, %.not88
  br i1 %or.cond8489, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.j
  %i.am = zext i32 %i.o to i64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph93, %bb.m
  %indvars.iv107 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next108, %bb.m ] ; 2 uses
  %.391 = phi i32 [ %.2, %.lr.ph93 ], [ %.4, %bb.m ] ; 3 uses
  %i.ao = zext nneg i32 %.391 to i64              ; 2 uses
  %i.ap = and i64 %i.ao, 2147483646
  %.not81 = icmp eq i64 %i.ap, 288
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv107
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 2 uses
  %i.as = add i8 %i.ar, -32
  %or.cond = icmp ult i8 %i.as, 95
  %narrow = select i1 %or.cond, i8 %i.ar, i8 46
  %i.at = add nuw nsw i32 %.391, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 %narrow, ptr %i.au, align 1, !tbaa !8
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.4 = phi i32 [ %i.at, %bb.l ], [ %.391, %bb.k ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %i.ax = icmp slt i64 %indvars.iv.next108, %i.m
  %i.ay = trunc i64 %indvars.iv.next108 to i32
  %i.az = add i32 %i.o, %i.ay
  %.not = icmp slt i32 %i.az, %3
  %or.cond84 = and i1 %i.ax, %.not
  br i1 %or.cond84, label %bb.k, label %._crit_edge94, !llvm.loop !11

._crit_edge94:                                    ; preds = %bb.m, %bb.j
  %.3.lcssa = phi i32 [ %.2, %bb.j ], [ %.4, %bb.m ] ; 2 uses
  %i.ba = zext nneg i32 %.3.lcssa to i64          ; 3 uses
  %i.bb = and i64 %i.ba, 2147483646
  %.not82 = icmp eq i64 %i.bb, 288
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge94
  %i.bc = add nuw nsw i32 %.3.lcssa, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  store i8 10, ptr %i.bd, align 1, !tbaa !8
  %i.be = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge94
  %.pre-phi = phi i64 [ %i.be, %bb.n ], [ %i.ba, %._crit_edge94 ]
  %i.bg = call i32 %0(ptr noundef nonnull %i.a, i64 noundef %.pre-phi, ptr noundef %1) #6 ; 3 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %._crit_edge100, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add nuw nsw i32 %i.bg, %.07396          ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge100, label %bb.b, !llvm.loop !12

._crit_edge100:                                   ; preds = %bb.b, %bb.o, %bb.p, %bb.a
  %.075 = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.p ], [ %i.bg, %bb.o ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.075
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @BIO_dump_fp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [289 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = sdiv i32 %2, 16                          ; 2 uses
  %i.c = shl nsw i32 %i.b, 4
  %i.d = icmp slt i32 %i.c, %2
  %i.e = zext i1 %i.d to i32
  %.069.i = add nsw i32 %i.b, %i.e                ; 2 uses
  %i.f = icmp sgt i32 %.069.i, 0
  br i1 %i.f, label %.lr.ph99.i, label %BIO_dump_indent_cb.exit

.lr.ph99.i:                                       ; preds = %bb.a
  %wide.trip.count113.i = zext nneg i32 %.069.i to i64
  %i.g = add i32 %2, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph99.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.o ], [ %i.g, %.lr.ph99.i ] ; 2 uses
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %bb.o ], [ 0, %.lr.ph99.i ] ; 2 uses
  %.07396.i = phi i32 [ %i.ba, %bb.o ], [ 0, %.lr.ph99.i ]
  %i.h = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 15)
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64
  %i.j = trunc nuw nsw i64 %indvars.iv110.i to i32
  %i.k = shl nuw nsw i32 %i.j, 4                  ; 4 uses
  %i.l = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 289, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %i.k) #6 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %BIO_dump_indent_cb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %.087.i = phi i32 [ %i.l, %.preheader.i ], [ %.1.i, %bb.h ] ; 4 uses
  %i.p = zext nneg i32 %.087.i to i64             ; 2 uses
  %i.q = add nsw i32 %.087.i, -290
  %i.r = icmp ult i32 %i.q, -4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %indvars.iv.i to i32
  %i.t = add i32 %i.k, %i.s
  %.not83.i = icmp slt i32 %i.t, %2
  br i1 %.not83.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i32 2105376, ptr %i.u, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.y = zext i8 %i.w to i32
  %i.z = icmp eq i64 %indvars.iv.i, 7
  %i.aa = select i1 %i.z, i32 45, i32 32
  %i.ab = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.x, i64 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %i.y, i32 noundef %i.aa) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = add nuw nsw i32 %.087.i, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.1.i = phi i32 [ %i.ac, %bb.g ], [ %.087.i, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.h
  %i.ad = add nsw i32 %.1.i, -290
  %i.ae = icmp ult i32 %i.ad, -3
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.af = zext nneg i32 %.1.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false) #6
  %i.ah = add nuw nsw i32 %.1.i, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.2.i = phi i32 [ %i.ah, %bb.i ], [ %.1.i, %._crit_edge.i ] ; 2 uses
  %.not88.i = icmp slt i32 %i.k, %2
  br i1 %.not88.i, label %.lr.ph93.i, label %._crit_edge94.i

.lr.ph93.i:                                       ; preds = %bb.j, %bb.l
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %.391.i = phi i32 [ %.4.i, %bb.l ], [ %.2.i, %bb.j ] ; 3 uses
  %i.ai = zext nneg i32 %.391.i to i64            ; 2 uses
  %i.aj = and i64 %i.ai, 2147483646
  %.not81.i = icmp eq i64 %i.aj, 288
  br i1 %.not81.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph93.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv107.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = add i8 %i.al, -32
  %or.cond.i = icmp ult i8 %i.am, 95
  %narrow.i = select i1 %or.cond.i, i8 %i.al, i8 46
  %i.an = add nuw nsw i32 %.391.i, 1              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %narrow.i, ptr %i.ao, align 1, !tbaa !8
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph93.i
  %.4.i = phi i32 [ %i.an, %bb.k ], [ %.391.i, %.lr.ph93.i ] ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next108.i, %i.i
  br i1 %exitcond.not, label %._crit_edge94.i, label %.lr.ph93.i, !llvm.loop !11

._crit_edge94.i:                                  ; preds = %bb.l, %bb.j
  %.3.lcssa.i = phi i32 [ %.2.i, %bb.j ], [ %.4.i, %bb.l ] ; 2 uses
  %i.ar = zext nneg i32 %.3.lcssa.i to i64        ; 3 uses
  %i.as = and i64 %i.ar, 2147483646
  %.not82.i = icmp eq i64 %i.as, 288
  br i1 %.not82.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge94.i
  %i.at = add nuw nsw i32 %.3.lcssa.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 10, ptr %i.au, align 1, !tbaa !8
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge94.i
  %.pre-phi.i = phi i64 [ %i.av, %bb.m ], [ %i.ar, %._crit_edge94.i ]
  %i.ax = call i64 @fwrite(ptr noundef nonnull readonly %i.a, i64 noundef %.pre-phi.i, i64 noundef 1, ptr noundef %0)
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %BIO_dump_indent_cb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %.07396.i, %i.ay        ; 2 uses
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count113.i
  %indvars.iv.next = add i32 %indvars.iv, -16
  br i1 %exitcond114.not.i, label %BIO_dump_indent_cb.exit, label %bb.b, !llvm.loop !12

BIO_dump_indent_cb.exit:                          ; preds = %bb.b, %bb.n, %bb.o, %bb.a
  %.075.i = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ %i.ay, %bb.n ], [ %i.ba, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.075.i
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @write_fp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr noundef %0, i64 noundef %1, i64 noundef 1, ptr noundef %2)
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @BIO_dump_indent_fp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BIO_dump_indent_cb(ptr noundef nonnull @write_fp, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @BIO_dump(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BIO_dump_indent_cb(ptr noundef nonnull @write_bio, ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @write_bio(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 2147483647
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i32
  %i.c = tail call i32 @BIO_write(ptr noundef %2, ptr noundef %0, i32 noundef %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @BIO_dump_indent(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BIO_dump_indent_cb(ptr noundef nonnull @write_bio, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define noundef i32 @BIO_hex_string(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %4, 1
  br i1 %i.a, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %4, -1                       ; 3 uses
  %.not34 = icmp eq i32 %4, 1
  br i1 %.not34, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64
  %.pre = load i8, ptr %3, align 1, !tbaa !8
  %i.c = zext i8 %.pre to i32
  %i.d = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.c) #6 ; 0 uses
  %.not.peel = icmp sgt i32 %2, 1
  br i1 %.not.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.peel = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]   ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.b, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.d ] ; 2 uses
  %.031 = phi i32 [ %.1, %bb.h ], [ %.1.peel, %bb.d ] ; 2 uses
  %.not38 = icmp eq i32 %.031, 0
end_hunk_0
