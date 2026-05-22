inline.NumInlined: 136
inline.NumDeleted: 12
begin_hunk_0_@sdssplitargs:bb.a
  %i.is = load i8, ptr %spec.select190, align 1, !tbaa !17 ; 2 uses
  %.not152 = icmp eq i8 %i.is, 0
  br i1 %.not152, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.an, %bb.bp, %bb.g, %bb.ba
  %i.it = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.iu = add nsw i32 %i.it, -1                   ; 2 uses
  store i32 %i.iu, ptr %1, align 4, !tbaa !9
  %.not94161 = icmp eq i32 %i.it, 0
  br i1 %.not94161, label %._crit_edge163, label %.lr.ph162

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %bb.a
  %.066233 = phi ptr [ %.066237, %bb.c ], [ null, %bb.a ], [ %i.in, %.loopexit ] ; 2 uses
  %i.iv = icmp eq ptr %.066233, null
  br i1 %i.iv, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %._crit_edge
  %i.iw = call noalias dereferenceable_or_null(8) ptr @zmalloc(i64 noundef 8) #27
  br label %bb.ct

.lr.ph162:                                        ; preds = %.preheader, %sdsfree.exit
  %i.ix = phi i32 [ %i.jj, %sdsfree.exit ], [ %i.iu, %.preheader ] ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %.066237, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !20 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %sdsfree.exit, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph162
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 -1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !17
  %i.je = and i8 %i.jd, 7                         ; 2 uses
  %i.jf = icmp samesign ult i8 %i.je, 5
  br i1 %i.jf, label %switch.lookup, label %sdsHdrSize.exit.i

switch.lookup:                                    ; preds = %bb.cq
  %i.jg = zext nneg i8 %i.je to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.jg
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

sdsHdrSize.exit.i:                                ; preds = %bb.cq, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.cq ]
  %i.jh = getelementptr inbounds i8, ptr %i.ja, i64 %.0.i.neg.i
  call void @zfree(ptr noundef nonnull %i.jh) #24
  %.pre = load i32, ptr %1, align 4, !tbaa !9
  br label %sdsfree.exit

sdsfree.exit:                                     ; preds = %.lr.ph162, %sdsHdrSize.exit.i
  %i.ji = phi i32 [ %i.ix, %.lr.ph162 ], [ %.pre, %sdsHdrSize.exit.i ] ; 2 uses
  %i.jj = add nsw i32 %i.ji, -1                   ; 2 uses
  store i32 %i.jj, ptr %1, align 4, !tbaa !9
  %.not94 = icmp eq i32 %i.ji, 0
  br i1 %.not94, label %._crit_edge163, label %.lr.ph162, !llvm.loop !47

._crit_edge163:                                   ; preds = %sdsfree.exit, %.preheader
  call void @zfree(ptr noundef %.066237) #24
  %.not95 = icmp eq ptr %.270157, null
  br i1 %.not95, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge163
  %i.jk = getelementptr inbounds i8, ptr %.270157, i64 -1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = and i8 %i.jl, 7                         ; 2 uses
  %i.jn = icmp samesign ult i8 %i.jm, 5
  br i1 %i.jn, label %switch.lookup238, label %sdsfree.exit138

switch.lookup238:                                 ; preds = %bb.cr
  %i.jo = zext nneg i8 %i.jm to i64
  %switch.gep239 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.jo
  %switch.load240 = load i64, ptr %switch.gep239, align 8
  br label %sdsfree.exit138

sdsfree.exit138:                                  ; preds = %bb.cr, %switch.lookup238
  %.0.i.neg.i137 = phi i64 [ %switch.load240, %switch.lookup238 ], [ 0, %bb.cr ]
  %i.jp = getelementptr inbounds i8, ptr %.270157, i64 %.0.i.neg.i137
  call void @zfree(ptr noundef nonnull %i.jp) #24
  br label %bb.cs

