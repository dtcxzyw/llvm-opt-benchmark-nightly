Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddLinear?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cuddLinearAndSifting:bb.a
.lr.ph31.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i32 %i.b, 1
  %i.v = icmp eq i32 %i.b, 1
  br i1 %i.v, label %.lr.ph31.i.epil.preheader, label %.lr.ph31.i.preheader.new

.lr.ph31.i.preheader.new:                         ; preds = %.lr.ph31.i.preheader
  %unroll_iter = and i32 %i.b, 2147483646
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i, %.lr.ph31.i.preheader.new
  %.130.i = phi i32 [ 0, %.lr.ph31.i.preheader.new ], [ %i.an, %.lr.ph31.i ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph31.i.preheader.new ], [ %niter.next.1, %.lr.ph31.i ]
  %i.w = mul nsw i32 %.130.i, %i.h
  %i.x = lshr i32 %.130.i, 6
  %i.y = add nsw i32 %i.w, %i.x
  %i.z = and i32 %.130.i, 62
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = sext i32 %i.y to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !31
  %i.ae = or disjoint i32 %.130.i, 1              ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.h
  %i.ag = lshr i32 %.130.i, 6
  %i.ah = add nsw i32 %i.af, %i.ag
  %i.ai = and i32 %i.ae, 63
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.al
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !31
  %i.an = add nuw nsw i32 %.130.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cuddInitLinear.exit.thread.loopexit.unr-lcssa, label %.lr.ph31.i, !llvm.loop !0

cuddInitLinear.exit:                              ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.ao, align 8, !tbaa !35
  br label %ddLinearAndSiftingAux.exit

bb.d:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !27
  %.not = icmp eq i32 %i.b, %i.aq
  br i1 %.not, label %cuddInitLinear.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call i32 @cuddResizeLinear(ptr noundef nonnull %0)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %ddLinearAndSiftingAux.exit, label %cuddInitLinear.exit.thread

cuddInitLinear.exit.thread.loopexit.unr-lcssa:    ; preds = %.lr.ph31.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cuddInitLinear.exit.thread, label %.lr.ph31.i.epil.preheader

