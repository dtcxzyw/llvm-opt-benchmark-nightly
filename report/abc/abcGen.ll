inline.NumInlined: 292
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Abc_GenMesh:bb.a
  %i.w = add nsw i32 %1, -1                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge100
  %.2101 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.y, %._crit_edge100 ] ; 30 uses
  %i.x = icmp eq i32 %.2101, %i.u
  %i.y = add nuw nsw i32 %.2101, 1                ; 4 uses
  %.fr = freeze i1 %i.x
  br i1 %.fr, label %.lr.ph99.split.us.preheader, label %.lr.ph99.split.preheader

.lr.ph99.split.preheader:                         ; preds = %.preheader
  br i1 %.not, label %._crit_edge100.loopexit104.peel.begin, label %.lr.ph99.split.preheader.split

.lr.ph99.split.us.preheader:                      ; preds = %.preheader
  br i1 %.not124, label %._crit_edge100.loopexit.peel.begin, label %.lr.ph99.split.us.preheader.split

.lr.ph99.split.us.preheader.split:                ; preds = %.lr.ph99.split.us.preheader, %.lr.ph99.split.us.preheader.split
  %.198.us = phi i32 [ %i.ae, %.lr.ph99.split.us.preheader.split ], [ 0, %.lr.ph99.split.us.preheader ] ; 8 uses
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.91, i64 12, i64 1, ptr %i.a) ; 0 uses
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.92, i32 noundef %.2101, i32 noundef %.198.us) #22 ; 0 uses
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.93, i32 noundef %.2101, i32 noundef %.198.us) #22 ; 0 uses
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.94, i32 noundef %.2101, i32 noundef %.198.us) #22 ; 0 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, i32 noundef %.2101, i32 noundef %.198.us) #22 ; 0 uses
  %i.ae = add nuw nsw i32 %.198.us, 1             ; 3 uses
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.97, i32 noundef %.2101, i32 noundef %i.ae) #22 ; 0 uses
  %i.ag = add nuw nsw i32 %.198.us, %1
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.98, i32 noundef %i.ag) #22 ; 0 uses
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.100, i32 noundef %.2101, i32 noundef %.198.us) #22 ; 0 uses
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.101, i32 noundef %.2101, i32 noundef %.198.us) #22 ; 0 uses
  %fputc89.us = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %exitcond108.not = icmp eq i32 %i.ae, %i.w
  br i1 %exitcond108.not, label %._crit_edge100.loopexit.peel.begin, label %.lr.ph99.split.us.preheader.split, !llvm.loop !39

.lr.ph99.split.preheader.split:                   ; preds = %.lr.ph99.split.preheader, %.lr.ph99.split.preheader.split
  %.198 = phi i32 [ %i.ap, %.lr.ph99.split.preheader.split ], [ 0, %.lr.ph99.split.preheader ] ; 9 uses
  %i.ak = tail call i64 @fwrite(ptr nonnull @.str.91, i64 12, i64 1, ptr %i.a) ; 0 uses
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.92, i32 noundef %.2101, i32 noundef %.198) #22 ; 0 uses
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.93, i32 noundef %.2101, i32 noundef %.198) #22 ; 0 uses
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.94, i32 noundef %.2101, i32 noundef %.198) #22 ; 0 uses
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, i32 noundef %.2101, i32 noundef %.198) #22 ; 0 uses
  %i.ap = add nuw nsw i32 %.198, 1                ; 3 uses
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.97, i32 noundef %.2101, i32 noundef %i.ap) #22 ; 0 uses
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.99, i32 noundef %i.y, i32 noundef %.198) #22 ; 0 uses
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.100, i32 noundef %.2101, i32 noundef %.198) #22 ; 0 uses
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.101, i32 noundef %.2101, i32 noundef %.198) #22 ; 0 uses
  %fputc89 = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %exitcond107.not = icmp eq i32 %.198, %i.v
  br i1 %exitcond107.not, label %._crit_edge100.loopexit104.peel.begin, label %.lr.ph99.split.preheader.split, !llvm.loop !41

._crit_edge100.loopexit.peel.begin:               ; preds = %.lr.ph99.split.us.preheader.split, %.lr.ph99.split.us.preheader
  %i.au = phi i32 [ 0, %.lr.ph99.split.us.preheader ], [ %i.w, %.lr.ph99.split.us.preheader.split ] ; 8 uses
  %i.av = tail call i64 @fwrite(ptr nonnull @.str.91, i64 12, i64 1, ptr %i.a) ; 0 uses
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.92, i32 noundef %.2101, i32 noundef %i.au) #22 ; 0 uses
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.93, i32 noundef %.2101, i32 noundef %i.au) #22 ; 0 uses
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.94, i32 noundef %.2101, i32 noundef %i.au) #22 ; 0 uses
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, i32 noundef %.2101, i32 noundef %i.au) #22 ; 0 uses
  %i.ba = icmp eq i32 %i.au, %i.u
  br i1 %i.ba, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge100.loopexit.peel.begin
  %i.bb = add nuw nsw i32 %i.au, 1
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.97, i32 noundef %.2101, i32 noundef %i.bb) #22 ; 0 uses
  br label %._crit_edge100.loopexit.peel.next

