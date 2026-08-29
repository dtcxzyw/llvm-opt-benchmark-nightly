Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z36?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Hyphenate:bb.a
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ga = phi ptr [ %i.fy, %bb.ah ], [ %i.fv, %bb.ai ] ; 12 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store i8 0, ptr %i.gb, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ga, ptr %i.ge, align 8, !tbaa !12
  store ptr %i.ga, ptr %i.ga, align 8, !tbaa !12
  store ptr %i.ga, ptr @xx_link, align 8, !tbaa !35
  store ptr %i.ga, ptr @zz_res, align 8, !tbaa !35
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !35
  %i.gf = load ptr, ptr %i.ds, align 8, !tbaa !12
  store ptr %i.gf, ptr @zz_tmp, align 8, !tbaa !35
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !12
  store ptr %i.gg, ptr %i.ds, align 8, !tbaa !12
  %i.gh = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.gi = load ptr, ptr @zz_res, align 8, !tbaa !35 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !12
  %i.gl = load ptr, ptr @zz_tmp, align 8, !tbaa !35 ; 2 uses
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !12
  %i.gm = load ptr, ptr @zz_res, align 8, !tbaa !35
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !12
  %i.go = load ptr, ptr @xx_link, align 8, !tbaa !35
  store ptr %i.go, ptr @zz_res, align 8, !tbaa !35
  %i.gp = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.m) #11 ; 4 uses
  store ptr %i.gp, ptr @zz_hold, align 8, !tbaa !35
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = load ptr, ptr @zz_res, align 8          ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  %or.cond11 = select i1 %i.gq, i1 true, i1 %i.gs
  br i1 %or.cond11, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !12 ; 3 uses
  store ptr %i.gu, ptr @zz_tmp, align 8, !tbaa !35
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !12 ; 2 uses
  store ptr %i.gw, ptr %i.gt, align 8, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr %i.gp, ptr %i.gx, align 8, !tbaa !12
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store ptr %i.gr, ptr %i.gy, align 8, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i8 0, ptr %i.ax, align 1, !tbaa !12
  call void @FontWordSize(ptr noundef nonnull %.0278) #11
  %i.gz = load ptr, ptr %i.ba, align 8, !tbaa !12
  br label %.thread

