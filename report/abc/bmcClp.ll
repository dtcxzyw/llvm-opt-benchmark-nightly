Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcClp?download=true
inline.NumInlined: 556
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Bmc_CollapseOne_int2:bb.a
  %i.fx = call i32 @sat_solver_solve(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.fx, label %bb.bg [
    i32 0, label %.loopexit275
    i32 -1, label %.lr.ph.i
  ]

bb.bg:                                            ; preds = %Vec_StrPush.exit206
  %i.fy = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx) #18 ; 0 uses
  %i.fz = load ptr, ptr %i.k, align 8, !tbaa !78  ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !57 ; 7 uses
  %i.gc = load i32, ptr %i.fz, align 8, !tbaa !70
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bh, label %Vec_StrPush.exit206.1

bb.bh:                                            ; preds = %bb.bg
  %i.ge = icmp slt i32 %i.gb, 16
  br i1 %i.ge, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gf = icmp samesign ult i32 %i.gb, 1073741823
  %i.gg = shl nuw nsw i32 %i.gb, 1
  %spec.select.i199.1 = select i1 %i.gf, i32 %i.gg, i32 2147483647 ; 3 uses
  %.not.i9.i200.1 = icmp samesign ult i32 %i.gb, %spec.select.i199.1
  br i1 %.not.i9.i200.1, label %bb.bj, label %Vec_StrPush.exit206.1

bb.bj:                                            ; preds = %bb.bi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i201.1 = icmp eq ptr %i.gi, null
  %i.gj = zext nneg i32 %spec.select.i199.1 to i64 ; 2 uses
  br i1 %.not9.i10.i201.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = call ptr @realloc(ptr noundef nonnull %i.gi, i64 noundef %i.gj) #16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gl = call noalias ptr @malloc(i64 noundef %i.gj) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gm = phi ptr [ %i.gk, %bb.bk ], [ %i.gl, %bb.bl ]
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i202.1

bb.bn:                                            ; preds = %bb.bh
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i204.1 = icmp eq ptr %i.go, null
  br i1 %.not9.i.i204.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gp = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.go, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i205.1

bb.bp:                                            ; preds = %bb.bn
  %i.gq = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i205.1

Vec_StrGrow.exit.i205.1:                          ; preds = %bb.bp, %bb.bo
  %i.gr = phi ptr [ %i.gp, %bb.bo ], [ %i.gq, %bb.bp ]
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i202.1

Vec_StrGrow.exit11.sink.split.i202.1:             ; preds = %Vec_StrGrow.exit.i205.1, %bb.bm
  %spec.select.sink.i203.1 = phi i32 [ %spec.select.i199.1, %bb.bm ], [ 16, %Vec_StrGrow.exit.i205.1 ]
  store i32 %spec.select.sink.i203.1, ptr %i.fz, align 8, !tbaa !70
  %.pre384 = load i32, ptr %i.ga, align 4, !tbaa !57
  br label %Vec_StrPush.exit206.1

Vec_StrPush.exit206.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i202.1, %bb.bi, %bb.bg
  %i.gs = phi i32 [ %.pre384, %Vec_StrGrow.exit11.sink.split.i202.1 ], [ %i.gb, %bb.bi ], [ %i.gb, %bb.bg ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !46
  %i.gv = add nsw i32 %i.gs, 1
  store i32 %i.gv, ptr %i.ga, align 4, !tbaa !57
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 %i.gw
  store i8 0, ptr %i.gx, align 1, !tbaa !52
  %i.gy = icmp eq i32 %3, 0
  %i.gz = icmp sgt i32 %3, -1
  br i1 %i.gz, label %.preheader.lr.ph, label %.loopexit275

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.di
  %.0334 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.di ]
  %.0138333 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.oe, %bb.di ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  br i1 %.not150, label %bb.br, label %.loopexit, !llvm.loop !171

