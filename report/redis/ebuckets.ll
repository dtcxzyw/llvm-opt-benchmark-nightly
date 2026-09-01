Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ebuckets?download=true
inline.NumInlined: 125
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ebValidate:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ac = and i16 %i.q, 4
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %.loopexit54.i, !prof !63

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not37.peel.i = icmp eq ptr %i.af, null
  br i1 %.not37.peel.i, label %.loopexit55.i, label %bb.n, !prof !76

bb.k:                                             ; preds = %bb.g
  br i1 %.not38.peel.i, label %.loopexit56.i, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ag = and i16 %i.q, 4
  %.not39.peel.i = icmp eq i16 %i.ag, 0
  br i1 %.not39.peel.i, label %.loopexit57.i, label %bb.m, !prof !76

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %ebValidateList.exit, label %.loopexit58.i, !prof !63

bb.n:                                             ; preds = %bb.j
  %.not68.i = icmp eq i16 %i.z, 0
  br i1 %.not68.i, label %ebValidateList.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.aa
  %.044.i = phi i32 [ %i.bt, %bb.aa ], [ 1, %bb.n ] ; 2 uses
  %.02943.i = phi ptr [ %.1.i, %bb.aa ], [ %i.o, %bb.n ] ; 3 uses
  %.03042.i = phi ptr [ %.131.i, %bb.aa ], [ %i.af, %bb.n ] ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !16
  %i.al = tail call ptr %i.ak(ptr noundef %.03042.i) #8, !inline_history !101 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %i.an = load i16, ptr %i.am, align 2            ; 6 uses
  %i.ao = and i16 %i.an, 256
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %.loopexit47.i, !prof !63

.loopexit47.i:                                    ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 739) #8
  tail call void @abort() #10
  unreachable

bb.o:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 742) #8
  tail call void @abort() #10
  unreachable

bb.p:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 743) #8
  tail call void @abort() #10
  unreachable

bb.q:                                             ; preds = %.lr.ph.i
  %.029.val.i = load i32, ptr %.02943.i, align 8, !tbaa !22
  %i.aq = getelementptr i8, ptr %.02943.i, i64 4
  %.029.val41.i = load i16, ptr %i.aq, align 4, !tbaa !25
  %i.ar = zext i16 %.029.val41.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 32
  %i.at = zext i32 %.029.val.i to i64
  %i.au = or disjoint i64 %i.as, %i.at
  %.val.i = load i32, ptr %i.al, align 8, !tbaa !22
  %i.av = getelementptr i8, ptr %i.al, i64 4
  %.val40.i = load i16, ptr %i.av, align 4, !tbaa !25
  %i.aw = zext i16 %.val40.i to i64
  %i.ax = shl nuw nsw i64 %i.aw, 32
  %i.ay = zext i32 %.val.i to i64
  %i.az = or disjoint i64 %i.ax, %i.ay
  %.not.i8 = icmp samesign ugt i64 %i.au, %i.az
  br i1 %.not.i8, label %.loopexit48.i, label %bb.r, !prof !76

.loopexit48.i:                                    ; preds = %bb.q
  tail call void @_serverAssert(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 746) #8
  tail call void @abort() #10
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ba = and i16 %i.an, 248
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %.loopexit49.i, !prof !63

.loopexit49.i:                                    ; preds = %bb.r
  tail call void @_serverAssert(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 747) #8
  tail call void @abort() #10
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bc = and i16 %i.an, 2
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %.loopexit50.i, !prof !63

.loopexit50.i:                                    ; preds = %bb.s
  tail call void @_serverAssert(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 748) #8
  tail call void @abort() #10
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.be = load i16, ptr %i.k, align 2
  %i.bf = lshr i16 %i.be, 3
  %i.bg = and i16 %i.bf, 31
  %i.bh = zext nneg i16 %i.bg to i32              ; 2 uses
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = icmp eq i32 %.044.i, %i.bi
  %i.bk = and i16 %i.an, 1
  %.not38.i = icmp eq i16 %i.bk, 0                ; 2 uses
  br i1 %i.bj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %.not38.i, label %.loopexit56.i, label %bb.v, !prof !76

