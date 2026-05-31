inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@jsonExtractField:bb.a
  switch i8 %i.dp, label %jsonSkipNumber.exit.i.i [
    i8 101, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 46, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 45, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 43, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 69, label %jsonIsNumberChar.exit.thread.i.i.i
  ]

jsonIsNumberChar.exit.thread.i.i.i:               ; preds = %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %exitcond.not.i46.i.i = icmp eq ptr %i.du, %i.b
  br i1 %exitcond.not.i46.i.i, label %jsonSkipNumber.exit.i.i, label %bb.am, !llvm.loop !69

jsonSkipNumber.exit.i.i:                          ; preds = %jsonIsNumberChar.exit.thread.i.i.i, %switch.early.test.i.i.i.i
  %.12.i = phi ptr [ %i.do, %switch.early.test.i.i.i.i ], [ %scevgep183.i, %jsonIsNumberChar.exit.thread.i.i.i ]
  %.lcssa.ph.i.i.i = phi ptr [ %i.do, %switch.early.test.i.i.i.i ], [ %scevgep.i.i.i, %jsonIsNumberChar.exit.thread.i.i.i ]
  %i.dv = icmp ugt ptr %.lcssa.ph.i.i.i, %.10.i
  br i1 %i.dv, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

jsonSkipValue.exit.i:                             ; preds = %jsonSkipString.exit.i.i.i
  %i.dw = icmp eq i32 %.220.i.i.i, 0
  br i1 %i.dw, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

jsonSkipValue.exit.thread86.i:                    ; preds = %jsonSkipValue.exit.i, %jsonSkipNumber.exit.i.i, %bb.al, %bb.aj, %bb.ah, %._crit_edge.loopexit.i35.i.i, %bb.x
  %.1491.i = phi ptr [ %storemerge28.i.i.i, %jsonSkipValue.exit.i ], [ %i.da, %bb.ah ], [ %i.de, %bb.aj ], [ %i.bu, %bb.x ], [ %i.di, %bb.al ], [ %.12.i, %jsonSkipNumber.exit.i.i ], [ %storemerge28.i34.i.i, %._crit_edge.loopexit.i35.i.i ] ; 5 uses
  %i.dx = icmp ult ptr %.1491.i, %i.b
  br i1 %i.dx, label %.lr.ph.i61.i, label %jsonSkipWhiteSpaces.exit64.i

.lr.ph.i61.i:                                     ; preds = %jsonSkipValue.exit.thread86.i
  %.1491185.i = ptrtoint ptr %.1491.i to i64
  %scevgep184.i = getelementptr i8, ptr %.1491.i, i64 %i.c
  %i.dy = sub i64 0, %.1491185.i
  %scevgep186.i = getelementptr i8, ptr %scevgep184.i, i64 %i.dy
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i61.i
  %.15.i = phi ptr [ %.1491.i, %.lr.ph.i61.i ], [ %i.ee, %bb.ao ] ; 3 uses
  %i.dz = load i8, ptr %.15.i, align 1, !tbaa !18
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !36
  %i.ed = and i16 %i.ec, 8192
  %.not.i62.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i62.i, label %jsonSkipWhiteSpaces.exit64.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %.15.i, i64 1 ; 2 uses
  %exitcond.not.i63.i = icmp eq ptr %i.ee, %i.b
  br i1 %exitcond.not.i63.i, label %jsonSkipWhiteSpaces.exit64.i, label %bb.an, !llvm.loop !67

jsonSkipWhiteSpaces.exit64.i:                     ; preds = %bb.ao, %bb.an, %jsonSkipValue.exit.thread86.i
  %.16.i = phi ptr [ %.1491.i, %jsonSkipValue.exit.thread86.i ], [ %.15.i, %bb.an ], [ %scevgep186.i, %bb.ao ] ; 3 uses
  %.not40.i = icmp ult ptr %.16.i, %i.b
  br i1 %.not40.i, label %bb.ap, label %jsonSeekField.exit.thread

bb.ap:                                            ; preds = %jsonSkipWhiteSpaces.exit64.i
  %i.ef = load i8, ptr %.16.i, align 1, !tbaa !18
  %i.eg = icmp eq i8 %i.ef, 44
  br i1 %i.eg, label %.preheader.i, label %jsonSeekField.exit.thread

.thread.loopexit100.split.loop.exit114.i:         ; preds = %jsonSkipWhiteSpaces.exit57.i
  br i1 %.not38.i, label %jsonSeekField.exit.thread, label %jsonSeekField.exit