bb.am:                                            ; preds = %bb.p
  %i.ha = trunc nuw nsw i64 %indvars.iv431 to i32
  %i.hb = trunc nuw nsw i64 %indvars.iv to i32
  %i.hc = sub nuw nsw i32 %i.ha, %i.hb
  %i.hd = icmp samesign ult i32 %i.hc, 5
  br i1 %i.hd, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not318 = icmp ne i8 %i.aq, 0
  %i.he = icmp eq i8 %i.at, 0
  %or.cond330 = and i1 %.not318, %i.he
  br i1 %or.cond330, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  store i8 1, ptr %i.a, align 16, !tbaa !12
  store i8 48, ptr %i.b, align 16, !tbaa !12
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep, i8 48, i64 %indvar, i1 false), !tbaa !12
  %wide.trip.count = zext i32 %indvars.iv437 to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.hf = add i32 %indvars.iv437, -1
  %i.hg = icmp ult i32 %i.hf, 3
  br i1 %i.hg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv434 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next435.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv434
  %i.hh = load i8, ptr %gep, align 1, !tbaa !12
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !12
  %indvars.iv.next435 = or disjoint i64 %indvars.iv434, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !12
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435
  %i.hm = load i8, ptr %gep.1, align 1, !tbaa !12
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !12
  %indvars.iv.next435.1 = or disjoint i64 %indvars.iv434, 2 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.1
  store i8 %i.hp, ptr %i.hq, align 2, !tbaa !12
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435.1
  %i.hr = load i8, ptr %gep.2, align 1, !tbaa !12
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !12
  %indvars.iv.next435.2 = or disjoint i64 %indvars.iv434, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.2
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !12
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435.2
  %i.hw = load i8, ptr %gep.3, align 1, !tbaa !12
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !12
  %indvars.iv.next435.3 = add nuw nsw i64 %indvars.iv434, 4 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.3
  store i8 %i.hz, ptr %i.ia, align 4, !tbaa !12
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !37

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv434.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next435.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod570 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod570)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv434.epil = phi i64 [ %indvars.iv434.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next435.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv434.epil
  %i.ib = load i8, ptr %gep.epil, align 1, !tbaa !12
  %i.ic = zext i8 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !12
  %indvars.iv.next435.epil = add nuw nsw i64 %indvars.iv434.epil, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.epil
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ig = zext nneg i32 %indvars.iv.next438 to i64 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ig
  store i8 1, ptr %i.ih, align 1, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ig
  store i8 48, ptr %i.ii, align 1, !tbaa !12
  %i.ij = add nuw nsw i32 %indvars.iv437, 2
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !12
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ik
  store i8 48, ptr %i.im, align 1, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %wide.trip.count
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  store i8 0, ptr %i.io, align 1, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.1277, i64 264 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1277, i64 280 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit338, %._crit_edge
  %.0275 = phi ptr [ %i.a, %._crit_edge ], [ %i.lf, %.loopexit338 ] ; 4 uses
  %i.ir = ptrtoint ptr %.0275 to i64
  %i.is = sub i64 %i.ir, %i.j
  %i.it = getelementptr inbounds i8, ptr %i.b, i64 %i.is ; 2 uses
  %.pre = load ptr, ptr %i.ip, align 8, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ba, %bb.ao
  %i.iu = phi ptr [ %.pre, %bb.ao ], [ %i.jw, %bb.ba ]
  %.0273 = phi ptr [ %.0275, %bb.ao ], [ %i.le, %bb.ba ] ; 3 uses
  %.0262 = phi i32 [ 0, %bb.ao ], [ %i.ld, %bb.ba ] ; 2 uses
  %i.iv = zext nneg i32 %.0262 to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !40 ; 2 uses
  %i.iy = icmp slt i16 %i.ix, 0
  br i1 %i.iy, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.iz = sext i16 %i.ix to i64
  %i.ja = load ptr, ptr %i.iq, align 8, !tbaa !21
  %i.jb = sub nsw i64 0, %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !12  ; 2 uses
  %.not319361 = icmp eq i8 %i.jd, 0
  br i1 %.not319361, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.aq, %._crit_edge359
  %i.je = phi i8 [ %i.jl, %._crit_edge359 ], [ %i.jd, %bb.aq ] ; 2 uses
  %.0257363 = phi ptr [ %i.jj, %._crit_edge359 ], [ %i.c, %bb.aq ] ; 3 uses
  %.0259362 = phi ptr [ %i.jk, %._crit_edge359 ], [ %i.jc, %bb.aq ]
  %i.jf = lshr i8 %i.je, 4                        ; 2 uses
  %i.jg = and i8 %i.je, 15
  %.not414 = icmp eq i8 %i.jf, 0
  br i1 %.not414, label %._crit_edge359, label %.lr.ph358.preheader

.lr.ph358.preheader:                              ; preds = %.lr.ph365
  %i.jh = zext nneg i8 %i.jf to i64
  %1 = add nuw nsw i64 %i.jh, 4294967295
  %2 = and i64 %1, 4294967295                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0257363, i8 48, i64 %3, i1 false), !tbaa !12
  %scevgep439 = getelementptr i8, ptr %.0257363, i64 1
  %scevgep440 = getelementptr i8, ptr %scevgep439, i64 %2
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %.lr.ph358.preheader, %.lr.ph365
  %.1258.lcssa = phi ptr [ %.0257363, %.lr.ph365 ], [ %scevgep440, %.lr.ph358.preheader ] ; 2 uses
  %i.ji = add nuw nsw i8 %i.jg, 46
  %i.jj = getelementptr inbounds nuw i8, ptr %.1258.lcssa, i64 1 ; 2 uses
  store i8 %i.ji, ptr %.1258.lcssa, align 1, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.0259362, i64 1 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !12  ; 2 uses
  %.not319 = icmp eq i8 %i.jl, 0
  br i1 %.not319, label %._crit_edge366, label %.lr.ph365, !llvm.loop !42