bb.d:                                             ; preds = %._crit_edge100.loopexit.peel.begin
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.96, i32 noundef %.2101) #22 ; 0 uses
  br label %._crit_edge100.loopexit.peel.next

._crit_edge100.loopexit.peel.next:                ; preds = %bb.d, %bb.c
  %i.be = add nuw nsw i32 %i.au, %1
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.98, i32 noundef %i.be) #22 ; 0 uses
  br label %._crit_edge100

._crit_edge100.loopexit104.peel.begin:            ; preds = %.lr.ph99.split.preheader.split, %.lr.ph99.split.preheader
  %i.bg = phi i32 [ 0, %.lr.ph99.split.preheader ], [ %i.ap, %.lr.ph99.split.preheader.split ] ; 8 uses
  %i.bh = tail call i64 @fwrite(ptr nonnull @.str.91, i64 12, i64 1, ptr %i.a) ; 0 uses
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.92, i32 noundef %.2101, i32 noundef %i.bg) #22 ; 0 uses
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.93, i32 noundef %.2101, i32 noundef %i.bg) #22 ; 0 uses
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.94, i32 noundef %.2101, i32 noundef %i.bg) #22 ; 0 uses
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, i32 noundef %.2101, i32 noundef %i.bg) #22 ; 0 uses
  %i.bm = icmp eq i32 %i.bg, %i.u
  br i1 %i.bm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge100.loopexit104.peel.begin
  %i.bn = add nuw nsw i32 %i.bg, 1
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.97, i32 noundef %.2101, i32 noundef %i.bn) #22 ; 0 uses
  br label %._crit_edge100.loopexit104.peel.next

bb.f:                                             ; preds = %._crit_edge100.loopexit104.peel.begin
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.96, i32 noundef %.2101) #22 ; 0 uses
  br label %._crit_edge100.loopexit104.peel.next

._crit_edge100.loopexit104.peel.next:             ; preds = %bb.f, %bb.e
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.99, i32 noundef %i.y, i32 noundef %i.bg) #22 ; 0 uses
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit104.peel.next, %._crit_edge100.loopexit.peel.next
  %.sink126 = phi i32 [ %i.bg, %._crit_edge100.loopexit104.peel.next ], [ %i.au, %._crit_edge100.loopexit.peel.next ] ; 2 uses
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.100, i32 noundef %.2101, i32 noundef %.sink126) #22 ; 0 uses
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.101, i32 noundef %.2101, i32 noundef %.sink126) #22 ; 0 uses
  %fputc89.peel = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %exitcond110.not = icmp eq i32 %i.y, %1
  br i1 %exitcond110.not, label %._crit_edge103.split, label %.preheader, !llvm.loop !42

._crit_edge103.split:                             ; preds = %._crit_edge100, %._crit_edge97
  %i.bt = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %i.a) ; 0 uses
  %fputc87 = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %fputc88 = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  tail call void @Abc_WriteCell(ptr noundef %i.a)
  %i.bu = tail call i32 @fclose(ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_WriteKLut(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 4 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %1) #22 ; 0 uses
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %0) ; 0 uses
  %.not = icmp eq i32 %1, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.054 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.103, i32 noundef %.054) #22 ; 0 uses
  %i.e = add nuw nsw i32 %.054, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %fputc51 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %0) ; 0 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %._crit_edge, %.lr.ph57
  %.155 = phi i32 [ %i.i, %.lr.ph57 ], [ 0, %._crit_edge ] ; 2 uses
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.104, i32 noundef %.155) #22 ; 0 uses
  %i.i = add nuw nsw i32 %.155, 1                 ; 2 uses
  %exitcond66.not = icmp eq i32 %i.i, %1
  br i1 %exitcond66.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !44