.lr.ph31.i.epil.preheader:                        ; preds = %cuddInitLinear.exit.thread.loopexit.unr-lcssa, %.lr.ph31.i.preheader
  %.130.i.epil.init = phi i32 [ 0, %.lr.ph31.i.preheader ], [ %i.an, %cuddInitLinear.exit.thread.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod161 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.at = mul nsw i32 %.130.i.epil.init, %i.h
  %i.au = lshr i32 %.130.i.epil.init, 6
  %i.av = add nsw i32 %i.at, %i.au
  %i.aw = and i32 %.130.i.epil.init, 63
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = sext i32 %i.av to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.az
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !31
  br label %cuddInitLinear.exit.thread

cuddInitLinear.exit.thread:                       ; preds = %.lr.ph31.i.epil.preheader, %cuddInitLinear.exit.thread.loopexit.unr-lcssa, %.preheader.i, %bb.d, %bb.e
  %i.bb = sext i32 %i.b to i64                    ; 2 uses
  %i.bc = shl nsw i64 %i.bb, 2                    ; 2 uses
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #15 ; 5 uses
  store ptr %i.bd, ptr @entry, align 8, !tbaa !33
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.thread, label %bb.f

.thread:                                          ; preds = %cuddInitLinear.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.bf, align 8, !tbaa !35
  br label %bb.ay

bb.f:                                             ; preds = %cuddInitLinear.exit.thread
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bc) #15 ; 9 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.bi = icmp sgt i32 %i.b, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter162 = and i64 %wide.trip.count, 1
  %i.bn = icmp eq i32 %i.b, 1
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter165 = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.bo, align 8, !tbaa !35
  br label %ddLinearAndSiftingAux.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 6 uses
  %niter166 = phi i64 [ 0, %.lr.ph.new ], [ %niter166.next.1, %bb.h ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !37
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [56 x i8], ptr %i.bm, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !37
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !37
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !37
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [56 x i8], ptr %i.bm, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !37
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter166.next.1 = add i64 %niter166, 2         ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod164 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.epil.init
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !37
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [56 x i8], ptr %i.bm, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.epil.init
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !37
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.epil.init
  %i.cp = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  tail call void @qsort(ptr noundef nonnull %i.bg, i64 noundef %i.bb, i64 noundef 4, ptr noundef nonnull @ddLinearUniqueCompare) #14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !69
  %.90 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.cr)
  %i.cs = icmp sgt i32 %.90, 0
  br i1 %i.cs, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph93, %ddLinearAndSiftingAux.exit.thread
  %indvars.iv108 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next109, %ddLinearAndSiftingAux.exit.thread ] ; 2 uses
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv108
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !37
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37 ; 10 uses
  %i.dd = icmp slt i32 %i.dc, %1
  %i.de = icmp sgt i32 %i.dc, %2
  %or.cond = or i1 %i.dd, %i.de
  br i1 %or.cond, label %ddLinearAndSiftingAux.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = load i32, ptr %i.cu, align 4, !tbaa !39
  %i.dg = load i32, ptr %i.cv, align 8, !tbaa !40
  %i.dh = sub i32 %i.df, %i.dg                    ; 4 uses
  %i.di = icmp eq i32 %i.dc, %1
  br i1 %i.di, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.dj = tail call fastcc ptr @ddLinearAndSiftingDown(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef null) ; 9 uses
  %magicptr.i = ptrtoint ptr %i.dj to i64
  switch i64 %magicptr.i, label %.lr.ph.i.i [
    i64 -1, label %ddLinearAndSiftingBackward.exit.thread.i
    i64 0, label %ddLinearAndSiftingAux.exit.thread
  ]

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.035.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.dj, %bb.k ] ; 2 uses
  %.02634.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.dh, %bb.k ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !43
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 %.02634.i.i) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i, label %.lr.ph38.i.i, label %.lr.ph.i.i, !llvm.loop !61

.lr.ph38.i.i:                                     ; preds = %.lr.ph.i.i, %bb.q
  %.137.i.i = phi ptr [ %i.ei, %bb.q ], [ %i.dj, %.lr.ph.i.i ] ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !43
  %i.dq = icmp eq i32 %i.dp, %spec.select.i.i
  br i1 %i.dq, label %ddLinearAndSiftingBackward.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !45
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.du = load i32, ptr %.137.i.i, align 8, !tbaa !46
  %i.dv = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %i.dw)
  %.not30.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not30.i.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dy = load i32, ptr %.137.i.i, align 8, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !47
  %i.eb = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.dy, i32 noundef %i.ea) #14
  %.not31.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not31.i.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = load i32, ptr %i.dr, align 8, !tbaa !45
  %i.ed = icmp eq i32 %i.ec, 2
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = load i32, ptr %.137.i.i, align 8, !tbaa !46
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !47
  %i.eg = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.ee, i32 noundef %i.ef)
  %.not32.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not32.i.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !44 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.ei, null
  br i1 %.not29.i.i, label %ddLinearAndSiftingBackward.exit.i, label %.lr.ph38.i.i, !llvm.loop !62

bb.r:                                             ; preds = %bb.j
  %i.ej = icmp eq i32 %i.dc, %2
  br i1 %i.ej, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ek = tail call fastcc ptr @ddLinearAndSiftingUp(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1, ptr noundef null) ; 9 uses
  %magicptr169.i = ptrtoint ptr %i.ek to i64
  switch i64 %magicptr169.i, label %.lr.ph.i117.i [
    i64 -1, label %.preheader172.i
    i64 0, label %ddLinearAndSiftingAux.exit.thread
  ]