._crit_edge366:                                   ; preds = %._crit_edge359, %bb.aq
  %.0257.lcssa = phi ptr [ %i.c, %bb.aq ], [ %i.jj, %._crit_edge359 ]
  store i8 0, ptr %.0257.lcssa, align 1, !tbaa !12
  %i.jm = load i8, ptr %i.c, align 16, !tbaa !12  ; 2 uses
  %.not320368 = icmp eq i8 %i.jm, 0
  br i1 %.not320368, label %.loopexit, label %.lr.ph372

.lr.ph372:                                        ; preds = %._crit_edge366, %bb.as
  %i.jn = phi i8 [ %i.js, %bb.as ], [ %i.jm, %._crit_edge366 ] ; 2 uses
  %.0254370 = phi ptr [ %i.jr, %bb.as ], [ %i.it, %._crit_edge366 ] ; 3 uses
  %.0255369 = phi ptr [ %i.jq, %bb.as ], [ %i.c, %._crit_edge366 ]
  %i.jo = load i8, ptr %.0254370, align 1, !tbaa !12
  %i.jp = icmp ugt i8 %i.jn, %i.jo
  br i1 %i.jp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph372
  store i8 %i.jn, ptr %.0254370, align 1, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph372
  %i.jq = getelementptr inbounds nuw i8, ptr %.0255369, i64 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0254370, i64 1
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !12  ; 2 uses
  %.not320 = icmp eq i8 %i.js, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph372, !llvm.loop !43

.loopexit:                                        ; preds = %bb.as, %._crit_edge366, %bb.ap
  %i.jt = load i8, ptr %.0273, align 1, !tbaa !12 ; 2 uses
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %.loopexit338, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.jv = zext i8 %i.jt to i32
  %i.jw = load ptr, ptr %i.ip, align 8, !tbaa !18 ; 2 uses
  %i.jx = add nuw nsw i32 %.0262, %i.jv
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !40 ; 3 uses
  %i.kb = sext i16 %i.ka to i32                   ; 2 uses
  %i.kc = icmp eq i16 %i.ka, 0
  br i1 %i.kc, label %.loopexit338, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kd = icmp slt i16 %i.ka, 0
  br i1 %i.kd, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ke = load ptr, ptr %i.iq, align 8, !tbaa !21
  %i.kf = sub nsw i32 0, %i.kb
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %bb.av
  %.1274 = phi ptr [ %.0273, %bb.av ], [ %i.kz, %bb.az ]
  %.0271 = phi ptr [ %i.kh, %bb.av ], [ %i.lb, %bb.az ] ; 3 uses
  %i.ki = load i8, ptr %.0271, align 1, !tbaa !12 ; 2 uses
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %.preheader339, label %bb.az

.preheader339:                                    ; preds = %bb.aw
  %.0253379 = getelementptr inbounds nuw i8, ptr %.0271, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.0253379, align 1, !tbaa !12 ; 2 uses
  %.not321380 = icmp eq i8 %i.kk, 0
  br i1 %.not321380, label %._crit_edge384, label %.lr.ph383

.lr.ph383:                                        ; preds = %.preheader339, %._crit_edge377
  %i.kl = phi i8 [ %i.kr, %._crit_edge377 ], [ %i.kk, %.preheader339 ] ; 2 uses
  %.0253382 = phi ptr [ %.0253, %._crit_edge377 ], [ %.0253379, %.preheader339 ]
  %.0252381 = phi ptr [ %i.kq, %._crit_edge377 ], [ %i.c, %.preheader339 ] ; 3 uses
  %i.km = lshr i8 %i.kl, 4                        ; 2 uses
  %i.kn = and i8 %i.kl, 15
  %.not415 = icmp eq i8 %i.km, 0
  br i1 %.not415, label %._crit_edge377, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %.lr.ph383
  %i.ko = zext nneg i8 %i.km to i64
  %4 = add nuw nsw i64 %i.ko, 4294967295
  %5 = and i64 %4, 4294967295                     ; 2 uses
  %6 = add nuw nsw i64 %5, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0252381, i8 48, i64 %6, i1 false), !tbaa !12
  %scevgep441 = getelementptr i8, ptr %.0252381, i64 1
  %scevgep442 = getelementptr i8, ptr %scevgep441, i64 %5
  br label %._crit_edge377

