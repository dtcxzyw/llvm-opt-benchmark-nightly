Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb3Image?download=true
inline.NumInlined: 197
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Llb_NonlinImageCompute:bb.a
bb.p:                                             ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %.04048.i, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !68
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !68
  %i.eq = icmp sgt i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.141.i = phi ptr [ %.04048.i, %bb.n ], [ %i.ej, %bb.q ], [ %.04048.i, %bb.p ] ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val46.i, i64 %indvars.iv.i49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !33 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = icmp eq ptr %.141.i, null
  br i1 %i.ev, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %.141.i, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !68
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !68
  %i.fa = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.141.i.1 = phi ptr [ %.141.i, %bb.r ], [ %i.et, %bb.u ], [ %.141.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i50.1 = add nuw nsw i64 %indvars.iv.i49, 2 ; 2 uses
  %niter160.next.1 = add i64 %niter160, 2         ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %.critedge.i.unr-lcssa, label %bb.n, !llvm.loop !6

.critedge.i.unr-lcssa:                            ; preds = %bb.v
  %lcmp.mod156.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod156.not, label %.critedge.i, label %.epil.preheader153

.epil.preheader153:                               ; preds = %.critedge.i.unr-lcssa, %.lr.ph.i47
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.i47 ], [ %indvars.iv.next.i50.1, %.critedge.i.unr-lcssa ]
  %.04048.i.epil.init = phi ptr [ null, %.lr.ph.i47 ], [ %.141.i.1, %.critedge.i.unr-lcssa ] ; 4 uses
  %lcmp.mod158 = trunc i32 %i.ee to i1
  call void @llvm.assume(i1 %lcmp.mod158)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.val46.i, i64 %indvars.iv.i49.epil.init
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !33 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %.epil.preheader153
  %i.fe = icmp eq ptr %.04048.i.epil.init, null
  br i1 %i.fe, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %.04048.i.epil.init, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !68
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !68
  %i.fj = icmp sgt i32 %i.fg, %i.fi
  br i1 %i.fj, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %.critedge.i

.critedge.i:                                      ; preds = %.epil.preheader153, %bb.x, %bb.y, %.critedge.i.unr-lcssa
  %.141.i.lcssa = phi ptr [ %.141.i.1, %.critedge.i.unr-lcssa ], [ %.04048.i.epil.init, %.epil.preheader153 ], [ %i.fc, %bb.y ], [ %.04048.i.epil.init, %bb.x ] ; 2 uses
  %i.fk = icmp eq ptr %.141.i.lcssa, null
  br i1 %i.fk, label %._crit_edge.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.141.i.lcssa, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !34 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 4
  %.val.i52 = load i32, ptr %i.fn, align 4, !tbaa !61 ; 2 uses
  %i.fo = icmp sgt i32 %.val.i52, 0
  br i1 %i.fo, label %.lr.ph53.i, label %Llb_NonlinNextPartitions.exit

.lr.ph53.i:                                       ; preds = %.preheader.i
  %i.fp = getelementptr i8, ptr %i.fm, i64 8
  %.val45.i = load ptr, ptr %i.fp, align 8, !tbaa !36
  %i.fq = getelementptr i8, ptr %i.ef, i64 40
  %.val47.i = load ptr, ptr %i.fq, align 8, !tbaa !37
  %wide.trip.count60.i = zext nneg i32 %.val.i52 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph53.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph53.i ], [ %indvars.iv.next58.i, %bb.ac ] ; 2 uses
  %.03651.i = phi ptr [ null, %.lr.ph53.i ], [ %.137.i, %bb.ac ] ; 5 uses
  %.03850.i = phi ptr [ null, %.lr.ph53.i ], [ %.139.i, %bb.ac ] ; 5 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val45.i, i64 %indvars.iv57.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !62
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.val47.i, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !42 ; 5 uses
  %i.fw = icmp eq ptr %.03850.i, null
  br i1 %i.fw, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = icmp eq ptr %.03651.i, null
  br i1 %i.fx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds nuw i8, ptr %.03850.i, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !67 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !67 ; 2 uses
  %i.gc = icmp sgt i32 %i.fz, %i.gb
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.03651.i, i64 4
  %.pre.i53 = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !67 ; 2 uses
  %i.gd = icmp sgt i32 %.pre.i53, %i.gb
  %or.cond.i = select i1 %i.gc, i1 true, i1 %i.gd
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.ac