bb.br:                                            ; preds = %.preheader, %bb.bq
  %.not150 = phi i1 [ true, %.preheader ], [ false, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep457, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi458 = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep460, %bb.bq ]
  %indvars.iv377.sroa.phi461 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv377.sroa.gep463, %bb.bq ]
  %indvars.iv377.sroa.phi464 = phi ptr [ %i.a, %.preheader ], [ %indvars.iv377.sroa.gep466, %bb.bq ]
  %indvars.iv377 = phi i64 [ 0, %.preheader ], [ 1, %bb.bq ] ; 3 uses
  %.1332 = phi i64 [ %.0334, %.preheader ], [ %.3, %bb.bq ]
  br i1 %.not149, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ha = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #18
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hc = load i64, ptr %11, align 8, !tbaa !81
  %i.hd = mul nsw i64 %i.hc, 1000000
  %i.he = load i64, ptr %i.ca, align 8, !tbaa !82
  %i.hf = sdiv i64 %i.he, 1000
  %i.hg = add nsw i64 %i.hf, %i.hd
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hg, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1332, %bb.br ] ; 3 uses
  %i.hh = load ptr, ptr %indvars.iv377.sroa.phi464, align 8, !tbaa !72 ; 4 uses
  %.val162 = load ptr, ptr %i.v, align 8, !tbaa !33 ; 6 uses
  %.val157 = load i32, ptr %i.r, align 4, !tbaa !32 ; 4 uses
  %i.hi = icmp sgt i32 %.val157, 0                ; 2 uses
  br i1 %i.hi, label %.lr.ph.i207, label %sat_solver_clean_polarity.exit

.lr.ph.i207:                                      ; preds = %bb.bu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 216 ; 5 uses
  %wide.trip.count.i208 = zext nneg i32 %.val157 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i208, 3    ; 3 uses
  %i.hk = icmp ult i32 %.val157, 4
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph.i207.new