.lr.ph.i117.i:                                    ; preds = %bb.s, %.lr.ph.i117.i
  %.035.i118.i = phi ptr [ %i.eo, %.lr.ph.i117.i ], [ %i.ek, %bb.s ] ; 2 uses
  %.02634.i119.i = phi i32 [ %spec.select.i120.i, %.lr.ph.i117.i ], [ %i.dh, %bb.s ]
  %i.el = getelementptr inbounds nuw i8, ptr %.035.i118.i, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !43
  %spec.select.i120.i = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %.02634.i119.i) ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.035.i118.i, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !44 ; 2 uses
  %.not.i121.i = icmp eq ptr %i.eo, null
  br i1 %.not.i121.i, label %.lr.ph38.i123.i, label %.lr.ph.i117.i, !llvm.loop !61

.lr.ph38.i123.i:                                  ; preds = %.lr.ph.i117.i, %bb.y
  %.137.i124.i = phi ptr [ %i.fj, %bb.y ], [ %i.ek, %.lr.ph.i117.i ] ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.137.i124.i, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = icmp eq i32 %i.eq, %spec.select.i120.i
  br i1 %i.er, label %.preheader.i67, label %bb.t

bb.t:                                             ; preds = %.lr.ph38.i123.i
  %i.es = getelementptr inbounds nuw i8, ptr %.137.i124.i, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !45
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = load i32, ptr %.137.i124.i, align 8, !tbaa !46
  %i.ew = getelementptr inbounds nuw i8, ptr %.137.i124.i, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47
  %i.ey = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %i.ex)
  %.not30.i129.i = icmp eq i32 %i.ey, 0
  br i1 %.not30.i129.i, label %.preheader172.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ez = load i32, ptr %.137.i124.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %.137.i124.i, i64 4 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !47
  %i.fc = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.fb) #14
  %.not31.i125.i = icmp eq i32 %i.fc, 0
  br i1 %.not31.i125.i, label %.preheader172.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = load i32, ptr %i.es, align 8, !tbaa !45
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ff = load i32, ptr %.137.i124.i, align 8, !tbaa !46
  %i.fg = load i32, ptr %i.fa, align 4, !tbaa !47
  %i.fh = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.ff, i32 noundef %i.fg)
  %.not32.i128.i = icmp eq i32 %i.fh, 0
  br i1 %.not32.i128.i, label %.preheader172.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %.137.i124.i, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !44 ; 2 uses
  %.not29.i126.i = icmp eq ptr %i.fj, null
  br i1 %.not29.i126.i, label %.preheader.i67, label %.lr.ph38.i123.i, !llvm.loop !62

bb.z:                                             ; preds = %bb.r
  %i.fk = sub nsw i32 %i.dc, %1
  %i.fl = sub nsw i32 %2, %i.dc
  %i.fm = icmp sgt i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.fn = tail call fastcc ptr @ddLinearAndSiftingDown(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %2, ptr noundef null) ; 10 uses
  %i.fo = icmp eq ptr %i.fn, inttoptr (i64 -1 to ptr)
  br i1 %i.fo, label %.lr.ph.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = tail call fastcc ptr @ddUndoMoves(ptr noundef nonnull %0, ptr noundef %i.fn)
  %i.fq = tail call fastcc ptr @ddLinearAndSiftingUp(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %1, ptr noundef %i.fp) ; 9 uses
  %magicptr170.i = ptrtoint ptr %i.fq to i64
  switch i64 %magicptr170.i, label %.lr.ph.i132.i [
    i64 -1, label %ddLinearAndSiftingBackward.exit.thread.i
    i64 0, label %ddLinearAndSiftingBackward.exit.i
  ]

