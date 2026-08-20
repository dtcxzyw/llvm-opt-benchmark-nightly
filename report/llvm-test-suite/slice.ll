inline.NumInlined: 26
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@encode_one_slice:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 268
  %i.q = load i32, ptr %i.p, align 4, !tbaa !70
  %i.r = shl nsw i32 %i.q, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 268
  %i.t = load i32, ptr %i.s, align 4, !tbaa !70
  %i.u = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 15444
  %i.w = load i32, ptr %i.v, align 4, !tbaa !54
  %i.x = shl nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.x, 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 15448
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !59
  %i.ab = shl nsw i32 %i.aa, 9
  %i.ac = add nsw i32 %i.y, %i.ab
  %i.ad = mul nsw i32 %i.ac, %i.t
  %i.ae = add nsw i32 %i.ad, 500
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 15352
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 15444
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54
  %i.ak = shl nsw i32 %i.aj, 8
  %i.al = or disjoint i32 %i.ak, 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 15448
  %i.an = load i32, ptr %i.am, align 8, !tbaa !59
  %i.ao = shl nsw i32 %i.an, 9
  %i.ap = add nsw i32 %i.al, %i.ao
  %i.aq = mul i32 %i.ap, %i.ah
  %i.ar = add i32 %i.aq, 500
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.r, %bb.d ], [ %i.ae, %bb.e ]
  %i.as = tail call noalias dereferenceable_or_null(144) ptr @calloc(i64 noundef 1, i64 noundef 144) #13 ; 24 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  %.pre.i.i = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi ptr [ %.pre.i.i, %bb.h ], [ %i.m, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4008
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !46
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call ptr @create_contexts_MotionInfo() #12
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !72
  %i.ba = tail call ptr @create_contexts_TextureInfo() #12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !73
  %.pre19.i.i = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = phi ptr [ %.pre19.i.i, %bb.j ], [ %i.au, %bb.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4016
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bh = load ptr, ptr @img, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 14208
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !37
  %.not.i.i = icmp eq i32 %i.bl, 0                ; 2 uses
  %i.bm = select i1 %.not.i.i, i1 %i.bf, i1 false
  %spec.store.select.i.i = select i1 %i.bm, i32 3, i32 1 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.bg, align 8
  store ptr @assignSE2partition_NoDP, ptr @assignSE2partition, align 16, !tbaa !74
  %i.bn = icmp eq i32 %i.be, 1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.bn, i1 false
  %storemerge.i.i = select i1 %or.cond.i.i, ptr @assignSE2partition_DP, ptr @assignSE2partition_NoDP
  store ptr %storemerge.i.i, ptr getelementptr inbounds nuw (i8, ptr @assignSE2partition, i64 8), align 8, !tbaa !74
  %i.bo = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 104) #13 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !40
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bs = sext i32 %.0.i.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %indvars.iv.i.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i.i, %bb.r ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [104 x i8], ptr %i.bp, i64 %indvars.iv.i.i ; 2 uses
  %i.bu = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #13 ; 3 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !41
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #12
  %.pre20.i.i = load ptr, ptr %i.bt, align 8, !tbaa !41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bw = phi ptr [ %.pre20.i.i, %bb.o ], [ %i.bu, %bb.n ]
  %i.bx = tail call noalias ptr @calloc(i64 noundef %i.bs, i64 noundef 1) #13 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !48
  %i.bz = icmp eq ptr %i.bx, null
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bo
  br i1 %exitcond.not.i.i, label %malloc_slice.exit.i, label %bb.n, !llvm.loop !75