._crit_edge377:                                   ; preds = %.lr.ph376.preheader, %.lr.ph383
  %.1.lcssa = phi ptr [ %.0252381, %.lr.ph383 ], [ %scevgep442, %.lr.ph376.preheader ] ; 2 uses
  %i.kp = add nuw nsw i8 %i.kn, 46
  %i.kq = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 2 uses
  store i8 %i.kp, ptr %.1.lcssa, align 1, !tbaa !12
  %.0253 = getelementptr inbounds nuw i8, ptr %.0253382, i64 1 ; 2 uses
  %i.kr = load i8, ptr %.0253, align 1, !tbaa !12 ; 2 uses
  %.not321 = icmp eq i8 %i.kr, 0
  br i1 %.not321, label %._crit_edge384, label %.lr.ph383, !llvm.loop !44

._crit_edge384:                                   ; preds = %._crit_edge377, %.preheader339
  %.0252.lcssa = phi ptr [ %i.c, %.preheader339 ], [ %i.kq, %._crit_edge377 ]
  store i8 0, ptr %.0252.lcssa, align 1, !tbaa !12
  %i.ks = load i8, ptr %i.c, align 16, !tbaa !12  ; 2 uses
  %.not322386 = icmp eq i8 %i.ks, 0
  br i1 %.not322386, label %.loopexit338, label %.lr.ph390

.lr.ph390:                                        ; preds = %._crit_edge384, %bb.ay
  %i.kt = phi i8 [ %i.ky, %bb.ay ], [ %i.ks, %._crit_edge384 ] ; 2 uses
  %.0388 = phi ptr [ %i.kx, %bb.ay ], [ %i.it, %._crit_edge384 ] ; 3 uses
  %.0250387 = phi ptr [ %i.kw, %bb.ay ], [ %i.c, %._crit_edge384 ]
  %i.ku = load i8, ptr %.0388, align 1, !tbaa !12
  %i.kv = icmp ugt i8 %i.kt, %i.ku
  br i1 %i.kv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph390
  store i8 %i.kt, ptr %.0388, align 1, !tbaa !12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph390
  %i.kw = getelementptr inbounds nuw i8, ptr %.0250387, i64 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.0388, i64 1
  %i.ky = load i8, ptr %i.kw, align 1, !tbaa !12  ; 2 uses
  %.not322 = icmp eq i8 %i.ky, 0
  br i1 %.not322, label %.loopexit338, label %.lr.ph390, !llvm.loop !45

bb.az:                                            ; preds = %bb.aw
  %i.kz = getelementptr inbounds nuw i8, ptr %.1274, i64 1 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %.0271, i64 1
  %i.lc = icmp eq i8 %i.la, %i.ki
  br i1 %i.lc, label %bb.aw, label %.loopexit338, !llvm.loop !46

bb.ba:                                            ; preds = %bb.au
  %i.ld = shl nuw nsw i32 %i.kb, 2
  %i.le = getelementptr inbounds nuw i8, ptr %.0273, i64 1
  br label %bb.ap

.loopexit338:                                     ; preds = %.loopexit, %bb.at, %bb.az, %bb.ay, %._crit_edge384
  %i.lf = getelementptr inbounds nuw i8, ptr %.0275, i64 1
  %i.lg = getelementptr inbounds nuw i8, ptr %.0275, i64 2
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !12
  %.not323 = icmp eq i8 %i.lh, 1
  br i1 %.not323, label %bb.bb, label %bb.ao, !llvm.loop !47