.lr.ph.i132.i:                                    ; preds = %bb.ab, %.lr.ph.i132.i
  %.035.i133.i = phi ptr [ %i.fu, %.lr.ph.i132.i ], [ %i.fq, %bb.ab ] ; 2 uses
  %.02634.i134.i = phi i32 [ %spec.select.i135.i, %.lr.ph.i132.i ], [ %i.dh, %bb.ab ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.035.i133.i, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !43
  %spec.select.i135.i = tail call i32 @llvm.smin.i32(i32 %i.fs, i32 %.02634.i134.i) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.035.i133.i, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !44 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.fu, null
  br i1 %.not.i136.i, label %.lr.ph38.i138.i, label %.lr.ph.i132.i, !llvm.loop !61

.lr.ph38.i138.i:                                  ; preds = %.lr.ph.i132.i, %bb.ah
  %.137.i139.i = phi ptr [ %i.gp, %bb.ah ], [ %i.fq, %.lr.ph.i132.i ] ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.137.i139.i, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !43
  %i.fx = icmp eq i32 %i.fw, %spec.select.i135.i
  br i1 %i.fx, label %ddLinearAndSiftingBackward.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph38.i138.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.137.i139.i, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !45
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gb = load i32, ptr %.137.i139.i, align 8, !tbaa !46
  %i.gc = getelementptr inbounds nuw i8, ptr %.137.i139.i, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !47
  %i.ge = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.gb, i32 noundef %i.gd)
  %.not30.i144.i = icmp eq i32 %i.ge, 0
  br i1 %.not30.i144.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gf = load i32, ptr %.137.i139.i, align 8, !tbaa !46
  %i.gg = getelementptr inbounds nuw i8, ptr %.137.i139.i, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !47
  %i.gi = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.gh) #14
  %.not31.i140.i = icmp eq i32 %i.gi, 0
  br i1 %.not31.i140.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = load i32, ptr %i.fy, align 8, !tbaa !45
  %i.gk = icmp eq i32 %i.gj, 2
  br i1 %i.gk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gl = load i32, ptr %.137.i139.i, align 8, !tbaa !46
  %i.gm = load i32, ptr %i.gg, align 4, !tbaa !47
  %i.gn = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.gl, i32 noundef %i.gm)
  %.not32.i143.i = icmp eq i32 %i.gn, 0
  br i1 %.not32.i143.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %.137.i139.i, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !44 ; 2 uses
  %.not29.i141.i = icmp eq ptr %i.gp, null
  br i1 %.not29.i141.i, label %ddLinearAndSiftingBackward.exit.i, label %.lr.ph38.i138.i, !llvm.loop !62

bb.ai:                                            ; preds = %bb.z
  %i.gq = tail call fastcc ptr @ddLinearAndSiftingUp(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %1, ptr noundef null) ; 10 uses
  %i.gr = icmp eq ptr %i.gq, inttoptr (i64 -1 to ptr)
  br i1 %i.gr, label %.lr.ph184.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = tail call fastcc ptr @ddUndoMoves(ptr noundef nonnull %0, ptr noundef %i.gq)
  %i.gt = tail call fastcc ptr @ddLinearAndSiftingDown(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %2, ptr noundef %i.gs) ; 9 uses
  %magicptr171.i = ptrtoint ptr %i.gt to i64
  switch i64 %magicptr171.i, label %.lr.ph.i147.i [
    i64 -1, label %ddLinearAndSiftingBackward.exit.thread.i
    i64 0, label %.preheader.i67
  ]

