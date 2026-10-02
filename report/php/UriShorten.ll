Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriShorten?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@uriRemoveBaseUriMmA:bb.a
  br i1 %i.i, label %uriRemoveBaseUriImplA.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call zeroext i1 @uriRangeEqualsA(ptr noundef nonnull %1, ptr noundef nonnull %2) #3
  br i1 %i.j, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.k = tail call i32 @uriCopyAuthorityA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %uriRemoveBaseUriImplA.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @uriCopyPathA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not93.i = icmp eq i32 %i.l, 0
  br i1 %.not93.i, label %uriRemoveBaseUriImplA.exit, label %.loopexit.i

bb.j:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %.not23.i.i = icmp eq ptr %i.p, null
  br i1 %.not23.i.i, label %uriEqualsAuthorityA.exit.thread.i, label %uriEqualsAuthorityA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %.not18.i.i = icmp eq ptr %i.r, null
  br i1 %.not18.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %.not21.i.i = icmp eq ptr %i.t, null
  br i1 %.not21.i.i, label %uriEqualsAuthorityA.exit.thread.i, label %.split191.i

.split191.i:                                      ; preds = %bb.m
  %i.u = load i128, ptr %i.r, align 1
  %i.v = load i128, ptr %i.t, align 1
  %i.w = icmp ne i128 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not22.i.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i.i, label %bb.q, label %uriEqualsAuthorityA.exit.thread.i

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %.not19.i.i = icmp eq ptr %i.z, null
  br i1 %.not19.i.i, label %.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %.not20.i.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i.i, label %uriEqualsAuthorityA.exit.thread.i, label %.split190.i

.split190.i:                                      ; preds = %bb.o
  %i.ac = tail call zeroext i1 @uriRangeEqualsA(ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa) #3
  br i1 %i.ac, label %bb.q, label %uriEqualsAuthorityA.exit.thread.i

