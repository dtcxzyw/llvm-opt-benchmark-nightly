inline.NumInlined: 740
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Wlc_NtkPrintDistribSortOne:bb.a
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !102
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv.i15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !102
  %i.bm = xor i64 %indvars.iv.i15, -2
  %i.bn = getelementptr [8 x i8], ptr %i.bc, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !102
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !102
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !102
  %indvars.iv.next.i16.1 = add nuw nsw i64 %indvars.iv.i15, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !107

Vec_WrdReverseOrder.exit.loopexit.unr-lcssa:      ; preds = %bb.b
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %Vec_WrdReverseOrder.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa, %.lr.ph.i13
  %indvars.iv.i15.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i16.1, %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !102
  %i.br = xor i64 %indvars.iv.i15.epil.init, -1
  %i.bs = getelementptr [8 x i8], ptr %i.bc, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !102
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !102
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !102
  br label %Vec_WrdReverseOrder.exit

Vec_WrdReverseOrder.exit:                         ; preds = %.epil.preheader, %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !101 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %.lr.ph.i19, label %Vec_WrdReverseOrder.exit24

.lr.ph.i19:                                       ; preds = %Vec_WrdReverseOrder.exit
  %i.bx = lshr i32 %i.bv, 1                       ; 3 uses
  %i.by = zext nneg i32 %i.bv to i64
  %wide.trip.count.i20 = zext nneg i32 %i.bx to i64 ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %.val9, i64 %i.by ; 3 uses
  %xtraiter29 = and i64 %wide.trip.count.i20, 1
  %i.ca = icmp eq i32 %i.bx, 1
  br i1 %i.ca, label %.epil.preheader28, label %.lr.ph.i19.new

.lr.ph.i19.new:                                   ; preds = %.lr.ph.i19
  %unroll_iter32 = and i64 %wide.trip.count.i20, 1073741822
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i22.1, %bb.c ] ; 5 uses
  %niter33 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter33.next.1, %bb.c ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.i21 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !102
  %i.cd = xor i64 %indvars.iv.i21, -1
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !102
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !102
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.i21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !102
  %i.cj = xor i64 %indvars.iv.i21, -2
  %i.ck = getelementptr [8 x i8], ptr %i.bz, i64 %i.cj ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !102
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !102
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !102
  %indvars.iv.next.i22.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter33.next.1 = add i64 %niter33, 2           ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa, label %bb.c, !llvm.loop !107

Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa:    ; preds = %bb.c
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %Vec_WrdReverseOrder.exit24, label %.epil.preheader28

.epil.preheader28:                                ; preds = %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa, %.lr.ph.i19
  %indvars.iv.i21.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i22.1, %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i32 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.i21.epil.init ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !102
  %i.co = xor i64 %indvars.iv.i21.epil.init, -1
  %i.cp = getelementptr [8 x i8], ptr %i.bz, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !102
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !102
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !102
  br label %Vec_WrdReverseOrder.exit24

Vec_WrdReverseOrder.exit24:                       ; preds = %.epil.preheader28, %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa, %Vec_WrdReverseOrder.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_NtkPrintDistrib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) local_unnamed_addr #3 {
Vec_IntStart.exit:
  %i.a = alloca [2 x [60 x i32]], align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %i.a, i8 0, i64 480, i1 false)
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 60, ptr %i.b, align 8, !tbaa !26
  %calloc = tail call dereferenceable_or_null(240) ptr @calloc(i64 1, i64 240) ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 24 uses
  store ptr %calloc, ptr %i.d, align 8, !tbaa !25
  store i32 60, ptr %i.c, align 4, !tbaa !31
  %i.e = getelementptr i8, ptr %0, i64 36
  %.val411 = load i32, ptr %i.e, align 4, !tbaa !31
  %.not = icmp ne i32 %.val411, 2
  %.not341815 = icmp eq i32 %1, 0
  %.not341 = or i1 %.not341815, %.not             ; 4 uses
  br i1 %.not341, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Vec_IntStart.exit
  call void @Wlc_NtkCollectStats(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_IntStart.exit
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 60, ptr %i.f, align 8, !tbaa !108
  %calloc.i = tail call dereferenceable_or_null(480) ptr @calloc(i64 1, i64 480) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %calloc.i, ptr %i.h, align 8, !tbaa !43
  store i32 60, ptr %i.g, align 4, !tbaa !109
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 60, ptr %i.i, align 8, !tbaa !108
  %calloc.i558 = tail call dereferenceable_or_null(480) ptr @calloc(i64 1, i64 480) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %calloc.i558, ptr %i.k, align 8, !tbaa !43
  store i32 60, ptr %i.j, align 4, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !101
  store i32 16, ptr %i.l, align 8, !tbaa !110
  %i.n = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %indvars.iv
  store ptr %i.l, ptr %i.p, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %.preheader817, label %bb.c, !llvm.loop !111

.preheader:                                       ; preds = %.preheader817
  %i.q = getelementptr i8, ptr %0, i64 648        ; 4 uses
  %.val362822 = load i32, ptr %i.q, align 8, !tbaa !30
  %i.r = icmp sgt i32 %.val362822, 1
  br i1 %i.r, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr i8, ptr %0, i64 640        ; 44 uses
  %i.t = getelementptr i8, ptr %0, i64 700
  %i.u = getelementptr i8, ptr %0, i64 704
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.w = getelementptr inbounds nuw i8, ptr %calloc, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %calloc, i64 108 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %calloc, i64 104 ; 2 uses
  br label %bb.d

.preheader817:                                    ; preds = %bb.c, %.preheader817
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %.preheader817 ], [ 0, %bb.c ] ; 2 uses
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !101
  store i32 16, ptr %i.z, align 8, !tbaa !110
  %i.ab = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %calloc.i558, i64 %indvars.iv835
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !100
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %exitcond838.not = icmp eq i64 %indvars.iv.next836, 60
  br i1 %exitcond838.not, label %.preheader, label %.preheader817, !llvm.loop !112