.lr.ph.i147.i:                                    ; preds = %bb.aj, %.lr.ph.i147.i
  %.035.i148.i = phi ptr [ %i.gx, %.lr.ph.i147.i ], [ %i.gt, %bb.aj ] ; 2 uses
  %.02634.i149.i = phi i32 [ %spec.select.i150.i, %.lr.ph.i147.i ], [ %i.dh, %bb.aj ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.035.i148.i, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !43
  %spec.select.i150.i = tail call i32 @llvm.smin.i32(i32 %i.gv, i32 %.02634.i149.i) ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.035.i148.i, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !44 ; 2 uses
  %.not.i151.i = icmp eq ptr %i.gx, null
  br i1 %.not.i151.i, label %.lr.ph38.i153.i, label %.lr.ph.i147.i, !llvm.loop !61

.lr.ph38.i153.i:                                  ; preds = %.lr.ph.i147.i, %bb.ap
  %.137.i154.i = phi ptr [ %i.hs, %bb.ap ], [ %i.gt, %.lr.ph.i147.i ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.137.i154.i, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !43
  %i.ha = icmp eq i32 %i.gz, %spec.select.i150.i
  br i1 %i.ha, label %ddLinearAndSiftingBackward.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph38.i153.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.137.i154.i, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !45
  %i.hd = icmp eq i32 %i.hc, 1
  br i1 %i.hd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.he = load i32, ptr %.137.i154.i, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %.137.i154.i, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !47
  %i.hh = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.he, i32 noundef %i.hg)
  %.not30.i159.i = icmp eq i32 %i.hh, 0
  br i1 %.not30.i159.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hi = load i32, ptr %.137.i154.i, align 8, !tbaa !46
  %i.hj = getelementptr inbounds nuw i8, ptr %.137.i154.i, i64 4 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !47
  %i.hl = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.hk) #14
  %.not31.i155.i = icmp eq i32 %i.hl, 0
  br i1 %.not31.i155.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hm = load i32, ptr %i.hb, align 8, !tbaa !45
  %i.hn = icmp eq i32 %i.hm, 2
  br i1 %i.hn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ho = load i32, ptr %.137.i154.i, align 8, !tbaa !46
  %i.hp = load i32, ptr %i.hj, align 4, !tbaa !47
  %i.hq = tail call i32 @cuddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.ho, i32 noundef %i.hp)
  %.not32.i158.i = icmp eq i32 %i.hq, 0
  br i1 %.not32.i158.i, label %ddLinearAndSiftingBackward.exit.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hr = getelementptr inbounds nuw i8, ptr %.137.i154.i, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !44 ; 2 uses
  %.not29.i156.i = icmp eq ptr %i.hs, null
  br i1 %.not29.i156.i, label %ddLinearAndSiftingBackward.exit.i, label %.lr.ph38.i153.i, !llvm.loop !62

ddLinearAndSiftingBackward.exit.i:                ; preds = %bb.ap, %.lr.ph38.i153.i, %bb.ah, %.lr.ph38.i138.i, %bb.q, %.lr.ph38.i.i, %bb.ab
  %.088.i = phi ptr [ %i.fq, %bb.ah ], [ null, %bb.ab ], [ null, %bb.q ], [ null, %.lr.ph38.i.i ], [ %i.fq, %.lr.ph38.i138.i ], [ %i.gq, %.lr.ph38.i153.i ], [ %i.gq, %bb.ap ] ; 2 uses
  %.0.i = phi ptr [ %i.fn, %bb.ah ], [ %i.fn, %bb.ab ], [ %i.dj, %bb.q ], [ %i.dj, %.lr.ph38.i.i ], [ %i.fn, %.lr.ph38.i138.i ], [ %i.gt, %.lr.ph38.i153.i ], [ %i.gt, %bb.ap ] ; 2 uses
  %.not112186.i = icmp eq ptr %.0.i, null
  br i1 %.not112186.i, label %.preheader.i67, label %.lr.ph188.i

.lr.ph188.i:                                      ; preds = %ddLinearAndSiftingBackward.exit.i
  %.promoted189.i = load ptr, ptr %i.cw, align 8, !tbaa !48
  br label %bb.aq

..preheader_crit_edge.i:                          ; preds = %bb.aq
  store ptr %.1187.i, ptr %i.cw, align 8, !tbaa !48
  br label %.preheader.i67

.preheader.i67:                                   ; preds = %bb.y, %.lr.ph38.i123.i, %..preheader_crit_edge.i, %ddLinearAndSiftingBackward.exit.i, %bb.aj
  %.088213.i = phi ptr [ %.088.i, %ddLinearAndSiftingBackward.exit.i ], [ %.088.i, %..preheader_crit_edge.i ], [ %i.gq, %bb.aj ], [ %i.ek, %.lr.ph38.i123.i ], [ %i.ek, %bb.y ] ; 2 uses
  %.not113190.i = icmp eq ptr %.088213.i, null
  br i1 %.not113190.i, label %ddLinearAndSiftingAux.exit.thread, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.preheader.i67
  %.promoted193.i = load ptr, ptr %i.cw, align 8, !tbaa !48
  br label %bb.ar

