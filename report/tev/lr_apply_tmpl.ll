Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/lr_apply_tmpl?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lr_sbrow:bb.a
  %i.be = or disjoint i32 %i.ac, 1                ; 5 uses
  br i1 %i.bb, label %.lr.ph.split.preheader, label %backup4xU.exit.us.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.bf = sub i32 %2, %5
  %i.bg = icmp ugt i32 %i.bf, -8
  br label %.lr.ph.split

backup4xU.exit.us.preheader:                      ; preds = %.lr.ph
  %i.bh = lshr i32 %i.u, %i.ba
  %i.bi = and i32 %i.bh, 1
  %i.bj = or disjoint i32 %i.bi, %i.ao
  %i.bk = ashr i32 %i.u, %i.aa
  %i.bl = add nsw i32 %i.bk, %i.am
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [108 x i8], ptr %i.aq, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [36 x i8], ptr %i.bn, i64 %i.at
  %i.bp = zext nneg i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw [9 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bq, ptr %.sroa.gep134, align 8, !tbaa !68
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !58
  %i.bs = icmp ne i8 %i.br, 0                     ; 2 uses
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %backup4xU.exit.us.preheader
  %.sroa.gep142 = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.sroa.gep142, i32 noundef 0, i32 noundef %2, i32 noundef %6, i32 noundef %i.u, i32 noundef %5, ptr noundef nonnull %i.aw, i32 noundef %i.ac)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %backup4xU.exit.us.preheader
  %i.bt = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.bu = add nsw i32 %i.w, %i.u
  %.not97.us.peel = icmp sgt i32 %i.bu, %3
  br i1 %.not97.us.peel, label %._crit_edge, label %backup4xU.exit.us

