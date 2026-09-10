Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bench?download=true
inline.NumInlined: 38
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mkplan:bb.a
  %i.ds = zext nneg i32 %i.dp to i64
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !41
  br label %bb.w

bb.v:                                             ; preds = %bb.x
  %i.du = trunc nuw i64 %i.dw to i32
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.w, label %expressible_as_api_many.exit.i.i, !llvm.loop !12

bb.w:                                             ; preds = %.lr.ph121, %bb.v
  %.in123 = phi i64 [ %i.ds, %.lr.ph121 ], [ %i.dw, %bb.v ]
  %i.dw = add nsw i64 %.in123, -1                 ; 3 uses
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !49
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !49
  %i.ec = srem i32 %i.dz, %i.eb
  %.not13.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not13.i.i.i, label %bb.x, label %expressible_as_api_many.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !44
  %i.eh = srem i32 %i.ee, %i.eg
  %.not14.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not14.i.i.i, label %bb.v, label %expressible_as_api_many.exit.thread.i.i, !llvm.loop !12

bb.y:                                             ; preds = %bb.q
  %i.ei = load i32, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  switch i32 %i.ei, label %bb.ai [
    i32 1, label %bb.z
    i32 2, label %bb.ac
    i32 3, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.ej = load i32, ptr @verbose, align 4, !tbaa !42
  %i.ek = icmp sgt i32 %i.ej, 2
  br i1 %i.ek, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %puts71.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !41
  %i.en = load i32, ptr %i.em, align 4, !tbaa !50
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !38
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !34
  %i.eu = tail call ptr @fftw_plan_dft_1d(i32 noundef %i.en, ptr noundef %i.ep, ptr noundef %i.er, i32 noundef %i.et, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.ac:                                            ; preds = %bb.y
  %i.ev = load i32, ptr @verbose, align 4, !tbaa !42
  %i.ew = icmp sgt i32 %i.ev, 2
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %puts70.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !50
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !36
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !34
  %i.fi = tail call ptr @fftw_plan_dft_2d(i32 noundef %i.ez, i32 noundef %i.fb, ptr noundef %i.fd, ptr noundef %i.ff, i32 noundef %i.fh, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.af:                                            ; preds = %bb.y
  %i.fj = load i32, ptr @verbose, align 4, !tbaa !42
  %i.fk = icmp sgt i32 %i.fj, 2
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %puts69.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !41 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !50
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !36
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !38
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !34
  %i.fy = tail call ptr @fftw_plan_dft_3d(i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.fr, ptr noundef %i.ft, ptr noundef %i.fv, i32 noundef %i.fx, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.ai:                                            ; preds = %bb.y
  %i.fz = sext i32 %i.ei to i64
  %i.ga = shl nsw i64 %i.fz, 3
  %i.gb = tail call ptr @bench_malloc(i64 noundef %i.ga) #6 ; 3 uses
  %i.gc = load i32, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i.i13.i, label %mkn.exit.i.i

.lr.ph.i.i13.i:                                   ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !41
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i13.i
  %indvars.iv.i73.i.i = phi i64 [ 0, %.lr.ph.i.i13.i ], [ %indvars.iv.next.i.i14.i, %bb.aj ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %indvars.iv.i73.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !50
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i73.i.i
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !42
  %indvars.iv.next.i.i14.i = add nuw nsw i64 %indvars.iv.i73.i.i, 1 ; 2 uses
  %i.gj = load i32, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next.i.i14.i, %i.gk
  br i1 %i.gl, label %bb.aj, label %mkn.exit.i.i, !llvm.loop !13

mkn.exit.i.i:                                     ; preds = %bb.aj, %bb.ai
  %i.gm = phi i32 [ %i.gc, %bb.ai ], [ %i.gj, %bb.aj ]
  %i.gn = load i32, ptr @verbose, align 4, !tbaa !42
  %i.go = icmp sgt i32 %i.gn, 2
  br i1 %i.go, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %mkn.exit.i.i
  %puts72.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %.pre.i12.i = load i32, ptr %i.e, align 8, !tbaa !40
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %mkn.exit.i.i
  %i.gp = phi i32 [ %.pre.i12.i, %bb.ak ], [ %i.gm, %mkn.exit.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !34
  %i.gw = tail call ptr @fftw_plan_dft(i32 noundef %i.gp, ptr noundef %i.gb, ptr noundef %i.gr, ptr noundef %i.gt, i32 noundef %i.gv, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.gb) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i:                 ; preds = %bb.v, %bb.u
  %i.gx = load i32, ptr %i.g, align 8, !tbaa !40
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %expressible_as_api_many.exit.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 372, ptr noundef nonnull @.str.6) #6
  %.pre99.i.i = load i32, ptr %i.e, align 8, !tbaa !40
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %expressible_as_api_many.exit.i.i
  %i.gz = phi i32 [ %.pre99.i.i, %bb.am ], [ %i.do, %expressible_as_api_many.exit.i.i ]
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3
  %i.hc = tail call ptr @bench_malloc(i64 noundef %i.hb) #6 ; 3 uses
  %i.hd = load i32, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i74.i.i, label %.mkn.exit77_crit_edge.i.i

.mkn.exit77_crit_edge.i.i:                        ; preds = %bb.an
  %.pre102.i.i = sext i32 %i.hd to i64
  br label %mkn.exit77.i.i

.lr.ph.i74.i.i:                                   ; preds = %bb.an
  %i.hf = load ptr, ptr %i.dq, align 8, !tbaa !41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i74.i.i
  %indvars.iv.i75.i.i = phi i64 [ 0, %.lr.ph.i74.i.i ], [ %indvars.iv.next.i76.i.i, %bb.ao ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.hf, i64 %indvars.iv.i75.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !50
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i75.i.i
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !42
  %indvars.iv.next.i76.i.i = add nuw nsw i64 %indvars.iv.i75.i.i, 1 ; 2 uses
  %i.hj = load i32, ptr %i.e, align 8, !tbaa !40
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = icmp slt i64 %indvars.iv.next.i76.i.i, %i.hk
  br i1 %i.hl, label %bb.ao, label %mkn.exit77.i.i, !llvm.loop !13

mkn.exit77.i.i:                                   ; preds = %bb.ao, %.mkn.exit77_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre102.i.i, %.mkn.exit77_crit_edge.i.i ], [ %i.hk, %bb.ao ]
  %i.hm = shl nsw i64 %.pre-phi.i.i, 3
  %i.hn = tail call ptr @bench_malloc(i64 noundef %i.hm) #6 ; 3 uses
  %i.ho = load i32, ptr %i.e, align 8, !tbaa !40
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3
  %i.hr = tail call ptr @bench_malloc(i64 noundef %i.hq) #6 ; 3 uses
  %i.hs = load i32, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %.not.i78.i.i = icmp eq i32 %i.hs, 2147483647
  br i1 %.not.i78.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %mkn.exit77.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i82.i.i = load i32, ptr %i.e, align 8, !tbaa !40
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %mkn.exit77.i.i
  %i.ht = phi i32 [ %.pre.i82.i.i, %bb.ap ], [ %i.hs, %mkn.exit77.i.i ] ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %.lr.ph.i79.i.i, label %mknembed_many.exit.i.i

.lr.ph.i79.i.i:                                   ; preds = %bb.aq
  %i.hv = add nsw i32 %i.ht, -1
  %i.hw = load ptr, ptr %i.dq, align 8, !tbaa !41
  %i.hx = zext nneg i32 %i.hv to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i79.i.i
  %indvars.iv.i80.i.i = phi i64 [ %i.hx, %.lr.ph.i79.i.i ], [ %indvars.iv.next.i81.i.i.a, %bb.ar ] ; 4 uses
  %indvars.iv.next.i81.i.i.a = add nsw i64 %indvars.iv.i80.i.i, -1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %indvars.iv.next.i81.i.i.a ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !49
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !49
  %i.id = sdiv i32 %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i80.i.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !42
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !44
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !44
  %i.ij = sdiv i32 %i.ig, %i.ii
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i80.i.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !42
  %2 = icmp samesign ugt i64 %indvars.iv.i80.i.i, 1
  br i1 %2, label %bb.ar, label %mknembed_many.exit.i.i, !llvm.loop !14

mknembed_many.exit.i.i:                           ; preds = %bb.ar, %bb.aq
  %i.il = load i32, ptr @verbose, align 4, !tbaa !42
  %i.im = icmp sgt i32 %i.il, 2
  br i1 %i.im, label %bb.as, label %bb.at

bb.as:                                            ; preds = %mknembed_many.exit.i.i
  %puts68.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %mknembed_many.exit.i.i
  %i.in = load i32, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !41 ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !50
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !36
  %i.it = load ptr, ptr %i.dq, align 8, !tbaa !41
  %i.iu = sext i32 %i.in to i64
  %i.iv = getelementptr [12 x i8], ptr %i.it, i64 %i.iu ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -8
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !49
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !49
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !38
  %i.jc = getelementptr i8, ptr %i.iv, i64 -4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !44
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !34
  %i.ji = tail call ptr @fftw_plan_many_dft(i32 noundef %i.in, ptr noundef %i.hc, i32 noundef %i.iq, ptr noundef %i.is, ptr noundef %i.hn, i32 noundef %i.ix, i32 noundef %i.iz, ptr noundef %i.jb, ptr noundef %i.hr, i32 noundef %i.jd, i32 noundef %i.jf, i32 noundef %i.jh, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.hc) #6
  tail call void @bench_free(ptr noundef %i.hn) #6
  tail call void @bench_free(ptr noundef %i.hr) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i:          ; preds = %bb.x, %bb.w, %bb.r
  %i.jj = phi i32 [ %.pre100.i.i, %bb.r ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %bb.av, label %bb.au

bb.au:                                            ; preds = %expressible_as_api_many.exit.thread.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i5.i = load i32, ptr %i.e, align 8, !tbaa !40
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %expressible_as_api_many.exit.thread.i.i
  %i.jl = phi i32 [ %.pr.i.i5.i, %bb.au ], [ %i.jj, %expressible_as_api_many.exit.thread.i.i ] ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jn = sext i32 %i.jl to i64
  %i.jo = mul nsw i64 %i.jn, 12
  %i.jp = tail call ptr @bench_malloc(i64 noundef %i.jo) #6 ; 8 uses
  %i.jq = load i32, ptr %i.e, align 8, !tbaa !40  ; 3 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph.i83.i.i, label %bench_tensor_to_fftw_iodim.exit.i6.i

.lr.ph.i83.i.i:                                   ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !41 ; 5 uses
  %wide.trip.count.i.i9.i = zext nneg i32 %i.jq to i64 ; 2 uses
  %xtraiter195 = and i64 %wide.trip.count.i.i9.i, 3 ; 3 uses
  %i.ju = icmp ult i32 %i.jq, 4
  br i1 %i.ju, label %.epil.preheader194, label %.lr.ph.i83.i.i.new

.lr.ph.i83.i.i.new:                               ; preds = %.lr.ph.i83.i.i
  %unroll_iter199 = and i64 %wide.trip.count.i.i9.i, 2147483644
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i83.i.i.new
  %indvars.iv.i84.i.i = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %indvars.iv.next.i85.i.i.3, %bb.ax ] ; 6 uses
  %niter200 = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %niter200.next.3, %bb.ax ]
  %i.jv = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.jw = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.jx = load <2 x i32>, ptr %i.jv, align 4, !tbaa !42
  store <2 x i32> %i.jx, ptr %i.jw, align 4, !tbaa !42
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !44
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !46
  %indvars.iv.next.i85.i.i = or disjoint i64 %indvars.iv.i84.i.i, 1 ; 2 uses
  %i.kb = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.next.i85.i.i ; 2 uses
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv.next.i85.i.i ; 2 uses
  %i.kd = load <2 x i32>, ptr %i.kb, align 4, !tbaa !42
  store <2 x i32> %i.kd, ptr %i.kc, align 4, !tbaa !42
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !46
  %indvars.iv.next.i85.i.i.1 = or disjoint i64 %indvars.iv.i84.i.i, 2 ; 2 uses
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.next.i85.i.i.1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv.next.i85.i.i.1 ; 2 uses
  %i.kj = load <2 x i32>, ptr %i.kh, align 4, !tbaa !42
  store <2 x i32> %i.kj, ptr %i.ki, align 4, !tbaa !42
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !44
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !46
  %indvars.iv.next.i85.i.i.2 = or disjoint i64 %indvars.iv.i84.i.i, 3 ; 2 uses
  %i.kn = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.next.i85.i.i.2 ; 2 uses
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv.next.i85.i.i.2 ; 2 uses
  %i.kp = load <2 x i32>, ptr %i.kn, align 4, !tbaa !42
  store <2 x i32> %i.kp, ptr %i.ko, align 4, !tbaa !42
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !46
  %indvars.iv.next.i85.i.i.3 = add nuw nsw i64 %indvars.iv.i84.i.i, 4 ; 2 uses
  %niter200.next.3 = add i64 %niter200, 4         ; 2 uses
  %niter200.ncmp.3 = icmp eq i64 %niter200.next.3, %unroll_iter199
  br i1 %niter200.ncmp.3, label %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa, label %bb.ax, !llvm.loop !9

bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa: ; preds = %bb.ax
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %.epil.preheader194

.epil.preheader194:                               ; preds = %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa, %.lr.ph.i83.i.i
  %indvars.iv.i84.i.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.i ], [ %indvars.iv.next.i85.i.i.3, %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa ]
  %lcmp.mod198 = icmp ne i64 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader194
  %indvars.iv.i84.i.i.epil = phi i64 [ %indvars.iv.i84.i.i.epil.init, %.epil.preheader194 ], [ %indvars.iv.next.i85.i.i.epil, %bb.ay ] ; 3 uses
  %epil.iter196 = phi i64 [ 0, %.epil.preheader194 ], [ %epil.iter196.next, %bb.ay ]
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.i84.i.i.epil ; 2 uses
  %i.ku = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv.i84.i.i.epil ; 2 uses
  %i.kv = load <2 x i32>, ptr %i.kt, align 4, !tbaa !42
  store <2 x i32> %i.kv, ptr %i.ku, align 4, !tbaa !42
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !46
  %indvars.iv.next.i85.i.i.epil = add nuw nsw i64 %indvars.iv.i84.i.i.epil, 1
  %epil.iter196.next = add i64 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i64 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.ay, !llvm.loop !15

bench_tensor_to_fftw_iodim.exit.i6.i:             ; preds = %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa, %bb.ay, %bb.aw, %bb.av
  %.019.i.i7.i = phi ptr [ null, %bb.av ], [ %i.jp, %bb.aw ], [ %i.jp, %bb.ay ], [ %i.jp, %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa ] ; 2 uses
  %i.kz = load i32, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %i.la = icmp sgt i32 %i.kz, -1
  br i1 %i.la, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bench_tensor_to_fftw_iodim.exit.i6.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i86.i.i = load i32, ptr %i.g, align 8, !tbaa !40
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bench_tensor_to_fftw_iodim.exit.i6.i
  %i.lb = phi i32 [ %.pr.i86.i.i, %bb.az ], [ %i.kz, %bench_tensor_to_fftw_iodim.exit.i6.i ] ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bench_tensor_to_fftw_iodim.exit93.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ld = sext i32 %i.lb to i64
  %i.le = mul nsw i64 %i.ld, 12
  %i.lf = tail call ptr @bench_malloc(i64 noundef %i.le) #6 ; 8 uses
  %i.lg = load i32, ptr %i.g, align 8, !tbaa !40  ; 6 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph.i88.i.i, label %bench_tensor_to_fftw_iodim.exit93.i.i

.lr.ph.i88.i.i:                                   ; preds = %bb.bb
  %i.li = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !41 ; 5 uses
  %wide.trip.count.i89.i.i = zext nneg i32 %i.lg to i64 ; 2 uses
  %xtraiter202 = and i64 %wide.trip.count.i89.i.i, 3 ; 3 uses
  %i.lk = icmp ult i32 %i.lg, 4
  br i1 %i.lk, label %.epil.preheader201, label %.lr.ph.i88.i.i.new

.lr.ph.i88.i.i.new:                               ; preds = %.lr.ph.i88.i.i
  %unroll_iter206 = and i64 %wide.trip.count.i89.i.i, 2147483644
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i88.i.i.new
  %indvars.iv.i90.i.i = phi i64 [ 0, %.lr.ph.i88.i.i.new ], [ %indvars.iv.next.i91.i.i.3, %bb.bc ] ; 6 uses
  %niter207 = phi i64 [ 0, %.lr.ph.i88.i.i.new ], [ %niter207.next.3, %bb.bc ]
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %i.lj, i64 %indvars.iv.i90.i.i ; 2 uses
  %i.lm = getelementptr inbounds nuw [12 x i8], ptr %i.lf, i64 %indvars.iv.i90.i.i ; 2 uses
  %i.ln = load <2 x i32>, ptr %i.ll, align 4, !tbaa !42
  store <2 x i32> %i.ln, ptr %i.lm, align 4, !tbaa !42
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !44
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !46
  %indvars.iv.next.i91.i.i = or disjoint i64 %indvars.iv.i90.i.i, 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.lj, i64 %indvars.iv.next.i91.i.i ; 2 uses
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.lf, i64 %indvars.iv.next.i91.i.i ; 2 uses
  %i.lt = load <2 x i32>, ptr %i.lr, align 4, !tbaa !42
  store <2 x i32> %i.lt, ptr %i.ls, align 4, !tbaa !42
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !44
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !46
  %indvars.iv.next.i91.i.i.1 = or disjoint i64 %indvars.iv.i90.i.i, 2 ; 2 uses
  %i.lx = getelementptr inbounds nuw [12 x i8], ptr %i.lj, i64 %indvars.iv.next.i91.i.i.1 ; 2 uses
  %i.ly = getelementptr inbounds nuw [12 x i8], ptr %i.lf, i64 %indvars.iv.next.i91.i.i.1 ; 2 uses
  %i.lz = load <2 x i32>, ptr %i.lx, align 4, !tbaa !42
end_hunk_0
begin_hunk_1_@mkplan:bb.a
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !41 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !50
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !50
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !36
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !38
  %i.ul = tail call ptr @fftw_plan_dft_r2c_2d(i32 noundef %i.ue, i32 noundef %i.ug, ptr noundef %i.ui, ptr noundef %i.uk, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.cv:                                            ; preds = %bb.cr
  br i1 %i.ub, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %puts119.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.um = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !41 ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !50
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !50
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !36
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !38
  %i.uv = tail call ptr @fftw_plan_dft_c2r_2d(i32 noundef %i.uo, i32 noundef %i.uq, ptr noundef %i.us, ptr noundef %i.uu, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.cy:                                            ; preds = %bb.cj
  %i.uw = load i32, ptr %i.sc, align 8, !tbaa !34
  %i.ux = icmp slt i32 %i.uw, 0
  %i.uy = load i32, ptr @verbose, align 4, !tbaa !42
  %i.uz = icmp sgt i32 %i.uy, 2                   ; 2 uses
  br i1 %i.ux, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.uz, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %puts118.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.va = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !41 ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !50
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !50
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !50
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !36
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !38
  %i.vl = tail call ptr @fftw_plan_dft_r2c_3d(i32 noundef %i.vc, i32 noundef %i.ve, i32 noundef %i.vg, ptr noundef %i.vi, ptr noundef %i.vk, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.dc:                                            ; preds = %bb.cy
  br i1 %i.uz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %puts117.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !41 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !50
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 12
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !50
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !50
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !36
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !38
  %i.vx = tail call ptr @fftw_plan_dft_c2r_3d(i32 noundef %i.vo, i32 noundef %i.vq, i32 noundef %i.vs, ptr noundef %i.vu, ptr noundef %i.vw, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.df:                                            ; preds = %bb.cj
  %i.vy = sext i32 %i.td to i64
  %i.vz = shl nsw i64 %i.vy, 3
  %i.wa = tail call ptr @bench_malloc(i64 noundef %i.vz) #6 ; 4 uses
  %i.wb = load i32, ptr %i.ne, align 8, !tbaa !40 ; 2 uses
  %i.wc = icmp sgt i32 %i.wb, 0
  br i1 %i.wc, label %.lr.ph.i.i14.i, label %mkn.exit.i.i28

.lr.ph.i.i14.i:                                   ; preds = %bb.df
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !41
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i.i14.i
  %indvars.iv.i125.i.i = phi i64 [ 0, %.lr.ph.i.i14.i ], [ %indvars.iv.next.i.i15.i, %bb.dg ] ; 3 uses
  %i.wf = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %indvars.iv.i125.i.i
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !50
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv.i125.i.i
  store i32 %i.wg, ptr %i.wh, align 4, !tbaa !42
  %indvars.iv.next.i.i15.i = add nuw nsw i64 %indvars.iv.i125.i.i, 1 ; 2 uses
  %i.wi = load i32, ptr %i.ne, align 8, !tbaa !40 ; 2 uses
  %i.wj = sext i32 %i.wi to i64
  %i.wk = icmp slt i64 %indvars.iv.next.i.i15.i, %i.wj
  br i1 %i.wk, label %bb.dg, label %mkn.exit.i.i28, !llvm.loop !13

mkn.exit.i.i28:                                   ; preds = %bb.dg, %bb.df
  %i.wl = phi i32 [ %i.wb, %bb.df ], [ %i.wi, %bb.dg ] ; 2 uses
  %i.wm = load i32, ptr %i.sc, align 8, !tbaa !34
  %i.wn = icmp slt i32 %i.wm, 0
  %i.wo = load i32, ptr @verbose, align 4, !tbaa !42
  %i.wp = icmp sgt i32 %i.wo, 2                   ; 2 uses
  br i1 %i.wn, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.wp, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %puts124.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %.pre169.i.i = load i32, ptr %i.ne, align 8, !tbaa !40
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.wq = phi i32 [ %.pre169.i.i, %bb.di ], [ %i.wl, %bb.dh ]
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !36
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !38
  %i.wv = tail call ptr @fftw_plan_dft_r2c(i32 noundef %i.wq, ptr noundef %i.wa, ptr noundef %i.ws, ptr noundef %i.wu, i32 noundef %1) #6
  br label %bb.dn

bb.dk:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.wp, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %puts123.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %.pre.i13.i = load i32, ptr %i.ne, align 8, !tbaa !40
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.ww = phi i32 [ %.pre.i13.i, %bb.dl ], [ %i.wl, %bb.dk ]
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !36
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !38
  %i.xb = tail call ptr @fftw_plan_dft_c2r(i32 noundef %i.ww, ptr noundef %i.wa, ptr noundef %i.wy, ptr noundef %i.xa, i32 noundef %1) #6
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dj
  %.0110.i.i = phi ptr [ %i.wv, %bb.dj ], [ %i.xb, %bb.dm ]
  tail call void @bench_free(ptr noundef %i.wa) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i21:               ; preds = %bb.cg, %bb.cf
  %i.xc = load i32, ptr %i.ng, align 8, !tbaa !40
  %i.xd = icmp eq i32 %i.xc, 1
  br i1 %i.xd, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %expressible_as_api_many.exit.i.i21
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 236, ptr noundef nonnull @.str.6) #6
  %.pre170.i.i = load i32, ptr %i.ne, align 8, !tbaa !40
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %expressible_as_api_many.exit.i.i21
  %i.xe = phi i32 [ %.pre170.i.i, %bb.do ], [ %i.sj, %expressible_as_api_many.exit.i.i21 ]
  %i.xf = sext i32 %i.xe to i64
  %i.xg = shl nsw i64 %i.xf, 3
  %i.xh = tail call ptr @bench_malloc(i64 noundef %i.xg) #6 ; 4 uses
  %i.xi = load i32, ptr %i.ne, align 8, !tbaa !40 ; 2 uses
  %i.xj = icmp sgt i32 %i.xi, 0
  br i1 %i.xj, label %.lr.ph.i126.i.i, label %.mkn.exit129_crit_edge.i.i

.mkn.exit129_crit_edge.i.i:                       ; preds = %bb.dp
  %.pre173.i.i = sext i32 %i.xi to i64
  br label %mkn.exit129.i.i

.lr.ph.i126.i.i:                                  ; preds = %bb.dp
  %i.xk = load ptr, ptr %i.sl, align 8, !tbaa !41
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.lr.ph.i126.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i126.i.i ], [ %indvars.iv.next.i128.i.i, %bb.dq ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [12 x i8], ptr %i.xk, i64 %indvars.iv.i127.i.i
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !50
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv.i127.i.i
  store i32 %i.xm, ptr %i.xn, align 4, !tbaa !42
  %indvars.iv.next.i128.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %i.xo = load i32, ptr %i.ne, align 8, !tbaa !40
  %i.xp = sext i32 %i.xo to i64                   ; 2 uses
  %i.xq = icmp slt i64 %indvars.iv.next.i128.i.i, %i.xp
  br i1 %i.xq, label %bb.dq, label %mkn.exit129.i.i, !llvm.loop !13

mkn.exit129.i.i:                                  ; preds = %bb.dq, %.mkn.exit129_crit_edge.i.i
  %.pre-phi.i.i22 = phi i64 [ %.pre173.i.i, %.mkn.exit129_crit_edge.i.i ], [ %i.xp, %bb.dq ]
  %i.xr = shl nsw i64 %.pre-phi.i.i22, 3
  %i.xs = tail call ptr @bench_malloc(i64 noundef %i.xr) #6 ; 4 uses
  %i.xt = load i32, ptr %i.ne, align 8, !tbaa !40
  %i.xu = sext i32 %i.xt to i64
  %i.xv = shl nsw i64 %i.xu, 3
  %i.xw = tail call ptr @bench_malloc(i64 noundef %i.xv) #6 ; 4 uses
  %i.xx = load i32, ptr %i.ne, align 8, !tbaa !40 ; 2 uses
  %.not.i130.i.i = icmp eq i32 %i.xx, 2147483647
  br i1 %.not.i130.i.i, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %mkn.exit129.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i134.i.i = load i32, ptr %i.ne, align 8, !tbaa !40
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %mkn.exit129.i.i
  %i.xy = phi i32 [ %.pre.i134.i.i, %bb.dr ], [ %i.xx, %mkn.exit129.i.i ] ; 2 uses
  %i.xz = icmp sgt i32 %i.xy, 1
  br i1 %i.xz, label %.lr.ph.i131.i.i, label %mknembed_many.exit.i.i23

.lr.ph.i131.i.i:                                  ; preds = %bb.ds
  %i.ya = add nsw i32 %i.xy, -1
  %i.yb = load ptr, ptr %i.sl, align 8, !tbaa !41
  %i.yc = zext nneg i32 %i.ya to i64
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.lr.ph.i131.i.i
  %indvars.iv.i132.i.i = phi i64 [ %i.yc, %.lr.ph.i131.i.i ], [ %indvars.iv.next.i133.i.i.a, %bb.dt ] ; 4 uses
  %indvars.iv.next.i133.i.i.a = add nsw i64 %indvars.iv.i132.i.i, -1 ; 2 uses
  %i.yd = getelementptr inbounds nuw [12 x i8], ptr %i.yb, i64 %indvars.iv.next.i133.i.i.a ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !49
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !49
  %i.yi = sdiv i32 %i.yf, %i.yh
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv.i132.i.i
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !42
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !44
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yd, i64 20
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !44
  %i.yo = sdiv i32 %i.yl, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv.i132.i.i
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !42
  %3 = icmp samesign ugt i64 %indvars.iv.i132.i.i, 1
  br i1 %3, label %bb.dt, label %mknembed_many.exit.i.i23, !llvm.loop !14

mknembed_many.exit.i.i23:                         ; preds = %bb.dt, %bb.ds
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !34
  %i.ys = icmp slt i32 %i.yr, 0
  %i.yt = load i32, ptr @verbose, align 4, !tbaa !42
  %i.yu = icmp sgt i32 %i.yt, 2                   ; 2 uses
  br i1 %i.ys, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.yu, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %puts116.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.yv = load i32, ptr %i.ne, align 8, !tbaa !40 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !41 ; 3 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !50
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !36
  %i.zb = load ptr, ptr %i.sl, align 8, !tbaa !41
  %i.zc = sext i32 %i.yv to i64
  %i.zd = getelementptr [12 x i8], ptr %i.zb, i64 %i.zc ; 2 uses
  %i.ze = getelementptr i8, ptr %i.zd, i64 -8
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !49
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !49
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !38
  %i.zk = getelementptr i8, ptr %i.zd, i64 -4
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !44
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !44
  %i.zo = tail call ptr @fftw_plan_many_dft_r2c(i32 noundef %i.yv, ptr noundef %i.xh, i32 noundef %i.yy, ptr noundef %i.za, ptr noundef %i.xs, i32 noundef %i.zf, i32 noundef %i.zh, ptr noundef %i.zj, ptr noundef %i.xw, i32 noundef %i.zl, i32 noundef %i.zn, i32 noundef %1) #6
  br label %bb.ea

bb.dx:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.yu, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %puts115.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.zp = load i32, ptr %i.ne, align 8, !tbaa !40 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !41 ; 3 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !50
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !36
  %i.zv = load ptr, ptr %i.sl, align 8, !tbaa !41
  %i.zw = sext i32 %i.zp to i64
  %i.zx = getelementptr [12 x i8], ptr %i.zv, i64 %i.zw ; 2 uses
  %i.zy = getelementptr i8, ptr %i.zx, i64 -8
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !49
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !49
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !38
  %i.aae = getelementptr i8, ptr %i.zx, i64 -4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !44
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !44
  %i.aai = tail call ptr @fftw_plan_many_dft_c2r(i32 noundef %i.zp, ptr noundef %i.xh, i32 noundef %i.zs, ptr noundef %i.zu, ptr noundef %i.xs, i32 noundef %i.zz, i32 noundef %i.aab, ptr noundef %i.aad, ptr noundef %i.xw, i32 noundef %i.aaf, i32 noundef %i.aah, i32 noundef %1) #6
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %.1.i.i = phi ptr [ %i.zo, %bb.dw ], [ %i.aai, %bb.dz ]
  tail call void @bench_free(ptr noundef %i.xh) #6
  tail call void @bench_free(ptr noundef %i.xs) #6
  tail call void @bench_free(ptr noundef %i.xw) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i19:        ; preds = %bb.ci, %bb.ch, %bb.cc
  %i.aaj = phi i32 [ %.pre.i, %bb.cc ], [ %i.sj, %bb.ch ], [ %i.sj, %bb.ci ] ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !34
  %i.aam = icmp slt i32 %i.aal, 0
  %i.aan = icmp sgt i32 %i.aaj, -1                ; 2 uses
  br i1 %i.aam, label %bb.eb, label %bb.eo

bb.eb:                                            ; preds = %expressible_as_api_many.exit.thread.i.i19
  br i1 %i.aan, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i7.i = load i32, ptr %i.ne, align 8, !tbaa !40
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aao = phi i32 [ %.pr.i.i7.i, %bb.ec ], [ %i.aaj, %bb.eb ] ; 2 uses
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bench_tensor_to_fftw_iodim.exit.i8.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aaq = sext i32 %i.aao to i64
  %i.aar = mul nsw i64 %i.aaq, 12
  %i.aas = tail call ptr @bench_malloc(i64 noundef %i.aar) #6 ; 8 uses
  %i.aat = load i32, ptr %i.ne, align 8, !tbaa !40 ; 3 uses
  %i.aau = icmp sgt i32 %i.aat, 0
  br i1 %i.aau, label %.lr.ph.i135.i.i, label %bench_tensor_to_fftw_iodim.exit.i8.i

.lr.ph.i135.i.i:                                  ; preds = %bb.ee
  %i.aav = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !41 ; 5 uses
  %wide.trip.count.i.i10.i = zext nneg i32 %i.aat to i64 ; 2 uses
  %xtraiter167 = and i64 %wide.trip.count.i.i10.i, 3 ; 3 uses
  %i.aax = icmp ult i32 %i.aat, 4
  br i1 %i.aax, label %.epil.preheader166, label %.lr.ph.i135.i.i.new

.lr.ph.i135.i.i.new:                              ; preds = %.lr.ph.i135.i.i
  %unroll_iter171 = and i64 %wide.trip.count.i.i10.i, 2147483644
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.lr.ph.i135.i.i.new
  %indvars.iv.i136.i.i = phi i64 [ 0, %.lr.ph.i135.i.i.new ], [ %indvars.iv.next.i137.i.i.3, %bb.ef ] ; 6 uses
  %niter172 = phi i64 [ 0, %.lr.ph.i135.i.i.new ], [ %niter172.next.3, %bb.ef ]
  %i.aay = getelementptr inbounds nuw [12 x i8], ptr %i.aaw, i64 %indvars.iv.i136.i.i ; 2 uses
  %i.aaz = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %indvars.iv.i136.i.i ; 2 uses
  %i.aba = load <2 x i32>, ptr %i.aay, align 4, !tbaa !42
  store <2 x i32> %i.aba, ptr %i.aaz, align 4, !tbaa !42
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !44
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store i32 %i.abc, ptr %i.abd, align 4, !tbaa !46
  %indvars.iv.next.i137.i.i = or disjoint i64 %indvars.iv.i136.i.i, 1 ; 2 uses
  %i.abe = getelementptr inbounds nuw [12 x i8], ptr %i.aaw, i64 %indvars.iv.next.i137.i.i ; 2 uses
  %i.abf = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %indvars.iv.next.i137.i.i ; 2 uses
  %i.abg = load <2 x i32>, ptr %i.abe, align 4, !tbaa !42
  store <2 x i32> %i.abg, ptr %i.abf, align 4, !tbaa !42
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !44
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store i32 %i.abi, ptr %i.abj, align 4, !tbaa !46
  %indvars.iv.next.i137.i.i.1 = or disjoint i64 %indvars.iv.i136.i.i, 2 ; 2 uses
  %i.abk = getelementptr inbounds nuw [12 x i8], ptr %i.aaw, i64 %indvars.iv.next.i137.i.i.1 ; 2 uses
  %i.abl = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %indvars.iv.next.i137.i.i.1 ; 2 uses
  %i.abm = load <2 x i32>, ptr %i.abk, align 4, !tbaa !42
  store <2 x i32> %i.abm, ptr %i.abl, align 4, !tbaa !42
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !44
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store i32 %i.abo, ptr %i.abp, align 4, !tbaa !46
  %indvars.iv.next.i137.i.i.2 = or disjoint i64 %indvars.iv.i136.i.i, 3 ; 2 uses
  %i.abq = getelementptr inbounds nuw [12 x i8], ptr %i.aaw, i64 %indvars.iv.next.i137.i.i.2 ; 2 uses
  %i.abr = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %indvars.iv.next.i137.i.i.2 ; 2 uses
  %i.abs = load <2 x i32>, ptr %i.abq, align 4, !tbaa !42
  store <2 x i32> %i.abs, ptr %i.abr, align 4, !tbaa !42
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !44
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  store i32 %i.abu, ptr %i.abv, align 4, !tbaa !46
  %indvars.iv.next.i137.i.i.3 = add nuw nsw i64 %indvars.iv.i136.i.i, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa, label %bb.ef, !llvm.loop !9

bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa: ; preds = %bb.ef
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %bench_tensor_to_fftw_iodim.exit.i8.i, label %.epil.preheader166

.epil.preheader166:                               ; preds = %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa, %.lr.ph.i135.i.i
  %indvars.iv.i136.i.i.epil.init = phi i64 [ 0, %.lr.ph.i135.i.i ], [ %indvars.iv.next.i137.i.i.3, %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.epil.preheader166
  %indvars.iv.i136.i.i.epil = phi i64 [ %indvars.iv.i136.i.i.epil.init, %.epil.preheader166 ], [ %indvars.iv.next.i137.i.i.epil, %bb.eg ] ; 3 uses
  %epil.iter168 = phi i64 [ 0, %.epil.preheader166 ], [ %epil.iter168.next, %bb.eg ]
  %i.abw = getelementptr inbounds nuw [12 x i8], ptr %i.aaw, i64 %indvars.iv.i136.i.i.epil ; 2 uses
  %i.abx = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %indvars.iv.i136.i.i.epil ; 2 uses
  %i.aby = load <2 x i32>, ptr %i.abw, align 4, !tbaa !42
  store <2 x i32> %i.aby, ptr %i.abx, align 4, !tbaa !42
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !44
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store i32 %i.aca, ptr %i.acb, align 4, !tbaa !46
  %indvars.iv.next.i137.i.i.epil = add nuw nsw i64 %indvars.iv.i136.i.i.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %bench_tensor_to_fftw_iodim.exit.i8.i, label %bb.eg, !llvm.loop !19

bench_tensor_to_fftw_iodim.exit.i8.i:             ; preds = %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa, %bb.eg, %bb.ee, %bb.ed
  %.019.i.i9.i = phi ptr [ null, %bb.ed ], [ %i.aas, %bb.ee ], [ %i.aas, %bb.eg ], [ %i.aas, %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa ] ; 2 uses
  %i.acc = load i32, ptr %i.ng, align 8, !tbaa !40 ; 2 uses
  %i.acd = icmp sgt i32 %i.acc, -1
  br i1 %i.acd, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bench_tensor_to_fftw_iodim.exit.i8.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i138.i.i = load i32, ptr %i.ng, align 8, !tbaa !40
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bench_tensor_to_fftw_iodim.exit.i8.i
  %i.ace = phi i32 [ %.pr.i138.i.i, %bb.eh ], [ %i.acc, %bench_tensor_to_fftw_iodim.exit.i8.i ] ; 2 uses
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bench_tensor_to_fftw_iodim.exit145.i.i, label %bb.ej

end_hunk_1
begin_hunk_2_@mkplan:bb.a
  %i.ajd = load ptr, ptr %i.aja, align 8, !tbaa !41
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fz
  %i.aje = trunc nuw i64 %i.ajg to i32
  %i.ajf = icmp sgt i32 %i.aje, 0
  br i1 %i.ajf, label %bb.fy, label %expressible_as_api_many.exit.i, !llvm.loop !12

bb.fy:                                            ; preds = %.lr.ph, %bb.fx
  %.in = phi i64 [ %i.ajc, %.lr.ph ], [ %i.ajg, %bb.fx ]
  %i.ajg = add nsw i64 %.in, -1                   ; 3 uses
  %i.ajh = getelementptr inbounds nuw [12 x i8], ptr %i.ajd, i64 %i.ajg ; 4 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !49
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !49
  %i.ajm = srem i32 %i.ajj, %i.ajl
  %.not13.i.i = icmp eq i32 %i.ajm, 0
  br i1 %.not13.i.i, label %bb.fz, label %expressible_as_api_many.exit.thread.i

bb.fz:                                            ; preds = %bb.fy
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !44
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajh, i64 20
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !44
  %i.ajr = srem i32 %i.ajo, %i.ajq
  %.not14.i.i = icmp eq i32 %i.ajr, 0
  br i1 %.not14.i.i, label %bb.fx, label %expressible_as_api_many.exit.thread.i, !llvm.loop !12

bb.ga:                                            ; preds = %bb.fs
  %i.ajs = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 2 uses
  switch i32 %i.ajs, label %bb.gk [
    i32 1, label %bb.gb
    i32 2, label %bb.ge
    i32 3, label %bb.gh
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.ajt = load i32, ptr @verbose, align 4, !tbaa !42
  %i.aju = icmp sgt i32 %i.ajt, 2
  br i1 %i.aju, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %puts108.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !41
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !50
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !36
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !38
  %i.akc = load i32, ptr %i.ahx, align 4, !tbaa !42
  %i.akd = tail call ptr @fftw_plan_r2r_1d(i32 noundef %i.ajx, ptr noundef %i.ajz, ptr noundef %i.akb, i32 noundef %i.akc, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.ge:                                            ; preds = %bb.ga
  %i.ake = load i32, ptr @verbose, align 4, !tbaa !42
  %i.akf = icmp sgt i32 %i.ake, 2
  br i1 %i.akf, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %puts107.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !41 ; 2 uses
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !50
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 12
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !50
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !36
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !38
  %i.akp = load i32, ptr %i.ahx, align 4, !tbaa !42
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !42
  %i.aks = tail call ptr @fftw_plan_r2r_2d(i32 noundef %i.aki, i32 noundef %i.akk, ptr noundef %i.akm, ptr noundef %i.ako, i32 noundef %i.akp, i32 noundef %i.akr, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gh:                                            ; preds = %bb.ga
  %i.akt = load i32, ptr @verbose, align 4, !tbaa !42
  %i.aku = icmp sgt i32 %i.akt, 2
  br i1 %i.aku, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %puts106.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.akv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !41 ; 3 uses
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !50
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akw, i64 12
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !50
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !50
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !36
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !38
  %i.alg = load i32, ptr %i.ahx, align 4, !tbaa !42
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !42
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !42
  %i.all = tail call ptr @fftw_plan_r2r_3d(i32 noundef %i.akx, i32 noundef %i.akz, i32 noundef %i.alb, ptr noundef %i.ald, ptr noundef %i.alf, i32 noundef %i.alg, i32 noundef %i.ali, i32 noundef %i.alk, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gk:                                            ; preds = %bb.ga
  %i.alm = sext i32 %i.ajs to i64
  %i.aln = shl nsw i64 %i.alm, 3
  %i.alo = tail call ptr @bench_malloc(i64 noundef %i.aln) #6 ; 3 uses
  %i.alp = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 2 uses
  %i.alq = icmp sgt i32 %i.alp, 0
  br i1 %i.alq, label %.lr.ph.i.i, label %mkn.exit.i

.lr.ph.i.i:                                       ; preds = %bb.gk
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !41
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %.lr.ph.i.i
  %indvars.iv.i110.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gl ] ; 3 uses
  %i.alt = getelementptr inbounds nuw [12 x i8], ptr %i.als, i64 %indvars.iv.i110.i
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !50
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %indvars.iv.i110.i
  store i32 %i.alu, ptr %i.alv, align 4, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.alw = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 2 uses
  %i.alx = sext i32 %i.alw to i64
  %i.aly = icmp slt i64 %indvars.iv.next.i.i, %i.alx
  br i1 %i.aly, label %bb.gl, label %mkn.exit.i, !llvm.loop !13

mkn.exit.i:                                       ; preds = %bb.gl, %bb.gk
  %i.alz = phi i32 [ %i.alp, %bb.gk ], [ %i.alw, %bb.gl ]
  %i.ama = load i32, ptr @verbose, align 4, !tbaa !42
  %i.amb = icmp sgt i32 %i.ama, 2
  br i1 %i.amb, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %mkn.exit.i
  %puts109.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %.pre.i35 = load i32, ptr %i.ahr, align 8, !tbaa !40
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %mkn.exit.i
  %i.amc = phi i32 [ %.pre.i35, %bb.gm ], [ %i.alz, %mkn.exit.i ]
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !36
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !38
  %i.amh = tail call ptr @fftw_plan_r2r(i32 noundef %i.amc, ptr noundef %i.alo, ptr noundef %i.ame, ptr noundef %i.amg, ptr noundef %i.ahx, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.alo) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.i:                   ; preds = %bb.fx, %bb.fw
  %i.ami = load i32, ptr %i.aht, align 8, !tbaa !40
  %i.amj = icmp eq i32 %i.ami, 1
  br i1 %i.amj, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %expressible_as_api_many.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 484, ptr noundef nonnull @.str.6) #6
  %.pre138.i = load i32, ptr %i.ahr, align 8, !tbaa !40
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %expressible_as_api_many.exit.i
  %i.amk = phi i32 [ %.pre138.i, %bb.go ], [ %i.aiy, %expressible_as_api_many.exit.i ]
  %i.aml = sext i32 %i.amk to i64
  %i.amm = shl nsw i64 %i.aml, 3
  %i.amn = tail call ptr @bench_malloc(i64 noundef %i.amm) #6 ; 3 uses
  %i.amo = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 2 uses
  %i.amp = icmp sgt i32 %i.amo, 0
  br i1 %i.amp, label %.lr.ph.i111.i, label %.mkn.exit114_crit_edge.i

.mkn.exit114_crit_edge.i:                         ; preds = %bb.gp
  %.pre143.i = sext i32 %i.amo to i64
  br label %mkn.exit114.i

.lr.ph.i111.i:                                    ; preds = %bb.gp
  %i.amq = load ptr, ptr %i.aja, align 8, !tbaa !41
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ 0, %.lr.ph.i111.i ], [ %indvars.iv.next.i113.i, %bb.gq ] ; 3 uses
  %i.amr = getelementptr inbounds nuw [12 x i8], ptr %i.amq, i64 %indvars.iv.i112.i
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !50
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %indvars.iv.i112.i
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !42
  %indvars.iv.next.i113.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.amu = load i32, ptr %i.ahr, align 8, !tbaa !40
  %i.amv = sext i32 %i.amu to i64                 ; 2 uses
  %i.amw = icmp slt i64 %indvars.iv.next.i113.i, %i.amv
  br i1 %i.amw, label %bb.gq, label %mkn.exit114.i, !llvm.loop !13

mkn.exit114.i:                                    ; preds = %bb.gq, %.mkn.exit114_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre143.i, %.mkn.exit114_crit_edge.i ], [ %i.amv, %bb.gq ]
  %i.amx = shl nsw i64 %.pre-phi.i, 3
  %i.amy = tail call ptr @bench_malloc(i64 noundef %i.amx) #6 ; 3 uses
  %i.amz = load i32, ptr %i.ahr, align 8, !tbaa !40
  %i.ana = sext i32 %i.amz to i64
  %i.anb = shl nsw i64 %i.ana, 3
  %i.anc = tail call ptr @bench_malloc(i64 noundef %i.anb) #6 ; 3 uses
  %i.and = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 2 uses
  %.not.i115.i = icmp eq i32 %i.and, 2147483647
  br i1 %.not.i115.i, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %mkn.exit114.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i119.i = load i32, ptr %i.ahr, align 8, !tbaa !40
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %mkn.exit114.i
  %i.ane = phi i32 [ %.pre.i119.i, %bb.gr ], [ %i.and, %mkn.exit114.i ] ; 2 uses
  %i.anf = icmp sgt i32 %i.ane, 1
  br i1 %i.anf, label %.lr.ph.i116.i, label %mknembed_many.exit.i

.lr.ph.i116.i:                                    ; preds = %bb.gs
  %i.ang = add nsw i32 %i.ane, -1
  %i.anh = load ptr, ptr %i.aja, align 8, !tbaa !41
  %i.ani = zext nneg i32 %i.ang to i64
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.lr.ph.i116.i
  %indvars.iv.i117.i = phi i64 [ %i.ani, %.lr.ph.i116.i ], [ %indvars.iv.next.i118.i.a, %bb.gt ] ; 4 uses
  %indvars.iv.next.i118.i.a = add nsw i64 %indvars.iv.i117.i, -1 ; 2 uses
  %i.anj = getelementptr inbounds nuw [12 x i8], ptr %i.anh, i64 %indvars.iv.next.i118.i.a ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 4
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !49
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !49
  %i.ano = sdiv i32 %i.anl, %i.ann
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %indvars.iv.i117.i
  store i32 %i.ano, ptr %i.anp, align 4, !tbaa !42
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !44
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anj, i64 20
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !44
  %i.anu = sdiv i32 %i.anr, %i.ant
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %indvars.iv.i117.i
  store i32 %i.anu, ptr %i.anv, align 4, !tbaa !42
  %4 = icmp samesign ugt i64 %indvars.iv.i117.i, 1
  br i1 %4, label %bb.gt, label %mknembed_many.exit.i, !llvm.loop !14

mknembed_many.exit.i:                             ; preds = %bb.gt, %bb.gs
  %i.anw = load i32, ptr @verbose, align 4, !tbaa !42
  %i.anx = icmp sgt i32 %i.anw, 2
  br i1 %i.anx, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %mknembed_many.exit.i
  %puts105.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %mknembed_many.exit.i
  %i.any = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !41 ; 3 uses
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !50
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !36
  %i.aoe = load ptr, ptr %i.aja, align 8, !tbaa !41
  %i.aof = sext i32 %i.any to i64
  %i.aog = getelementptr [12 x i8], ptr %i.aoe, i64 %i.aof ; 2 uses
  %i.aoh = getelementptr i8, ptr %i.aog, i64 -8
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !49
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoa, i64 4
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !49
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !38
  %i.aon = getelementptr i8, ptr %i.aog, i64 -4
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !44
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !44
  %i.aor = tail call ptr @fftw_plan_many_r2r(i32 noundef %i.any, ptr noundef %i.amn, i32 noundef %i.aob, ptr noundef %i.aod, ptr noundef %i.amy, i32 noundef %i.aoi, i32 noundef %i.aok, ptr noundef %i.aom, ptr noundef %i.anc, i32 noundef %i.aoo, i32 noundef %i.aoq, ptr noundef %i.ahx, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.amn) #6
  tail call void @bench_free(ptr noundef %i.amy) #6
  tail call void @bench_free(ptr noundef %i.anc) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.thread.i:            ; preds = %bb.fz, %bb.fy, %bb.ft
  %i.aos = phi i32 [ %.pre139.i, %bb.ft ], [ %i.aiy, %bb.fy ], [ %i.aiy, %bb.fz ] ; 2 uses
  %i.aot = icmp sgt i32 %i.aos, -1
  br i1 %i.aot, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %expressible_as_api_many.exit.thread.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i31 = load i32, ptr %i.ahr, align 8, !tbaa !40
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %expressible_as_api_many.exit.thread.i
  %i.aou = phi i32 [ %.pr.i.i31, %bb.gw ], [ %i.aos, %expressible_as_api_many.exit.thread.i ] ; 2 uses
  %i.aov = icmp eq i32 %i.aou, 0
  br i1 %i.aov, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aow = sext i32 %i.aou to i64
  %i.aox = mul nsw i64 %i.aow, 12
  %i.aoy = tail call ptr @bench_malloc(i64 noundef %i.aox) #6 ; 8 uses
  %i.aoz = load i32, ptr %i.ahr, align 8, !tbaa !40 ; 3 uses
  %i.apa = icmp sgt i32 %i.aoz, 0
  br i1 %i.apa, label %.lr.ph.i120.i, label %bench_tensor_to_fftw_iodim.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.gy
  %i.apb = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !41 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.aoz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.apd = icmp ult i32 %i.aoz, 4
  br i1 %i.apd, label %.epil.preheader, label %.lr.ph.i120.i.new

.lr.ph.i120.i.new:                                ; preds = %.lr.ph.i120.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %.lr.ph.i120.i.new
  %indvars.iv.i121.i = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %indvars.iv.next.i122.i.3, %bb.gz ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %niter.next.3, %bb.gz ]
  %i.ape = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv.i121.i ; 2 uses
  %i.apf = getelementptr inbounds nuw [12 x i8], ptr %i.aoy, i64 %indvars.iv.i121.i ; 2 uses
  %i.apg = load <2 x i32>, ptr %i.ape, align 4, !tbaa !42
  store <2 x i32> %i.apg, ptr %i.apf, align 4, !tbaa !42
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 8
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !44
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  store i32 %i.api, ptr %i.apj, align 4, !tbaa !46
  %indvars.iv.next.i122.i = or disjoint i64 %indvars.iv.i121.i, 1 ; 2 uses
  %i.apk = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv.next.i122.i ; 2 uses
  %i.apl = getelementptr inbounds nuw [12 x i8], ptr %i.aoy, i64 %indvars.iv.next.i122.i ; 2 uses
  %i.apm = load <2 x i32>, ptr %i.apk, align 4, !tbaa !42
  store <2 x i32> %i.apm, ptr %i.apl, align 4, !tbaa !42
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !44
  %i.app = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  store i32 %i.apo, ptr %i.app, align 4, !tbaa !46
  %indvars.iv.next.i122.i.1 = or disjoint i64 %indvars.iv.i121.i, 2 ; 2 uses
  %i.apq = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv.next.i122.i.1 ; 2 uses
  %i.apr = getelementptr inbounds nuw [12 x i8], ptr %i.aoy, i64 %indvars.iv.next.i122.i.1 ; 2 uses
  %i.aps = load <2 x i32>, ptr %i.apq, align 4, !tbaa !42
  store <2 x i32> %i.aps, ptr %i.apr, align 4, !tbaa !42
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !44
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  store i32 %i.apu, ptr %i.apv, align 4, !tbaa !46
  %indvars.iv.next.i122.i.2 = or disjoint i64 %indvars.iv.i121.i, 3 ; 2 uses
  %i.apw = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv.next.i122.i.2 ; 2 uses
  %i.apx = getelementptr inbounds nuw [12 x i8], ptr %i.aoy, i64 %indvars.iv.next.i122.i.2 ; 2 uses
  %i.apy = load <2 x i32>, ptr %i.apw, align 4, !tbaa !42
  store <2 x i32> %i.apy, ptr %i.apx, align 4, !tbaa !42
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !44
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  store i32 %i.aqa, ptr %i.aqb, align 4, !tbaa !46
  %indvars.iv.next.i122.i.3 = add nuw nsw i64 %indvars.iv.i121.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa, label %bb.gz, !llvm.loop !9

bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa: ; preds = %bb.gz
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bench_tensor_to_fftw_iodim.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa, %.lr.ph.i120.i
  %indvars.iv.i121.i.epil.init = phi i64 [ 0, %.lr.ph.i120.i ], [ %indvars.iv.next.i122.i.3, %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod130)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.ha, %.epil.preheader
  %indvars.iv.i121.i.epil = phi i64 [ %indvars.iv.i121.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i122.i.epil, %bb.ha ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ha ]
  %i.aqc = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv.i121.i.epil ; 2 uses
  %i.aqd = getelementptr inbounds nuw [12 x i8], ptr %i.aoy, i64 %indvars.iv.i121.i.epil ; 2 uses
  %i.aqe = load <2 x i32>, ptr %i.aqc, align 4, !tbaa !42
  store <2 x i32> %i.aqe, ptr %i.aqd, align 4, !tbaa !42
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !44
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  store i32 %i.aqg, ptr %i.aqh, align 4, !tbaa !46
  %indvars.iv.next.i122.i.epil = add nuw nsw i64 %indvars.iv.i121.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.ha, !llvm.loop !24

bench_tensor_to_fftw_iodim.exit.i:                ; preds = %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa, %bb.ha, %bb.gy, %bb.gx
  %.019.i.i = phi ptr [ null, %bb.gx ], [ %i.aoy, %bb.gy ], [ %i.aoy, %bb.ha ], [ %i.aoy, %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.aqi = load i32, ptr %i.aht, align 8, !tbaa !40 ; 2 uses
  %i.aqj = icmp sgt i32 %i.aqi, -1
  br i1 %i.aqj, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bench_tensor_to_fftw_iodim.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i123.i = load i32, ptr %i.aht, align 8, !tbaa !40
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bench_tensor_to_fftw_iodim.exit.i
  %i.aqk = phi i32 [ %.pr.i123.i, %bb.hb ], [ %i.aqi, %bench_tensor_to_fftw_iodim.exit.i ] ; 2 uses
  %i.aql = icmp eq i32 %i.aqk, 0
  br i1 %i.aql, label %bench_tensor_to_fftw_iodim.exit130.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aqm = sext i32 %i.aqk to i64
  %i.aqn = mul nsw i64 %i.aqm, 12
  %i.aqo = tail call ptr @bench_malloc(i64 noundef %i.aqn) #6 ; 8 uses
  %i.aqp = load i32, ptr %i.aht, align 8, !tbaa !40 ; 6 uses
  %i.aqq = icmp sgt i32 %i.aqp, 0
  br i1 %i.aqq, label %.lr.ph.i125.i, label %bench_tensor_to_fftw_iodim.exit130.i

.lr.ph.i125.i:                                    ; preds = %bb.hd
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !41 ; 5 uses
  %wide.trip.count.i126.i = zext nneg i32 %i.aqp to i64 ; 2 uses
  %xtraiter132 = and i64 %wide.trip.count.i126.i, 3 ; 3 uses
  %i.aqt = icmp ult i32 %i.aqp, 4
  br i1 %i.aqt, label %.epil.preheader131, label %.lr.ph.i125.i.new

.lr.ph.i125.i.new:                                ; preds = %.lr.ph.i125.i
  %unroll_iter136 = and i64 %wide.trip.count.i126.i, 2147483644
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %.lr.ph.i125.i.new
  %indvars.iv.i127.i = phi i64 [ 0, %.lr.ph.i125.i.new ], [ %indvars.iv.next.i128.i.3, %bb.he ] ; 6 uses
  %niter137 = phi i64 [ 0, %.lr.ph.i125.i.new ], [ %niter137.next.3, %bb.he ]
  %i.aqu = getelementptr inbounds nuw [12 x i8], ptr %i.aqs, i64 %indvars.iv.i127.i ; 2 uses
  %i.aqv = getelementptr inbounds nuw [12 x i8], ptr %i.aqo, i64 %indvars.iv.i127.i ; 2 uses
  %i.aqw = load <2 x i32>, ptr %i.aqu, align 4, !tbaa !42
  store <2 x i32> %i.aqw, ptr %i.aqv, align 4, !tbaa !42
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !44
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  store i32 %i.aqy, ptr %i.aqz, align 4, !tbaa !46
  %indvars.iv.next.i128.i = or disjoint i64 %indvars.iv.i127.i, 1 ; 2 uses
  %i.ara = getelementptr inbounds nuw [12 x i8], ptr %i.aqs, i64 %indvars.iv.next.i128.i ; 2 uses
  %i.arb = getelementptr inbounds nuw [12 x i8], ptr %i.aqo, i64 %indvars.iv.next.i128.i ; 2 uses
  %i.arc = load <2 x i32>, ptr %i.ara, align 4, !tbaa !42
  store <2 x i32> %i.arc, ptr %i.arb, align 4, !tbaa !42
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !44
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store i32 %i.are, ptr %i.arf, align 4, !tbaa !46
  %indvars.iv.next.i128.i.1 = or disjoint i64 %indvars.iv.i127.i, 2 ; 2 uses
  %i.arg = getelementptr inbounds nuw [12 x i8], ptr %i.aqs, i64 %indvars.iv.next.i128.i.1 ; 2 uses
  %i.arh = getelementptr inbounds nuw [12 x i8], ptr %i.aqo, i64 %indvars.iv.next.i128.i.1 ; 2 uses
  %i.ari = load <2 x i32>, ptr %i.arg, align 4, !tbaa !42
  store <2 x i32> %i.ari, ptr %i.arh, align 4, !tbaa !42
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
end_hunk_2