bb.aq:                                            ; preds = %bb.aq, %.lr.ph188.i
  %i.ht = phi ptr [ %.promoted189.i, %.lr.ph188.i ], [ %.1187.i, %bb.aq ]
  %.1187.i = phi ptr [ %.0.i, %.lr.ph188.i ], [ %i.hv, %bb.aq ] ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1187.i, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !44 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.1187.i, i64 4
  store i32 0, ptr %i.hw, align 4, !tbaa !49
  %i.hx = getelementptr inbounds nuw i8, ptr %.1187.i, i64 8
  store ptr %i.ht, ptr %i.hx, align 8, !tbaa !50
  %.not112.i = icmp eq ptr %i.hv, null
  br i1 %.not112.i, label %..preheader_crit_edge.i, label %bb.aq, !llvm.loop !63

bb.ar:                                            ; preds = %bb.ar, %.lr.ph192.i
  %i.hy = phi ptr [ %.promoted193.i, %.lr.ph192.i ], [ %.189191.i, %bb.ar ]
  %.189191.i = phi ptr [ %.088213.i, %.lr.ph192.i ], [ %i.ia, %bb.ar ] ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.189191.i, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !44 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.189191.i, i64 4
  store i32 0, ptr %i.ib, align 4, !tbaa !49
  %i.ic = getelementptr inbounds nuw i8, ptr %.189191.i, i64 8
  store ptr %i.hy, ptr %i.ic, align 8, !tbaa !50
  %.not113.i = icmp eq ptr %i.ia, null
  br i1 %.not113.i, label %..loopexit_crit_edge.i, label %bb.ar, !llvm.loop !64

ddLinearAndSiftingBackward.exit.thread.i:         ; preds = %bb.aj, %bb.ab, %bb.k, %bb.ao, %bb.am, %bb.al, %bb.ag, %bb.ae, %bb.ad, %bb.p, %bb.n, %bb.m
  %.290.i = phi ptr [ %i.fq, %bb.ag ], [ null, %bb.p ], [ %i.gq, %bb.ao ], [ null, %bb.m ], [ null, %bb.n ], [ %i.fq, %bb.ad ], [ %i.fq, %bb.ae ], [ %i.gq, %bb.al ], [ %i.gq, %bb.am ], [ %i.gq, %bb.aj ], [ %i.fq, %bb.ab ], [ null, %bb.k ] ; 2 uses
  %.2.i = phi ptr [ %i.fn, %bb.ag ], [ %i.dj, %bb.p ], [ %i.gt, %bb.ao ], [ %i.dj, %bb.m ], [ %i.dj, %bb.n ], [ %i.fn, %bb.ad ], [ %i.fn, %bb.ae ], [ %i.gt, %bb.al ], [ %i.gt, %bb.am ], [ %i.gt, %bb.aj ], [ %i.fn, %bb.ab ], [ %i.dj, %bb.k ] ; 2 uses
  %.not114180.i = icmp eq ptr %.2.i, null
  br i1 %.not114180.i, label %.preheader172.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %ddLinearAndSiftingBackward.exit.thread.i
  %.2225.i = phi ptr [ %.2.i, %ddLinearAndSiftingBackward.exit.thread.i ], [ %i.fn, %bb.aa ]
  %.290224.i = phi ptr [ %.290.i, %ddLinearAndSiftingBackward.exit.thread.i ], [ null, %bb.aa ]
  %.promoted.i = load ptr, ptr %i.cw, align 8, !tbaa !48
  br label %bb.as

..preheader172_crit_edge.i:                       ; preds = %bb.as
  store ptr %.3181.i, ptr %i.cw, align 8, !tbaa !48
  br label %.preheader172.i