bb.d:                                             ; preds = %.lr.ph, %bb.cf
  %.val386 = phi ptr [ %calloc, %.lr.ph ], [ %.val386885, %bb.cf ] ; 36 uses
  %.val385 = phi ptr [ %calloc, %.lr.ph ], [ %.val385883, %bb.cf ] ; 34 uses
  %.val384 = phi ptr [ %calloc, %.lr.ph ], [ %.val384881, %bb.cf ] ; 32 uses
  %.val383 = phi ptr [ %calloc, %.lr.ph ], [ %.val383879, %bb.cf ] ; 30 uses
  %.val382 = phi ptr [ %calloc, %.lr.ph ], [ %.val382877, %bb.cf ] ; 28 uses
  %.val381 = phi ptr [ %calloc, %.lr.ph ], [ %.val381875, %bb.cf ] ; 26 uses
  %.val380 = phi ptr [ %calloc, %.lr.ph ], [ %.val380873, %bb.cf ] ; 24 uses
  %.val379 = phi ptr [ %calloc, %.lr.ph ], [ %.val379871, %bb.cf ] ; 22 uses
  %.val378 = phi ptr [ %calloc, %.lr.ph ], [ %.val378869, %bb.cf ] ; 20 uses
  %.val377 = phi ptr [ %calloc, %.lr.ph ], [ %.val377867, %bb.cf ] ; 18 uses
  %.val376 = phi ptr [ %calloc, %.lr.ph ], [ %.val376865, %bb.cf ] ; 16 uses
  %.val375 = phi ptr [ %calloc, %.lr.ph ], [ %.val375863, %bb.cf ] ; 14 uses
  %.val374 = phi ptr [ %calloc, %.lr.ph ], [ %.val374861, %bb.cf ] ; 12 uses
  %.val373 = phi ptr [ %calloc, %.lr.ph ], [ %.val373859, %bb.cf ] ; 10 uses
  %.val372 = phi ptr [ %calloc, %.lr.ph ], [ %.val372857, %bb.cf ] ; 8 uses
  %.val371 = phi ptr [ %calloc, %.lr.ph ], [ %.val371855, %bb.cf ] ; 6 uses
  %indvars.iv839 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next840, %bb.cf ] ; 6 uses
  %.0327827 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.cf ] ; 2 uses
  %.0328826 = phi i32 [ 0, %.lr.ph ], [ %.1329, %bb.cf ]
  %.0334823 = phi i64 [ 0, %.lr.ph ], [ %.1335, %bb.cf ]
  %.val359 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val359, i64 %indvars.iv839 ; 111 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8      ; 12 uses
  %.val.i = load i32, ptr %i.af, align 8, !tbaa !35
  %i.ag = getelementptr i8, ptr %i.ae, i64 12     ; 9 uses
  %.val2.i = load i32, ptr %i.ag, align 4, !tbaa !37 ; 2 uses
  %i.ah = sub nsw i32 %.val.i, %.val2.i
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %.val3.i = load i16, ptr %i.ae, align 8         ; 2 uses
  %i.aj = lshr i16 %.val3.i, 6
  %i.ak = and i16 %i.aj, 1
  %i.al = zext nneg i16 %i.ak to i32
  %i.am = shl nuw i32 %i.ai, 1
  %i.an = add i32 %i.am, 2
  %i.ao = or disjoint i32 %i.an, %i.al
  %i.ap = icmp sgt i32 %i.ao, 2097151
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = add nuw nsw i32 %i.ai, 1                ; 2 uses
  %i.ar = and i32 %i.aq, 1048575
  %i.as = trunc nuw nsw i64 %indvars.iv839 to i32
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.as, i32 noundef %i.aq, i32 noundef %i.ar) ; 0 uses
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !37
  %.val360.pre = load i16, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val360 = phi i16 [ %.val360.pre, %bb.e ], [ %.val3.i, %bb.d ] ; 10 uses
  %i.au = phi i32 [ %.pre, %bb.e ], [ %.val2.i, %bb.d ] ; 5 uses
  %.not349.a = icmp ne i32 %i.au, 0               ; 2 uses
  %3 = icmp eq ptr %.0327827, null
  %4 = zext i1 %.not349.a to i32
  %.1329 = add nuw nsw i32 %.0328826, %4          ; 3 uses
  %5 = select i1 %.not349.a, i1 %3, i1 false
  %.2 = select i1 %5, ptr %i.ae, ptr %.0327827    ; 4 uses
  %i.av = and i16 %.val360, 61
  %narrow.i.not = icmp eq i16 %i.av, 1
  br i1 %narrow.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = and i16 %.val360, 63                    ; 7 uses
  switch i16 %i.aw, label %bb.j [
    i16 6, label %bb.h
    i16 23, label %bb.h
    i16 7, label %bb.i
    i16 22, label %bb.i
    i16 53, label %bb.i
    i16 24, label %bb.i
    i16 25, label %bb.i
    i16 15, label %bb.i
    i16 26, label %bb.i
    i16 50, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  %.val.i559 = load i32, ptr %i.af, align 8, !tbaa !35
  %i.ax = sub nsw i32 %.val.i559, %i.au
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = lshr i16 %.val360, 6
  %i.ba = and i16 %i.az, 1
  %i.bb = zext nneg i16 %i.ba to i32
  %i.bc = shl nuw i32 %i.ay, 1
  %i.bd = add i32 %i.bc, 2
  %i.be = or disjoint i32 %i.bd, %i.bb
  %i.bf = sext i32 %i.be to i64
  br label %bb.v

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %.val.i562 = load i32, ptr %i.af, align 8, !tbaa !35
  %i.bg = sub nsw i32 %.val.i562, %i.au
  %i.bh = tail call i32 @llvm.abs.i32(i32 %i.bg, i1 true)
  %i.bi = lshr i16 %.val360, 6
  %i.bj = and i16 %i.bi, 1
  %i.bk = zext nneg i16 %i.bj to i32
  %i.bl = shl nuw i32 %i.bh, 1
  %i.bm = add i32 %i.bl, 2
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !38
  %i.bq = icmp ugt i32 %i.bp, 2
  %cond = icmp eq i16 %i.aw, 22
  %or.cond814 = or i1 %cond, %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %or.cond814, label %Wlc_ObjHasArray.exit.thread.i.i.i, label %Wlc_ObjFanin0.exit

Wlc_ObjHasArray.exit.thread.i.i.i:                ; preds = %bb.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit

Wlc_ObjFanin0.exit:                               ; preds = %bb.i, %Wlc_ObjHasArray.exit.thread.i.i.i
  %i.bt = phi ptr [ %i.bs, %Wlc_ObjHasArray.exit.thread.i.i.i ], [ %i.br, %bb.i ]
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %.val.i565 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [24 x i8], ptr %.val.i565, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %.val.i566 = load i32, ptr %i.bx, align 8, !tbaa !35
  %i.by = getelementptr i8, ptr %i.bw, i64 12
  %.val2.i567 = load i32, ptr %i.by, align 4, !tbaa !37
  %i.bz = sub nsw i32 %.val.i566, %.val2.i567
  %i.ca = tail call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %.val3.i568 = load i16, ptr %i.bw, align 8
  %i.cb = lshr i16 %.val3.i568, 6
  %i.cc = and i16 %i.cb, 1
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = shl nuw i32 %i.ca, 1
  %i.cf = add i32 %i.ce, 2
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 21
  %i.cj = sext i32 %i.bn to i64
  %i.ck = or i64 %i.ci, %i.cj
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.cl = getelementptr i8, ptr %i.ae, i64 4
  %.val365 = load i32, ptr %i.cl, align 4, !tbaa !38 ; 2 uses
  switch i32 %.val365, label %bb.p [
    i32 0, label %bb.k
    i32 1, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.val.i569 = load i32, ptr %i.t, align 4, !tbaa !31
  %i.cm = icmp slt i32 %.val.i569, 1
  br i1 %i.cm, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val9.i = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val9.i, i64 %indvars.iv839
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !11 ; 2 uses
  %.not7.i = icmp eq i32 %i.co, 0
  br i1 %.not7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.cq = tail call ptr @Abc_NamStr(ptr noundef %i.cp, i32 noundef %i.co) #27
  %.pre886 = trunc nuw nsw i64 %indvars.iv839 to i32
  br label %Wlc_ObjName.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.cr = trunc nuw nsw i64 %indvars.iv839 to i32 ; 2 uses
  %i.cs = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Wlc_ObjName.Buffer, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cr) #27 ; 0 uses
  br label %Wlc_ObjName.exit

Wlc_ObjName.exit:                                 ; preds = %bb.m, %bb.n
  %.pre-phi = phi i32 [ %.pre886, %bb.m ], [ %i.cr, %bb.n ]
  %.0.i = phi ptr [ %i.cq, %bb.m ], [ @Wlc_ObjName.Buffer, %bb.n ]
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.pre-phi, ptr noundef %.0.i) ; 0 uses
  %.pre853 = load i16, ptr %i.ae, align 8
  br label %bb.v

bb.o:                                             ; preds = %bb.j
  %.val.i570 = load i32, ptr %i.af, align 8, !tbaa !35
  %i.cu = sub nsw i32 %.val.i570, %i.au
  %i.cv = tail call i32 @llvm.abs.i32(i32 %i.cu, i1 true)
  %i.cw = lshr i16 %.val360, 6
  %i.cx = and i16 %i.cw, 1
  %i.cy = zext nneg i16 %i.cx to i32
  %i.cz = shl nuw i32 %i.cv, 1
  %i.da = add i32 %i.cz, 2
  %i.db = or disjoint i32 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  switch i16 %i.aw, label %Wlc_ObjFanin0.exit575 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i573
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i573
  ]

Wlc_ObjHasArray.exit.thread.i.i.i573:             ; preds = %bb.o, %bb.o
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit575

Wlc_ObjFanin0.exit575:                            ; preds = %bb.o, %Wlc_ObjHasArray.exit.thread.i.i.i573
  %i.de = phi ptr [ %i.dd, %Wlc_ObjHasArray.exit.thread.i.i.i573 ], [ %i.dc, %bb.o ]
  %i.df = load i32, ptr %i.de, align 4, !tbaa !11
  %.val.i574 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [24 x i8], ptr %.val.i574, i64 %i.dg ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %.val.i576 = load i32, ptr %i.di, align 8, !tbaa !35
  %i.dj = getelementptr i8, ptr %i.dh, i64 12
  %.val2.i577 = load i32, ptr %i.dj, align 4, !tbaa !37
  %i.dk = sub nsw i32 %.val.i576, %.val2.i577
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %.val3.i578 = load i16, ptr %i.dh, align 8
  %i.dm = lshr i16 %.val3.i578, 6
  %i.dn = and i16 %i.dm, 1
  %i.do = zext nneg i16 %i.dn to i32
  %i.dp = shl nuw i32 %i.dl, 1
  %i.dq = add i32 %i.dp, 2
  %i.dr = or disjoint i32 %i.dq, %i.do
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 21
  %i.du = sext i32 %i.db to i64
  %i.dv = or i64 %i.dt, %i.du
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  %.val.i579 = load i32, ptr %i.af, align 8, !tbaa !35
  %i.dw = sub nsw i32 %.val.i579, %i.au
  %i.dx = tail call i32 @llvm.abs.i32(i32 %i.dw, i1 true)
  %i.dy = lshr i16 %.val360, 6
  %i.dz = and i16 %i.dy, 1
  %i.ea = zext nneg i16 %i.dz to i32
  %i.eb = shl nuw i32 %i.dx, 1
  %i.ec = add i32 %i.eb, 2
  %i.ed = or disjoint i32 %i.ec, %i.ea
  %i.ee = icmp ugt i32 %.val365, 2                ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  br i1 %i.ee, label %Wlc_ObjFaninId.exit.thread810, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i16 %i.aw, label %Wlc_ObjFaninId.exit.thread [
    i16 6, label %Wlc_ObjFaninId.exit
    i16 22, label %Wlc_ObjFaninId.exit
  ]

