inline.NumInlined: 91
inline.NumDeleted: 9
begin_hunk_0_@_ZN10duckdb_hll12sdssplitargsEPKcPi:bb.a
  %i.id = load i8, ptr %.273139, align 1, !tbaa !21
  %.not93161 = icmp ne i8 %i.id, 0
  %spec.select.idx162 = zext i1 %.not93161 to i64
  %spec.select163 = getelementptr inbounds nuw i8, ptr %.273139, i64 %spec.select.idx162
  %i.ie = load i32, ptr %1, align 4, !tbaa !3
  %i.if = add nsw i32 %i.ie, 1
  %i.ig = sext i32 %i.if to i64
  %i.ih = shl nsw i64 %i.ig, 3
  %i.ii = tail call ptr @realloc(ptr noundef %.066, i64 noundef %i.ih) #33 ; 2 uses
  %i.ij = load i32, ptr %1, align 4, !tbaa !3     ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ik
  store ptr %.270140, ptr %i.il, align 8, !tbaa !28
  %i.im = add nsw i32 %i.ij, 1
  br label %bb.b

.preheader:                                       ; preds = %bb.al, %bb.bm, %bb.f, %bb.ay
  %i.in = load i32, ptr %1, align 4, !tbaa !3     ; 2 uses
  %i.io = add nsw i32 %i.in, -1                   ; 2 uses
  store i32 %i.io, ptr %1, align 4, !tbaa !3
  %.not91144 = icmp eq i32 %i.in, 0
  br i1 %.not91144, label %._crit_edge, label %.lr.ph

bb.cm:                                            ; preds = %bb.c
  %i.ip = icmp eq ptr %.066, null
  br i1 %i.ip, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.iq = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #30
  br label %bb.cr

.lr.ph:                                           ; preds = %.preheader, %_ZN10duckdb_hll7sdsfreeEPc.exit
  %i.ir = phi i32 [ %i.jd, %_ZN10duckdb_hll7sdsfreeEPc.exit ], [ %i.io, %.preheader ] ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %.066, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !28 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN10duckdb_hll7sdsfreeEPc.exit, label %bb.co

bb.co:                                            ; preds = %.lr.ph
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !21
  %i.iy = and i8 %i.ix, 7                         ; 2 uses
  %i.iz = icmp samesign ult i8 %i.iy, 5
  br i1 %i.iz, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i

switch.lookup:                                    ; preds = %bb.co
  %i.ja = zext nneg i8 %i.iy to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.ja
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i

_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i:            ; preds = %bb.co, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.co ]
  %i.jb = getelementptr inbounds i8, ptr %i.iu, i64 %.0.i.neg.i
  tail call void @free(ptr noundef %i.jb) #32
  %.pre = load i32, ptr %1, align 4, !tbaa !3
  br label %_ZN10duckdb_hll7sdsfreeEPc.exit

_ZN10duckdb_hll7sdsfreeEPc.exit:                  ; preds = %.lr.ph, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i
  %i.jc = phi i32 [ %i.ir, %.lr.ph ], [ %.pre, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i ] ; 2 uses
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %1, align 4, !tbaa !3
  %.not91 = icmp eq i32 %i.jc, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %_ZN10duckdb_hll7sdsfreeEPc.exit, %.preheader
  tail call void @free(ptr noundef %.066) #32
  %.not92 = icmp eq ptr %.270140, null
  br i1 %.not92, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge
  %i.je = getelementptr inbounds i8, ptr %.270140, i64 -1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !21
  %i.jg = and i8 %i.jf, 7                         ; 2 uses
  %i.jh = icmp samesign ult i8 %i.jg, 5
  br i1 %i.jh, label %switch.lookup204, label %_ZN10duckdb_hll7sdsfreeEPc.exit127

switch.lookup204:                                 ; preds = %bb.cp
  %i.ji = zext nneg i8 %i.jg to i64
  %switch.gep205 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.ji
  %switch.load206 = load i64, ptr %switch.gep205, align 8
  br label %_ZN10duckdb_hll7sdsfreeEPc.exit127