bb.cs:                                            ; preds = %sdsfree.exit138, %._crit_edge163
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge, %bb.cp, %bb.cs
  %.076 = phi ptr [ null, %bb.cs ], [ %i.iw, %bb.cp ], [ %.066233, %._crit_edge ]
  ret ptr %.076
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sdsmapchars(ptr noundef returned captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %._crit_edge [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !14
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.not = icmp eq i64 %.0.i, 0
  %.not20 = icmp eq i64 %3, 0
  %or.cond = or i1 %.not, %.not20
  br i1 %or.cond, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %sdslen.exit, %..loopexit_crit_edge.us
  %.018.us = phi i64 [ %i.x, %..loopexit_crit_edge.us ], [ 0, %sdslen.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.018.us ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.h
  %.01517.us = phi i64 [ 0, %.preheader.us ], [ %i.u, %bb.h ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.01517.us
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw i64 %.01517.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %3
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !48

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.01517.us
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17
  store i8 %i.w, ptr %i.p, align 1, !tbaa !17
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.h, %bb.i
  %i.x = add nuw i64 %.018.us, 1                  ; 2 uses
  %exitcond23.not = icmp eq i64 %i.x, %.0.i
  br i1 %exitcond23.not, label %._crit_edge, label %.preheader.us, !llvm.loop !49

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a, %sdslen.exit
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsjoin(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call ptr @zmalloc_usable(i64 noundef 4, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sdsempty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = add i64 %i.d, -4                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, 255
  br i1 %i.f, label %bb.c, label %adjustTypeIfNeeded.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.e, 65531
  br i1 %i.g, label %adjustTypeIfNeeded.exit.i.i, label %sdsReqType.exit.i.i.i

sdsReqType.exit.i.i.i:                            ; preds = %bb.c
  %i.h = icmp ult i64 %i.e, 4294967287
  %..i.i.i.i = select i1 %i.h, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit.i.i

adjustTypeIfNeeded.exit.i.i:                      ; preds = %sdsReqType.exit.i.i.i, %bb.c, %bb.b
  %.1.i.i = phi i8 [ 2, %bb.c ], [ 1, %bb.b ], [ %..i.i.i.i, %sdsReqType.exit.i.i.i ]
  %i.i = call ptr @sdsnewplacement(ptr noundef nonnull %i.b, i64 noundef %i.d, i8 noundef signext %.1.i.i, ptr noundef nonnull @.str.4, i64 noundef 0)
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdsempty.exit
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %sdscat.exit18
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sdscat.exit18 ] ; 3 uses
  %.01019 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %sdscat.exit18 ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #26 ; 3 uses
  %i.p = getelementptr i8, ptr %.01019, i64 -1
  %.val.i.i.i = load i8, ptr %i.p, align 1, !tbaa !17 ; 2 uses
  %i.q = and i8 %.val.i.i.i, 7
  switch i8 %i.q, label %sdslen.exit.i.i [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = lshr i8 %.val.i.i.i, 3
  %i.s = zext nneg i8 %i.r to i64
  br label %sdslen.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.01019, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  br label %sdslen.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %.01019, i64 -5
  %i.x = load i16, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i16 %i.x to i64
  br label %sdslen.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %.01019, i64 -9
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  br label %sdslen.exit.i.i

bb.i:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %.01019, i64 -17
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !14
  br label %sdslen.exit.i.i

sdslen.exit.i.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi i64 [ %i.ad, %bb.i ], [ %i.s, %bb.e ], [ %i.v, %bb.f ], [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %i.ae = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.01019, i64 noundef %i.o, i32 noundef 1) ; 15 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %sdscat.exit, label %bb.j

bb.j:                                             ; preds = %sdslen.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.n, i64 %i.o, i1 false)
  %i.ah = add i64 %.0.i.i.i, %i.o                 ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  %.val.i16.i.i = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.aj = and i8 %.val.i16.i.i, 7
  switch i8 %i.aj, label %sdssetlen.exit.i.i [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.tr.i.i.i = trunc i64 %i.ah to i8
  %i.ak = shl i8 %.tr.i.i.i, 3
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = trunc i64 %i.ah to i8
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -3
  store i8 %i.al, ptr %i.am, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i

bb.m:                                             ; preds = %bb.j
  %i.an = trunc i64 %i.ah to i16
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -5
  store i16 %i.an, ptr %i.ao, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i

bb.n:                                             ; preds = %bb.j
  %i.ap = trunc i64 %i.ah to i32
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -9
  store i32 %i.ap, ptr %i.aq, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i

bb.o:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 -17
  store i64 %i.ah, ptr %i.ar, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i

sdssetlen.exit.i.i:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  store i8 0, ptr %i.as, align 1, !tbaa !17
  br label %sdscat.exit

sdscat.exit:                                      ; preds = %sdslen.exit.i.i, %sdssetlen.exit.i.i
  %.not = icmp eq i64 %indvars.iv, %i.l
  br i1 %.not, label %sdscat.exit18, label %bb.p

bb.p:                                             ; preds = %sdscat.exit
  %i.at = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #26 ; 3 uses
  %i.au = getelementptr i8, ptr %i.ae, i64 -1
  %.val.i.i.i12 = load i8, ptr %i.au, align 1, !tbaa !17 ; 2 uses
  %i.av = and i8 %.val.i.i.i12, 7
  switch i8 %i.av, label %sdslen.exit.i.i13 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.aw = lshr i8 %.val.i.i.i12, 3
  %i.ax = zext nneg i8 %i.aw to i64
  br label %sdslen.exit.i.i13

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds i8, ptr %i.ae, i64 -3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i64
  br label %sdslen.exit.i.i13

bb.s:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds i8, ptr %i.ae, i64 -5
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !18
  %i.bd = zext i16 %i.bc to i64
  br label %sdslen.exit.i.i13

bb.t:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds i8, ptr %i.ae, i64 -9
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !9
  %i.bg = zext i32 %i.bf to i64
  br label %sdslen.exit.i.i13

bb.u:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 -17
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !14
  br label %sdslen.exit.i.i13

sdslen.exit.i.i13:                                ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.0.i.i.i14 = phi i64 [ %i.bi, %bb.u ], [ %i.ax, %bb.q ], [ %i.ba, %bb.r ], [ %i.bd, %bb.s ], [ %i.bg, %bb.t ], [ 0, %bb.p ] ; 2 uses
  %i.bj = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %i.ae, i64 noundef %i.at, i32 noundef 1) ; 9 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %sdscat.exit18, label %bb.v

bb.v:                                             ; preds = %sdslen.exit.i.i13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0.i.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %2, i64 %i.at, i1 false)
  %i.bm = add i64 %.0.i.i.i14, %i.at              ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  %.val.i16.i.i15 = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bo = and i8 %.val.i16.i.i15, 7
  switch i8 %i.bo, label %sdssetlen.exit.i.i16 [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %.tr.i.i.i17 = trunc i64 %i.bm to i8
  %i.bp = shl i8 %.tr.i.i.i17, 3
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i16

bb.x:                                             ; preds = %bb.v
  %i.bq = trunc i64 %i.bm to i8
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i16

bb.y:                                             ; preds = %bb.v
  %i.bs = trunc i64 %i.bm to i16
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 -5
  store i16 %i.bs, ptr %i.bt, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i16

bb.z:                                             ; preds = %bb.v
  %i.bu = trunc i64 %i.bm to i32
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -9
  store i32 %i.bu, ptr %i.bv, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i16

bb.aa:                                            ; preds = %bb.v
  %i.bw = getelementptr inbounds i8, ptr %i.bj, i64 -17
  store i64 %i.bm, ptr %i.bw, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i16

sdssetlen.exit.i.i16:                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  store i8 0, ptr %i.bx, align 1, !tbaa !17
  br label %sdscat.exit18

sdscat.exit18:                                    ; preds = %sdssetlen.exit.i.i16, %sdslen.exit.i.i13, %sdscat.exit
  %.1 = phi ptr [ %i.ae, %sdscat.exit ], [ null, %sdslen.exit.i.i13 ], [ %i.bj, %sdssetlen.exit.i.i16 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !50

._crit_edge:                                      ; preds = %sdscat.exit18, %sdsempty.exit
  %.010.lcssa = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %.1, %sdscat.exit18 ]
  ret ptr %.010.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsjoinsds(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call ptr @zmalloc_usable(i64 noundef 4, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sdsempty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = add i64 %i.d, -4                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, 255
  br i1 %i.f, label %bb.c, label %adjustTypeIfNeeded.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.e, 65531
  br i1 %i.g, label %adjustTypeIfNeeded.exit.i.i, label %sdsReqType.exit.i.i.i

sdsReqType.exit.i.i.i:                            ; preds = %bb.c
  %i.h = icmp ult i64 %i.e, 4294967287
  %..i.i.i.i = select i1 %i.h, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit.i.i

adjustTypeIfNeeded.exit.i.i:                      ; preds = %sdsReqType.exit.i.i.i, %bb.c, %bb.b
  %.1.i.i = phi i8 [ 2, %bb.c ], [ 1, %bb.b ], [ %..i.i.i.i, %sdsReqType.exit.i.i.i ]
  %i.i = call ptr @sdsnewplacement(ptr noundef nonnull %i.b, i64 noundef %i.d, i8 noundef signext %.1.i.i, ptr noundef nonnull @.str.4, i64 noundef 0)
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdsempty.exit
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %sdscatlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sdscatlen.exit ] ; 3 uses
  %.01114 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %sdscatlen.exit ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = call ptr @sdscatsds(ptr noundef %.01114, ptr noundef %i.n) ; 7 uses
  %.not = icmp eq i64 %indvars.iv, %i.l
  br i1 %.not, label %sdscatlen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i.i = load i8, ptr %i.p, align 1, !tbaa !17 ; 2 uses
  %i.q = and i8 %.val.i.i, 7
  switch i8 %i.q, label %sdslen.exit.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i8 %.val.i.i, 3
  %i.s = zext nneg i8 %i.r to i64
  br label %sdslen.exit.i

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  br label %sdslen.exit.i

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.x = load i16, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i16 %i.x to i64
  br label %sdslen.exit.i

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  br label %sdslen.exit.i

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 -17
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !14
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.i13 = phi i64 [ %i.ad, %bb.j ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ %i.ab, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %i.ae = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %i.o, i64 noundef %3, i32 noundef 1) ; 9 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %sdscatlen.exit, label %bb.k

bb.k:                                             ; preds = %sdslen.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.ah = add i64 %.0.i.i13, %3                   ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  %.val.i16.i = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.aj = and i8 %.val.i16.i, 7
  switch i8 %i.aj, label %sdssetlen.exit.i [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %.tr.i.i = trunc i64 %i.ah to i8
  %i.ak = shl i8 %.tr.i.i, 3
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.m:                                             ; preds = %bb.k
  %i.al = trunc i64 %i.ah to i8
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -3
  store i8 %i.al, ptr %i.am, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.n:                                             ; preds = %bb.k
  %i.an = trunc i64 %i.ah to i16
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -5
  store i16 %i.an, ptr %i.ao, align 1, !tbaa !18
  br label %sdssetlen.exit.i

bb.o:                                             ; preds = %bb.k
  %i.ap = trunc i64 %i.ah to i32
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -9
  store i32 %i.ap, ptr %i.aq, align 1, !tbaa !9
  br label %sdssetlen.exit.i

bb.p:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 -17
  store i64 %i.ah, ptr %i.ar, align 1, !tbaa !14
  br label %sdssetlen.exit.i

sdssetlen.exit.i:                                 ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  store i8 0, ptr %i.as, align 1, !tbaa !17
  br label %sdscatlen.exit

sdscatlen.exit:                                   ; preds = %sdssetlen.exit.i, %sdslen.exit.i, %bb.d
  %.1 = phi ptr [ %i.o, %bb.d ], [ null, %sdslen.exit.i ], [ %i.ae, %sdssetlen.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !51

._crit_edge:                                      ; preds = %sdscatlen.exit, %sdsempty.exit
  %.011.lcssa = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %.1, %sdscatlen.exit ]
  ret ptr %.011.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @sds_malloc(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @zmalloc(i64 noundef %0) #27
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sds_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %1) #29
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @sds_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @zfree(ptr noundef %0) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdstemplate(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call ptr @zmalloc_usable(i64 noundef 4, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sdsempty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = add i64 %i.d, -4                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, 255
  br i1 %i.f, label %bb.c, label %adjustTypeIfNeeded.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.e, 65531
  br i1 %i.g, label %adjustTypeIfNeeded.exit.i.i, label %sdsReqType.exit.i.i.i

sdsReqType.exit.i.i.i:                            ; preds = %bb.c
  %i.h = icmp ult i64 %i.e, 4294967287
  %..i.i.i.i = select i1 %i.h, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit.i.i

adjustTypeIfNeeded.exit.i.i:                      ; preds = %sdsReqType.exit.i.i.i, %bb.c, %bb.b
  %.1.i.i = phi i8 [ 2, %bb.c ], [ 1, %bb.b ], [ %..i.i.i.i, %sdsReqType.exit.i.i.i ]
  %i.i = call ptr @sdsnewplacement(ptr noundef nonnull %i.b, i64 noundef %i.d, i8 noundef signext %.1.i.i, ptr noundef nonnull @.str.4, i64 noundef 0)
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.j = load i8, ptr %0, align 1, !tbaa !17
  %.not84 = icmp eq i8 %i.j, 0
  br i1 %.not84, label %sdsfree.exit70, label %.lr.ph

.lr.ph:                                           ; preds = %sdsempty.exit, %sdscat.exit
  %.03486 = phi ptr [ %.4, %sdscat.exit ], [ %.0.i.i, %sdsempty.exit ] ; 13 uses
  %.03585 = phi ptr [ %.338, %sdscat.exit ], [ %0, %sdsempty.exit ] ; 6 uses
  %i.k = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.03585, i32 noundef 123) #26 ; 5 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %bb.d, label %bb.p

bb.d:                                             ; preds = %.lr.ph
  %i.l = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.03585) #26 ; 3 uses
  %i.m = getelementptr i8, ptr %.03486, i64 -1
  %.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !17 ; 2 uses
  %i.n = and i8 %.val.i.i.i, 7
  switch i8 %i.n, label %sdslen.exit.i.i [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = lshr i8 %.val.i.i.i, 3
  %i.p = zext nneg i8 %i.o to i64
  br label %sdslen.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %.03486, i64 -3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  br label %sdslen.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.03486, i64 -5
  %i.u = load i16, ptr %i.t, align 1, !tbaa !18
  %i.v = zext i16 %i.u to i64
  br label %sdslen.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %.03486, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit.i.i

bb.i:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %.03486, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !14
  br label %sdslen.exit.i.i

sdslen.exit.i.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %i.ab = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.03486, i64 noundef %i.l, i32 noundef 1) ; 9 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %sdsfree.exit70, label %bb.j

bb.j:                                             ; preds = %sdslen.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %.03585, i64 %i.l, i1 false)
  %i.ae = add i64 %.0.i.i.i, %i.l                 ; 6 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %.val.i16.i.i = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ag = and i8 %.val.i16.i.i, 7
  switch i8 %i.ag, label %sdssetlen.exit.i.i [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.tr.i.i.i = trunc i64 %i.ae to i8
  %i.ah = shl i8 %.tr.i.i.i, 3
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i

bb.m:                                             ; preds = %bb.j
  %i.ak = trunc i64 %i.ae to i16
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 -5
  store i16 %i.ak, ptr %i.al, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i

bb.n:                                             ; preds = %bb.j
  %i.am = trunc i64 %i.ae to i32
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 -9
  store i32 %i.am, ptr %i.an, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i

bb.o:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds i8, ptr %i.ab, i64 -17
  store i64 %i.ae, ptr %i.ao, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i

sdssetlen.exit.i.i:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  store i8 0, ptr %i.ap, align 1, !tbaa !17
  br label %sdsfree.exit70

bb.p:                                             ; preds = %.lr.ph
  %i.aq = icmp ugt ptr %i.k, %.03585
  br i1 %i.aq, label %bb.q, label %sdscatlen.exit

bb.q:                                             ; preds = %bb.p
  %i.ar = ptrtoint ptr %i.k to i64
  %i.as = ptrtoint ptr %.03585 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = getelementptr i8, ptr %.03486, i64 -1
  %.val.i.i = load i8, ptr %i.au, align 1, !tbaa !17 ; 2 uses
  %i.av = and i8 %.val.i.i, 7
  switch i8 %i.av, label %sdslen.exit.i [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.aw = lshr i8 %.val.i.i, 3
  %i.ax = zext nneg i8 %i.aw to i64
  br label %sdslen.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds i8, ptr %.03486, i64 -3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i64
  br label %sdslen.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds i8, ptr %.03486, i64 -5
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !18
  %i.bd = zext i16 %i.bc to i64
  br label %sdslen.exit.i

bb.u:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds i8, ptr %.03486, i64 -9
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !9
  %i.bg = zext i32 %i.bf to i64
  br label %sdslen.exit.i

bb.v:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds i8, ptr %.03486, i64 -17
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !14
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0.i.i50 = phi i64 [ %i.bi, %bb.v ], [ %i.ax, %bb.r ], [ %i.ba, %bb.s ], [ %i.bd, %bb.t ], [ %i.bg, %bb.u ], [ 0, %bb.q ] ; 2 uses
  %i.bj = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.03486, i64 noundef %i.at, i32 noundef 1) ; 9 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %sdscatlen.exit, label %bb.w

bb.w:                                             ; preds = %sdslen.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %.03585, i64 %i.at, i1 false)
  %i.bm = add i64 %.0.i.i50, %i.at                ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  %.val.i16.i = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bo = and i8 %.val.i16.i, 7
  switch i8 %i.bo, label %sdssetlen.exit.i [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %.tr.i.i = trunc i64 %i.bm to i8
  %i.bp = shl i8 %.tr.i.i, 3
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.y:                                             ; preds = %bb.w
  %i.bq = trunc i64 %i.bm to i8
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.z:                                             ; preds = %bb.w
  %i.bs = trunc i64 %i.bm to i16
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 -5
  store i16 %i.bs, ptr %i.bt, align 1, !tbaa !18
  br label %sdssetlen.exit.i

bb.aa:                                            ; preds = %bb.w
  %i.bu = trunc i64 %i.bm to i32
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -9
  store i32 %i.bu, ptr %i.bv, align 1, !tbaa !9
  br label %sdssetlen.exit.i

bb.ab:                                            ; preds = %bb.w
  %i.bw = getelementptr inbounds i8, ptr %i.bj, i64 -17
  store i64 %i.bm, ptr %i.bw, align 1, !tbaa !14
  br label %sdssetlen.exit.i

sdssetlen.exit.i:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  store i8 0, ptr %i.bx, align 1, !tbaa !17
  br label %sdscatlen.exit

sdscatlen.exit:                                   ; preds = %sdssetlen.exit.i, %sdslen.exit.i, %bb.p
  %.1 = phi ptr [ %.03486, %bb.p ], [ null, %sdslen.exit.i ], [ %i.bj, %sdssetlen.exit.i ] ; 15 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  switch i8 %i.bz, label %bb.ao [
    i8 0, label %bb.bd
    i8 123, label %bb.ac
  ]

bb.ac:                                            ; preds = %sdscatlen.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.cb = getelementptr i8, ptr %.1, i64 -1
  %.val.i.i.i51 = load i8, ptr %i.cb, align 1, !tbaa !17 ; 2 uses
  %i.cc = and i8 %.val.i.i.i51, 7
  switch i8 %i.cc, label %sdslen.exit.i.i52 [
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cd = lshr i8 %.val.i.i.i51, 3
  %i.ce = zext nneg i8 %i.cd to i64
  br label %sdslen.exit.i.i52

bb.ae:                                            ; preds = %bb.ac
  %i.cf = getelementptr inbounds i8, ptr %.1, i64 -3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = zext i8 %i.cg to i64
  br label %sdslen.exit.i.i52

bb.af:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds i8, ptr %.1, i64 -5
  %i.cj = load i16, ptr %i.ci, align 1, !tbaa !18
  %i.ck = zext i16 %i.cj to i64
  br label %sdslen.exit.i.i52

bb.ag:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds i8, ptr %.1, i64 -9
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !9
  %i.cn = zext i32 %i.cm to i64
  br label %sdslen.exit.i.i52

bb.ah:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds i8, ptr %.1, i64 -17
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !14
  br label %sdslen.exit.i.i52

sdslen.exit.i.i52:                                ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0.i.i.i53 = phi i64 [ %i.cp, %bb.ah ], [ %i.ce, %bb.ad ], [ %i.ch, %bb.ae ], [ %i.ck, %bb.af ], [ %i.cn, %bb.ag ], [ 0, %bb.ac ] ; 2 uses
  %i.cq = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.1, i64 noundef 1, i32 noundef 1) ; 9 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %sdscat.exit, label %bb.ai, !llvm.loop !52

bb.ai:                                            ; preds = %sdslen.exit.i.i52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.0.i.i.i53
  store i8 123, ptr %i.cs, align 1
  %i.ct = add i64 %.0.i.i.i53, 1                  ; 6 uses
  %i.cu = getelementptr i8, ptr %i.cq, i64 -1     ; 2 uses
  %.val.i16.i.i54 = load i8, ptr %i.cu, align 1, !tbaa !17
  %i.cv = and i8 %.val.i16.i.i54, 7
  switch i8 %i.cv, label %sdssetlen.exit.i.i55 [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai
  %.tr.i.i.i56 = trunc i64 %i.ct to i8
  %i.cw = shl i8 %.tr.i.i.i56, 3
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i55

bb.ak:                                            ; preds = %bb.ai
  %i.cx = trunc i64 %i.ct to i8
  %i.cy = getelementptr inbounds i8, ptr %i.cq, i64 -3
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i55

bb.al:                                            ; preds = %bb.ai
  %i.cz = trunc i64 %i.ct to i16
  %i.da = getelementptr inbounds i8, ptr %i.cq, i64 -5
  store i16 %i.cz, ptr %i.da, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i55

bb.am:                                            ; preds = %bb.ai
  %i.db = trunc i64 %i.ct to i32
  %i.dc = getelementptr inbounds i8, ptr %i.cq, i64 -9
  store i32 %i.db, ptr %i.dc, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i55

bb.an:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds i8, ptr %i.cq, i64 -17
  store i64 %i.ct, ptr %i.dd, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i55

sdssetlen.exit.i.i55:                             ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  store i8 0, ptr %i.de, align 1, !tbaa !17
  br label %sdscat.exit, !llvm.loop !52

bb.ao:                                            ; preds = %sdscatlen.exit
  %i.df = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.by, i32 noundef 125) #26 ; 3 uses
  %.not48 = icmp eq ptr %i.df, null
  br i1 %.not48, label %bb.bd, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.by to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = call ptr @_sdsnewlen(ptr noundef nonnull readonly %i.by, i64 noundef %i.di, i32 noundef 0) ; 4 uses
  %i.dk = call ptr %1(ptr noundef %i.dj, ptr noundef %2) #24 ; 5 uses
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %sdsfree.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 -1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !17
  %i.do = and i8 %i.dn, 7                         ; 2 uses
  %i.dp = icmp samesign ult i8 %i.do, 5
  br i1 %i.dp, label %switch.lookup, label %sdsHdrSize.exit.i

switch.lookup:                                    ; preds = %bb.aq
  %i.dq = zext nneg i8 %i.do to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.dq
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

sdsHdrSize.exit.i:                                ; preds = %bb.aq, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.aq ]
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 %.0.i.neg.i
  call void @zfree(ptr noundef nonnull %i.dr) #24
  br label %sdsfree.exit

sdsfree.exit:                                     ; preds = %bb.ap, %sdsHdrSize.exit.i
  %.not49 = icmp eq ptr %i.dk, null
  br i1 %.not49, label %bb.bd, label %bb.ar

bb.ar:                                            ; preds = %sdsfree.exit
  %i.ds = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dk) #26 ; 3 uses
  %i.dt = getelementptr i8, ptr %.1, i64 -1
  %.val.i.i.i58 = load i8, ptr %i.dt, align 1, !tbaa !17 ; 2 uses
  %i.du = and i8 %.val.i.i.i58, 7
  switch i8 %i.du, label %sdslen.exit.i.i59 [
    i8 0, label %bb.as
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
    i8 4, label %bb.aw
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dv = lshr i8 %.val.i.i.i58, 3
  %i.dw = zext nneg i8 %i.dv to i64
  br label %sdslen.exit.i.i59

bb.at:                                            ; preds = %bb.ar
  %i.dx = getelementptr inbounds i8, ptr %.1, i64 -3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i64
  br label %sdslen.exit.i.i59

bb.au:                                            ; preds = %bb.ar
  %i.ea = getelementptr inbounds i8, ptr %.1, i64 -5
  %i.eb = load i16, ptr %i.ea, align 1, !tbaa !18
  %i.ec = zext i16 %i.eb to i64
  br label %sdslen.exit.i.i59

bb.av:                                            ; preds = %bb.ar
  %i.ed = getelementptr inbounds i8, ptr %.1, i64 -9
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !9
  %i.ef = zext i32 %i.ee to i64
  br label %sdslen.exit.i.i59

bb.aw:                                            ; preds = %bb.ar
  %i.eg = getelementptr inbounds i8, ptr %.1, i64 -17
  %i.eh = load i64, ptr %i.eg, align 1, !tbaa !14
  br label %sdslen.exit.i.i59

sdslen.exit.i.i59:                                ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.0.i.i.i60 = phi i64 [ %i.eh, %bb.aw ], [ %i.dw, %bb.as ], [ %i.dz, %bb.at ], [ %i.ec, %bb.au ], [ %i.ef, %bb.av ], [ 0, %bb.ar ] ; 2 uses
  %i.ei = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.1, i64 noundef %i.ds, i32 noundef 1) ; 9 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %sdscat.exit64, label %bb.ax

bb.ax:                                            ; preds = %sdslen.exit.i.i59
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.0.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull readonly align 1 %i.dk, i64 %i.ds, i1 false)
  %i.el = add i64 %.0.i.i.i60, %i.ds              ; 6 uses
  %i.em = getelementptr i8, ptr %i.ei, i64 -1     ; 2 uses
  %.val.i16.i.i61 = load i8, ptr %i.em, align 1, !tbaa !17
  %i.en = and i8 %.val.i16.i.i61, 7
  switch i8 %i.en, label %sdssetlen.exit.i.i62 [
    i8 0, label %bb.ay
    i8 1, label %bb.az
    i8 2, label %bb.ba
    i8 3, label %bb.bb
    i8 4, label %bb.bc
  ]

bb.ay:                                            ; preds = %bb.ax
  %.tr.i.i.i63 = trunc i64 %i.el to i8
  %i.eo = shl i8 %.tr.i.i.i63, 3
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i62

bb.az:                                            ; preds = %bb.ax
  %i.ep = trunc i64 %i.el to i8
  %i.eq = getelementptr inbounds i8, ptr %i.ei, i64 -3
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i62

bb.ba:                                            ; preds = %bb.ax
  %i.er = trunc i64 %i.el to i16
  %i.es = getelementptr inbounds i8, ptr %i.ei, i64 -5
  store i16 %i.er, ptr %i.es, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i62

bb.bb:                                            ; preds = %bb.ax
  %i.et = trunc i64 %i.el to i32
  %i.eu = getelementptr inbounds i8, ptr %i.ei, i64 -9
  store i32 %i.et, ptr %i.eu, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i62

bb.bc:                                            ; preds = %bb.ax
  %i.ev = getelementptr inbounds i8, ptr %i.ei, i64 -17
  store i64 %i.el, ptr %i.ev, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i62

sdssetlen.exit.i.i62:                             ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  store i8 0, ptr %i.ew, align 1, !tbaa !17
  br label %sdscat.exit64

sdscat.exit64:                                    ; preds = %sdssetlen.exit.i.i62, %sdslen.exit.i.i59
  %i.ex = getelementptr inbounds i8, ptr %i.dk, i64 -1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !17
  %i.ez = and i8 %i.ey, 7                         ; 2 uses
  %i.fa = icmp samesign ult i8 %i.ez, 5
  br i1 %i.fa, label %switch.lookup112, label %sdsfree.exit67

switch.lookup112:                                 ; preds = %sdscat.exit64
  %i.fb = zext nneg i8 %i.ez to i64
  %switch.gep113 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.fb
  %switch.load114 = load i64, ptr %switch.gep113, align 8
  br label %sdsfree.exit67

sdsfree.exit67:                                   ; preds = %sdscat.exit64, %switch.lookup112
  %.0.i.neg.i66 = phi i64 [ %switch.load114, %switch.lookup112 ], [ 0, %sdscat.exit64 ]
  %i.fc = getelementptr inbounds i8, ptr %i.dk, i64 %.0.i.neg.i66
  call void @zfree(ptr noundef nonnull %i.fc) #24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  br label %sdscat.exit

sdscat.exit:                                      ; preds = %sdssetlen.exit.i.i55, %sdslen.exit.i.i52, %sdsfree.exit67
  %.338 = phi ptr [ %i.ca, %sdssetlen.exit.i.i55 ], [ %i.fd, %sdsfree.exit67 ], [ %i.ca, %sdslen.exit.i.i52 ] ; 2 uses
  %.4 = phi ptr [ %i.cq, %sdssetlen.exit.i.i55 ], [ %i.ei, %sdsfree.exit67 ], [ null, %sdslen.exit.i.i52 ] ; 2 uses
  %i.fe = load i8, ptr %.338, align 1, !tbaa !17
  %.not = icmp eq i8 %i.fe, 0
  br i1 %.not, label %sdsfree.exit70, label %.lr.ph

bb.bd:                                            ; preds = %sdscatlen.exit, %sdsfree.exit, %bb.ao
  %i.ff = icmp eq ptr %.1, null
  br i1 %i.ff, label %sdsfree.exit70, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fg = getelementptr inbounds i8, ptr %.1, i64 -1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !17
  %i.fi = and i8 %i.fh, 7                         ; 2 uses
  %i.fj = icmp samesign ult i8 %i.fi, 5
  br i1 %i.fj, label %switch.lookup115, label %sdsHdrSize.exit.i68

switch.lookup115:                                 ; preds = %bb.be
  %i.fk = zext nneg i8 %i.fi to i64
  %switch.gep116 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.fk
  %switch.load117 = load i64, ptr %switch.gep116, align 8
  br label %sdsHdrSize.exit.i68

sdsHdrSize.exit.i68:                              ; preds = %bb.be, %switch.lookup115
  %.0.i.neg.i69 = phi i64 [ %switch.load117, %switch.lookup115 ], [ 0, %bb.be ]
  %i.fl = getelementptr inbounds i8, ptr %.1, i64 %.0.i.neg.i69
  call void @zfree(ptr noundef nonnull %i.fl) #24
  br label %sdsfree.exit70

sdsfree.exit70:                                   ; preds = %sdscat.exit, %sdsempty.exit, %sdslen.exit.i.i, %sdssetlen.exit.i.i, %sdsHdrSize.exit.i68, %bb.bd
  %.0 = phi ptr [ null, %sdslen.exit.i.i ], [ null, %sdsHdrSize.exit.i68 ], [ null, %bb.bd ], [ %i.ab, %sdssetlen.exit.i.i ], [ %.0.i.i, %sdsempty.exit ], [ %.4, %sdscat.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !11, i64 0}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!11, !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !11, i64 0}
!23 = !{!"branch_weights", !"expected", i32 1341506, i32 2146142142}
!24 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"long long", !11, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 int", !22, i64 0}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 short", !22, i64 0}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
end_hunk_0
