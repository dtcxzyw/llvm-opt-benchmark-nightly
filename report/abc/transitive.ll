Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/transitive?download=true
inline.NumInlined: 53
inline.NumDeleted: 26
begin_hunk_0_@kissat_transitive_reduction:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph50.i ], [ %indvars.iv.next.i, %._crit_edge46.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !93
  %.val34.i = load i32, ptr %i.y, align 4, !tbaa !95
  %i.z = zext i32 %.val34.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.val37.i = load i32, ptr %i.ab, align 4, !tbaa !96 ; 2 uses
  %i.ac = zext i32 %.val37.i to i64
  %.idx.i = shl nuw nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i
  %.not3238.i = icmp eq i32 %.val37.i, 0
  br i1 %.not3238.i, label %._crit_edge46.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.n
  %.02840.i = phi ptr [ %.1.i, %bb.n ], [ %i.aa, %bb.g ] ; 3 uses
  %.02939.i = phi ptr [ %.130.i, %bb.n ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02840.i, i64 4 ; 2 uses
  %i.af = load i32, ptr %.02840.i, align 4, !tbaa !97 ; 3 uses
  store i32 %i.af, ptr %.02939.i, align 4, !tbaa !97
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.02939.i, i64 4
  br label %bb.n, !llvm.loop !9

bb.i:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.02840.i, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.ae, align 4, !tbaa !97
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !99  ; 2 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @kissat_stack_enlarge(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 4) #5
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !99
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi ptr [ %.pre.i, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.o, align 8, !tbaa !99
  store i32 %i.af, ptr %i.am, align 4, !tbaa !97
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !99  ; 2 uses
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @kissat_stack_enlarge(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 4) #5
  %.pre53.i = load ptr, ptr %i.o, align 8, !tbaa !99
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ %.pre53.i, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store ptr %i.as, ptr %i.o, align 8, !tbaa !99
  store i32 %.sroa.0.0.copyload.i, ptr %i.ar, align 4, !tbaa !97
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.130.i = phi ptr [ %i.ah, %bb.h ], [ %.02939.i, %bb.m ] ; 5 uses
  %.1.i = phi ptr [ %i.ae, %bb.h ], [ %i.ai, %bb.m ] ; 2 uses
  %.not32.i = icmp eq ptr %.1.i, %i.ad
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.n
  %.130.i308.le = ptrtoaddr ptr %.130.i to i64
  %.pre54.i = load ptr, ptr %i.o, align 8, !tbaa !99 ; 3 uses
  %.pre55.i = load ptr, ptr %1, align 8, !tbaa !100 ; 6 uses
  %.not3341.i = icmp eq ptr %.pre55.i, %.pre54.i
  br i1 %.not3341.i, label %._crit_edge46.i, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %._crit_edge.i
  %.pre55.i307 = ptrtoaddr ptr %.pre55.i to i64   ; 2 uses
  %i.at = ptrtoaddr ptr %.pre54.i to i64
  %i.au = add i64 %i.at, -4
  %i.av = sub i64 %i.au, %.pre55.i307             ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 28
  %i.ay = sub i64 %.pre55.i307, %.130.i308.le
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph45.i.preheader347, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i.preheader
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.az = shl i64 %n.vec, 2                       ; 2 uses
  %i.ba = getelementptr i8, ptr %.pre55.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.130.i, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre55.i, i64 %i.bc ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.130.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !97
  %wide.load310 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !97
  %i.be = getelementptr i8, ptr %next.gep309, i64 16
  store <4 x i32> %wide.load, ptr %next.gep309, align 4, !tbaa !97
  store <4 x i32> %wide.load310, ptr %i.be, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge46.loopexit.i, label %.lr.ph45.i.preheader347

.lr.ph45.i.preheader347:                          ; preds = %.lr.ph45.i.preheader, %middle.block
  %.043.i.ph = phi ptr [ %.pre55.i, %.lr.ph45.i.preheader ], [ %i.ba, %middle.block ]
  %.242.i.ph = phi ptr [ %.130.i, %.lr.ph45.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader347, %.lr.ph45.i
  %.043.i = phi ptr [ %i.bh, %.lr.ph45.i ], [ %.043.i.ph, %.lr.ph45.i.preheader347 ] ; 2 uses
  %.242.i = phi ptr [ %i.bg, %.lr.ph45.i ], [ %.242.i.ph, %.lr.ph45.i.preheader347 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.242.i, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.043.i, i64 4 ; 2 uses
  %i.bi = load i32, ptr %.043.i, align 4, !tbaa !97
  store i32 %i.bi, ptr %.242.i, align 4, !tbaa !97
  %.not33.i = icmp eq ptr %i.bh, %.pre54.i
  br i1 %.not33.i, label %._crit_edge46.loopexit.i, label %.lr.ph45.i, !llvm.loop !11

._crit_edge46.loopexit.i:                         ; preds = %.lr.ph45.i, %middle.block
  %.pre56.i = load ptr, ptr %1, align 8, !tbaa !100
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %._crit_edge46.loopexit.i, %._crit_edge.i, %bb.g
  %i.bj = phi ptr [ %.pre56.i, %._crit_edge46.loopexit.i ], [ %.pre55.i, %._crit_edge.i ], [ %i.x, %bb.g ] ; 3 uses
  store ptr %i.bj, ptr %i.o, align 8, !tbaa !99
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i41 = icmp eq i64 %indvars.iv.next.i, %i.v
  br i1 %.not.i41, label %._crit_edge51.loopexit.i, label %bb.g, !llvm.loop !12

prioritize_binaries.exit:                         ; preds = %bb.f, %._crit_edge51.loopexit.i
  %i.bk = phi i64 [ %i.w, %._crit_edge51.loopexit.i ], [ 0, %bb.f ]
  %i.bl = phi ptr [ %i.bj, %._crit_edge51.loopexit.i ], [ null, %bb.f ] ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bk, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  call void @kissat_dealloc(ptr noundef %0, ptr noundef %i.bl, i64 noundef %i.bo, i64 noundef 4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4304 ; 7 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !104
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !105, !range !83, !noundef !84
  %i.bv = trunc nuw i8 %i.bu to i1
  %.in.v = select i1 %i.bv, i64 1488, i64 1480
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.bw = load i64, ptr %.in, align 8, !tbaa !106
  %i.bx = sub i64 %i.bs, %i.bw
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.bx, i64 10000000)
  %i.by = uitofp i64 %spec.store.select to double
  %i.bz = fmul nnan double %i.by, 2.000000e-02
  %i.ca = fptoui double %i.bz to i64
  %i.cb = add i64 %i.bq, %i.ca                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ce = load i32, ptr %i.r, align 8, !tbaa !89  ; 2 uses
  %.not34.i = icmp eq i32 %i.ce, 0
  br i1 %.not34.i, label %._crit_edge.i46, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %prioritize_binaries.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cg = zext i32 %i.ce to i64
  br label %bb.ce

._crit_edge.i46.loopexit:                         ; preds = %bb.ci
  %.val.i.i.pre = load ptr, ptr %2, align 8, !tbaa !107
  %i.ch = ptrtoint ptr %i.uq to i64
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %._crit_edge.i46.loopexit, %prioritize_binaries.exit
  %.val5.i.i = phi i64 [ %i.ch, %._crit_edge.i46.loopexit ], [ 0, %prioritize_binaries.exit ] ; 2 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %._crit_edge.i46.loopexit ], [ null, %prioritize_binaries.exit ] ; 24 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !108, !range !83, !noundef !84
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !109 ; 30 uses
  br i1 %i.ck, label %bb.o, label %bb.bi

bb.o:                                             ; preds = %._crit_edge.i46
  %i.cn = ptrtoint ptr %.val.i.i to i64
  %i.co = sub i64 %.val5.i.i, %i.cn               ; 2 uses
  %i.cp = ashr exact i64 %i.co, 2                 ; 4 uses
  %i.cq = icmp ult i64 %i.cp, 2
  br i1 %i.cq, label %schedule_transitive.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = add nsw i64 %i.cp, -1                   ; 3 uses
  %i.cs = icmp ult i64 %i.cp, 12
  br i1 %i.cs, label %.thread.i.i.i, label %.preheader24.i.i.i

.preheader24.i.i.i:                               ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.backedge, %.preheader24.i.i.i
  %.0195.i.i.i = phi i64 [ 0, %.preheader24.i.i.i ], [ %.0195.i.i.i.be, %.backedge ] ; 7 uses
  %.0193.i.i.i = phi i64 [ %i.cr, %.preheader24.i.i.i ], [ %.0193.i.i.i.be, %.backedge ] ; 6 uses
  %i.cy = sub i64 %.0193.i.i.i, %.0195.i.i.i
  %i.cz = lshr i64 %i.cy, 1
  %i.da = getelementptr [4 x i8], ptr %.val.i.i, i64 %.0195.i.i.i ; 5 uses
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cz ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !110 ; 5 uses
  %i.dd = add i64 %.0193.i.i.i, -1                ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.dd ; 7 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110
  store i32 %i.df, ptr %i.db, align 4, !tbaa !110
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !110
  %i.dg = load i32, ptr %i.da, align 4, !tbaa !110 ; 5 uses
  %i.dh = lshr i32 %i.dc, 1                       ; 3 uses
  %i.di = lshr i32 %i.dg, 1                       ; 5 uses
  %i.dj = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 4
  %i.dm = and i16 %i.dl, 1024
  %.not26.i.i.i.i = icmp eq i16 %i.dm, 0          ; 2 uses
  %i.dn = zext nneg i32 %i.di to i64              ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 4            ; 3 uses
  %i.dq = and i16 %i.dp, 1024
  %i.dr = icmp ne i16 %i.dq, 0                    ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not26.i.i.i.i, i1 %i.dr, i1 false
  br i1 %or.cond.i.i.i.i, label %less_stable_transitive.exit.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond4.i.i.i.i = select i1 %.not26.i.i.i.i, i1 true, i1 %i.dr
  br i1 %or.cond4.i.i.i.i, label %bb.s, label %less_stable_transitive.exit.thread2.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ds = load i32, ptr %i.cu, align 4, !tbaa !111 ; 2 uses
  %i.dt = icmp ult i32 %i.dh, %i.ds
  br i1 %i.dt, label %bb.t, label %kissat_get_heap_score.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dj
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i.i.i.i

kissat_get_heap_score.exit.i.i.i.i:               ; preds = %bb.t, %bb.s
  %i.dx = phi double [ %i.dw, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.dy = icmp ult i32 %i.di, %i.ds
  br i1 %i.dy, label %bb.u, label %kissat_get_heap_score.exit27.i.i.i.i

bb.u:                                             ; preds = %kissat_get_heap_score.exit.i.i.i.i
  %i.dz = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dn
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit27.i.i.i.i

kissat_get_heap_score.exit27.i.i.i.i:             ; preds = %bb.u, %kissat_get_heap_score.exit.i.i.i.i
  %i.ec = phi double [ %i.eb, %bb.u ], [ 0.000000e+00, %kissat_get_heap_score.exit.i.i.i.i ] ; 2 uses
  %i.ed = fcmp olt double %i.dx, %i.ec
  br i1 %i.ed, label %less_stable_transitive.exit.thread.i.i.i, label %less_stable_transitive.exit.i.i.i

less_stable_transitive.exit.i.i.i:                ; preds = %kissat_get_heap_score.exit27.i.i.i.i
  %i.ee = fcmp ule double %i.dx, %i.ec
  %i.ef = icmp samesign ult i32 %i.dh, %i.di
  %spec.select.i.i.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %spec.select.i.i.i.i, label %less_stable_transitive.exit.thread.i.i.i, label %less_stable_transitive.exit.thread2.i.i.i

less_stable_transitive.exit.thread.i.i.i:         ; preds = %less_stable_transitive.exit.i.i.i, %kissat_get_heap_score.exit27.i.i.i.i, %bb.q
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !110
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !110
  %.pre.i.i.i = load i32, ptr %i.da, align 4, !tbaa !110 ; 2 uses
  %.pre52.i.i.i = lshr i32 %.pre.i.i.i, 1         ; 2 uses
  %.pre54.i.i.i = zext nneg i32 %.pre52.i.i.i to i64 ; 2 uses
  %.phi.trans.insert76.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre54.i.i.i
  %.pre77.i.i = load i16, ptr %.phi.trans.insert76.i.i, align 4
  br label %less_stable_transitive.exit.thread2.i.i.i

less_stable_transitive.exit.thread2.i.i.i:        ; preds = %less_stable_transitive.exit.thread.i.i.i, %less_stable_transitive.exit.i.i.i, %bb.r
  %i.eg = phi i16 [ %i.dp, %bb.r ], [ %i.dp, %less_stable_transitive.exit.i.i.i ], [ %.pre77.i.i, %less_stable_transitive.exit.thread.i.i.i ]
  %.pre-phi55.i.i.i = phi i64 [ %i.dn, %bb.r ], [ %i.dn, %less_stable_transitive.exit.i.i.i ], [ %.pre54.i.i.i, %less_stable_transitive.exit.thread.i.i.i ] ; 3 uses
  %.pre-phi53.i.i.i = phi i32 [ %i.di, %bb.r ], [ %i.di, %less_stable_transitive.exit.i.i.i ], [ %.pre52.i.i.i, %less_stable_transitive.exit.thread.i.i.i ] ; 3 uses
  %i.eh = phi i32 [ %i.dc, %bb.r ], [ %i.dc, %less_stable_transitive.exit.i.i.i ], [ %i.dg, %less_stable_transitive.exit.thread.i.i.i ] ; 3 uses
  %i.ei = phi i32 [ %i.dg, %bb.r ], [ %i.dg, %less_stable_transitive.exit.i.i.i ], [ %.pre.i.i.i, %less_stable_transitive.exit.thread.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.0193.i.i.i ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !110 ; 4 uses
  %i.el = lshr i32 %i.ek, 1                       ; 5 uses
  %i.em = zext nneg i32 %i.el to i64              ; 4 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 4
  %i.ep = and i16 %i.eo, 1024                     ; 2 uses
  %.not26.i210.i.i.i = icmp eq i16 %i.ep, 0       ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre-phi55.i.i.i
  %i.er = and i16 %i.eg, 1024
  %i.es = icmp ne i16 %i.er, 0                    ; 2 uses
  %or.cond.i211.i.i.i = select i1 %.not26.i210.i.i.i, i1 %i.es, i1 false
  br i1 %or.cond.i211.i.i.i, label %less_stable_transitive.exit217.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %less_stable_transitive.exit.thread2.i.i.i
  %or.cond4.i212.i.i.i = select i1 %.not26.i210.i.i.i, i1 true, i1 %i.es
  br i1 %or.cond4.i212.i.i.i, label %bb.w, label %less_stable_transitive.exit217.thread5.thread.i.i.i

less_stable_transitive.exit217.thread5.thread.i.i.i: ; preds = %bb.v
  %i.et = lshr i32 %i.eh, 1                       ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 4
  %i.ex = and i16 %i.ew, 1024
  %i.ey = icmp ne i16 %i.ex, 0
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ez = load i32, ptr %i.cu, align 4, !tbaa !111 ; 2 uses
  %i.fa = icmp ult i32 %i.el, %i.ez
  br i1 %i.fa, label %bb.x, label %kissat_get_heap_score.exit.i214.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.em
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i214.i.i.i

kissat_get_heap_score.exit.i214.i.i.i:            ; preds = %bb.x, %bb.w
  %i.fe = phi double [ %i.fd, %bb.x ], [ 0.000000e+00, %bb.w ] ; 2 uses
  %i.ff = icmp ult i32 %.pre-phi53.i.i.i, %i.ez
  br i1 %i.ff, label %bb.y, label %kissat_get_heap_score.exit27.i215.i.i.i

bb.y:                                             ; preds = %kissat_get_heap_score.exit.i214.i.i.i
  %i.fg = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.pre-phi55.i.i.i
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit27.i215.i.i.i

kissat_get_heap_score.exit27.i215.i.i.i:          ; preds = %bb.y, %kissat_get_heap_score.exit.i214.i.i.i
  %i.fj = phi double [ %i.fi, %bb.y ], [ 0.000000e+00, %kissat_get_heap_score.exit.i214.i.i.i ] ; 2 uses
  %i.fk = fcmp olt double %i.fe, %i.fj
  br i1 %i.fk, label %less_stable_transitive.exit217.thread.i.i.i, label %less_stable_transitive.exit217.i.i.i

less_stable_transitive.exit217.i.i.i:             ; preds = %kissat_get_heap_score.exit27.i215.i.i.i
  %i.fl = fcmp ule double %i.fe, %i.fj
  %i.fm = icmp samesign ult i32 %i.el, %.pre-phi53.i.i.i
  %spec.select.i216.i.i.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %spec.select.i216.i.i.i, label %less_stable_transitive.exit217.thread.i.i.i, label %less_stable_transitive.exit217.thread5.i.i.i

less_stable_transitive.exit217.thread.i.i.i:      ; preds = %less_stable_transitive.exit217.i.i.i, %kissat_get_heap_score.exit27.i215.i.i.i, %less_stable_transitive.exit.thread2.i.i.i
  store i32 %i.ek, ptr %i.da, align 4, !tbaa !110
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !110
  %.pre46.i.i.i = load i32, ptr %i.de, align 4, !tbaa !110
  %.pre51.i.i.i = load i16, ptr %i.eq, align 4
  %.pre57.i.i.i = and i16 %.pre51.i.i.i, 1024
  br label %less_stable_transitive.exit217.thread5.i.i.i

less_stable_transitive.exit217.thread5.i.i.i:     ; preds = %less_stable_transitive.exit217.thread.i.i.i, %less_stable_transitive.exit217.i.i.i
  %.pre-phi58.i.i.i = phi i16 [ %.pre57.i.i.i, %less_stable_transitive.exit217.thread.i.i.i ], [ %i.ep, %less_stable_transitive.exit217.i.i.i ]
  %.pre-phi56.i.i.i = phi i32 [ %.pre-phi53.i.i.i, %less_stable_transitive.exit217.thread.i.i.i ], [ %i.el, %less_stable_transitive.exit217.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre-phi55.i.i.i, %less_stable_transitive.exit217.thread.i.i.i ], [ %i.em, %less_stable_transitive.exit217.i.i.i ] ; 2 uses
  %i.fn = phi i32 [ %.pre46.i.i.i, %less_stable_transitive.exit217.thread.i.i.i ], [ %i.eh, %less_stable_transitive.exit217.i.i.i ] ; 3 uses
  %i.fo = phi i32 [ %i.ei, %less_stable_transitive.exit217.thread.i.i.i ], [ %i.ek, %less_stable_transitive.exit217.i.i.i ] ; 2 uses
  %i.fp = lshr i32 %i.fn, 1                       ; 2 uses
  %.not26.i218.i.i.i = icmp eq i16 %.pre-phi58.i.i.i, 0 ; 2 uses
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 4
  %i.ft = and i16 %i.fs, 1024
  %i.fu = icmp ne i16 %i.ft, 0                    ; 2 uses
  %or.cond.i219.i.i.i = select i1 %.not26.i218.i.i.i, i1 %i.fu, i1 false
  br i1 %or.cond.i219.i.i.i, label %less_stable_transitive.exit225.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %less_stable_transitive.exit217.thread5.i.i.i, %less_stable_transitive.exit217.thread5.thread.i.i.i
  %i.fv = phi i1 [ %i.ey, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %i.fu, %less_stable_transitive.exit217.thread5.i.i.i ]
  %i.fw = phi i64 [ %i.eu, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %i.fq, %less_stable_transitive.exit217.thread5.i.i.i ] ; 3 uses
  %.not26.i21895.i.i.i = phi i1 [ false, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %.not26.i218.i.i.i, %less_stable_transitive.exit217.thread5.i.i.i ]
  %i.fx = phi i32 [ %i.et, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %i.fp, %less_stable_transitive.exit217.thread5.i.i.i ] ; 4 uses
  %i.fy = phi i32 [ %i.ek, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %i.fo, %less_stable_transitive.exit217.thread5.i.i.i ] ; 2 uses
  %i.fz = phi i32 [ %i.eh, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %i.fn, %less_stable_transitive.exit217.thread5.i.i.i ] ; 2 uses
  %.pre-phi93.i.i.i = phi i64 [ %i.em, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %.pre-phi.i.i.i, %less_stable_transitive.exit217.thread5.i.i.i ] ; 3 uses
  %.pre-phi5691.i.i.i = phi i32 [ %i.el, %less_stable_transitive.exit217.thread5.thread.i.i.i ], [ %.pre-phi56.i.i.i, %less_stable_transitive.exit217.thread5.i.i.i ] ; 4 uses
  %or.cond4.i220.i.i.i = select i1 %.not26.i21895.i.i.i, i1 true, i1 %i.fv
  br i1 %or.cond4.i220.i.i.i, label %bb.aa, label %less_stable_transitive.exit225.thread8.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ga = load i32, ptr %i.cu, align 4, !tbaa !111 ; 2 uses
  %i.gb = icmp ult i32 %.pre-phi5691.i.i.i, %i.ga
  br i1 %i.gb, label %bb.ab, label %kissat_get_heap_score.exit.i222.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.pre-phi93.i.i.i
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i222.i.i.i

kissat_get_heap_score.exit.i222.i.i.i:            ; preds = %bb.ab, %bb.aa
  %i.gf = phi double [ %i.ge, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 2 uses
end_hunk_0
begin_hunk_1_@kissat_transitive_reduction:bb.a

less_stable_transitive.exit225.thread8.i.i.i:     ; preds = %less_stable_transitive.exit225.thread.i.i.i, %less_stable_transitive.exit225.i.i.i, %bb.z
  %.pre-phi59.i.i.i = phi i32 [ %i.fx, %bb.z ], [ %.pre-phi5692.i.i.i, %less_stable_transitive.exit225.thread.i.i.i ], [ %i.fx, %less_stable_transitive.exit225.i.i.i ] ; 4 uses
  %.pre-phi47.i.i.i = phi i64 [ %i.fw, %bb.z ], [ %.pre-phi94.i.i.i, %less_stable_transitive.exit225.thread.i.i.i ], [ %i.fw, %less_stable_transitive.exit225.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre-phi47.i.i.i
  %i.gr = add i64 %.0195.i.i.i, 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.an, %less_stable_transitive.exit225.thread8.i.i.i
  %.0190.i.i.i = phi i64 [ %.0195.i.i.i, %less_stable_transitive.exit225.thread8.i.i.i ], [ %i.gv, %bb.an ]
  %.0189.i.i.i = phi i64 [ %i.dd, %less_stable_transitive.exit225.thread8.i.i.i ], [ %i.hs, %bb.an ]
  %i.gs = load i16, ptr %i.gq, align 4
  %i.gt = and i16 %i.gs, 1024                     ; 2 uses
  %i.gu = icmp ne i16 %i.gt, 0                    ; 2 uses
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.ad
  %.1191.i.i.i = phi i64 [ %.0190.i.i.i, %bb.ad ], [ %i.gv, %.backedge.i.i.i.backedge ] ; 4 uses
  %i.gv = add i64 %.1191.i.i.i, 1                 ; 7 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !110 ; 3 uses
  %i.gy = lshr i32 %i.gx, 1                       ; 3 uses
  %i.gz = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 4
  %i.hc = and i16 %i.hb, 1024
  %.not26.i226.i.i.i = icmp eq i16 %i.hc, 0       ; 2 uses
  %or.cond.i227.i.i.i = select i1 %.not26.i226.i.i.i, i1 %i.gu, i1 false
  br i1 %or.cond.i227.i.i.i, label %.backedge.i.i.i.backedge, label %bb.ae

bb.ae:                                            ; preds = %.backedge.i.i.i
  %or.cond4.i228.i.i.i = select i1 %.not26.i226.i.i.i, i1 true, i1 %i.gu
  br i1 %or.cond4.i228.i.i.i, label %bb.af, label %less_stable_transitive.exit233.preheader.i.i.i, !llvm.loop !13

bb.af:                                            ; preds = %bb.ae
  %i.hd = load i32, ptr %i.cu, align 4, !tbaa !111 ; 2 uses
  %i.he = icmp ult i32 %i.gy, %i.hd
  br i1 %i.he, label %bb.ag, label %kissat_get_heap_score.exit.i230.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.hf = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.gz
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i230.i.i.i

kissat_get_heap_score.exit.i230.i.i.i:            ; preds = %bb.ag, %bb.af
  %i.hi = phi double [ %i.hh, %bb.ag ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %i.hj = icmp ult i32 %.pre-phi59.i.i.i, %i.hd
  br i1 %i.hj, label %bb.ah, label %kissat_get_heap_score.exit27.i231.i.i.i

bb.ah:                                            ; preds = %kissat_get_heap_score.exit.i230.i.i.i
  %i.hk = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.pre-phi47.i.i.i
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit27.i231.i.i.i

kissat_get_heap_score.exit27.i231.i.i.i:          ; preds = %bb.ah, %kissat_get_heap_score.exit.i230.i.i.i
  %i.hn = phi double [ %i.hm, %bb.ah ], [ 0.000000e+00, %kissat_get_heap_score.exit.i230.i.i.i ] ; 2 uses
  %i.ho = fcmp olt double %i.hi, %i.hn
  br i1 %i.ho, label %.backedge.i.i.i.backedge, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %kissat_get_heap_score.exit27.i231.i.i.i
  %i.hp = fcmp ule double %i.hi, %i.hn
  %i.hq = icmp samesign ult i32 %i.gy, %.pre-phi59.i.i.i
  %spec.select.i232.i.i.i = select i1 %i.hp, i1 %i.hq, i1 false
  br i1 %spec.select.i232.i.i.i, label %.backedge.i.i.i.backedge, label %less_stable_transitive.exit233.preheader.i.i.i

.backedge.i.i.i.backedge:                         ; preds = %.split.i.i.i, %kissat_get_heap_score.exit27.i231.i.i.i, %.backedge.i.i.i
  br label %.backedge.i.i.i, !llvm.loop !13

less_stable_transitive.exit233.preheader.i.i.i:   ; preds = %.split.i.i.i, %bb.ae
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.gv ; 2 uses
  %.not26.i234.i.i.i = icmp eq i16 %i.gt, 0       ; 2 uses
  br label %less_stable_transitive.exit233.i.i.i

less_stable_transitive.exit233.i.i.i:             ; preds = %less_stable_transitive.exit241.i.i.i, %less_stable_transitive.exit233.preheader.i.i.i
  %.1.i.i.i = phi i64 [ %i.hs, %less_stable_transitive.exit241.i.i.i ], [ %.0189.i.i.i, %less_stable_transitive.exit233.preheader.i.i.i ] ; 2 uses
  %i.hs = add i64 %.1.i.i.i, -1                   ; 5 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !110 ; 2 uses
  %i.hv = lshr i32 %i.hu, 1                       ; 3 uses
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 4
  %i.hz = and i16 %i.hy, 1024
  %i.ia = icmp ne i16 %i.hz, 0                    ; 2 uses
  %or.cond.i235.i.i.i = select i1 %.not26.i234.i.i.i, i1 %i.ia, i1 false
  br i1 %or.cond.i235.i.i.i, label %less_stable_transitive.exit241.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %less_stable_transitive.exit233.i.i.i
  %or.cond4.i236.i.i.i = select i1 %.not26.i234.i.i.i, i1 true, i1 %i.ia
  br i1 %or.cond4.i236.i.i.i, label %bb.aj, label %less_stable_transitive.exit241.thread.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ib = load i32, ptr %i.cu, align 4, !tbaa !111 ; 2 uses
  %i.ic = icmp ult i32 %.pre-phi59.i.i.i, %i.ib
  br i1 %i.ic, label %bb.ak, label %kissat_get_heap_score.exit.i238.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.id = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.pre-phi47.i.i.i
  %i.if = load double, ptr %i.ie, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i238.i.i.i

kissat_get_heap_score.exit.i238.i.i.i:            ; preds = %bb.ak, %bb.aj
  %i.ig = phi double [ %i.if, %bb.ak ], [ 0.000000e+00, %bb.aj ] ; 2 uses
  %i.ih = icmp ult i32 %i.hv, %i.ib
  br i1 %i.ih, label %bb.al, label %kissat_get_heap_score.exit27.i239.i.i.i

bb.al:                                            ; preds = %kissat_get_heap_score.exit.i238.i.i.i
  %i.ii = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.hw
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit27.i239.i.i.i

kissat_get_heap_score.exit27.i239.i.i.i:          ; preds = %bb.al, %kissat_get_heap_score.exit.i238.i.i.i
  %i.il = phi double [ %i.ik, %bb.al ], [ 0.000000e+00, %kissat_get_heap_score.exit.i238.i.i.i ] ; 2 uses
  %i.im = fcmp olt double %i.ig, %i.il
  br i1 %i.im, label %less_stable_transitive.exit241.i.i.i, label %bb.am

bb.am:                                            ; preds = %kissat_get_heap_score.exit27.i239.i.i.i
  %i.in = fcmp ogt double %i.ig, %i.il
  %i.io = icmp samesign uge i32 %.pre-phi59.i.i.i, %i.hv
  %spec.select.i240.not.i.i.i = select i1 %i.in, i1 true, i1 %i.io
  br label %less_stable_transitive.exit241.i.i.i

less_stable_transitive.exit241.i.i.i:             ; preds = %bb.am, %kissat_get_heap_score.exit27.i239.i.i.i, %less_stable_transitive.exit233.i.i.i
  %.1.i237.i.i.i = phi i1 [ false, %less_stable_transitive.exit233.i.i.i ], [ false, %kissat_get_heap_score.exit27.i239.i.i.i ], [ %spec.select.i240.not.i.i.i, %bb.am ]
  %i.ip = icmp eq i64 %.1.i.i.i, %i.gr
  %or.cond.i.i.i = or i1 %i.ip, %.1.i237.i.i.i
  br i1 %or.cond.i.i.i, label %less_stable_transitive.exit241.thread.i.i.i, label %less_stable_transitive.exit233.i.i.i, !llvm.loop !14

less_stable_transitive.exit241.thread.i.i.i:      ; preds = %less_stable_transitive.exit241.i.i.i, %bb.ai
  %.not.i.i.i = icmp ult i64 %i.gv, %i.hs
  br i1 %.not.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %less_stable_transitive.exit241.thread.i.i.i
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.hs
  store i32 %i.hu, ptr %i.hr, align 4, !tbaa !110
  store i32 %i.gx, ptr %i.iq, align 4, !tbaa !110
  br label %bb.ad

bb.ao:                                            ; preds = %less_stable_transitive.exit241.thread.i.i.i
  %i.ir = load i32, ptr %i.de, align 4, !tbaa !110
  store i32 %i.ir, ptr %i.hr, align 4, !tbaa !110
  store i32 %i.gx, ptr %i.de, align 4, !tbaa !110
  %i.is = sub i64 %i.gv, %.0195.i.i.i
  %i.it = sub i64 %.0193.i.i.i, %i.gv
  %i.iu = icmp ult i64 %i.is, %i.it               ; 4 uses
  %i.iv = add i64 %.1191.i.i.i, 2                 ; 2 uses
  %.0195..i.i.i = select i1 %i.iu, i64 %.0195.i.i.i, i64 %i.iv ; 2 uses
  %.1191..0193.i.i.i = select i1 %i.iu, i64 %.1191.i.i.i, i64 %.0193.i.i.i ; 2 uses
  %..0195.i.i.i = select i1 %i.iu, i64 %i.iv, i64 %.0195.i.i.i ; 3 uses
  %.0193..1191.i.i.i = select i1 %i.iu, i64 %.0193.i.i.i, i64 %.1191.i.i.i ; 3 uses
  %i.iw = sub i64 %.1191..0193.i.i.i, %.0195..i.i.i
  %i.ix = icmp ugt i64 %i.iw, 10
  br i1 %i.ix, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load ptr, ptr %i.cw, align 8, !tbaa !114 ; 2 uses
  %i.iz = load ptr, ptr %i.cx, align 8, !tbaa !115 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ct, i64 noundef 8) #5
  %.pre48.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !114
  %.pre49.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !115
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jb = phi ptr [ %.pre49.i.i.i, %bb.aq ], [ %i.iz, %bb.ap ]
  %i.jc = phi ptr [ %.pre48.i.i.i, %bb.aq ], [ %i.iy, %bb.ap ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 3 uses
  store ptr %i.jd, ptr %i.cw, align 8, !tbaa !114
  store i64 %..0195.i.i.i, ptr %i.jc, align 8, !tbaa !106
  %i.je = icmp eq ptr %i.jd, %i.jb
  br i1 %i.je, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ct, i64 noundef 8) #5
  %.pre50.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !114
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jf = phi ptr [ %.pre50.i.i.i, %bb.as ], [ %i.jd, %bb.ar ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.jg, ptr %i.cw, align 8, !tbaa !114
  store i64 %.0193..1191.i.i.i, ptr %i.jf, align 8, !tbaa !106
  br label %.backedge

bb.au:                                            ; preds = %bb.ao
  %i.jh = sub i64 %.0193..1191.i.i.i, %..0195.i.i.i
  %i.ji = icmp ugt i64 %i.jh, 10
  br i1 %i.ji, label %.backedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jj = load ptr, ptr %i.ct, align 8, !tbaa !116
  %i.jk = load ptr, ptr %i.cw, align 8, !tbaa !114 ; 3 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %.thread.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !106
  %i.jo = getelementptr inbounds i8, ptr %i.jk, i64 -16 ; 2 uses
  store ptr %i.jo, ptr %i.cw, align 8, !tbaa !114
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !106
  br label %.backedge

.backedge:                                        ; preds = %bb.aw, %bb.au, %bb.at
  %.0195.i.i.i.be = phi i64 [ %..0195.i.i.i, %bb.au ], [ %.0195..i.i.i, %bb.at ], [ %i.jp, %bb.aw ]
  %.0193.i.i.i.be = phi i64 [ %.0193..1191.i.i.i, %bb.au ], [ %.1191..0193.i.i.i, %bb.at ], [ %i.jn, %bb.aw ]
  br label %bb.q

.thread.i.i.i:                                    ; preds = %bb.av, %bb.p
  %.not20636.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not20636.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br label %bb.ax

.preheader.i.i.i:                                 ; preds = %less_stable_transitive.exit249.thread17.i.i.i, %.thread.i.i.i
  %.not20738.i.i.i = icmp eq i64 %i.co, 8
  br i1 %.not20738.i.i.i, label %schedule_transitive.exit, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 3)
  br label %bb.bc

bb.ax:                                            ; preds = %less_stable_transitive.exit249.thread17.i.i.i, %.lr.ph.i.i.i
  %.018637.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i ], [ %i.kv, %less_stable_transitive.exit249.thread17.i.i.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.018637.i.i.i ; 3 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !110 ; 2 uses
  %i.ju = getelementptr i8, ptr %i.js, i64 -4     ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !110 ; 2 uses
  %i.jw = lshr i32 %i.jt, 1                       ; 3 uses
  %i.jx = lshr i32 %i.jv, 1                       ; 3 uses
  %i.jy = zext nneg i32 %i.jw to i64              ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 4
  %i.kb = and i16 %i.ka, 1024
  %.not26.i242.i.i.i = icmp eq i16 %i.kb, 0       ; 2 uses
  %i.kc = zext nneg i32 %i.jx to i64              ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 4
  %i.kf = and i16 %i.ke, 1024
  %i.kg = icmp ne i16 %i.kf, 0                    ; 2 uses
  %or.cond.i243.i.i.i = select i1 %.not26.i242.i.i.i, i1 %i.kg, i1 false
  br i1 %or.cond.i243.i.i.i, label %less_stable_transitive.exit249.thread.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %or.cond4.i244.i.i.i = select i1 %.not26.i242.i.i.i, i1 true, i1 %i.kg
  br i1 %or.cond4.i244.i.i.i, label %bb.az, label %less_stable_transitive.exit249.thread17.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.kh = load i32, ptr %i.jq, align 4, !tbaa !111 ; 2 uses
  %i.ki = icmp ult i32 %i.jw, %i.kh
  br i1 %i.ki, label %bb.ba, label %kissat_get_heap_score.exit.i246.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.kj = load ptr, ptr %i.jr, align 8, !tbaa !112
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.jy
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i246.i.i.i

kissat_get_heap_score.exit.i246.i.i.i:            ; preds = %bb.ba, %bb.az
  %i.km = phi double [ %i.kl, %bb.ba ], [ 0.000000e+00, %bb.az ] ; 2 uses
  %i.kn = icmp ult i32 %i.jx, %i.kh
  br i1 %i.kn, label %bb.bb, label %kissat_get_heap_score.exit27.i247.i.i.i

bb.bb:                                            ; preds = %kissat_get_heap_score.exit.i246.i.i.i
  %i.ko = load ptr, ptr %i.jr, align 8, !tbaa !112
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kc
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit27.i247.i.i.i

kissat_get_heap_score.exit27.i247.i.i.i:          ; preds = %bb.bb, %kissat_get_heap_score.exit.i246.i.i.i
  %i.kr = phi double [ %i.kq, %bb.bb ], [ 0.000000e+00, %kissat_get_heap_score.exit.i246.i.i.i ] ; 2 uses
  %i.ks = fcmp olt double %i.km, %i.kr
  br i1 %i.ks, label %less_stable_transitive.exit249.thread.i.i.i, label %less_stable_transitive.exit249.i.i.i

less_stable_transitive.exit249.i.i.i:             ; preds = %kissat_get_heap_score.exit27.i247.i.i.i
  %i.kt = fcmp ule double %i.km, %i.kr
  %i.ku = icmp samesign ult i32 %i.jw, %i.jx
  %spec.select.i248.i.i.i = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %spec.select.i248.i.i.i, label %less_stable_transitive.exit249.thread.i.i.i, label %less_stable_transitive.exit249.thread17.i.i.i

less_stable_transitive.exit249.thread.i.i.i:      ; preds = %less_stable_transitive.exit249.i.i.i, %kissat_get_heap_score.exit27.i247.i.i.i, %bb.ax
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !110
  store i32 %i.jv, ptr %i.js, align 4, !tbaa !110
  br label %less_stable_transitive.exit249.thread17.i.i.i

less_stable_transitive.exit249.thread17.i.i.i:    ; preds = %less_stable_transitive.exit249.thread.i.i.i, %less_stable_transitive.exit249.i.i.i, %bb.ay
  %i.kv = add i64 %.018637.i.i.i, -1              ; 2 uses
  %.not206.i.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not206.i.i.i, label %.preheader.i.i.i, label %bb.ax, !llvm.loop !15

bb.bc:                                            ; preds = %less_stable_transitive.exit257.thread20.i.i.i, %.lr.ph40.i.i.i
  %.018539.i.i.i = phi i64 [ 2, %.lr.ph40.i.i.i ], [ %i.mb, %less_stable_transitive.exit257.thread20.i.i.i ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.018539.i.i.i
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !110 ; 2 uses
  %i.ky = lshr i32 %i.kx, 1                       ; 3 uses
  %i.kz = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kz
  br label %bb.bd

bb.bd:                                            ; preds = %less_stable_transitive.exit257.thread.i.i.i, %bb.bc
  %.0.i.i.i = phi i64 [ %.018539.i.i.i, %bb.bc ], [ %i.ma, %less_stable_transitive.exit257.thread.i.i.i ] ; 2 uses
  %i.lb = getelementptr [4 x i8], ptr %.val.i.i, i64 %.0.i.i.i ; 3 uses
  %i.lc = getelementptr i8, ptr %i.lb, i64 -4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !110 ; 2 uses
  %i.le = lshr i32 %i.ld, 1                       ; 3 uses
  %i.lf = load i16, ptr %i.la, align 4
  %i.lg = and i16 %i.lf, 1024
  %.not26.i250.i.i.i = icmp eq i16 %i.lg, 0       ; 2 uses
  %i.lh = zext nneg i32 %i.le to i64              ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 4
  %i.lk = and i16 %i.lj, 1024
  %i.ll = icmp ne i16 %i.lk, 0                    ; 2 uses
  %or.cond.i251.i.i.i = select i1 %.not26.i250.i.i.i, i1 %i.ll, i1 false
  br i1 %or.cond.i251.i.i.i, label %less_stable_transitive.exit257.thread.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %or.cond4.i252.i.i.i = select i1 %.not26.i250.i.i.i, i1 true, i1 %i.ll
  br i1 %or.cond4.i252.i.i.i, label %bb.bf, label %less_stable_transitive.exit257.thread20.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.lm = load i32, ptr %3, align 4, !tbaa !111   ; 2 uses
  %i.ln = icmp ult i32 %i.ky, %i.lm
  br i1 %i.ln, label %bb.bg, label %kissat_get_heap_score.exit.i254.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.lo = load ptr, ptr %4, align 8, !tbaa !112
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.kz
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit.i254.i.i.i

kissat_get_heap_score.exit.i254.i.i.i:            ; preds = %bb.bg, %bb.bf
  %i.lr = phi double [ %i.lq, %bb.bg ], [ 0.000000e+00, %bb.bf ] ; 2 uses
  %i.ls = icmp ult i32 %i.le, %i.lm
  br i1 %i.ls, label %bb.bh, label %kissat_get_heap_score.exit27.i255.i.i.i

bb.bh:                                            ; preds = %kissat_get_heap_score.exit.i254.i.i.i
  %i.lt = load ptr, ptr %4, align 8, !tbaa !112
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lh
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !113
  br label %kissat_get_heap_score.exit27.i255.i.i.i

kissat_get_heap_score.exit27.i255.i.i.i:          ; preds = %bb.bh, %kissat_get_heap_score.exit.i254.i.i.i
  %i.lw = phi double [ %i.lv, %bb.bh ], [ 0.000000e+00, %kissat_get_heap_score.exit.i254.i.i.i ] ; 2 uses
  %i.lx = fcmp olt double %i.lr, %i.lw
  br i1 %i.lx, label %less_stable_transitive.exit257.thread.i.i.i, label %less_stable_transitive.exit257.i.i.i

less_stable_transitive.exit257.i.i.i:             ; preds = %kissat_get_heap_score.exit27.i255.i.i.i
  %i.ly = fcmp ule double %i.lr, %i.lw
  %i.lz = icmp samesign ult i32 %i.ky, %i.le
  %spec.select.i256.i.i.i = select i1 %i.ly, i1 %i.lz, i1 false
  br i1 %spec.select.i256.i.i.i, label %less_stable_transitive.exit257.thread.i.i.i, label %less_stable_transitive.exit257.thread20.i.i.i

less_stable_transitive.exit257.thread.i.i.i:      ; preds = %less_stable_transitive.exit257.i.i.i, %kissat_get_heap_score.exit27.i255.i.i.i, %bb.bd
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !110
  %i.ma = add i64 %.0.i.i.i, -1
  br label %bb.bd, !llvm.loop !16

less_stable_transitive.exit257.thread20.i.i.i:    ; preds = %less_stable_transitive.exit257.i.i.i, %bb.be
  store i32 %i.kx, ptr %i.lb, align 4, !tbaa !110
  %i.mb = add nuw i64 %.018539.i.i.i, 1           ; 2 uses
  %exitcond.i.i.i = icmp eq i64 %i.mb, %umax.i.i.i
  br i1 %exitcond.i.i.i, label %schedule_transitive.exit, label %bb.bc, !llvm.loop !17

bb.bi:                                            ; preds = %._crit_edge.i46
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !117 ; 15 uses
  %i.me = ptrtoint ptr %.val.i.i to i64
  %i.mf = sub i64 %.val5.i.i, %i.me               ; 2 uses
  %i.mg = ashr exact i64 %i.mf, 2                 ; 4 uses
  %i.mh = icmp ult i64 %i.mg, 2
  br i1 %i.mh, label %schedule_transitive.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mi = add nsw i64 %i.mg, -1                   ; 3 uses
  %i.mj = icmp ult i64 %i.mg, 12
  br i1 %i.mj, label %.thread.i22.i.i, label %.preheader37.i.i.i

.preheader37.i.i.i:                               ; preds = %bb.bj
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.backedge334, %.preheader37.i.i.i
  %.0195.i8.i.i = phi i64 [ 0, %.preheader37.i.i.i ], [ %.0195.i8.i.i.be, %.backedge334 ] ; 7 uses
  %.0193.i9.i.i = phi i64 [ %i.mi, %.preheader37.i.i.i ], [ %.0193.i9.i.i.be, %.backedge334 ] ; 6 uses
  %i.mn = sub i64 %.0193.i9.i.i, %.0195.i8.i.i
  %i.mo = lshr i64 %i.mn, 1
  %i.mp = getelementptr [4 x i8], ptr %.val.i.i, i64 %.0195.i8.i.i ; 5 uses
  %i.mq = getelementptr [4 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !110 ; 5 uses
  %i.ms = add i64 %.0193.i9.i.i, -1               ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ms ; 7 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !110
  store i32 %i.mu, ptr %i.mq, align 4, !tbaa !110
  store i32 %i.mr, ptr %i.mt, align 4, !tbaa !110
  %i.mv = load i32, ptr %i.mp, align 4, !tbaa !110 ; 5 uses
  %i.mw = lshr i32 %i.mr, 1
  %i.mx = lshr i32 %i.mv, 1
  %i.my = zext nneg i32 %i.mw to i64              ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 4
  %i.nb = and i16 %i.na, 1024
  %.not20.i.i.i.i = icmp eq i16 %i.nb, 0          ; 2 uses
  %i.nc = zext nneg i32 %i.mx to i64              ; 4 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 4            ; 3 uses
  %i.nf = and i16 %i.ne, 1024
  %i.ng = icmp ne i16 %i.nf, 0                    ; 2 uses
  %or.cond.i.i10.i.i = select i1 %.not20.i.i.i.i, i1 %i.ng, i1 false
  br i1 %or.cond.i.i10.i.i, label %less_focused_transitive.exit.thread3.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %or.cond4.i.i11.i.i = select i1 %.not20.i.i.i.i, i1 true, i1 %i.ng
  br i1 %or.cond4.i.i11.i.i, label %less_focused_transitive.exit.i.i.i, label %less_focused_transitive.exit.thread.i.i.i

less_focused_transitive.exit.i.i.i:               ; preds = %bb.bl
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.my
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !119
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.nc
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !119
  %.not.i31.i.i = icmp ult i32 %i.nj, %i.nm
  br i1 %.not.i31.i.i, label %less_focused_transitive.exit.thread3.i.i.i, label %less_focused_transitive.exit.thread.i.i.i

less_focused_transitive.exit.thread3.i.i.i:       ; preds = %less_focused_transitive.exit.i.i.i, %bb.bk
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !110
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !110
  %.pre.i32.i.i = load i32, ptr %i.mp, align 4, !tbaa !110 ; 2 uses
  %.pre87.i.i.i = lshr i32 %.pre.i32.i.i, 1
  %.pre89.i.i.i = zext nneg i32 %.pre87.i.i.i to i64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre89.i.i.i
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 4
  br label %less_focused_transitive.exit.thread.i.i.i

less_focused_transitive.exit.thread.i.i.i:        ; preds = %less_focused_transitive.exit.thread3.i.i.i, %less_focused_transitive.exit.i.i.i, %bb.bl
  %i.nn = phi i16 [ %i.ne, %bb.bl ], [ %i.ne, %less_focused_transitive.exit.i.i.i ], [ %.pre.i.i, %less_focused_transitive.exit.thread3.i.i.i ]
  %.pre-phi90.i.i.i = phi i64 [ %i.nc, %bb.bl ], [ %i.nc, %less_focused_transitive.exit.i.i.i ], [ %.pre89.i.i.i, %less_focused_transitive.exit.thread3.i.i.i ] ; 3 uses
  %i.no = phi i32 [ %i.mr, %bb.bl ], [ %i.mr, %less_focused_transitive.exit.i.i.i ], [ %i.mv, %less_focused_transitive.exit.thread3.i.i.i ] ; 3 uses
  %i.np = phi i32 [ %i.mv, %bb.bl ], [ %i.mv, %less_focused_transitive.exit.i.i.i ], [ %.pre.i32.i.i, %less_focused_transitive.exit.thread3.i.i.i ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.0193.i9.i.i ; 3 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !110 ; 4 uses
  %i.ns = lshr i32 %i.nr, 1
  %i.nt = zext nneg i32 %i.ns to i64              ; 4 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.nt
  %i.nv = load i16, ptr %i.nu, align 4
  %i.nw = and i16 %i.nv, 1024                     ; 2 uses
  %.not20.i216.i.i.i = icmp eq i16 %i.nw, 0       ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre-phi90.i.i.i
  %i.ny = and i16 %i.nn, 1024
  %i.nz = icmp ne i16 %i.ny, 0                    ; 2 uses
  %or.cond.i217.i.i.i = select i1 %.not20.i216.i.i.i, i1 %i.nz, i1 false
  br i1 %or.cond.i217.i.i.i, label %less_focused_transitive.exit220.thread8.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %less_focused_transitive.exit.thread.i.i.i
  %or.cond4.i218.i.i.i = select i1 %.not20.i216.i.i.i, i1 true, i1 %i.nz
  br i1 %or.cond4.i218.i.i.i, label %less_focused_transitive.exit220.i.i.i, label %less_focused_transitive.exit220.thread.thread.i.i.i

less_focused_transitive.exit220.thread.thread.i.i.i: ; preds = %bb.bm
  %i.oa = lshr i32 %i.no, 1
  %i.ob = zext nneg i32 %i.oa to i64              ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 4
  %i.oe = and i16 %i.od, 1024
  %i.of = icmp ne i16 %i.oe, 0
  br label %bb.bn

less_focused_transitive.exit220.i.i.i:            ; preds = %bb.bm
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.nt
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !119
  %i.oj = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %.pre-phi90.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !119
  %.not32.i.i.i = icmp ult i32 %i.oi, %i.ol
  br i1 %.not32.i.i.i, label %less_focused_transitive.exit220.thread8.i.i.i, label %less_focused_transitive.exit220.thread.i.i.i

less_focused_transitive.exit220.thread8.i.i.i:    ; preds = %less_focused_transitive.exit220.i.i.i, %less_focused_transitive.exit.thread.i.i.i
  store i32 %i.nr, ptr %i.mp, align 4, !tbaa !110
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !110
  %.pre81.i.i.i = load i32, ptr %i.mt, align 4, !tbaa !110
  %.pre86.i.i.i = load i16, ptr %i.nx, align 4
  %.pre92.i.i.i = and i16 %.pre86.i.i.i, 1024
  br label %less_focused_transitive.exit220.thread.i.i.i

less_focused_transitive.exit220.thread.i.i.i:     ; preds = %less_focused_transitive.exit220.thread8.i.i.i, %less_focused_transitive.exit220.i.i.i
  %.pre-phi93.i29.i.i = phi i16 [ %.pre92.i.i.i, %less_focused_transitive.exit220.thread8.i.i.i ], [ %i.nw, %less_focused_transitive.exit220.i.i.i ]
  %.pre-phi.i30.i.i = phi i64 [ %.pre-phi90.i.i.i, %less_focused_transitive.exit220.thread8.i.i.i ], [ %i.nt, %less_focused_transitive.exit220.i.i.i ] ; 2 uses
  %i.om = phi i32 [ %.pre81.i.i.i, %less_focused_transitive.exit220.thread8.i.i.i ], [ %i.no, %less_focused_transitive.exit220.i.i.i ] ; 3 uses
  %i.on = phi i32 [ %i.np, %less_focused_transitive.exit220.thread8.i.i.i ], [ %i.nr, %less_focused_transitive.exit220.i.i.i ] ; 2 uses
  %i.oo = lshr i32 %i.om, 1
  %.not20.i221.i.i.i = icmp eq i16 %.pre-phi93.i29.i.i, 0 ; 2 uses
  %i.op = zext nneg i32 %i.oo to i64              ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.op
  %i.or = load i16, ptr %i.oq, align 4
  %i.os = and i16 %i.or, 1024
  %i.ot = icmp ne i16 %i.os, 0                    ; 2 uses
  %or.cond.i222.i.i.i = select i1 %.not20.i221.i.i.i, i1 %i.ot, i1 false
  br i1 %or.cond.i222.i.i.i, label %less_focused_transitive.exit225.thread13.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %less_focused_transitive.exit220.thread.i.i.i, %less_focused_transitive.exit220.thread.thread.i.i.i
  %i.ou = phi i1 [ %i.of, %less_focused_transitive.exit220.thread.thread.i.i.i ], [ %i.ot, %less_focused_transitive.exit220.thread.i.i.i ]
  %i.ov = phi i64 [ %i.ob, %less_focused_transitive.exit220.thread.thread.i.i.i ], [ %i.op, %less_focused_transitive.exit220.thread.i.i.i ] ; 3 uses
  %.not20.i221111.i.i.i = phi i1 [ false, %less_focused_transitive.exit220.thread.thread.i.i.i ], [ %.not20.i221.i.i.i, %less_focused_transitive.exit220.thread.i.i.i ]
  %i.ow = phi i32 [ %i.nr, %less_focused_transitive.exit220.thread.thread.i.i.i ], [ %i.on, %less_focused_transitive.exit220.thread.i.i.i ]
  %i.ox = phi i32 [ %i.no, %less_focused_transitive.exit220.thread.thread.i.i.i ], [ %i.om, %less_focused_transitive.exit220.thread.i.i.i ]
  %.pre-phi109.i.i.i = phi i64 [ %i.nt, %less_focused_transitive.exit220.thread.thread.i.i.i ], [ %.pre-phi.i30.i.i, %less_focused_transitive.exit220.thread.i.i.i ] ; 2 uses
  %or.cond4.i223.i.i.i = select i1 %.not20.i221111.i.i.i, i1 true, i1 %i.ou
  br i1 %or.cond4.i223.i.i.i, label %less_focused_transitive.exit225.i.i.i, label %less_focused_transitive.exit225.thread.i.i.i

less_focused_transitive.exit225.i.i.i:            ; preds = %bb.bn
  %i.oy = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %.pre-phi109.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !119
  %i.pb = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.ov
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !119
  %.not33.i.i.i = icmp ult i32 %i.pa, %i.pd
  br i1 %.not33.i.i.i, label %less_focused_transitive.exit225.thread13.i.i.i, label %less_focused_transitive.exit225.thread.i.i.i

less_focused_transitive.exit225.thread13.i.i.i:   ; preds = %less_focused_transitive.exit225.i.i.i, %less_focused_transitive.exit220.thread.i.i.i
  %i.pe = phi i32 [ %i.on, %less_focused_transitive.exit220.thread.i.i.i ], [ %i.ow, %less_focused_transitive.exit225.i.i.i ]
  %i.pf = phi i32 [ %i.om, %less_focused_transitive.exit220.thread.i.i.i ], [ %i.ox, %less_focused_transitive.exit225.i.i.i ]
  %.pre-phi110.i.i.i = phi i64 [ %.pre-phi.i30.i.i, %less_focused_transitive.exit220.thread.i.i.i ], [ %.pre-phi109.i.i.i, %less_focused_transitive.exit225.i.i.i ]
  store i32 %i.pe, ptr %i.mt, align 4, !tbaa !110
  store i32 %i.pf, ptr %i.nq, align 4, !tbaa !110
  br label %less_focused_transitive.exit225.thread.i.i.i

less_focused_transitive.exit225.thread.i.i.i:     ; preds = %less_focused_transitive.exit225.thread13.i.i.i, %less_focused_transitive.exit225.i.i.i, %bb.bn
  %.pre-phi82.i.i.i = phi i64 [ %i.ov, %bb.bn ], [ %.pre-phi110.i.i.i, %less_focused_transitive.exit225.thread13.i.i.i ], [ %i.ov, %less_focused_transitive.exit225.i.i.i ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre-phi82.i.i.i
  %i.ph = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %.pre-phi82.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 3 uses
  %i.pj = add i64 %.0195.i8.i.i, 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %less_focused_transitive.exit225.thread.i.i.i
  %.0190.i12.i.i = phi i64 [ %.0195.i8.i.i, %less_focused_transitive.exit225.thread.i.i.i ], [ %.us-phi.i.i.i, %bb.br ] ; 4 uses
  %.0189.i13.i.i = phi i64 [ %i.ms, %less_focused_transitive.exit225.thread.i.i.i ], [ %i.qx, %bb.br ]
  %i.pk = load i16, ptr %i.pg, align 4
  %.fr.i.i.i = freeze i16 %i.pk
  %i.pl = and i16 %.fr.i.i.i, 1024
  %.not72.i.i.i = icmp eq i16 %i.pl, 0            ; 3 uses
  br i1 %.not72.i.i.i, label %.split.us.i.i.i, label %.critedge.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.bo
  %i.pm = add i64 %.0190.i12.i.i, 1               ; 4 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !110 ; 3 uses
  %i.pp = lshr i32 %i.po, 1
  %i.pq = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.pq
  %i.ps = load i16, ptr %i.pr, align 4
  %i.pt = and i16 %i.ps, 1024
  %.not20.i226.us52.i.i.i = icmp eq i16 %i.pt, 0
  br i1 %.not20.i226.us52.i.i.i, label %less_focused_transitive.exit230.us.lr.ph.i.i.i, label %.critedge36.preheader.i.i.i

less_focused_transitive.exit230.us.lr.ph.i.i.i:   ; preds = %.split.us.i.i.i
  %i.pu = load i32, ptr %i.pi, align 4, !tbaa !119 ; 2 uses
  %i.pv = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.pq
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !119
  %.not73.i48.i.i = icmp ult i32 %i.px, %i.pu
  br i1 %.not73.i48.i.i, label %.critedge.us.i.i.i, label %.critedge36.preheader.i.i.i

.critedge.us.i.i.i:                               ; preds = %less_focused_transitive.exit230.us.lr.ph.i.i.i, %less_focused_transitive.exit230.us.i.i.i
  %i.py = phi i64 [ %i.pz, %less_focused_transitive.exit230.us.i.i.i ], [ %i.pm, %less_focused_transitive.exit230.us.lr.ph.i.i.i ] ; 3 uses
  %i.pz = add i64 %i.py, 1                        ; 4 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !110 ; 3 uses
  %i.qc = lshr i32 %i.qb, 1
  %i.qd = zext nneg i32 %i.qc to i64              ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 4
  %i.qg = and i16 %i.qf, 1024
  %.not20.i226.us.i.i.i = icmp eq i16 %i.qg, 0
  br i1 %.not20.i226.us.i.i.i, label %less_focused_transitive.exit230.us.i.i.i, label %.critedge.us.i..critedge36.preheader.i.loopexit_crit_edge.i.i, !llvm.loop !18

less_focused_transitive.exit230.us.i.i.i:         ; preds = %.critedge.us.i.i.i
  %i.qh = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.qd
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !119
  %.not73.i.i.i = icmp ult i32 %i.qj, %i.pu
  br i1 %.not73.i.i.i, label %.critedge.us.i.i.i, label %.critedge36.preheader.i.i.i, !llvm.loop !18

.critedge.i.i.i:                                  ; preds = %bb.bo, %.critedge.i.i.i.backedge
  %.1191.i14.i.i = phi i64 [ %i.qk, %.critedge.i.i.i.backedge ], [ %.0190.i12.i.i, %bb.bo ] ; 2 uses
  %i.qk = add i64 %.1191.i14.i.i, 1               ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !110 ; 2 uses
  %i.qn = lshr i32 %i.qm, 1
  %i.qo = zext nneg i32 %i.qn to i64              ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.qo
  %i.qq = load i16, ptr %i.qp, align 4
  %i.qr = and i16 %i.qq, 1024
  %.not20.i226.i.i.i = icmp eq i16 %i.qr, 0
  br i1 %.not20.i226.i.i.i, label %.critedge.i.i.i.backedge, label %less_focused_transitive.exit230.i.i.i

less_focused_transitive.exit230.i.i.i:            ; preds = %.critedge.i.i.i
  %i.qs = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.qo
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !119
  %i.qv = load i32, ptr %i.pi, align 4, !tbaa !119
  %.not74.i.i.i = icmp ult i32 %i.qu, %i.qv
  br i1 %.not74.i.i.i, label %.critedge.i.i.i.backedge, label %.critedge36.preheader.i.i.i

.critedge.i.i.i.backedge:                         ; preds = %less_focused_transitive.exit230.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i, !llvm.loop !18

.critedge.us.i..critedge36.preheader.i.loopexit_crit_edge.i.i: ; preds = %.critedge.us.i.i.i
  br label %.critedge36.preheader.i.i.i, !llvm.loop !18

.critedge36.preheader.i.i.i:                      ; preds = %less_focused_transitive.exit230.i.i.i, %less_focused_transitive.exit230.us.i.i.i, %.critedge.us.i..critedge36.preheader.i.loopexit_crit_edge.i.i, %less_focused_transitive.exit230.us.lr.ph.i.i.i, %.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.pz, %less_focused_transitive.exit230.us.i.i.i ], [ %i.pm, %.split.us.i.i.i ], [ %i.pm, %less_focused_transitive.exit230.us.lr.ph.i.i.i ], [ %i.pz, %.critedge.us.i..critedge36.preheader.i.loopexit_crit_edge.i.i ], [ %i.qk, %less_focused_transitive.exit230.i.i.i ] ; 5 uses
  %.us-phi47.i.i.i = phi i64 [ %i.py, %less_focused_transitive.exit230.us.i.i.i ], [ %.0190.i12.i.i, %.split.us.i.i.i ], [ %.0190.i12.i.i, %less_focused_transitive.exit230.us.lr.ph.i.i.i ], [ %i.py, %.critedge.us.i..critedge36.preheader.i.loopexit_crit_edge.i.i ], [ %.1191.i14.i.i, %less_focused_transitive.exit230.i.i.i ] ; 3 uses
  %.us-phi49.i.i.i = phi i32 [ %i.qb, %less_focused_transitive.exit230.us.i.i.i ], [ %i.po, %.split.us.i.i.i ], [ %i.po, %less_focused_transitive.exit230.us.lr.ph.i.i.i ], [ %i.qb, %.critedge.us.i..critedge36.preheader.i.loopexit_crit_edge.i.i ], [ %i.qm, %less_focused_transitive.exit230.i.i.i ] ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.us-phi.i.i.i ; 2 uses
  br label %.critedge36.i.i.i

.critedge36.i.i.i:                                ; preds = %less_focused_transitive.exit235.i.i.i, %.critedge36.preheader.i.i.i
  %.1.i15.i.i = phi i64 [ %i.qx, %less_focused_transitive.exit235.i.i.i ], [ %.0189.i13.i.i, %.critedge36.preheader.i.i.i ] ; 2 uses
  %i.qx = add i64 %.1.i15.i.i, -1                 ; 5 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !110 ; 2 uses
  %i.ra = lshr i32 %i.qz, 1
  %i.rb = zext nneg i32 %i.ra to i64              ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.rb
  %i.rd = load i16, ptr %i.rc, align 4
  %i.re = and i16 %i.rd, 1024
  %i.rf = icmp ne i16 %i.re, 0                    ; 2 uses
  %or.cond.i232.i.i.i = select i1 %.not72.i.i.i, i1 %i.rf, i1 false
  br i1 %or.cond.i232.i.i.i, label %less_focused_transitive.exit235.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.critedge36.i.i.i
  %or.cond4.i233.i.i.i = select i1 %.not72.i.i.i, i1 true, i1 %i.rf
  br i1 %or.cond4.i233.i.i.i, label %bb.bq, label %less_focused_transitive.exit235.thread.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.rg = load i32, ptr %i.pi, align 4, !tbaa !119
  %i.rh = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.rb
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !119
  %i.rk = icmp uge i32 %i.rg, %i.rj
  br label %less_focused_transitive.exit235.i.i.i

less_focused_transitive.exit235.i.i.i:            ; preds = %bb.bq, %.critedge36.i.i.i
  %.0.i234.i.i.i = phi i1 [ false, %.critedge36.i.i.i ], [ %i.rk, %bb.bq ]
  %i.rl = icmp eq i64 %.1.i15.i.i, %i.pj
  %or.cond.i28.i.i = or i1 %i.rl, %.0.i234.i.i.i
  br i1 %or.cond.i28.i.i, label %less_focused_transitive.exit235.thread.i.i.i, label %.critedge36.i.i.i, !llvm.loop !19

less_focused_transitive.exit235.thread.i.i.i:     ; preds = %less_focused_transitive.exit235.i.i.i, %bb.bp
  %.not210.i.i.i = icmp ult i64 %.us-phi.i.i.i, %i.qx
  br i1 %.not210.i.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %less_focused_transitive.exit235.thread.i.i.i
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.qx
  store i32 %i.qz, ptr %i.qw, align 4, !tbaa !110
  store i32 %.us-phi49.i.i.i, ptr %i.rm, align 4, !tbaa !110
  br label %bb.bo

bb.bs:                                            ; preds = %less_focused_transitive.exit235.thread.i.i.i
  %i.rn = load i32, ptr %i.mt, align 4, !tbaa !110
  store i32 %i.rn, ptr %i.qw, align 4, !tbaa !110
  store i32 %.us-phi49.i.i.i, ptr %i.mt, align 4, !tbaa !110
  %i.ro = sub i64 %.us-phi.i.i.i, %.0195.i8.i.i
  %i.rp = sub i64 %.0193.i9.i.i, %.us-phi.i.i.i
  %i.rq = icmp ult i64 %i.ro, %i.rp               ; 4 uses
  %i.rr = add i64 %.us-phi47.i.i.i, 2             ; 2 uses
  %.0195..i16.i.i = select i1 %i.rq, i64 %.0195.i8.i.i, i64 %i.rr ; 2 uses
  %.1191..0193.i17.i.i = select i1 %i.rq, i64 %.us-phi47.i.i.i, i64 %.0193.i9.i.i ; 2 uses
  %..0195.i18.i.i = select i1 %i.rq, i64 %i.rr, i64 %.0195.i8.i.i ; 3 uses
  %.0193..1191.i19.i.i = select i1 %i.rq, i64 %.0193.i9.i.i, i64 %.us-phi47.i.i.i ; 3 uses
  %i.rs = sub i64 %.1191..0193.i17.i.i, %.0195..i16.i.i
  %i.rt = icmp ugt i64 %i.rs, 10
  br i1 %i.rt, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %i.ru = load ptr, ptr %i.ml, align 8, !tbaa !114 ; 2 uses
  %i.rv = load ptr, ptr %i.mm, align 8, !tbaa !115 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.mk, i64 noundef 8) #5
  %.pre83.i.i.i = load ptr, ptr %i.ml, align 8, !tbaa !114
  %.pre84.i.i.i = load ptr, ptr %i.mm, align 8, !tbaa !115
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.rx = phi ptr [ %.pre84.i.i.i, %bb.bu ], [ %i.rv, %bb.bt ]
  %i.ry = phi ptr [ %.pre83.i.i.i, %bb.bu ], [ %i.ru, %bb.bt ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 3 uses
  store ptr %i.rz, ptr %i.ml, align 8, !tbaa !114
  store i64 %..0195.i18.i.i, ptr %i.ry, align 8, !tbaa !106
  %i.sa = icmp eq ptr %i.rz, %i.rx
  br i1 %i.sa, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.mk, i64 noundef 8) #5
  %.pre85.i.i.i = load ptr, ptr %i.ml, align 8, !tbaa !114
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.sb = phi ptr [ %.pre85.i.i.i, %bb.bw ], [ %i.rz, %bb.bv ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr %i.sc, ptr %i.ml, align 8, !tbaa !114
  store i64 %.0193..1191.i19.i.i, ptr %i.sb, align 8, !tbaa !106
  br label %.backedge334

bb.by:                                            ; preds = %bb.bs
  %i.sd = sub i64 %.0193..1191.i19.i.i, %..0195.i18.i.i
  %i.se = icmp ugt i64 %i.sd, 10
  br i1 %i.se, label %.backedge334, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sf = load ptr, ptr %i.mk, align 8, !tbaa !116
  %i.sg = load ptr, ptr %i.ml, align 8, !tbaa !114 ; 3 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %.thread.i22.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.si = getelementptr inbounds i8, ptr %i.sg, i64 -8
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !106
  %i.sk = getelementptr inbounds i8, ptr %i.sg, i64 -16 ; 2 uses
  store ptr %i.sk, ptr %i.ml, align 8, !tbaa !114
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !106
  br label %.backedge334

.backedge334:                                     ; preds = %bb.ca, %bb.by, %bb.bx
  %.0195.i8.i.i.be = phi i64 [ %..0195.i18.i.i, %bb.by ], [ %.0195..i16.i.i, %bb.bx ], [ %i.sl, %bb.ca ]
  %.0193.i9.i.i.be = phi i64 [ %.0193..1191.i19.i.i, %bb.by ], [ %.1191..0193.i17.i.i, %bb.bx ], [ %i.sj, %bb.ca ]
  br label %bb.bk

.thread.i22.i.i:                                  ; preds = %bb.bz, %bb.bj
  %.not21166.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.not21166.i.i.i, label %.preheader.i24.i.i, label %.lr.ph.i23.i.i

.preheader.i24.i.i:                               ; preds = %less_focused_transitive.exit240.thread.i.i.i, %.thread.i22.i.i
  %.not21268.i.i.i = icmp eq i64 %i.mf, 8
  br i1 %.not21268.i.i.i, label %schedule_transitive.exit, label %.lr.ph70.preheader.i.i.i

.lr.ph70.preheader.i.i.i:                         ; preds = %.preheader.i24.i.i
  %umax.i25.i.i = call i64 @llvm.umax.i64(i64 %i.mg, i64 3)
  br label %.lr.ph70.i.i.i

.lr.ph.i23.i.i:                                   ; preds = %.thread.i22.i.i, %less_focused_transitive.exit240.thread.i.i.i
  %.018667.i.i.i = phi i64 [ %i.th, %less_focused_transitive.exit240.thread.i.i.i ], [ %i.mi, %.thread.i22.i.i ] ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.018667.i.i.i ; 3 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !110 ; 2 uses
  %i.so = getelementptr i8, ptr %i.sm, i64 -4     ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !110 ; 2 uses
  %i.sq = lshr i32 %i.sn, 1
  %i.sr = lshr i32 %i.sp, 1
  %i.ss = zext nneg i32 %i.sq to i64              ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 4
  %i.sv = and i16 %i.su, 1024
  %.not20.i236.i.i.i = icmp eq i16 %i.sv, 0       ; 2 uses
  %i.sw = zext nneg i32 %i.sr to i64              ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 4
  %i.sz = and i16 %i.sy, 1024
  %i.ta = icmp ne i16 %i.sz, 0                    ; 2 uses
  %or.cond.i237.i.i.i = select i1 %.not20.i236.i.i.i, i1 %i.ta, i1 false
  br i1 %or.cond.i237.i.i.i, label %less_focused_transitive.exit240.thread24.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i23.i.i
  %or.cond4.i238.i.i.i = select i1 %.not20.i236.i.i.i, i1 true, i1 %i.ta
  br i1 %or.cond4.i238.i.i.i, label %less_focused_transitive.exit240.i.i.i, label %less_focused_transitive.exit240.thread.i.i.i

less_focused_transitive.exit240.i.i.i:            ; preds = %bb.cb
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.ss
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !119
  %i.te = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.sw
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !119
  %.not34.i.i.i = icmp ult i32 %i.td, %i.tg
  br i1 %.not34.i.i.i, label %less_focused_transitive.exit240.thread24.i.i.i, label %less_focused_transitive.exit240.thread.i.i.i

less_focused_transitive.exit240.thread24.i.i.i:   ; preds = %less_focused_transitive.exit240.i.i.i, %.lr.ph.i23.i.i
  store i32 %i.sn, ptr %i.so, align 4, !tbaa !110
  store i32 %i.sp, ptr %i.sm, align 4, !tbaa !110
  br label %less_focused_transitive.exit240.thread.i.i.i

less_focused_transitive.exit240.thread.i.i.i:     ; preds = %less_focused_transitive.exit240.thread24.i.i.i, %less_focused_transitive.exit240.i.i.i, %bb.cb
  %i.th = add i64 %.018667.i.i.i, -1              ; 2 uses
  %.not211.i.i.i = icmp eq i64 %i.th, 0
  br i1 %.not211.i.i.i, label %.preheader.i24.i.i, label %.lr.ph.i23.i.i, !llvm.loop !20

.lr.ph70.i.i.i:                                   ; preds = %less_focused_transitive.exit245.thread.i.i.i, %.lr.ph70.preheader.i.i.i
  %.018569.i.i.i = phi i64 [ %i.uf, %less_focused_transitive.exit245.thread.i.i.i ], [ 2, %.lr.ph70.preheader.i.i.i ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.018569.i.i.i
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !110 ; 2 uses
  %i.tk = lshr i32 %i.tj, 1
  %i.tl = zext nneg i32 %i.tk to i64              ; 2 uses
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.tl
  br label %bb.cc

bb.cc:                                            ; preds = %less_focused_transitive.exit245.thread29.i.i.i, %.lr.ph70.i.i.i
  %.0.i26.i.i = phi i64 [ %.018569.i.i.i, %.lr.ph70.i.i.i ], [ %i.ue, %less_focused_transitive.exit245.thread29.i.i.i ] ; 2 uses
  %i.tp = getelementptr [4 x i8], ptr %.val.i.i, i64 %.0.i26.i.i ; 3 uses
  %i.tq = getelementptr i8, ptr %i.tp, i64 -4
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !110 ; 2 uses
  %i.ts = lshr i32 %i.tr, 1
  %i.tt = load i16, ptr %i.to, align 4
  %i.tu = and i16 %i.tt, 1024
  %.not20.i241.i.i.i = icmp eq i16 %i.tu, 0       ; 2 uses
  %i.tv = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.tv
  %i.tx = load i16, ptr %i.tw, align 4
  %i.ty = and i16 %i.tx, 1024
  %i.tz = icmp ne i16 %i.ty, 0                    ; 2 uses
  %or.cond.i242.i.i.i = select i1 %.not20.i241.i.i.i, i1 %i.tz, i1 false
  br i1 %or.cond.i242.i.i.i, label %less_focused_transitive.exit245.thread29.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %or.cond4.i243.i.i.i = select i1 %.not20.i241.i.i.i, i1 true, i1 %i.tz
  br i1 %or.cond4.i243.i.i.i, label %less_focused_transitive.exit245.i.i.i, label %less_focused_transitive.exit245.thread.i.i.i

less_focused_transitive.exit245.i.i.i:            ; preds = %bb.cd
  %i.ua = load i32, ptr %i.tn, align 4, !tbaa !119
  %i.ub = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %i.tv
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !119
  %.not35.i.i.i = icmp ult i32 %i.ua, %i.ud
  br i1 %.not35.i.i.i, label %less_focused_transitive.exit245.thread29.i.i.i, label %less_focused_transitive.exit245.thread.i.i.i

less_focused_transitive.exit245.thread29.i.i.i:   ; preds = %less_focused_transitive.exit245.i.i.i, %bb.cc
  store i32 %i.tr, ptr %i.tp, align 4, !tbaa !110
  %i.ue = add i64 %.0.i26.i.i, -1
  br label %bb.cc, !llvm.loop !21

less_focused_transitive.exit245.thread.i.i.i:     ; preds = %less_focused_transitive.exit245.i.i.i, %bb.cd
  store i32 %i.tj, ptr %i.tp, align 4, !tbaa !110
  %i.uf = add nuw i64 %.018569.i.i.i, 1           ; 2 uses
  %exitcond.i27.i.i = icmp eq i64 %i.uf, %umax.i25.i.i
  br i1 %exitcond.i27.i.i, label %schedule_transitive.exit, label %.lr.ph70.i.i.i, !llvm.loop !22

bb.ce:                                            ; preds = %bb.ci, %.lr.ph.i42
  %i.ug = phi ptr [ null, %.lr.ph.i42 ], [ %i.uq, %bb.ci ] ; 3 uses
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.i42 ], [ %indvars.iv.next.i44, %bb.ci ] ; 3 uses
  %i.uh = load ptr, ptr %i.cf, align 8, !tbaa !109
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv.i43
  %i.uj = load i16, ptr %i.ui, align 4
  %i.uk = trunc i16 %i.uj to i1
  br i1 %i.uk, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ul = load ptr, ptr %i.cc, align 8, !tbaa !120
  %i.um = icmp eq ptr %i.ug, %i.ul
  br i1 %i.um, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4) #5
  %.pre.i47 = load ptr, ptr %i.cd, align 8, !tbaa !121
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.un = phi ptr [ %.pre.i47, %bb.cg ], [ %i.ug, %bb.cf ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4 ; 2 uses
  store ptr %i.uo, ptr %i.cd, align 8, !tbaa !121
  %i.up = trunc nuw i64 %indvars.iv.i43 to i32
  store i32 %i.up, ptr %i.un, align 4, !tbaa !110
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  %i.uq = phi ptr [ %i.uo, %bb.ch ], [ %i.ug, %bb.ce ] ; 2 uses
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.cg
  br i1 %.not.i45, label %._crit_edge.i46.loopexit, label %bb.ce, !llvm.loop !23

schedule_transitive.exit:                         ; preds = %less_focused_transitive.exit245.thread.i.i.i, %less_stable_transitive.exit257.thread20.i.i.i, %bb.o, %.preheader.i.i.i, %bb.bi, %.preheader.i24.i.i
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.us = getelementptr i8, ptr %0, i64 840       ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 4136 ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.va = load ptr, ptr %2, align 8, !tbaa !107   ; 2 uses
  %i.vb = load ptr, ptr %i.cd, align 8, !tbaa !121 ; 2 uses
  %.not305 = icmp eq ptr %i.va, %i.vb
  br i1 %.not305, label %.critedge, label %.lr.ph306

.lr.ph306:                                        ; preds = %schedule_transitive.exit, %.critedge267.backedge
  %i.vc = phi ptr [ %i.abr, %.critedge267.backedge ], [ %i.vb, %schedule_transitive.exit ]
  %i.vd = getelementptr inbounds i8, ptr %i.vc, i64 -4 ; 2 uses
  store ptr %i.vd, ptr %i.cd, align 8, !tbaa !121
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !110 ; 2 uses
  %i.vf = load ptr, ptr %i.cl, align 8, !tbaa !109
  %i.vg = zext i32 %i.ve to i64                   ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.vg ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 4
  %i.vj = and i16 %i.vi, -1025
  store i16 %i.vj, ptr %i.vh, align 4
  %i.vk = load ptr, ptr %i.cl, align 8, !tbaa !109
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.vg
  %i.vm = load i16, ptr %i.vl, align 4
  %i.vn = trunc i16 %i.vm to i1
  br i1 %i.vn, label %.preheader, label %.critedge267.backedge

.preheader:                                       ; preds = %.lr.ph306
  %i.vo = shl i32 %i.ve, 1
  %i.vp = zext i32 %i.vo to i64
  br label %bb.cj

bb.cj:                                            ; preds = %.preheader, %bb.dv
  %i.vq = phi i1 [ false, %.preheader ], [ true, %bb.dv ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %bb.dv ]
  %i.vr = or disjoint i64 %indvars.iv, %i.vp      ; 6 uses
  %i.vs = load ptr, ptr %i.ur, align 8, !tbaa !122
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vr
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !97
  %.not40 = icmp eq i8 %i.vu, 0
  br i1 %.not40, label %bb.ck, label %bb.dv

bb.ck:                                            ; preds = %bb.cj
  %i.vv = load ptr, ptr %i.p, align 8, !tbaa !88  ; 3 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.vr ; 4 uses
  %.val183.i = load ptr, ptr %i.us, align 8, !tbaa !93
  %.val184.i = load i32, ptr %i.vw, align 4, !tbaa !95
  %i.vx = getelementptr i8, ptr %i.vw, i64 4
  %.val185.i = load i32, ptr %i.vx, align 4, !tbaa !96 ; 2 uses
  %i.vy = zext i32 %.val184.i to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.val183.i, i64 %i.vy ; 4 uses
  %i.wa = zext i32 %.val185.i to i64              ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.wa, 2
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 %.idx.i48 ; 2 uses
  %i.wc = add nuw nsw i64 %i.wa, 31
  %i.wd = lshr i64 %i.wc, 5
  %i.we = add nuw nsw i64 %i.wd, 1                ; 2 uses
  %i.wf = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.wg = add i64 %i.we, %i.wf
  store i64 %i.wg, ptr %i.bp, align 8, !tbaa !123
  %i.wh = load i64, ptr %i.ut, align 8, !tbaa !124
  %i.wi = add i64 %i.we, %i.wh
  store i64 %i.wi, ptr %i.ut, align 8, !tbaa !124
  %i.wj = trunc nuw i64 %i.vr to i32              ; 4 uses
  %i.wk = xor i32 %i.wj, 1                        ; 2 uses
  %.not222.i = icmp eq i32 %.val185.i, 0
  br i1 %.not222.i, label %transitive_reduce.exit, label %.lr.ph227.i

end_hunk_1