Wlc_ObjFaninId.exit:                              ; preds = %bb.q, %bb.q
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !11
  %.not351 = icmp eq i32 %i.eh, 0
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = trunc i64 %i.ei to i32
  br i1 %.not351, label %.thread807, label %.thread

Wlc_ObjFaninId.exit.thread810:                    ; preds = %bb.p
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !32
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !11
  %.not351811 = icmp eq i32 %i.el, 0
  br i1 %.not351811, label %Wlc_ObjFaninId.exit589, label %Wlc_ObjHasArray.exit.thread.i.i.i582

Wlc_ObjFaninId.exit.thread:                       ; preds = %bb.q
  %i.em = load i32, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %.not351806 = icmp eq i32 %i.em, 0
  br i1 %.not351806, label %.thread807, label %.thread

.thread:                                          ; preds = %Wlc_ObjFaninId.exit, %Wlc_ObjFaninId.exit.thread
  %i.en = phi i32 [ %i.ej, %Wlc_ObjFaninId.exit ], [ %i.em, %Wlc_ObjFaninId.exit.thread ]
  switch i16 %i.aw, label %bb.r [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i582
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i582
  ]

Wlc_ObjHasArray.exit.thread.i.i.i582:             ; preds = %Wlc_ObjFaninId.exit.thread810, %.thread, %.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !32
  %.pre852 = load i32, ptr %i.ep, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i582, %.thread
  %i.eq = phi i32 [ %.pre852, %Wlc_ObjHasArray.exit.thread.i.i.i582 ], [ %i.en, %.thread ]
  %.val.i583 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [24 x i8], ptr %.val.i583, i64 %i.er ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 8
  %.val.i585 = load i32, ptr %i.et, align 8, !tbaa !35
  %i.eu = getelementptr i8, ptr %i.es, i64 12
  %.val2.i586 = load i32, ptr %i.eu, align 4, !tbaa !37
  %i.ev = sub nsw i32 %.val.i585, %.val2.i586
  %i.ew = tail call i32 @llvm.abs.i32(i32 %i.ev, i1 true)
  %.val3.i587 = load i16, ptr %i.es, align 8
  %i.ex = lshr i16 %.val3.i587, 6
  %i.ey = and i16 %i.ex, 1
  %i.ez = zext nneg i16 %i.ey to i32
  %i.fa = shl nuw i32 %i.ew, 1
  %i.fb = add i32 %i.fa, 2
  %i.fc = or disjoint i32 %i.fb, %i.ez            ; 2 uses
  br i1 %i.ee, label %Wlc_ObjFaninId.exit589, label %.thread807

.thread807:                                       ; preds = %Wlc_ObjFaninId.exit, %Wlc_ObjFaninId.exit.thread, %bb.r
  %i.fd = phi i32 [ %i.fc, %bb.r ], [ 0, %Wlc_ObjFaninId.exit.thread ], [ 0, %Wlc_ObjFaninId.exit ] ; 4 uses
  switch i16 %i.aw, label %Wlc_ObjFaninId.exit589.thread [
    i16 6, label %Wlc_ObjFaninId.exit589
    i16 22, label %Wlc_ObjFaninId.exit589
  ]

