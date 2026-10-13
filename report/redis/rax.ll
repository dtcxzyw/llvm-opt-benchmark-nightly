Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rax?download=true
inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxLowWalk:bb.a
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.g, ptr %6, align 8, !tbaa !34
  store i32 1, ptr %i.h, align 8, !tbaa !35
  %i.am = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.am, align 4, !tbaa !15
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.an = load i64, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %i.ao = shl i64 %i.an, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.g, i64 %i.ao, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ap = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.aj) #28 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  store ptr %i.ap, ptr %6, align 8, !tbaa !34
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !33
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.h, align 8, !tbaa !35
  %i.ar = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.ar, align 4, !tbaa !15
  br label %bb.q

bb.o:                                             ; preds = %.thread.i, %bb.l
  %i.as = phi ptr [ %i.ap, %.thread.i ], [ %i.ak, %bb.l ]
  %i.at = phi i64 [ %.pre.i, %.thread.i ], [ %i.an, %bb.l ]
  %i.au = shl i64 %i.at, 1
  store i64 %i.au, ptr %i.f, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.e, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %i.av = phi i64 [ %.pre32.i, %bb.o ], [ %i.af, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %i.as, %bb.o ], [ %.pre31.i, %bb.h ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  store ptr %.060101, ptr %i.ax, align 8, !tbaa !29
  %i.ay = add i64 %i.av, 1
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.k, %bb.n, %bb.p
  %i.az = load i32, ptr %.060101, align 4         ; 2 uses
  %i.ba = lshr i32 %i.az, 3                       ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = xor i32 %i.ba, 3
  %.neg = add nuw nsw i32 %i.bd, 1
  %i.be = and i32 %.neg, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = and i32 %i.az, 4
  %.not71 = icmp eq i32 %i.bh, 0
  %spec.select = select i1 %.not71, i64 %.3, i64 0
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %spec.select ; 3 uses
  %.060 = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bj = load i32, ptr %.060, align 4            ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, 7
  %i.bl = icmp ult i64 %.254, %2
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %bb.b, label %.thread.loopexit.loopexit140

.thread.loopexit.loopexit140:                     ; preds = %bb.q, %._crit_edge, %._crit_edge92
  %.057.lcssa.ph.ph = phi ptr [ %.05799, %._crit_edge ], [ %.05799, %._crit_edge92 ], [ %i.bi, %bb.q ]
  %.060.lcssa.ph.ph = phi ptr [ %.060101, %._crit_edge ], [ %.060101, %._crit_edge92 ], [ %.060, %bb.q ]
  %.456.ph.ph = phi i64 [ %.153.lcssa, %._crit_edge ], [ %.052100, %._crit_edge92 ], [ %.254, %bb.q ]
  %.6.ph.ph = phi i64 [ %.1.lcssa, %._crit_edge ], [ %i.m, %._crit_edge92 ], [ 0, %bb.q ]
  %i.bn = trunc nuw nsw i64 %.6.ph.ph to i32
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.loopexit.loopexit140, %bb.a
  %.057.lcssa = phi ptr [ %0, %bb.a ], [ %.057.lcssa.ph.ph, %.thread.loopexit.loopexit140 ], [ %.05799, %bb.e ]
  %.060.lcssa = phi ptr [ %.06098, %bb.a ], [ %.060.lcssa.ph.ph, %.thread.loopexit.loopexit140 ], [ %.060101, %bb.e ] ; 2 uses
  %.456 = phi i64 [ 0, %bb.a ], [ %.456.ph.ph, %.thread.loopexit.loopexit140 ], [ %.052100, %bb.e ]
  %.6 = phi i32 [ 0, %bb.a ], [ %i.bn, %.thread.loopexit.loopexit140 ], [ %i.l, %bb.e ]
  %.not72 = icmp eq ptr %3, null
  br i1 %.not72, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  store ptr %.060.lcssa, ptr %3, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread
  %.not73 = icmp eq ptr %4, null
  br i1 %.not73, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.057.lcssa, ptr %4, align 8, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bo = load i32, ptr %.060.lcssa, align 4
  %i.bp = and i32 %i.bo, 4
  %.not74 = icmp eq i32 %i.bp, 0
  br i1 %.not74, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.6, ptr %5, align 4, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret i64 %.456
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxRemove(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %4 = alloca %struct.raxStack, align 8           ; 14 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 32, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.j = call fastcc i64 @raxLowWalk(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %i.d, ptr noundef nonnull %4)
  %.not = icmp eq i64 %i.j, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !22   ; 8 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %i.m = and i32 %i.l, 4
  %i.n = icmp ne i32 %i.m, 0                      ; 2 uses
  %i.o = load i32, ptr %i.d, align 4
  %i.p = icmp ne i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  %i.q = and i32 %i.l, 1
  %.not108 = icmp eq i32 %i.q, 0
  %or.cond159 = or i1 %.not108, %or.cond
  br i1 %or.cond159, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i, label %raxStackFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @zfree(ptr noundef %i.r) #24
  br label %raxStackFree.exit

bb.e:                                             ; preds = %bb.b
  %.not109 = icmp eq ptr %3, null
  br i1 %.not109, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = and i32 %i.l, 2
  %.not.i170 = icmp eq i32 %i.s, 0
  br i1 %.not.i170, label %bb.g, label %raxGetData.exit

bb.g:                                             ; preds = %bb.f
  %i.t = lshr i32 %i.l, 3                         ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = xor i32 %i.t, 3
  %.neg.i = add nuw nsw i32 %i.v, 1
  %i.w = and i32 %.neg.i, 7
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.u, 3
  %spec.select.i = select i1 %i.n, i64 8, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i = load ptr, ptr %i.ac, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %.0.copyload.i, %bb.g ], [ null, %bb.f ]
  store ptr %.0.i, ptr %3, align 8, !tbaa !29
  %.pre = load i32, ptr %i.k, align 4
  br label %bb.h

bb.h:                                             ; preds = %raxGetData.exit, %bb.e
  %i.ad = phi i32 [ %.pre, %raxGetData.exit ], [ %i.l, %bb.e ]
  %i.ae = and i32 %i.ad, -2
  store i32 %i.ae, ptr %i.k, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !20
  %i.ai = load i32, ptr %i.k, align 4
  %i.aj = lshr i32 %i.ai, 3
  switch i32 %i.aj, label %.critedge [
    i32 0, label %.preheader210
    i32 1, label %bb.q
  ]

.preheader210:                                    ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22
  %.not110213 = icmp eq ptr %i.k, %i.ak
  br i1 %.not110213, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader210
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !22
  %.not110 = icmp eq ptr %i.az, %i.an
  br i1 %.not110, label %.loopexit, label %bb.j, !llvm.loop !50

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.0.i172211214 = phi ptr [ %i.k, %.lr.ph ], [ %i.az, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @zfree_usable(ptr noundef nonnull %.0.i172211214, ptr noundef nonnull %i.b) #24
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !18 ; 3 uses
  %.not.i171 = icmp eq ptr %i.ao, null
  br i1 %.not.i171, label %raxFreeNode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !20
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !20
  br label %raxFreeNode.exit

raxFreeNode.exit:                                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.as = load i64, ptr %i.am, align 8, !tbaa !20
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.am, align 8, !tbaa !20
  %i.au = load i64, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.aw, ptr %i.g, align 8, !tbaa !32
  %i.ax = load ptr, ptr %4, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 7 uses
  %i.ba = load i32, ptr %i.az, align 4            ; 3 uses
  %i.bb = and i32 %i.ba, 1
  %.not111 = icmp eq i32 %i.bb, 0
  br i1 %.not111, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %raxFreeNode.exit
  %i.bc = and i32 %i.ba, 4
  %.not112 = icmp ne i32 %i.bc, 0
  %.mask = and i32 %i.ba, -8
  %.not113 = icmp eq i32 %.mask, 8
  %or.cond160 = or i1 %.not112, %.not113
  br i1 %or.cond160, label %bb.i, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.l
  br label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %raxFreeNode.exit, %bb.i, %._crit_edge
  store ptr %i.az, ptr %i.c, align 8
  %i.bd = call ptr @raxRemoveChild(ptr noundef nonnull %0, ptr noundef nonnull %i.az, ptr noundef nonnull %.0.i172211214) ; 4 uses
  %.not115 = icmp eq ptr %i.bd, %i.az
  br i1 %.not115, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.val169 = load i64, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.be = icmp eq i64 %.val169, 0
  br i1 %i.be, label %raxFindParentLink.exit, label %raxStackPeek.exit

raxStackPeek.exit:                                ; preds = %bb.m
  %.val = load ptr, ptr %4, align 8
  %i.bf = getelementptr [8 x i8], ptr %.val, i64 %.val169
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %raxFindParentLink.exit, label %bb.n

bb.n:                                             ; preds = %raxStackPeek.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bh, align 4
  %i.bl = lshr i32 %i.bk, 3                       ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bo = xor i32 %i.bl, 3
  %.neg.i174 = add nuw nsw i32 %i.bo, 1
  %i.bp = and i32 %.neg.i174, 7
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.0.i175 = phi ptr [ %i.br, %bb.n ], [ %i.bt, %bb.o ] ; 3 uses
  %.0.copyload.i176 = load ptr, ptr %.0.i175, align 8
  %i.bs = icmp eq ptr %.0.copyload.i176, %i.az
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i175, i64 8
  br i1 %i.bs, label %raxFindParentLink.exit, label %bb.o

raxFindParentLink.exit:                           ; preds = %bb.o, %bb.m, %raxStackPeek.exit
  %.088 = phi ptr [ %0, %bb.m ], [ %0, %raxStackPeek.exit ], [ %.0.i175, %bb.o ]
  store ptr %i.bd, ptr %.088, align 8
  br label %bb.p

bb.p:                                             ; preds = %raxFindParentLink.exit, %.loopexit
  %i.bu = load i32, ptr %i.bd, align 4
  %i.bv = and i32 %i.bu, -7
  %or.cond162 = icmp eq i32 %i.bv, 8
  br i1 %or.cond162, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p, %bb.h
  %.promoted222 = phi ptr [ %i.k, %bb.h ], [ %i.bd, %bb.p ] ; 3 uses
  %i.bw = load i32, ptr %i.i, align 8
  %.not204 = icmp eq i32 %i.bw, 0
  br i1 %.not204, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.q
  %.promoted221 = load i64, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.bx = icmp eq i64 %.promoted221, 0
  br i1 %i.bx, label %raxStackPop.exit178.thread, label %raxStackPop.exit178.lr.ph

raxStackPop.exit178.lr.ph:                        ; preds = %.preheader
  %i.by = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.bz = add i64 %.promoted221, -1               ; 3 uses
  store i64 %i.bz, ptr %i.g, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29 ; 2 uses
  %.not119299 = icmp eq ptr %i.cb, null
  br i1 %.not119299, label %raxStackPop.exit178.thread, label %.lr.ph300

bb.r:                                             ; preds = %bb.s
  %i.cc = icmp eq i64 %i.ch, 0
  br i1 %i.cc, label %raxStackPop.exit178.thread, label %raxStackPop.exit178

raxStackPop.exit178:                              ; preds = %bb.r
  %i.cd = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cd, ptr %i.g, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 2 uses
  %.not119 = icmp eq ptr %i.cf, null
  br i1 %.not119, label %raxStackPop.exit178.thread, label %.lr.ph300

.lr.ph300:                                        ; preds = %raxStackPop.exit178.lr.ph, %raxStackPop.exit178
  %i.cg = phi ptr [ %i.cf, %raxStackPop.exit178 ], [ %i.cb, %raxStackPop.exit178.lr.ph ] ; 6 uses
  %i.ch = phi i64 [ %i.cd, %raxStackPop.exit178 ], [ %i.bz, %raxStackPop.exit178.lr.ph ] ; 2 uses
  %i.ci = phi ptr [ %i.cg, %raxStackPop.exit178 ], [ %.promoted222, %raxStackPop.exit178.lr.ph ] ; 2 uses
  %i.cj = load i32, ptr %i.cg, align 4            ; 3 uses
  %i.ck = and i32 %i.cj, 1
  %.not120 = icmp eq i32 %i.ck, 0
  br i1 %.not120, label %bb.s, label %raxStackPop.exit178.thread

bb.s:                                             ; preds = %.lr.ph300
  %i.cl = and i32 %i.cj, 4
  %.not121 = icmp ne i32 %i.cl, 0
  %.mask123 = and i32 %i.cj, -8
  %.not122 = icmp eq i32 %.mask123, 8
  %or.cond163 = or i1 %.not121, %.not122
  br i1 %or.cond163, label %bb.r, label %raxStackPop.exit178.thread

raxStackPop.exit178.thread:                       ; preds = %bb.r, %bb.s, %raxStackPop.exit178, %.lr.ph300, %raxStackPop.exit178.lr.ph, %.preheader
  %.lcssa = phi ptr [ %.promoted222, %.preheader ], [ %.promoted222, %raxStackPop.exit178.lr.ph ], [ %i.ci, %.lr.ph300 ], [ %i.cg, %bb.r ], [ %i.ci, %bb.s ], [ %i.cg, %raxStackPop.exit178 ] ; 8 uses
  %.not119195 = phi i1 [ true, %.preheader ], [ true, %raxStackPop.exit178.lr.ph ], [ false, %.lr.ph300 ], [ true, %bb.r ], [ false, %bb.s ], [ true, %raxStackPop.exit178 ]
  %.0.i177194 = phi ptr [ null, %.preheader ], [ null, %raxStackPop.exit178.lr.ph ], [ %i.cg, %.lr.ph300 ], [ null, %bb.r ], [ %i.cg, %bb.s ], [ null, %raxStackPop.exit178 ] ; 2 uses
  store ptr %.lcssa, ptr %i.c, align 8
  %5 = load i32, ptr %.lcssa, align 4             ; 2 uses
  %i.cm = lshr i32 %5, 3                          ; 3 uses
  %.not124237 = icmp eq i32 %i.cm, 0
  br i1 %.not124237, label %.critedge, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %raxStackPop.exit178.thread
  %i.cn = zext nneg i32 %i.cm to i64
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %bb.v
  %i.co = phi i32 [ %i.dn, %bb.v ], [ %i.cm, %.lr.ph240.preheader ] ; 2 uses
  %i.cp = phi i32 [ %i.dk, %bb.v ], [ %5, %.lr.ph240.preheader ] ; 4 uses
  %i.cq = phi ptr [ %.cast, %bb.v ], [ %.lcssa, %.lr.ph240.preheader ]
  %.081239 = phi i32 [ %i.dr, %bb.v ], [ 1, %.lr.ph240.preheader ] ; 2 uses
  %.084238 = phi i64 [ %i.dp, %bb.v ], [ %i.cn, %.lr.ph240.preheader ] ; 2 uses
  %i.cr = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cs = xor i32 %i.co, 3
  %.neg = add nuw nsw i32 %i.cs, 1
  %i.ct = and i32 %.neg, 7
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = and i32 %i.cp, 4
  %.not125 = icmp eq i32 %i.cv, 0
  %i.cw = shl nuw nsw i64 %i.cr, 3
  %spec.select = select i1 %.not125, i64 %i.cw, i64 8
  %i.cx = and i32 %i.cp, 1
  %.not126 = icmp eq i32 %i.cx, 0
  %i.cy = shl i32 %i.cp, 2
  %i.cz = and i32 %i.cy, 8
  %i.da = xor i32 %i.cz, 8
  %narrow = select i1 %.not126, i32 0, i32 %i.da
  %i.db = zext nneg i32 %narrow to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %spec.select
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  %i.dg = and i32 %i.cp, 3
  %.not205 = icmp eq i32 %i.dg, 1
  %i.dh = select i1 %.not205, i64 -12, i64 -4
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  store i64 %i.dj, ptr %i.c, align 8
  %.cast = inttoptr i64 %i.dj to ptr              ; 2 uses
  %i.dk = load i32, ptr %.cast, align 4           ; 5 uses
  %i.dl = and i32 %i.dk, 1
  %.not132 = icmp eq i32 %i.dl, 0
  br i1 %.not132, label %bb.t, label %.thread197

bb.t:                                             ; preds = %.lr.ph240
  %i.dm = and i32 %i.dk, 4
  %.not133 = icmp ne i32 %i.dm, 0
  %.mask135 = and i32 %i.dk, -8
  %.not134 = icmp eq i32 %.mask135, 8
  %or.cond164 = or i1 %.not133, %.not134
  br i1 %or.cond164, label %bb.u, label %.thread197

bb.u:                                             ; preds = %bb.t
  %i.dn = lshr i32 %i.dk, 3                       ; 3 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %.084238, %i.do         ; 3 uses
  %i.dq = icmp samesign ugt i64 %i.dp, 536870911
  br i1 %i.dq, label %.thread197, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = add nuw nsw i32 %.081239, 1
  %.not124 = icmp eq i32 %i.dn, 0
  br i1 %.not124, label %.thread197.thread281, label %.lr.ph240

.thread197:                                       ; preds = %.lr.ph240, %bb.t, %bb.u
  %i.ds = icmp samesign ugt i32 %.081239, 1
  br i1 %i.ds, label %.thread197.thread281, label %.critedge

.thread197.thread281:                             ; preds = %bb.v, %.thread197
  %.084.lcssa.ph284 = phi i64 [ %.084238, %.thread197 ], [ %i.dp, %bb.v ] ; 3 uses
  %i.dt = sub nsw i64 4, %.084.lcssa.ph284
  %i.du = and i64 %i.dt, 7
  %i.dv = add nuw nsw i64 %.084.lcssa.ph284, 12
  %i.dw = add nuw nsw i64 %i.dv, %i.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dx = call ptr @zmalloc_usable(i64 noundef %i.dw, ptr noundef nonnull %i.e) #24 ; 6 uses
  %.not158 = icmp eq ptr %i.dx, null
  br i1 %.not158, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread197.thread281
  %i.dy = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %.not.i179 = icmp eq ptr %i.dy, %i.f
  br i1 %.not.i179, label %raxStackFree.exit180.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @zfree(ptr noundef %i.dy) #24
  br label %raxStackFree.exit180.thread

bb.y:                                             ; preds = %.thread197.thread281
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !18 ; 3 uses
  %.not136 = icmp eq ptr %i.ea, null
  br i1 %.not136, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !20
  %i.ed = add i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.ea, align 8, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ee = trunc nuw nsw i64 %.084.lcssa.ph284 to i32
  %i.ef = shl nuw i32 %i.ee, 3
  %i.eg = or disjoint i32 %i.ef, 4
  store i32 %i.eg, ptr %i.dx, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !20
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !20
  store ptr %.lcssa, ptr %i.c, align 8, !tbaa !22
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %.pre257.a = load i32, ptr %.lcssa, align 4
  %i.el = lshr i32 %.pre257.a, 3                  ; 2 uses
  %.not137314 = icmp eq i32 %i.el, 0
  br i1 %.not137314, label %.thread202, label %.lr.ph317

.lr.ph317:                                        ; preds = %bb.aa, %bb.ac
  %i.em = phi i32 [ %i.fx, %bb.ac ], [ %i.el, %bb.aa ]
  %.387315 = phi i64 [ %i.eu, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %i.en = phi ptr [ %i.ft, %bb.ac ], [ %.lcssa, %bb.aa ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.387315
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eq = zext nneg i32 %i.em to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 4 %i.ep, i64 %i.eq, i1 false)
  %i.er = load i32, ptr %i.en, align 4            ; 5 uses
  %i.es = lshr i32 %i.er, 3                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 3 uses
  %i.eu = add i64 %.387315, %i.et
  %i.ev = xor i32 %i.es, 3
  %.neg138 = add nuw nsw i32 %i.ev, 1
  %i.ew = and i32 %.neg138, 7
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = and i32 %i.er, 4
  %.not139 = icmp eq i32 %i.ey, 0
  %i.ez = shl nuw nsw i64 %i.et, 3
  %spec.select165 = select i1 %.not139, i64 %i.ez, i64 8
  %i.fa = and i32 %i.er, 1
  %.not140 = icmp eq i32 %i.fa, 0
  %i.fb = shl i32 %i.er, 2
  %i.fc = and i32 %i.fb, 8
  %i.fd = xor i32 %i.fc, 8
  %narrow206 = select i1 %.not140, i32 0, i32 %i.fd
  %i.fe = zext nneg i32 %narrow206 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.et
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ex
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %spec.select165
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe
  %i.fj = and i32 %i.er, 3
  %.not207 = icmp eq i32 %i.fj, 1
  %i.fk = select i1 %.not207, i64 -12, i64 -4
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8
  store i64 %i.fm, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %i.en, ptr noundef nonnull %i.a) #24
  %i.fn = load ptr, ptr %i.dz, align 8, !tbaa !18 ; 3 uses
  %.not.i181 = icmp eq ptr %i.fn, null
  br i1 %.not.i181, label %raxFreeNode.exit182, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph317
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !20
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !20
  %i.fq = sub i64 %i.fp, %i.fo
  store i64 %i.fq, ptr %i.fn, align 8, !tbaa !20
  br label %raxFreeNode.exit182

raxFreeNode.exit182:                              ; preds = %.lr.ph317, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fr = load i64, ptr %i.eh, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, -1
  store i64 %i.fs, ptr %i.eh, align 8, !tbaa !20
  %i.ft = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.fu = load i32, ptr %i.ft, align 4            ; 4 uses
  %i.fv = and i32 %i.fu, 1
  %.not146 = icmp eq i32 %i.fv, 0
  br i1 %.not146, label %bb.ac, label %.thread202

bb.ac:                                            ; preds = %raxFreeNode.exit182
  %i.fw = and i32 %i.fu, 4
  %.not147 = icmp eq i32 %i.fw, 0
  %.mask149 = and i32 %i.fu, -8
  %.not148 = icmp ne i32 %.mask149, 8
  %or.cond166.not323 = and i1 %.not147, %.not148
  %i.fx = lshr i32 %i.fu, 3                       ; 2 uses
  %.not137 = icmp eq i32 %i.fx, 0
  %or.cond322 = or i1 %or.cond166.not323, %.not137
  br i1 %or.cond322, label %.thread202, label %.lr.ph317

.thread202:                                       ; preds = %raxFreeNode.exit182, %bb.ac, %bb.aa
  %.in = phi ptr [ %.lcssa, %bb.aa ], [ %i.ft, %bb.ac ], [ %i.ft, %raxFreeNode.exit182 ]
  %i.fy = ptrtoint ptr %.in to i64
  %i.fz = load i32, ptr %i.dx, align 4            ; 5 uses
  %i.ga = lshr i32 %i.fz, 3                       ; 2 uses
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = xor i32 %i.ga, 3
  %.neg150 = add nuw nsw i32 %i.gc, 1
  %i.gd = and i32 %.neg150, 7
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = and i32 %i.fz, 4
  %.not151 = icmp eq i32 %i.gf, 0
  %i.gg = shl nuw nsw i64 %i.gb, 3
  %spec.select167 = select i1 %.not151, i64 %i.gg, i64 8
  %i.gh = and i32 %i.fz, 1
  %.not152 = icmp eq i32 %i.gh, 0
  %i.gi = shl i32 %i.fz, 2
  %i.gj = and i32 %i.gi, 8
  %i.gk = xor i32 %i.gj, 8
  %narrow208 = select i1 %.not152, i32 0, i32 %i.gk
end_hunk_0