._crit_edge.i:                                    ; preds = %bb.ab
  %i.ge = icmp sgt i32 %i.fz, %.pre.i53           ; 2 uses
  %..038.i = select i1 %i.ge, ptr %i.fv, ptr %.03850.i
  %.036..i = select i1 %i.ge, ptr %.03651.i, ptr %i.fv
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i, %bb.ab, %bb.aa, %bb.z
  %.139.i = phi ptr [ %.03850.i, %bb.ab ], [ %i.fv, %bb.z ], [ %..038.i, %._crit_edge.i ], [ %.03850.i, %bb.aa ] ; 2 uses
  %.137.i = phi ptr [ %.03651.i, %bb.ab ], [ %.03651.i, %bb.z ], [ %.036..i, %._crit_edge.i ], [ %i.fv, %bb.aa ] ; 2 uses
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %Llb_NonlinNextPartitions.exit, label %bb.z, !llvm.loop !7

Llb_NonlinNextPartitions.exit:                    ; preds = %bb.ac, %.preheader.i
  %.189 = phi ptr [ null, %.preheader.i ], [ %.139.i, %bb.ac ]
  %.187 = phi ptr [ null, %.preheader.i ], [ %.137.i, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #21
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %Abc_Clock.exit55, label %bb.ad

bb.ad:                                            ; preds = %Llb_NonlinNextPartitions.exit
  %i.gh = load i64, ptr %8, align 8, !tbaa !94
  %i.gi = mul nsw i64 %i.gh, 1000000
  %i.gj = load i64, ptr %i.eb, align 8, !tbaa !95
  %i.gk = sdiv i64 %i.gj, 1000
  %i.gl = add nsw i64 %i.gk, %i.gi
  br label %Abc_Clock.exit55

Abc_Clock.exit55:                                 ; preds = %Llb_NonlinNextPartitions.exit, %bb.ad
  %.0.i54 = phi i64 [ %i.gl, %bb.ad ], [ -1, %Llb_NonlinNextPartitions.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gm = load ptr, ptr @p, align 8, !tbaa !100
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !44
  %i.gp = call i32 @Cudd_ReadReorderings(ptr noundef %i.go) #21
  %i.gq = load ptr, ptr @p, align 8, !tbaa !100
  %i.gr = call i32 @Llb_NonlinQuantify2(ptr noundef %i.gq, ptr noundef %.189, ptr noundef %.187)
  %.not38 = icmp eq i32 %i.gr, 0
  br i1 %.not38, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %Abc_Clock.exit55
  %i.gs = load ptr, ptr @p, align 8, !tbaa !100
  call void @Llb_NonlinFree(ptr noundef %i.gs)
  br label %bb.av

bb.af:                                            ; preds = %Abc_Clock.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.gt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #21
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %Abc_Clock.exit57, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gv = load i64, ptr %7, align 8, !tbaa !94
  %i.gw = mul nsw i64 %i.gv, 1000000
  %i.gx = load i64, ptr %i.ec, align 8, !tbaa !95
  %i.gy = sdiv i64 %i.gx, 1000
  %i.gz = add nsw i64 %i.gy, %i.gw
  br label %Abc_Clock.exit57

Abc_Clock.exit57:                                 ; preds = %bb.af, %bb.ag
  %.0.i56 = phi i64 [ %i.gz, %bb.ag ], [ -1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ha = sub i64 %.0.i56, %.0.i54
  %i.hb = load i64, ptr @timeAndEx, align 8, !tbaa !96
  %i.hc = add nsw i64 %i.ha, %i.hb
  store i64 %i.hc, ptr @timeAndEx, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.hd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #21
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %Abc_Clock.exit59, label %bb.ah

bb.ah:                                            ; preds = %Abc_Clock.exit57
  %i.hf = load i64, ptr %6, align 8, !tbaa !94
  %i.hg = mul nsw i64 %i.hf, 1000000
  %i.hh = load i64, ptr %i.ed, align 8, !tbaa !95
  %i.hi = sdiv i64 %i.hh, 1000
  %i.hj = add nsw i64 %i.hi, %i.hg
  br label %Abc_Clock.exit59

Abc_Clock.exit59:                                 ; preds = %Abc_Clock.exit57, %bb.ah
  %.0.i58 = phi i64 [ %i.hj, %bb.ah ], [ 4294967295, %Abc_Clock.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.hk = sub i64 %.0.i58, %.0.i54
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = add i32 %.0106, %i.hl                   ; 2 uses
  %i.hn = load ptr, ptr @p, align 8, !tbaa !100
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !44
  %i.hq = call i32 @Cudd_ReadReorderings(ptr noundef %i.hp) #21
  %i.hr = icmp slt i32 %i.gp, %i.hq
  br i1 %i.hr, label %bb.ai, label %Llb_NonlinRecomputeScores.exit82

bb.ai:                                            ; preds = %Abc_Clock.exit59
  %i.hs = load ptr, ptr @p, align 8, !tbaa !100   ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 56 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !65 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.i77, label %.critedge.preheader.i60

.lr.ph.i77:                                       ; preds = %bb.ai
  %i.hw = getelementptr i8, ptr %i.hs, i64 40
  br label %bb.aj

.critedge.preheader.i60:                          ; preds = %bb.al, %bb.ai
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 60
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !64 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph37.i62, label %Llb_NonlinRecomputeScores.exit82

.lr.ph37.i62:                                     ; preds = %.critedge.preheader.i60
  %i.ia = getelementptr i8, ptr %i.hs, i64 48
  %.val30.i63 = load ptr, ptr %i.ia, align 8, !tbaa !28
  %i.ib = getelementptr i8, ptr %i.hs, i64 40
  %wide.trip.count45.i64 = zext nneg i32 %i.hy to i64
  br label %bb.am

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i77
  %i.ic = phi i32 [ %i.hu, %.lr.ph.i77 ], [ %i.ik, %bb.al ]
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i81, %bb.al ] ; 2 uses
  %.val32.i79 = load ptr, ptr %i.hw, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val32.i79, i64 %indvars.iv.i78
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !42 ; 3 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !45
  %i.ii = call i32 @Cudd_DagSize(ptr noundef %i.ih) #21
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !67
  %.pre.i80 = load i32, ptr %i.ht, align 8, !tbaa !65
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ik = phi i32 [ %.pre.i80, %bb.ak ], [ %i.ic, %bb.aj ] ; 2 uses
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next.i81, %i.il
  br i1 %i.im, label %bb.aj, label %.critedge.preheader.i60, !llvm.loop !8

bb.am:                                            ; preds = %.critedge4.i67, %.lr.ph37.i62
  %indvars.iv42.i65 = phi i64 [ 0, %.lr.ph37.i62 ], [ %indvars.iv.next43.i68, %.critedge4.i67 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.val30.i63, i64 %indvars.iv42.i65
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !33 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %.critedge4.i67, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 6 uses
  store i32 0, ptr %i.iq, align 4, !tbaa !68
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !34 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 4
  %.val.i66 = load i32, ptr %i.it, align 4, !tbaa !61 ; 3 uses
  %i.iu = icmp sgt i32 %.val.i66, 0
  br i1 %i.iu, label %.lr.ph35.i70, label %.critedge4.i67

.lr.ph35.i70:                                     ; preds = %bb.an
  %i.iv = getelementptr i8, ptr %i.is, i64 8
  %.val29.i71 = load ptr, ptr %i.iv, align 8, !tbaa !36 ; 5 uses
  %.val31.i72 = load ptr, ptr %i.ib, align 8, !tbaa !37 ; 5 uses
  %wide.trip.count.i73 = zext nneg i32 %.val.i66 to i64 ; 2 uses
  %xtraiter162 = and i64 %wide.trip.count.i73, 3  ; 3 uses
  %i.iw = icmp ult i32 %.val.i66, 4
  br i1 %i.iw, label %.epil.preheader161, label %.lr.ph35.i70.new

.lr.ph35.i70.new:                                 ; preds = %.lr.ph35.i70
  %unroll_iter168 = and i64 %wide.trip.count.i73, 2147483644
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph35.i70.new
  %indvars.iv39.i74 = phi i64 [ 0, %.lr.ph35.i70.new ], [ %indvars.iv.next40.i75.3, %bb.ao ] ; 5 uses
  %i.ix = phi i32 [ 0, %.lr.ph35.i70.new ], [ %i.kg, %bb.ao ]
  %niter169 = phi i64 [ 0, %.lr.ph35.i70.new ], [ %niter169.next.3, %bb.ao ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.val29.i71, i64 %indvars.iv39.i74
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !62
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %.val31.i72, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !42
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !67
  %i.jf = add nsw i32 %i.je, %i.ix                ; 2 uses
  store i32 %i.jf, ptr %i.iq, align 4, !tbaa !68
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.val29.i71, i64 %indvars.iv39.i74
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !62
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %.val31.i72, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !67
  %i.jo = add nsw i32 %i.jn, %i.jf                ; 2 uses
  store i32 %i.jo, ptr %i.iq, align 4, !tbaa !68
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.val29.i71, i64 %indvars.iv39.i74
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !62
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %.val31.i72, i64 %i.js
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !42
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !67
  %i.jx = add nsw i32 %i.jw, %i.jo                ; 2 uses
  store i32 %i.jx, ptr %i.iq, align 4, !tbaa !68
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val29.i71, i64 %indvars.iv39.i74
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !62
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %.val31.i72, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !42
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !67
  %i.kg = add nsw i32 %i.kf, %i.jx                ; 3 uses
  store i32 %i.kg, ptr %i.iq, align 4, !tbaa !68
  %indvars.iv.next40.i75.3 = add nuw nsw i64 %indvars.iv39.i74, 4 ; 2 uses
  %niter169.next.3 = add i64 %niter169, 4         ; 2 uses
  %niter169.ncmp.3 = icmp eq i64 %niter169.next.3, %unroll_iter168
  br i1 %niter169.ncmp.3, label %.critedge4.i67.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !9

.critedge4.i67.loopexit.unr-lcssa:                ; preds = %bb.ao
  %lcmp.mod166.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod166.not, label %.critedge4.i67, label %.epil.preheader161

.epil.preheader161:                               ; preds = %.critedge4.i67.loopexit.unr-lcssa, %.lr.ph35.i70
  %indvars.iv39.i74.epil.init = phi i64 [ 0, %.lr.ph35.i70 ], [ %indvars.iv.next40.i75.3, %.critedge4.i67.loopexit.unr-lcssa ]
  %.epil.init165 = phi i32 [ 0, %.lr.ph35.i70 ], [ %i.kg, %.critedge4.i67.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter162, 0
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader161
  %indvars.iv39.i74.epil = phi i64 [ %indvars.iv39.i74.epil.init, %.epil.preheader161 ], [ %indvars.iv.next40.i75.epil, %bb.ap ] ; 2 uses
  %i.kh = phi i32 [ %.epil.init165, %.epil.preheader161 ], [ %i.kp, %bb.ap ]
  %epil.iter163 = phi i64 [ 0, %.epil.preheader161 ], [ %epil.iter163.next, %bb.ap ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.val29.i71, i64 %indvars.iv39.i74.epil
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !62
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %.val31.i72, i64 %i.kk
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !42
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !67
  %i.kp = add nsw i32 %i.ko, %i.kh                ; 2 uses
  store i32 %i.kp, ptr %i.iq, align 4, !tbaa !68
  %indvars.iv.next40.i75.epil = add nuw nsw i64 %indvars.iv39.i74.epil, 1
  %epil.iter163.next = add i64 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i64 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %.critedge4.i67, label %bb.ap, !llvm.loop !143

.critedge4.i67:                                   ; preds = %.critedge4.i67.loopexit.unr-lcssa, %bb.ap, %bb.an, %bb.am
  %indvars.iv.next43.i68 = add nuw nsw i64 %indvars.iv42.i65, 1 ; 2 uses
  %exitcond46.not.i69 = icmp eq i64 %indvars.iv.next43.i68, %wide.trip.count45.i64
  br i1 %exitcond46.not.i69, label %Llb_NonlinRecomputeScores.exit82, label %bb.am, !llvm.loop !10

Llb_NonlinRecomputeScores.exit82:                 ; preds = %.critedge4.i67, %.critedge.preheader.i60, %Abc_Clock.exit59
  %i.kq = load ptr, ptr @p, align 8, !tbaa !100   ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 60
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !64 ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %.lr.ph.i47, label %._crit_edge.loopexit, !llvm.loop !144

._crit_edge.loopexit:                             ; preds = %Llb_NonlinRecomputeScores.exit82, %.critedge.i
  %.0.lcssa.ph = phi i32 [ %.0106, %.critedge.i ], [ %i.hm, %Llb_NonlinRecomputeScores.exit82 ]
  %.lcssa101.ph = phi ptr [ %i.ef, %.critedge.i ], [ %i.kq, %Llb_NonlinRecomputeScores.exit82 ]
  %i.ku = sext i32 %.0.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Llb_NonlinRecomputeScores.exit
  %.0.lcssa = phi i64 [ 0, %Llb_NonlinRecomputeScores.exit ], [ %i.ku, %._crit_edge.loopexit ]
  %.lcssa101 = phi ptr [ %i.dx, %Llb_NonlinRecomputeScores.exit ], [ %.lcssa101.ph, %._crit_edge.loopexit ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.lcssa101, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !44
  %i.kx = call ptr @Cudd_ReadOne(ptr noundef %i.kw) #21 ; 3 uses
  call void @Cudd_Ref(ptr noundef %i.kx) #21
  %i.ky = load ptr, ptr @p, align 8, !tbaa !100   ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 56
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !65
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %.lr.ph114, label %.critedge2

.lr.ph114:                                        ; preds = %._crit_edge, %bb.at
  %i.lc = phi ptr [ %i.lu, %bb.at ], [ %i.ky, %._crit_edge ] ; 3 uses
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %bb.at ], [ 0, %._crit_edge ] ; 2 uses
  %.031111 = phi ptr [ %.132, %bb.at ], [ %i.kx, %._crit_edge ] ; 4 uses
end_hunk_0