.preheader172.i:                                  ; preds = %bb.s, %bb.x, %bb.v, %bb.u, %..preheader172_crit_edge.i, %ddLinearAndSiftingBackward.exit.thread.i
  %.290219.i = phi ptr [ %.290.i, %ddLinearAndSiftingBackward.exit.thread.i ], [ %.290224.i, %..preheader172_crit_edge.i ], [ %i.ek, %bb.x ], [ %i.ek, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.s ] ; 2 uses
  %.not115182.i = icmp eq ptr %.290219.i, null
  br i1 %.not115182.i, label %ddLinearAndSiftingAux.exit, label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %bb.ai, %.preheader172.i
  %.290219230.i = phi ptr [ %.290219.i, %.preheader172.i ], [ %i.gq, %bb.ai ]
  %.promoted185.i = load ptr, ptr %i.cw, align 8, !tbaa !48
  br label %bb.at

bb.as:                                            ; preds = %bb.as, %.lr.ph.i
  %i.id = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.3181.i, %bb.as ]
  %.3181.i = phi ptr [ %.2225.i, %.lr.ph.i ], [ %i.if, %bb.as ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.3181.i, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !44 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.3181.i, i64 4
  store i32 0, ptr %i.ig, align 4, !tbaa !49
  %i.ih = getelementptr inbounds nuw i8, ptr %.3181.i, i64 8
  store ptr %i.id, ptr %i.ih, align 8, !tbaa !50
  %.not114.i = icmp eq ptr %i.if, null
  br i1 %.not114.i, label %..preheader172_crit_edge.i, label %bb.as, !llvm.loop !65

bb.at:                                            ; preds = %bb.at, %.lr.ph184.i
  %i.ii = phi ptr [ %.promoted185.i, %.lr.ph184.i ], [ %.391183.i, %bb.at ]
  %.391183.i = phi ptr [ %.290219230.i, %.lr.ph184.i ], [ %i.ik, %bb.at ] ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.391183.i, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !44 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.391183.i, i64 4
  store i32 0, ptr %i.il, align 4, !tbaa !49
  %i.im = getelementptr inbounds nuw i8, ptr %.391183.i, i64 8
  store ptr %i.ii, ptr %i.im, align 8, !tbaa !50
  %.not115.i = icmp eq ptr %i.ik, null
  br i1 %.not115.i, label %..loopexit173_crit_edge.i, label %bb.at, !llvm.loop !66

..loopexit_crit_edge.i:                           ; preds = %bb.ar
  store ptr %.189191.i, ptr %i.cw, align 8, !tbaa !48
  br label %ddLinearAndSiftingAux.exit.thread

..loopexit173_crit_edge.i:                        ; preds = %bb.at
  store ptr %.391183.i, ptr %i.cw, align 8, !tbaa !48
  br label %ddLinearAndSiftingAux.exit

ddLinearAndSiftingAux.exit.thread:                ; preds = %bb.k, %bb.s, %..loopexit_crit_edge.i, %.preheader.i67, %bb.i
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.in = load i32, ptr %i.cq, align 8, !tbaa !69
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.in)
  %i.io = sext i32 %. to i64
  %i.ip = icmp slt i64 %indvars.iv.next109, %i.io
  br i1 %i.ip, label %bb.i, label %._crit_edge94, !llvm.loop !67

._crit_edge94:                                    ; preds = %ddLinearAndSiftingAux.exit.thread, %._crit_edge
  tail call void @free(ptr noundef %i.bg) #14
  %i.iq = load ptr, ptr @entry, align 8, !tbaa !33 ; 2 uses
  %.not63 = icmp eq ptr %i.iq, null
  br i1 %.not63, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %._crit_edge94
  tail call void @free(ptr noundef nonnull %i.iq) #14
  store ptr null, ptr @entry, align 8, !tbaa !33
  br label %bb.ay