.split.i:                                         ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = tail call zeroext i1 @uriRangeEqualsA(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #3
  br i1 %i.af, label %bb.q, label %uriEqualsAuthorityA.exit.thread.i

uriEqualsAuthorityA.exit.i:                       ; preds = %bb.k
  %i.ag = load i32, ptr %i.n, align 1
  %i.ah = load i32, ptr %i.p, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not25.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not25.i.i, label %bb.q, label %uriEqualsAuthorityA.exit.thread.i

uriEqualsAuthorityA.exit.thread.i:                ; preds = %uriEqualsAuthorityA.exit.i, %.split.i, %.split190.i, %bb.o, %.split191.i, %bb.m, %bb.k
  %i.ak = tail call i32 @uriCopyAuthorityA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not95.i = icmp eq i32 %i.ak, 0
  br i1 %.not95.i, label %uriRemoveBaseUriImplA.exit, label %bb.p

bb.p:                                             ; preds = %uriEqualsAuthorityA.exit.thread.i
  %i.al = tail call i32 @uriCopyPathA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not96.i = icmp eq i32 %i.al, 0
  br i1 %.not96.i, label %uriRemoveBaseUriImplA.exit, label %.loopexit.i

bb.q:                                             ; preds = %uriEqualsAuthorityA.exit.i, %.split.i, %.split190.i, %.split191.i
  %i.am = icmp eq i32 %3, 1
  br i1 %i.am, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.an = tail call i32 @uriCopyPathA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not106.i = icmp eq i32 %i.an, 0
  br i1 %.not106.i, label %uriRemoveBaseUriImplA.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ao, align 8, !tbaa !33
  %i.ap = tail call i32 @uriFixAmbiguityA(ptr noundef nonnull %0, ptr noundef nonnull %.0) #3
  %.not107.i = icmp eq i32 %i.ap, 0
  br i1 %.not107.i, label %uriRemoveBaseUriImplA.exit, label %.loopexit.i

bb.t:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.au, align 8, !tbaa !33
  %i.av = icmp ne ptr %i.ar, null
  %i.aw = icmp ne ptr %i.at, null
  %or.cond3137.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond3137.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.t, %.critedge109.i
  %.083139.i = phi ptr [ %i.bj, %.critedge109.i ], [ %i.at, %bb.t ] ; 5 uses
  %.085138.i = phi ptr [ %i.bd, %.critedge109.i ], [ %i.ar, %bb.t ] ; 6 uses
  %i.ax = tail call zeroext i1 @uriRangeEqualsA(ptr noundef nonnull %.085138.i, ptr noundef nonnull %.083139.i) #3
  br i1 %i.ax, label %bb.u, label %.lr.ph149.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.ay = load ptr, ptr %.085138.i, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %.085138.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37
  %i.bb = icmp eq ptr %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.085138.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 4 uses
  br i1 %i.bb, label %bb.v, label %..critedge109_crit_edge.i

..critedge109_crit_edge.i:                        ; preds = %bb.u
  %.phi.trans.insert163.i = getelementptr inbounds nuw i8, ptr %.083139.i, i64 16
  %.pre164.i = load ptr, ptr %.phi.trans.insert163.i, align 8, !tbaa !38
  br label %.critedge109.i

bb.v:                                             ; preds = %bb.u
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = getelementptr inbounds nuw i8, ptr %.083139.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = xor i1 %i.be, %i.bh
  br i1 %i.bi, label %.critedge109.i, label %.lr.ph149.i

.critedge109.i:                                   ; preds = %bb.v, %..critedge109_crit_edge.i
  %i.bj = phi ptr [ %.pre164.i, %..critedge109_crit_edge.i ], [ %i.bg, %bb.v ] ; 3 uses
  %i.bk = icmp ne ptr %i.bd, null
  %i.bl = icmp ne ptr %i.bj, null
  %or.cond3.i = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond3.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.critedge109.i, %bb.t
  %.085.lcssa.i = phi ptr [ %i.ar, %bb.t ], [ %i.bd, %.critedge109.i ] ; 2 uses
  %.083.lcssa.i = phi ptr [ %i.at, %bb.t ], [ %i.bj, %.critedge109.i ] ; 2 uses
  %.not97147.i = icmp eq ptr %.083.lcssa.i, null
  br i1 %.not97147.i, label %.critedge5.i, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %bb.v, %.lr.ph.i, %.critedge.i
  %.083.lcssa197.i = phi ptr [ %.083.lcssa.i, %.critedge.i ], [ %.083139.i, %.lr.ph.i ], [ %.083139.i, %bb.v ]
  %.085.lcssa195.i = phi ptr [ %.085.lcssa.i, %.critedge.i ], [ %.085138.i, %.lr.ph.i ], [ %.085138.i, %bb.v ] ; 3 uses
  %i.bm = load ptr, ptr @uriConstParentA, align 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.083.lcssa197.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38 ; 2 uses
  %.not98.peel.i = icmp eq ptr %i.br, null
  br i1 %.not98.peel.i, label %.critedge5.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph149.i
  %i.bs = load ptr, ptr %.0, align 8, !tbaa !17
  %i.bt = tail call ptr %i.bs(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !19 ; 7 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %uriRemoveBaseUriImplA.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr null, ptr %i.bv, align 8, !tbaa !38
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bn, ptr %i.bw, align 8, !tbaa !37
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bt, ptr %i.bz, align 8, !tbaa !38
  br label %.peel.next.i

bb.z:                                             ; preds = %bb.x
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !34
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.z, %bb.y
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38 ; 2 uses
  %.not98.i22 = icmp eq ptr %i.cb, null
  br i1 %.not98.i22, label %.critedge5.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.peel.next.i
  %5 = insertelement <2 x ptr> poison, ptr %i.bm, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.bn, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %uriAppendSegmentA.exit.i
  %i.cc = phi ptr [ %i.cl, %uriAppendSegmentA.exit.i ], [ %i.cb, %.lr.ph.preheader ]
  %i.cd = load ptr, ptr %.0, align 8, !tbaa !17
  %i.ce = tail call ptr %i.cd(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !19 ; 6 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %uriRemoveBaseUriImplA.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr null, ptr %i.cg, align 8, !tbaa !38
  store <2 x ptr> %6, ptr %i.ce, align 8, !tbaa !28
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ce, ptr %i.bp, align 8, !tbaa !34
  br label %uriAppendSegmentA.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !38
  br label %uriAppendSegmentA.exit.i

uriAppendSegmentA.exit.i:                         ; preds = %bb.ac, %bb.ab
  store ptr %i.ce, ptr %i.bo, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 2 uses
  %.not98.i = icmp eq ptr %i.cl, null
  br i1 %.not98.i, label %.critedge5.i, label %.lr.ph

.critedge5.i:                                     ; preds = %uriAppendSegmentA.exit.i, %.peel.next.i, %.lr.ph149.i, %.critedge.i
  %.085.lcssa196.i = phi ptr [ %.085.lcssa.i, %.critedge.i ], [ %.085.lcssa195.i, %.lr.ph149.i ], [ %.085.lcssa195.i, %.peel.next.i ], [ %.085.lcssa195.i, %uriAppendSegmentA.exit.i ] ; 2 uses
  %.lcssa135.i = phi i1 [ true, %.critedge.i ], [ true, %.lr.ph149.i ], [ false, %.peel.next.i ], [ false, %uriAppendSegmentA.exit.i ]
  %.not99157.i = icmp eq ptr %.085.lcssa196.i, null
  br i1 %.not99157.i, label %.loopexit.i, label %.lr.ph160.i

.lr.ph160.i:                                      ; preds = %.critedge5.i
  %i.cm = load ptr, ptr @uriConstPwdA, align 8    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %7 = insertelement <2 x ptr> poison, ptr %i.cm, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.cn, i64 1 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ar, %.lr.ph160.i
  %.182159.i = phi i1 [ %.lcssa135.i, %.lr.ph160.i ], [ false, %bb.ar ]
  %.186158.i = phi ptr [ %.085.lcssa196.i, %.lr.ph160.i ], [ %i.dw, %bb.ar ] ; 5 uses
  %.pre27 = load ptr, ptr %.186158.i, align 8, !tbaa !36 ; 5 uses
  br i1 %.182159.i, label %bb.ae, label %.critedge113.i

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %.186158.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !37 ; 3 uses
  %.not101153.i = icmp ult ptr %.pre27, %i.cr
  br i1 %.not101153.i, label %.lr.ph155.i, label %.critedge111.i

bb.af:                                            ; preds = %.lr.ph155.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0154.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.cs, %i.cr
  br i1 %exitcond.not.i, label %.critedge111.i, label %.lr.ph155.i, !llvm.loop !20

.lr.ph155.i:                                      ; preds = %bb.ae, %bb.af
  %.0154.i = phi ptr [ %i.cs, %bb.af ], [ %.pre27, %bb.ae ] ; 2 uses
  %i.ct = load i8, ptr %.0154.i, align 1, !tbaa !40
  %i.cu = icmp eq i8 %i.ct, 58
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.ag:                                            ; preds = %.lr.ph155.i
  %i.cv = load ptr, ptr %.0, align 8, !tbaa !17
  %i.cw = tail call ptr %i.cv(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !19 ; 7 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %uriRemoveBaseUriImplA.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr null, ptr %i.cy, align 8, !tbaa !38
  store <2 x ptr> %8, ptr %i.cw, align 8, !tbaa !28
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !39 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.cw, ptr %i.cp, align 8, !tbaa !34
  br label %.critedge113.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !38
  br label %.critedge113.sink.split.i

.critedge111.i:                                   ; preds = %bb.af, %bb.ae
  %i.dc = icmp eq ptr %.pre27, %i.cr
  br i1 %i.dc, label %bb.ak, label %.critedge113.i

bb.ak:                                            ; preds = %.critedge111.i
  %i.dd = load ptr, ptr %.0, align 8, !tbaa !17
  %i.de = tail call ptr %i.dd(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !19 ; 7 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %uriRemoveBaseUriImplA.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr null, ptr %i.dg, align 8, !tbaa !38
  store <2 x ptr> %8, ptr %i.de, align 8, !tbaa !28
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !39 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !34
  br label %.critedge113.sink.split.i

bb.an:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.de, ptr %i.dj, align 8, !tbaa !38
  br label %.critedge113.sink.split.i

.critedge113.sink.split.i:                        ; preds = %bb.an, %bb.am, %bb.aj, %bb.ai
  %.sink202.i = phi ptr [ %i.cw, %bb.aj ], [ %i.cw, %bb.ai ], [ %i.de, %bb.am ], [ %i.de, %bb.an ]
  store ptr %.sink202.i, ptr %i.co, align 8, !tbaa !39
  %.pre = load ptr, ptr %.186158.i, align 8, !tbaa !36
  br label %.critedge113.i

.critedge113.i:                                   ; preds = %.critedge113.sink.split.i, %.critedge111.i, %bb.ad
  %i.dk = phi ptr [ %.pre, %.critedge113.sink.split.i ], [ %.pre27, %.critedge111.i ], [ %.pre27, %bb.ad ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.186158.i, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.dn = load ptr, ptr %.0, align 8, !tbaa !17
  %i.do = tail call ptr %i.dn(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !19 ; 7 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %uriRemoveBaseUriImplA.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge113.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr null, ptr %i.dq, align 8, !tbaa !38
  store ptr %i.dk, ptr %i.do, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dm, ptr %i.dr, align 8, !tbaa !37
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !39 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.do, ptr %i.cp, align 8, !tbaa !34
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.do, ptr %i.du, align 8, !tbaa !38
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store ptr %i.do, ptr %i.co, align 8, !tbaa !39
  %i.dv = getelementptr inbounds nuw i8, ptr %.186158.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !38 ; 2 uses
  %.not99.i = icmp eq ptr %i.dw, null
  br i1 %.not99.i, label %.loopexit.i, label %bb.ad, !llvm.loop !21

.loopexit.i:                                      ; preds = %bb.ar, %.critedge5.i, %bb.s, %bb.p, %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !29
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !29
  br label %uriRemoveBaseUriImplA.exit.thread

uriRemoveBaseUriImplA.exit:                       ; preds = %.lr.ph, %.critedge113.i, %bb.ak, %bb.ag, %bb.w, %bb.s, %bb.r, %bb.p, %uriEqualsAuthorityA.exit.thread.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.4.i = phi i32 [ 7, %bb.f ], [ 3, %bb.w ], [ 2, %bb.d ], [ 6, %bb.e ], [ 3, %.critedge113.i ], [ 3, %bb.r ], [ 3, %bb.p ], [ 3, %bb.s ], [ 3, %uriEqualsAuthorityA.exit.thread.i ], [ 3, %bb.i ], [ 3, %bb.h ], [ 3, %bb.ag ], [ 3, %bb.ak ], [ 3, %.lr.ph ]
  %i.eb = tail call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %0, ptr noundef nonnull %.0) #3 ; 0 uses
  br label %uriRemoveBaseUriImplA.exit.thread

uriRemoveBaseUriImplA.exit.thread:                ; preds = %bb.c, %.loopexit.i, %uriRemoveBaseUriImplA.exit, %bb.b
  %.013 = phi i32 [ 10, %bb.b ], [ %.4.i, %uriRemoveBaseUriImplA.exit ], [ 2, %bb.c ], [ 0, %.loopexit.i ]
  ret i32 %.013
}

declare i32 @uriMemoryManagerIsComplete(ptr noundef) local_unnamed_addr #1

declare i32 @uriFreeUriMembersMmA(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriRemoveBaseUriW(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriRemoveBaseUriMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriRemoveBaseUriMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %4) #3
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %uriRemoveBaseUriImplW.exit.thread

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %4, %bb.b ], [ @defaultMemoryManager, %bb.a ] ; 17 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %uriRemoveBaseUriImplW.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uriResetUriW(ptr noundef nonnull %0) #3
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %uriRemoveBaseUriImplW.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %2, align 8, !tbaa !50
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %uriRemoveBaseUriImplW.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %1, align 8, !tbaa !50
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %uriRemoveBaseUriImplW.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call zeroext i1 @uriRangeEqualsW(ptr noundef nonnull %1, ptr noundef nonnull %2) #3
  br i1 %i.j, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !52
  %i.k = tail call i32 @uriCopyAuthorityW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %uriRemoveBaseUriImplW.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @uriCopyPathW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not93.i = icmp eq i32 %i.l, 0
  br i1 %.not93.i, label %uriRemoveBaseUriImplW.exit, label %.loopexit.i

bb.j:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %.not23.i.i = icmp eq ptr %i.p, null
  br i1 %.not23.i.i, label %uriEqualsAuthorityW.exit.thread.i, label %uriEqualsAuthorityW.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %.not18.i.i = icmp eq ptr %i.r, null
  br i1 %.not18.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %.not21.i.i = icmp eq ptr %i.t, null
  br i1 %.not21.i.i, label %uriEqualsAuthorityW.exit.thread.i, label %.split192.i

.split192.i:                                      ; preds = %bb.m
  %i.u = load i128, ptr %i.r, align 1
  %i.v = load i128, ptr %i.t, align 1
  %i.w = icmp ne i128 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not22.i.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i.i, label %bb.q, label %uriEqualsAuthorityW.exit.thread.i

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %.not19.i.i = icmp eq ptr %i.z, null
  br i1 %.not19.i.i, label %.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %.not20.i.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i.i, label %uriEqualsAuthorityW.exit.thread.i, label %.split191.i

.split191.i:                                      ; preds = %bb.o
  %i.ac = tail call zeroext i1 @uriRangeEqualsW(ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa) #3
  br i1 %i.ac, label %bb.q, label %uriEqualsAuthorityW.exit.thread.i

.split.i:                                         ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = tail call zeroext i1 @uriRangeEqualsW(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #3
  br i1 %i.af, label %bb.q, label %uriEqualsAuthorityW.exit.thread.i

uriEqualsAuthorityW.exit.i:                       ; preds = %bb.k
  %i.ag = load i32, ptr %i.n, align 1
  %i.ah = load i32, ptr %i.p, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not25.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not25.i.i, label %bb.q, label %uriEqualsAuthorityW.exit.thread.i

uriEqualsAuthorityW.exit.thread.i:                ; preds = %uriEqualsAuthorityW.exit.i, %.split.i, %.split191.i, %bb.o, %.split192.i, %bb.m, %bb.k
  %i.ak = tail call i32 @uriCopyAuthorityW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not95.i = icmp eq i32 %i.ak, 0
  br i1 %.not95.i, label %uriRemoveBaseUriImplW.exit, label %bb.p

bb.p:                                             ; preds = %uriEqualsAuthorityW.exit.thread.i
  %i.al = tail call i32 @uriCopyPathW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not96.i = icmp eq i32 %i.al, 0
  br i1 %.not96.i, label %uriRemoveBaseUriImplW.exit, label %.loopexit.i

bb.q:                                             ; preds = %uriEqualsAuthorityW.exit.i, %.split.i, %.split191.i, %.split192.i
  %i.am = icmp eq i32 %3, 1
  br i1 %i.am, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.an = tail call i32 @uriCopyPathW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.0) #3
  %.not106.i = icmp eq i32 %i.an, 0
  br i1 %.not106.i, label %uriRemoveBaseUriImplW.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ao, align 8, !tbaa !56
  %i.ap = tail call i32 @uriFixAmbiguityW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #3
  %.not107.i = icmp eq i32 %i.ap, 0
  br i1 %.not107.i, label %uriRemoveBaseUriImplW.exit, label %.loopexit.i

bb.t:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.au, align 8, !tbaa !56
  %i.av = icmp ne ptr %i.ar, null
  %i.aw = icmp ne ptr %i.at, null
  %or.cond3137.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond3137.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.t, %.critedge109.i
  %.083139.i = phi ptr [ %i.bj, %.critedge109.i ], [ %i.at, %bb.t ] ; 5 uses
  %.085138.i = phi ptr [ %i.bd, %.critedge109.i ], [ %i.ar, %bb.t ] ; 6 uses
  %i.ax = tail call zeroext i1 @uriRangeEqualsW(ptr noundef nonnull %.085138.i, ptr noundef nonnull %.083139.i) #3
  br i1 %i.ax, label %bb.u, label %.lr.ph149.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.ay = load ptr, ptr %.085138.i, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %.085138.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.bb = icmp eq ptr %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.085138.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !61 ; 4 uses
  br i1 %i.bb, label %bb.v, label %..critedge109_crit_edge.i

..critedge109_crit_edge.i:                        ; preds = %bb.u
  %.phi.trans.insert163.i = getelementptr inbounds nuw i8, ptr %.083139.i, i64 16
  %.pre164.i = load ptr, ptr %.phi.trans.insert163.i, align 8, !tbaa !61
  br label %.critedge109.i

bb.v:                                             ; preds = %bb.u
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = getelementptr inbounds nuw i8, ptr %.083139.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = xor i1 %i.be, %i.bh
  br i1 %i.bi, label %.critedge109.i, label %.lr.ph149.i

.critedge109.i:                                   ; preds = %bb.v, %..critedge109_crit_edge.i
  %i.bj = phi ptr [ %.pre164.i, %..critedge109_crit_edge.i ], [ %i.bg, %bb.v ] ; 3 uses
  %i.bk = icmp ne ptr %i.bd, null
  %i.bl = icmp ne ptr %i.bj, null
  %or.cond3.i = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond3.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !41

.critedge.i:                                      ; preds = %.critedge109.i, %bb.t
  %.085.lcssa.i = phi ptr [ %i.ar, %bb.t ], [ %i.bd, %.critedge109.i ] ; 2 uses
  %.083.lcssa.i = phi ptr [ %i.at, %bb.t ], [ %i.bj, %.critedge109.i ] ; 2 uses
  %.not97147.i = icmp eq ptr %.083.lcssa.i, null
  br i1 %.not97147.i, label %.critedge5.i, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %bb.v, %.lr.ph.i, %.critedge.i
  %.083.lcssa198.i = phi ptr [ %.083.lcssa.i, %.critedge.i ], [ %.083139.i, %.lr.ph.i ], [ %.083139.i, %bb.v ]
  %.085.lcssa196.i = phi ptr [ %.085.lcssa.i, %.critedge.i ], [ %.085138.i, %.lr.ph.i ], [ %.085138.i, %bb.v ] ; 3 uses
  %i.bm = load ptr, ptr @uriConstParentW, align 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.083.lcssa198.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 2 uses
  %.not98.peel.i = icmp eq ptr %i.br, null
  br i1 %.not98.peel.i, label %.critedge5.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph149.i
  %i.bs = load ptr, ptr %.0, align 8, !tbaa !17
  %i.bt = tail call ptr %i.bs(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !42 ; 7 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %uriRemoveBaseUriImplW.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr null, ptr %i.bv, align 8, !tbaa !61
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bn, ptr %i.bw, align 8, !tbaa !60
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bt, ptr %i.bz, align 8, !tbaa !61
  br label %.peel.next.i

bb.z:                                             ; preds = %bb.x
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !57
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.z, %bb.y
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 2 uses
  %.not98.i22 = icmp eq ptr %i.cb, null
  br i1 %.not98.i22, label %.critedge5.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.peel.next.i
  %5 = insertelement <2 x ptr> poison, ptr %i.bm, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.bn, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %uriAppendSegmentW.exit.i
  %i.cc = phi ptr [ %i.cl, %uriAppendSegmentW.exit.i ], [ %i.cb, %.lr.ph.preheader ]
  %i.cd = load ptr, ptr %.0, align 8, !tbaa !17
  %i.ce = tail call ptr %i.cd(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !42 ; 6 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %uriRemoveBaseUriImplW.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr null, ptr %i.cg, align 8, !tbaa !61
  store <2 x ptr> %6, ptr %i.ce, align 8, !tbaa !51
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ce, ptr %i.bp, align 8, !tbaa !57
  br label %uriAppendSegmentW.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !61
  br label %uriAppendSegmentW.exit.i

uriAppendSegmentW.exit.i:                         ; preds = %bb.ac, %bb.ab
  store ptr %i.ce, ptr %i.bo, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !61 ; 2 uses
  %.not98.i = icmp eq ptr %i.cl, null
  br i1 %.not98.i, label %.critedge5.i, label %.lr.ph

.critedge5.i:                                     ; preds = %uriAppendSegmentW.exit.i, %.peel.next.i, %.lr.ph149.i, %.critedge.i
  %.085.lcssa197.i = phi ptr [ %.085.lcssa.i, %.critedge.i ], [ %.085.lcssa196.i, %.lr.ph149.i ], [ %.085.lcssa196.i, %.peel.next.i ], [ %.085.lcssa196.i, %uriAppendSegmentW.exit.i ] ; 2 uses
  %.lcssa135.i = phi i1 [ true, %.critedge.i ], [ true, %.lr.ph149.i ], [ false, %.peel.next.i ], [ false, %uriAppendSegmentW.exit.i ]
  %.not99157.i = icmp eq ptr %.085.lcssa197.i, null
  br i1 %.not99157.i, label %.loopexit.i, label %.lr.ph160.i

.lr.ph160.i:                                      ; preds = %.critedge5.i
  %i.cm = load ptr, ptr @uriConstPwdW, align 8    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %7 = insertelement <2 x ptr> poison, ptr %i.cm, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.cn, i64 1 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ar, %.lr.ph160.i
  %.182159.i = phi i1 [ %.lcssa135.i, %.lr.ph160.i ], [ false, %bb.ar ]
  %.186158.i = phi ptr [ %.085.lcssa197.i, %.lr.ph160.i ], [ %i.dw, %bb.ar ] ; 5 uses
  %.pre27 = load ptr, ptr %.186158.i, align 8, !tbaa !59 ; 5 uses
  br i1 %.182159.i, label %bb.ae, label %.critedge113.i

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %.186158.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !60 ; 3 uses
  %.not101153.i = icmp ult ptr %.pre27, %i.cr
  br i1 %.not101153.i, label %.lr.ph155.i, label %.critedge111.i

bb.af:                                            ; preds = %.lr.ph155.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0154.i, i64 4 ; 2 uses
  %.not101.i = icmp ult ptr %i.cs, %i.cr
  br i1 %.not101.i, label %.lr.ph155.i, label %.critedge111.i, !llvm.loop !43

.lr.ph155.i:                                      ; preds = %bb.ae, %bb.af
  %.0154.i = phi ptr [ %i.cs, %bb.af ], [ %.pre27, %bb.ae ] ; 2 uses
  %i.ct = load i32, ptr %.0154.i, align 4, !tbaa !63
  %i.cu = icmp eq i32 %i.ct, 58
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.ag:                                            ; preds = %.lr.ph155.i
  %i.cv = load ptr, ptr %.0, align 8, !tbaa !17
  %i.cw = tail call ptr %i.cv(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !42 ; 7 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %uriRemoveBaseUriImplW.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr null, ptr %i.cy, align 8, !tbaa !61
  store <2 x ptr> %8, ptr %i.cw, align 8, !tbaa !51
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !62 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.cw, ptr %i.cp, align 8, !tbaa !57
  br label %.critedge113.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !61
  br label %.critedge113.sink.split.i

.critedge111.i:                                   ; preds = %bb.af, %bb.ae
  %i.dc = icmp eq ptr %.pre27, %i.cr
  br i1 %i.dc, label %bb.ak, label %.critedge113.i

bb.ak:                                            ; preds = %.critedge111.i
  %i.dd = load ptr, ptr %.0, align 8, !tbaa !17
  %i.de = tail call ptr %i.dd(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !42 ; 7 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %uriRemoveBaseUriImplW.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr null, ptr %i.dg, align 8, !tbaa !61
  store <2 x ptr> %8, ptr %i.de, align 8, !tbaa !51
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !62 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !57
  br label %.critedge113.sink.split.i

bb.an:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.de, ptr %i.dj, align 8, !tbaa !61
  br label %.critedge113.sink.split.i

.critedge113.sink.split.i:                        ; preds = %bb.an, %bb.am, %bb.aj, %bb.ai
  %.sink203.i = phi ptr [ %i.cw, %bb.aj ], [ %i.cw, %bb.ai ], [ %i.de, %bb.am ], [ %i.de, %bb.an ]
  store ptr %.sink203.i, ptr %i.co, align 8, !tbaa !62
  %.pre = load ptr, ptr %.186158.i, align 8, !tbaa !59
  br label %.critedge113.i

.critedge113.i:                                   ; preds = %.critedge113.sink.split.i, %.critedge111.i, %bb.ad
  %i.dk = phi ptr [ %.pre, %.critedge113.sink.split.i ], [ %.pre27, %.critedge111.i ], [ %.pre27, %bb.ad ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.186158.i, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.dn = load ptr, ptr %.0, align 8, !tbaa !17
  %i.do = tail call ptr %i.dn(ptr noundef nonnull %.0, i64 noundef 32) #3, !inline_history !42 ; 7 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %uriRemoveBaseUriImplW.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge113.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr null, ptr %i.dq, align 8, !tbaa !61
  store ptr %i.dk, ptr %i.do, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dm, ptr %i.dr, align 8, !tbaa !60
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !62 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.do, ptr %i.cp, align 8, !tbaa !57
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.do, ptr %i.du, align 8, !tbaa !61
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store ptr %i.do, ptr %i.co, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %.186158.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !61 ; 2 uses
  %.not99.i = icmp eq ptr %i.dw, null
  br i1 %.not99.i, label %.loopexit.i, label %bb.ad, !llvm.loop !44

.loopexit.i:                                      ; preds = %bb.ar, %.critedge5.i, %bb.s, %bb.p, %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !52
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !52
  br label %uriRemoveBaseUriImplW.exit.thread

uriRemoveBaseUriImplW.exit:                       ; preds = %.lr.ph, %.critedge113.i, %bb.ak, %bb.ag, %bb.w, %bb.s, %bb.r, %bb.p, %uriEqualsAuthorityW.exit.thread.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.4.i = phi i32 [ 7, %bb.f ], [ 3, %bb.w ], [ 2, %bb.d ], [ 6, %bb.e ], [ 3, %.critedge113.i ], [ 3, %bb.r ], [ 3, %bb.p ], [ 3, %bb.s ], [ 3, %uriEqualsAuthorityW.exit.thread.i ], [ 3, %bb.i ], [ 3, %bb.h ], [ 3, %bb.ag ], [ 3, %bb.ak ], [ 3, %.lr.ph ]
  %i.eb = tail call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %0, ptr noundef nonnull %.0) #3 ; 0 uses
  br label %uriRemoveBaseUriImplW.exit.thread

uriRemoveBaseUriImplW.exit.thread:                ; preds = %bb.c, %.loopexit.i, %uriRemoveBaseUriImplW.exit, %bb.b
  %.013 = phi i32 [ 10, %bb.b ], [ %.4.i, %uriRemoveBaseUriImplW.exit ], [ 2, %bb.c ], [ 0, %.loopexit.i ]
  ret i32 %.013
}

declare i32 @uriFreeUriMembersMmW(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uriResetUriA(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @uriRangeEqualsA(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @uriCopyAuthorityA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriCopyPathA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriFixAmbiguityA(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uriResetUriW(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @uriRangeEqualsW(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriCopyAuthorityW(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriCopyPathW(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriFixAmbiguityW(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS12UriIp4Struct", !12, i64 0}
!14 = !{!"p1 _ZTS12UriIp6Struct", !12, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"UriMemoryManagerStruct", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!17 = !{!16, !12, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{null, null}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"UriTextRangeStructA", !22, i64 0, !22, i64 8}
!24 = !{!"UriHostDataStructA", !13, i64 0, !14, i64 8, !23, i64 16}
!25 = !{!"p1 _ZTS21UriPathSegmentStructA", !12, i64 0}
!26 = !{!"UriUriStructA", !23, i64 0, !23, i64 16, !23, i64 32, !24, i64 48, !23, i64 80, !25, i64 96, !25, i64 104, !23, i64 112, !23, i64 128, !9, i64 144, !9, i64 148, !12, i64 152}
!27 = !{!26, !22, i64 0}
!28 = !{!22, !22, i64 0}
!29 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!30 = !{!26, !13, i64 48}
!31 = !{!26, !14, i64 56}
!32 = !{!26, !22, i64 64}
!33 = !{!26, !9, i64 144}
!34 = !{!26, !25, i64 96}
!35 = !{!"UriPathSegmentStructA", !23, i64 0, !25, i64 16, !12, i64 24}
!36 = !{!35, !22, i64 0}
!37 = !{!35, !22, i64 8}
!38 = !{!35, !25, i64 16}
!39 = !{!26, !25, i64 104}
!40 = !{!8, !8, i64 0}
!41 = distinct !{!41, !15}
!42 = distinct !{null, null}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = !{!"p1 int", !12, i64 0}
!46 = !{!"UriTextRangeStructW", !45, i64 0, !45, i64 8}
!47 = !{!"UriHostDataStructW", !13, i64 0, !14, i64 8, !46, i64 16}
!48 = !{!"p1 _ZTS21UriPathSegmentStructW", !12, i64 0}
!49 = !{!"UriUriStructW", !46, i64 0, !46, i64 16, !46, i64 32, !47, i64 48, !46, i64 80, !48, i64 96, !48, i64 104, !46, i64 112, !46, i64 128, !9, i64 144, !9, i64 148, !12, i64 152}
!50 = !{!49, !45, i64 0}
!51 = !{!45, !45, i64 0}
!52 = !{i64 0, i64 8, !51, i64 8, i64 8, !51}
!53 = !{!49, !13, i64 48}
!54 = !{!49, !14, i64 56}
!55 = !{!49, !45, i64 64}
!56 = !{!49, !9, i64 144}
!57 = !{!49, !48, i64 96}
!58 = !{!"UriPathSegmentStructW", !46, i64 0, !48, i64 16, !12, i64 24}
!59 = !{!58, !45, i64 0}
!60 = !{!58, !45, i64 8}
!61 = !{!58, !48, i64 16}
!62 = !{!49, !48, i64 104}
!63 = !{!9, !9, i64 0}
end_hunk_0