backup4xU.exit.us:                                ; preds = %bb.c, %bb.e
  %.0112.us = phi ptr [ %i.cm, %bb.e ], [ %i.bt, %bb.c ] ; 2 uses
  %.089111.us = phi i32 [ %i.cn, %bb.e ], [ 1, %bb.c ] ; 3 uses
  %.090110.us = phi i32 [ %i.bv, %bb.e ], [ %i.u, %bb.c ] ; 2 uses
  %.091.in109.us = phi i1 [ %i.ci, %bb.e ], [ %i.bs, %bb.c ]
  %i.bv = add nsw i32 %.090110.us, %i.u           ; 5 uses
  %i.bw = lshr i32 %i.bv, %i.ba
  %i.bx = and i32 %i.bw, 1
  %i.by = or disjoint i32 %i.bx, %i.ao
  %i.bz = load ptr, ptr %i.ap, align 16, !tbaa !66
  %i.ca = ashr i32 %i.bv, %i.aa
  %i.cb = add nsw i32 %i.ca, %i.am
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [108 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [36 x i8], ptr %i.cd, i64 %i.at
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [9 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %.not99.us = icmp eq i32 %.089111.us, 0         ; 2 uses
  %.sroa.sel.idx.us.sroa.sel = select i1 %.not99.us, ptr %.sroa.gep134, ptr %i.b
  store ptr %i.cg, ptr %.sroa.sel.idx.us.sroa.sel, align 8, !tbaa !68
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !58
  %i.ci = icmp ne i8 %i.ch, 0                     ; 2 uses
  br i1 %.091.in109.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %backup4xU.exit.us
  %.sroa.sel106.idx.us.sroa.sel.idx.sroa.sel.idx = select i1 %.not99.us, i64 1088, i64 0
  %.sroa.sel106.idx.us.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel106.idx.us.sroa.sel.idx.sroa.sel.idx
  %i.cj = zext nneg i32 %.089111.us to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !68
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef nonnull %.0112.us, ptr noundef %.sroa.sel106.idx.us.sroa.sel.idx.sroa.sel, i32 noundef %.090110.us, i32 noundef %2, i32 noundef %6, i32 noundef %i.u, i32 noundef %5, ptr noundef %i.cl, i32 noundef %i.be)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %backup4xU.exit.us
  %i.cm = getelementptr inbounds [2 x i8], ptr %.0112.us, i64 %i.bc ; 2 uses
  %i.cn = xor i32 %.089111.us, 1                  ; 2 uses
  %i.co = add nsw i32 %i.w, %i.bv
  %.not97.us = icmp sgt i32 %i.co, %3
  br i1 %.not97.us, label %._crit_edge, label %backup4xU.exit.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.g
  %.0112 = phi ptr [ %i.eo, %bb.g ], [ %1, %.lr.ph.split.preheader ] ; 3 uses
  %.089111 = phi i32 [ %i.ep, %bb.g ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %.090110 = phi i32 [ %i.cp, %bb.g ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %.091.in109 = phi i1 [ %i.dc, %bb.g ], [ %i.ay, %.lr.ph.split.preheader ]
  %.093108 = phi i32 [ %i.be, %bb.g ], [ %i.ac, %.lr.ph.split.preheader ]
  %i.cp = add nsw i32 %.090110, %i.u              ; 5 uses
  %i.cq = lshr i32 %i.cp, %i.ba
  %i.cr = and i32 %i.cq, 1
  %i.cs = or disjoint i32 %i.cr, %i.ao
  %i.ct = load ptr, ptr %i.ap, align 16, !tbaa !66
  %i.cu = ashr i32 %i.cp, %i.aa
  %i.cv = add nsw i32 %i.cu, %i.am
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [108 x i8], ptr %i.ct, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [36 x i8], ptr %i.cx, i64 %i.at
  %i.cz = zext nneg i32 %i.cs to i64
  %i.da = getelementptr inbounds nuw [9 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %.not99 = icmp eq i32 %.089111, 0               ; 2 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not99, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  store ptr %i.da, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !68
  %i.db = load i8, ptr %i.da, align 1, !tbaa !58
  %i.dc = icmp ne i8 %i.db, 0                     ; 3 uses
  br i1 %i.dc, label %.lr.ph.i, label %backup4xU.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.dd = getelementptr inbounds [2 x i8], ptr %.0112, i64 %i.bc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 2 uses
  %i.df = zext nneg i32 %.089111 to i64
  %i.dg = getelementptr inbounds nuw [1088 x i8], ptr %i.a, i64 %i.df ; 2 uses
  call void @llvm.assume(i1 %.not.i.i)
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.010.i.prol = phi i32 [ %i.di, %.prol.preheader ], [ %i.az, %.lr.ph.i ]
  %.069.i.prol = phi ptr [ %i.dj, %.prol.preheader ], [ %i.dg, %.lr.ph.i ] ; 2 uses
  %.078.i.prol = phi ptr [ %i.dk, %.prol.preheader ], [ %i.de, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dh = load i64, ptr %.078.i.prol, align 2
  store i64 %i.dh, ptr %.069.i.prol, align 2
  %i.di = add nsw i32 %.010.i.prol, -1            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.069.i.prol, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.078.i.prol, i64 %i.n ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.010.i.unr = phi i32 [ %i.az, %.lr.ph.i ], [ %i.di, %.prol.preheader ]
  %.069.i.unr = phi ptr [ %i.dg, %.lr.ph.i ], [ %i.dj, %.prol.preheader ]
  %.078.i.unr = phi ptr [ %i.de, %.lr.ph.i ], [ %i.dk, %.prol.preheader ]
  br i1 %i.bg, label %backup4xU.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.010.i = phi i32 [ %i.eh, %.lr.ph.i.new ], [ %.010.i.unr, %.prol.loopexit ] ; 2 uses
  %.069.i = phi ptr [ %i.ei, %.lr.ph.i.new ], [ %.069.i.unr, %.prol.loopexit ] ; 9 uses
  %.078.i = phi ptr [ %i.ej, %.lr.ph.i.new ], [ %.078.i.unr, %.prol.loopexit ] ; 2 uses
  %i.dl = load i64, ptr %.078.i, align 2
  store i64 %i.dl, ptr %.069.i, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.069.i, i64 8
  %i.dn = getelementptr inbounds i8, ptr %.078.i, i64 %i.n ; 2 uses
  %i.do = load i64, ptr %i.dn, align 2
  store i64 %i.do, ptr %i.dm, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.069.i, i64 16
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.n ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 2
  store i64 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %.069.i, i64 24
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.n ; 2 uses
  %i.du = load i64, ptr %i.dt, align 2
  store i64 %i.du, ptr %i.ds, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 %i.n ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 2
  store i64 %i.dx, ptr %i.dv, align 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.069.i, i64 40
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %i.n ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 2
  store i64 %i.ea, ptr %i.dy, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.069.i, i64 48
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 %i.n ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 2
  store i64 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.069.i, i64 56
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %i.n ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 2
  store i64 %i.eg, ptr %i.ee, align 2
  %i.eh = add nsw i32 %.010.i, -8
  %i.ei = getelementptr inbounds nuw i8, ptr %.069.i, i64 64
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.n
  %i.ek = icmp sgt i32 %.010.i, 8
  br i1 %i.ek, label %.lr.ph.i.new, label %backup4xU.exit

backup4xU.exit:                                   ; preds = %.prol.loopexit, %.lr.ph.i.new, %.lr.ph.split
  br i1 %.091.in109, label %bb.f, label %bb.g

bb.f:                                             ; preds = %backup4xU.exit
  %.sroa.sel106.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not99, i64 1088, i64 0
  %.sroa.sel106.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel106.idx.sroa.sel.idx.sroa.sel.idx
  %i.el = zext nneg i32 %.089111 to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !68
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef %.0112, ptr noundef %.sroa.sel106.idx.sroa.sel.idx.sroa.sel, i32 noundef %.090110, i32 noundef %2, i32 noundef %6, i32 noundef %i.u, i32 noundef %5, ptr noundef %i.en, i32 noundef %.093108)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %backup4xU.exit
  %i.eo = getelementptr inbounds [2 x i8], ptr %.0112, i64 %i.bc ; 2 uses
  %i.ep = xor i32 %.089111, 1                     ; 2 uses
  %i.eq = add nsw i32 %i.w, %i.cp
  %.not97 = icmp sgt i32 %i.eq, %3
  br i1 %.not97, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.c, %bb.a
  %.093.lcssa = phi i32 [ %i.ac, %bb.a ], [ %i.be, %bb.c ], [ %i.be, %bb.g ], [ %i.be, %bb.e ]
  %.091.in.lcssa = phi i1 [ %i.ay, %bb.a ], [ %i.bs, %bb.c ], [ %i.dc, %bb.g ], [ %i.ci, %bb.e ]
  %.090.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %bb.c ], [ %i.cp, %bb.g ], [ %i.bv, %bb.e ] ; 2 uses
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ %i.ep, %bb.g ], [ %i.cn, %bb.e ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.bt, %bb.c ], [ %i.eo, %bb.g ], [ %i.cm, %bb.e ]
  br i1 %.091.in.lcssa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.er = and i32 %.093.lcssa, -3
  %i.es = sub nsw i32 %3, %.090.lcssa
  %.not98 = icmp eq i32 %.089.lcssa, 0
  %.sroa.sel103.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not98, i64 1088, i64 0
  %.sroa.sel103.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel103.idx.sroa.sel.idx.sroa.sel.idx
  %i.et = zext nneg i32 %.089.lcssa to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !68
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef %.0.lcssa, ptr noundef %.sroa.sel103.idx.sroa.sel.idx.sroa.sel, i32 noundef %.090.lcssa, i32 noundef %2, i32 noundef %6, i32 noundef %i.es, i32 noundef %5, ptr noundef %i.ev, i32 noundef %i.er)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lr_stripe(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef range(i32 0, 8) %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %union.LooprestorationParams, align 16 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = icmp ne i32 %5, 0                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = icmp eq i32 %i.e, 1
  %i.g = and i1 %i.c, %i.f                        ; 2 uses
  %i.h = zext i1 %i.g to i32                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.j = zext i1 %i.c to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.m = shl nuw nsw i32 8, %i.h
  %i.n = select i1 %.not, i32 0, i32 %i.m
  %i.o = add nsw i32 %i.n, %4
  %i.p = select i1 %i.g, i32 5, i32 6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 392
  %i.t = load i8, ptr %i.s, align 4, !tbaa !51
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.p, %i.u
  %i.w = ashr i32 %i.o, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !87
  %i.ab = icmp ugt i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.ad = zext nneg i32 %5 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.ag = shl i32 4, %i.u
  %i.ah = mul nsw i32 %i.w, %i.ag
  %i.ai = add nsw i32 %i.ah, -4
  %i.aj = select i1 %i.ab, i32 %i.ai, i32 0
  %i.ak = sext i32 %i.aj to i64
  %i.al = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.am = ashr exact i64 %i.l, 1                  ; 2 uses
  %i.an = mul nsw i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.an
  %i.ap = sext i32 %3 to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = select i1 %.not, i32 56, i32 64
  %i.as = lshr exact i32 %i.ar, %i.h
  %i.at = sub nsw i32 %7, %4
  %i.au = tail call noundef i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.av = load i8, ptr %8, align 1, !tbaa !58     ; 3 uses
  %i.aw = icmp eq i8 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !56
  %i.ba = sext i8 %i.az to i16                    ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i16 %i.ba, ptr %i.bb, align 4, !tbaa !89
  store i16 %i.ba, ptr %10, align 16, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !56
  %i.be = sext i8 %i.bd to i16                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 %i.be, ptr %i.bg, align 2, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !56
  %i.bj = sext i8 %i.bi to i16                    ; 3 uses
  store i16 %i.bj, ptr %i.ax, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 %i.bj, ptr %i.bk, align 4, !tbaa !89
  %i.bl = add nsw i16 %i.be, %i.ba
  %i.bm = add nsw i16 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 6
  %i.bo = shl nsw i16 %i.bm, 1
  %i.bp = sub nsw i16 128, %i.bo
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !89
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !56
  %i.bs = sext i8 %i.br to i16                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i16 %i.bs, ptr %i.bu, align 4, !tbaa !89
  store i16 %i.bs, ptr %i.bt, align 16, !tbaa !89
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !56
  %i.bx = sext i8 %i.bw to i16                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !89
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !56
  %i.cc = sext i8 %i.cb to i16                    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i16 %i.cc, ptr %i.ce, align 4, !tbaa !89
  %i.cf = add nsw i16 %i.bx, %i.bs
  %i.cg = add nsw i16 %i.cf, %i.cc
  %i.ch = shl nsw i16 %i.cg, 1
  %i.ci = sub nsw i16 128, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !89
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 3328
  %i.cl = or i16 %i.bs, %i.ba
  %.not108 = icmp eq i16 %i.cl, 0
  %i.cm = zext i1 %.not108 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cm
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.co = zext i8 %i.av to i64
  %i.cp = icmp ugt i8 %i.av, 2
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr [4 x i8], ptr @dav1d_sgr_params, i64 %i.co ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -12
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !89 ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  store i32 %i.ct, ptr %10, align 16, !tbaa !56
  %i.cu = getelementptr i8, ptr %i.cq, i64 -10
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !89 ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !56
  %i.da = sext i8 %i.cz to i16                    ; 2 uses
  store i16 %i.da, ptr %i.ax, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56
  %i.dd = sext i8 %i.dc to i16
  %i.de = add nsw i16 %i.da, %i.dd
  %i.df = sub nsw i16 128, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !56
  %i.dh = icmp ne i16 %i.cs, 0
  %i.di = zext i1 %i.dh to i64
  %.not107 = icmp eq i16 %i.cv, 0
  %i.dj = select i1 %.not107, i64 0, i64 2
  %i.dk = getelementptr i8, ptr %i.b, i64 3336
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.di
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.099.in = phi ptr [ %i.cn, %bb.b ], [ %i.dm, %bb.c ]
  %.099 = load ptr, ptr %.099.in, align 8, !tbaa !90
  %i.dn = add nsw i32 %i.w, 1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.dp = add nsw i32 %4, %i.au                   ; 2 uses
  %.not109117 = icmp sgt i32 %i.dp, %7
  br i1 %.not109117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4068
  %i.dr = lshr exact i32 64, %i.h
  %.idx = shl nsw i64 %i.l, 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.ds = phi i32 [ %i.dp, %.lr.ph ], [ %i.eg, %bb.f ] ; 3 uses
  %.0122 = phi ptr [ %1, %.lr.ph ], [ %i.ed, %bb.f ] ; 2 uses
  %.097121 = phi ptr [ %2, %.lr.ph ], [ %i.ee, %bb.f ] ; 2 uses
  %.0100120 = phi i32 [ %i.au, %.lr.ph ], [ %i.dz, %bb.f ] ; 2 uses
  %.0101119 = phi ptr [ %i.aq, %.lr.ph ], [ %i.ef, %bb.f ] ; 2 uses
  %.0102118 = phi i32 [ %9, %.lr.ph ], [ %i.ea, %bb.f ]
  %i.dt = load i32, ptr %i.do, align 16, !tbaa !52
  %.not110 = icmp eq i32 %i.dn, %i.dt
  %.not112 = icmp eq i32 %i.ds, %7                ; 2 uses
  %i.du = and i1 %.not112, %.not110
  %.neg111 = select i1 %i.du, i32 0, i32 8
end_hunk_0