.loopexit56.i:                                    ; preds = %bb.u, %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 753) #8
  tail call void @abort() #10
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bl = and i16 %i.an, 4
  %.not39.i = icmp eq i16 %i.bl, 0
  br i1 %.not39.i, label %.loopexit57.i, label %bb.w, !prof !76

.loopexit57.i:                                    ; preds = %bb.v, %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.2, i32 noundef 754) #8
  tail call void @abort() #10
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aa, label %.loopexit58.i, !prof !63

.loopexit58.i:                                    ; preds = %bb.w, %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 755) #8
  tail call void @abort() #10
  unreachable

bb.x:                                             ; preds = %bb.t
  br i1 %.not38.i, label %bb.y, label %.loopexit53.i, !prof !63

.loopexit53.i:                                    ; preds = %bb.x, %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 757) #8
  tail call void @abort() #10
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bp = and i16 %i.an, 4
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.z, label %.loopexit54.i, !prof !63

.loopexit54.i:                                    ; preds = %bb.y, %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 758) #8
  tail call void @abort() #10
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %.not37.i = icmp eq ptr %i.bs, null
  br i1 %.not37.i, label %.loopexit55.i, label %bb.aa, !prof !76

.loopexit55.i:                                    ; preds = %bb.z, %bb.j
  tail call void @_serverAssert(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2, i32 noundef 759) #8
  tail call void @abort() #10
  unreachable

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.131.i = phi ptr [ %.03042.i, %bb.w ], [ %i.bs, %bb.z ]
  %.1.i = phi ptr [ %.02943.i, %bb.w ], [ %i.al, %bb.z ]
  %i.bt = add nuw nsw i32 %.044.i, 1              ; 2 uses
  %i.bu = icmp samesign ult i32 %i.bt, %i.bh
  br i1 %i.bu, label %.lr.ph.i, label %ebValidateList.exit, !llvm.loop !102