malloc_slice.exit.i:                              ; preds = %bb.r
  %i.ca = load i32, ptr %i.h, align 8, !tbaa !68
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [8 x i8], ptr %i.h, i64 %i.cb
  store ptr %i.as, ptr %i.cc, align 8, !tbaa !8
  %i.cd = load ptr, ptr @img, align 8, !tbaa !8   ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 14216
  store ptr %i.as, ptr %i.ce, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 14248
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !39
  %i.ch = srem i32 %i.cg, 256
  store i32 %i.ch, ptr %i.as, align 8, !tbaa !76
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !78
  %i.cl = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.e, ptr %i.cl, align 4, !tbaa !79
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store ptr @dummy_slice_too_big, ptr %i.cm, align 8, !tbaa !80
  %i.cn = load i32, ptr %i.bg, align 8, !tbaa !49 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %malloc_slice.exit.i
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !40 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.cn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cq = icmp ult i32 %i.cn, 4
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.s ]
  %i.cr = getelementptr inbounds nuw [104 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !41 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 8, ptr %i.ct, align 4, !tbaa !47
  store i32 0, ptr %i.cs, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 0, ptr %i.cu, align 8, !tbaa !52
  %i.cv = getelementptr inbounds nuw [104 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 104
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !41 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 8, ptr %i.cy, align 4, !tbaa !47
  store i32 0, ptr %i.cx, align 8, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 0, ptr %i.cz, align 8, !tbaa !52
  %i.da = getelementptr inbounds nuw [104 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !41 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 8, ptr %i.dd, align 4, !tbaa !47
  store i32 0, ptr %i.dc, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i8 0, ptr %i.de, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw [104 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 312
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 8, ptr %i.di, align 4, !tbaa !47
  store i32 0, ptr %i.dh, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 0, ptr %i.dj, align 8, !tbaa !52
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !81

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod192 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.t ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.dk = getelementptr inbounds nuw [104 x i8], ptr %i.cp, i64 %indvars.iv.i.epil
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !41 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 8, ptr %i.dm, align 4, !tbaa !47
  store i32 0, ptr %i.dl, align 8, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i8 0, ptr %i.dn, align 8, !tbaa !52
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.t, !llvm.loop !82

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.t, %malloc_slice.exit.i
  %i.do = load ptr, ptr @active_pps, align 8, !tbaa !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 184
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !84
  %i.dr = add nsw i32 %i.dq, 1                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 14456 ; 4 uses
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !86
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 188
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !87
  %i.dv = add nsw i32 %i.du, 1                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 14460 ; 2 uses
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !88
  %i.dx = load ptr, ptr @input, align 8, !tbaa !8 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 5084
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !89
  %.not.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.ea = load i32, ptr @redundant_coding, align 4, !tbaa !4
  %.not85.i = icmp eq i32 %i.ea, 0
  br i1 %.not85.i, label %bb.v, label %.sink.split.i

bb.v:                                             ; preds = %bb.u
  %i.eb = load i32, ptr %i.cd, align 8, !tbaa !90
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 5768
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !91
  %i.ee = tail call noundef i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ed)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.ee, %bb.v ], [ 1, %bb.u ] ; 2 uses
  store i32 %.sink.i, ptr %i.ds, align 8, !tbaa !86
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i, %._crit_edge.i
  %i.ef = phi i32 [ %i.dr, %._crit_edge.i ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !92 ; 3 uses
  switch i32 %i.eh, label %bb.ae [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !93 ; 2 uses
  %.not86.i = icmp eq i32 %i.ej, 0
  br i1 %.not86.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !94
  %.not87.i = icmp ne i32 %i.el, 0
  %i.em = zext i1 %.not87.i to i32
  %i.en = shl i32 %i.ej, %i.em
  %i.eo = tail call noundef i32 @llvm.smin.i32(i32 %i.ef, i32 %i.en) ; 2 uses
  store i32 %i.eo, ptr %i.ds, align 8, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ep = phi i32 [ %i.eo, %bb.y ], [ %i.ef, %bb.x ]
  %i.eq = icmp eq i32 %i.eh, 1
  br i1 %i.eq, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.er = phi i32 [ %i.ef, %bb.w ], [ %i.ep, %bb.z ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.et = load i32, ptr %i.es, align 8, !tbaa !95 ; 2 uses
  %.not88.i = icmp eq i32 %i.et, 0
  br i1 %.not88.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !94
  %.not89.i = icmp ne i32 %i.ev, 0
  %i.ew = zext i1 %.not89.i to i32
  %i.ex = shl i32 %i.et, %i.ew
  %i.ey = tail call noundef i32 @llvm.smin.i32(i32 %i.er, i32 %i.ex)
  store i32 %i.ey, ptr %i.ds, align 8, !tbaa !86
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !96 ; 2 uses
  %.not90.i = icmp eq i32 %i.fa, 0
  br i1 %.not90.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !94
  %.not91.i = icmp ne i32 %i.fc, 0
  %i.fd = zext i1 %.not91.i to i32
  %i.fe = shl i32 %i.fa, %i.fd
  %i.ff = tail call noundef i32 @llvm.smin.i32(i32 %i.dv, i32 %i.fe)
  store i32 %i.ff, ptr %i.dw, align 4, !tbaa !88
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.z, %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !94
  tail call void @init_lists(i32 noundef %i.eh, i32 noundef %i.fh) #12
  %i.fi = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14456
  %i.fk = load <2 x i32>, ptr @listXsize, align 16, !tbaa !4
  store <2 x i32> %i.fk, ptr %i.fj, align 8, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 15360
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !97
  %.not92.i = icmp eq i32 %i.fm, 0
  %.pre167.i = load ptr, ptr @input, align 8, !tbaa !8 ; 4 uses
  br i1 %.not92.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre167.i, i64 4004
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !98
  %.not93.i = icmp eq i32 %i.fo, 0
  br i1 %.not93.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !99
  %i.fq = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1132
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !103
  %i.ft = icmp eq i32 %i.fp, %i.fs
  br i1 %i.ft, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 15332
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !104
  tail call void @poc_based_ref_management(i32 noundef %i.fv) #12
  %.pre.i = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.fw = phi ptr [ %.pre.i, %bb.ah ], [ %.pre167.i, %bb.ag ], [ %.pre167.i, %bb.af ], [ %.pre167.i, %bb.ae ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1564
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !105
  %.not94.i = icmp eq i32 %i.fy, 0
  br i1 %.not94.i, label %..loopexit118_crit_edge.i, label %.preheader119.i

..loopexit118_crit_edge.i:                        ; preds = %bb.ai
  %.pre168.i = load ptr, ptr @img, align 8, !tbaa !8
  br label %.loopexit118.i

.preheader119.i:                                  ; preds = %bb.ai
  %i.fz = load i32, ptr @listXsize, align 16, !tbaa !4 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  %.pre169.pre.i = load ptr, ptr @img, align 8, !tbaa !8 ; 9 uses
  br i1 %i.ga, label %.lr.ph126.i, label %.loopexit120.i

.lr.ph126.i:                                      ; preds = %.preheader119.i
  %i.gb = load ptr, ptr @listX, align 16, !tbaa !106
  %i.gc = getelementptr inbounds nuw i8, ptr %.pre169.pre.i, i64 15596
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !108 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.pre169.pre.i, i64 15328
  %wide.trip.count146.i = zext nneg i32 %i.fz to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph126.i
  %indvars.iv143.i = phi i64 [ 0, %.lr.ph126.i ], [ %indvars.iv.next144.i, %bb.am ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv143.i
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !109
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !111
  %i.gj = icmp slt i32 %i.gi, %i.gd
  br i1 %i.gj, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load i32, ptr %i.ge, align 8, !tbaa !119
  %i.gl = icmp sgt i32 %i.gk, %i.gd
  br i1 %i.gl, label %bb.al, label %bb.am
end_hunk_0
begin_hunk_1_@CalculateOffset8Param
declare void @CalculateOffset8Param() local_unnamed_addr #3

declare void @start_macroblock(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @write_one_macroblock(i32 noundef) local_unnamed_addr #3

declare void @terminate_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FmoGetNextMBNr(i32 noundef) local_unnamed_addr #3

declare void @proceed2nextMacroblock() local_unnamed_addr #3

declare i32 @FmoGetPreviousMBNr(i32 noundef) local_unnamed_addr #3

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @copy_rc_jvt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_rc_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_rdopt_data(i32 noundef) local_unnamed_addr #3

declare i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef) local_unnamed_addr #3

declare i32 @FmoMB2SliceGroup(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @free_slice_list(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %free_slice.exit
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.af, %free_slice.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %free_slice.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %free_slice.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %bb.e
  %.pr30.i = load ptr, ptr %i.j, align 8, !tbaa !40
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.m = phi ptr [ %.pr30.i, %.lr.ph.splitthread-pre-split.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %indvars.iv.i ; 2 uses
  %.not21.i = icmp eq ptr %i.m, null
  br i1 %.not21.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %.not22.i = icmp eq ptr %i.q, null
  br i1 %.not22.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.q) #12
  %.pr.i = load ptr, ptr %i.n, align 8, !tbaa !41 ; 2 uses
  %.not23.i = icmp eq ptr %.pr.i, null
  br i1 %.not23.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pr.i, %bb.d ], [ %i.o, %bb.c ]
  tail call void @free(ptr noundef nonnull %i.r) #12
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.g, align 8, !tbaa !49
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %.lr.ph.splitthread-pre-split.i, label %._crit_edge.i, !llvm.loop !172

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %.not20.i = icmp eq ptr %i.w, null
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.w) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.x = load ptr, ptr @input, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4008
  %i.z = load i32, ptr %i.y, align 8, !tbaa !46
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72
  tail call void @delete_contexts_MotionInfo(ptr noundef %i.ac) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  tail call void @delete_contexts_TextureInfo(ptr noundef %i.ae) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @free(ptr noundef nonnull %i.f) #12
  %.pre = load i32, ptr %0, align 8, !tbaa !68
  br label %free_slice.exit

free_slice.exit:                                  ; preds = %bb.b, %bb.i
  %i.af = phi i32 [ %i.d, %bb.b ], [ %.pre, %bb.i ] ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !174

._crit_edge:                                      ; preds = %free_slice.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @poc_ref_pic_reorder(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 13 uses
  %i.b = alloca [32 x i32], align 16              ; 9 uses
  %i.c = alloca [32 x i32], align 16              ; 8 uses
  %i.d = alloca [32 x i32], align 16              ; 7 uses
  %i.e = alloca [32 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.f = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.g = add i32 %i.f, 4
  %i.h = load ptr, ptr @img, align 8, !tbaa !8    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !94
  %i.k = icmp eq i32 %i.j, 0                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 15332
  %i.m = load i32, ptr %i.l, align 4, !tbaa !104  ; 2 uses
  %i.n = shl i32 %i.m, 1
  %i.o = or disjoint i32 %i.n, 1
  %.0113 = select i1 %i.k, i32 %i.m, i32 %i.o
  %.pn = select i1 %i.k, i32 1, i32 2
  %.0 = shl i32 %.pn, %i.g
  %.not173 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not173, label %.preheader139, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.p = icmp ult i32 %1, 4
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.preheader139.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader139, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader139.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader139.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod258)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6364
  %i.t = load i32, ptr %i.s, align 4, !tbaa !175
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader139, label %.lr.ph.epil, !llvm.loop !176

.preheader139:                                    ; preds = %.preheader139.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !99 ; 5 uses
  %.not174 = icmp eq i32 %i.v, 0
  br i1 %.not174, label %.lr.ph148.preheader, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader139
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !177
  %i.x = load ptr, ptr @enc_picture, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = icmp eq i32 %5, 0
  %wide.trip.count185 = zext i32 %i.v to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6364
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !175
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ad, ptr %i.ae, align 16, !tbaa !4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6364
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !175
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6364
  %i.an = load i32, ptr %i.am, align 4, !tbaa !175
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6364
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !175
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader139.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !178

.preheader138:                                    ; preds = %bb.e
  %i.au = add i32 %i.v, -1                        ; 2 uses
  %.not175 = icmp eq i32 %i.au, 0
  br i1 %.not175, label %.preheader136, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %.preheader139, %.preheader138
  %i.av = phi i32 [ %i.au, %.preheader138 ], [ -1, %.preheader139 ]
  %i.aw = zext i32 %i.v to i64
  %wide.trip.count196 = zext i32 %i.av to i64
  br label %.lr.ph148

bb.b:                                             ; preds = %.lr.ph144, %bb.e
  %indvars.iv182 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next183, %bb.e ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv182
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !179 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !180 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6364
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !175
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv182
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !182
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 6380
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !183
  %.not132 = icmp eq i32 %i.bh, 0
  br i1 %.not132, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 6376
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !184
  %.not133 = icmp eq i32 %i.bj, 0
  br i1 %.not133, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !111 ; 3 uses
  %i.bm = load i32, ptr %i.y, align 4, !tbaa !111 ; 3 uses
  %i.bn = sub nsw i32 %i.bl, %i.bm
  %i.bo = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv182
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv182
  %i.br = icmp sgt i32 %i.bm, %i.bl
  %i.bs = icmp slt i32 %i.bm, %i.bl
  %.sink243 = select i1 %i.z, i1 %i.bs, i1 %i.br
  %i.bt = select i1 %.sink243, i32 1, i32 -1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.d
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.preheader138, label %bb.b, !llvm.loop !185

.loopexit137:                                     ; preds = %bb.j, %.lr.ph148
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %.preheader136, label %.lr.ph148, !llvm.loop !186

.preheader136:                                    ; preds = %.loopexit137, %.preheader138
  br i1 %.not173, label %._crit_edge.thread, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.preheader136
  %wide.trip.count201 = zext i32 %1 to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph151.preheader255, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph151.preheader
  %n.vec = and i64 %wide.trip.count201, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi249 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 16, !tbaa !4
  %wide.load250 = load <4 x i32>, ptr %i.bv, align 16, !tbaa !4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load251 = load <4 x i32>, ptr %i.bw, align 16, !tbaa !4
  %wide.load252 = load <4 x i32>, ptr %i.bx, align 16, !tbaa !4
  %i.by = icmp ne <4 x i32> %wide.load, %wide.load251
  %i.bz = icmp ne <4 x i32> %wide.load250, %wide.load252
  %i.ca = or <4 x i1> %vec.phi, %i.by             ; 2 uses
  %i.cb = or <4 x i1> %vec.phi249, %i.bz          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.cb, %i.ca
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.cd = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not253 = icmp eq i4 %i.cd, 0
  %rdx.select = zext i1 %.not253 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count201
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph151.preheader255

.lr.ph151.preheader255:                           ; preds = %.lr.ph151.preheader, %middle.block
  %indvars.iv198.ph = phi i64 [ 0, %.lr.ph151.preheader ], [ %n.vec, %middle.block ]
  %.0110150.ph = phi i32 [ 1, %.lr.ph151.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph151

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %.loopexit137
  %indvars.iv193 = phi i64 [ 0, %.lr.ph148.preheader ], [ %indvars.iv.next194, %.loopexit137 ] ; 4 uses
  %indvars.iv187 = phi i64 [ 1, %.lr.ph148.preheader ], [ %indvars.iv.next188, %.loopexit137 ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 3 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next194, %i.aw
  br i1 %i.ce, label %.lr.ph146, label %.loopexit137

.lr.ph146:                                        ; preds = %.lr.ph148
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv193 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv193 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv193 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph146, %bb.j
  %indvars.iv189 = phi i64 [ %indvars.iv187, %.lr.ph146 ], [ %indvars.iv.next190, %bb.j ] ; 6 uses
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !4  ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv189 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4  ; 3 uses
  %i.cl = icmp sgt i32 %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge227, label %bb.g

._crit_edge227:                                   ; preds = %bb.f
  %.pre = load i32, ptr %i.cg, align 4, !tbaa !4
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv189
  %.pre228 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cm = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv189
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %i.cp = load i32, ptr %i.cg, align 4, !tbaa !4  ; 2 uses
  %i.cq = icmp sgt i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge227, %bb.h
  %i.cr = phi i32 [ %.pre228, %._crit_edge227 ], [ %i.co, %bb.h ]
  %i.cs = phi i32 [ %.pre, %._crit_edge227 ], [ %i.cp, %bb.h ]
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !4
  %i.ct = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv189 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  store i32 %i.cv, ptr %i.ch, align 4, !tbaa !4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv189
  store i32 %i.cr, ptr %i.cg, align 4, !tbaa !4
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next190 to i32
  %exitcond192.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond192.not, label %.loopexit137, label %bb.f, !llvm.loop !190

.lr.ph151:                                        ; preds = %.lr.ph151.preheader255, %.lr.ph151
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %.lr.ph151 ], [ %indvars.iv198.ph, %.lr.ph151.preheader255 ] ; 3 uses
  %.0110150 = phi i32 [ %spec.select, %.lr.ph151 ], [ %.0110150.ph, %.lr.ph151.preheader255 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv198
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv198
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %.not131 = icmp eq i32 %i.cy, %i.da
  %spec.select = select i1 %.not131, i32 %.0110150, i32 0 ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge, label %.lr.ph151, !llvm.loop !191

._crit_edge:                                      ; preds = %.lr.ph151, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph151 ]
  %i.db = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.db, label %.lr.ph168, label %._crit_edge.thread

.lr.ph168:                                        ; preds = %._crit_edge
  %i.dc = add nsw i32 %.0, -1
  %i.dd = zext i32 %1 to i64                      ; 2 uses
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = add i32 %1, -1
  %wide.trip.count221 = zext i32 %i.df to i64
  %i.dg = add nsw i64 %wide.trip.count201, -1
  br label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader.preheader, %.lr.ph168
  %indvars.iv210 = phi i64 [ 1, %.lr.ph168 ], [ %indvars.iv.next211, %.preheader.preheader ] ; 2 uses
  %indvars.iv203 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next204, %.preheader.preheader ] ; 12 uses
  %.0112167 = phi i32 [ %.0113, %.lr.ph168 ], [ %i.dj, %.preheader.preheader ] ; 2 uses
  %i.dh = sub nsw i64 %wide.trip.count201, %indvars.iv203
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv203
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4  ; 7 uses
  %i.dk = sub nsw i32 %i.dj, %.0112167            ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 0                   ; 2 uses
  %i.dm = xor i32 %i.dk, -1
  %i.dn = icmp eq i32 %i.dj, %.0112167
  %spec.store.select = select i1 %i.dn, i32 %i.dc, i32 %i.dm
  %i.do = add nsw i32 %i.dk, -1
  %.sink226 = zext i1 %i.dl to i32
  %.sink = select i1 %i.dl, i32 %i.do, i32 %spec.store.select
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv203
  store i32 %.sink226, ptr %i.dp, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv203
  store i32 %.sink, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv203
  store i32 %i.dj, ptr %i.dr, align 4, !tbaa !4
  %i.ds = trunc nuw i64 %indvars.iv203 to i32     ; 3 uses
  %xtraiter259 = and i64 %i.dh, 1
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv203
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %.not130.prol = icmp eq i32 %i.du, %i.dj
  br i1 %.not130.prol, label %.lr.ph156.prol.loopexit.unr-lcssa, label %bb.k

bb.k:                                             ; preds = %.lr.ph156.prol
  %i.dv = add i32 %i.ds, 1                        ; 2 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dw
  store i32 %i.du, ptr %i.dx, align 4, !tbaa !4
  br label %.lr.ph156.prol.loopexit.unr-lcssa

.lr.ph156.prol.loopexit.unr-lcssa:                ; preds = %bb.k, %.lr.ph156.prol
  %.1115.prol = phi i32 [ %i.dv, %bb.k ], [ %i.ds, %.lr.ph156.prol ]
  %indvars.iv.next206.prol = add nuw nsw i64 %indvars.iv203, 1
  br label %.lr.ph156.prol.loopexit

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol.loopexit.unr-lcssa, %.lr.ph156.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv203, %.lr.ph156.preheader ], [ %indvars.iv.next206.prol, %.lr.ph156.prol.loopexit.unr-lcssa ]
  %.0114154.unr = phi i32 [ %i.ds, %.lr.ph156.preheader ], [ %.1115.prol, %.lr.ph156.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i64 %indvars.iv203, %i.dg
  br i1 %i.dy, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %bb.n
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.1, %bb.n ], [ %indvars.iv205.unr, %.lr.ph156.prol.loopexit ] ; 3 uses
  %.0114154 = phi i32 [ %.1115.1, %bb.n ], [ %.0114154.unr, %.lr.ph156.prol.loopexit ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv205
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %.not130 = icmp eq i32 %i.ea, %i.dj
  br i1 %.not130, label %.lr.ph156.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph156
  %i.eb = add i32 %.0114154, 1                    ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ec
  store i32 %i.ea, ptr %i.ed, align 4, !tbaa !4
  br label %.lr.ph156.1

.lr.ph156.1:                                      ; preds = %.lr.ph156, %bb.l
  %.1115 = phi i32 [ %i.eb, %bb.l ], [ %.0114154, %.lr.ph156 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv205
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4  ; 2 uses
  %.not130.1 = icmp eq i32 %i.eg, %i.dj
  br i1 %.not130.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph156.1
  %i.eh = add i32 %.1115, 1                       ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ei
  store i32 %i.eg, ptr %i.ej, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph156.1
  %.1115.1 = phi i32 [ %i.eh, %bb.m ], [ %.1115, %.lr.ph156.1 ]
  %indvars.iv.next206.1 = add nuw nsw i64 %indvars.iv205, 2 ; 2 uses
  %exitcond209.not.1 = icmp eq i64 %indvars.iv.next206.1, %i.dd
  br i1 %exitcond209.not.1, label %._crit_edge157, label %.lr.ph156, !llvm.loop !192

._crit_edge157:                                   ; preds = %bb.n, %.lr.ph156.prol.loopexit
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv203, %wide.trip.count221
  br i1 %exitcond222.not, label %.critedge.loopexit179, label %.lr.ph161

bb.o:                                             ; preds = %.lr.ph161
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %lftr.wideiv215 = trunc i64 %indvars.iv.next213 to i32
  %exitcond216.not = icmp eq i32 %1, %lftr.wideiv215
  br i1 %exitcond216.not, label %.critedge, label %.lr.ph161, !llvm.loop !193

.lr.ph161:                                        ; preds = %._crit_edge157, %bb.o
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %bb.o ], [ %indvars.iv210, %._crit_edge157 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv212
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv212
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %.not = icmp eq i32 %i.el, %i.en
  br i1 %.not, label %bb.o, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph161
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.c, i64 %i.de, i1 false), !tbaa !4
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  br label %.lr.ph156.preheader

.critedge.loopexit179:                            ; preds = %._crit_edge157
  %i.eo = zext i32 %1 to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %.critedge.loopexit179
  %.5 = phi i64 [ %i.eo, %.critedge.loopexit179 ], [ %indvars.iv.next204, %bb.o ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.5
  store i32 3, ptr %i.ep, align 4, !tbaa !4
  %i.eq = icmp eq i32 %5, 0
  %. = select i1 %i.eq, i64 48, i64 80
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 14216
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.
  store i32 1, ptr %i.et, align 8, !tbaa !4
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %.preheader136, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetLagrangianMultipliers() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !194
  %i.d = sitofp i32 %i.c to double
  %i.e = fmul nnan double %i.d, 5.000000e-02      ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  %i.g = select i1 %i.f, double %i.e, double 0.000000e+00 ; 2 uses
  %i.h = fcmp olt double %i.g, 5.000000e-01
  %i.i = select i1 %i.h, double %i.g, double 5.000000e-01
  %i.j = fsub double 1.000000e+00, %i.i           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4168
  %i.l = load i32, ptr %i.k, align 8, !tbaa !147
  %.not = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr @img, align 8, !tbaa !8    ; 7 uses
  br i1 %.not, label %.preheader, label %.preheader196

.preheader:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 15452
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 15480
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 15488
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5780
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 15496
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4172
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5116
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 15504
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5784
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5788
  br label %bb.br

.preheader196:                                    ; preds = %bb.a, %._crit_edge
  %i.x = phi ptr [ %i.py, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.y = phi ptr [ %i.pz, %._crit_edge ], [ %i.m, %bb.a ] ; 2 uses
end_hunk_1