.lr.ph.i207.new:                                  ; preds = %.lr.ph.i207
  %unroll_iter = and i64 %wide.trip.count.i208, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i207.new
  %indvars.iv.i209 = phi i64 [ 0, %.lr.ph.i207.new ], [ %indvars.iv.next.i210.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i207.new ], [ %niter.next.3, %bb.bv ]
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !34
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 %i.ho
  store i8 0, ptr %i.hp, align 1, !tbaa !52
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !34
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 %i.hu
  store i8 0, ptr %i.hv, align 1, !tbaa !52
  %i.hw = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !34
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hw, i64 %i.ia
  store i8 0, ptr %i.ib, align 1, !tbaa !52
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !34
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %i.ic, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !52
  %indvars.iv.next.i210.3 = add nuw nsw i64 %indvars.iv.i209, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i207
  %indvars.iv.i209.epil.init = phi i64 [ 0, %.lr.ph.i207 ], [ %indvars.iv.next.i210.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i209.epil = phi i64 [ %indvars.iv.i209.epil.init, %.epil.preheader ], [ %indvars.iv.next.i210.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209.epil
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !34
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !52
  %indvars.iv.next.i210.epil = add nuw nsw i64 %indvars.iv.i209.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !172

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %12 = trunc nuw nsw i64 %indvars.iv377 to i32
  %notmask = shl nsw i32 -1, %12
  %13 = xor i32 %notmask, -1
  %14 = shl nuw nsw i32 %13, 1                    ; 2 uses
  %i.in = or disjoint i32 %14, 1
  store i32 %i.in, ptr %i.c, align 4, !tbaa !34
  %i.io = call i32 @sat_solver_solve(ptr noundef %i.hh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not149, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ip = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.iq = icmp slt i32 %i.ip, 0
  br i1 %i.iq, label %Abc_Clock.exit213, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ir = load i64, ptr %10, align 8, !tbaa !81
  %i.is = mul nsw i64 %i.ir, 1000000
  %i.it = load i64, ptr %i.cb, align 8, !tbaa !82
  %i.iu = sdiv i64 %i.it, 1000
  %i.iv = add nsw i64 %i.iu, %i.is
  br label %Abc_Clock.exit213

Abc_Clock.exit213:                                ; preds = %bb.bx, %bb.by
  %.0.i212 = phi i64 [ %i.iv, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.iw = sub i64 %.0.i212, %.2
  %i.ix = load i64, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !39
  %i.iy = add nsw i64 %i.iw, %i.ix
  store i64 %i.iy, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit213, %sat_solver_clean_polarity.exit
  switch i32 %i.io, label %bb.ca [
    i32 0, label %.loopexit275
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.x, align 4, !tbaa !32
  br i1 %i.hi, label %.lr.ph312, label %.critedge

.lr.ph312:                                        ; preds = %bb.ca
  %i.iz = getelementptr i8, ptr %i.hh, i64 328
  %.promoted315 = load i32, ptr %i.w, align 8, !tbaa !44
  %.promoted318 = load ptr, ptr %i.ac, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %.val157 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph312, %Vec_IntPush.exit221
  %indvars.iv362 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next363, %Vec_IntPush.exit221 ] ; 2 uses
  %indvars.iv360 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next361, %Vec_IntPush.exit221 ] ; 7 uses
  %storemerge273319 = phi ptr [ %.promoted318, %.lr.ph312 ], [ %storemerge273320, %Vec_IntPush.exit221 ] ; 6 uses
  %spec.select.sink.i218317 = phi i32 [ %.promoted315, %.lr.ph312 ], [ %spec.select.sink.i218316, %Vec_IntPush.exit221 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv362
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !34 ; 2 uses
  %.val171 = load ptr, ptr %i.iz, align 8, !tbaa !77
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %.val171, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !34
  %i.jf = icmp ne i32 %i.je, 1
  %i.jg = zext i1 %i.jf to i32
  %i.jh = shl nsw i32 %i.jb, 1
  %i.ji = or disjoint i32 %i.jh, %i.jg
  %i.jj = trunc nsw i64 %indvars.iv360 to i32
  %i.jk = icmp eq i32 %spec.select.sink.i218317, %i.jj
  br i1 %i.jk, label %bb.cc, label %Vec_IntPush.exit221

bb.cc:                                            ; preds = %bb.cb
  %i.jl = icmp samesign ult i64 %indvars.iv360, 16
  br i1 %i.jl, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i219 = icmp eq ptr %storemerge273319, null
  br i1 %.not9.i.i219, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jm = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef 64) #16
  br label %Vec_IntPush.exit221

bb.cf:                                            ; preds = %bb.cd
  %i.jn = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit221

bb.cg:                                            ; preds = %bb.cc
  %i.jo = icmp samesign ult i64 %indvars.iv360, 1073741823
  %indvars.iv360.tr = trunc nsw i64 %indvars.iv360 to i32
  %i.jp = shl nsw i32 %indvars.iv360.tr, 1
  %spec.select.i214 = select i1 %i.jo, i32 %i.jp, i32 2147483647 ; 4 uses
  %i.jq = sext i32 %spec.select.i214 to i64
  %.not.i9.i215 = icmp samesign ult i64 %indvars.iv360, %i.jq
  br i1 %.not.i9.i215, label %bb.ch, label %Vec_IntPush.exit221

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i216 = icmp eq ptr %storemerge273319, null
  %i.jr = zext nneg i32 %spec.select.i214 to i64
  %i.js = shl nuw nsw i64 %i.jr, 2                ; 2 uses
  br i1 %.not9.i10.i216, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jt = call ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef %i.js) #16
  br label %Vec_IntPush.exit221

bb.cj:                                            ; preds = %bb.ch
  %i.ju = call noalias ptr @malloc(i64 noundef %i.js) #17
  br label %Vec_IntPush.exit221

Vec_IntPush.exit221:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge273320 = phi ptr [ %storemerge273319, %bb.cb ], [ %storemerge273319, %bb.cg ], [ %i.jn, %bb.cf ], [ %i.jm, %bb.ce ], [ %i.jt, %bb.ci ], [ %i.ju, %bb.cj ] ; 3 uses
  %spec.select.sink.i218316 = phi i32 [ %spec.select.sink.i218317, %bb.cb ], [ %spec.select.sink.i218317, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i214, %bb.ci ], [ %spec.select.i214, %bb.cj ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %storemerge273320, i64 %indvars.iv360
  store i32 %i.ji, ptr %i.jv, align 4, !tbaa !34
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count
  br i1 %exitcond367.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !173

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit221
  %i.jw = trunc nsw i64 %indvars.iv.next361 to i32
  store i32 %i.jw, ptr %i.x, align 4, !tbaa !32
  store i32 %spec.select.sink.i218316, ptr %i.w, align 8
  store ptr %storemerge273320, ptr %i.ac, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not149, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.jx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.jy = icmp slt i32 %i.jx, 0
  br i1 %i.jy, label %Abc_Clock.exit223, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jz = load i64, ptr %9, align 8, !tbaa !81
  %i.ka = mul nsw i64 %i.jz, 1000000
  %i.kb = load i64, ptr %i.cc, align 8, !tbaa !82
  %i.kc = sdiv i64 %i.kb, 1000
  %i.kd = add nsw i64 %i.kc, %i.ka
  br label %Abc_Clock.exit223

Abc_Clock.exit223:                                ; preds = %bb.ck, %bb.cl
  %.0.i222 = phi i64 [ %i.kd, %bb.cl ], [ -1, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.cm

bb.cm:                                            ; preds = %Abc_Clock.exit223, %.critedge
  %.3 = phi i64 [ %.0.i222, %Abc_Clock.exit223 ], [ %.2, %.critedge ] ; 4 uses
  %i.ke = xor i64 %indvars.iv377, 1
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !72
  %i.kh = call i32 @Bmc_CollapseExpand(ptr noundef %i.kg, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak, i32 noundef %4, i32 noundef %5, i32 noundef -1)
  br i1 %.not149, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ki = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.kj = icmp slt i32 %i.ki, 0
  br i1 %i.kj, label %Abc_Clock.exit225, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kk = load i64, ptr %8, align 8, !tbaa !81
  %i.kl = mul nsw i64 %i.kk, 1000000
  %i.km = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.kn = sdiv i64 %i.km, 1000
  %i.ko = add nsw i64 %i.kn, %i.kl
  br label %Abc_Clock.exit225

Abc_Clock.exit225:                                ; preds = %bb.cn, %bb.co
  %.0.i224 = phi i64 [ %i.ko, %bb.co ], [ -1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.kp = sub i64 %.0.i224, %.3
  %i.kq = getelementptr inbounds nuw i8, ptr %indvars.iv377.sroa.phi458, i64 8 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !39
  %i.ks = add nsw i64 %i.kp, %i.kr
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !39
  br label %bb.cp

bb.cp:                                            ; preds = %Abc_Clock.exit225, %bb.cm
  %i.kt = icmp slt i32 %i.kh, 0
  br i1 %i.kt, label %.loopexit275, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ku = load ptr, ptr %indvars.iv377.sroa.phi461, align 8, !tbaa !78 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 12 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !46 ; 8 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 4 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !57 ; 3 uses
  %i.kz = add nsw i32 %i.ky, -1                   ; 6 uses
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !57
  %i.la = add nsw i32 %i.kz, %2                   ; 3 uses
  %i.lb = add nsw i32 %i.la, 4                    ; 9 uses
  %.not.i226.not = icmp slt i32 %i.lb, %i.ky
  br i1 %.not.i226.not, label %Vec_StrFillExtra.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lc = load i32, ptr %i.ku, align 8, !tbaa !70 ; 4 uses
  %i.ld = shl nsw i32 %i.lc, 1                    ; 2 uses
  %i.le = icmp sgt i32 %i.lb, %i.ld
  %.not.i.i = icmp slt i32 %i.lc, %i.lb           ; 2 uses
  br i1 %i.le, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not.i.i, label %bb.ct, label %Vec_StrGrow.exit.i227

bb.ct:                                            ; preds = %bb.cs
  %.not9.i.i235 = icmp eq ptr %i.kw, null
  %i.lf = sext i32 %i.lb to i64                   ; 2 uses
  br i1 %.not9.i.i235, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lg = call ptr @realloc(ptr noundef nonnull %i.kw, i64 noundef %i.lf) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cv:                                            ; preds = %bb.ct
  %i.lh = call noalias ptr @malloc(i64 noundef %i.lf) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.cw:                                            ; preds = %bb.cr
  br i1 %.not.i.i, label %bb.cx, label %Vec_StrGrow.exit.i227

bb.cx:                                            ; preds = %bb.cw
  %i.li = icmp slt i32 %i.lc, 1073741823
  %spec.select.i233 = select i1 %i.li, i32 %i.ld, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.lc, %spec.select.i233
  br i1 %.not.i22.i, label %bb.cy, label %Vec_StrGrow.exit.i227

bb.cy:                                            ; preds = %bb.cx
  %.not9.i23.i = icmp eq ptr %i.kw, null
  %i.lj = sext i32 %spec.select.i233 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lk = call ptr @realloc(ptr noundef nonnull %i.kw, i64 noundef %i.lj) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.da:                                            ; preds = %bb.cy
  %i.ll = call noalias ptr @malloc(i64 noundef %i.lj) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.cz, %bb.da, %bb.cu, %bb.cv
  %storemerge271 = phi ptr [ %i.lh, %bb.cv ], [ %i.lg, %bb.cu ], [ %i.lk, %bb.cz ], [ %i.ll, %bb.da ] ; 2 uses
  %spec.select.sink.i234 = phi i32 [ %i.lb, %bb.cv ], [ %i.lb, %bb.cu ], [ %spec.select.i233, %bb.cz ], [ %spec.select.i233, %bb.da ]
  store ptr %storemerge271, ptr %i.kv, align 8, !tbaa !46
  store i32 %spec.select.sink.i234, ptr %i.ku, align 8, !tbaa !70
  %.pre385 = load i32, ptr %i.kx, align 4, !tbaa !57
  br label %Vec_StrGrow.exit.i227

Vec_StrGrow.exit.i227:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.cx, %bb.cw, %bb.cs
  %.val170.pre391 = phi ptr [ %storemerge271, %Vec_StrGrow.exit.sink.split.i ], [ %i.kw, %bb.cx ], [ %i.kw, %bb.cw ], [ %i.kw, %bb.cs ]
  %i.lm = phi i32 [ %.pre385, %Vec_StrGrow.exit.sink.split.i ], [ %i.kz, %bb.cx ], [ %i.kz, %bb.cw ], [ %i.kz, %bb.cs ] ; 2 uses
  %i.ln = icmp slt i32 %i.lm, %i.lb
  br i1 %i.ln, label %.lr.ph.i228, label %._crit_edge.i

.lr.ph.i228:                                      ; preds = %Vec_StrGrow.exit.i227
  %i.lo = sext i32 %i.lm to i64                   ; 4 uses
  %wide.trip.count.i229 = sext i32 %i.lb to i64   ; 3 uses
  %i.lp = sub nsw i64 %wide.trip.count.i229, %i.lo
  %xtraiter455 = and i64 %i.lp, 3                 ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i228, %.prol.preheader
  %indvars.iv.i230.prol = phi i64 [ %indvars.iv.next.i231.prol, %.prol.preheader ], [ %i.lo, %.lr.ph.i228 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i228 ]
  %i.lq = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %indvars.iv.i230.prol
  store i8 45, ptr %i.lr, align 1, !tbaa !52
  %indvars.iv.next.i231.prol = add nsw i64 %indvars.iv.i230.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter455
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !174

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i228
  %indvars.iv.i230.unr = phi i64 [ %i.lo, %.lr.ph.i228 ], [ %indvars.iv.next.i231.prol, %.prol.preheader ]
  %i.ls = sub nsw i64 %i.lo, %wide.trip.count.i229
  %i.lt = icmp ugt i64 %i.ls, -4
  br i1 %i.lt, label %._crit_edge.i.loopexit, label %.lr.ph.i228.new

.lr.ph.i228.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i228.new
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i231.3, %.lr.ph.i228.new ], [ %indvars.iv.i230.unr, %.prol.loopexit ] ; 5 uses
  %i.lu = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %indvars.iv.i230
  store i8 45, ptr %i.lv, align 1, !tbaa !52
  %i.lw = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.lx = getelementptr i8, ptr %i.lw, i64 %indvars.iv.i230
  %i.ly = getelementptr i8, ptr %i.lx, i64 1
  store i8 45, ptr %i.ly, align 1, !tbaa !52
  %i.lz = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.ma = getelementptr i8, ptr %i.lz, i64 %indvars.iv.i230
  %i.mb = getelementptr i8, ptr %i.ma, i64 2
  store i8 45, ptr %i.mb, align 1, !tbaa !52
  %i.mc = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.md = getelementptr i8, ptr %i.mc, i64 %indvars.iv.i230
  %i.me = getelementptr i8, ptr %i.md, i64 3
  store i8 45, ptr %i.me, align 1, !tbaa !52
  %indvars.iv.next.i231.3 = add nsw i64 %indvars.iv.i230, 4 ; 2 uses
  %exitcond.not.i232.3 = icmp eq i64 %indvars.iv.next.i231.3, %wide.trip.count.i229
  br i1 %exitcond.not.i232.3, label %._crit_edge.i.loopexit, label %.lr.ph.i228.new, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i228.new, %.prol.loopexit
  %.val170.pre.pre = load ptr, ptr %i.kv, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i227
  %.val170.pre = phi ptr [ %.val170.pre.pre, %._crit_edge.i.loopexit ], [ %.val170.pre391, %Vec_StrGrow.exit.i227 ]
  store i32 %i.lb, ptr %i.kx, align 4, !tbaa !57
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.cq, %._crit_edge.i
  %.val170 = phi ptr [ %i.kw, %bb.cq ], [ %.val170.pre, %._crit_edge.i ]
  %i.mf = sext i32 %i.la to i64                   ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %.val170, i64 %i.mf
  store i8 32, ptr %i.mg, align 1, !tbaa !52
  %i.mh = add i32 %i.ky, %2
  %i.mi = select i1 %.not150, i8 49, i8 48
  %.val169 = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.mj = sext i32 %i.mh to i64
  %i.mk = getelementptr inbounds i8, ptr %.val169, i64 %i.mj
  store i8 %i.mi, ptr %i.mk, align 1, !tbaa !52
  %.val168 = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.ml = getelementptr i8, ptr %.val168, i64 %i.mf
  %i.mm = getelementptr i8, ptr %i.ml, i64 2
  store i8 10, ptr %i.mm, align 1, !tbaa !52
  %.val167 = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.mn = getelementptr i8, ptr %.val167, i64 %i.mf
  %i.mo = getelementptr i8, ptr %i.mn, i64 3
  store i8 0, ptr %i.mo, align 1, !tbaa !52
  %i.mp = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.mq = icmp eq i32 %i.mp, 0
  %.pre387 = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 3 uses
  br i1 %i.mq, label %bb.db, label %Vec_IntPush.exit243

bb.db:                                            ; preds = %Vec_StrFillExtra.exit
  %.not9.i.i241 = icmp eq ptr %.pre387, null
  br i1 %.not9.i.i241, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre387, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i239

bb.dd:                                            ; preds = %bb.db
  %i.ms = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i239

Vec_IntGrow.exit11.sink.split.i239:               ; preds = %bb.dc, %bb.dd
  %i.mt = phi ptr [ %i.mr, %bb.dc ], [ %i.ms, %bb.dd ] ; 2 uses
  store ptr %i.mt, ptr %i.aq, align 8, !tbaa !33
  store i32 16, ptr %i.ak, align 8, !tbaa !44
  br label %Vec_IntPush.exit243

Vec_IntPush.exit243:                              ; preds = %Vec_StrFillExtra.exit, %Vec_IntGrow.exit11.sink.split.i239
  %.promoted328 = phi ptr [ %.pre387, %Vec_StrFillExtra.exit ], [ %i.mt, %Vec_IntGrow.exit11.sink.split.i239 ] ; 3 uses
  store i32 1, ptr %i.al, align 4, !tbaa !32
  store i32 %14, ptr %.promoted328, align 4, !tbaa !34
  %.val = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.mu = icmp sgt i32 %.val, 0
  %.val163.pre = load i32, ptr %i.al, align 4, !tbaa !32 ; 2 uses
  br i1 %i.mu, label %.lr.ph322, label %.critedge2

.lr.ph322:                                        ; preds = %Vec_IntPush.exit243
  %.val159 = load ptr, ptr %i.aj, align 8, !tbaa !33
  %.val158 = load ptr, ptr %i.ac, align 8, !tbaa !33
  %.promoted325 = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.mv = sext i32 %.val163.pre to i64
  %wide.trip.count375 = zext nneg i32 %.val to i64
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph322, %Vec_IntPush.exit251
  %indvars.iv370 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next371, %Vec_IntPush.exit251 ] ; 2 uses
  %indvars.iv368 = phi i64 [ %i.mv, %.lr.ph322 ], [ %indvars.iv.next369, %Vec_IntPush.exit251 ] ; 7 uses
  %storemerge272329 = phi ptr [ %.promoted328, %.lr.ph322 ], [ %storemerge272330, %Vec_IntPush.exit251 ] ; 3 uses
  %spec.select.sink.i248327 = phi i32 [ %.promoted325, %.lr.ph322 ], [ %spec.select.sink.i248326, %Vec_IntPush.exit251 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.val159, i64 %indvars.iv370
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !34 ; 3 uses
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %.val158, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !34 ; 2 uses
  %i.nb = xor i32 %i.na, 1
  %i.nc = trunc nsw i64 %indvars.iv368 to i32
  %i.nd = icmp eq i32 %spec.select.sink.i248327, %i.nc
  br i1 %i.nd, label %bb.df, label %Vec_IntPush.exit251

bb.df:                                            ; preds = %bb.de
  %i.ne = icmp slt i64 %indvars.iv368, 16
  br i1 %i.ne, label %Vec_IntPush.exit251.sink.split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nf = icmp samesign ult i64 %indvars.iv368, 1073741823
  %indvars.iv368.tr = trunc nsw i64 %indvars.iv368 to i32
  %i.ng = shl nsw i32 %indvars.iv368.tr, 1
  %spec.select.i244 = select i1 %i.nf, i32 %i.ng, i32 2147483647 ; 3 uses
  %i.nh = sext i32 %spec.select.i244 to i64
  %.not.i9.i245 = icmp samesign ult i64 %indvars.iv368, %i.nh
  br i1 %.not.i9.i245, label %bb.dh, label %Vec_IntPush.exit251

bb.dh:                                            ; preds = %bb.dg
  %i.ni = zext nneg i32 %spec.select.i244 to i64
  %i.nj = shl nuw nsw i64 %i.ni, 2
  br label %Vec_IntPush.exit251.sink.split

Vec_IntPush.exit251.sink.split:                   ; preds = %bb.df, %bb.dh
  %.sink = phi i64 [ %i.nj, %bb.dh ], [ 64, %bb.df ]
  %spec.select.sink.i248326.ph = phi i32 [ %spec.select.i244, %bb.dh ], [ 16, %bb.df ]
  %i.nk = call ptr @realloc(ptr noundef nonnull %storemerge272329, i64 noundef %.sink) #16
  br label %Vec_IntPush.exit251

Vec_IntPush.exit251:                              ; preds = %Vec_IntPush.exit251.sink.split, %bb.de, %bb.dg
  %storemerge272330 = phi ptr [ %storemerge272329, %bb.de ], [ %storemerge272329, %bb.dg ], [ %i.nk, %Vec_IntPush.exit251.sink.split ] ; 4 uses
  %spec.select.sink.i248326 = phi i32 [ %spec.select.sink.i248327, %bb.de ], [ %spec.select.sink.i248327, %bb.dg ], [ %spec.select.sink.i248326.ph, %Vec_IntPush.exit251.sink.split ] ; 2 uses
  %indvars.iv.next369 = add nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %storemerge272330, i64 %indvars.iv368
  store i32 %i.nb, ptr %i.nl, align 4, !tbaa !34
  %i.nm = add nsw i32 %i.mx, %i.kz
  %i.nn = xor i32 %i.mx, -1
  %i.no = add i32 %i.la, %i.nn
  %.sink440 = select i1 %.not, i32 %i.nm, i32 %i.no
  %i.np = trunc i32 %i.na to i8
  %i.nq = and i8 %i.np, 1
  %i.nr = sub nuw nsw i8 49, %i.nq
  %.val165 = load ptr, ptr %i.kv, align 8, !tbaa !46
  %i.ns = sext i32 %.sink440 to i64
  %i.nt = getelementptr inbounds i8, ptr %.val165, i64 %i.ns
  store i8 %i.nr, ptr %i.nt, align 1, !tbaa !52
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count375
  br i1 %exitcond376.not, label %..critedge2_crit_edge, label %bb.de, !llvm.loop !175

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit251
  %i.nu = trunc nsw i64 %indvars.iv.next369 to i32 ; 2 uses
  store i32 %i.nu, ptr %i.al, align 4, !tbaa !32
  store i32 %spec.select.sink.i248326, ptr %i.ak, align 8
  store ptr %storemerge272330, ptr %i.aq, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %Vec_IntPush.exit243
  %.val163 = phi i32 [ %i.nu, %..critedge2_crit_edge ], [ %.val163.pre, %Vec_IntPush.exit243 ]
  %.val161 = phi ptr [ %storemerge272330, %..critedge2_crit_edge ], [ %.promoted328, %Vec_IntPush.exit243 ] ; 2 uses
  %i.nv = sext i32 %.val163 to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %.val161, i64 %i.nv
  %i.nx = call i32 @sat_solver_addclause(ptr noundef %i.hh, ptr noundef nonnull %.val161, ptr noundef %i.nw) #18
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %.loopexit.sink.split, label %bb.bq

.loopexit.sink.split:                             ; preds = %.critedge2, %bb.bz
  %.4.ph = phi i64 [ %.2, %bb.bz ], [ %.3, %.critedge2 ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv377
  store i32 1, ptr %i.nz, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bq, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3, %bb.bq ]
  %i.oa = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ob = icmp ne i32 %i.oa, 0
  %i.oc = load i32, ptr %i.ce, align 4
  %i.od = icmp ne i32 %i.oc, 0
  %or.cond = select i1 %i.ob, i1 true, i1 %i.od
  br i1 %or.cond, label %.loopexit275, label %bb.di

bb.di:                                            ; preds = %.loopexit
  %i.oe = add nuw nsw i32 %.0138333, 1            ; 3 uses
  %i.of = icmp slt i32 %i.oe, %3
  %i.og = select i1 %i.gy, i1 true, i1 %i.of
  br i1 %i.og, label %.preheader, label %.loopexit275, !llvm.loop !176

.loopexit275:                                     ; preds = %.loopexit, %bb.di, %bb.bz, %bb.cp, %.loopexit280, %Vec_StrPush.exit206, %Vec_StrPush.exit206.1, %Vec_StrPush.exit
  %.1139 = phi i32 [ 0, %Vec_StrPush.exit206.1 ], [ 0, %Vec_StrPush.exit ], [ %.0138333, %bb.bz ], [ %i.fx, %Vec_StrPush.exit206 ], [ %i.bz, %.loopexit280 ], [ %.0138333, %bb.cp ], [ %i.oe, %bb.di ], [ %.0138333, %.loopexit ]
  %i.oh = load ptr, ptr %i.v, align 8, !tbaa !33  ; 2 uses
  %.not.i252 = icmp eq ptr %i.oh, null
  br i1 %.not.i252, label %Vec_IntFree.exit, label %bb.dj

bb.dj:                                            ; preds = %.loopexit275
  call void @free(ptr noundef nonnull %i.oh) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit275, %bb.dj
  call void @free(ptr noundef nonnull %i.p) #18
  %i.oi = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %.not.i253 = icmp eq ptr %i.oi, null
  br i1 %.not.i253, label %Vec_IntFree.exit254, label %bb.dk

bb.dk:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.oi) #18
  br label %Vec_IntFree.exit254

Vec_IntFree.exit254:                              ; preds = %Vec_IntFree.exit, %bb.dk
  call void @free(ptr noundef nonnull %i.w) #18
  %i.oj = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %.not.i255 = icmp eq ptr %i.oj, null
  br i1 %.not.i255, label %Vec_IntFree.exit256, label %bb.dl

bb.dl:                                            ; preds = %Vec_IntFree.exit254
  call void @free(ptr noundef nonnull %i.oj) #18
  br label %Vec_IntFree.exit256

Vec_IntFree.exit256:                              ; preds = %Vec_IntFree.exit254, %bb.dl
  call void @free(ptr noundef nonnull %i.ad) #18
  %i.ok = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %.not.i257 = icmp eq ptr %i.ok, null
  br i1 %.not.i257, label %Vec_IntFree.exit258, label %bb.dm

bb.dm:                                            ; preds = %Vec_IntFree.exit256
  call void @free(ptr noundef nonnull %i.ok) #18
  br label %Vec_IntFree.exit258

Vec_IntFree.exit258:                              ; preds = %Vec_IntFree.exit256, %bb.dm
  call void @free(ptr noundef nonnull %i.ak) #18
  %i.ol = load i32, ptr %i.e, align 8, !tbaa !34
  %i.om = icmp ne i32 %i.ol, 0
  %i.on = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.oo = load i32, ptr %i.on, align 4            ; 2 uses
  %i.op = icmp ne i32 %i.oo, 0
  %or.cond7 = select i1 %i.om, i1 true, i1 %i.op
  br i1 %or.cond7, label %bb.dn, label %.thread

bb.dn:                                            ; preds = %Vec_IntFree.exit258
  %i.oq = sext i32 %i.oo to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oq ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !78 ; 6 uses
  store ptr null, ptr %i.or, align 8, !tbaa !78
  %i.ot = icmp samesign ugt i32 %.1139, 1
  br i1 %i.ot, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ou = getelementptr i8, ptr %i.os, i64 4
  %.val172 = load i32, ptr %i.ou, align 4, !tbaa !57
  %i.ov = add nsw i32 %2, 3
  %i.ow = sdiv i32 %.val172, %i.ov
  %i.ox = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.os, i32 noundef %i.ow, i32 noundef %2) ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %.not155 = icmp eq i32 %7, 0
  br i1 %.not155, label %bb.du, label %bb.dq

.thread:                                          ; preds = %Vec_IntFree.exit258
  %.not155264 = icmp eq i32 %7, 0
  br i1 %.not155264, label %bb.du, label %.thread267

.thread267:                                       ; preds = %.thread
  %i.oy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %2) ; 0 uses
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.oz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %2) ; 0 uses
  %i.pa = icmp eq ptr %i.os, null
  br i1 %i.pa, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.thread267, %bb.dq
  %i.pb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3) ; 0 uses
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.pc = getelementptr i8, ptr %i.os, i64 4
  %.0146.val = load i32, ptr %i.pc, align 4, !tbaa !57
end_hunk_0
