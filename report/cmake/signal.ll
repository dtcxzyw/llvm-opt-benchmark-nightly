Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/signal?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0_@uv__signal_start:bb.a

bb.j:                                             ; preds = %.split
  call void @abort() #10
  unreachable

bb.k:                                             ; preds = %.split
  store ptr @uv__signal_handler, ptr %5, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.not3.i = icmp eq i32 %3, 0                    ; 2 uses
  %spec.select.i = select i1 %.not3.i, i32 268435456, i32 -1879048192
  store i32 %spec.select.i, ptr %i.y, align 8, !tbaa !40
  %i.z = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %5, ptr noundef null) #9
  %.not4.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i, label %.thread60, label %bb.p

.thread60:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.w

bb.l:                                             ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not30 = icmp eq i32 %3, 0
  br i1 %.not30, label %bb.m, label %.thread52

.thread52:                                        ; preds = %bb.l
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i11.i, i64 88
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35
  %i.ac = and i32 %i.ab, 33554432
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %.thread, label %.split26

.thread:                                          ; preds = %bb.m
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br label %bb.y

.split26:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = call i32 @sigfillset(ptr noundef nonnull %i.ad) #9
  %.not.i38 = icmp eq i32 %i.ae, 0
  br i1 %.not.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split26
  call void @abort() #10
  unreachable

bb.o:                                             ; preds = %.split26
  store ptr @uv__signal_handler, ptr %4, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 268435456, ptr %i.af, align 8, !tbaa !40
  %i.ag = call i32 @sigaction(i32 noundef %2, ptr noundef nonnull %4, ptr noundef null) #9
  %.not4.i39 = icmp eq i32 %i.ag, 0
  br i1 %.not4.i39, label %.thread54.thread, label %.thread54

.thread54.thread:                                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread58

bb.p:                                             ; preds = %bb.k
  %i.ah = tail call ptr @__errno_location() #11
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.not32 = icmp eq i32 %i.ai, 0
  br i1 %.not32, label %bb.w, label %bb.q

.thread54:                                        ; preds = %bb.o
  %i.aj = tail call ptr @__errno_location() #11
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not3256 = icmp eq i32 %i.ak, 0
  br i1 %.not3256, label %.thread58, label %bb.q

.thread58:                                        ; preds = %.thread54.thread, %.thread54
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br label %bb.y

bb.q:                                             ; preds = %.thread54, %bb.p
  %.pn = phi i32 [ %i.ak, %.thread54 ], [ %i.ai, %bb.p ]
  %phi.call57 = sub nsw i32 0, %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 42, ptr %i.b, align 1, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4, !tbaa !12
  %i.am = call i64 @write(i32 noundef %i.al, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.an = and i64 %i.am, 2147483648
  %.not.not.not.not.i.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.not.not.not.i.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call ptr @__errno_location() #11
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = icmp eq i32 %i.ap, 4
  br i1 %i.aq, label %bb.r, label %bb.t, !llvm.loop !1

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @abort() #10
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ar = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %7, ptr noundef null) #9
  %.not1.i = icmp eq i32 %i.ar, 0
  br i1 %.not1.i, label %uv__signal_unlock_and_unblock.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @abort() #10
  unreachable

