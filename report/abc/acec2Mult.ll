Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acec2Mult?download=true
inline.NumInlined: 256
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Sdb_CutAddUnit:bb.a

Vec_IntPush.exit:                                 ; preds = %bb.b, %Vec_IntGrow.exit11.sink.split.i
  %i.l = phi i32 [ %.pre2, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.k, %Vec_IntGrow.exit11.sink.split.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = add nsw i32 %i.l, 1
  store i32 %i.n, ptr %i.c, align 4, !tbaa !65
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o
  store i32 1, ptr %i.p, align 4, !tbaa !43
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.q, align 8, !tbaa !42 ; 3 uses
  %i.r = load i32, ptr %.val9, align 4, !tbaa !43
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %.val9, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Vec_IntPush.exit
  %i.t = phi ptr [ %.val9, %bb.f ], [ %i.m, %Vec_IntPush.exit ] ; 4 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !65   ; 7 uses
  %i.v = load i32, ptr %i.b, align 8, !tbaa !66
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %Vec_IntPush.exit17

bb.h:                                             ; preds = %bb.g
  %i.x = icmp slt i32 %i.u, 16
  br i1 %i.x, label %Vec_IntGrow.exit.i16, label %bb.i

Vec_IntGrow.exit.i16:                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #23 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i13

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i32 %i.u, 1073741823
  %i.ab = shl nuw nsw i32 %i.u, 1
  %spec.select.i10 = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 3 uses
  %.not.i9.i11 = icmp samesign ult i32 %i.u, %spec.select.i10
  br i1 %.not.i9.i11, label %bb.j, label %Vec_IntPush.exit17

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = zext nneg i32 %spec.select.i10 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.ae) #23 ; 2 uses
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i13

Vec_IntGrow.exit11.sink.split.i13:                ; preds = %bb.j, %Vec_IntGrow.exit.i16
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.z, %Vec_IntGrow.exit.i16 ]
  %spec.select.sink.i14 = phi i32 [ %spec.select.i10, %bb.j ], [ 16, %Vec_IntGrow.exit.i16 ]
  store i32 %spec.select.sink.i14, ptr %i.b, align 8, !tbaa !66
  %.pre3 = load i32, ptr %i.c, align 4, !tbaa !65
  br label %Vec_IntPush.exit17

Vec_IntPush.exit17:                               ; preds = %bb.g, %bb.i, %Vec_IntGrow.exit11.sink.split.i13
  %i.ah = phi i32 [ %i.u, %bb.g ], [ %i.u, %bb.i ], [ %.pre3, %Vec_IntGrow.exit11.sink.split.i13 ] ; 2 uses
  %i.ai = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.i ], [ %i.ag, %Vec_IntGrow.exit11.sink.split.i13 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !65
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.al
  store i32 1, ptr %i.am, align 4, !tbaa !43
  %i.an = load i32, ptr %i.c, align 4, !tbaa !65  ; 7 uses
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !66
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.k, label %Vec_IntPush.exit25

bb.k:                                             ; preds = %Vec_IntPush.exit17
  %i.aq = icmp slt i32 %i.an, 16
  br i1 %i.aq, label %Vec_IntGrow.exit11.sink.split.i21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp samesign ult i32 %i.an, 1073741823
  %i.as = shl nuw nsw i32 %i.an, 1
  %spec.select.i18 = select i1 %i.ar, i32 %i.as, i32 2147483647 ; 3 uses
  %.not.i9.i19 = icmp samesign ult i32 %i.an, %spec.select.i18
  br i1 %.not.i9.i19, label %bb.m, label %Vec_IntPush.exit25

bb.m:                                             ; preds = %bb.l
  %i.at = zext nneg i32 %spec.select.i18 to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  br label %Vec_IntGrow.exit11.sink.split.i21

Vec_IntGrow.exit11.sink.split.i21:                ; preds = %bb.k, %bb.m
  %.sink = phi i64 [ %i.au, %bb.m ], [ 64, %bb.k ]
  %spec.select.sink.i22 = phi i32 [ %spec.select.i18, %bb.m ], [ 16, %bb.k ]
  %i.av = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %.sink) #23 ; 2 uses
  store ptr %i.av, ptr %i.aj, align 8, !tbaa !42
  store i32 %spec.select.sink.i22, ptr %i.b, align 8, !tbaa !66
  %.pre4 = load i32, ptr %i.c, align 4, !tbaa !65
  br label %Vec_IntPush.exit25

