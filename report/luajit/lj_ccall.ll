Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_ccall?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @lj_ccall_func(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = alloca [2 x i64], align 16               ; 9 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 8 uses
  %2 = alloca %struct.CCallState, align 16        ; 19 uses
  %3 = alloca %union.TValue, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = inttoptr i64 %i.j to ptr                 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %0, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = load i16, ptr %i.m, align 2, !tbaa !50
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.p = zext i16 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pn ; 3 uses
  %i.q = load i32, ptr %.0.i, align 8, !tbaa !25  ; 5 uses
  %i.r = icmp slt i32 %i.q, -1879048192
  %i.s = and i32 %i.q, 65535
  %i.t = zext nneg i32 %i.s to i64
  br i1 %i.r, label %bb.b, label %ctype_raw.exit, !llvm.loop !30

ctype_raw.exit:                                   ; preds = %bb.b
  %.mask = and i32 %i.q, -268435456
  switch i32 %.mask, label %bb.cc [
    i32 536870912, label %bb.c
    i32 1610612736, label %.thread
  ]

bb.c:                                             ; preds = %ctype_raw.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.w = phi i32 [ %i.q, %bb.c ], [ %i.aa, %bb.d ]
  %i.x = and i32 %i.w, 65535                      ; 3 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.y ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !25  ; 5 uses
  %i.ab = icmp slt i32 %i.aa, -1879048192
  br i1 %i.ab, label %bb.d, label %ctype_rawchild.exit, !llvm.loop !0

ctype_rawchild.exit:                              ; preds = %bb.d
  %.mask32 = and i32 %i.aa, -268435456
  %i.ac = icmp eq i32 %.mask32, 1610612736
  br i1 %i.ac, label %bb.e, label %bb.cc

.thread:                                          ; preds = %ctype_raw.exit
  %i.ad = trunc nuw nsw i64 %.pn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.e:                                             ; preds = %ctype_rawchild.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = icmp eq i32 %i.v, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ai = zext i32 %i.ah to i64
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %cdata_getptr.exit

bb.g:                                             ; preds = %.thread, %bb.e
  %i.ak = phi i32 [ %i.q, %.thread ], [ %i.aa, %bb.e ]
  %i.al = phi ptr [ %i.ae, %.thread ], [ %i.af, %bb.e ]
  %i.am = phi i32 [ %i.ad, %.thread ], [ %i.x, %bb.e ]
  %.0304550 = phi ptr [ %.0.i, %.thread ], [ %i.z, %bb.e ]
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !51
  br label %cdata_getptr.exit

cdata_getptr.exit:                                ; preds = %bb.f, %bb.g
  %i.ao = phi i32 [ %i.aa, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ap = phi i32 [ %i.x, %bb.f ], [ %i.am, %bb.g ]
  %.0304549 = phi ptr [ %i.z, %bb.f ], [ %.0304550, %bb.g ] ; 2 uses
  %.0.i35 = phi ptr [ %i.aj, %bb.f ], [ %i.an, %bb.g ]
  store ptr %.0.i35, ptr %2, align 16, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.as, i8 0, i64 176, i1 false)
  %.pre.i = load i32, ptr %.0304549, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %cdata_getptr.exit
  %i.at = phi i32 [ %.pre.i, %cdata_getptr.exit ], [ %i.ax, %bb.h ]
  %i.au = and i32 %i.at, 65535
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.av ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !25 ; 5 uses
  %i.ay = icmp slt i32 %i.ax, -1879048192
  br i1 %i.ay, label %bb.h, label %ctype_rawchild.exit.i, !llvm.loop !0

ctype_rawchild.exit.i:                            ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 7 uses
  %i.ba = and i32 %i.ax, -134217728
  %i.bb = icmp eq i32 %i.ba, 939524096
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ctype_rawchild.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !26
  switch i32 %i.bd, label %.loopexit.i [
    i32 8, label %bb.p
    i32 16, label %bb.p
  ]

bb.j:                                             ; preds = %ctype_rawchild.exit.i
  %i.be = and i32 %i.ax, -201326592
  %i.bf = icmp eq i32 %i.be, 872415232
  %.mask.i = and i32 %i.ax, -268435456
  %i.bg = icmp eq i32 %.mask.i, 268435456
  %or.cond213.i = or i1 %i.bf, %i.bg
  br i1 %or.cond213.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !26
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 16
  %i.bl = tail call ptr @lj_mem_newgco(ptr noundef nonnull %0, i64 noundef %i.bk) #6 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  store i8 10, ptr %i.bm, align 1, !tbaa !55
  %i.bn = trunc i32 %i.ao to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.aq, align 8, !tbaa !54
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = or i64 %i.bs, -1548112371908608
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !10
  %i.bu = load i32, ptr %i.aw, align 8, !tbaa !25
  %.mask202.i = and i32 %i.bu, -268435456
  %i.bv = icmp eq i32 %.mask202.i, 268435456
  br i1 %i.bv, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !28
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.bx = call fastcc i32 @ccall_classify_struct(ptr noundef nonnull %i.k, ptr noundef nonnull %i.aw, ptr noundef %i.d, i32 noundef 0)
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = ptrtoint ptr %i.bp to i64
  store i64 %i.by, ptr %i.az, align 16, !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink.i = phi i8 [ 1, %bb.m ], [ 0, %bb.l ]
  %.0185.i = phi i32 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %.sink.i, ptr %i.bz, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 0, ptr %i.ca, align 1, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.i, %bb.i
  %.2187.i = phi i32 [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.0185.i, %bb.n ], [ 0, %bb.o ]
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.pn246.i = phi ptr [ %.0304549, %bb.p ], [ %i.cd, %bb.r ]
  %.0165.in.in.i = getelementptr inbounds nuw i8, ptr %.pn246.i, i64 8
  %.0165.in.i = load i16, ptr %.0165.in.in.i, align 8, !tbaa !29 ; 3 uses
  %.not203.i = icmp eq i16 %.0165.in.i, 0
  br i1 %.not203.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.cc = zext i16 %.0165.in.i to i64
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !25
  %i.cf = icmp slt i32 %i.ce, -1879048192
  br i1 %i.cf, label %bb.q, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.0165.in.i.lcssa = phi i16 [ %.0165.in.i, %bb.r ], [ 0, %bb.q ]
  %.0165.le.i = zext i16 %.0165.in.i.lcssa to i32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58
  %.0159259.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ci = icmp ult ptr %.0159259.i, %i.ar
  br i1 %i.ci, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread.i
  %i.cj = and i32 %i.ao, 8388608
  %.not207.i = icmp eq i32 %i.cj, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.bj, %.lr.ph.i
  %.0159268.i = phi ptr [ %.0159259.i, %.lr.ph.i ], [ %.0159.i, %bb.bj ] ; 4 uses
  %.3168267.i = phi i32 [ %.0165.le.i, %.lr.ph.i ], [ %.4169.i, %bb.bj ] ; 2 uses
  %.0174266.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.bj ] ; 5 uses
  %.0179262.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ib, %bb.bj ] ; 3 uses
  %.0180261.i = phi i32 [ 0, %.lr.ph.i ], [ %.4184.i, %bb.bj ] ; 4 uses
  %.3188260.i = phi i32 [ %.2187.i, %.lr.ph.i ], [ %.7.i, %bb.bj ] ; 5 uses
  %.not206.i = icmp eq i32 %.3168267.i, 0
  br i1 %.not206.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.cr = zext nneg i32 %.3168267.i to i64
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !29
  %i.cv = zext i16 %i.cu to i32
  %i.cw = load i32, ptr %i.cs, align 8, !tbaa !25
  %i.cx = and i32 %i.cw, 65535
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  br i1 %.not207.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @lj_err_caller(ptr noundef %0, i32 noundef 3585) #7
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cy = call i32 @lj_ccall_ctid_vararg(ptr noundef nonnull %i.k, ptr noundef nonnull %.0159268.i)
  %.pre275.i = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.cz = phi ptr [ %i.cq, %bb.t ], [ %.pre275.i, %bb.w ]
  %.0170.i = phi i32 [ %i.cx, %bb.t ], [ %i.cy, %bb.w ]
  %.4169.i = phi i32 [ %i.cv, %bb.t ], [ 0, %bb.w ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.pn247.in.i = phi i32 [ %.0170.i, %bb.x ], [ %i.dc, %bb.y ]
  %.pn247.i = zext i32 %.pn247.in.i to i64
  %.0.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %.pn247.i ; 8 uses
  %i.da = load i32, ptr %.0.i.i, align 8, !tbaa !25 ; 8 uses
  %i.db = icmp slt i32 %i.da, -1879048192
  %i.dc = and i32 %i.da, 65535
  br i1 %i.db, label %bb.y, label %ctype_raw.exit.i, !llvm.loop !30

ctype_raw.exit.i:                                 ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !26 ; 6 uses
  %i.df = lshr i32 %i.da, 28                      ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %ctype_raw.exit.i
  %i.dh = icmp ugt i32 %i.de, 8
  br i1 %i.dh, label %.loopexit.i, label %.split.i

.split.i:                                         ; preds = %bb.z
  %i.di = and i32 %i.da, 67108864
  %.not210.i = icmp eq i32 %i.di, 0
  %i.dj = add nuw nsw i32 %i.de, 7                ; 3 uses
  %i.dk = lshr i32 %i.dj, 3                       ; 3 uses
  br i1 %.not210.i, label %.thread295.i, label %.split._crit_edge.i

bb.aa:                                            ; preds = %ctype_raw.exit.i
  %i.dl = and i32 %i.da, -134217728
  %i.dm = icmp eq i32 %i.dl, 939524096
  br i1 %i.dm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.de, label %.loopexit.i [
    i32 16, label %.thread239.i
    i32 8, label %.thread239.i
  ]

bb.ac:                                            ; preds = %bb.aa
  %i.dn = icmp eq i32 %i.df, 1
  br i1 %i.dn, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.ck, align 4, !tbaa !28
  store i32 0, ptr %i.e, align 4, !tbaa !28
  %i.do = call fastcc i32 @ccall_classify_struct(ptr noundef nonnull %i.k, ptr noundef nonnull %.0.i.i, ptr noundef %i.e, i32 noundef 0)
  %.not208.i = icmp eq i32 %i.do, 0
  br i1 %.not208.i, label %bb.ae, label %.thread243.i

.thread243.i:                                     ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.dp = add i32 %i.de, 7                        ; 2 uses
  %i.dq = lshr i32 %i.dp, 3
  %.pre277.i = load i32, ptr %.0.i.i, align 8, !tbaa !25
  br label %bb.av

bb.ae:                                            ; preds = %bb.ad
  %i.dr = trunc i32 %.0180261.i to i8
  store i8 %i.dr, ptr %i.cl, align 4, !tbaa !59
  %i.ds = trunc nuw i32 %.3188260.i to i8
  store i8 %i.ds, ptr %i.cm, align 2, !tbaa !60
  %i.dt = trunc nuw i32 %.0174266.i to i8
  store i8 %i.dt, ptr %i.cn, align 1, !tbaa !61
  %.val.i = load i32, ptr %i.e, align 4           ; 2 uses
  %.val217.i = load i32, ptr %i.ck, align 4       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.du = shl i32 %.0179262.i, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @lj_cconv_ct_tv(ptr noundef nonnull %i.k, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %.0159268.i, i32 noundef %i.du) #6
  %i.dv = load i8, ptr %i.cm, align 2, !tbaa !60  ; 3 uses
  %i.dw = zext i8 %i.dv to i32                    ; 4 uses
  %i.dx = load i8, ptr %i.cn, align 1, !tbaa !61  ; 3 uses
  %i.dy = zext i8 %i.dx to i32                    ; 4 uses
  %i.dz = and i32 %.val.i, 1
  %.not.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp ugt i8 %i.dv, 5
  br i1 %i.ea, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = load i64, ptr %i.c, align 16, !tbaa !56
  %i.ec = add nuw nsw i32 %i.dw, 1
  %i.ed = zext nneg i8 %i.dv to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ed
  store i64 %i.eb, ptr %i.ee, align 8, !tbaa !56
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.ef = and i32 %.val.i, 2
  %.not26.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not26.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = icmp ugt i8 %i.dx, 7
  br i1 %i.eg, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i64, ptr %i.c, align 16, !tbaa !56
  %i.ei = add nuw nsw i32 %i.dy, 1
  %i.ej = zext nneg i8 %i.dx to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ej
  store i64 %i.eh, ptr %i.ek, align 16, !tbaa !10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %.124.i.i.i = phi i32 [ %i.ec, %bb.ag ], [ %i.dw, %bb.aj ], [ %i.dw, %bb.ah ] ; 5 uses
  %.1.i.i.i = phi i32 [ %i.dy, %bb.ag ], [ %i.ei, %bb.aj ], [ %i.dy, %bb.ah ] ; 5 uses
  %i.el = and i32 %.val217.i, 1
  %.not.1.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.1.i.i.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = icmp samesign ugt i32 %.124.i.i.i, 5
  br i1 %i.em, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = load i64, ptr %i.co, align 8, !tbaa !56
  %i.eo = add nuw nsw i32 %.124.i.i.i, 1
  %i.ep = zext nneg i32 %.124.i.i.i to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ep
  store i64 %i.en, ptr %i.eq, align 8, !tbaa !56
  br label %ccall_struct_reg.exit.i.i

bb.an:                                            ; preds = %bb.ak
  %i.er = and i32 %.val217.i, 2
  %.not26.1.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not26.1.i.i.i, label %ccall_struct_reg.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = icmp samesign ugt i32 %.1.i.i.i, 7
  br i1 %i.es, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = load i64, ptr %i.co, align 8, !tbaa !56
  %i.eu = add nuw nsw i32 %.1.i.i.i, 1
  %i.ev = zext nneg i32 %.1.i.i.i to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ev
  store i64 %i.et, ptr %i.ew, align 16, !tbaa !10
  br label %ccall_struct_reg.exit.i.i

ccall_struct_reg.exit.i.i:                        ; preds = %bb.ap, %bb.an, %bb.am
end_hunk_0
