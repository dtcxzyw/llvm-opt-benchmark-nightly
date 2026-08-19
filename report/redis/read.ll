inline.NumInlined: 46
inline.NumDeleted: 16
begin_hunk_0_@redisReaderGetReply:bb.a
bb.cj:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %i.fw = phi ptr [ %.pre237.i.i, %bb.cf ], [ %i.bo, %bb.ce ], [ %i.bo, %bb.cd ], [ %i.bo, %bb.cc ]
  call void @hi_sdsfree(ptr noundef %i.fw) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 4, ptr %0, align 8, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.fx, ptr noundef nonnull align 1 dereferenceable(14) @.str.21, i64 14, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.fy, align 2, !tbaa !39
  br label %processItem.exit.thread.thread

.lr.ph.peel.next.i.i:                             ; preds = %bb.al, %bb.cn
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.cn ], [ 1, %bb.al ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.i.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !39
  %i.gb = add i8 %i.ga, -58
  %or.cond131.i.i = icmp ult i8 %i.gb, -10
  br i1 %or.cond131.i.i, label %.loopexit228.i.i, label %bb.cn

.loopexit228.i.i:                                 ; preds = %bb.ak, %.lr.ph.peel.next.i.i
  %i.gc = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i146.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i146.i.i, label %__redisReaderSetError.exit149.i.i, label %bb.ck

bb.ck:                                            ; preds = %.loopexit228.i.i
  %i.gd = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i147.i.i = icmp eq ptr %i.gd, null
  br i1 %.not22.i147.i.i, label %__redisReaderSetError.exit149.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !31 ; 2 uses
  %.not23.i148.i.i = icmp eq ptr %i.gf, null
  br i1 %.not23.i148.i.i, label %__redisReaderSetError.exit149.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void %i.gf(ptr noundef nonnull %i.gc) #11, !inline_history !56
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  %.pre236.i.i = load ptr, ptr %i.z, align 8, !tbaa !14
  br label %__redisReaderSetError.exit149.i.i

__redisReaderSetError.exit149.i.i:                ; preds = %bb.cm, %bb.cl, %bb.ck, %.loopexit228.i.i
  %i.gg = phi ptr [ %i.bo, %.loopexit228.i.i ], [ %i.bo, %bb.ck ], [ %i.bo, %bb.cl ], [ %.pre236.i.i, %bb.cm ]
  call void @hi_sdsfree(ptr noundef %i.gg) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 4, ptr %0, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gh, ptr noundef nonnull align 1 dereferenceable(16) @.str.22, i64 16, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.gi, align 4, !tbaa !39
  br label %processItem.exit.thread.thread

bb.cn:                                            ; preds = %.lr.ph.peel.next.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.peel.next.i.i, !llvm.loop !63

.critedge.i.i:                                    ; preds = %bb.cn, %bb.al, %.preheader201.i.i
  %i.gj = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not115.i.i = icmp eq ptr %i.gj, null
  br i1 %.not115.i.i, label %.thread194.i.i, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !65 ; 2 uses
  %.not116.i.i = icmp eq ptr %i.gk, null
  br i1 %.not116.i.i, label %.thread194.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gl = ashr exact i64 %i.ch, 32
  %i.gm = call ptr %i.gk(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.bq, i64 noundef %i.gl) #11, !inline_history !58
  br label %.thread.i.i

.lr.ph213.i.i:                                    ; preds = %bb.cu, %.lr.ph213.preheader.i.i
  %indvars.iv229.i.i = phi i64 [ 0, %.lr.ph213.preheader.i.i ], [ %indvars.iv.next230.i.i, %bb.cu ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv229.i.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !39
  switch i8 %i.go, label %bb.cu [
    i8 13, label %bb.cq
    i8 10, label %bb.cq
  ]

bb.cq:                                            ; preds = %.lr.ph213.i.i, %.lr.ph213.i.i
  %i.gp = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i150.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i150.i.i, label %__redisReaderSetError.exit153.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gq = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i151.i.i = icmp eq ptr %i.gq, null
  br i1 %.not22.i151.i.i, label %__redisReaderSetError.exit153.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !31 ; 2 uses
  %.not23.i152.i.i = icmp eq ptr %i.gs, null
  br i1 %.not23.i152.i.i, label %__redisReaderSetError.exit153.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void %i.gs(ptr noundef nonnull %i.gp) #11, !inline_history !56
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  %.pre241.i.i = load ptr, ptr %i.z, align 8, !tbaa !14
  br label %__redisReaderSetError.exit153.i.i

__redisReaderSetError.exit153.i.i:                ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %i.gt = phi ptr [ %i.bo, %bb.cq ], [ %i.bo, %bb.cr ], [ %i.bo, %bb.cs ], [ %.pre241.i.i, %bb.ct ]
  call void @hi_sdsfree(ptr noundef %i.gt) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 4, ptr %0, align 8, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(23) %i.gu, ptr noundef nonnull align 1 dereferenceable(23) @.str.23, i64 23, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.gv, align 1, !tbaa !39
  br label %processItem.exit.thread.thread

bb.cu:                                            ; preds = %.lr.ph213.i.i
  %indvars.iv.next230.i.i = add nuw nsw i64 %indvars.iv229.i.i, 1 ; 2 uses
  %exitcond233.not.i.i = icmp eq i64 %indvars.iv.next230.i.i, %wide.trip.count232.i.i
  br i1 %exitcond233.not.i.i, label %.critedge133.i.i, label %.lr.ph213.i.i

.critedge133.i.i:                                 ; preds = %bb.cu, %.preheader.i.i
  %i.gw = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not112.i.i = icmp eq ptr %i.gw, null
  br i1 %.not112.i.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %.critedge133.i.i
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !65 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.gx, null
  br i1 %.not113.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.gy = ashr exact i64 %i.ch, 32
  %i.gz = call ptr %i.gx(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.bq, i64 noundef %i.gy) #11, !inline_history !58
  br label %.thread.i.i

bb.cx:                                            ; preds = %bb.cv, %.critedge133.i.i
  %i.ha = zext nneg i32 %i.bn to i64
  %i.hb = inttoptr i64 %i.ha to ptr
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cx, %bb.cw, %bb.cp, %bb.ci, %bb.bz, %.thread186.i.i, %bb.bb
  %.6.i.i = phi ptr [ %i.gz, %bb.cw ], [ %.385.ph.i.i, %.thread186.i.i ], [ %i.fj, %bb.bz ], [ %i.hb, %bb.cx ], [ %i.dt, %bb.bb ], [ %i.gm, %bb.cp ], [ %i.fv, %bb.ci ] ; 2 uses
  %i.hc = icmp eq ptr %.6.i.i, null
  br i1 %i.hc, label %bb.cy, label %.thread..thread194_crit_edge.i.i

.thread..thread194_crit_edge.i.i:                 ; preds = %.thread.i.i
  %.pre242.i.i = load i32, ptr %i.i, align 4, !tbaa !29
  br label %.thread194.i.i

bb.cy:                                            ; preds = %.thread.i.i
  %i.hd = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i.i154.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i154.i.i, label %__redisReaderSetErrorOOM.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.he = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not22.i.i.i.i, label %__redisReaderSetErrorOOM.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !31 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not23.i.i.i.i, label %__redisReaderSetErrorOOM.exit.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void %i.hg(ptr noundef nonnull %i.hd) #11, !inline_history !66
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  br label %__redisReaderSetErrorOOM.exit.i.i

__redisReaderSetErrorOOM.exit.i.i:                ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %i.hh = load ptr, ptr %i.z, align 8, !tbaa !14
  call void @hi_sdsfree(ptr noundef %i.hh) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 5, ptr %0, align 8, !tbaa !37
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.hi, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.hj, align 1, !tbaa !39
  br label %processItem.exit.thread.thread

.thread194.i.i:                                   ; preds = %.thread..thread194_crit_edge.i.i, %bb.co, %.critedge.i.i, %bb.ch, %bb.cg, %bb.by, %bb.bx, %bb.ba, %string2ll.exit.i.i
  %i.hk = phi i32 [ %.pre242.i.i, %.thread..thread194_crit_edge.i.i ], [ %i.af, %.critedge.i.i ], [ %i.af, %bb.co ], [ %i.af, %bb.by ], [ %i.af, %bb.bx ], [ %i.af, %bb.ch ], [ %i.af, %bb.cg ], [ %i.af, %bb.ba ], [ %i.af, %string2ll.exit.i.i ] ; 3 uses
  %.6196.i.i = phi ptr [ %.6.i.i, %.thread..thread194_crit_edge.i.i ], [ inttoptr (i64 13 to ptr), %.critedge.i.i ], [ inttoptr (i64 13 to ptr), %bb.co ], [ inttoptr (i64 4 to ptr), %bb.by ], [ inttoptr (i64 4 to ptr), %bb.bx ], [ inttoptr (i64 8 to ptr), %bb.ch ], [ inttoptr (i64 8 to ptr), %bb.cg ], [ inttoptr (i64 3 to ptr), %bb.ba ], [ inttoptr (i64 3 to ptr), %string2ll.exit.i.i ]
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i155.thread.i.i, label %bb.dc

.lr.ph.i155.thread.i.i:                           ; preds = %.thread194.i.i
  store ptr %.6196.i.i, ptr %i.ae, align 8, !tbaa !30
  br label %._crit_edge.i.i

bb.dc:                                            ; preds = %.thread194.i.i
  %i.hm = icmp sgt i32 %i.hk, -1
  br i1 %i.hm, label %.lr.ph215.i.i, label %processItem.exit

.lr.ph215.i.i:                                    ; preds = %bb.dc
  %i.hn = load ptr, ptr %i.x, align 8, !tbaa !22
  %2 = zext nneg i32 %i.hk to i64
  br label %bb.dd

._crit_edge.i.i:                                  ; preds = %bb.dg, %.lr.ph.i155.thread.i.i
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  br label %processItem.exit.thread

bb.dd:                                            ; preds = %bb.dg, %.lr.ph215.i.i
  %indvars.iv234.i.i = phi i64 [ %2, %.lr.ph215.i.i ], [ %indvars.iv.next235.i.i, %bb.dg ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv234.i.i ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !24 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !47
  switch i32 %i.hr, label %bb.de [
    i32 2, label %bb.df
    i32 9, label %bb.df
    i32 10, label %bb.df
    i32 12, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 254, ptr noundef nonnull @__PRETTY_FUNCTION__.moveToNextTask) #14
  unreachable

bb.df:                                            ; preds = %bb.dd, %bb.dd, %bb.dd, %bb.dd
  %i.hs = load ptr, ptr %i.ho, align 8, !tbaa !24 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !50 ; 2 uses
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !49 ; 2 uses
  %i.hy = add nsw i64 %i.hx, -1
  %i.hz = icmp eq i64 %i.hy, %i.hv
  br i1 %i.hz, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %indvars.iv.next235.i.i = add nsw i64 %indvars.iv234.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next235.i.i to i32 ; 2 uses
  store i32 %indvars.i.i, ptr %i.i, align 4, !tbaa !29
  %i.ia = icmp eq i32 %indvars.i.i, 0
  br i1 %i.ia, label %._crit_edge.i.i, label %bb.dd

bb.dh:                                            ; preds = %bb.df
  %i.ib = icmp sgt i64 %i.hx, %i.hv
  br i1 %i.ib, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 259, ptr noundef nonnull @__PRETTY_FUNCTION__.moveToNextTask) #14
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i32 -1, ptr %i.hs, align 8, !tbaa !47
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 -1, ptr %i.id, align 8, !tbaa !49
  %i.ie = add nsw i32 %i.hu, 1
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !50
  br label %processItem.exit

.thread112.sink.split.i.a:                        ; preds = %bb.q, %bb.i
  %.sink307.i = phi i32 [ 14, %bb.q ], [ 1, %bb.i ] ; 2 uses
  store i32 %.sink307.i, ptr %i.aj, align 8, !tbaa !47
  br label %.thread112.i.a

.thread112.i.a:                                   ; preds = %.thread112.sink.split.i.a, %bb.ag, %bb.ag
  %i.if = phi i32 [ %i.ak, %bb.ag ], [ %i.ak, %bb.ag ], [ %.sink307.i, %.thread112.sink.split.i.a ] ; 2 uses
  %i.ig = load ptr, ptr %i.z, align 8, !tbaa !14  ; 10 uses
  %i.ih = load i64, ptr %i.y, align 8, !tbaa !43  ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ih ; 7 uses
  %i.ij = load i64, ptr %i.f, align 8, !tbaa !38  ; 2 uses
  %i.ik = sub i64 %i.ij, %i.ih                    ; 2 uses
  %i.il = icmp ult i64 %i.ik, 2
  br i1 %i.il, label %processItem.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %.thread112.i.a
  %i.im = add i64 %i.ik, -1                       ; 2 uses
  %i.in = call ptr @memchr(ptr noundef %i.ii, i32 noundef 13, i64 noundef %i.im) #13 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not16.i.i.i, label %processItem.exit.thread, label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %bb.dk, %bb.dl
  %i.io = phi ptr [ %i.iv, %bb.dl ], [ %i.in, %bb.dk ] ; 5 uses
  %.018.i.i.i = phi i64 [ %i.iu, %bb.dl ], [ %i.im, %bb.dk ]
  %.01117.i.i.i = phi ptr [ %i.ip, %bb.dl ], [ %i.ii, %bb.dk ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1 ; 4 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !39
  %i.ir = icmp eq i8 %i.iq, 10
  br i1 %i.ir, label %seekNewline.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i26.i
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = ptrtoint ptr %.01117.i.i.i to i64
  %.neg.i.i.i = sub i64 %.018.i.i.i, %i.is
  %i.iu = add i64 %.neg.i.i.i, %i.it              ; 2 uses
  %i.iv = call ptr @memchr(ptr noundef nonnull %i.ip, i32 noundef 13, i64 noundef %i.iu) #13 ; 2 uses
  %.not.i.i27.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i27.i, label %processItem.exit.thread, label %.lr.ph.i.i26.i

seekNewline.exit.i.i:                             ; preds = %.lr.ph.i.i26.i
  %i.iw = ptrtoint ptr %i.io to i64
  %i.ix = ptrtoint ptr %i.ii to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 5 uses
  %i.iz = add nsw i64 %i.iy, 2                    ; 3 uses
  %i.ja = icmp eq ptr %i.io, %i.ii
  br i1 %i.ja, label %.loopexit.i34.i, label %bb.dm

bb.dm:                                            ; preds = %seekNewline.exit.i.i
  %i.jb = icmp eq i64 %i.iy, 1
  %i.jc = load i8, ptr %i.ii, align 1, !tbaa !39  ; 6 uses
  br i1 %i.jb, label %bb.dn, label %.thread.i.i29.i

bb.dn:                                            ; preds = %bb.dm
  switch i8 %i.jc, label %.thread72.i.i58.i [
    i8 48, label %.thread.i40.i
    i8 45, label %.loopexit.i34.i
  ]

.thread.i.i29.i:                                  ; preds = %bb.dm
  %.not59.i.i30.i = icmp eq i8 %i.jc, 45          ; 2 uses
  br i1 %.not59.i.i30.i, label %.thread62.i.i56.i, label %bb.do

.thread62.i.i56.i:                                ; preds = %.thread.i.i29.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  %.pre.i.i57.i = load i8, ptr %i.jd, align 1, !tbaa !39
  br label %bb.do

bb.do:                                            ; preds = %.thread62.i.i56.i, %.thread.i.i29.i
  %i.je = phi i8 [ %.pre.i.i57.i, %.thread62.i.i56.i ], [ %i.jc, %.thread.i.i29.i ] ; 2 uses
  %.046.i.i31.i = phi ptr [ %i.jd, %.thread62.i.i56.i ], [ %i.ii, %.thread.i.i29.i ]
  %.045.i.i32.i = phi i64 [ 2, %.thread62.i.i56.i ], [ 1, %.thread.i.i29.i ] ; 2 uses
  %i.jf = add i8 %i.je, -49
  %or.cond56.i.i33.i = icmp ult i8 %i.jf, 9
  br i1 %or.cond56.i.i33.i, label %bb.dp, label %.loopexit.i34.i

.thread72.i.i58.i:                                ; preds = %bb.dn
  %i.jg = add i8 %i.jc, -49
  %or.cond5676.i.i59.i = icmp ult i8 %i.jg, 9
  br i1 %or.cond5676.i.i59.i, label %.thread91.i.i60.i, label %bb.dq

.thread91.i.i60.i:                                ; preds = %.thread72.i.i58.i
  %narrow84.i.i61.i = add nsw i8 %i.jc, -48
  %i.jh = zext nneg i8 %narrow84.i.i61.i to i64
  br label %.thread.i40.i

bb.dp:                                            ; preds = %bb.do
  %narrow.i.i37.i = add nsw i8 %i.je, -48
  %i.ji = zext nneg i8 %narrow.i.i37.i to i64     ; 2 uses
  %i.jj = icmp ult i64 %.045.i.i32.i, %i.iy
  br i1 %i.jj, label %.lr.ph.i61.i.i, label %.critedge58.i.i38.i

bb.dq:                                            ; preds = %.thread72.i.i58.i
  %i.jk = icmp eq i8 %i.jc, 48
  br i1 %i.jk, label %.thread.i40.i, label %.loopexit.i34.i

.lr.ph.i61.i.i:                                   ; preds = %bb.dp, %bb.ds
  %.14769.pn.i.i48.i = phi ptr [ %.14769.i.i51.i, %bb.ds ], [ %.046.i.i31.i, %bb.dp ]
  %.068.i.i49.i = phi i64 [ %i.js, %bb.ds ], [ %i.ji, %bb.dp ] ; 2 uses
  %.167.i.i50.i = phi i64 [ %i.jt, %bb.ds ], [ %.045.i.i32.i, %bb.dp ]
  %.14769.i.i51.i = getelementptr inbounds nuw i8, ptr %.14769.pn.i.i48.i, i64 1 ; 2 uses
  %i.jl = load i8, ptr %.14769.i.i51.i, align 1, !tbaa !39 ; 2 uses
  %i.jm = add i8 %i.jl, -58
  %or.cond57.i.i52.i = icmp ult i8 %i.jm, -10
  %i.jn = icmp ugt i64 %.068.i.i49.i, 1844674407370955161
  %or.cond64.i.i53.i = select i1 %or.cond57.i.i52.i, i1 true, i1 %i.jn
  br i1 %or.cond64.i.i53.i, label %.loopexit.i34.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i61.i.i
  %i.jo = mul nuw i64 %.068.i.i49.i, 10           ; 2 uses
  %narrow55.i.i54.i = add nsw i8 %i.jl, -48
  %i.jp = zext nneg i8 %narrow55.i.i54.i to i64   ; 2 uses
  %i.jq = xor i64 %i.jp, -1
  %i.jr = icmp ugt i64 %i.jo, %i.jq
  br i1 %i.jr, label %.loopexit.i34.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.js = add i64 %i.jo, %i.jp                    ; 2 uses
  %i.jt = add i64 %.167.i.i50.i, 1                ; 2 uses
  %exitcond.not.i.i55.i = icmp eq i64 %i.jt, %i.iy
  br i1 %exitcond.not.i.i55.i, label %.critedge58.i.i38.i, label %.lr.ph.i61.i.i

.critedge58.i.i38.i:                              ; preds = %bb.ds, %bb.dp
  %.0.lcssa.i.i39.i = phi i64 [ %i.ji, %bb.dp ], [ %i.js, %bb.ds ] ; 5 uses
  br i1 %.not59.i.i30.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.critedge58.i.i38.i
  %i.ju = icmp ugt i64 %.0.lcssa.i.i39.i, -9223372036854775808
  br i1 %i.ju, label %.loopexit.i34.i, label %string2ll.exit.i47.i

bb.du:                                            ; preds = %.critedge58.i.i38.i
  %i.jv = icmp slt i64 %.0.lcssa.i.i39.i, 0
  br i1 %i.jv, label %.loopexit.i34.i, label %.thread.i40.i

.loopexit.i34.i:                                  ; preds = %bb.du, %bb.dt, %bb.dq, %bb.do, %bb.dn, %seekNewline.exit.i.i, %bb.dr, %.lr.ph.i61.i.i
  %i.jw = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i62.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i62.i.i, label %__redisReaderSetError.exit.i.i, label %bb.dv

bb.dv:                                            ; preds = %.loopexit.i34.i
  %i.jx = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i.i35.i = icmp eq ptr %i.jx, null
  br i1 %.not22.i.i35.i, label %__redisReaderSetError.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !31 ; 2 uses
  %.not23.i.i36.i = icmp eq ptr %i.jz, null
  br i1 %.not23.i.i36.i, label %__redisReaderSetError.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void %i.jz(ptr noundef nonnull %i.jw) #11, !inline_history !67
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  %.pre110.i.i.a = load ptr, ptr %i.z, align 8, !tbaa !14
  br label %__redisReaderSetError.exit.i.i

__redisReaderSetError.exit.i.i:                   ; preds = %bb.dx, %bb.dw, %bb.dv, %.loopexit.i34.i
  %i.ka = phi ptr [ %i.ig, %.loopexit.i34.i ], [ %i.ig, %bb.dv ], [ %i.ig, %bb.dw ], [ %.pre110.i.i.a, %bb.dx ]
  call void @hi_sdsfree(ptr noundef %i.ka) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 4, ptr %0, align 8, !tbaa !37
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.kb, ptr noundef nonnull align 1 dereferenceable(22) @.str.26, i64 22, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.kc, align 2, !tbaa !39
  br label %processItem.exit.thread.thread

string2ll.exit.i47.i:                             ; preds = %bb.dt
  %i.kd = icmp ugt i64 %.0.lcssa.i.i39.i, 1
  br i1 %i.kd, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %string2ll.exit.i47.i
  %i.ke = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i63.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i63.i.i, label %__redisReaderSetError.exit66.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.kf = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i64.i.i = icmp eq ptr %i.kf, null
  br i1 %.not22.i64.i.i, label %__redisReaderSetError.exit66.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !31 ; 2 uses
  %.not23.i65.i.i = icmp eq ptr %i.kh, null
  br i1 %.not23.i65.i.i, label %__redisReaderSetError.exit66.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void %i.kh(ptr noundef nonnull %i.ke) #11, !inline_history !67
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !14
  br label %__redisReaderSetError.exit66.i.i

__redisReaderSetError.exit66.i.i:                 ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy
  %i.ki = phi ptr [ %i.ig, %bb.dy ], [ %i.ig, %bb.dz ], [ %i.ig, %bb.ea ], [ %.pre.i.i, %bb.eb ]
  call void @hi_sdsfree(ptr noundef %i.ki) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 4, ptr %0, align 8, !tbaa !37
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(31) %i.kj, ptr noundef nonnull align 1 dereferenceable(31) @.str.27, i64 31, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 0, ptr %i.kk, align 1, !tbaa !39
  br label %processItem.exit.thread.thread

bb.ec:                                            ; preds = %string2ll.exit.i47.i
  %i.kl = icmp eq i64 %.0.lcssa.i.i39.i, 1
  br i1 %i.kl, label %bb.ed, label %.thread.i40.i

bb.ed:                                            ; preds = %bb.ec
  %i.km = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not58.i.i = icmp eq ptr %i.km, null
  br i1 %.not58.i.i, label %.thread83.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !61 ; 2 uses
  %.not59.i.i = icmp eq ptr %i.ko, null
  br i1 %.not59.i.i, label %.thread83.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.kp = call ptr %i.ko(ptr noundef nonnull %i.aj) #11, !inline_history !68
  br label %bb.er

.thread.i40.i:                                    ; preds = %bb.ec, %bb.du, %bb.dq, %.thread91.i.i60.i, %bb.dn
  %storemerge.sink.i8082.i.i = phi i64 [ 0, %bb.ec ], [ %i.jh, %.thread91.i.i60.i ], [ %.0.lcssa.i.i39.i, %bb.du ], [ 0, %bb.dn ], [ 0, %bb.dq ] ; 3 uses
  %i.kq = add i64 %i.iy, 4
  %i.kr = add i64 %i.kq, %storemerge.sink.i8082.i.i ; 3 uses
  %i.ks = add i64 %i.kr, %i.ih
  %.not54.i.i = icmp ugt i64 %i.ks, %i.ij
  br i1 %.not54.i.i, label %processItem.exit.thread, label %bb.eg

bb.eg:                                            ; preds = %.thread.i40.i
  %i.kt = icmp eq i32 %i.if, 14                   ; 2 uses
  %i.ku = icmp samesign ult i64 %storemerge.sink.i8082.i.i, 4
  %or.cond.i41.i = and i1 %i.kt, %i.ku
  br i1 %or.cond.i41.i, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.kt, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %bb.eh
  %i.kv = getelementptr inbounds nuw i8, ptr %i.io, i64 5
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !39
  %.not55.i.i = icmp eq i8 %i.kw, 58
  br i1 %.not55.i.i, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eg
  %i.kx = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i67.i.i, label %__redisReaderSetError.exit70.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ky = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i68.i.i = icmp eq ptr %i.ky, null
  br i1 %.not22.i68.i.i, label %__redisReaderSetError.exit70.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !31 ; 2 uses
  %.not23.i69.i.i = icmp eq ptr %i.la, null
  br i1 %.not23.i69.i.i, label %__redisReaderSetError.exit70.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void %i.la(ptr noundef nonnull %i.kx) #11, !inline_history !67
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  %.pre109.i.i.a = load ptr, ptr %i.z, align 8, !tbaa !14
  br label %__redisReaderSetError.exit70.i.i

__redisReaderSetError.exit70.i.i:                 ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej
  %i.lb = phi ptr [ %i.ig, %bb.ej ], [ %i.ig, %bb.ek ], [ %i.ig, %bb.el ], [ %.pre109.i.i.a, %bb.em ]
  call void @hi_sdsfree(ptr noundef %i.lb) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 4, ptr %0, align 8, !tbaa !37
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(75) %i.lc, ptr noundef nonnull align 1 dereferenceable(75) @.str.28, i64 75, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 79
  store i8 0, ptr %i.ld, align 1, !tbaa !39
  br label %processItem.exit.thread.thread

bb.en:                                            ; preds = %bb.ei, %bb.eh
  %i.le = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.le, null
  br i1 %.not56.i.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !65 ; 2 uses
  %.not57.i.i = icmp eq ptr %i.lf, null
  br i1 %.not57.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.lg = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.lh = call ptr %i.lf(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.lg, i64 noundef %storemerge.sink.i8082.i.i) #11, !inline_history !68
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo, %bb.en
  %i.li = zext nneg i32 %i.if to i64
  %i.lj = inttoptr i64 %i.li to ptr
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.ef
  %.2.i.i = phi ptr [ %i.lj, %bb.eq ], [ %i.lh, %bb.ep ], [ %i.kp, %bb.ef ] ; 2 uses
  %.045.i.i = phi i64 [ %i.kr, %bb.eq ], [ %i.kr, %bb.ep ], [ %i.iz, %bb.ef ]
  %i.lk = icmp eq ptr %.2.i.i, null
  br i1 %i.lk, label %bb.es, label %..thread83_crit_edge.i.i

..thread83_crit_edge.i.i:                         ; preds = %bb.er
  %.pre107.i.i = load i64, ptr %i.y, align 8, !tbaa !43
  %.pre108.i.i = load i32, ptr %i.i, align 4, !tbaa !29
  br label %.thread83.i.i

bb.es:                                            ; preds = %bb.er
  %i.ll = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i43.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i43.i, label %__redisReaderSetErrorOOM.exit.i46.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.lm = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i.i.i44.i = icmp eq ptr %i.lm, null
  br i1 %.not22.i.i.i44.i, label %__redisReaderSetErrorOOM.exit.i46.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !31 ; 2 uses
  %.not23.i.i.i45.i = icmp eq ptr %i.lo, null
  br i1 %.not23.i.i.i45.i, label %__redisReaderSetErrorOOM.exit.i46.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void %i.lo(ptr noundef nonnull %i.ll) #11, !inline_history !69
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  br label %__redisReaderSetErrorOOM.exit.i46.i

__redisReaderSetErrorOOM.exit.i46.i:              ; preds = %bb.ev, %bb.eu, %bb.et, %bb.es
  %i.lp = load ptr, ptr %i.z, align 8, !tbaa !14
  call void @hi_sdsfree(ptr noundef %i.lp) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 5, ptr %0, align 8, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.lq, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.lr, align 1, !tbaa !39
  br label %processItem.exit.thread.thread

.thread83.i.i:                                    ; preds = %..thread83_crit_edge.i.i, %bb.ee, %bb.ed
  %i.ls = phi i32 [ %.pre108.i.i, %..thread83_crit_edge.i.i ], [ %i.af, %bb.ed ], [ %i.af, %bb.ee ] ; 3 uses
  %i.lt = phi i64 [ %.pre107.i.i, %..thread83_crit_edge.i.i ], [ %i.ih, %bb.ed ], [ %i.ih, %bb.ee ]
  %.04587.i.i = phi i64 [ %.045.i.i, %..thread83_crit_edge.i.i ], [ %i.iz, %bb.ed ], [ %i.iz, %bb.ee ]
  %.286.i.i = phi ptr [ %.2.i.i, %..thread83_crit_edge.i.i ], [ inttoptr (i64 4 to ptr), %bb.ed ], [ inttoptr (i64 4 to ptr), %bb.ee ]
  %i.lu = add i64 %.04587.i.i, %i.lt
  store i64 %i.lu, ptr %i.y, align 8, !tbaa !43
  %i.lv = icmp eq i32 %i.ls, 0
  br i1 %i.lv, label %.lr.ph.i71.thread.i.i, label %bb.ew

.lr.ph.i71.thread.i.i:                            ; preds = %.thread83.i.i
  store ptr %.286.i.i, ptr %i.ae, align 8, !tbaa !30
  br label %._crit_edge.i42.i

bb.ew:                                            ; preds = %.thread83.i.i
  %i.lw = icmp sgt i32 %i.ls, -1
  br i1 %i.lw, label %.lr.ph.i.i, label %processItem.exit

.lr.ph.i.i:                                       ; preds = %bb.ew
  %i.lx = load ptr, ptr %i.x, align 8, !tbaa !22
  %3 = zext nneg i32 %i.ls to i64
  br label %bb.ex

._crit_edge.i42.i:                                ; preds = %bb.fa, %.lr.ph.i71.thread.i.i
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  br label %processItem.exit.thread

bb.ex:                                            ; preds = %bb.fa, %.lr.ph.i.i
  %indvars.iv.i42.i = phi i64 [ %3, %.lr.ph.i.i ], [ %indvars.iv.next.i43.i, %bb.fa ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.i42.i ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 -8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !24 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !47
  switch i32 %i.mb, label %bb.ey [
    i32 2, label %bb.ez
    i32 9, label %bb.ez
    i32 10, label %bb.ez
    i32 12, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 254, ptr noundef nonnull @__PRETTY_FUNCTION__.moveToNextTask) #14
  unreachable

bb.ez:                                            ; preds = %bb.ex, %bb.ex, %bb.ex, %bb.ex
  %i.mc = load ptr, ptr %i.ly, align 8, !tbaa !24 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load i32, ptr %i.md, align 8, !tbaa !50 ; 2 uses
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !49 ; 2 uses
  %i.mi = add nsw i64 %i.mh, -1
  %i.mj = icmp eq i64 %i.mi, %i.mf
  br i1 %i.mj, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %indvars.iv.next.i43.i = add nsw i64 %indvars.iv.i42.i, -1 ; 2 uses
  %indvars.i44.i = trunc i64 %indvars.iv.next.i43.i to i32 ; 2 uses
  store i32 %indvars.i44.i, ptr %i.i, align 4, !tbaa !29
  %i.mk = icmp eq i32 %indvars.i44.i, 0
  br i1 %i.mk, label %._crit_edge.i42.i, label %bb.ex

bb.fb:                                            ; preds = %bb.ez
  %i.ml = icmp sgt i64 %i.mh, %i.mf
  br i1 %i.ml, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 259, ptr noundef nonnull @__PRETTY_FUNCTION__.moveToNextTask) #14
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i32 -1, ptr %i.mc, align 8, !tbaa !47
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i64 -1, ptr %i.mn, align 8, !tbaa !49
  %i.mo = add nsw i32 %i.me, 1
  store i32 %i.mo, ptr %i.mm, align 8, !tbaa !50
  br label %processItem.exit

.thread109.sink.split.i:                          ; preds = %bb.r, %bb.o, %bb.n, %bb.i
  %.sink308.i = phi i32 [ 12, %bb.r ], [ 9, %bb.n ], [ 10, %bb.o ], [ 2, %bb.i ]
  store i32 %.sink308.i, ptr %i.aj, align 8, !tbaa !47
  br label %.thread109.i

.thread109.i:                                     ; preds = %.thread109.sink.split.i, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.mp = load i32, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.mq = add nsw i32 %i.mp, -1
  %i.mr = icmp eq i32 %i.af, %i.mq
  br i1 %i.mr, label %bb.fe, label %redisReaderGrow.exit.thread.i.i

bb.fe:                                            ; preds = %.thread109.i
  %i.ms = add nuw nsw i32 %i.mp, 9                ; 3 uses
  %i.mt = sext i32 %i.ms to i64
  %i.mu = shl nsw i64 %i.mt, 3
  %i.mv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 16), align 8, !tbaa !70
  %i.mw = call ptr %i.mv(ptr noundef nonnull %i.ag, i64 noundef range(i64 -17179869112, 17179869177) %i.mu) #11, !inline_history !71 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %.loopexit15.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store ptr %i.mw, ptr %i.x, align 8, !tbaa !22
  %i.my = load i32, ptr %i.aa, align 8, !tbaa !23
  %i.mz = icmp slt i32 %i.my, %i.ms
  br i1 %i.mz, label %.lr.ph.i.i104.i, label %redisReaderGrow.exit.thread.i.i

.lr.ph.i.i104.i:                                  ; preds = %bb.ff, %bb.fg
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 8), align 8, !tbaa !10
  %i.nb = call ptr %i.na(i64 noundef 1, i64 noundef 48) #11, !inline_history !72 ; 2 uses
  %i.nc = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.nd = load i32, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.ne
  store ptr %i.nb, ptr %i.nf, align 8, !tbaa !24
  %i.ng = icmp eq ptr %i.nb, null
  br i1 %i.ng, label %.loopexit15.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.i.i104.i
  %i.nh = add nsw i32 %i.nd, 1                    ; 2 uses
  store i32 %i.nh, ptr %i.aa, align 8, !tbaa !23
  %i.ni = icmp slt i32 %i.nh, %i.ms
  br i1 %i.ni, label %.lr.ph.i.i104.i, label %redisReaderGrow.exit.thread.i.i

.loopexit15.i.i.i:                                ; preds = %bb.fe, %.lr.ph.i.i104.i
  %i.nj = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i, label %redisReaderGrow.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %.loopexit15.i.i.i
  %i.nk = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not22.i.i.i.i.i, label %redisReaderGrow.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !31 ; 2 uses
  %.not23.i.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not23.i.i.i.i.i, label %redisReaderGrow.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void %i.nm(ptr noundef nonnull %i.nj) #11, !inline_history !73
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  br label %redisReaderGrow.exit.i.i

redisReaderGrow.exit.i.i:                         ; preds = %bb.fj, %bb.fi, %bb.fh, %.loopexit15.i.i.i
  %i.nn = load ptr, ptr %i.z, align 8, !tbaa !14
  call void @hi_sdsfree(ptr noundef %i.nn) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !29
  store i32 5, ptr %0, align 8, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.no, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.np, align 1, !tbaa !39
  br label %processItem.exit.thread.thread

redisReaderGrow.exit.thread.i.i:                  ; preds = %bb.fg, %bb.ff, %.thread109.i
  %i.nq = load ptr, ptr %i.z, align 8, !tbaa !14  ; 8 uses
  %i.nr = load i64, ptr %i.y, align 8, !tbaa !43  ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nr ; 6 uses
  %i.nt = load i64, ptr %i.f, align 8, !tbaa !38
  %i.nu = sub i64 %i.nt, %i.nr                    ; 2 uses
  %i.nv = icmp ult i64 %i.nu, 2
  br i1 %i.nv, label %processItem.exit.thread, label %bb.fk

bb.fk:                                            ; preds = %redisReaderGrow.exit.thread.i.i
  %i.nw = add i64 %i.nu, -1                       ; 2 uses
  %i.nx = call ptr @memchr(ptr noundef %i.ns, i32 noundef 13, i64 noundef %i.nw) #13 ; 2 uses
  %.not16.i.i.i62.i = icmp eq ptr %i.nx, null
  br i1 %.not16.i.i.i62.i, label %processItem.exit.thread, label %.lr.ph.i.i.i63.i

.lr.ph.i.i.i63.i:                                 ; preds = %bb.fk, %bb.fl
  %i.ny = phi ptr [ %i.of, %bb.fl ], [ %i.nx, %bb.fk ] ; 2 uses
  %.018.i.i.i64.i = phi i64 [ %i.oe, %bb.fl ], [ %i.nw, %bb.fk ]
  %.01117.i.i.i65.i = phi ptr [ %i.nz, %bb.fl ], [ %i.ns, %bb.fk ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1 ; 4 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !39
  %i.ob = icmp eq i8 %i.oa, 10
  br i1 %i.ob, label %readLine.exit.i68.i, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i.i63.i
  %i.oc = ptrtoint ptr %i.nz to i64
  %i.od = ptrtoint ptr %.01117.i.i.i65.i to i64
  %.neg.i.i.i66.i = sub i64 %.018.i.i.i64.i, %i.oc
  %i.oe = add i64 %.neg.i.i.i66.i, %i.od          ; 2 uses
  %i.of = call ptr @memchr(ptr noundef nonnull %i.nz, i32 noundef 13, i64 noundef %i.oe) #13 ; 2 uses
  %.not.i.i.i67.i = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i67.i, label %processItem.exit.thread, label %.lr.ph.i.i.i63.i

readLine.exit.i68.i:                              ; preds = %.lr.ph.i.i.i63.i
  %i.og = ptrtoint ptr %i.ny to i64
  %i.oh = ptrtoint ptr %i.ns to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = shl i64 %i.oi, 32                       ; 4 uses
  %sext.i.i69.i = add i64 %i.oj, 8589934592
  %i.ok = ashr exact i64 %sext.i.i69.i, 32
  %i.ol = add i64 %i.ok, %i.nr
  store i64 %i.ol, ptr %i.y, align 8, !tbaa !43
  %.not.i70.i = icmp eq ptr %i.nq, null
  br i1 %.not.i70.i, label %processItem.exit.thread, label %bb.fm

bb.fm:                                            ; preds = %readLine.exit.i68.i
  %i.om = ashr exact i64 %i.oj, 32                ; 2 uses
  %i.on = icmp eq i64 %i.oj, 0
  br i1 %i.on, label %.loopexit.i76.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.oo = icmp eq i64 %i.oj, 4294967296
  %i.op = load i8, ptr %i.ns, align 1, !tbaa !39  ; 6 uses
  br i1 %i.oo, label %bb.fo, label %.thread.i.i71.i

bb.fo:                                            ; preds = %bb.fn
  switch i8 %i.op, label %.thread72.i.i100.i [
    i8 48, label %string2ll.exit.thread83.i.i
    i8 45, label %.loopexit.i76.i
  ]

.thread.i.i71.i:                                  ; preds = %bb.fn
  %.not59.i.i72.i = icmp eq i8 %i.op, 45          ; 2 uses
  br i1 %.not59.i.i72.i, label %.thread62.i.i98.i, label %bb.fp

.thread62.i.i98.i:                                ; preds = %.thread.i.i71.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ns, i64 1 ; 2 uses
  %.pre.i.i99.i = load i8, ptr %i.oq, align 1, !tbaa !39
  br label %bb.fp

bb.fp:                                            ; preds = %.thread62.i.i98.i, %.thread.i.i71.i
  %i.or = phi i8 [ %.pre.i.i99.i, %.thread62.i.i98.i ], [ %i.op, %.thread.i.i71.i ] ; 2 uses
  %.046.i.i73.i = phi ptr [ %i.oq, %.thread62.i.i98.i ], [ %i.ns, %.thread.i.i71.i ]
  %.045.i.i74.i = phi i64 [ 2, %.thread62.i.i98.i ], [ 1, %.thread.i.i71.i ] ; 2 uses
  %i.os = add i8 %i.or, -49
  %or.cond56.i.i75.i = icmp ult i8 %i.os, 9
  br i1 %or.cond56.i.i75.i, label %bb.fq, label %.loopexit.i76.i

.thread72.i.i100.i:                               ; preds = %bb.fo
  %i.ot = add i8 %i.op, -49
  %or.cond5676.i.i101.i = icmp ult i8 %i.ot, 9
  br i1 %or.cond5676.i.i101.i, label %.thread91.i.i102.i, label %bb.fr

.thread91.i.i102.i:                               ; preds = %.thread72.i.i100.i
  %narrow84.i.i103.i = add nsw i8 %i.op, -48
  %i.ou = zext nneg i8 %narrow84.i.i103.i to i64
  br label %string2ll.exit.thread83.i.i

bb.fq:                                            ; preds = %bb.fp
  %narrow.i.i81.i = add nsw i8 %i.or, -48
  %i.ov = zext nneg i8 %narrow.i.i81.i to i64     ; 2 uses
  %i.ow = icmp ult i64 %.045.i.i74.i, %i.om
  br i1 %i.ow, label %.lr.ph.i64.i.i, label %.critedge58.i.i82.i

bb.fr:                                            ; preds = %.thread72.i.i100.i
  %i.ox = icmp eq i8 %i.op, 48
  br i1 %i.ox, label %string2ll.exit.thread83.i.i, label %.loopexit.i76.i

.lr.ph.i64.i.i:                                   ; preds = %bb.fq, %bb.ft
  %.14769.pn.i.i90.i = phi ptr [ %.14769.i.i93.i, %bb.ft ], [ %.046.i.i73.i, %bb.fq ]
  %.068.i.i91.i = phi i64 [ %i.pf, %bb.ft ], [ %i.ov, %bb.fq ] ; 2 uses
  %.167.i.i92.i = phi i64 [ %i.pg, %bb.ft ], [ %.045.i.i74.i, %bb.fq ]
  %.14769.i.i93.i = getelementptr inbounds nuw i8, ptr %.14769.pn.i.i90.i, i64 1 ; 2 uses
  %i.oy = load i8, ptr %.14769.i.i93.i, align 1, !tbaa !39 ; 2 uses
  %i.oz = add i8 %i.oy, -58
end_hunk_0