._crit_edge58:                                    ; preds = %.lr.ph57, %._crit_edge
  %fputc52 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.105, i64 11, i64 1, ptr %0) ; 0 uses
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.106, i64 13, i64 1, ptr %0) ; 0 uses
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.61, i64 4, i64 1, ptr %0) ; 0 uses
  %i.m = icmp sgt i32 %i.a, 1
  br i1 %i.m, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge58
  %i.n = add nsw i32 %1, -1                       ; 2 uses
  %.neg65 = lshr i32 %i.a, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph63, %bb.e
  %.261 = phi i32 [ 1, %.lr.ph63 ], [ %i.aa, %bb.e ] ; 6 uses
  %.04560 = phi i32 [ 2, %.lr.ph63 ], [ %.146, %bb.e ] ; 2 uses
  %.04759 = phi i32 [ 0, %.lr.ph63 ], [ %.148, %bb.e ]
  %i.o = icmp eq i32 %.261, %.04560
  %i.p = zext i1 %i.o to i32                      ; 2 uses
  %.148 = add nuw nsw i32 %.04759, %i.p           ; 3 uses
  %.146 = shl nsw i32 %.04560, %i.p
  %i.q = icmp eq i32 %.148, %i.n
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = sub nsw i32 %.261, %.neg65
  %i.s = shl nsw i32 %i.r, 1                      ; 2 uses
  %i.t = or disjoint i32 %i.s, 1
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %i.n, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %.261) #22 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = shl nuw nsw i32 %.261, 1                 ; 2 uses
  %i.w = or disjoint i32 %i.v, 1
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %.148, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %.261) #22 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.109, i64 6, i64 1, ptr %0) ; 0 uses
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.110, i64 6, i64 1, ptr %0) ; 0 uses
  %i.aa = add nuw nsw i32 %.261, 1                ; 2 uses
  %exitcond67.not = icmp eq i32 %i.aa, %i.a
  br i1 %exitcond67.not, label %._crit_edge64, label %bb.b, !llvm.loop !45

._crit_edge64:                                    ; preds = %bb.e, %._crit_edge58
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %0) ; 0 uses
  %fputc53 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenFpga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1
  %i.b = add nsw i32 %3, %2                       ; 2 uses
  %i.c = add nsw i32 %i.b, -1                     ; 6 uses
  %i.d = icmp ult i32 %i.c, 2
  %i.e = add i32 %i.b, -2
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 %i.c, i32 %i.g
  %.09.i.fr = freeze i32 %.09.i                   ; 9 uses
  %i.h = shl nuw i32 1, %.09.i.fr                 ; 2 uses
  %i.i = shl i32 %2, %1                           ; 2 uses
  %i.j = mul i32 %2, %1
  %i.k = mul i32 %i.j, %.09.i.fr                  ; 2 uses
  %i.l = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 88 uses
  %i.m = tail call ptr (...) @Extra_TimeStamp() #22
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.111, i32 noundef %2, i32 noundef %1, i32 noundef %3, ptr noundef %i.m) #22 ; 0 uses
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.112, i32 noundef %2, i32 noundef %1, i32 noundef %3) #22 ; 0 uses
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.l) ; 0 uses
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0135157 = phi i32 [ %i.s, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.113, i32 noundef %.0135157) #22 ; 0 uses
  %i.s = add nuw nsw i32 %.0135157, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %fputc = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.l) ; 0 uses
  %i.u = icmp sgt i32 %i.k, 0
  br i1 %i.u, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %._crit_edge, %.lr.ph160
  %.1136158 = phi i32 [ %i.w, %.lr.ph160 ], [ 0, %._crit_edge ] ; 2 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.114, i32 noundef %.1136158) #22 ; 0 uses
  %i.w = add nuw nsw i32 %.1136158, 1             ; 2 uses
  %exitcond212.not = icmp eq i32 %i.w, %i.k
  br i1 %exitcond212.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !47

._crit_edge161:                                   ; preds = %.lr.ph160, %._crit_edge
  %fputc146 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.x = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.l) ; 0 uses
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph164, label %._crit_edge169.critedge

.lr.ph164:                                        ; preds = %._crit_edge161, %.lr.ph164
  %.2137162 = phi i32 [ %i.aa, %.lr.ph164 ], [ 0, %._crit_edge161 ] ; 2 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.115, i32 noundef %.2137162) #22 ; 0 uses
  %i.aa = add nuw nsw i32 %.2137162, 1            ; 2 uses
  %exitcond213.not = icmp eq i32 %i.aa, %3
  br i1 %exitcond213.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !48

._crit_edge165:                                   ; preds = %.lr.ph164
  %fputc147 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %i.l) ; 0 uses
  %i.ac = tail call i64 @fwrite(ptr nonnull @.str.116, i64 4, i64 1, ptr %i.l) ; 0 uses
  %fputc148 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ad = tail call i64 @fwrite(ptr nonnull @.str.117, i64 11, i64 1, ptr %i.l) ; 0 uses
  %i.ae = tail call i64 @fwrite(ptr nonnull @.str.118, i64 3, i64 1, ptr %i.l) ; 0 uses
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.119, i32 noundef %i.c) #22 ; 0 uses
  %i.ag = tail call i64 @fwrite(ptr nonnull @.str.120, i64 10, i64 1, ptr %i.l) ; 0 uses
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.121, i64 6, i64 1, ptr %i.l) ; 0 uses
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge165, %.lr.ph168
  %.3138166 = phi i32 [ %i.aj, %.lr.ph168 ], [ 0, %._crit_edge165 ] ; 2 uses
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.115, i32 noundef %.3138166) #22 ; 0 uses
  %i.aj = add nuw nsw i32 %.3138166, 1            ; 2 uses
  %exitcond214.not = icmp eq i32 %i.aj, %3
  br i1 %exitcond214.not, label %.lr.ph172.preheader, label %.lr.ph168, !llvm.loop !49