bb.w:                                             ; preds = %.thread60, %bb.p
  store i32 %2, ptr %i.d, align 8, !tbaa !27
  br i1 %.not3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread52, %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !35
  %i.au = or i32 %i.at, 33554432
  store i32 %i.au, ptr %i.as, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %.thread58, %.thread, %bb.x, %bb.w
  %.02613.i = load ptr, ptr @uv__signal_tree.0, align 8, !tbaa !34 ; 3 uses
  %.not14.i = icmp eq ptr %.02613.i, null
  br i1 %.not14.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %uv__signal_compare.exit.thread5.i, %.lr.ph.i
  %.02615.i = phi ptr [ %.02613.i, %.lr.ph.i ], [ %.026.i, %uv__signal_compare.exit.thread5.i ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02615.i, i64 104
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.az = icmp slt i32 %2, %i.ay
  br i1 %i.az, label %uv__signal_compare.exit.thread5.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = icmp sgt i32 %2, %i.ay
  br i1 %i.ba, label %uv__signal_compare.exit.thread5.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !35
  %i.bc = and i32 %i.bb, 33554432                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02615.i, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !35
  %i.bf = and i32 %i.be, 33554432                 ; 2 uses
  %i.bg = icmp samesign ult i32 %i.bc, %i.bf
  br i1 %i.bg, label %uv__signal_compare.exit.thread5.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = icmp samesign ugt i32 %i.bc, %i.bf
  br i1 %i.bh, label %uv__signal_compare.exit.thread5.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02615.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %uv__signal_compare.exit.thread5.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = icmp ugt ptr %i.bi, %i.bk
  br i1 %i.bm, label %uv__signal_compare.exit.thread5.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = icmp ult ptr %0, %.02615.i
  br i1 %i.bn, label %uv__signal_compare.exit.thread5.i, label %uv__signal_compare.exit.i

uv__signal_compare.exit.i:                        ; preds = %bb.af
  %.not9.i = icmp ugt ptr %0, %.02615.i
  br i1 %.not9.i, label %uv__signal_compare.exit.thread5.i, label %uv__signal_tree_s_RB_INSERT.exit

uv__signal_compare.exit.thread5.i:                ; preds = %uv__signal_compare.exit.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sink.i = phi i64 [ 112, %bb.ad ], [ 112, %bb.af ], [ 112, %bb.z ], [ 112, %bb.ab ], [ 120, %bb.ae ], [ 120, %bb.aa ], [ 120, %bb.ac ], [ 120, %uv__signal_compare.exit.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  %.026.i = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 2 uses
  %.not.i42 = icmp eq ptr %.026.i, null
  br i1 %.not.i42, label %bb.ag, label %bb.z, !llvm.loop !62

bb.ag:                                            ; preds = %uv__signal_compare.exit.thread5.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.02615.i, i64 %.sink.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.02615.i, ptr %i.br, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bs, align 8, !tbaa !31
  store ptr %0, ptr %i.bp, align 8, !tbaa !34
  br label %.lr.ph.i.i43

.thread.i:                                        ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  store ptr %0, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

.lr.ph.i.i43:                                     ; preds = %.backedge.i.i, %bb.ag
  %i.bu = phi ptr [ %i.cl, %.backedge.i.i ], [ %.02613.i, %bb.ag ] ; 9 uses
  %i.bv = phi ptr [ %i.cn, %.backedge.i.i ], [ %.02615.i, %bb.ag ] ; 15 uses
  %.01142.i.i = phi ptr [ %.0114.be.i.i, %.backedge.i.i ], [ %0, %bb.ag ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 136 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !31
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.ah, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i

bb.ah:                                            ; preds = %.lr.ph.i.i43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 19 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 112 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28 ; 4 uses
  %i.ce = icmp eq ptr %i.bv, %i.cd
  br i1 %i.ce, label %bb.ai, label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !29 ; 2 uses
  %.not126.i.i = icmp eq ptr %i.cg, null
  br i1 %.not126.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ch, align 8, !tbaa !31
  store i32 0, ptr %i.bx, align 8, !tbaa !31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  store i32 1, ptr %i.ck, align 8, !tbaa !31
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.bt, %bb.bd, %bb.ba, %bb.ak
  %i.cl = phi ptr [ %i.bu, %bb.ak ], [ %i.bu, %bb.bd ], [ %i.dq, %bb.ba ], [ %i.ex, %bb.bt ] ; 2 uses
  %.0114.be.i.i = phi ptr [ %i.cb, %bb.ak ], [ %i.cb, %bb.bd ], [ %.1115.i.i, %bb.ba ], [ %.2.i.i, %bb.bt ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0114.be.i.i, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !30 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i45, label %uv__signal_tree_s_RB_INSERT_COLOR.exit.i, label %.lr.ph.i.i43, !llvm.loop !63

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 120 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !29 ; 9 uses
  %i.cq = icmp eq ptr %i.cp, %.01142.i.i
  br i1 %i.cq, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 112 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !28 ; 3 uses
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !29
  %.not127.i.i = icmp eq ptr %i.cs, null
  br i1 %.not127.i.i, label %.thread.i.i, label %bb.an

.thread.i.i:                                      ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 128
  store ptr %i.cb, ptr %i.ct, align 8, !tbaa !30
  %.pre18.i = load ptr, ptr %i.ca, align 8, !tbaa !30
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  store ptr %i.bv, ptr %i.cu, align 8, !tbaa !30
  %.pre4.i.i = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 128
  store ptr %.pre4.i.i, ptr %i.cv, align 8, !tbaa !30
  %.not128.i.i = icmp eq ptr %.pre4.i.i, null
  br i1 %.not128.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread.i.i
  %i.cw = phi ptr [ %.pre4.i.i, %bb.an ], [ %.pre18.i, %.thread.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !28
  %i.cz = icmp eq ptr %i.bv, %i.cy
  br i1 %i.cz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.cp, ptr %i.cx, align 8, !tbaa !28
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  store ptr %i.cp, ptr %i.da, align 8, !tbaa !29
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  store ptr %i.cp, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.db = phi ptr [ %i.cp, %bb.ar ], [ %i.bu, %bb.aq ], [ %i.bu, %bb.ap ]
  store ptr %i.bv, ptr %i.cr, align 8, !tbaa !28
  store ptr %i.cp, ptr %i.ca, align 8, !tbaa !30
  %.pre5.i.i = load ptr, ptr %i.cc, align 8, !tbaa !28
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %i.dc = phi ptr [ %i.db, %bb.as ], [ %i.bu, %bb.al ] ; 2 uses
  %i.dd = phi ptr [ %.pre5.i.i, %bb.as ], [ %i.cd, %bb.al ] ; 7 uses
  %.1115.i.i = phi ptr [ %i.bv, %bb.as ], [ %.01142.i.i, %bb.al ]
  %.0.i31.i = phi ptr [ %.01142.i.i, %bb.as ], [ %i.bv, %bb.al ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 136
  store i32 0, ptr %i.de, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  store i32 1, ptr %i.df, align 8, !tbaa !31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29 ; 3 uses
  store ptr %i.dh, ptr %i.cc, align 8, !tbaa !28
  %.not129.i.i = icmp eq ptr %i.dh, null
  br i1 %.not129.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  store ptr %i.cb, ptr %i.di, align 8, !tbaa !30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 128 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !30 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !30
  %.not130.i.i = icmp eq ptr %i.dk, null
  br i1 %.not130.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 112 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28
  %i.do = icmp eq ptr %i.cb, %i.dn
  br i1 %i.do, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.dd, ptr %i.dm, align 8, !tbaa !28
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  store ptr %i.dd, ptr %i.dp, align 8, !tbaa !29
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  store ptr %i.dd, ptr @uv__signal_tree.0, align 8, !tbaa !33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.dq = phi ptr [ %i.dd, %bb.az ], [ %i.dc, %bb.ay ], [ %i.dc, %bb.ax ]
  store ptr %i.cb, ptr %i.dg, align 8, !tbaa !29
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !30
  br label %.backedge.i.i

bb.bb:                                            ; preds = %bb.ah
  %.not121.i.i = icmp eq ptr %i.cd, null
  br i1 %.not121.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cd, i64 136 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !31
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.dr, align 8, !tbaa !31
  store i32 0, ptr %i.bx, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  store i32 1, ptr %i.du, align 8, !tbaa !31
  br label %.backedge.i.i

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.dv = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 9 uses
  %i.dw = icmp eq ptr %i.dv, %.01142.i.i
  br i1 %i.dw, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 120 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !29 ; 3 uses
  store ptr %i.dy, ptr %i.bw, align 8, !tbaa !28
  %.not122.i.i = icmp eq ptr %i.dy, null
  br i1 %.not122.i.i, label %.thread22.i.i, label %bb.bg

.thread22.i.i:                                    ; preds = %bb.bf
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  store ptr %i.cb, ptr %i.dz, align 8, !tbaa !30
  %.pre.i46 = load ptr, ptr %i.ca, align 8, !tbaa !30
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  store ptr %i.bv, ptr %i.ea, align 8, !tbaa !30
  %.pre.i.i = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  store ptr %.pre.i.i, ptr %i.eb, align 8, !tbaa !30
  %.not123.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not123.i.i, label %bb.bk, label %bb.bh

end_hunk_0