jsonSeekField.exit:                               ; preds = %.thread.loopexit100.split.loop.exit114.i
  store ptr %.9.i, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq ptr %.9.i, null
  br i1 %.not, label %jsonSeekField.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %jsonSeekField.exit
  %i.eh = call fastcc ptr @jsonParseValueToken(ptr noundef %i.a, ptr noundef %i.b)
  br label %jsonSeekField.exit.thread

jsonSeekField.exit.thread:                        ; preds = %bb.c, %jsonSkipWhiteSpaces.exit45.i, %bb.g, %bb.ap, %jsonSkipWhiteSpaces.exit52.i, %jsonSkipValue.exit.i, %jsonSkipWhiteSpaces.exit64.i, %bb.o, %bb.h, %bb.aj, %jsonSkipWhiteSpaces.exit.i.i, %bb.v, %bb.ah, %bb.al, %bb.y, %bb.ac, %bb.ag, %bb.ai, %bb.ak, %jsonSkipNumber.exit.i.i, %._crit_edge.loopexit.i35.i.i, %.backedge.i.i, %bb.ad, %bb.z, %.backedge.i.i.i, %.backedge.i.i37.i.i, %.backedge.i.i.i.i, %.thread.loopexit100.split.loop.exit114.i, %jsonSkipWhiteSpaces.exit.i, %bb.d, %jsonSeekField.exit, %bb.aq
  %.0 = phi ptr [ %i.eh, %bb.aq ], [ null, %jsonSeekField.exit ], [ null, %bb.z ], [ null, %jsonSkipWhiteSpaces.exit.i ], [ null, %.backedge.i.i.i ], [ null, %.backedge.i.i37.i.i ], [ null, %.backedge.i.i.i.i ], [ null, %jsonSkipWhiteSpaces.exit45.i ], [ null, %.backedge.i.i ], [ null, %bb.ad ], [ null, %.thread.loopexit100.split.loop.exit114.i ], [ null, %bb.d ], [ null, %._crit_edge.loopexit.i35.i.i ], [ null, %jsonSkipNumber.exit.i.i ], [ null, %bb.ak ], [ null, %bb.ai ], [ null, %bb.ag ], [ null, %bb.ac ], [ null, %bb.y ], [ null, %bb.al ], [ null, %bb.ah ], [ null, %bb.v ], [ null, %jsonSkipWhiteSpaces.exit.i.i ], [ null, %bb.aj ], [ null, %bb.h ], [ null, %bb.o ], [ null, %jsonSkipWhiteSpaces.exit64.i ], [ null, %jsonSkipValue.exit.i ], [ null, %jsonSkipWhiteSpaces.exit52.i ], [ null, %bb.ap ], [ null, %bb.g ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @jsonParseValueToken(ptr noundef nonnull captures(none) %0, ptr noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %i.c = icmp ult ptr %.promoted.i, %1
  br i1 %i.c, label %.lr.ph.i, label %jsonSkipWhiteSpaces.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = tail call ptr @__ctype_b_loc() #24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.f = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !36
  %i.k = and i16 %i.j, 8192
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %jsonSkipWhiteSpaces.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !49
  %exitcond.not.i = icmp eq ptr %i.l, %1
  br i1 %exitcond.not.i, label %jsonSkipWhiteSpaces.exit, label %bb.b, !llvm.loop !67

jsonSkipWhiteSpaces.exit:                         ; preds = %bb.b, %bb.c, %bb.a
  %i.m = phi ptr [ %.promoted.i, %bb.a ], [ %i.l, %bb.c ], [ %i.f, %bb.b ] ; 17 uses
  %.not = icmp ult ptr %i.m, %1
  br i1 %.not, label %bb.d, label %jsonParseStringToken.exit

bb.d:                                             ; preds = %jsonSkipWhiteSpaces.exit
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 3 uses
  switch i8 %i.n, label %bb.at [
    i8 34, label %bb.e
    i8 91, label %bb.p
    i8 123, label %jsonParseStringToken.exit
    i8 116, label %bb.ah
    i8 102, label %bb.al
    i8 110, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %.ptr93.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  store ptr %.ptr93.i, ptr %0, align 8, !tbaa !49
  %i.o = icmp ult ptr %.ptr93.i, %1
  br i1 %i.o, label %.lr.ph.lr.ph.i, label %jsonParseStringToken.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.e, %.outer68.outer.i
  %.054.ph.ph83.idx.i = phi i64 [ %.05478.add91.i, %.outer68.outer.i ], [ 1, %bb.e ]
  %.not66.i = phi i1 [ false, %.outer68.outer.i ], [ true, %bb.e ]
  %.056.ph.ph81.i = phi i64 [ %i.r, %.outer68.outer.i ], [ 0, %bb.e ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.outer68.i, %.lr.ph.lr.ph.i
  %.054.ph80.idx.i = phi i64 [ %.054.ph.ph83.idx.i, %.lr.ph.lr.ph.i ], [ %i.p, %.outer68.i ] ; 5 uses
  %.056.ph79.i = phi i64 [ %.056.ph.ph81.i, %.lr.ph.lr.ph.i ], [ %i.u, %.outer68.i ] ; 5 uses
  %i.p = add i64 %.054.ph80.idx.i, 1              ; 3 uses
  %.05478.ptr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.054.ph80.idx.i
  %i.q = load i8, ptr %.05478.ptr.i, align 1, !tbaa !18
  switch i8 %i.q, label %.outer68.i [
    i8 92, label %bb.f
    i8 34, label %bb.g
  ]

.outer68.outer.i:                                 ; preds = %bb.f
  %.05478.add91.i = add i64 %.054.ph80.idx.i, 2   ; 2 uses
  %.ptr94.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.05478.add91.i
  %i.r = add i64 %.056.ph79.i, 1
  %i.s = icmp ult ptr %.ptr94.i, %1
  br i1 %i.s, label %.lr.ph.lr.ph.i, label %jsonParseStringToken.exit, !llvm.loop !70

bb.f:                                             ; preds = %.lr.ph.i27
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.t = icmp ult ptr %.ptr.i, %1
  br i1 %i.t, label %.outer68.outer.i, label %jsonParseStringToken.exit

.outer68.i:                                       ; preds = %.lr.ph.i27
  %.ptr92.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.u = add i64 %.056.ph79.i, 1
  %i.v = icmp ult ptr %.ptr92.i, %1
  br i1 %i.v, label %.lr.ph.i27, label %jsonParseStringToken.exit, !llvm.loop !70

bb.g:                                             ; preds = %.lr.ph.i27
  %.05478.ptr.i.le = getelementptr inbounds nuw i8, ptr %i.m, i64 %.054.ph80.idx.i ; 3 uses
  %i.w = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.x = tail call ptr %i.w(i64 noundef 40) #22, !inline_history !71 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 2, ptr %i.z, align 4, !tbaa !15
  store i32 1, ptr %i.x, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  br i1 %.not66.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.ptr93.i, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.056.ph79.i, ptr %i.ac, align 8, !tbaa !18
  store ptr null, ptr %i.aa, align 8, !tbaa !18
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ae = add i64 %.056.ph79.i, 1
  %i.af = tail call ptr %i.ad(i64 noundef %i.ae) #22, !inline_history !72 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.056.ph79.i, ptr %i.ah, align 8, !tbaa !18
  %i.ai = icmp sgt i64 %.054.ph80.idx.i, 1
  br i1 %i.ai, label %.lr.ph86.i, label %.outer._crit_edge.i

.lr.ph86.i:                                       ; preds = %bb.i, %.outer.backedge.i
  %.0.ph89.i = phi ptr [ %.0.ph.be.i, %.outer.backedge.i ], [ %.ptr93.i, %bb.i ] ; 3 uses
  %.052.ph88.i = phi ptr [ %.052.ph.be.i, %.outer.backedge.i ], [ %i.af, %bb.i ] ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.0.ph89.i, i64 1 ; 8 uses
  %i.aj = load i8, ptr %.0.ph89.i, align 1, !tbaa !18 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 92
  br i1 %i.ak, label %bb.n, label %.outer.backedge.i

bb.j:                                             ; preds = %bb.n
  %i.al = load i8, ptr %scevgep.i, align 1, !tbaa !18 ; 2 uses
  %2 = sext i8 %i.al to i32
  %3 = add nsw i32 %2, -34                        ; 2 uses
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 31)
  switch i32 %4, label %bb.m [
    i32 38, label %.outer.backedge.i
    i32 40, label %5
    i32 41, label %6
    i32 29, label %bb.k
    i32 0, label %bb.l
  ]

5:                                                ; preds = %bb.j
  br label %.outer.backedge.i

6:                                                ; preds = %bb.j
  br label %.outer.backedge.i

bb.k:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.m:                                             ; preds = %bb.j
  br label %.outer.backedge.i

.outer.backedge.i:                                ; preds = %bb.m, %bb.l, %bb.k, %6, %5, %bb.j, %.lr.ph86.i
  %.sink.i = phi i8 [ %i.aj, %.lr.ph86.i ], [ 13, %5 ], [ 9, %6 ], [ 92, %bb.k ], [ 34, %bb.l ], [ %i.al, %bb.m ], [ 10, %bb.j ]
  %.085100.i = phi ptr [ %.0.ph89.i, %.lr.ph86.i ], [ %scevgep.i, %5 ], [ %scevgep.i, %6 ], [ %scevgep.i, %bb.k ], [ %scevgep.i, %bb.l ], [ %scevgep.i, %bb.m ], [ %scevgep.i, %bb.j ]
  store i8 %.sink.i, ptr %.052.ph88.i, align 1, !tbaa !18
  %.0.ph.be.i = getelementptr inbounds nuw i8, ptr %.085100.i, i64 1 ; 2 uses
  %.052.ph.be.i = getelementptr inbounds nuw i8, ptr %.052.ph88.i, i64 1 ; 2 uses
  %i.am = icmp ult ptr %.0.ph.be.i, %.05478.ptr.i.le
  br i1 %i.am, label %.lr.ph86.i, label %.outer._crit_edge.i, !llvm.loop !73

bb.n:                                             ; preds = %.lr.ph86.i
  %i.an = icmp ult ptr %scevgep.i, %.05478.ptr.i.le
  br i1 %i.an, label %bb.j, label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %bb.n, %.outer.backedge.i, %bb.i
  %.052.ph.lcssa.i = phi ptr [ %i.af, %bb.i ], [ %.052.ph.be.i, %.outer.backedge.i ], [ %.052.ph88.i, %bb.n ]
  store i8 0, ptr %.052.ph.lcssa.i, align 1, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %.outer._crit_edge.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.05478.ptr.i.le, i64 1
  store ptr %i.ao, ptr %0, align 8, !tbaa !49
  br label %jsonParseStringToken.exit

bb.p:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !49
  %i.aq = icmp ult ptr %i.ap, %1
  br i1 %i.aq, label %.lr.ph.i155, label %jsonSkipWhiteSpaces.exit158

.lr.ph.i155:                                      ; preds = %bb.p
  %i.ar = tail call ptr @__ctype_b_loc() #24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i155
  %i.at = phi ptr [ %i.ap, %.lr.ph.i155 ], [ %i.az, %bb.r ] ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !36
  %i.ay = and i16 %i.ax, 8192
  %.not.i156 = icmp eq i16 %i.ay, 0
  br i1 %.not.i156, label %jsonSkipWhiteSpaces.exit158, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 3 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !49
  %exitcond.not.i157 = icmp eq ptr %i.az, %1
  br i1 %exitcond.not.i157, label %jsonSkipWhiteSpaces.exit158, label %bb.q, !llvm.loop !67

jsonSkipWhiteSpaces.exit158:                      ; preds = %bb.q, %bb.r, %bb.p
  %i.ba = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.bb = tail call ptr %i.ba(i64 noundef 40) #22, !inline_history !74 ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 3, ptr %i.bd, align 4, !tbaa !15
  store i32 1, ptr %i.bb, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !49    ; 3 uses
  %i.bh = icmp ult ptr %i.bg, %1
  br i1 %i.bh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %jsonSkipWhiteSpaces.exit158
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bj = icmp eq i8 %i.bi, 93
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bk, ptr %0, align 8, !tbaa !49
  br label %jsonParseStringToken.exit

bb.u:                                             ; preds = %bb.s, %jsonSkipWhiteSpaces.exit158
  %i.bl = tail call fastcc ptr @jsonParseValueToken(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !75 ; 2 uses
  %.not63.i88 = icmp eq ptr %i.bl, null
  br i1 %.not63.i88, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %jsonSkipWhiteSpaces.exit56, %bb.u
  tail call void @exprTokenRelease(ptr noundef nonnull %i.bb), !inline_history !75
  br label %jsonParseStringToken.exit

.lr.ph:                                           ; preds = %bb.u, %jsonSkipWhiteSpaces.exit56
  %i.bm = phi ptr [ %i.cx, %jsonSkipWhiteSpaces.exit56 ], [ %i.bl, %bb.u ] ; 2 uses
  %.049.i89 = phi i64 [ %.251.i, %jsonSkipWhiteSpaces.exit56 ], [ 0, %bb.u ] ; 5 uses
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %.049.i89
  br i1 %i.bo, label %bb.v, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !18
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %.not64.i = icmp eq i64 %.049.i89, 0
  %i.bp = shl i64 %.049.i89, 1
  %i.bq = select i1 %.not64.i, i64 4, i64 %i.bp   ; 3 uses
  %.not65.i = icmp ult i64 %i.bq, %.049.i89
  br i1 %.not65.i, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  tail call void @exprTokenRelease(ptr noundef nonnull %i.bm), !inline_history !75
  tail call void @exprTokenRelease(ptr noundef nonnull %i.bb), !inline_history !75
  br label %jsonParseStringToken.exit

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !18
  %i.bt = shl i64 %i.bq, 3
  %i.bu = tail call ptr %i.br(ptr noundef %i.bs, i64 noundef %i.bt) #22, !inline_history !75 ; 2 uses
  store ptr %i.bu, ptr %i.be, align 8, !tbaa !18
  %.pre109 = load i64, ptr %i.bf, align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph._crit_edge, %bb.w
  %i.bv = phi i64 [ %.pre109, %bb.w ], [ %i.bn, %.lr.ph._crit_edge ] ; 2 uses
  %i.bw = phi ptr [ %i.bu, %bb.w ], [ %.pre, %.lr.ph._crit_edge ]
  %.251.i = phi i64 [ %i.bq, %bb.w ], [ %.049.i89, %.lr.ph._crit_edge ]
  %i.bx = add i64 %i.bv, 1
  store i64 %i.bx, ptr %i.bf, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  store ptr %i.bm, ptr %i.by, align 8, !tbaa !19
  %.promoted.i57 = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %i.bz = icmp ult ptr %.promoted.i57, %1
  br i1 %i.bz, label %.lr.ph.i59, label %jsonSkipWhiteSpaces.exit62

.lr.ph.i59:                                       ; preds = %bb.x
  %i.ca = tail call ptr @__ctype_b_loc() #24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i59
  %i.cc = phi ptr [ %.promoted.i57, %.lr.ph.i59 ], [ %i.ci, %bb.z ] ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !36
  %i.ch = and i16 %i.cg, 8192
  %.not.i60 = icmp eq i16 %i.ch, 0
  br i1 %.not.i60, label %jsonSkipWhiteSpaces.exit62, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 4 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !49
  %exitcond.not.i61 = icmp eq ptr %i.ci, %1
  br i1 %exitcond.not.i61, label %jsonSkipWhiteSpaces.exit62, label %bb.y, !llvm.loop !67

jsonSkipWhiteSpaces.exit62:                       ; preds = %bb.y, %bb.z, %bb.x
  %i.cj = phi ptr [ %.promoted.i57, %bb.x ], [ %i.ci, %bb.z ], [ %i.cc, %bb.y ] ; 4 uses
  %.not66.i30 = icmp ult ptr %i.cj, %1
  br i1 %.not66.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %jsonSkipWhiteSpaces.exit62
  tail call void @exprTokenRelease(ptr noundef nonnull %i.bb), !inline_history !75
  br label %jsonParseStringToken.exit

bb.ab:                                            ; preds = %jsonSkipWhiteSpaces.exit62
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  switch i8 %i.ck, label %bb.ag [
    i8 44, label %bb.ac
    i8 93, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 3 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !49
  %i.cm = icmp ult ptr %i.cl, %1
  br i1 %i.cm, label %.lr.ph.i53, label %jsonSkipWhiteSpaces.exit56

.lr.ph.i53:                                       ; preds = %bb.ac
  %i.cn = tail call ptr @__ctype_b_loc() #24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i53
  %i.cp = phi ptr [ %i.cl, %.lr.ph.i53 ], [ %i.cv, %bb.ae ] ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !36
  %i.cu = and i16 %i.ct, 8192
  %.not.i54 = icmp eq i16 %i.cu, 0
  br i1 %.not.i54, label %jsonSkipWhiteSpaces.exit56, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 3 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !49
  %exitcond.not.i55 = icmp eq ptr %i.cv, %1
  br i1 %exitcond.not.i55, label %jsonSkipWhiteSpaces.exit56, label %bb.ad, !llvm.loop !67

bb.af:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.cw, ptr %0, align 8, !tbaa !49
  br label %jsonParseStringToken.exit

bb.ag:                                            ; preds = %bb.ab
  tail call void @exprTokenRelease(ptr noundef nonnull %i.bb), !inline_history !75
  br label %jsonParseStringToken.exit

jsonSkipWhiteSpaces.exit56:                       ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.cx = tail call fastcc ptr @jsonParseValueToken(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !75 ; 2 uses
end_hunk_0
begin_hunk_1_@RedisModule_OnLoad:bb.a
  %i.apk = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr @.str.126, ptr %i.apk, align 8, !tbaa !188
  %i.apl = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.apm = getelementptr inbounds nuw i8, ptr %29, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apl, i8 0, i64 16, i1 false)
  store i32 -2, ptr %i.apm, align 8, !tbaa !189
  %i.apn = getelementptr inbounds nuw i8, ptr %29, i64 52
  store i32 0, ptr %i.apn, align 4
  %i.apo = getelementptr inbounds nuw i8, ptr %29, i64 56
  store ptr null, ptr %i.apo, align 8, !tbaa !190
  %i.app = getelementptr inbounds nuw i8, ptr %29, i64 64
  store ptr %28, ptr %i.app, align 8, !tbaa !191
  %i.apq = load ptr, ptr @RedisModule_SetCommandInfo, align 8, !tbaa !13
  %i.apr = call i32 %i.apq(ptr noundef nonnull %i.apg, ptr noundef nonnull %29) #22
  %i.aps = icmp eq i32 %i.apr, 1
  br i1 %i.aps, label %bb.az, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.apt = load ptr, ptr @RedisModule_CreateCommand, align 8, !tbaa !13
  %i.apu = call i32 %i.apt(ptr noundef nonnull %0, ptr noundef nonnull @.str.165, ptr noundef nonnull @VISMEMBER_RedisCommand, ptr noundef nonnull @.str.131, i32 noundef 1, i32 noundef 1, i32 noundef 1) #22
  %i.apv = icmp eq i32 %i.apu, 1
  br i1 %i.apv, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.apw = load ptr, ptr @RedisModule_GetCommand, align 8, !tbaa !13
  %i.apx = call ptr %i.apw(ptr noundef nonnull %0, ptr noundef nonnull @.str.165) #22 ; 2 uses
  %i.apy = icmp eq ptr %i.apx, null
  br i1 %i.apy, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %30, ptr noundef nonnull align 16 dereferenceable(216) @__const.RedisModule_OnLoad.vismember_args, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  store ptr @RedisModule_CurrentCommandInfoVersion, ptr %31, align 8, !tbaa !184
  %i.apz = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr @.str.166, ptr %i.apz, align 8, !tbaa !186
  %i.aqa = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr null, ptr %i.aqa, align 8, !tbaa !187
  %i.aqb = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr @.str.167, ptr %i.aqb, align 8, !tbaa !188
  %i.aqc = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.aqd = getelementptr inbounds nuw i8, ptr %31, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqc, i8 0, i64 16, i1 false)
  store i32 3, ptr %i.aqd, align 8, !tbaa !189
  %i.aqe = getelementptr inbounds nuw i8, ptr %31, i64 52
  store i32 0, ptr %i.aqe, align 4
  %i.aqf = getelementptr inbounds nuw i8, ptr %31, i64 56
  store ptr null, ptr %i.aqf, align 8, !tbaa !190
  %i.aqg = getelementptr inbounds nuw i8, ptr %31, i64 64
  store ptr %30, ptr %i.aqg, align 8, !tbaa !191
  %i.aqh = load ptr, ptr @RedisModule_SetCommandInfo, align 8, !tbaa !13
  %i.aqi = call i32 %i.aqh(ptr noundef nonnull %i.apx, ptr noundef nonnull %31) #22
  %i.aqj = icmp eq i32 %i.aqi, 1
  br i1 %i.aqj, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.aqk = load ptr, ptr @RedisModule_CreateCommand, align 8, !tbaa !13
  %i.aql = call i32 %i.aqk(ptr noundef nonnull %0, ptr noundef nonnull @.str.168, ptr noundef nonnull @VRANGE_RedisCommand, ptr noundef nonnull @.str.131, i32 noundef 1, i32 noundef 1, i32 noundef 1) #22
  %i.aqm = icmp eq i32 %i.aql, 1
  br i1 %i.aqm, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aqn = load ptr, ptr @RedisModule_GetCommand, align 8, !tbaa !13
  %i.aqo = call ptr %i.aqn(ptr noundef nonnull %0, ptr noundef nonnull @.str.168) #22 ; 2 uses
  %i.aqp = icmp eq ptr %i.aqo, null
  br i1 %i.aqp, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(360) %32, ptr noundef nonnull align 16 dereferenceable(360) @__const.RedisModule_OnLoad.vrange_args, i64 360, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  store ptr @RedisModule_CurrentCommandInfoVersion, ptr %33, align 8, !tbaa !184
  %i.aqq = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.171, ptr %i.aqq, align 8, !tbaa !186
  %i.aqr = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr null, ptr %i.aqr, align 8, !tbaa !187
  %i.aqs = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr @.str.172, ptr %i.aqs, align 8, !tbaa !188
  %i.aqt = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.aqu = getelementptr inbounds nuw i8, ptr %33, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqt, i8 0, i64 16, i1 false)
  store i32 -4, ptr %i.aqu, align 8, !tbaa !189
  %i.aqv = getelementptr inbounds nuw i8, ptr %33, i64 52
  store i32 0, ptr %i.aqv, align 4
  %i.aqw = getelementptr inbounds nuw i8, ptr %33, i64 56
  store ptr null, ptr %i.aqw, align 8, !tbaa !190
  %i.aqx = getelementptr inbounds nuw i8, ptr %33, i64 64
  store ptr %32, ptr %i.aqx, align 8, !tbaa !191
  %i.aqy = load ptr, ptr @RedisModule_SetCommandInfo, align 8, !tbaa !13
  %i.aqz = call i32 %i.aqy(ptr noundef nonnull %i.aqo, ptr noundef nonnull %33) #22
  %i.ara = icmp eq i32 %i.aqz, 1
  br i1 %i.ara, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.arb = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  %i.arc = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ard = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  call void @hnsw_set_allocator(ptr noundef %i.arb, ptr noundef %i.arc, ptr noundef %i.ard) #22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.0 = phi i32 [ 0, %bb.aw ], [ 1, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au, %bb.at, %bb.as
  %.2 = phi i32 [ 1, %bb.at ], [ 1, %bb.as ], [ %.0, %bb.ax ], [ 1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ar, %bb.aq, %bb.ap
  %.4 = phi i32 [ 1, %bb.aq ], [ 1, %bb.ap ], [ %.2, %bb.ay ], [ 1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ao, %bb.an, %bb.am
  %.6 = phi i32 [ 1, %bb.an ], [ 1, %bb.am ], [ %.4, %bb.az ], [ 1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.al, %bb.ak, %bb.aj
  %.8 = phi i32 [ 1, %bb.ak ], [ 1, %bb.aj ], [ %.6, %bb.ba ], [ 1, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ai, %bb.ah, %bb.ag
  %.10 = phi i32 [ 1, %bb.ah ], [ 1, %bb.ag ], [ %.8, %bb.bb ], [ 1, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.af, %bb.ae, %bb.ad
  %.12 = phi i32 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %.10, %bb.bc ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ac, %bb.ab, %bb.aa
  %.14 = phi i32 [ 1, %bb.ab ], [ 1, %bb.aa ], [ %.12, %bb.bd ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.z, %bb.y, %bb.x
  %.16 = phi i32 [ 1, %bb.y ], [ 1, %bb.x ], [ %.14, %bb.be ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.w, %bb.v, %bb.u
  %.18 = phi i32 [ 1, %bb.v ], [ 1, %bb.u ], [ %.16, %bb.bf ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.t, %bb.s, %bb.r
  %.20 = phi i32 [ 1, %bb.s ], [ 1, %bb.r ], [ %.18, %bb.bg ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.q, %bb.p, %bb.o
  %.22 = phi i32 [ 1, %bb.p ], [ 1, %bb.o ], [ %.20, %bb.bh ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.n, %bb.m, %bb.l
  %.24 = phi i32 [ 1, %bb.m ], [ 1, %bb.l ], [ %.22, %bb.bi ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.k, %bb.j, %bb.i
  %.26 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ %.24, %bb.bj ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %RedisModule_Init.exit

RedisModule_Init.exit:                            ; preds = %bb.h, %bb.f, %bb.d, %bb.b, %bb.bk
  %.27 = phi i32 [ %.26, %bb.bk ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ]
  ret i32 %.27
}

declare void @hnsw_set_allocator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @VectorSets_OnLoad(ptr noundef %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RedisModule_OnLoad(ptr noundef %0, ptr poison, i32 poison)
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{!16, !10, i64 4}
!16 = !{!"exprtoken", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 16}
!17 = !{!16, !10, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS9exprtoken", !14, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !25, i64 0}
!24 = !{!"exprstack", !25, i64 0, !10, i64 8, !10, i64 12}
!25 = !{!"p2 _ZTS9exprtoken", !26, i64 0}
!26 = !{!"any p2 pointer", !14, i64 0}
!27 = !{!24, !10, i64 8}
!28 = !{!24, !10, i64 12}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = !{!32, !33, i64 8}
!32 = !{!"exprstate", !33, i64 0, !33, i64 8, !24, i64 16, !24, i64 32, !24, i64 48, !24, i64 64}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 short", !14, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !11, i64 0}
!38 = distinct !{!38, !22}
!39 = !{ptr @exprNewToken}
!40 = distinct !{!40, !22}
!41 = !{!42, !33, i64 0}
!42 = !{!"", !33, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!43 = !{!42, !10, i64 8}
!44 = !{!42, !10, i64 12}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22, !48}
!48 = !{!"llvm.loop.peeled.count", i32 1}
!49 = !{!33, !33, i64 0}
!50 = distinct !{!50, !22}
!51 = !{ptr @exprParseString, ptr @exprNewToken}
!52 = !{!32, !33, i64 0}
!53 = !{ptr @exprStackFree}
!54 = !{ptr @exprParseSelector, ptr @exprNewToken}
!55 = !{ptr @exprStackPush}
!56 = distinct !{!56, !22}
!57 = !{!42, !10, i64 16}
!58 = distinct !{!58, !22}
!59 = !{!42, !10, i64 20}
!60 = !{!16, !10, i64 8}
!61 = !{ptr @exprStackInit}
!62 = !{!32, !10, i64 56}
!63 = !{!32, !25, i64 48}
!64 = distinct !{!64, !22}
!65 = !{!32, !10, i64 40}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{null, ptr @exprNewToken}
!72 = distinct !{null}
!73 = distinct !{!73, !22}
!74 = distinct !{ptr @exprNewToken, null}
!75 = distinct !{null}
!76 = distinct !{null, ptr @exprNewToken}
!77 = distinct !{!77, !22}
!78 = distinct !{null, ptr @exprNewToken}
!79 = !{!32, !10, i64 72}
!80 = !{!32, !25, i64 64}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = !{!85, !85, i64 0}
!85 = !{!"float", !11, i64 0}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !22}
!92 = !{!93, !93, i64 0}
!93 = !{!"long", !11, i64 0}
!94 = !{!95, !93, i64 88}
!95 = !{!"vsetObject", !96, i64 0, !97, i64 8, !98, i64 16, !10, i64 24, !11, i64 32, !93, i64 88, !93, i64 96, !11, i64 104}
!96 = !{!"p1 _ZTS4HNSW", !14, i64 0}
!97 = !{!"p1 _ZTS15RedisModuleDict", !14, i64 0}
!98 = !{!"p1 float", !14, i64 0}
!99 = !{!95, !96, i64 0}
!100 = !{!95, !97, i64 8}
!101 = !{!95, !98, i64 16}
!102 = !{!95, !10, i64 24}
!103 = !{!95, !93, i64 96}
!104 = !{!95, !11, i64 104}
!105 = !{!106, !107, i64 0}
!106 = !{!"vsetNodeVal", !107, i64 0, !107, i64 8}
!107 = !{!"p1 _ZTS17RedisModuleString", !14, i64 0}
!108 = !{!106, !107, i64 8}
!109 = distinct !{!109, !22}
!110 = !{!111, !10, i64 1656}
!111 = !{!"HNSW", !112, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !93, i64 24, !11, i64 32, !11, i64 40, !112, i64 296, !11, i64 304, !11, i64 360, !11, i64 1640, !11, i64 1648, !10, i64 1656, !113, i64 1664}
!112 = !{!"p1 _ZTS8hnswNode", !14, i64 0}
!113 = !{!"p1 _ZTS10hnswCursor", !14, i64 0}
!114 = !{ptr @vectorSetWaitAllBackgroundClients}
!115 = !{!107, !107, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"long long", !11, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"double", !11, i64 0}
!120 = distinct !{!120, !22}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 _ZTS15RedisModuleType", !14, i64 0}
!123 = distinct !{!123, !22}
!124 = !{!125, !10, i64 0}
!125 = !{!"", !10, i64 0}
!126 = !{ptr @createVectorSetObject}
!127 = !{!111, !10, i64 8}
!128 = !{!111, !10, i64 16}
!129 = !{!111, !93, i64 24}
!130 = !{!112, !112, i64 0}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = !{!136, !10, i64 8}
!136 = !{!"", !137, i64 0, !10, i64 8, !10, i64 12, !85, i64 16, !10, i64 20}
!137 = !{!"p2 _ZTS8hnswNode", !26, i64 0}
!138 = distinct !{!138, !22}
!139 = !{!136, !137, i64 0}
!140 = distinct !{!140, !22}
!141 = !{!111, !10, i64 12}
end_hunk_1