._crit_edge169.critedge:                          ; preds = %._crit_edge161
  %fputc147.c = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ak = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %i.l) ; 0 uses
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.116, i64 4, i64 1, ptr %i.l) ; 0 uses
  %fputc148.c = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.am = tail call i64 @fwrite(ptr nonnull @.str.117, i64 11, i64 1, ptr %i.l) ; 0 uses
  %i.an = tail call i64 @fwrite(ptr nonnull @.str.118, i64 3, i64 1, ptr %i.l) ; 0 uses
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.119, i32 noundef %i.c) #22 ; 0 uses
  %i.ap = tail call i64 @fwrite(ptr nonnull @.str.120, i64 10, i64 1, ptr %i.l) ; 0 uses
  %i.aq = tail call i64 @fwrite(ptr nonnull @.str.121, i64 6, i64 1, ptr %i.l) ; 0 uses
  %i.ar = tail call i64 @fwrite(ptr nonnull @.str.122, i64 6, i64 1, ptr %i.l) ; 0 uses
  br label %._crit_edge173

.lr.ph172.preheader:                              ; preds = %.lr.ph168
  %i.as = tail call i64 @fwrite(ptr nonnull @.str.122, i64 6, i64 1, ptr %i.l) ; 0 uses
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %.lr.ph172
  %.4170 = phi i32 [ %i.at, %.lr.ph172 ], [ 0, %.lr.ph172.preheader ]
  %fputc152 = tail call i32 @fputc(i32 49, ptr %i.l) ; 0 uses
  %i.at = add nuw nsw i32 %.4170, 1               ; 2 uses
  %exitcond215.not = icmp eq i32 %i.at, %3
  br i1 %exitcond215.not, label %._crit_edge173, label %.lr.ph172, !llvm.loop !50

._crit_edge173:                                   ; preds = %.lr.ph172, %._crit_edge169.critedge
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.124, i64 3, i64 1, ptr %i.l) ; 0 uses
  %i.av = icmp sgt i32 %2, 0
  br i1 %i.av, label %.lr.ph182, label %._crit_edge201.split

.lr.ph182:                                        ; preds = %._crit_edge173
  %.not206 = icmp eq i32 %1, 31
  %i.aw = icmp sgt i32 %1, 0
  br label %bb.k

.preheader155:                                    ; preds = %._crit_edge179
  %i.ax = icmp sgt i32 %1, 0
  br i1 %i.ax, label %.preheader154.lr.ph.split, label %._crit_edge201.split

.preheader154.lr.ph.split:                        ; preds = %.preheader155
  switch i32 %.09.i.fr, label %.preheader154.us.us.preheader [
    i32 31, label %.preheader154.us204
    i32 0, label %.preheader154.us
  ]

.preheader154.us.us.preheader:                    ; preds = %.preheader154.lr.ph.split
  %smax219 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  br label %.preheader154.us.us

.preheader154.us.us:                              ; preds = %.preheader154.us.us.preheader, %._crit_edge191.split.us.us.split.us.us
  %.6200.us.us = phi i32 [ %i.bl, %._crit_edge191.split.us.us.split.us.us ], [ 0, %.preheader154.us.us.preheader ] ; 3 uses
  %i.ay = add i32 %.6200.us.us, %3
  %invariant.smin.us.us = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.ay)
  %i.az = mul nuw nsw i32 %.6200.us.us, %1
  br label %.lr.ph185.us.us.us.us

.lr.ph185.us.us.us.us:                            ; preds = %._crit_edge188.us.us.us.us, %.preheader154.us.us
  %.0134189.us.us.us.us = phi i32 [ 0, %.preheader154.us.us ], [ %i.bk, %._crit_edge188.us.us.us.us ] ; 2 uses
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef %.09.i.fr) #22 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph185.us.us.us.us
  %.2183.us.us.us.us = phi i32 [ 0, %.lr.ph185.us.us.us.us ], [ %i.bd, %bb.e ] ; 5 uses
  %or.cond.us.us.us.us = icmp slt i32 %.2183.us.us.us.us, %invariant.smin.us.us
  br i1 %or.cond.us.us.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.131, i32 noundef %.2183.us.us.us.us) #22 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.130, i32 noundef %.2183.us.us.us.us, i32 noundef %.2183.us.us.us.us) #22 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bd = add nuw nsw i32 %.2183.us.us.us.us, 1   ; 2 uses
  %exitcond220.not = icmp eq i32 %i.bd, %smax219
  br i1 %exitcond220.not, label %..preheader_crit_edge.us.us.us.us, label %bb.b, !llvm.loop !51

bb.f:                                             ; preds = %..preheader_crit_edge.us.us.us.us, %bb.f
  %.3186.us.us.us.us = phi i32 [ 0, %..preheader_crit_edge.us.us.us.us ], [ %i.bg, %bb.f ] ; 3 uses
  %i.be = add nsw i32 %.3186.us.us.us.us, %i.bi
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef %.3186.us.us.us.us, i32 noundef %i.be) #22 ; 0 uses
  %i.bg = add nuw i32 %.3186.us.us.us.us, 1       ; 2 uses
  %exitcond221.not = icmp eq i32 %i.bg, %.09.i.fr
  br i1 %exitcond221.not, label %._crit_edge188.us.us.us.us, label %bb.f, !llvm.loop !52