Vec_IntPush.exit25:                               ; preds = %Vec_IntPush.exit17, %bb.l, %Vec_IntGrow.exit11.sink.split.i21
  %i.aw = phi i32 [ %i.an, %Vec_IntPush.exit17 ], [ %i.an, %bb.l ], [ %.pre4, %Vec_IntGrow.exit11.sink.split.i21 ] ; 2 uses
  %i.ax = phi ptr [ %i.ai, %Vec_IntPush.exit17 ], [ %i.ai, %bb.l ], [ %i.av, %Vec_IntGrow.exit11.sink.split.i21 ] ; 4 uses
  %i.ay = add nsw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.c, align 4, !tbaa !65
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.az
  store i32 %0, ptr %i.ba, align 4, !tbaa !43
  %i.bb = load i32, ptr %i.c, align 4, !tbaa !65  ; 7 uses
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !66
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %Vec_IntPush.exit33

bb.n:                                             ; preds = %Vec_IntPush.exit25
  %i.be = icmp slt i32 %i.bb, 16
  br i1 %i.be, label %Vec_IntGrow.exit11.sink.split.i29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp samesign ult i32 %i.bb, 1073741823
  %i.bg = shl nuw nsw i32 %i.bb, 1
  %spec.select.i26 = select i1 %i.bf, i32 %i.bg, i32 2147483647 ; 3 uses
  %.not.i9.i27 = icmp samesign ult i32 %i.bb, %spec.select.i26
  br i1 %.not.i9.i27, label %bb.p, label %Vec_IntPush.exit33

bb.p:                                             ; preds = %bb.o
  %i.bh = zext nneg i32 %spec.select.i26 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  br label %Vec_IntGrow.exit11.sink.split.i29

Vec_IntGrow.exit11.sink.split.i29:                ; preds = %bb.n, %bb.p
  %.sink14 = phi i64 [ %i.bi, %bb.p ], [ 64, %bb.n ]
  %spec.select.sink.i30 = phi i32 [ %spec.select.i26, %bb.p ], [ 16, %bb.n ]
  %i.bj = tail call ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef %.sink14) #23 ; 2 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !42
  store i32 %spec.select.sink.i30, ptr %i.b, align 8, !tbaa !66
  %.pre5 = load i32, ptr %i.c, align 4, !tbaa !65
  br label %Vec_IntPush.exit33