bb.bb:                                            ; preds = %.loopexit338
  %i.li = load ptr, ptr @finfo, align 8, !tbaa !48
  %i.lj = load i32, ptr %i.q, align 8
  %i.lk = and i32 %i.lj, 4095
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [96 x i8], ptr %i.li, i64 %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !50 ; 2 uses
  %i.lp = load i8, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %.not324394 = icmp eq i8 %i.lp, 0
  br i1 %.not324394, label %.lr.ph406.preheader, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.bb, %.loopexit337
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %.loopexit337 ], [ 2, %bb.bb ] ; 2 uses
  %i.lq = phi i8 [ %i.mn, %.loopexit337 ], [ %i.lp, %bb.bb ] ; 3 uses
  %.0272395 = phi ptr [ %i.mm, %.loopexit337 ], [ %i.n, %bb.bb ] ; 2 uses
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !12  ; 2 uses
  %i.lu = icmp ugt i8 %i.lt, 1
  br i1 %i.lu, label %bb.bc, label %.loopexit337

bb.bc:                                            ; preds = %.lr.ph400
  %i.lv = zext i8 %i.lt to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 256 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !12
  %i.lz = icmp eq i8 %i.ly, %i.lq
  br i1 %i.lz, label %.lr.ph393, label %.loopexit337

.lr.ph393:                                        ; preds = %bb.bc, %.preheader.preheader
  %.0268391 = phi ptr [ %i.mi, %.preheader.preheader ], [ %i.lx, %bb.bc ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0268391, i64 1 ; 2 uses
  %.pre453 = load i8, ptr %i.ma, align 1, !tbaa !12
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %.lr.ph393
  %i.mb = phi i8 [ %i.mf, %bb.be ], [ %.pre453, %.lr.ph393 ] ; 2 uses
  %indvar443 = phi i64 [ %indvar.next444, %bb.be ], [ 0, %.lr.ph393 ] ; 2 uses
  %.1269 = phi ptr [ %i.me, %bb.be ], [ %i.ma, %.lr.ph393 ] ; 2 uses
  %.0272.pn = phi ptr [ %.0267, %bb.be ], [ %.0272395, %.lr.ph393 ]
  %.0267 = getelementptr inbounds nuw i8, ptr %.0272.pn, i64 1 ; 2 uses
  %i.mc = load i8, ptr %.0267, align 1, !tbaa !12
  %i.md = icmp eq i8 %i.mb, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %.1269, i64 1 ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !12  ; 3 uses
  br i1 %i.md, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %.not327 = icmp eq i8 %i.mf, 0
  %.not328 = icmp eq i8 %i.mb, 0
  %or.cond331 = or i1 %.not328, %.not327
  %indvar.next444 = add i64 %indvar443, 1
  br i1 %or.cond331, label %.critedge, label %bb.bd, !llvm.loop !54

.critedge:                                        ; preds = %bb.be, %bb.bd
  %i.mg = icmp eq i8 %i.mf, 0
  br i1 %i.mg, label %bb.bf, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.mh = getelementptr i8, ptr %.0268391, i64 %indvar443
  %scevgep445 = getelementptr i8, ptr %i.mh, i64 2
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep445)
  %scevgep446 = getelementptr i8, ptr %.1269, i64 %strlen
  %i.mi = getelementptr inbounds nuw i8, ptr %scevgep446, i64 2 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !12
  %i.mk = icmp eq i8 %i.mj, %i.lq
  br i1 %i.mk, label %.lr.ph393, label %.loopexit337, !llvm.loop !55

bb.bf:                                            ; preds = %.critedge
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv447
  store i8 48, ptr %i.ml, align 1, !tbaa !12
  br label %.loopexit337

.loopexit337:                                     ; preds = %.preheader.preheader, %bb.bc, %.lr.ph400, %bb.bf
  %i.mm = getelementptr inbounds nuw i8, ptr %.0272395, i64 1 ; 2 uses
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !12  ; 2 uses
  %.not324 = icmp eq i8 %i.mn, 0
  br i1 %.not324, label %.lr.ph406.preheader, label %.lr.ph400, !llvm.loop !56