..preheader_crit_edge.us.us.us.us:                ; preds = %bb.e
  %i.bh = add nuw nsw i32 %.0134189.us.us.us.us, %i.az ; 2 uses
  %i.bi = mul nsw i32 %i.bh, %.09.i.fr
  br label %bb.f

._crit_edge188.us.us.us.us:                       ; preds = %bb.f
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.133, i32 noundef %i.bh) #22 ; 0 uses
  %fputc150.us.us.us.us = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.bk = add nuw nsw i32 %.0134189.us.us.us.us, 1 ; 2 uses
  %exitcond222.not = icmp eq i32 %i.bk, %1
  br i1 %exitcond222.not, label %._crit_edge191.split.us.us.split.us.us, label %.lr.ph185.us.us.us.us, !llvm.loop !53

._crit_edge191.split.us.us.split.us.us:           ; preds = %._crit_edge188.us.us.us.us
  %i.bl = add nuw nsw i32 %.6200.us.us, 1         ; 2 uses
  %exitcond223.not = icmp eq i32 %i.bl, %2
  br i1 %exitcond223.not, label %._crit_edge201.split, label %.preheader154.us.us, !llvm.loop !54

.preheader154.us:                                 ; preds = %.preheader154.lr.ph.split, %._crit_edge191.split.us.us.split
  %.6200.us = phi i32 [ %i.bv, %._crit_edge191.split.us.us.split ], [ %.09.i.fr, %.preheader154.lr.ph.split ] ; 3 uses
  %i.bm = add i32 %.6200.us, %3
  %invariant.smin.us = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.bm)
  %i.bn = mul nuw nsw i32 %.6200.us, %1
  br label %.lr.ph185.us.us

.lr.ph185.us.us:                                  ; preds = %..preheader_crit_edge.us.us, %.preheader154.us
  %.0134189.us.us = phi i32 [ 0, %.preheader154.us ], [ %i.bu, %..preheader_crit_edge.us.us ] ; 2 uses
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef 0) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph185.us.us
  %.2183.us.us = phi i32 [ 0, %.lr.ph185.us.us ], [ %i.br, %bb.j ] ; 5 uses
  %or.cond.us.us = icmp slt i32 %.2183.us.us, %invariant.smin.us
  br i1 %or.cond.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.131, i32 noundef %.2183.us.us) #22 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.130, i32 noundef %.2183.us.us, i32 noundef %.2183.us.us) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = add nuw nsw i32 %.2183.us.us, 1         ; 2 uses
  %exitcond225.not = icmp eq i32 %i.br, %i.h
  br i1 %exitcond225.not, label %..preheader_crit_edge.us.us, label %bb.g, !llvm.loop !51

..preheader_crit_edge.us.us:                      ; preds = %bb.j
  %i.bs = add nuw nsw i32 %.0134189.us.us, %i.bn
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.133, i32 noundef %i.bs) #22 ; 0 uses
  %fputc150.us.us = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.bu = add nuw nsw i32 %.0134189.us.us, 1      ; 2 uses
  %exitcond226.not = icmp eq i32 %i.bu, %1
  br i1 %exitcond226.not, label %._crit_edge191.split.us.us.split, label %.lr.ph185.us.us, !llvm.loop !53

._crit_edge191.split.us.us.split:                 ; preds = %..preheader_crit_edge.us.us
  %i.bv = add nuw nsw i32 %.6200.us, 1            ; 2 uses
  %exitcond227.not = icmp eq i32 %i.bv, %2
  br i1 %exitcond227.not, label %._crit_edge201.split, label %.preheader154.us, !llvm.loop !54

.preheader154.us204:                              ; preds = %.preheader154.lr.ph.split, %._crit_edge191.split.split.us.us
  %.6200.us205 = phi i32 [ %i.el, %._crit_edge191.split.split.us.us ], [ 0, %.preheader154.lr.ph.split ] ; 2 uses
  %i.bw = mul nuw nsw i32 %.6200.us205, %1
  br label %.preheader.us193.us

