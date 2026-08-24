Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lua_struct?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b_pack:bb.a
  %i.ab = icmp ult ptr %i.aa, %i.i
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ac = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ad = phi ptr [ %.pre, %bb.c ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %1, align 8, !tbaa !15
  store i8 0, ptr %i.ad, align 1, !tbaa !11
  %i.af = icmp samesign ugt i32 %.in, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.d, %bb.b, %gettoalign.exit
  %i.ag = phi i64 [ %.03759, %bb.b ], [ %i.x, %gettoalign.exit ], [ %i.x, %bb.d ]
  switch i8 %i.j, label %bb.r [
    i8 98, label %bb.e
    i8 66, label %bb.e
    i8 104, label %bb.e
    i8 72, label %bb.e
    i8 108, label %bb.e
    i8 76, label %bb.e
    i8 84, label %bb.e
    i8 105, label %bb.e
    i8 73, label %bb.e
    i8 120, label %bb.f
    i8 102, label %bb.i
    i8 100, label %bb.j
    i8 99, label %bb.k
    i8 115, label %bb.k
  ]

bb.e:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.ah = add nsw i32 %.03858, 1
  %i.ai = load i32, ptr %2, align 4, !tbaa !8
  %i.aj = call double @luaL_checknumber(ptr noundef %0, i32 noundef %.03858) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  %i.al = fptosi double %i.aj to i64
  %i.am = fptoui double %i.aj to i64
  %.020.i = select i1 %i.ak, i64 %i.al, i64 %i.am ; 4 uses
  %i.an = icmp eq i32 %i.ai, 1
  %i.ao = icmp sgt i64 %i.n, 0                    ; 2 uses
  br i1 %i.an, label %.preheader.i, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.e
  br i1 %i.ao, label %.lr.ph.i.preheader, label %putinteger.exit

.lr.ph.i.preheader:                               ; preds = %.preheader23.i
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %.225.i.prol = phi i64 [ %i.ar, %.lr.ph.i.prol ], [ %.020.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 3 uses
  %i.ap = trunc i64 %.225.i.prol to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.prol
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !11
  %i.ar = lshr i64 %.225.i.prol, 8                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !20

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.225.i.unr = phi i64 [ %.020.i, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %i.as = icmp ult i64 %i.n, 4
  br i1 %i.as, label %putinteger.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.e
  br i1 %i.ao, label %.lr.ph29.i.preheader, label %putinteger.exit

.lr.ph29.i.preheader:                             ; preds = %.preheader.i
  %xtraiter77 = and i64 %i.n, 3                   ; 3 uses
  %i.at = icmp ult i64 %i.n, 4
  br i1 %i.at, label %.lr.ph29.i.epil.preheader, label %.lr.ph29.i.preheader.new

.lr.ph29.i.preheader.new:                         ; preds = %.lr.ph29.i.preheader
  %unroll_iter = and i64 %i.n, 9223372036854775804
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i, %.lr.ph29.i.preheader.new
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph29.i.preheader.new ], [ %indvars.iv.next33.i.3, %.lr.ph29.i ] ; 5 uses
  %.127.i = phi i64 [ %.020.i, %.lr.ph29.i.preheader.new ], [ %i.bi, %.lr.ph29.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.preheader.new ], [ %niter.next.3, %.lr.ph29.i ]
  %i.au = trunc i64 %.127.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv32.i
  store i8 %i.au, ptr %i.av, align 4, !tbaa !11
  %i.aw = lshr i64 %.127.i, 8
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv32.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !11
  %i.ba = lshr i64 %.127.i, 16
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv32.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.bb, ptr %i.bd, align 2, !tbaa !11
  %i.be = lshr i64 %.127.i, 24
  %i.bf = trunc i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv32.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !11
  %i.bi = lshr i64 %.127.i, 32                    ; 2 uses
  %indvars.iv.next33.i.3 = add nuw nsw i64 %indvars.iv32.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %putinteger.exit.loopexit.unr-lcssa, label %.lr.ph29.i, !llvm.loop !22

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.225.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %.225.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bj = trunc i64 %.225.i to i8
  %i.bk = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !11
  %i.bm = lshr i64 %.225.i, 8
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -2
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !11
  %i.bq = lshr i64 %.225.i, 16
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -3
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !11
  %i.bu = lshr i64 %.225.i, 24
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !11
  %i.bx = lshr i64 %.225.i, 32
  %i.by = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.by, label %.lr.ph.i, label %putinteger.exit, !llvm.loop !23

putinteger.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph29.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %putinteger.exit, label %.lr.ph29.i.epil.preheader

.lr.ph29.i.epil.preheader:                        ; preds = %putinteger.exit.loopexit.unr-lcssa, %.lr.ph29.i.preheader
  %indvars.iv32.i.epil.init = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %indvars.iv.next33.i.3, %putinteger.exit.loopexit.unr-lcssa ]
  %.127.i.epil.init = phi i64 [ %.020.i, %.lr.ph29.i.preheader ], [ %i.bi, %putinteger.exit.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter77, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph29.i.epil

.lr.ph29.i.epil:                                  ; preds = %.lr.ph29.i.epil, %.lr.ph29.i.epil.preheader
  %indvars.iv32.i.epil = phi i64 [ %indvars.iv.next33.i.epil, %.lr.ph29.i.epil ], [ %indvars.iv32.i.epil.init, %.lr.ph29.i.epil.preheader ] ; 2 uses
  %.127.i.epil = phi i64 [ %i.cb, %.lr.ph29.i.epil ], [ %.127.i.epil.init, %.lr.ph29.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph29.i.epil ], [ 0, %.lr.ph29.i.epil.preheader ]
  %i.bz = trunc i64 %.127.i.epil to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv32.i.epil
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !11
  %i.cb = lshr i64 %.127.i.epil, 8
  %indvars.iv.next33.i.epil = add nuw nsw i64 %indvars.iv32.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter77
  br i1 %epil.iter.cmp.not, label %putinteger.exit, label %.lr.ph29.i.epil, !llvm.loop !24

putinteger.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %putinteger.exit.loopexit.unr-lcssa, %.lr.ph29.i.epil, %.preheader23.i, %.preheader.i
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.s

bb.f:                                             ; preds = %._crit_edge
  %i.cc = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.i
  br i1 %i.cd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre65 = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cf = phi ptr [ %.pre65, %bb.g ], [ %i.cc, %bb.f ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %1, align 8, !tbaa !15
  store i8 0, ptr %i.cf, align 1, !tbaa !11
  br label %bb.s

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ch = add nsw i32 %.03858, 1
  %i.ci = call double @luaL_checknumber(ptr noundef %0, i32 noundef %.03858) #7
  %i.cj = fptrunc double %i.ci to float
  store float %i.cj, ptr %i.c, align 4, !tbaa !25
  %i.ck = load i32, ptr %2, align 4, !tbaa !8
  %.not.i = icmp ne i32 %i.ck, 1
  %i.cl = icmp sgt i64 %i.n, 1
  %or.cond.i42 = and i1 %i.cl, %.not.i
  br i1 %or.cond.i42, label %.lr.ph.preheader.i43, label %correctbytes.exit

.lr.ph.preheader.i43:                             ; preds = %bb.i
  %i.cm = add nsw i64 %i.n, -1
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44, %.lr.ph.preheader.i43
  %indvars.iv15.i = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next16.i, %.lr.ph.i44 ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %i.cm, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i46, %.lr.ph.i44 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv15.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.i45 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1 ; 2 uses
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !11
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !11
  %indvars.iv.next.i46 = add nsw i64 %indvars.iv.i45, -1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next16.i, %indvars.iv.next.i46
  br i1 %i.cr, label %.lr.ph.i44, label %correctbytes.exit, !llvm.loop !27

correctbytes.exit:                                ; preds = %.lr.ph.i44, %bb.i
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.s

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.cs = add nsw i32 %.03858, 1
  %i.ct = call double @luaL_checknumber(ptr noundef %0, i32 noundef %.03858) #7
  store double %i.ct, ptr %i.d, align 8, !tbaa !28
  %i.cu = load i32, ptr %2, align 4, !tbaa !8
  %.not.i47 = icmp ne i32 %i.cu, 1
  %i.cv = icmp sgt i64 %i.n, 1
  %or.cond.i48 = and i1 %i.cv, %.not.i47
  br i1 %or.cond.i48, label %.lr.ph.preheader.i49, label %correctbytes.exit55

.lr.ph.preheader.i49:                             ; preds = %bb.j
  %i.cw = add nsw i64 %i.n, -1
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i49
  %indvars.iv15.i51 = phi i64 [ 0, %.lr.ph.preheader.i49 ], [ %indvars.iv.next16.i53, %.lr.ph.i50 ] ; 2 uses
  %indvars.iv.i52 = phi i64 [ %i.cw, %.lr.ph.preheader.i49 ], [ %indvars.iv.next.i54, %.lr.ph.i50 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv15.i51 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.cz = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.i52 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11
  %indvars.iv.next16.i53 = add nuw nsw i64 %indvars.iv15.i51, 1 ; 2 uses
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !11
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !11
  %indvars.iv.next.i54 = add nsw i64 %indvars.iv.i52, -1 ; 2 uses
  %i.db = icmp slt i64 %indvars.iv.next16.i53, %indvars.iv.next.i54
  br i1 %i.db, label %.lr.ph.i50, label %correctbytes.exit55, !llvm.loop !27

correctbytes.exit55:                              ; preds = %.lr.ph.i50, %bb.j
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.s

bb.k:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.dc = add nsw i32 %.03858, 1                  ; 2 uses
  %i.dd = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %.03858, ptr noundef nonnull %i.e) #7
  %i.de = load i64, ptr %i.e, align 8             ; 2 uses
  %spec.select = select i1 %i.o, i64 %i.de, i64 %i.n ; 4 uses
  %.not41 = icmp ult i64 %i.de, %spec.select
  br i1 %.not41, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.df = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.dc, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.dd, i64 noundef %spec.select) #7
  %i.dg = icmp eq i8 %i.j, 115
  br i1 %i.dg, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.i
  br i1 %i.di, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre64 = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dk = phi ptr [ %.pre64, %bb.o ], [ %i.dh, %bb.n ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store ptr %i.dl, ptr %1, align 8, !tbaa !15
  store i8 0, ptr %i.dk, align 1, !tbaa !11
  %i.dm = add i64 %spec.select, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.1 = phi i64 [ %i.dm, %bb.p ], [ %spec.select, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge
  call fastcc void @controloptions(ptr noundef %0, i32 noundef %i.m, ptr noundef %i.b, ptr noundef %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %correctbytes.exit55, %correctbytes.exit, %bb.h, %putinteger.exit
  %.139 = phi i32 [ %.03858, %bb.r ], [ %i.ah, %putinteger.exit ], [ %.03858, %bb.h ], [ %i.ch, %correctbytes.exit ], [ %i.cs, %correctbytes.exit55 ], [ %i.dc, %bb.q ]
  %.2 = phi i64 [ %i.n, %bb.r ], [ %i.n, %putinteger.exit ], [ %i.n, %bb.h ], [ %i.n, %correctbytes.exit ], [ %i.n, %correctbytes.exit55 ], [ %.1, %bb.q ]
  %i.dn = add i64 %i.ag, %.2
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11  ; 2 uses
  %.not = icmp eq i8 %i.dp, 0
  br i1 %.not, label %._crit_edge62, label %bb.b, !llvm.loop !30

._crit_edge62:                                    ; preds = %bb.s, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @b_unpack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 4             ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.e = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #7 ; 5 uses
  %i.g = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #7 ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 1, ptr %1, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 1, ptr %i.i, align 4, !tbaa !10
  %i.j = load i8, ptr %i.e, align 1, !tbaa !11    ; 2 uses
  %.not79106 = icmp eq i8 %i.j, 0
  br i1 %.not79106, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = add i64 %i.g, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %i.l = phi i8 [ %i.ei, %bb.w ], [ %i.j, %.lr.ph.preheader ] ; 5 uses
  %i.m = phi ptr [ %i.eh, %bb.w ], [ %i.e, %.lr.ph.preheader ]
  %.0108 = phi i64 [ %i.eg, %bb.w ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.072107 = phi i32 [ %.2, %bb.w ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.a, align 8, !tbaa !12
  %i.o = sext i8 %i.l to i32
  %i.p = call fastcc i64 @optsize(ptr noundef %0, i8 noundef signext %i.l, ptr noundef %i.a) ; 22 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %i.r = icmp eq i8 %i.l, 99
  %or.cond.i = or i1 %i.r, %i.q
  br i1 %or.cond.i, label %gettoalign.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.val = load i32, ptr %i.i, align 4
  %i.s = sext i32 %.val to i64
  %spec.select.i = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483600) %i.p, i64 %i.s) ; 2 uses
  %i.t = add nsw i64 %spec.select.i, -1           ; 2 uses
  %i.u = and i64 %i.t, %.0108
  %i.v = sub i64 %spec.select.i, %i.u
  %i.w = and i64 %i.v, %i.t
  %sext = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32
  br label %gettoalign.exit

gettoalign.exit:                                  ; preds = %.lr.ph, %bb.d
  %.010.i = phi i64 [ %i.x, %bb.d ], [ 0, %.lr.ph ]
  %i.y = add i64 %.010.i, %.0108                  ; 9 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not80 = icmp ugt i64 %i.p, %i.z
  %i.aa = sub nuw i64 %i.z, %i.p
  %.not81 = icmp ugt i64 %i.y, %i.aa
  %or.cond = select i1 %.not80, i1 true, i1 %.not81
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gettoalign.exit
  %i.ab = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %gettoalign.exit, %bb.e
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.11) #7
  switch i8 %i.l, label %bb.v [
    i8 98, label %bb.g
    i8 66, label %bb.g
    i8 104, label %bb.g
    i8 72, label %bb.g
    i8 108, label %bb.g
    i8 76, label %bb.g
    i8 84, label %bb.g
    i8 105, label %bb.g
    i8 73, label %bb.g
    i8 120, label %bb.w
    i8 102, label %bb.j
    i8 100, label %bb.k
    i8 99, label %bb.l
    i8 115, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ac = tail call ptr @__ctype_b_loc() #8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33
  %i.ae = zext nneg i8 %i.l to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !35
  %i.ah = and i16 %i.ag, 512
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y ; 10 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !8
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp sgt i64 %i.p, 0                    ; 2 uses
  br i1 %i.ak, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.g
  br i1 %i.al, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader27.i
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.am = icmp ult i64 %i.p, 4
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.p, 9223372036854775804
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g
  br i1 %i.al, label %.lr.ph33.i.preheader, label %.loopexit.i

.lr.ph33.i.preheader:                             ; preds = %.preheader.i
  %xtraiter148 = and i64 %i.p, 3                  ; 3 uses
  %i.an = icmp ult i64 %i.p, 4
  br i1 %i.an, label %.lr.ph33.i.epil.preheader, label %.lr.ph33.i.preheader.new

end_hunk_0
