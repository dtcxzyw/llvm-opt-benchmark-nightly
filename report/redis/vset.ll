inline.NumInlined: 130
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@exprTokensEqual
define dso_local range(i32 0, 2) i32 @exprTokensEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !15 ; 7 uses
  switch i32 %i.f, label %.thread20 [
    i32 2, label %bb.b
    i32 1, label %bb.e
    i32 6, label %._crit_edge
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, 2
  br i1 %i.g, label %bb.c, label %.thread20

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !18
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr %i.p, i64 %i.i)
  %i.q = icmp eq i32 %bcmp, 0
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %.pre, 1
  br i1 %i.r, label %bb.f, label %.thread20

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  %i.w = fcmp oeq double %i.t, %i.v
  br label %bb.n

.thread20:                                        ; preds = %bb.a, %bb.b, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = icmp eq i32 %.pre, 6
  br i1 %i.y, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.a, %.thread20
  %i.z = phi i32 [ 6, %.thread20 ], [ %.pre, %bb.a ]
  %i.aa = icmp eq i32 %i.f, %i.z
  br label %bb.n

bb.g:                                             ; preds = %.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  switch i32 %i.f, label %exprTokenToNum.exit [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  br label %exprTokenToNum.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 256
  br i1 %i.af, label %bb.j, label %exprTokenToNum.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.ah, i64 %i.ae, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.aj = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.am = icmp eq i8 %i.al, 0
  %i.an = select i1 %i.am, double %i.aj, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %.pr.pre = load i32, ptr %i.x, align 4, !tbaa !15
  br label %exprTokenToNum.exit

exprTokenToNum.exit:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %i.ao = phi i32 [ %.pre, %bb.g ], [ %.pre, %bb.i ], [ %.pr.pre, %bb.j ], [ %.pre, %bb.h ]
  %.0.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.i ], [ %i.an, %bb.j ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  switch i32 %i.ao, label %exprTokenToNum.exit19 [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %exprTokenToNum.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  br label %exprTokenToNum.exit19

bb.l:                                             ; preds = %exprTokenToNum.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18 ; 3 uses
  %i.at = icmp ult i64 %i.as, 256
  br i1 %i.at, label %bb.m, label %exprTokenToNum.exit19

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.av, i64 %i.as, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 0, ptr %i.aw, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ax = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.ba = icmp eq i8 %i.az, 0
  %i.bb = select i1 %i.ba, double %i.ax, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %exprTokenToNum.exit19

exprTokenToNum.exit19:                            ; preds = %exprTokenToNum.exit, %bb.k, %bb.l, %bb.m
  %.0.i18 = phi double [ %i.aq, %bb.k ], [ %i.bb, %bb.m ], [ 0.000000e+00, %exprTokenToNum.exit ], [ 0.000000e+00, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bc = fcmp oeq double %.0.i, %.0.i18
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.d, %exprTokenToNum.exit19, %._crit_edge, %bb.f
  %.0.shrunk = phi i1 [ %i.bc, %exprTokenToNum.exit19 ], [ %i.w, %bb.f ], [ %i.aa, %._crit_edge ], [ false, %bb.c ], [ %i.q, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @exprTokensStringIn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.g(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, i32 noundef 740) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = sub nuw i64 %i.k, %i.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.r = add i64 %.01316, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.r, %i.o
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !66

bb.f:                                             ; preds = %.preheader, %bb.e
  %.01316 = phi i64 [ 0, %.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01316
  %bcmp = tail call i32 @bcmp(ptr %i.s, ptr %i.q, i64 %i.i)
  %i.t = icmp eq i32 %bcmp, 0
  br i1 %i.t, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jsonExtractField(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %4 = ptrtoaddr ptr %i.b to i64                  ; 7 uses
  %.not11 = icmp eq i64 %1, 0
  br i1 %.not11, label %jsonSkipWhiteSpaces.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.275.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.e = load i8, ptr %.275.i, align 1, !tbaa !18
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !36
  %i.i = and i16 %i.h, 8192
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %jsonSkipWhiteSpaces.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.275.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.j, %i.b
  br i1 %exitcond.not.i.i, label %jsonSeekField.exit.thread, label %bb.b, !llvm.loop !67

jsonSkipWhiteSpaces.exit.i:                       ; preds = %bb.b, %bb.a
  %.376.i = phi ptr [ %0, %bb.a ], [ %.275.i, %bb.b ] ; 3 uses
  %.not.i = icmp ult ptr %.376.i, %i.b
  br i1 %.not.i, label %bb.d, label %jsonSeekField.exit.thread

bb.d:                                             ; preds = %jsonSkipWhiteSpaces.exit.i
  %i.k = load i8, ptr %.376.i, align 1, !tbaa !18
  %.not31.i = icmp eq i8 %i.k, 123
  br i1 %.not31.i, label %.preheader.i, label %jsonSeekField.exit.thread

.preheader.i:                                     ; preds = %bb.d, %bb.ap
  %.376.pn.i = phi ptr [ %.16.i, %bb.ap ], [ %.376.i, %bb.d ] ; 3 uses
  %.074.i = getelementptr inbounds nuw i8, ptr %.376.pn.i, i64 1 ; 3 uses
  %i.l = icmp ult ptr %.074.i, %i.b
  br i1 %i.l, label %.lr.ph.i42.i, label %jsonSkipWhiteSpaces.exit45.i

.lr.ph.i42.i:                                     ; preds = %.preheader.i
  %.376.pn168.i = ptrtoaddr ptr %.376.pn.i to i64
  %i.m = tail call ptr @__ctype_b_loc() #24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %scevgep167.i = getelementptr i8, ptr %.376.pn.i, i64 %4
  %i.o = sub i64 0, %.376.pn168.i
  %scevgep169.i = getelementptr i8, ptr %scevgep167.i, i64 %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i42.i
  %.4.i = phi ptr [ %.074.i, %.lr.ph.i42.i ], [ %i.u, %bb.f ] ; 3 uses
  %i.p = load i8, ptr %.4.i, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !36
  %i.t = and i16 %i.s, 8192
  %.not.i43.i = icmp eq i16 %i.t, 0
  br i1 %.not.i43.i, label %jsonSkipWhiteSpaces.exit45.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq ptr %i.u, %i.b
  br i1 %exitcond.not.i44.i, label %jsonSkipWhiteSpaces.exit45.i, label %bb.e, !llvm.loop !67

jsonSkipWhiteSpaces.exit45.i:                     ; preds = %bb.f, %bb.e, %.preheader.i
  %.5.i = phi ptr [ %.074.i, %.preheader.i ], [ %.4.i, %bb.e ], [ %scevgep169.i, %bb.f ] ; 3 uses
  %.not32.i = icmp ult ptr %.5.i, %i.b
  br i1 %.not32.i, label %bb.g, label %jsonSeekField.exit.thread

bb.g:                                             ; preds = %jsonSkipWhiteSpaces.exit45.i
  %i.v = load i8, ptr %.5.i, align 1, !tbaa !18
  %cond.i = icmp eq i8 %i.v, 34
  br i1 %cond.i, label %bb.h, label %jsonSeekField.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 4 uses
  %i.x = icmp ult ptr %i.w, %i.b
  br i1 %i.x, label %.lr.ph.i47.i, label %jsonSeekField.exit.thread

.lr.ph.i47.i:                                     ; preds = %bb.h, %.backedge.i.i
  %i.y = phi ptr [ %i.aa, %.backedge.i.i ], [ %i.w, %bb.h ] ; 6 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  switch i8 %i.z, label %.backedge.i.i [
    i8 92, label %bb.i
    i8 34, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i47.i
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.i, %.lr.ph.i47.i
  %.sink.i.i = phi i64 [ 2, %bb.i ], [ 1, %.lr.ph.i47.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink.i.i ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.b
  br i1 %i.ab, label %.lr.ph.i47.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.j:                                             ; preds = %.lr.ph.i47.i
  %.lcssa170173.i = ptrtoaddr ptr %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  %5 = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %5, %i.ad
  %i.af = icmp eq i64 %i.ae, %3
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.w, ptr readonly %2, i64 %3)
  %.not35.i = icmp eq i32 %bcmp.i, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi i1 [ false, %bb.j ], [ %.not35.i, %bb.k ]
  %i.ah = icmp ult ptr %i.ac, %i.b
  br i1 %i.ah, label %.lr.ph.i49.i, label %jsonSkipWhiteSpaces.exit52.i

.lr.ph.i49.i:                                     ; preds = %bb.l
  %i.ai = tail call ptr @__ctype_b_loc() #24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %scevgep172.i = getelementptr i8, ptr %i.y, i64 %4
  %i.ak = sub i64 0, %.lcssa170173.i
  %scevgep174.i = getelementptr i8, ptr %scevgep172.i, i64 %i.ak
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i49.i
  %.6.i = phi ptr [ %i.ac, %.lr.ph.i49.i ], [ %i.aq, %bb.n ] ; 3 uses
  %i.al = load i8, ptr %.6.i, align 1, !tbaa !18
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !36
  %i.ap = and i16 %i.ao, 8192
  %.not.i50.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i50.i, label %jsonSkipWhiteSpaces.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 2 uses
  %exitcond.not.i51.i = icmp eq ptr %i.aq, %i.b
  br i1 %exitcond.not.i51.i, label %jsonSkipWhiteSpaces.exit52.i, label %bb.m, !llvm.loop !67

jsonSkipWhiteSpaces.exit52.i:                     ; preds = %bb.n, %bb.m, %bb.l
  %.7.i = phi ptr [ %i.ac, %bb.l ], [ %.6.i, %bb.m ], [ %scevgep174.i, %bb.n ] ; 5 uses
  %.7176.i = ptrtoaddr ptr %.7.i to i64
  %.not36.i = icmp ult ptr %.7.i, %i.b
  br i1 %.not36.i, label %bb.o, label %jsonSeekField.exit.thread

bb.o:                                             ; preds = %jsonSkipWhiteSpaces.exit52.i
  %i.ar = load i8, ptr %.7.i, align 1, !tbaa !18
  %.not37.i = icmp eq i8 %i.ar, 58
  br i1 %.not37.i, label %bb.p, label %jsonSeekField.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 3 uses
  %i.at = icmp ult ptr %i.as, %i.b
  br i1 %i.at, label %.lr.ph.i54.i, label %jsonSkipWhiteSpaces.exit57.i

.lr.ph.i54.i:                                     ; preds = %bb.p
  %i.au = tail call ptr @__ctype_b_loc() #24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  %scevgep175.i = getelementptr i8, ptr %.7.i, i64 %4
  %i.aw = sub i64 0, %.7176.i
  %scevgep177.i = getelementptr i8, ptr %scevgep175.i, i64 %i.aw
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i54.i
  %.8.i = phi ptr [ %i.as, %.lr.ph.i54.i ], [ %i.bc, %bb.r ] ; 3 uses
  %i.ax = load i8, ptr %.8.i, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !36
  %i.bb = and i16 %i.ba, 8192
  %.not.i55.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i55.i, label %jsonSkipWhiteSpaces.exit57.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  %exitcond.not.i56.i = icmp eq ptr %i.bc, %i.b
  br i1 %exitcond.not.i56.i, label %jsonSkipWhiteSpaces.exit57.i, label %bb.q, !llvm.loop !67

jsonSkipWhiteSpaces.exit57.i:                     ; preds = %bb.r, %bb.q, %bb.p
  %.9.i = phi ptr [ %i.as, %bb.p ], [ %.8.i, %bb.q ], [ %scevgep177.i, %bb.r ] ; 6 uses
  %.not38.i = icmp uge ptr %.9.i, %i.b            ; 2 uses
  %brmerge.i = select i1 %.not38.i, i1 true, i1 %i.ag
  br i1 %brmerge.i, label %.thread.loopexit100.split.loop.exit114.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %jsonSkipWhiteSpaces.exit57.i
  %.9179.i = ptrtoaddr ptr %.9.i to i64
  %i.bd = tail call ptr @__ctype_b_loc() #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 3 uses
  %scevgep178.i = getelementptr i8, ptr %.9.i, i64 %4
  %i.bf = sub i64 0, %.9179.i
  %scevgep180.i = getelementptr i8, ptr %scevgep178.i, i64 %i.bf
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.13.i = phi ptr [ %.9.i, %.lr.ph.i.i.i ], [ %i.bl, %bb.t ] ; 3 uses
  %i.bg = load i8, ptr %.13.i, align 1, !tbaa !18
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !36
  %i.bk = and i16 %i.bj, 8192
  %.not.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i.i, label %jsonSkipWhiteSpaces.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.bl, %i.b
  br i1 %exitcond.not.i.i.i, label %jsonSkipWhiteSpaces.exit.i.i, label %bb.s, !llvm.loop !67

jsonSkipWhiteSpaces.exit.i.i:                     ; preds = %bb.t, %bb.s
  %.10.i = phi ptr [ %.13.i, %bb.s ], [ %scevgep180.i, %bb.t ] ; 16 uses
  %.not.i58.i = icmp ult ptr %.10.i, %i.b
  br i1 %.not.i58.i, label %bb.u, label %jsonSeekField.exit.thread

bb.u:                                             ; preds = %jsonSkipWhiteSpaces.exit.i.i
  %i.bm = load i8, ptr %.10.i, align 1, !tbaa !18
  switch i8 %i.bm, label %.lr.ph.i45.i.i [
    i8 34, label %bb.v
    i8 123, label %bb.y
    i8 91, label %bb.ac
    i8 116, label %bb.ag
    i8 102, label %bb.ai
    i8 110, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %i.b
  br i1 %i.bo, label %.lr.ph.i22.i.i, label %jsonSeekField.exit.thread

.lr.ph.i22.i.i:                                   ; preds = %bb.v, %.backedge.i.i.i
  %i.bp = phi ptr [ %i.br, %.backedge.i.i.i ], [ %i.bn, %bb.v ] ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  switch i8 %i.bq, label %.backedge.i.i.i [
    i8 92, label %bb.w
    i8 34, label %bb.x
  ]

bb.w:                                             ; preds = %.lr.ph.i22.i.i
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.w, %.lr.ph.i22.i.i
  %.sink.i.i.i = phi i64 [ 2, %bb.w ], [ 1, %.lr.ph.i22.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sink.i.i.i ; 2 uses
  %i.bs = icmp ult ptr %i.br, %i.b
  br i1 %i.bs, label %.lr.ph.i22.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.x:                                             ; preds = %.lr.ph.i22.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  br label %jsonSkipValue.exit.thread86.i

bb.y:                                             ; preds = %bb.u
  %storemerge2833.i.i.i = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.bu = icmp ult ptr %storemerge2833.i.i.i, %i.b
  br i1 %i.bu, label %.lr.ph.i23.i.i, label %jsonSeekField.exit.thread

.lr.ph.i23.i.i:                                   ; preds = %bb.y, %jsonSkipString.exit.i.i.i
  %storemerge2835.i.i.i = phi ptr [ %storemerge28.i.i.i, %jsonSkipString.exit.i.i.i ], [ %storemerge2833.i.i.i, %bb.y ] ; 3 uses
  %.01834.i.i.i = phi i32 [ %.220.i.i.i, %jsonSkipString.exit.i.i.i ], [ 1, %bb.y ] ; 2 uses
  %i.bv = load i8, ptr %storemerge2835.i.i.i, align 1, !tbaa !18 ; 3 uses
  %i.bw = icmp eq i8 %i.bv, 34
  br i1 %i.bw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i23.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge2835.i.i.i, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.b
  br i1 %i.by, label %.lr.ph.i.i.i.i, label %jsonSeekField.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.backedge.i.i.i.i
  %i.bz = phi ptr [ %i.cb, %.backedge.i.i.i.i ], [ %i.bx, %bb.z ] ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  switch i8 %i.ca, label %.backedge.i.i.i.i [
    i8 92, label %bb.aa
    i8 34, label %jsonSkipString.exit.i.i.i
  ]

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 2, %bb.aa ], [ 1, %.lr.ph.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink.i.i.i.i ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.b
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.ab:                                            ; preds = %.lr.ph.i23.i.i
  %i.cd = icmp eq i8 %i.bv, 123
  %i.ce = icmp eq i8 %i.bv, 125
  %i.cf = sext i1 %i.ce to i32
  %.119.v.i.i.i = select i1 %i.cd, i32 1, i32 %i.cf
  %.119.i.i.i = add nsw i32 %.119.v.i.i.i, %.01834.i.i.i
  br label %jsonSkipString.exit.i.i.i

jsonSkipString.exit.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %bb.ab
  %.pn.i.i.i = phi ptr [ %storemerge2835.i.i.i, %bb.ab ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %.220.i.i.i = phi i32 [ %.119.i.i.i, %bb.ab ], [ %.01834.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %storemerge28.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %i.cg = icmp ult ptr %storemerge28.i.i.i, %i.b
  %i.ch = icmp sgt i32 %.220.i.i.i, 0
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph.i23.i.i, label %jsonSkipValue.exit.i

bb.ac:                                            ; preds = %bb.u
  %storemerge2833.i24.i.i = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.cj = icmp ult ptr %storemerge2833.i24.i.i, %i.b
  br i1 %i.cj, label %.lr.ph.i26.i.i, label %jsonSeekField.exit.thread

.lr.ph.i26.i.i:                                   ; preds = %bb.ac, %jsonSkipString.exit.i31.i.i
  %storemerge2835.i27.i.i = phi ptr [ %storemerge28.i34.i.i, %jsonSkipString.exit.i31.i.i ], [ %storemerge2833.i24.i.i, %bb.ac ] ; 3 uses
  %.01834.i28.i.i = phi i32 [ %.220.i33.i.i, %jsonSkipString.exit.i31.i.i ], [ 1, %bb.ac ] ; 2 uses
  %i.ck = load i8, ptr %storemerge2835.i27.i.i, align 1, !tbaa !18 ; 3 uses
  %i.cl = icmp eq i8 %i.ck, 34
  br i1 %i.cl, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i26.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge2835.i27.i.i, i64 1 ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.b
  br i1 %i.cn, label %.lr.ph.i.i36.i.i, label %jsonSeekField.exit.thread

.lr.ph.i.i36.i.i:                                 ; preds = %bb.ad, %.backedge.i.i37.i.i
  %i.co = phi ptr [ %i.cq, %.backedge.i.i37.i.i ], [ %i.cm, %bb.ad ] ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !18
  switch i8 %i.cp, label %.backedge.i.i37.i.i [
    i8 92, label %bb.ae
    i8 34, label %jsonSkipString.exit.i31.i.i
  ]

bb.ae:                                            ; preds = %.lr.ph.i.i36.i.i
  br label %.backedge.i.i37.i.i

.backedge.i.i37.i.i:                              ; preds = %bb.ae, %.lr.ph.i.i36.i.i
  %.sink.i.i38.i.i = phi i64 [ 2, %bb.ae ], [ 1, %.lr.ph.i.i36.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sink.i.i38.i.i ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.b
  br i1 %i.cr, label %.lr.ph.i.i36.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.af:                                            ; preds = %.lr.ph.i26.i.i
  %i.cs = icmp eq i8 %i.ck, 91
  %i.ct = icmp eq i8 %i.ck, 93
  %i.cu = sext i1 %i.ct to i32
  %.119.v.i29.i.i = select i1 %i.cs, i32 1, i32 %i.cu
  %.119.i30.i.i = add nsw i32 %.119.v.i29.i.i, %.01834.i28.i.i
  br label %jsonSkipString.exit.i31.i.i

jsonSkipString.exit.i31.i.i:                      ; preds = %.lr.ph.i.i36.i.i, %bb.af
  %.pn.i32.i.i = phi ptr [ %storemerge2835.i27.i.i, %bb.af ], [ %i.co, %.lr.ph.i.i36.i.i ]
  %.220.i33.i.i = phi i32 [ %.119.i30.i.i, %bb.af ], [ %.01834.i28.i.i, %.lr.ph.i.i36.i.i ] ; 3 uses
  %storemerge28.i34.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.cv = icmp ult ptr %storemerge28.i34.i.i, %i.b
  %i.cw = icmp sgt i32 %.220.i33.i.i, 0
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %.lr.ph.i26.i.i, label %._crit_edge.loopexit.i35.i.i

._crit_edge.loopexit.i35.i.i:                     ; preds = %jsonSkipString.exit.i31.i.i
  %i.cy = icmp eq i32 %.220.i33.i.i, 0
  br i1 %i.cy, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

bb.ag:                                            ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %.10.i, i64 4 ; 2 uses
  %i.da = icmp ugt ptr %i.cz, %i.b
  br i1 %i.da, label %jsonSeekField.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.10.i, ptr noundef nonnull dereferenceable(5) @.str.174, i64 noundef 4) #25
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

bb.ai:                                            ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %.10.i, i64 5 ; 2 uses
  %i.de = icmp ugt ptr %i.dd, %i.b
  br i1 %i.de, label %jsonSeekField.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.10.i, ptr noundef nonnull dereferenceable(6) @.str.175, i64 noundef 5) #25
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

bb.ak:                                            ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %.10.i, i64 4 ; 2 uses
  %i.di = icmp ugt ptr %i.dh, %i.b
  br i1 %i.di, label %jsonSeekField.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.10.i, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #25
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

.lr.ph.i45.i.i:                                   ; preds = %bb.u
  %6 = ptrtoaddr ptr %.10.i to i64                ; 2 uses
  %i.dl = sub i64 %4, %6
  %scevgep.i.i.i = getelementptr i8, ptr %.10.i, i64 %i.dl
  %scevgep181.i = getelementptr i8, ptr %.10.i, i64 %4
  %i.dm = sub i64 0, %6
  %scevgep183.i.a = getelementptr i8, ptr %scevgep181.i, i64 %i.dm
  br label %bb.am

bb.am:                                            ; preds = %jsonIsNumberChar.exit.thread.i.i.i, %.lr.ph.i45.i.i
  %i.dn = phi ptr [ %.10.i, %.lr.ph.i45.i.i ], [ %i.dt, %jsonIsNumberChar.exit.thread.i.i.i ] ; 4 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18  ; 2 uses
  %i.dp = sext i8 %i.do to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !36
  %.fr13.i.i.i.i = freeze i16 %i.dr
  %i.ds = and i16 %.fr13.i.i.i.i, 2048
  %.not.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.i.i.i, label %switch.early.test.i.i.i.i, label %jsonIsNumberChar.exit.thread.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %bb.am
  switch i8 %i.do, label %jsonSkipNumber.exit.i.i [
    i8 101, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 46, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 45, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 43, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 69, label %jsonIsNumberChar.exit.thread.i.i.i
  ]

jsonIsNumberChar.exit.thread.i.i.i:               ; preds = %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %bb.am
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %exitcond.not.i46.i.i = icmp eq ptr %i.dt, %i.b
  br i1 %exitcond.not.i46.i.i, label %jsonSkipNumber.exit.i.i, label %bb.am, !llvm.loop !69

jsonSkipNumber.exit.i.i:                          ; preds = %jsonIsNumberChar.exit.thread.i.i.i, %switch.early.test.i.i.i.i
  %.12.i = phi ptr [ %i.dn, %switch.early.test.i.i.i.i ], [ %scevgep183.i.a, %jsonIsNumberChar.exit.thread.i.i.i ]
  %.lcssa.ph.i.i.i = phi ptr [ %i.dn, %switch.early.test.i.i.i.i ], [ %scevgep.i.i.i, %jsonIsNumberChar.exit.thread.i.i.i ]
  %i.du = icmp ugt ptr %.lcssa.ph.i.i.i, %.10.i
  br i1 %i.du, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

jsonSkipValue.exit.i:                             ; preds = %jsonSkipString.exit.i.i.i
  %i.dv = icmp eq i32 %.220.i.i.i, 0
  br i1 %i.dv, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

jsonSkipValue.exit.thread86.i:                    ; preds = %jsonSkipValue.exit.i, %jsonSkipNumber.exit.i.i, %bb.al, %bb.aj, %bb.ah, %._crit_edge.loopexit.i35.i.i, %bb.x
  %.1491.i = phi ptr [ %storemerge28.i.i.i, %jsonSkipValue.exit.i ], [ %i.cz, %bb.ah ], [ %i.dd, %bb.aj ], [ %i.bt, %bb.x ], [ %i.dh, %bb.al ], [ %.12.i, %jsonSkipNumber.exit.i.i ], [ %storemerge28.i34.i.i, %._crit_edge.loopexit.i35.i.i ] ; 5 uses
  %i.dw = icmp ult ptr %.1491.i, %i.b
  br i1 %i.dw, label %.lr.ph.i61.i, label %jsonSkipWhiteSpaces.exit64.i

.lr.ph.i61.i:                                     ; preds = %jsonSkipValue.exit.thread86.i
  %.1491184.i = ptrtoaddr ptr %.1491.i to i64
  %scevgep184.i = getelementptr i8, ptr %.1491.i, i64 %4
  %i.dx = sub i64 0, %.1491184.i
  %scevgep186.i = getelementptr i8, ptr %scevgep184.i, i64 %i.dx
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i61.i
  %.15.i = phi ptr [ %.1491.i, %.lr.ph.i61.i ], [ %i.ed, %bb.ao ] ; 3 uses
  %i.dy = load i8, ptr %.15.i, align 1, !tbaa !18
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !36
  %i.ec = and i16 %i.eb, 8192
  %.not.i62.i = icmp eq i16 %i.ec, 0
  br i1 %.not.i62.i, label %jsonSkipWhiteSpaces.exit64.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = getelementptr inbounds nuw i8, ptr %.15.i, i64 1 ; 2 uses
  %exitcond.not.i63.i = icmp eq ptr %i.ed, %i.b
  br i1 %exitcond.not.i63.i, label %jsonSkipWhiteSpaces.exit64.i, label %bb.an, !llvm.loop !67

jsonSkipWhiteSpaces.exit64.i:                     ; preds = %bb.ao, %bb.an, %jsonSkipValue.exit.thread86.i
  %.16.i = phi ptr [ %.1491.i, %jsonSkipValue.exit.thread86.i ], [ %.15.i, %bb.an ], [ %scevgep186.i, %bb.ao ] ; 3 uses
  %.not40.i = icmp ult ptr %.16.i, %i.b
  br i1 %.not40.i, label %bb.ap, label %jsonSeekField.exit.thread

bb.ap:                                            ; preds = %jsonSkipWhiteSpaces.exit64.i
  %i.ee = load i8, ptr %.16.i, align 1, !tbaa !18
  %i.ef = icmp eq i8 %i.ee, 44
  br i1 %i.ef, label %.preheader.i, label %jsonSeekField.exit.thread

.thread.loopexit100.split.loop.exit114.i:         ; preds = %jsonSkipWhiteSpaces.exit57.i
  br i1 %.not38.i, label %jsonSeekField.exit.thread, label %jsonSeekField.exit

jsonSeekField.exit:                               ; preds = %.thread.loopexit100.split.loop.exit114.i
  store ptr %.9.i, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq ptr %.9.i, null
  br i1 %.not, label %jsonSeekField.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %jsonSeekField.exit
  %i.eg = call fastcc ptr @jsonParseValueToken(ptr noundef %i.a, ptr noundef %i.b)
  br label %jsonSeekField.exit.thread

jsonSeekField.exit.thread:                        ; preds = %bb.c, %jsonSkipWhiteSpaces.exit45.i, %bb.g, %bb.ap, %jsonSkipWhiteSpaces.exit52.i, %jsonSkipValue.exit.i, %jsonSkipWhiteSpaces.exit64.i, %bb.o, %bb.h, %bb.aj, %jsonSkipWhiteSpaces.exit.i.i, %bb.v, %bb.ah, %bb.al, %bb.y, %bb.ac, %bb.ag, %bb.ai, %bb.ak, %jsonSkipNumber.exit.i.i, %._crit_edge.loopexit.i35.i.i, %.backedge.i.i, %bb.ad, %bb.z, %.backedge.i.i.i, %.backedge.i.i37.i.i, %.backedge.i.i.i.i, %.thread.loopexit100.split.loop.exit114.i, %jsonSkipWhiteSpaces.exit.i, %bb.d, %jsonSeekField.exit, %bb.aq
  %.0 = phi ptr [ %i.eg, %bb.aq ], [ null, %jsonSeekField.exit ], [ null, %bb.z ], [ null, %jsonSkipWhiteSpaces.exit.i ], [ null, %.backedge.i.i.i ], [ null, %.backedge.i.i37.i.i ], [ null, %.backedge.i.i.i.i ], [ null, %jsonSkipWhiteSpaces.exit45.i ], [ null, %.backedge.i.i ], [ null, %bb.ad ], [ null, %.thread.loopexit100.split.loop.exit114.i ], [ null, %bb.d ], [ null, %._crit_edge.loopexit.i35.i.i ], [ null, %jsonSkipNumber.exit.i.i ], [ null, %bb.ak ], [ null, %bb.ai ], [ null, %bb.ag ], [ null, %bb.ac ], [ null, %bb.y ], [ null, %bb.al ], [ null, %bb.ah ], [ null, %bb.v ], [ null, %jsonSkipWhiteSpaces.exit.i.i ], [ null, %bb.aj ], [ null, %bb.h ], [ null, %bb.o ], [ null, %jsonSkipWhiteSpaces.exit64.i ], [ null, %jsonSkipValue.exit.i ], [ null, %jsonSkipWhiteSpaces.exit52.i ], [ null, %bb.ap ], [ null, %bb.g ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @jsonParseValueToken(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 {
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
  switch i8 %i.n, label %bb.av [
    i8 34, label %bb.e
    i8 91, label %bb.r
    i8 123, label %jsonParseStringToken.exit
    i8 116, label %bb.aj
    i8 102, label %bb.an
    i8 110, label %bb.ar
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
  br label %bb.q

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
  br i1 %i.ak, label %bb.p, label %.outer.backedge.i

bb.j:                                             ; preds = %bb.p
  %i.al = load i8, ptr %scevgep.i, align 1, !tbaa !18 ; 2 uses
  %i.am = sext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -34                  ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 31)
  switch i32 %i.ao, label %bb.o [
    i32 38, label %.outer.backedge.i
    i32 40, label %bb.k
    i32 41, label %bb.l
    i32 29, label %bb.m
    i32 0, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.m:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.n:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.o:                                             ; preds = %bb.j
  br label %.outer.backedge.i
end_hunk_0