.preheader.us193.us:                              ; preds = %.preheader.us193.us, %.preheader154.us204
  %.0134189.us194.us = phi i32 [ 0, %.preheader154.us204 ], [ %i.ek, %.preheader.us193.us ] ; 2 uses
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef 31) #22 ; 0 uses
  %i.by = add nuw nsw i32 %.0134189.us194.us, %i.bw ; 2 uses
  %i.bz = mul nuw nsw i32 %i.by, 31               ; 31 uses
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef %i.bz) #22 ; 0 uses
  %i.cb = add nuw nsw i32 %i.bz, 1
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 1, i32 noundef %i.cb) #22 ; 0 uses
  %i.cd = add nuw nsw i32 %i.bz, 2
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 2, i32 noundef %i.cd) #22 ; 0 uses
  %i.cf = add nuw nsw i32 %i.bz, 3
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 3, i32 noundef %i.cf) #22 ; 0 uses
  %i.ch = add nuw nsw i32 %i.bz, 4
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 4, i32 noundef %i.ch) #22 ; 0 uses
  %i.cj = add nuw nsw i32 %i.bz, 5
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 5, i32 noundef %i.cj) #22 ; 0 uses
  %i.cl = add nuw nsw i32 %i.bz, 6
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 6, i32 noundef %i.cl) #22 ; 0 uses
  %i.cn = add nuw nsw i32 %i.bz, 7
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 7, i32 noundef %i.cn) #22 ; 0 uses
  %i.cp = add nuw nsw i32 %i.bz, 8
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 8, i32 noundef %i.cp) #22 ; 0 uses
  %i.cr = add nuw nsw i32 %i.bz, 9
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 9, i32 noundef %i.cr) #22 ; 0 uses
  %i.ct = add nuw nsw i32 %i.bz, 10
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 10, i32 noundef %i.ct) #22 ; 0 uses
  %i.cv = add nuw nsw i32 %i.bz, 11
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 11, i32 noundef %i.cv) #22 ; 0 uses
  %i.cx = add nuw nsw i32 %i.bz, 12
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 12, i32 noundef %i.cx) #22 ; 0 uses
  %i.cz = add nuw nsw i32 %i.bz, 13
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 13, i32 noundef %i.cz) #22 ; 0 uses
  %i.db = add nuw nsw i32 %i.bz, 14
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 14, i32 noundef %i.db) #22 ; 0 uses
  %i.dd = add nuw nsw i32 %i.bz, 15
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 15, i32 noundef %i.dd) #22 ; 0 uses
  %i.df = add nuw nsw i32 %i.bz, 16
  %i.dg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 16, i32 noundef %i.df) #22 ; 0 uses
  %i.dh = add nuw nsw i32 %i.bz, 17
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 17, i32 noundef %i.dh) #22 ; 0 uses
  %i.dj = add nuw nsw i32 %i.bz, 18
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 18, i32 noundef %i.dj) #22 ; 0 uses
  %i.dl = add nuw nsw i32 %i.bz, 19
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 19, i32 noundef %i.dl) #22 ; 0 uses
  %i.dn = add nuw nsw i32 %i.bz, 20
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 20, i32 noundef %i.dn) #22 ; 0 uses
  %i.dp = add nuw nsw i32 %i.bz, 21
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 21, i32 noundef %i.dp) #22 ; 0 uses
  %i.dr = add nuw nsw i32 %i.bz, 22
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 22, i32 noundef %i.dr) #22 ; 0 uses
  %i.dt = add nuw nsw i32 %i.bz, 23
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 23, i32 noundef %i.dt) #22 ; 0 uses
  %i.dv = add nuw nsw i32 %i.bz, 24
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 24, i32 noundef %i.dv) #22 ; 0 uses
  %i.dx = add nuw nsw i32 %i.bz, 25
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 25, i32 noundef %i.dx) #22 ; 0 uses
  %i.dz = add nuw nsw i32 %i.bz, 26
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 26, i32 noundef %i.dz) #22 ; 0 uses
  %i.eb = add nuw nsw i32 %i.bz, 27
  %i.ec = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 27, i32 noundef %i.eb) #22 ; 0 uses
  %i.ed = add nuw nsw i32 %i.bz, 28
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 28, i32 noundef %i.ed) #22 ; 0 uses
  %i.ef = add nuw nsw i32 %i.bz, 29
  %i.eg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 29, i32 noundef %i.ef) #22 ; 0 uses
  %i.eh = add nuw nsw i32 %i.bz, 30
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 30, i32 noundef %i.eh) #22 ; 0 uses
  %i.ej = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.133, i32 noundef %i.by) #22 ; 0 uses
  %fputc150.us196.us = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ek = add nuw nsw i32 %.0134189.us194.us, 1   ; 2 uses
  %exitcond229.not = icmp eq i32 %i.ek, %1
  br i1 %exitcond229.not, label %._crit_edge191.split.split.us.us, label %.preheader.us193.us, !llvm.loop !53

._crit_edge191.split.split.us.us:                 ; preds = %.preheader.us193.us
  %i.el = add nuw nsw i32 %.6200.us205, 1         ; 2 uses
  %exitcond230.not = icmp eq i32 %i.el, %2
  br i1 %exitcond230.not, label %._crit_edge201.split, label %.preheader154.us204, !llvm.loop !54

bb.k:                                             ; preds = %.lr.ph182, %._crit_edge179
  %.5180 = phi i32 [ 0, %.lr.ph182 ], [ %i.ex, %._crit_edge179 ] ; 4 uses
  %i.em = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef %1) #22 ; 0 uses
  br i1 %.not206, label %.lr.ph178, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.k
  %i.en = shl i32 %.5180, %1
  br label %bb.l