Wlc_ObjFaninId.exit589:                           ; preds = %Wlc_ObjFaninId.exit.thread810, %bb.r, %.thread807, %.thread807
  %i.fe = phi i32 [ %i.fd, %.thread807 ], [ %i.fd, %.thread807 ], [ %i.fc, %bb.r ], [ 0, %Wlc_ObjFaninId.exit.thread810 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !11
  %.not352 = icmp eq i32 %i.fi, 0
  br i1 %.not352, label %bb.u, label %bb.s

Wlc_ObjFaninId.exit589.thread:                    ; preds = %.thread807
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !11
  %.not352808 = icmp eq i32 %i.fk, 0
  br i1 %.not352808, label %bb.u, label %.thread809

bb.s:                                             ; preds = %Wlc_ObjFaninId.exit589
  br i1 %i.ee, label %Wlc_ObjHasArray.exit.thread.i.i.i590, label %.thread809

.thread809:                                       ; preds = %Wlc_ObjFaninId.exit589.thread, %bb.s
  %i.fl = phi i32 [ %i.fe, %bb.s ], [ %i.fd, %Wlc_ObjFaninId.exit589.thread ] ; 3 uses
  switch i16 %i.aw, label %bb.t [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i590
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i590
  ]

Wlc_ObjHasArray.exit.thread.i.i.i590:             ; preds = %.thread809, %.thread809, %bb.s
  %i.fm = phi i32 [ %i.fl, %.thread809 ], [ %i.fl, %.thread809 ], [ %i.fe, %bb.s ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !32
  br label %Wlc_ObjFanin1.exit

bb.t:                                             ; preds = %.thread809
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %Wlc_ObjFanin1.exit

Wlc_ObjFanin1.exit:                               ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i590, %bb.t
  %i.fq = phi i32 [ %i.fm, %Wlc_ObjHasArray.exit.thread.i.i.i590 ], [ %i.fl, %bb.t ]
  %i.fr = phi ptr [ %i.fo, %Wlc_ObjHasArray.exit.thread.i.i.i590 ], [ %i.fp, %bb.t ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !11
  %.val.i591 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [24 x i8], ptr %.val.i591, i64 %i.fu ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %.val.i592 = load i32, ptr %i.fw, align 8, !tbaa !35
  %i.fx = getelementptr i8, ptr %i.fv, i64 12
  %.val2.i593 = load i32, ptr %i.fx, align 4, !tbaa !37
  %i.fy = sub nsw i32 %.val.i592, %.val2.i593
  %i.fz = tail call i32 @llvm.abs.i32(i32 %i.fy, i1 true)
  %.val3.i594 = load i16, ptr %i.fv, align 8
  %i.ga = lshr i16 %.val3.i594, 6
  %i.gb = and i16 %i.ga, 1
  %i.gc = zext nneg i16 %i.gb to i32
  %i.gd = shl nuw i32 %i.fz, 1
  %i.ge = add i32 %i.gd, 2
  %i.gf = or disjoint i32 %i.ge, %i.gc
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl i64 %i.gg, 42
  br label %bb.u

bb.u:                                             ; preds = %Wlc_ObjFaninId.exit589.thread, %Wlc_ObjFaninId.exit589, %Wlc_ObjFanin1.exit
  %i.gi = phi i32 [ %i.fq, %Wlc_ObjFanin1.exit ], [ %i.fe, %Wlc_ObjFaninId.exit589 ], [ %i.fd, %Wlc_ObjFaninId.exit589.thread ]
  %i.gj = phi i64 [ %i.gh, %Wlc_ObjFanin1.exit ], [ 0, %Wlc_ObjFaninId.exit589 ], [ 0, %Wlc_ObjFaninId.exit589.thread ]
  %i.gk = sext i32 %i.gi to i64
  %i.gl = shl nsw i64 %i.gk, 21
  %i.gm = sext i32 %i.ed to i64
  %i.gn = or i64 %i.gj, %i.gm
  %i.go = or i64 %i.gn, %i.gl
  br label %bb.v

bb.v:                                             ; preds = %Wlc_ObjFanin0.exit, %Wlc_ObjFanin0.exit575, %bb.u, %Wlc_ObjName.exit, %bb.h
  %i.gp = phi i16 [ %.val360, %bb.h ], [ %.val360, %Wlc_ObjFanin0.exit ], [ %.pre853, %Wlc_ObjName.exit ], [ %.val360, %Wlc_ObjFanin0.exit575 ], [ %.val360, %bb.u ]
  %.1335 = phi i64 [ %i.bf, %bb.h ], [ %i.ck, %Wlc_ObjFanin0.exit ], [ %.0334823, %Wlc_ObjName.exit ], [ %i.dv, %Wlc_ObjFanin0.exit575 ], [ %i.go, %bb.u ] ; 3 uses
  %i.gq = and i16 %i.gp, 63
  %i.gr = zext nneg i16 %i.gq to i64              ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !100 ; 7 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %calloc.i558, i64 %i.gr
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !100 ; 7 uses
  %i.gw = getelementptr i8, ptr %i.gt, i64 4      ; 3 uses
  %.val16.i = load i32, ptr %i.gw, align 4, !tbaa !101 ; 9 uses
  %i.gx = icmp sgt i32 %.val16.i, 0
  br i1 %i.gx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.gy = getelementptr i8, ptr %i.gt, i64 8
  %.val17.i = load ptr, ptr %i.gy, align 8, !tbaa !47
  %wide.trip.count.i = zext nneg i32 %.val16.i to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.x, !llvm.loop !113

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.val17.i, i64 %indvars.iv.i
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !102
  %i.hb = icmp eq i64 %i.ha, %.1335
  br i1 %i.hb, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.hc = getelementptr i8, ptr %i.gv, i64 8
  %.val18.i = load ptr, ptr %i.hc, align 8, !tbaa !47
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val18.i, i64 %indvars.iv.i ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !102
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !102
  br label %Wlc_NtkPrintDistribAddOne.exit

.critedge.i:                                      ; preds = %bb.w, %bb.v
  %i.hg = load i32, ptr %i.gt, align 8, !tbaa !110
  %i.hh = icmp eq i32 %.val16.i, %i.hg
  br i1 %i.hh, label %bb.z, label %Vec_WrdPush.exit.i

bb.z:                                             ; preds = %.critedge.i
  %i.hi = icmp slt i32 %.val16.i, 16
  br i1 %i.hi, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not9.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hl = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.hk, i64 noundef 128) #29
  br label %Vec_WrdGrow.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hm = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_WrdGrow.exit.i.i

Vec_WrdGrow.exit.i.i:                             ; preds = %bb.ac, %bb.ab
  %i.hn = phi ptr [ %i.hl, %bb.ab ], [ %i.hm, %bb.ac ]
  store ptr %i.hn, ptr %i.hj, align 8, !tbaa !47
  br label %Vec_WrdGrow.exit11.sink.split.i.i

bb.ad:                                            ; preds = %bb.z
  %i.ho = icmp samesign ult i32 %.val16.i, 1073741823
  %i.hp = shl nuw nsw i32 %.val16.i, 1
  %spec.select.i.i = select i1 %i.ho, i32 %i.hp, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val16.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.ae, label %Vec_WrdPush.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !47 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.hr, null
  %i.hs = zext nneg i32 %spec.select.i.i to i64
  %i.ht = shl nuw nsw i64 %i.hs, 3                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = tail call ptr @realloc(ptr noundef nonnull %i.hr, i64 noundef %i.ht) #29
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hv = tail call noalias ptr @malloc(i64 noundef %i.ht) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hw = phi ptr [ %i.hu, %bb.af ], [ %i.hv, %bb.ag ]
  store ptr %i.hw, ptr %i.hq, align 8, !tbaa !47
  br label %Vec_WrdGrow.exit11.sink.split.i.i

Vec_WrdGrow.exit11.sink.split.i.i:                ; preds = %bb.ah, %Vec_WrdGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.ah ], [ 16, %Vec_WrdGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.gt, align 8, !tbaa !110
  %.pre.i = load i32, ptr %i.gw, align 4, !tbaa !101
  br label %Vec_WrdPush.exit.i

Vec_WrdPush.exit.i:                               ; preds = %Vec_WrdGrow.exit11.sink.split.i.i, %bb.ad, %.critedge.i
  %i.hx = phi i32 [ %.val16.i, %.critedge.i ], [ %.val16.i, %bb.ad ], [ %.pre.i, %Vec_WrdGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ia = add nsw i32 %i.hx, 1
  store i32 %i.ia, ptr %i.gw, align 4, !tbaa !101
  %i.ib = sext i32 %i.hx to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ib
  store i64 %.1335, ptr %i.ic, align 8, !tbaa !102
  %i.id = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 3 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !101 ; 7 uses
  %i.if = load i32, ptr %i.gv, align 8, !tbaa !110
  %i.ig = icmp eq i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.ai, label %Vec_WrdPush.exit26.i

bb.ai:                                            ; preds = %Vec_WrdPush.exit.i
  %i.ih = icmp slt i32 %i.ie, 16
  br i1 %i.ih, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i24.i = icmp eq ptr %i.ij, null
  br i1 %.not9.i.i24.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ik = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ij, i64 noundef 128) #29
  br label %Vec_WrdGrow.exit.i25.i

bb.al:                                            ; preds = %bb.aj
  %i.il = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_WrdGrow.exit.i25.i

Vec_WrdGrow.exit.i25.i:                           ; preds = %bb.al, %bb.ak
  %i.im = phi ptr [ %i.ik, %bb.ak ], [ %i.il, %bb.al ]
  store ptr %i.im, ptr %i.ii, align 8, !tbaa !47
  br label %Vec_WrdGrow.exit11.sink.split.i22.i

bb.am:                                            ; preds = %bb.ai
  %i.in = icmp samesign ult i32 %i.ie, 1073741823
  %i.io = shl nuw nsw i32 %i.ie, 1
  %spec.select.i19.i = select i1 %i.in, i32 %i.io, i32 2147483647 ; 3 uses
  %.not.i9.i20.i = icmp samesign ult i32 %i.ie, %spec.select.i19.i
  br i1 %.not.i9.i20.i, label %bb.an, label %Vec_WrdPush.exit26.i

bb.an:                                            ; preds = %bb.am
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !47 ; 2 uses
  %.not9.i10.i21.i = icmp eq ptr %i.iq, null
  %i.ir = zext nneg i32 %spec.select.i19.i to i64
  %i.is = shl nuw nsw i64 %i.ir, 3                ; 2 uses
  br i1 %.not9.i10.i21.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.it = tail call ptr @realloc(ptr noundef nonnull %i.iq, i64 noundef %i.is) #29
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.is) #28
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.iv = phi ptr [ %i.it, %bb.ao ], [ %i.iu, %bb.ap ]
  store ptr %i.iv, ptr %i.ip, align 8, !tbaa !47
  br label %Vec_WrdGrow.exit11.sink.split.i22.i

Vec_WrdGrow.exit11.sink.split.i22.i:              ; preds = %bb.aq, %Vec_WrdGrow.exit.i25.i
  %spec.select.sink.i23.i = phi i32 [ %spec.select.i19.i, %bb.aq ], [ 16, %Vec_WrdGrow.exit.i25.i ]
  store i32 %spec.select.sink.i23.i, ptr %i.gv, align 8, !tbaa !110
  %.pre9.i = load i32, ptr %i.id, align 4, !tbaa !101
  br label %Vec_WrdPush.exit26.i

Vec_WrdPush.exit26.i:                             ; preds = %Vec_WrdGrow.exit11.sink.split.i22.i, %bb.am, %Vec_WrdPush.exit.i
  %i.iw = phi i32 [ %i.ie, %Vec_WrdPush.exit.i ], [ %i.ie, %bb.am ], [ %.pre9.i, %Vec_WrdGrow.exit11.sink.split.i22.i ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !47
  %i.iz = add nsw i32 %i.iw, 1
  store i32 %i.iz, ptr %i.id, align 4, !tbaa !101
  %i.ja = sext i32 %i.iw to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.ja
  store i64 1, ptr %i.jb, align 8, !tbaa !102
  br label %Wlc_NtkPrintDistribAddOne.exit

Wlc_NtkPrintDistribAddOne.exit:                   ; preds = %bb.y, %Vec_WrdPush.exit26.i
  %i.jc = load i16, ptr %i.ae, align 8
  %i.jd = and i16 %i.jc, 63
  switch i16 %i.jd, label %bb.cf [
    i16 8, label %bb.ar
    i16 9, label %bb.as
    i16 10, label %bb.at
    i16 11, label %bb.au
    i16 12, label %bb.av
    i16 13, label %bb.aw
    i16 14, label %bb.ax
    i16 52, label %bb.ce
    i16 16, label %bb.ay
    i16 17, label %bb.az
    i16 18, label %bb.ba
    i16 19, label %bb.bb
    i16 20, label %bb.bc
end_hunk_0
begin_hunk_1_@Wlc_NtkPrintDistrib:Vec_IntStart.exit
  %.val431 = load i32, ptr %i.aov, align 4, !tbaa !37
  %i.aow = sub nsw i32 %.val430, %.val431
  %i.aox = tail call i32 @llvm.abs.i32(i32 %i.aow, i1 true)
  %i.aoy = add nuw nsw i32 %i.aox, 1
  %i.aoz = uitofp nneg i32 %i.aoy to double
  %i.apa = tail call double @pow(double noundef %i.aon, double noundef %i.aoz) #27
  %i.apb = fptosi double %i.apa to i32
  %i.apc = mul nsw i32 %i.apb, 10
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !25 ; 17 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.val369, i64 196 ; 2 uses
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !11
  %i.apf = add nsw i32 %i.ape, %i.apc
  store i32 %i.apf, ptr %i.apd, align 4, !tbaa !11
  br label %bb.cf

bb.cc:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !38
  %i.api = icmp ugt i32 %i.aph, 2
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.api, label %Wlc_ObjHasArray.exit.thread.i.i.i744, label %Wlc_ObjFanin0.exit746

Wlc_ObjHasArray.exit.thread.i.i.i744:             ; preds = %bb.cc
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit746

Wlc_ObjFanin0.exit746:                            ; preds = %bb.cc, %Wlc_ObjHasArray.exit.thread.i.i.i744
  %i.apl = phi ptr [ %i.apk, %Wlc_ObjHasArray.exit.thread.i.i.i744 ], [ %i.apj, %bb.cc ]
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !11
  %.val.i745 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [24 x i8], ptr %.val.i745, i64 %i.apn ; 2 uses
  %i.app = getelementptr i8, ptr %i.apo, i64 8
  %.val428 = load i32, ptr %i.app, align 8, !tbaa !35
  %i.apq = getelementptr i8, ptr %i.apo, i64 12
  %.val429 = load i32, ptr %i.apq, align 4, !tbaa !37
  %i.apr = sub nsw i32 %.val428, %.val429
  %i.aps = tail call i32 @llvm.abs.i32(i32 %i.apr, i1 true)
  %i.apt = shl i32 %i.aps, 2
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !25 ; 17 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.val368, i64 200 ; 2 uses
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !11
  %i.apw = add i32 %i.apv, 4
  %i.apx = add i32 %i.apw, %i.apt
  store i32 %i.apx, ptr %i.apu, align 4, !tbaa !11
  br label %bb.cf

bb.cd:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !38
  %i.aqa = icmp ugt i32 %i.apz, 2                 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aqa, label %Wlc_ObjHasArray.exit.thread.i.i.i747, label %Wlc_ObjFanin0.exit749

Wlc_ObjHasArray.exit.thread.i.i.i747:             ; preds = %bb.cd
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit749

Wlc_ObjFanin0.exit749:                            ; preds = %bb.cd, %Wlc_ObjHasArray.exit.thread.i.i.i747
  %i.aqd = phi ptr [ %i.aqc, %Wlc_ObjHasArray.exit.thread.i.i.i747 ], [ %i.aqb, %bb.cd ]
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !11
  %.val.i748 = load ptr, ptr %i.s, align 8, !tbaa !29 ; 3 uses
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [24 x i8], ptr %.val.i748, i64 %i.aqf ; 2 uses
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 8
  %.val426 = load i32, ptr %i.aqh, align 8, !tbaa !35
  %i.aqi = getelementptr i8, ptr %i.aqg, i64 12
  %.val427 = load i32, ptr %i.aqi, align 4, !tbaa !37
  %i.aqj = sub nsw i32 %.val426, %.val427
  %i.aqk = tail call i32 @llvm.abs.i32(i32 %i.aqj, i1 true)
  %i.aql = mul i32 %i.aqk, 11
  %i.aqm = add i32 %i.aql, 11
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aqa, label %Wlc_ObjHasArray.exit.thread.i.i.i750, label %Wlc_ObjFanin0.exit752

Wlc_ObjHasArray.exit.thread.i.i.i750:             ; preds = %Wlc_ObjFanin0.exit749
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit752

Wlc_ObjFanin0.exit752:                            ; preds = %Wlc_ObjFanin0.exit749, %Wlc_ObjHasArray.exit.thread.i.i.i750
  %i.aqp = phi ptr [ %i.aqo, %Wlc_ObjHasArray.exit.thread.i.i.i750 ], [ %i.aqn, %Wlc_ObjFanin0.exit749 ]
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !11
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds [24 x i8], ptr %.val.i748, i64 %i.aqr ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 8
  %.val424 = load i32, ptr %i.aqt, align 8, !tbaa !35
  %i.aqu = getelementptr i8, ptr %i.aqs, i64 12
  %.val425 = load i32, ptr %i.aqu, align 4, !tbaa !37
  %i.aqv = sub nsw i32 %.val424, %.val425
  %i.aqw = tail call i32 @llvm.abs.i32(i32 %i.aqv, i1 true)
  %i.aqx = add nuw nsw i32 %i.aqw, 1
  %i.aqy = mul nsw i32 %i.aqx, %i.aqm
  %i.aqz = lshr i32 %i.aqy, 3
  %i.ara = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aqa, label %Wlc_ObjHasArray.exit.thread.i.i.i753, label %Wlc_ObjFanin0.exit755

Wlc_ObjHasArray.exit.thread.i.i.i753:             ; preds = %Wlc_ObjFanin0.exit752
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit755

Wlc_ObjFanin0.exit755:                            ; preds = %Wlc_ObjFanin0.exit752, %Wlc_ObjHasArray.exit.thread.i.i.i753
  %i.arc = phi ptr [ %i.arb, %Wlc_ObjHasArray.exit.thread.i.i.i753 ], [ %i.ara, %Wlc_ObjFanin0.exit752 ]
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !11
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr inbounds [24 x i8], ptr %.val.i748, i64 %i.are ; 2 uses
  %i.arg = getelementptr i8, ptr %i.arf, i64 8
  %.val422 = load i32, ptr %i.arg, align 8, !tbaa !35
  %i.arh = getelementptr i8, ptr %i.arf, i64 12
  %.val423 = load i32, ptr %i.arh, align 4, !tbaa !37
  %i.ari = sub nsw i32 %.val422, %.val423
  %i.arj = tail call i32 @llvm.abs.i32(i32 %i.ari, i1 true)
  %i.ark = mul i32 %i.arj, 5
  %i.arl = add i32 %i.ark, 5
  %i.arm = lshr i32 %i.arl, 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !25 ; 17 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.val367, i64 204 ; 2 uses
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !11
  %i.arp = add nsw i32 %i.aqz, -5
  %i.arq = add i32 %i.arp, %i.aro
  %i.arr = add i32 %i.arq, %i.arm
  store i32 %i.arr, ptr %i.arn, align 4, !tbaa !11
  br label %bb.cf

bb.ce:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !38
  %i.aru = icmp ugt i32 %i.art, 2                 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aru, label %Wlc_ObjHasArray.exit.thread.i.i.i756, label %Wlc_ObjFanin0.exit758

Wlc_ObjHasArray.exit.thread.i.i.i756:             ; preds = %bb.ce
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !32
  br label %Wlc_ObjFanin0.exit758

Wlc_ObjFanin0.exit758:                            ; preds = %bb.ce, %Wlc_ObjHasArray.exit.thread.i.i.i756
  %i.arx = phi ptr [ %i.arw, %Wlc_ObjHasArray.exit.thread.i.i.i756 ], [ %i.arv, %bb.ce ]
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !11
  %.val.i757 = load ptr, ptr %i.s, align 8, !tbaa !29 ; 2 uses
  %i.arz = sext i32 %i.ary to i64
  %i.asa = getelementptr inbounds [24 x i8], ptr %.val.i757, i64 %i.arz ; 2 uses
  %i.asb = getelementptr i8, ptr %i.asa, i64 8
  %.val420 = load i32, ptr %i.asb, align 8, !tbaa !35
  %i.asc = getelementptr i8, ptr %i.asa, i64 12
  %.val421 = load i32, ptr %i.asc, align 4, !tbaa !37
  %i.asd = sub nsw i32 %.val420, %.val421
  %i.ase = tail call i32 @llvm.abs.i32(i32 %i.asd, i1 true)
  %i.asf = mul i32 %i.ase, 5
  %i.asg = add i32 %i.asf, 5
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aru, label %Wlc_ObjHasArray.exit.thread.i.i.i759, label %Wlc_ObjFanin1.exit761

Wlc_ObjHasArray.exit.thread.i.i.i759:             ; preds = %Wlc_ObjFanin0.exit758
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !32
  br label %Wlc_ObjFanin1.exit761

Wlc_ObjFanin1.exit761:                            ; preds = %Wlc_ObjFanin0.exit758, %Wlc_ObjHasArray.exit.thread.i.i.i759
  %i.asj = phi ptr [ %i.asi, %Wlc_ObjHasArray.exit.thread.i.i.i759 ], [ %i.ash, %Wlc_ObjFanin0.exit758 ]
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 4
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !11
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr inbounds [24 x i8], ptr %.val.i757, i64 %i.asm ; 2 uses
  %i.aso = getelementptr i8, ptr %i.asn, i64 8
  %.val418 = load i32, ptr %i.aso, align 8, !tbaa !35
  %i.asp = getelementptr i8, ptr %i.asn, i64 12
  %.val419 = load i32, ptr %i.asp, align 4, !tbaa !37
  %i.asq = sub nsw i32 %.val418, %.val419
  %i.asr = tail call i32 @llvm.abs.i32(i32 %i.asq, i1 true)
  %i.ass = add nuw nsw i32 %i.asr, 1
  %i.ast = mul nsw i32 %i.ass, %i.asg
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !25 ; 17 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.val366, i64 208 ; 2 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !11
  %i.asw = add nsw i32 %i.ast, %i.asv
  store i32 %i.asw, ptr %i.asu, align 4, !tbaa !11
  br label %bb.cf

bb.cf:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit, %bb.ar, %Wlc_ObjFanin0.exit600, %Wlc_ObjFanin0.exit608, %Wlc_ObjFanin0.exit616, %Wlc_ObjFanin0.exit620, %Wlc_ObjFanin0.exit626, %Wlc_ObjFanin0.exit632, %Wlc_ObjFanin0.exit638, %Wlc_ObjFanin1.exit650, %Wlc_ObjFanin1.exit662, %Wlc_ObjFanin0.exit668, %Wlc_ObjFanin0.exit674, %Wlc_ObjFanin0.exit680, %Wlc_ObjFanin0.exit686, %Wlc_ObjFanin0.exit692, %Wlc_ObjFanin0.exit698, %Wlc_ObjFanin0.exit704, %Wlc_ObjFanin0.exit719, %Wlc_ObjFanin0.exit737, %Wlc_ObjFanin0.exit746, %Wlc_ObjFanin1.exit761, %Wlc_ObjFanin0.exit755, %Wlc_ObjFanin0.exit743, %Wlc_ObjFanin0.exit728, %Wlc_ObjFanin1.exit710, %Wlc_ObjFanin0.exit701, %Wlc_ObjFanin0.exit695, %Wlc_ObjFanin0.exit689, %Wlc_ObjFanin0.exit683, %Wlc_ObjFanin0.exit677, %Wlc_ObjFanin0.exit671, %Wlc_ObjFanin0.exit665, %Wlc_ObjFanin1.exit656, %Wlc_ObjFanin1.exit644, %Wlc_ObjFanin0.exit635, %Wlc_ObjFanin0.exit629, %Wlc_ObjFanin0.exit623, %Wlc_ObjFanin0.exit612, %Wlc_ObjFanin0.exit604, %Wlc_ObjFanin0.exit597
  %.val386885 = phi ptr [ %.val386, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val386, %Wlc_ObjFanin0.exit638 ], [ %.val386, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val386, %Wlc_ObjFanin0.exit674 ], [ %.val386, %Wlc_ObjFanin0.exit680 ], [ %.val386, %Wlc_ObjFanin0.exit686 ], [ %.val386, %Wlc_ObjFanin0.exit692 ], [ %.val386, %Wlc_ObjFanin0.exit698 ], [ %.val386, %Wlc_ObjFanin0.exit704 ], [ %.val386, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val386, %Wlc_ObjFanin0.exit728 ], [ %.val386, %Wlc_ObjFanin1.exit710 ], [ %.val386, %Wlc_ObjFanin0.exit701 ], [ %.val386, %Wlc_ObjFanin0.exit695 ], [ %.val386, %Wlc_ObjFanin0.exit689 ], [ %.val386, %Wlc_ObjFanin0.exit683 ], [ %.val386, %Wlc_ObjFanin0.exit677 ], [ %.val386, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val386, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val385883 = phi ptr [ %.val385, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val385, %Wlc_ObjFanin0.exit638 ], [ %.val385, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val385, %Wlc_ObjFanin0.exit674 ], [ %.val385, %Wlc_ObjFanin0.exit680 ], [ %.val385, %Wlc_ObjFanin0.exit686 ], [ %.val385, %Wlc_ObjFanin0.exit692 ], [ %.val385, %Wlc_ObjFanin0.exit698 ], [ %.val385, %Wlc_ObjFanin0.exit704 ], [ %.val385, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val385, %Wlc_ObjFanin0.exit728 ], [ %.val385, %Wlc_ObjFanin1.exit710 ], [ %.val385, %Wlc_ObjFanin0.exit701 ], [ %.val385, %Wlc_ObjFanin0.exit695 ], [ %.val385, %Wlc_ObjFanin0.exit689 ], [ %.val385, %Wlc_ObjFanin0.exit683 ], [ %.val385, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val385, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val384881 = phi ptr [ %.val384, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val384, %Wlc_ObjFanin0.exit638 ], [ %.val384, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val384, %Wlc_ObjFanin0.exit680 ], [ %.val384, %Wlc_ObjFanin0.exit686 ], [ %.val384, %Wlc_ObjFanin0.exit692 ], [ %.val384, %Wlc_ObjFanin0.exit698 ], [ %.val384, %Wlc_ObjFanin0.exit704 ], [ %.val384, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val384, %Wlc_ObjFanin0.exit728 ], [ %.val384, %Wlc_ObjFanin1.exit710 ], [ %.val384, %Wlc_ObjFanin0.exit701 ], [ %.val384, %Wlc_ObjFanin0.exit695 ], [ %.val384, %Wlc_ObjFanin0.exit689 ], [ %.val384, %Wlc_ObjFanin0.exit683 ], [ %.val384, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val384, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val383879 = phi ptr [ %.val383, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val383, %Wlc_ObjFanin0.exit638 ], [ %.val383, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val383, %Wlc_ObjFanin0.exit680 ], [ %.val383, %Wlc_ObjFanin0.exit686 ], [ %.val383, %Wlc_ObjFanin0.exit692 ], [ %.val383, %Wlc_ObjFanin0.exit698 ], [ %.val383, %Wlc_ObjFanin0.exit704 ], [ %.val383, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val383, %Wlc_ObjFanin0.exit728 ], [ %.val383, %Wlc_ObjFanin1.exit710 ], [ %.val383, %Wlc_ObjFanin0.exit701 ], [ %.val383, %Wlc_ObjFanin0.exit695 ], [ %.val383, %Wlc_ObjFanin0.exit689 ], [ %.val383, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val383, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val382877 = phi ptr [ %.val382, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val382, %Wlc_ObjFanin0.exit638 ], [ %.val382, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val382, %Wlc_ObjFanin0.exit686 ], [ %.val382, %Wlc_ObjFanin0.exit692 ], [ %.val382, %Wlc_ObjFanin0.exit698 ], [ %.val382, %Wlc_ObjFanin0.exit704 ], [ %.val382, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val382, %Wlc_ObjFanin0.exit728 ], [ %.val382, %Wlc_ObjFanin1.exit710 ], [ %.val382, %Wlc_ObjFanin0.exit701 ], [ %.val382, %Wlc_ObjFanin0.exit695 ], [ %.val382, %Wlc_ObjFanin0.exit689 ], [ %.val382, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val382, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val381875 = phi ptr [ %.val381, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val381, %Wlc_ObjFanin0.exit638 ], [ %.val381, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val381, %Wlc_ObjFanin0.exit686 ], [ %.val381, %Wlc_ObjFanin0.exit692 ], [ %.val381, %Wlc_ObjFanin0.exit698 ], [ %.val381, %Wlc_ObjFanin0.exit704 ], [ %.val381, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val381, %Wlc_ObjFanin0.exit728 ], [ %.val381, %Wlc_ObjFanin1.exit710 ], [ %.val381, %Wlc_ObjFanin0.exit701 ], [ %.val381, %Wlc_ObjFanin0.exit695 ], [ %.val381, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val381, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val380873 = phi ptr [ %.val380, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val380, %Wlc_ObjFanin0.exit638 ], [ %.val380, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val380, %Wlc_ObjFanin0.exit692 ], [ %.val380, %Wlc_ObjFanin0.exit698 ], [ %.val380, %Wlc_ObjFanin0.exit704 ], [ %.val380, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val380, %Wlc_ObjFanin0.exit728 ], [ %.val380, %Wlc_ObjFanin1.exit710 ], [ %.val380, %Wlc_ObjFanin0.exit701 ], [ %.val380, %Wlc_ObjFanin0.exit695 ], [ %.val380, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val380, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val379871 = phi ptr [ %.val379, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val379, %Wlc_ObjFanin0.exit638 ], [ %.val379, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val379, %Wlc_ObjFanin0.exit692 ], [ %.val379, %Wlc_ObjFanin0.exit698 ], [ %.val379, %Wlc_ObjFanin0.exit704 ], [ %.val379, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val379, %Wlc_ObjFanin0.exit728 ], [ %.val379, %Wlc_ObjFanin1.exit710 ], [ %.val379, %Wlc_ObjFanin0.exit701 ], [ %.val379, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val379, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val378869 = phi ptr [ %.val378, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val378, %Wlc_ObjFanin0.exit638 ], [ %.val378, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val378, %Wlc_ObjFanin0.exit698 ], [ %.val378, %Wlc_ObjFanin0.exit704 ], [ %.val378, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val378, %Wlc_ObjFanin0.exit728 ], [ %.val378, %Wlc_ObjFanin1.exit710 ], [ %.val378, %Wlc_ObjFanin0.exit701 ], [ %.val378, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val378, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val377867 = phi ptr [ %.val377, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val377, %Wlc_ObjFanin0.exit638 ], [ %.val377, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val377, %Wlc_ObjFanin0.exit698 ], [ %.val377, %Wlc_ObjFanin0.exit704 ], [ %.val377, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val377, %Wlc_ObjFanin0.exit728 ], [ %.val377, %Wlc_ObjFanin1.exit710 ], [ %.val377, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val377, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val376865 = phi ptr [ %.val376, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val376, %Wlc_ObjFanin0.exit638 ], [ %.val376, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val376, %Wlc_ObjFanin0.exit698 ], [ %.val376, %Wlc_ObjFanin0.exit704 ], [ %.val376, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val376, %Wlc_ObjFanin0.exit728 ], [ %.val376, %Wlc_ObjFanin1.exit710 ], [ %.val376, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val376, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val375863 = phi ptr [ %.val375, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val375, %Wlc_ObjFanin0.exit638 ], [ %.val375, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val376, %Wlc_ObjFanin0.exit698 ], [ %.val375, %Wlc_ObjFanin0.exit704 ], [ %.val375, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val375, %Wlc_ObjFanin0.exit728 ], [ %.val375, %Wlc_ObjFanin1.exit710 ], [ %.val375, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val375, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val374861 = phi ptr [ %.val374, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val374, %Wlc_ObjFanin0.exit638 ], [ %.val374, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val376, %Wlc_ObjFanin0.exit698 ], [ %.val374, %Wlc_ObjFanin0.exit704 ], [ %.val374, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val374, %Wlc_ObjFanin0.exit728 ], [ %.val374, %Wlc_ObjFanin1.exit710 ], [ %.val375, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val374, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val373859 = phi ptr [ %.val373, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val373, %Wlc_ObjFanin0.exit638 ], [ %.val373, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val376, %Wlc_ObjFanin0.exit698 ], [ %.val374, %Wlc_ObjFanin0.exit704 ], [ %.val373, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val373, %Wlc_ObjFanin0.exit728 ], [ %.val373, %Wlc_ObjFanin1.exit710 ], [ %.val375, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val373, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val372857 = phi ptr [ %.val372, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val372, %Wlc_ObjFanin0.exit638 ], [ %.val372, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val376, %Wlc_ObjFanin0.exit698 ], [ %.val374, %Wlc_ObjFanin0.exit704 ], [ %.val372, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val372, %Wlc_ObjFanin0.exit728 ], [ %.val373, %Wlc_ObjFanin1.exit710 ], [ %.val375, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val372, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %.val371855 = phi ptr [ %.val371, %Wlc_NtkPrintDistribAddOne.exit ], [ %.val410, %bb.ar ], [ %.val408, %Wlc_ObjFanin0.exit600 ], [ %.val406, %Wlc_ObjFanin0.exit608 ], [ %.val404, %Wlc_ObjFanin0.exit616 ], [ %.val402, %Wlc_ObjFanin0.exit620 ], [ %.val400, %Wlc_ObjFanin0.exit626 ], [ %.val398, %Wlc_ObjFanin0.exit632 ], [ %.val371, %Wlc_ObjFanin0.exit638 ], [ %.val371, %Wlc_ObjFanin1.exit650 ], [ %.val388, %Wlc_ObjFanin1.exit662 ], [ %.val386, %Wlc_ObjFanin0.exit668 ], [ %.val384, %Wlc_ObjFanin0.exit674 ], [ %.val382, %Wlc_ObjFanin0.exit680 ], [ %.val380, %Wlc_ObjFanin0.exit686 ], [ %.val378, %Wlc_ObjFanin0.exit692 ], [ %.val376, %Wlc_ObjFanin0.exit698 ], [ %.val374, %Wlc_ObjFanin0.exit704 ], [ %.val372, %Wlc_ObjFanin0.exit719 ], [ %.val370, %Wlc_ObjFanin0.exit737 ], [ %.val368, %Wlc_ObjFanin0.exit746 ], [ %.val366, %Wlc_ObjFanin1.exit761 ], [ %.val367, %Wlc_ObjFanin0.exit755 ], [ %.val369, %Wlc_ObjFanin0.exit743 ], [ %.val371, %Wlc_ObjFanin0.exit728 ], [ %.val373, %Wlc_ObjFanin1.exit710 ], [ %.val375, %Wlc_ObjFanin0.exit701 ], [ %.val377, %Wlc_ObjFanin0.exit695 ], [ %.val379, %Wlc_ObjFanin0.exit689 ], [ %.val381, %Wlc_ObjFanin0.exit683 ], [ %.val383, %Wlc_ObjFanin0.exit677 ], [ %.val385, %Wlc_ObjFanin0.exit671 ], [ %.val387, %Wlc_ObjFanin0.exit665 ], [ %.val389, %Wlc_ObjFanin1.exit656 ], [ %.val371, %Wlc_ObjFanin1.exit644 ], [ %.val397, %Wlc_ObjFanin0.exit635 ], [ %.val399, %Wlc_ObjFanin0.exit629 ], [ %.val401, %Wlc_ObjFanin0.exit623 ], [ %.val405, %Wlc_ObjFanin0.exit612 ], [ %.val407, %Wlc_ObjFanin0.exit604 ], [ %.val409, %Wlc_ObjFanin0.exit597 ]
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 1 ; 2 uses
  %.val362 = load i32, ptr %i.q, align 8, !tbaa !30
  %i.asx = sext i32 %.val362 to i64
  %i.asy = icmp slt i64 %indvars.iv.next840, %i.asx
  br i1 %i.asy, label %bb.d, label %.critedge, !llvm.loop !114

.critedge:                                        ; preds = %bb.cf
  %.not342 = icmp eq i32 %.1329, 0
  br i1 %.not342, label %.critedge.thread, label %bb.cg

bb.cg:                                            ; preds = %.critedge
  %i.asz = getelementptr i8, ptr %0, i64 700
  %.val = load i32, ptr %i.asz, align 4, !tbaa !31
  %i.ata = icmp sgt i32 %.val, 0
  br i1 %i.ata, label %bb.ch, label %.critedge.thread

bb.ch:                                            ; preds = %bb.cg
  %i.atb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.1329) ; 0 uses
  %i.atc = getelementptr i8, ptr %0, i64 640
  %.val357 = load ptr, ptr %i.atc, align 8, !tbaa !29
  %i.atd = ptrtoint ptr %.2 to i64
  %i.ate = ptrtoint ptr %.val357 to i64
  %i.atf = sub i64 %i.atd, %i.ate
  %i.atg = sdiv exact i64 %i.atf, 24              ; 2 uses
  %i.ath = trunc i64 %i.atg to i32
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !39
  %i.atk = getelementptr i8, ptr %0, i64 704
  %.val361 = load ptr, ptr %i.atk, align 8, !tbaa !25
  %sext = shl i64 %i.atg, 32
  %i.atl = ashr exact i64 %sext, 30
  %i.atm = getelementptr inbounds i8, ptr %.val361, i64 %i.atl
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !11
  %i.ato = tail call ptr @Abc_NamStr(ptr noundef %i.atj, i32 noundef %i.atn) #27
  %i.atp = getelementptr i8, ptr %.2, i64 8
  %.0327.val = load i32, ptr %i.atp, align 8, !tbaa !35 ; 2 uses
  %i.atq = getelementptr i8, ptr %.2, i64 12
  %.0327.val417 = load i32, ptr %i.atq, align 4, !tbaa !37 ; 2 uses
  %i.atr = sub nsw i32 %.0327.val, %.0327.val417
  %i.ats = tail call i32 @llvm.abs.i32(i32 %i.atr, i1 true)
  %i.att = add nuw nsw i32 %i.ats, 1
  %i.atu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ath, ptr noundef %i.ato, i32 noundef %i.att, i32 noundef %.0327.val, i32 noundef %.0327.val417) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.ch, %bb.cg, %.critedge
  %i.atv = select i1 %.not341, ptr @.str.9, ptr @.str.8
  %i.atw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.atv) ; 0 uses
  %.val413 = load ptr, ptr %i.h, align 8, !tbaa !43 ; 4 uses
  %.val412 = load ptr, ptr %i.k, align 8, !tbaa !43 ; 4 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aty = getelementptr i8, ptr %0, i64 20
  %i.atz = getelementptr i8, ptr %0, i64 24
  %i.aua = getelementptr i8, ptr %0, i64 640      ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.thread, %bb.da
  %indvars.iv845 = phi i64 [ 0, %.critedge.thread ], [ %indvars.iv.next846, %bb.da ] ; 10 uses
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %.val413, i64 %indvars.iv845 ; 2 uses
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !100 ; 2 uses
  %i.aue = getelementptr inbounds nuw [8 x i8], ptr %.val412, i64 %indvars.iv845 ; 2 uses
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !100
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %i.atx, i64 %indvars.iv845 ; 2 uses
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !11 ; 2 uses
  %i.aui = icmp eq i32 %i.auh, 0
  br i1 %i.aui, label %bb.da, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr @Wlc_Names, i64 %indvars.iv845
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !8
  %i.aul = trunc nuw nsw i64 %indvars.iv845 to i32
  %i.aum = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.aul, ptr noundef %i.auk, i32 noundef %i.auh) ; 0 uses
  br i1 %.not341, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aun = icmp eq i64 %indvars.iv845, 1
  br i1 %i.aun, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  tail call void @Wlc_NtkMarkCone(ptr noundef nonnull readonly %0, i32 noundef -1, i32 noundef -1, i32 noundef 1, i32 noundef 0)
  %.val.i762 = load i32, ptr %i.aty, align 4, !tbaa !31 ; 4 uses
  %i.auo = icmp sgt i32 %.val.i762, 0
  br i1 %i.auo, label %.lr.ph.i764, label %.critedge.i763

.lr.ph.i764:                                      ; preds = %bb.cl
  %.val10.i = load ptr, ptr %i.atz, align 8, !tbaa !25 ; 3 uses
  %.val11.i = load ptr, ptr %i.aua, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count.i765 = zext nneg i32 %.val.i762 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i765, 1
  %i.aup = icmp eq i32 %.val.i762, 1
  br i1 %i.aup, label %.epil.preheader, label %.lr.ph.i764.new

.lr.ph.i764.new:                                  ; preds = %.lr.ph.i764
  %unroll_iter = and i64 %wide.trip.count.i765, 2147483646
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph.i764.new
  %indvars.iv.i766 = phi i64 [ 0, %.lr.ph.i764.new ], [ %indvars.iv.next.i767.1, %bb.cm ] ; 3 uses
  %.013.i = phi i32 [ 0, %.lr.ph.i764.new ], [ %i.avi, %bb.cm ]
  %niter = phi i64 [ 0, %.lr.ph.i764.new ], [ %niter.next.1, %bb.cm ]
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv.i766
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !11
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [24 x i8], ptr %.val11.i, i64 %i.aus
  %i.auu = load i16, ptr %i.aut, align 8
  %i.auv = lshr i16 %i.auu, 7
  %i.auw = and i16 %i.auv, 1
  %i.aux = zext nneg i16 %i.auw to i32
  %i.auy = add nuw nsw i32 %.013.i, %i.aux
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv.i766
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 4
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !11
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr inbounds [24 x i8], ptr %.val11.i, i64 %i.avc
  %i.ave = load i16, ptr %i.avd, align 8
  %i.avf = lshr i16 %i.ave, 7
  %i.avg = and i16 %i.avf, 1
  %i.avh = zext nneg i16 %i.avg to i32
  %i.avi = add nuw nsw i32 %i.auy, %i.avh         ; 3 uses
  %indvars.iv.next.i767.1 = add nuw nsw i64 %indvars.iv.i766, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.i763.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !99

.critedge.i763.loopexit.unr-lcssa:                ; preds = %bb.cm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i763, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.i763.loopexit.unr-lcssa, %.lr.ph.i764
  %indvars.iv.i766.epil.init = phi i64 [ 0, %.lr.ph.i764 ], [ %indvars.iv.next.i767.1, %.critedge.i763.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi i32 [ 0, %.lr.ph.i764 ], [ %i.avi, %.critedge.i763.loopexit.unr-lcssa ]
  %lcmp.mod912 = trunc i32 %.val.i762 to i1
  tail call void @llvm.assume(i1 %lcmp.mod912)
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv.i766.epil.init
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !11
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds [24 x i8], ptr %.val11.i, i64 %i.avl
  %i.avn = load i16, ptr %i.avm, align 8
  %i.avo = lshr i16 %i.avn, 7
  %i.avp = and i16 %i.avo, 1
  %i.avq = zext nneg i16 %i.avp to i32
  %i.avr = add nuw nsw i32 %.013.i.epil.init, %i.avq
  br label %.critedge.i763

.critedge.i763:                                   ; preds = %.epil.preheader, %.critedge.i763.loopexit.unr-lcssa, %bb.cl
  %.0.lcssa.i = phi i32 [ 0, %bb.cl ], [ %i.avi, %.critedge.i763.loopexit.unr-lcssa ], [ %i.avr, %.epil.preheader ] ; 2 uses
  %.val56.i.i = load i32, ptr %i.q, align 8, !tbaa !30
  %i.avs = icmp sgt i32 %.val56.i.i, 1
  br i1 %i.avs, label %.lr.ph.i.i, label %Wlc_NtkCountRealPis.exit

.lr.ph.i.i:                                       ; preds = %.critedge.i763, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %.critedge.i763 ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.aua, align 8, !tbaa !29
  %i.avt = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.avu = load i16, ptr %i.avt, align 8
  %i.avv = and i16 %i.avu, -129
  store i16 %i.avv, ptr %i.avt, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val5.i.i = load i32, ptr %i.q, align 8, !tbaa !30
  %i.avw = sext i32 %.val5.i.i to i64
  %i.avx = icmp slt i64 %indvars.iv.next.i.i, %i.avw
  br i1 %i.avx, label %.lr.ph.i.i, label %Wlc_NtkCountRealPis.exit, !llvm.loop !95

bb.cn:                                            ; preds = %bb.ck
  %i.avy = load i32, ptr %i.aug, align 4, !tbaa !11
  br label %Wlc_NtkCountRealPis.exit

Wlc_NtkCountRealPis.exit:                         ; preds = %.lr.ph.i.i, %.critedge.i763, %bb.cn
  %i.avz = phi i32 [ %i.avy, %bb.cn ], [ %.0.lcssa.i, %.critedge.i763 ], [ %.0.lcssa.i, %.lr.ph.i.i ]
  %i.awa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv845
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !11 ; 2 uses
  %i.awd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.awc) ; 0 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv845
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !11 ; 2 uses
  %i.awg = sub i32 %i.awc, %i.avz
  %i.awh = add i32 %i.awg, %i.awf
  %i.awi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.awh) ; 0 uses
  %i.awj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.awf) ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %Wlc_NtkCountRealPis.exit, %bb.cj
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %.val358, i64 %indvars.iv845
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !11
  %i.awm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.awl) ; 0 uses
  %i.awn = load ptr, ptr %i.auc, align 8, !tbaa !100 ; 2 uses
  %i.awo = load ptr, ptr %i.aue, align 8, !tbaa !100 ; 2 uses
  %i.awp = getelementptr i8, ptr %i.awn, i64 8
  %.val10.i770 = load ptr, ptr %i.awp, align 8, !tbaa !47 ; 6 uses
  %i.awq = getelementptr i8, ptr %i.awn, i64 4
  %.val11.i771 = load i32, ptr %i.awq, align 4, !tbaa !101 ; 4 uses
  %i.awr = getelementptr i8, ptr %i.awo, i64 8
  %.val9.i772 = load ptr, ptr %i.awr, align 8, !tbaa !47 ; 11 uses
  %i.aws = icmp sgt i32 %.val11.i771, 1
  br i1 %i.aws, label %.lr.ph36.preheader.i.i, label %Vec_WrdReverseOrder.exit.i

.lr.ph36.preheader.i.i:                           ; preds = %bb.co
  %i.awt = add nsw i32 %.val11.i771, -1
  %wide.trip.count44.i.i = zext nneg i32 %i.awt to i64
  %wide.trip.count.i.i = zext nneg i32 %.val11.i771 to i64 ; 4 uses
  %i.awu = add nsw i64 %wide.trip.count.i.i, -2
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph36.preheader.i.i
  %indvars.iv41.i.i = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %indvars.iv.next42.i.i, %._crit_edge.i.i ] ; 6 uses
  %indvars.iv.i.i773 = phi i64 [ 1, %.lr.ph36.preheader.i.i ], [ %indvars.iv.next.i.i776, %._crit_edge.i.i ] ; 3 uses
  %i.awv = xor i64 %indvars.iv41.i.i, -1
  %i.aww = add nsw i64 %i.awv, %wide.trip.count.i.i
  %i.awx = sub i64 %i.awu, %indvars.iv41.i.i
  %i.awy = trunc nuw nsw i64 %indvars.iv41.i.i to i32 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val9.i772, i64 %indvars.iv41.i.i ; 3 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !102 ; 2 uses
  %xtraiter913 = and i64 %i.aww, 3                ; 2 uses
  %lcmp.mod914.not = icmp eq i64 %xtraiter913, 0
  br i1 %lcmp.mod914.not, label %.lr.ph.i.i774.prol.loopexit, label %.lr.ph.i.i774.prol

.lr.ph.i.i774.prol:                               ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i774.prol
  %i.awz = phi i64 [ %i.axe, %.lr.ph.i.i774.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvars.iv38.i.i.prol = phi i64 [ %indvars.iv.next39.i.i.prol, %.lr.ph.i.i774.prol ], [ %indvars.iv.i.i773, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03132.i.i.prol = phi i32 [ %spec.select.i.i775.prol, %.lr.ph.i.i774.prol ], [ %i.awy, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i774.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %.val9.i772, i64 %indvars.iv38.i.i.prol
  %i.axb = load i64, ptr %i.axa, align 8, !tbaa !102 ; 2 uses
  %i.axc = icmp ult i64 %i.axb, %i.awz
  %i.axd = trunc nuw nsw i64 %indvars.iv38.i.i.prol to i32
  %spec.select.i.i775.prol = select i1 %i.axc, i32 %i.axd, i32 %.03132.i.i.prol ; 3 uses
  %indvars.iv.next39.i.i.prol = add nuw nsw i64 %indvars.iv38.i.i.prol, 1 ; 2 uses
  %i.axe = tail call i64 @llvm.umin.i64(i64 %i.axb, i64 %i.awz) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter913
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i774.prol.loopexit, label %.lr.ph.i.i774.prol, !llvm.loop !115

.lr.ph.i.i774.prol.loopexit:                      ; preds = %.lr.ph.i.i774.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i775.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i775.prol, %.lr.ph.i.i774.prol ]
  %.unr = phi i64 [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.axe, %.lr.ph.i.i774.prol ]
  %indvars.iv38.i.i.unr = phi i64 [ %indvars.iv.i.i773, %.lr.ph.preheader.i.i ], [ %indvars.iv.next39.i.i.prol, %.lr.ph.i.i774.prol ]
end_hunk_1