bb.ab:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @raxStart(ptr noundef nonnull %2, ptr noundef nonnull %0) #8
  %i.bv = call i32 @raxSeek(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  %i.bw = call i32 @raxNext(ptr noundef nonnull %2) #8
  %.not157.i = icmp eq i32 %i.bw, 0
  br i1 %.not157.i, label %._crit_edge161.i, label %.lr.ph160.i

.lr.ph160.i:                                      ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ad

bb.ac:                                            ; preds = %bb.bc
  %i.by = add i64 %i.dk, %.074158.i               ; 2 uses
  %i.bz = call i32 @raxNext(ptr noundef nonnull %2) #8
  %.not.i13 = icmp eq i32 %i.bz, 0
  br i1 %.not.i13, label %._crit_edge161.i, label %bb.ad, !llvm.loop !104

bb.ad:                                            ; preds = %bb.ac, %.lr.ph160.i
  %.074158.i = phi i64 [ 0, %.lr.ph160.i ], [ %i.by, %bb.ac ]
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !13 ; 3 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !16
  %i.cd = call ptr %i.cc(ptr noundef %i.cb) #8, !inline_history !105
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 12 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35 ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 2
  %i.ch = load ptr, ptr %1, align 8, !tbaa !16
  %i.ci = call ptr %i.ch(ptr noundef %i.cb) #8, !inline_history !105
  %.not82.i = icmp ugt i32 %i.cf, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ax, %bb.ad
  %.071.i = phi i32 [ 1, %bb.ad ], [ %.172.lcssa.i, %bb.ax ] ; 2 uses
  %.069.i = phi ptr [ %i.cb, %bb.ad ], [ %i.ex, %bb.ax ] ; 2 uses
  %.067.i = phi ptr [ %i.ci, %bb.ad ], [ %.168.lcssa.i, %bb.ax ]
  %.065.i = phi ptr [ %i.cd, %bb.ad ], [ %i.ez, %bb.ax ]
  %.064.i = phi i64 [ 0, %bb.ad ], [ %i.dk, %bb.ax ]
  %.063.i = phi i64 [ 0, %bb.ad ], [ %i.dl, %bb.ax ]
  %.061.i = phi ptr [ %i.ca, %bb.ad ], [ %i.dq, %bb.ax ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.065.i, i64 6 ; 3 uses
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = and i16 %i.ck, 248
  %.not163.i = icmp eq i16 %i.cl, 0
  br i1 %.not163.i, label %._crit_edge.i, label %.lr.ph.preheader.i9

.lr.ph.preheader.i9:                              ; preds = %bb.ae
  %.not79.peel.i = icmp eq ptr %.069.i, null
  br i1 %.not79.peel.i, label %.loopexit.i, label %bb.af, !prof !76

bb.af:                                            ; preds = %.lr.ph.preheader.i9
  %i.cm = load ptr, ptr %1, align 8, !tbaa !16
  %i.cn = call ptr %i.cm(ptr noundef nonnull %.069.i) #8, !inline_history !105 ; 6 uses
  %.val.peel.i = load i32, ptr %i.cn, align 8, !tbaa !22
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %.val85.peel.i = load i16, ptr %i.co, align 4, !tbaa !25
  %i.cp = zext i16 %.val85.peel.i to i64
  %i.cq = shl nuw nsw i64 %i.cp, 32
  %i.cr = zext i32 %.val.peel.i to i64
  %i.cs = or disjoint i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.cu = load i16, ptr %i.ct, align 2            ; 4 uses
  %i.cv = and i16 %i.cu, 256
  %i.cw = icmp eq i16 %i.cv, 0
  br i1 %i.cw, label %bb.ag, label %.loopexit197.i, !prof !63

bb.ag:                                            ; preds = %bb.af
  %i.cx = lshr i16 %i.cu, 3
  %i.cy = and i16 %i.cx, 31
  %i.cz = add nsw i16 %i.cy, -1
  %spec.select.peel.i10 = icmp ult i16 %i.cz, 16
  br i1 %spec.select.peel.i10, label %bb.ah, label %.loopexit210.i, !prof !63

bb.ah:                                            ; preds = %bb.ag
  %i.da = lshr i16 %i.cu, 1
  %i.db = and i16 %i.da, 1
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = icmp eq i32 %.071.i, %i.dc
  br i1 %i.dd, label %bb.ai, label %.loopexit211.i, !prof !63

bb.ai:                                            ; preds = %bb.ah
  %i.de = load i16, ptr %i.cj, align 2
  %i.df = lshr i16 %i.de, 3
  %i.dg = and i16 %i.df, 31                       ; 2 uses
  %i.dh = icmp eq i16 %i.dg, 1
  %i.di = and i16 %i.cu, 1
  %.not81.peel.i = icmp eq i16 %i.di, 0           ; 2 uses
  br i1 %i.dh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not81.peel.i, label %bb.al, label %.loopexit203.i, !prof !63

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not81.peel.i, label %.loopexit204.i, label %._crit_edge.i, !prof !76

bb.al:                                            ; preds = %bb.aj
  %.not255.i = icmp eq i16 %i.dg, 0
  br i1 %.not255.i, label %._crit_edge.i, label %.lr.ph.i11

._crit_edge.loopexit.i.loopexit:                  ; preds = %bb.as
  %i.dj = zext nneg i16 %i.ek to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ak, %bb.al, %._crit_edge.loopexit.i.loopexit, %bb.ae
  %.172.lcssa.i = phi i32 [ %.071.i, %bb.ae ], [ 0, %._crit_edge.loopexit.i.loopexit ], [ 0, %bb.al ], [ 0, %bb.ak ]
  %.168.lcssa.i = phi ptr [ %.067.i, %bb.ae ], [ %i.ds, %._crit_edge.loopexit.i.loopexit ], [ %i.cn, %bb.al ], [ %i.cn, %bb.ak ] ; 3 uses
  %.lcssa.i = phi i64 [ 0, %bb.ae ], [ %i.dj, %._crit_edge.loopexit.i.loopexit ], [ 0, %bb.al ], [ 1, %bb.ak ]
  %i.dk = add i64 %.lcssa.i, %.064.i              ; 3 uses
  %i.dl = add i64 %.063.i, 1                      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.168.lcssa.i, i64 6
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = and i16 %i.dn, 4
  %.not78.i = icmp eq i16 %i.do, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %.168.lcssa.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !27 ; 5 uses
  br i1 %.not78.i, label %bb.at, label %bb.ay

.lr.ph.i11:                                       ; preds = %bb.al, %bb.as
  %.059154.i = phi i32 [ %i.ep, %bb.as ], [ 1, %bb.al ] ; 2 uses
  %.060153.i = phi i64 [ %i.dx, %bb.as ], [ %i.cs, %bb.al ] ; 2 uses
  %.pn.i = phi ptr [ %i.ds, %bb.as ], [ %i.cn, %bb.al ]
  %.170152.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.170152.i = load ptr, ptr %.170152.in.i, align 8, !tbaa !27 ; 2 uses
  %.not79.i = icmp eq ptr %.170152.i, null
  br i1 %.not79.i, label %.loopexit.i, label %bb.am, !prof !76

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i9, %.lr.ph.i11
  call void @_serverAssert(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 1211) #8
  call void @abort() #10
  unreachable

bb.am:                                            ; preds = %.lr.ph.i11
  %i.dr = load ptr, ptr %1, align 8, !tbaa !16
  %i.ds = call ptr %i.dr(ptr noundef nonnull %.170152.i) #8, !inline_history !105 ; 5 uses
  %.val.i12 = load i32, ptr %i.ds, align 8, !tbaa !22
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %.val85.i = load i16, ptr %i.dt, align 4, !tbaa !25
  %i.du = zext i16 %.val85.i to i64
  %i.dv = shl nuw nsw i64 %i.du, 32
  %i.dw = zext i32 %.val.i12 to i64
  %i.dx = or disjoint i64 %i.dv, %i.dw            ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 6
  %i.dz = load i16, ptr %i.dy, align 2            ; 4 uses
  %i.ea = and i16 %i.dz, 256
  %i.eb = icmp eq i16 %i.ea, 0
  br i1 %i.eb, label %bb.an, label %.loopexit197.i, !prof !63

.loopexit197.i:                                   ; preds = %bb.af, %bb.am
  call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 1214) #8
  call void @abort() #10
  unreachable

.loopexit210.i:                                   ; preds = %bb.ag
  call void @_serverAssert(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 1216) #8
  call void @abort() #10
  unreachable

.loopexit211.i:                                   ; preds = %bb.ah
  call void @_serverAssert(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2, i32 noundef 1217) #8
  call void @abort() #10
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.ec = icmp eq i64 %.060153.i, %i.dx
  %or.cond.i = select i1 %.not82.i, i1 %i.ec, i1 false
  %i.ed = icmp ule i64 %.060153.i, %i.dx
  %3 = select i1 %i.cg, i1 %i.ed, i1 false
  %or.cond84.i = select i1 %or.cond.i, i1 true, i1 %3, !prof !106
  br i1 %or.cond84.i, label %.critedge.i, label %.loopexit198.i, !prof !106

.loopexit198.i:                                   ; preds = %bb.an
  call void @_serverAssert(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 1222) #8
  call void @abort() #10
  unreachable

.critedge.i:                                      ; preds = %bb.an
  %i.ee = and i16 %i.dz, 248
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %bb.ao, label %.loopexit199.i, !prof !63

.loopexit199.i:                                   ; preds = %.critedge.i
  call void @_serverAssert(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 1223) #8
  call void @abort() #10
  unreachable

bb.ao:                                            ; preds = %.critedge.i
  %i.eg = and i16 %i.dz, 2
  %i.eh = icmp eq i16 %i.eg, 0
  br i1 %i.eh, label %bb.ap, label %.loopexit200.i, !prof !63

.loopexit200.i:                                   ; preds = %bb.ao
  call void @_serverAssert(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 1224) #8
  call void @abort() #10
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.ei = load i16, ptr %i.cj, align 2
  %i.ej = lshr i16 %i.ei, 3
  %i.ek = and i16 %i.ej, 31                       ; 2 uses
  %i.el = zext nneg i16 %i.ek to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -1
  %i.en = icmp eq i32 %.059154.i, %i.em
  %i.eo = and i16 %i.dz, 1
  %.not81.i = icmp eq i16 %i.eo, 0                ; 2 uses
  br i1 %i.en, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not81.i, label %.loopexit204.i, label %bb.as, !prof !76

.loopexit204.i:                                   ; preds = %bb.ak, %bb.aq
  call void @_serverAssert(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 1229) #8
  call void @abort() #10
  unreachable

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not81.i, label %bb.as, label %.loopexit203.i, !prof !63

.loopexit203.i:                                   ; preds = %bb.aj, %bb.ar
  call void @_serverAssert(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 1231) #8
  call void @abort() #10
  unreachable

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ep = add nuw nsw i32 %.059154.i, 1           ; 2 uses
  %i.eq = icmp samesign ult i32 %i.ep, %i.el
  br i1 %i.eq, label %.lr.ph.i11, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !107

bb.at:                                            ; preds = %._crit_edge.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !59
  %i.et = icmp eq ptr %i.es, %i.ca
  br i1 %i.et, label %bb.av, label %bb.au, !prof !63

bb.au:                                            ; preds = %bb.at
  call void @_serverAssert(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.2, i32 noundef 1243) #8
  call void @abort() #10
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !58
  %i.ew = icmp eq ptr %i.ev, %.061.i
  br i1 %i.ew, label %bb.ax, label %bb.aw, !prof !63

bb.aw:                                            ; preds = %bb.av
  call void @_serverAssert(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2, i32 noundef 1244) #8
  call void @abort() #10
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ex = load ptr, ptr %i.dq, align 8, !tbaa !54 ; 2 uses
  %i.ey = load ptr, ptr %1, align 8, !tbaa !16
  %i.ez = call ptr %i.ey(ptr noundef %i.ex) #8, !inline_history !105
  br label %bb.ae

bb.ay:                                            ; preds = %._crit_edge.i
  %i.fa = icmp eq ptr %i.dq, %.061.i
  br i1 %i.fa, label %bb.ba, label %bb.az, !prof !63

bb.az:                                            ; preds = %bb.ay
  call void @_serverAssert(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1250) #8
  call void @abort() #10
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !31
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp eq i64 %i.dk, %i.fd
  br i1 %i.fe, label %bb.bc, label %bb.bb, !prof !63

bb.bb:                                            ; preds = %bb.ba
  call void @_serverAssert(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 1251) #8
  call void @abort() #10
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ff = load i32, ptr %i.ce, align 4, !tbaa !35
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp eq i64 %i.dl, %i.fg
  br i1 %i.fh, label %bb.ac, label %bb.bd, !prof !63

bb.bd:                                            ; preds = %bb.bc
  call void @_serverAssert(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 1252) #8
  call void @abort() #10
  unreachable

._crit_edge161.i:                                 ; preds = %bb.ac, %bb.ab
  %.074.lcssa.i = phi i64 [ 0, %bb.ab ], [ %i.by, %bb.ac ]
  call void @raxStop(ptr noundef nonnull %2) #8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !34
  %i.fk = icmp eq i64 %.074.lcssa.i, %i.fj
  br i1 %i.fk, label %ebValidateRax.exit, label %bb.be, !prof !63

bb.be:                                            ; preds = %._crit_edge161.i
  call void @_serverAssert(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 1256) #8
  call void @abort() #10
  unreachable

ebValidateRax.exit:                               ; preds = %._crit_edge161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %ebValidateList.exit

ebValidateList.exit:                              ; preds = %bb.aa, %bb.n, %bb.m, %bb.d, %bb.c, %bb.a, %ebValidateRax.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ebDefragRaxNode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !108
  %i.b = load ptr, ptr %0, align 8, !tbaa !110
  %i.c = tail call ptr %i.a(ptr noundef %i.b) #8  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !110
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ebDefragList(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.b, align 8, !tbaa !72
  %.not.i = icmp eq i32 %.val, 0
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, -2
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a   ; 2 uses
  %.not20 = icmp eq ptr %.0.i, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.022 = phi ptr [ %.0.i, %.lr.ph ], [ %i.p, %bb.f ] ; 2 uses
  %.01521 = phi ptr [ null, %.lr.ph ], [ %i.n, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = tail call ptr %i.g(ptr noundef nonnull %.022, ptr noundef %3) #8 ; 5 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not18 = icmp eq ptr %.01521, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01521, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = or i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %0, align 8, !tbaa !30
  br label %bb.f

end_hunk_0