.preheader156:                                    ; preds = %bb.l
  br i1 %i.aw, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %bb.k, %.preheader156
  %i.eo = mul nuw nsw i32 %.5180, %1
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph176, %bb.l
  %.0174 = phi i32 [ 0, %.lr.ph176 ], [ %i.er, %bb.l ] ; 3 uses
  %i.ep = add nsw i32 %.0174, %i.en
  %i.eq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.127, i32 noundef %.0174, i32 noundef %i.ep) #22 ; 0 uses
  %i.er = add nuw nsw i32 %.0174, 1               ; 2 uses
  %exitcond216.not = icmp eq i32 %i.er, %i.a
  br i1 %exitcond216.not, label %.preheader156, label %bb.l, !llvm.loop !55

bb.m:                                             ; preds = %.lr.ph178, %bb.m
  %.1177 = phi i32 [ 0, %.lr.ph178 ], [ %i.eu, %bb.m ] ; 3 uses
  %i.es = add nuw nsw i32 %.1177, %i.eo
  %i.et = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.128, i32 noundef %.1177, i32 noundef %i.es) #22 ; 0 uses
  %i.eu = add nuw nsw i32 %.1177, 1               ; 2 uses
  %exitcond217.not = icmp eq i32 %i.eu, %1
  br i1 %exitcond217.not, label %._crit_edge179, label %bb.m, !llvm.loop !56

._crit_edge179:                                   ; preds = %bb.m, %.preheader156
  %i.ev = add nsw i32 %.5180, %3
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.129, i32 noundef %i.ev) #22 ; 0 uses
  %fputc151 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ex = add nuw nsw i32 %.5180, 1               ; 2 uses
  %exitcond218.not = icmp eq i32 %i.ex, %2
  br i1 %exitcond218.not, label %.preheader155, label %bb.k, !llvm.loop !57

._crit_edge201.split:                             ; preds = %._crit_edge191.split.us.us.split, %._crit_edge191.split.split.us.us, %._crit_edge191.split.us.us.split.us.us, %._crit_edge173, %.preheader155
  %i.ey = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %i.l) ; 0 uses
  %fputc149 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  tail call void @Abc_WriteKLut(ptr noundef %i.l, i32 noundef %1)
  %.not = icmp eq i32 %.09.i.fr, %1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge201.split
  tail call void @Abc_WriteKLut(ptr noundef %i.l, i32 noundef %.09.i.fr)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge201.split
  %i.ez = tail call i32 @fclose(ptr noundef %i.l) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenOneHot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 13 uses
  %i.b = tail call ptr (...) @Extra_TimeStamp() #22
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.134, i32 noundef %1, ptr noundef %i.b) #22 ; 0 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.135, i32 noundef %1) #22 ; 0 uses
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.a) ; 0 uses
  %i.f = icmp ult i32 %1, 2
  br i1 %i.f, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add i32 %1, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = udiv i32 %.0812.i, 10
  %i.i = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !8

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.09.i = phi i32 [ %1, %bb.a ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %i.j = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_Base10Log.exit, %.lr.ph
  %.057 = phi i32 [ %i.l, %.lr.ph ], [ 0, %Abc_Base10Log.exit ] ; 2 uses
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.136, i32 noundef %.09.i, i32 noundef %.057) #22 ; 0 uses
  %i.l = add nuw nsw i32 %.057, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %Abc_Base10Log.exit
  %fputc = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %i.a) ; 0 uses
  %i.n = add nsw i32 %1, -1
  %i.o = mul nsw i32 %i.n, %1                     ; 2 uses
  %i.p = sdiv i32 %i.o, 2                         ; 4 uses
  %i.q = icmp ult i32 %i.p, 2
  br i1 %i.q, label %Abc_Base10Log.exit55, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %._crit_edge
  %i.r = add nsw i32 %i.p, -1
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i49
  %.013.i51 = phi i32 [ %i.t, %.lr.ph.i50 ], [ 0, %.lr.ph.preheader.i49 ]
  %.0812.i52 = phi i32 [ %i.s, %.lr.ph.i50 ], [ %i.r, %.lr.ph.preheader.i49 ] ; 2 uses
  %i.s = udiv i32 %.0812.i52, 10
  %i.t = add nuw nsw i32 %.013.i51, 1             ; 2 uses
  %.not.i53 = icmp ult i32 %.0812.i52, 10
  br i1 %.not.i53, label %Abc_Base10Log.exit55, label %.lr.ph.i50, !llvm.loop !8