_ZN10duckdb_hll7sdsfreeEPc.exit127:               ; preds = %bb.cp, %switch.lookup204
  %.0.i.neg.i126 = phi i64 [ %switch.load206, %switch.lookup204 ], [ 0, %bb.cp ]
  %i.jj = getelementptr inbounds i8, ptr %.270140, i64 %.0.i.neg.i126
  tail call void @free(ptr noundef %i.jj) #32
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN10duckdb_hll7sdsfreeEPc.exit127, %._crit_edge
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %bb.cn, %bb.cq
  %.076 = phi ptr [ null, %bb.cq ], [ %i.iq, %bb.cn ], [ %.066, %bb.cm ]
  ret ptr %.076
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN10duckdb_hll11sdsmapcharsEPcPKcS2_m(ptr noundef returned captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %._crit_edge [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i16 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -10
  %i.n = load i32, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i32 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -18
  %i.q = load i64, ptr %i.p, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.not = icmp eq i64 %.0.i, 0
  %.not20 = icmp eq i64 %3, 0
  %or.cond = or i1 %.not, %.not20
  br i1 %or.cond, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %..loopexit_crit_edge.us
  %.018.us = phi i64 [ %i.z, %..loopexit_crit_edge.us ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.018.us ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.h
  %.01517.us = phi i64 [ 0, %.preheader.us ], [ %i.w, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.01517.us
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i64 %.01517.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !45

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.01517.us
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  store i8 %i.y, ptr %i.r, align 1, !tbaa !21
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.h, %bb.i
  %i.z = add nuw i64 %.018.us, 1                  ; 2 uses
  %exitcond23.not = icmp eq i64 %i.z, %.0.i
  br i1 %exitcond23.not, label %._crit_edge, label %.preheader.us, !llvm.loop !46

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a, %_ZN10duckdb_hllL6sdslenEPc.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll7sdsjoinEPPciS0_(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #22 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(5) ptr @malloc(i64 noundef 5) #30 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10duckdb_hll8sdsemptyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.a, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !9
  store i8 1, ptr %i.d, align 1, !tbaa !21
  store i8 0, ptr %i.c, align 1, !tbaa !21
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.g = add nsw i32 %1, -1
  %i.h = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10duckdb_hll6sdscatEPcPKc.exit16
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 3 uses
  %.01017 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 6 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #31 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.01017, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 7
  switch i32 %i.o, label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i32 %i.n, 3
  %i.q = zext nneg i32 %i.p to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %.01017, i64 -4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = zext i8 %i.s to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %.01017, i64 -6
  %i.v = load i16, ptr %i.u, align 1, !tbaa !10
  %i.w = zext i16 %i.v to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %.01017, i64 -10
  %i.y = load i32, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i32 %i.y to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.h:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %.01017, i64 -18
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

_ZN10duckdb_hllL6sdslenEPc.exit.i.i:              ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.q, %bb.d ], [ %i.t, %bb.e ], [ %i.w, %bb.f ], [ %i.z, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %i.ac = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %.01017, i64 noundef %i.k) ; 15 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN10duckdb_hll6sdscatEPcPKc.exit, label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.j, i64 %i.k, i1 false)
  %i.af = add i64 %.0.i.i.i, %i.k                 ; 6 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = and i8 %i.ah, 7
  switch i8 %i.ai, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %.tr.i.i.i = trunc i64 %i.af to i8
  %i.aj = shl i8 %.tr.i.i.i, 3
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = trunc i64 %i.af to i8
  %i.al = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.l:                                             ; preds = %bb.i
  %i.am = trunc i64 %i.af to i16
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 -6
  store i16 %i.am, ptr %i.an, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.m:                                             ; preds = %bb.i
  %i.ao = trunc i64 %i.af to i32
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 -10
  store i32 %i.ao, ptr %i.ap, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.n:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds i8, ptr %i.ac, i64 -18
  store i64 %i.af, ptr %i.aq, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i:          ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  store i8 0, ptr %i.ar, align 1, !tbaa !21
  br label %_ZN10duckdb_hll6sdscatEPcPKc.exit

_ZN10duckdb_hll6sdscatEPcPKc.exit:                ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.i, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i
  %.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %.not, label %_ZN10duckdb_hll6sdscatEPcPKc.exit16, label %bb.o

bb.o:                                             ; preds = %_ZN10duckdb_hll6sdscatEPcPKc.exit
  %i.as = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !21
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = and i32 %i.av, 7
  switch i32 %i.aw, label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12 [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.ax = lshr i32 %i.av, 3
  %i.ay = zext nneg i32 %i.ax to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7
  %i.bb = zext i8 %i.ba to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12

bb.r:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds i8, ptr %i.ac, i64 -6
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !10
  %i.be = zext i16 %i.bd to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12

bb.s:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds i8, ptr %i.ac, i64 -10
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i32 %i.bg to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12

bb.t:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds i8, ptr %i.ac, i64 -18
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12

_ZN10duckdb_hllL6sdslenEPc.exit.i.i12:            ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i.i13 = phi i64 [ %i.bj, %bb.t ], [ %i.ay, %bb.p ], [ %i.bb, %bb.q ], [ %i.be, %bb.r ], [ %i.bh, %bb.s ], [ 0, %bb.o ] ; 2 uses
  %i.bk = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %i.ac, i64 noundef %i.as) ; 9 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN10duckdb_hll6sdscatEPcPKc.exit16, label %bb.u

bb.u:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i.i.i13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %2, i64 %i.as, i1 false)
  %i.bn = add i64 %.0.i.i.i13, %i.as              ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21
  %i.bq = and i8 %i.bp, 7
  switch i8 %i.bq, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14 [
    i8 0, label %bb.v
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %.tr.i.i.i15 = trunc i64 %i.bn to i8
  %i.br = shl i8 %.tr.i.i.i15, 3
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14

bb.w:                                             ; preds = %bb.u
  %i.bs = trunc i64 %i.bn to i8
  %i.bt = getelementptr inbounds i8, ptr %i.bk, i64 -4
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14

bb.x:                                             ; preds = %bb.u
  %i.bu = trunc i64 %i.bn to i16
  %i.bv = getelementptr inbounds i8, ptr %i.bk, i64 -6
  store i16 %i.bu, ptr %i.bv, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14

bb.y:                                             ; preds = %bb.u
  %i.bw = trunc i64 %i.bn to i32
  %i.bx = getelementptr inbounds i8, ptr %i.bk, i64 -10
  store i32 %i.bw, ptr %i.bx, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14

bb.z:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds i8, ptr %i.bk, i64 -18
  store i64 %i.bn, ptr %i.by, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14:        ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  store i8 0, ptr %i.bz, align 1, !tbaa !21
  br label %_ZN10duckdb_hll6sdscatEPcPKc.exit16

_ZN10duckdb_hll6sdscatEPcPKc.exit16:              ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12, %_ZN10duckdb_hll6sdscatEPcPKc.exit
  %.1 = phi ptr [ %i.ac, %_ZN10duckdb_hll6sdscatEPcPKc.exit ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12 ], [ %i.bk, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !47

._crit_edge:                                      ; preds = %_ZN10duckdb_hll6sdscatEPcPKc.exit16, %_ZN10duckdb_hll8sdsemptyEv.exit
  %.010.lcssa = phi ptr [ %.0.i.i, %_ZN10duckdb_hll8sdsemptyEv.exit ], [ %.1, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ]
  ret ptr %.010.lcssa
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll10sdsjoinsdsEPPciPKcm(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(5) ptr @malloc(i64 noundef 5) #30 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10duckdb_hll8sdsemptyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.a, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !9
  store i8 1, ptr %i.d, align 1, !tbaa !21
  store i8 0, ptr %i.c, align 1, !tbaa !21
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.g = add nsw i32 %1, -1
  %i.h = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ] ; 3 uses
  %.01114 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call noundef ptr @_ZN10duckdb_hll9sdscatsdsEPcS0_(ptr noundef %.01114, ptr noundef %i.j) ; 7 uses
  %.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %.not, label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 7
  switch i32 %i.o, label %_ZN10duckdb_hllL6sdslenEPc.exit.i [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i32 %i.n, 3
  %i.q = zext nneg i32 %i.p to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = zext i8 %i.s to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.k, i64 -6
  %i.v = load i16, ptr %i.u, align 1, !tbaa !10
  %i.w = zext i16 %i.v to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 -10
  %i.y = load i32, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i32 %i.y to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.i:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.k, i64 -18
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

_ZN10duckdb_hllL6sdslenEPc.exit.i:                ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i13 = phi i64 [ %i.ab, %bb.i ], [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %i.ac = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %i.k, i64 noundef %3) ; 9 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.i.i13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.af = add i64 %.0.i.i13, %3                   ; 6 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = and i8 %i.ah, 7
  switch i8 %i.ai, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.tr.i.i = trunc i64 %i.af to i8
  %i.aj = shl i8 %.tr.i.i, 3
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ak = trunc i64 %i.af to i8
  %i.al = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.m:                                             ; preds = %bb.j
  %i.am = trunc i64 %i.af to i16
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 -6
  store i16 %i.am, ptr %i.an, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.n:                                             ; preds = %bb.j
  %i.ao = trunc i64 %i.af to i32
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 -10
  store i32 %i.ao, ptr %i.ap, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.o:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds i8, ptr %i.ac, i64 -18
  store i64 %i.af, ptr %i.aq, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i:            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  store i8 0, ptr %i.ar, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit

_ZN10duckdb_hll9sdscatlenEPcPKvm.exit:            ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i, %_ZN10duckdb_hllL6sdslenEPc.exit.i, %bb.c
  %.1 = phi ptr [ %i.k, %bb.c ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i ], [ %i.ac, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !48

._crit_edge:                                      ; preds = %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit, %_ZN10duckdb_hll8sdsemptyEv.exit
  %.011.lcssa = phi ptr [ %.0.i.i, %_ZN10duckdb_hll8sdsemptyEv.exit ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ]
  ret ptr %.011.lcssa
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN10duckdb_hll8sdmallocEm(i64 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #30
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN10duckdb_hll9sdreallocEPvm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #25 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #33
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN10duckdb_hll6sdfreeEPv(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #29

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #29 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind }
attributes #33 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !5, i64 0}
!8 = !{!"_ZTSN10duckdb_hll7sdshdr8E", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!9 = !{!8, !5, i64 1}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN10duckdb_hll8sdshdr16E", !12, i64 0, !12, i64 2, !5, i64 4, !5, i64 5}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !4, i64 0}
!15 = !{!"_ZTSN10duckdb_hll8sdshdr32E", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 9}
!16 = !{!15, !4, i64 4}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN10duckdb_hll8sdshdr64E", !19, i64 0, !19, i64 8, !5, i64 16, !5, i64 17}
!19 = !{!"long", !5, i64 0}
!20 = !{!18, !19, i64 8}
!21 = !{!5, !5, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !30, i64 0}
!30 = !{!"any pointer", !5, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"long long", !5, i64 0}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
end_hunk_0