ddLinearAndSiftingAux.exit:                       ; preds = %..loopexit173_crit_edge.i, %.preheader172.i, %cuddInitLinear.exit, %bb.e, %bb.g
  %.0.ph = phi ptr [ %i.bg, %..loopexit173_crit_edge.i ], [ %i.bg, %.preheader172.i ], [ null, %bb.e ], [ null, %bb.g ], [ null, %cuddInitLinear.exit ] ; 2 uses
  %.pr = load ptr, ptr @entry, align 8, !tbaa !33 ; 2 uses
  %.not65 = icmp eq ptr %.pr, null
  br i1 %.not65, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %ddLinearAndSiftingAux.exit
  tail call void @free(ptr noundef nonnull %.pr) #14
  store ptr null, ptr @entry, align 8, !tbaa !33
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %ddLinearAndSiftingAux.exit
  %.not66 = icmp eq ptr %.0.ph, null
  br i1 %.not66, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @free(ptr noundef nonnull %.0.ph) #14
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.aw, %bb.ax, %bb.au, %._crit_edge94
  %.053 = phi i32 [ 1, %bb.au ], [ 1, %._crit_edge94 ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %.thread ]
  ret i32 %.053
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @cuddInitLinear(ptr nofree noundef captures(none) initializes((392, 400)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = ashr i32 %i.c, 6
  %i.e = add nsw i32 %i.d, 1                      ; 4 uses
  %i.f = mul nsw i32 %i.e, %i.b                   ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #15 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.l, align 8, !tbaa !35
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = add i64 %i.n, %i.h
  store i64 %i.o, ptr %i.m, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.b, ptr %i.p, align 8, !tbaa !27
  %i.q = icmp sgt i32 %i.f, 0
  br i1 %i.q, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = zext nneg i32 %i.f to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.s, i1 false), !tbaa !31
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.c
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph31.preheader, label %.loopexit

.lr.ph31.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.b, 1
  %i.u = icmp eq i32 %i.b, 1
  br i1 %i.u, label %.lr.ph31.epil.preheader, label %.lr.ph31.preheader.new

.lr.ph31.preheader.new:                           ; preds = %.lr.ph31.preheader
  %unroll_iter = and i32 %i.b, 2147483646
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31, %.lr.ph31.preheader.new
  %.130 = phi i32 [ 0, %.lr.ph31.preheader.new ], [ %i.am, %.lr.ph31 ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph31.preheader.new ], [ %niter.next.1, %.lr.ph31 ]
  %i.v = mul nsw i32 %.130, %i.e
  %i.w = lshr i32 %.130, 6
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = and i32 %.130, 62
  %i.z = shl nuw i32 1, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ab
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !31
  %i.ad = or disjoint i32 %.130, 1                ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.e
  %i.af = lshr i32 %.130, 6
  %i.ag = add nsw i32 %i.ae, %i.af
  %i.ah = and i32 %i.ad, 63
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ak
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !31
  %i.am = add nuw nsw i32 %.130, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph31, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph31
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph31.epil.preheader

.lr.ph31.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph31.preheader
  %.130.epil.init = phi i32 [ 0, %.lr.ph31.preheader ], [ %i.am, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod35 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.an = mul nsw i32 %.130.epil.init, %i.e
  %i.ao = lshr i32 %.130.epil.init, 6
  %i.ap = add nsw i32 %i.an, %i.ao
  %i.aq = and i32 %.130.epil.init, 63
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.at
  store i64 %i.as, ptr %i.au, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph31.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.b
  %.027 = phi i32 [ 0, %bb.b ], [ 1, %.preheader ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 1, %.lr.ph31.epil.preheader ]
  ret i32 %.027
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @cuddResizeLinear(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 12 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = ashr i32 %i.c, 6                         ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32   ; 7 uses
  %i.j = add nsw i32 %i.i, -1
  %i.k = ashr i32 %i.j, 6
  %i.l = add nsw i32 %i.k, 1                      ; 5 uses
  %i.m = mul nsw i32 %i.l, %i.i                   ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #15 ; 7 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !30
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.r, align 8, !tbaa !35
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %i.e, %i.b
  %i.t = sub nsw i32 %i.m, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !tbaa !34
  %i.z = icmp sgt i32 %i.m, 0
end_hunk_0