Vec_IntPush.exit33:                               ; preds = %Vec_IntPush.exit25, %bb.o, %Vec_IntGrow.exit11.sink.split.i29
  %i.bk = phi i32 [ %i.bb, %Vec_IntPush.exit25 ], [ %i.bb, %bb.o ], [ %.pre5, %Vec_IntGrow.exit11.sink.split.i29 ] ; 2 uses
  %i.bl = phi ptr [ %i.ax, %Vec_IntPush.exit25 ], [ %i.ax, %bb.o ], [ %i.bj, %Vec_IntGrow.exit11.sink.split.i29 ]
  %i.bm = add nsw i32 %i.bk, 1
  store i32 %i.bm, ptr %i.c, align 4, !tbaa !65
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 2, ptr %i.bo, align 4, !tbaa !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Sdb_StoDiffExactlyOne(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val44 = load i32, ptr %i.a, align 4, !tbaa !67 ; 3 uses
  %i.b = icmp sgt i32 %.val44, 0
  br i1 %i.b, label %.lr.ph72, label %.critedge2

.lr.ph72:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val42 = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.d = load i32, ptr %2, align 4, !tbaa !43     ; 3 uses
  %.not4162 = icmp slt i32 %i.d, 1
  %i.e = add i32 %i.d, 1                          ; 2 uses
  br i1 %.not4162, label %.lr.ph72.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph72
  %wide.trip.count107 = zext nneg i32 %.val44 to i64
  %wide.trip.count = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph72.split.us:                                ; preds = %.lr.ph72
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.critedge2, label %.lr.ph91

Vec_IntFind.exit.thread.thread129:                ; preds = %.lr.ph, %Vec_IntFind.exit.thread
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.lr.ph91, label %.lr.ph, !llvm.loop !150

.lr.ph91:                                         ; preds = %Vec_IntFind.exit.thread.thread129, %.lr.ph72.split.us
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.h = zext i32 %1 to i64
  %wide.trip.count122 = zext nneg i32 %.val44 to i64
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntFind.exit.thread.thread129
  %indvars.iv104 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next105, %Vec_IntFind.exit.thread.thread129 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val42, i64 %indvars.iv104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !65   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br i1 %i.l, label %.lr.ph.split.us, label %Vec_IntFind.exit.thread.thread129

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %Vec_IntFind.exit.us, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntFind.exit.us ], [ 1, %.lr.ph.split.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  %i.s = icmp eq i32 %i.r, %i.p
  br i1 %i.s, label %Vec_IntFind.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Vec_IntFind.exit.thread, label %bb.b, !llvm.loop !0

Vec_IntFind.exit.us:                              ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph.i.us, !llvm.loop !151

Vec_IntFind.exit.thread:                          ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = icmp eq i32 %i.e, %i.t
  br i1 %i.u, label %.critedge2, label %Vec_IntFind.exit.thread.thread129

.critedge:                                        ; preds = %.preheader, %Vec_IntFind.exit52.thread._crit_edge
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.critedge2, label %bb.d, !llvm.loop !152

bb.d:                                             ; preds = %.lr.ph91, %.critedge
  %indvars.iv119 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next120, %.critedge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %indvars.iv119 ; 2 uses
  %i.w = icmp eq i64 %indvars.iv119, %i.h
  br i1 %i.w, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.x = load i32, ptr %2, align 4, !tbaa !43     ; 3 uses
  %.not74 = icmp slt i32 %i.x, 1
  br i1 %.not74, label %.critedge, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %wide.trip.count.i47 = zext nneg i32 %i.z to i64
  br i1 %i.aa, label %.lr.ph77.split.us, label %Vec_IntFind.exit52.thread.preheader

Vec_IntFind.exit52.thread.preheader:              ; preds = %.lr.ph77
  %i.ab = add nuw i32 %i.x, 1                     ; 4 uses
  %wide.trip.count112 = zext i32 %i.ab to i64
  br label %Vec_IntFind.exit52.thread

.lr.ph77.split.us:                                ; preds = %.lr.ph77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = add nuw i32 %i.x, 1                     ; 4 uses
  %wide.trip.count117 = zext i32 %i.ae to i64
  br label %.lr.ph.i46.us

.lr.ph.i46.us:                                    ; preds = %Vec_IntFind.exit52.us, %.lr.ph77.split.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %Vec_IntFind.exit52.us ], [ 1, %.lr.ph77.split.us ] ; 3 uses
  %.076.us = phi i32 [ %.1.us, %Vec_IntFind.exit52.us ], [ -1, %.lr.ph77.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i46.us
  %indvars.iv.i48.us = phi i64 [ 0, %.lr.ph.i46.us ], [ %indvars.iv.next.i49.us, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i48.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43
  %i.aj = icmp eq i32 %i.ai, %i.ag
  br i1 %i.aj, label %Vec_IntFind.exit52.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i49.us = add nuw nsw i64 %indvars.iv.i48.us, 1 ; 2 uses
  %exitcond.not.i50.us = icmp eq i64 %indvars.iv.next.i49.us, %wide.trip.count.i47
  br i1 %exitcond.not.i50.us, label %Vec_IntFind.exit52.thread.loopexit.us, label %bb.e, !llvm.loop !0

Vec_IntFind.exit52.thread.loopexit.us:            ; preds = %bb.f
  %i.ak = icmp eq i32 %.076.us, -1
  br i1 %i.ak, label %Vec_IntFind.exit52.us, label %Vec_IntFind.exit52.thread._crit_edge.loopexit.split.loop.exit

Vec_IntFind.exit52.us:                            ; preds = %bb.e, %Vec_IntFind.exit52.thread.loopexit.us
  %.1.us = phi i32 [ %i.ag, %Vec_IntFind.exit52.thread.loopexit.us ], [ %.076.us, %bb.e ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %Vec_IntFind.exit52.thread._crit_edge, label %.lr.ph.i46.us, !llvm.loop !153

Vec_IntFind.exit52.thread:                        ; preds = %Vec_IntFind.exit52.thread.preheader, %Vec_IntFind.exit52
  %indvars.iv109 = phi i64 [ 1, %Vec_IntFind.exit52.thread.preheader ], [ %indvars.iv.next110, %Vec_IntFind.exit52 ] ; 3 uses
  %.076 = phi i32 [ -1, %Vec_IntFind.exit52.thread.preheader ], [ %i.an, %Vec_IntFind.exit52 ] ; 2 uses
  %i.al = icmp eq i32 %.076, -1
  br i1 %i.al, label %Vec_IntFind.exit52, label %Vec_IntFind.exit52.thread._crit_edge.loopexit135.split.loop.exit

Vec_IntFind.exit52:                               ; preds = %Vec_IntFind.exit52.thread
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv109
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %Vec_IntFind.exit52.thread._crit_edge, label %Vec_IntFind.exit52.thread, !llvm.loop !153

Vec_IntFind.exit52.thread._crit_edge.loopexit.split.loop.exit: ; preds = %Vec_IntFind.exit52.thread.loopexit.us
  %i.ao = trunc nuw nsw i64 %indvars.iv114 to i32
  br label %Vec_IntFind.exit52.thread._crit_edge

Vec_IntFind.exit52.thread._crit_edge.loopexit135.split.loop.exit: ; preds = %Vec_IntFind.exit52.thread
  %i.ap = trunc nuw nsw i64 %indvars.iv109 to i32
  br label %Vec_IntFind.exit52.thread._crit_edge

Vec_IntFind.exit52.thread._crit_edge:             ; preds = %Vec_IntFind.exit52, %Vec_IntFind.exit52.us, %Vec_IntFind.exit52.thread._crit_edge.loopexit135.split.loop.exit, %Vec_IntFind.exit52.thread._crit_edge.loopexit.split.loop.exit
  %.pre-phi = phi i32 [ %i.ae, %Vec_IntFind.exit52.thread._crit_edge.loopexit.split.loop.exit ], [ %i.ab, %Vec_IntFind.exit52.thread._crit_edge.loopexit135.split.loop.exit ], [ %i.ae, %Vec_IntFind.exit52.us ], [ %i.ab, %Vec_IntFind.exit52 ]
  %.137.lcssa = phi i32 [ %i.ao, %Vec_IntFind.exit52.thread._crit_edge.loopexit.split.loop.exit ], [ %i.ap, %Vec_IntFind.exit52.thread._crit_edge.loopexit135.split.loop.exit ], [ %i.ae, %Vec_IntFind.exit52.us ], [ %i.ab, %Vec_IntFind.exit52 ]
  %.0.lcssa = phi i32 [ %.076.us, %Vec_IntFind.exit52.thread._crit_edge.loopexit.split.loop.exit ], [ %.076, %Vec_IntFind.exit52.thread._crit_edge.loopexit135.split.loop.exit ], [ %.1.us, %Vec_IntFind.exit52.us ], [ %i.an, %Vec_IntFind.exit52 ] ; 2 uses
  %i.aq = icmp eq i32 %.137.lcssa, %.pre-phi
  %i.ar = icmp ne i32 %.0.lcssa, -1
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %Vec_IntFind.exit.thread, %Vec_IntFind.exit.us, %Vec_IntFind.exit52.thread._crit_edge, %.critedge, %bb.d, %bb.a, %.lr.ph72.split.us
  %.040 = phi i32 [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %.lr.ph72.split.us ], [ -1, %Vec_IntFind.exit.us ], [ -1, %.critedge ], [ %.0.lcssa, %Vec_IntFind.exit52.thread._crit_edge ], [ -1, %Vec_IntFind.exit.thread ]
  ret i32 %.040
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Sdb_StoDiffExactlyOne3(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val38 = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.b = icmp sgt i32 %.val38, 0
  br i1 %i.b, label %.lr.ph62, label %.critedge

.lr.ph62:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.d = zext i32 %1 to i64
  %wide.trip.count80 = zext nneg i32 %.val38 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %Vec_IntFind.exit.thread._crit_edge.thread
  %indvars.iv77 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next78, %Vec_IntFind.exit.thread._crit_edge.thread ] ; 3 uses
  %.03060 = phi i32 [ 0, %.lr.ph62 ], [ %.2.ph, %Vec_IntFind.exit.thread._crit_edge.thread ] ; 4 uses
  %.03259 = phi i32 [ -1, %.lr.ph62 ], [ %.335.ph, %Vec_IntFind.exit.thread._crit_edge.thread ] ; 5 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %indvars.iv77 ; 2 uses
  %i.f = icmp eq i64 %indvars.iv77, %i.d
  br i1 %i.f, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = load i32, ptr %2, align 4, !tbaa !43     ; 3 uses
  %.not45 = icmp slt i32 %i.g, 1
  br i1 %.not45, label %Vec_IntFind.exit.thread._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br i1 %i.j, label %.lr.ph.split.us, label %Vec_IntFind.exit.thread.preheader

Vec_IntFind.exit.thread.preheader:                ; preds = %.lr.ph
  %i.k = add nuw i32 %i.g, 1                      ; 4 uses
  %wide.trip.count = zext i32 %i.k to i64
  br label %Vec_IntFind.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = add nuw i32 %i.g, 1                      ; 4 uses
  %wide.trip.count75 = zext i32 %i.n to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %Vec_IntFind.exit.us, %.lr.ph.split.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %Vec_IntFind.exit.us ], [ 1, %.lr.ph.split.us ] ; 3 uses
  %.02847.us = phi i32 [ %.1.us, %Vec_IntFind.exit.us ], [ -1, %.lr.ph.split.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv72
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  %i.s = icmp eq i32 %i.r, %i.p
  br i1 %i.s, label %Vec_IntFind.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Vec_IntFind.exit.thread.loopexit.us, label %bb.c, !llvm.loop !0

Vec_IntFind.exit.us:                              ; preds = %bb.c, %Vec_IntFind.exit.thread.loopexit.us
  %.1.us = phi i32 [ %i.p, %Vec_IntFind.exit.thread.loopexit.us ], [ %.02847.us, %bb.c ] ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %Vec_IntFind.exit.thread._crit_edge, label %.lr.ph.i.us, !llvm.loop !154

Vec_IntFind.exit.thread.loopexit.us:              ; preds = %bb.d
  %i.t = icmp eq i32 %.02847.us, -1
  br i1 %i.t, label %Vec_IntFind.exit.us, label %Vec_IntFind.exit.thread._crit_edge.loopexit.split.loop.exit
end_hunk_0