Abc_Base10Log.exit55:                             ; preds = %.lr.ph.i50, %._crit_edge
  %.09.i54 = phi i32 [ %i.p, %._crit_edge ], [ %i.t, %.lr.ph.i50 ] ; 2 uses
  %i.u = icmp sgt i32 %i.o, 1
  br i1 %i.u, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %Abc_Base10Log.exit55, %.lr.ph59
  %.158 = phi i32 [ %i.w, %.lr.ph59 ], [ 0, %Abc_Base10Log.exit55 ] ; 2 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.137, i32 noundef %.09.i54, i32 noundef %.158) #22 ; 0 uses
  %i.w = add nuw nsw i32 %.158, 1                 ; 2 uses
  %exitcond72.not = icmp eq i32 %i.w, %i.p
  br i1 %exitcond72.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !59

._crit_edge60:                                    ; preds = %.lr.ph59, %Abc_Base10Log.exit55
  %fputc47 = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  br i1 %i.j, label %.lr.ph68, label %._crit_edge69

.loopexit:                                        ; preds = %.lr.ph64, %.lr.ph68
  %.145.lcssa = phi i32 [ %.04465, %.lr.ph68 ], [ %i.ab, %.lr.ph64 ]
  %exitcond74.not = icmp eq i32 %i.x, %1
  br i1 %exitcond74.not, label %._crit_edge69, label %.lr.ph68, !llvm.loop !60

.lr.ph68:                                         ; preds = %._crit_edge60, %.loopexit
  %.266 = phi i32 [ %i.x, %.loopexit ], [ 0, %._crit_edge60 ] ; 2 uses
  %.04465 = phi i32 [ %.145.lcssa, %.loopexit ], [ 0, %._crit_edge60 ] ; 2 uses
  %i.x = add nuw nsw i32 %.266, 1                 ; 4 uses
  %i.y = icmp slt i32 %i.x, %1
  br i1 %i.y, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %.lr.ph68, %.lr.ph64
  %.04362 = phi i32 [ %i.ac, %.lr.ph64 ], [ %i.x, %.lr.ph68 ] ; 2 uses
  %.14561 = phi i32 [ %i.ab, %.lr.ph64 ], [ %.04465, %.lr.ph68 ] ; 2 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.138, i32 noundef %.09.i, i32 noundef %.266, i32 noundef %.09.i, i32 noundef %.04362, i32 noundef %.09.i54, i32 noundef %.14561) #22 ; 0 uses
  %i.aa = tail call i64 @fwrite(ptr nonnull @.str.139, i64 5, i64 1, ptr %i.a) ; 0 uses
  %i.ab = add nsw i32 %.14561, 1                  ; 2 uses
  %i.ac = add nuw i32 %.04362, 1                  ; 2 uses
  %exitcond73.not = icmp eq i32 %i.ac, %1
  br i1 %exitcond73.not, label %.loopexit, label %.lr.ph64, !llvm.loop !61

._crit_edge69:                                    ; preds = %.loopexit, %._crit_edge60
  %i.ad = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %i.a) ; 0 uses
  %fputc48 = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %i.ae = tail call i32 @fclose(ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenOneHotIntervals(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 16 uses
  %i.b = tail call ptr (...) @Extra_TimeStamp() #22
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.140, i32 noundef %1, i32 noundef %2, ptr noundef %i.b) #22 ; 0 uses
  %i.d = getelementptr i8, ptr %3, i64 4          ; 5 uses
  %.val85 = load i32, ptr %i.d, align 4, !tbaa !62
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.141, i32 noundef %.val85) #22 ; 0 uses
  %.val84103 = load i32, ptr %i.d, align 4, !tbaa !62
  %i.f = icmp sgt i32 %.val84103, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.078105 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ]
  %.val87 = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %.val92 = load i32, ptr %i.j, align 4, !tbaa !68
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.142, i32 noundef %.val92) #22 ; 0 uses
  %.val91 = load i32, ptr %i.j, align 4, !tbaa !68 ; 2 uses
  %i.l = add nsw i32 %.val91, -1
  %i.m = mul nsw i32 %i.l, %.val91
  %i.n = sdiv i32 %i.m, 2
  %i.o = add nsw i32 %i.n, %.078105               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val84 = load i32, ptr %i.d, align 4, !tbaa !62
  %i.p = sext i32 %.val84 to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %.critedge, !llvm.loop !71

.critedge:                                        ; preds = %bb.b, %bb.a
  %.078.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.b ] ; 5 uses
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.143, i64 2, i64 1, ptr %i.a) ; 0 uses
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.144, i32 noundef %1, i32 noundef %2) #22 ; 0 uses
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.a) ; 0 uses
  %i.u = add nsw i32 %2, %1                       ; 5 uses
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.w = add i32 %i.u, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %i.x = udiv i32 %.0812.i, 10
  %i.y = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !8

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %.critedge
  %.09.i = phi i32 [ %i.u, %.critedge ], [ %i.y, %.lr.ph.i ] ; 3 uses
  %i.z = icmp sgt i32 %i.u, 0
  br i1 %i.z, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %Abc_Base10Log.exit, %.lr.ph107
  %.0106 = phi i32 [ %i.ab, %.lr.ph107 ], [ 0, %Abc_Base10Log.exit ] ; 2 uses
end_hunk_0