.lr.ph406.preheader:                              ; preds = %.loopexit337, %bb.bb
  %i.mo = getelementptr inbounds nuw i8, ptr %.0279412, i64 8 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !12
  %i.mq = sext i32 %indvars.iv437 to i64
  %invariant.gep536 = getelementptr i8, ptr %i.n, i64 %indvars.iv
  br label %.lr.ph406.outer

.lr.ph406.outer:                                  ; preds = %.thread509, %.lr.ph406.preheader
  %indvars.iv450.ph = phi i64 [ %indvars.iv.next451, %.thread509 ], [ %i.mq, %.lr.ph406.preheader ]
  %.not325 = phi i1 [ false, %.thread509 ], [ true, %.lr.ph406.preheader ]
  br label %.lr.ph406

.lr.ph406:                                        ; preds = %.lr.ph406.outer, %bb.ca
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %bb.ca ], [ %indvars.iv450.ph, %.lr.ph406.outer ] ; 3 uses
  %indvars.iv.next451 = add nsw i64 %indvars.iv450, -1 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next451
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !12
  %i.mt = and i8 %i.ms, 1
  %.not326 = icmp eq i8 %i.mt, 0
  br i1 %.not326, label %bb.ca, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph406
  %gep537 = getelementptr i8, ptr %invariant.gep536, i64 %indvars.iv.next451
  %i.mu = getelementptr i8, ptr %gep537, i64 -1   ; 2 uses
  %i.mv = call ptr @MakeWord(i32 noundef 11, ptr noundef %i.mu, ptr noundef nonnull %i.m) #11 ; 6 uses
  %i.mw = load i32, ptr %i.q, align 8
  %i.mx = and i32 %i.mw, 4095
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 40 ; 7 uses
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = and i32 %i.mz, -4096
  %i.nb = or disjoint i32 %i.na, %i.mx            ; 2 uses
  store i32 %i.nb, ptr %i.my, align 8
  %i.nc = load i32, ptr %i.q, align 8
  %i.nd = and i32 %i.nc, 4190208
  %i.ne = and i32 %i.nb, -4190209
  %i.nf = or disjoint i32 %i.ne, %i.nd            ; 2 uses
  store i32 %i.nf, ptr %i.my, align 8
  %i.ng = load i32, ptr %i.q, align 8
  %i.nh = and i32 %i.ng, 4194304
  %i.ni = and i32 %i.nf, -4194305
  %i.nj = or disjoint i32 %i.ni, %i.nh            ; 2 uses
  store i32 %i.nj, ptr %i.my, align 8
  %i.nk = load i32, ptr %i.q, align 8
  %i.nl = and i32 %i.nk, 528482304
  %i.nm = and i32 %i.nj, -528482305
  %i.nn = or disjoint i32 %i.nm, %i.nl            ; 2 uses
  store i32 %i.nn, ptr %i.my, align 8
  %i.no = load i32, ptr %i.q, align 8
  %i.np = and i32 %i.no, -2147483648
  %i.nq = and i32 %i.nn, 2147483647
  %i.nr = or disjoint i32 %i.nq, %i.np            ; 2 uses
  store i32 %i.nr, ptr %i.my, align 8
  %i.ns = load i32, ptr %i.q, align 8
  %i.nt = and i32 %i.ns, 1610612736
  %i.nu = and i32 %i.nr, -1610612737
  %i.nv = or disjoint i32 %i.nu, %i.nt
  store i32 %i.nv, ptr %i.my, align 8
  call void @FontWordSize(ptr noundef %i.mv) #11
  %i.nw = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.nx = zext i8 %i.nw to i32                    ; 2 uses
  store i32 %i.nx, ptr @zz_size, align 4, !tbaa !4
  %i.ny = zext i8 %i.nw to i64
end_hunk_0
