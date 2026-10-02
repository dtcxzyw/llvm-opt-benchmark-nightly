Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_grid?download=true
inline.NumInlined: 81
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@grid_update:bb.a
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !tbaa !55
  %wide.load100 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !55
  %i.gt = add <4 x i32> %vec.phi, %broadcast.splat
  %i.gu = add <4 x i32> %vec.phi99, %broadcast.splat
  %i.gv = add <4 x i32> %i.gt, %wide.load         ; 2 uses
  %i.gw = add <4 x i32> %i.gu, %wide.load100      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gw, %i.gv
  %i.gy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.06676.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gy, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.06676.i = phi i32 [ %i.hc, %.lr.ph.i ], [ %.06676.i.ph, %.lr.ph.i.preheader ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !55
  %i.hb = add i32 %.06676.i, %.068.i
  %i.hc = add i32 %i.hb, %i.ha                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.aq
  %.066.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.gy, %middle.block ], [ %i.hc, %.lr.ph.i ]
  %i.hd = sub nsw i32 %.066.lcssa.i, %.068.i      ; 5 uses
  switch i32 %.067.i, label %._crit_edge._crit_edge.i [
    i32 0, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 6, label %bb.au
    i32 5, label %bb.av
    i32 4, label %bb.aw
  ]

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre97.pre.i = load i32, ptr %i.dh, align 4, !tbaa !55
  br label %bb.ax

bb.ar:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.dh, align 4, !tbaa !55
  br label %bb.ax

bb.as:                                            ; preds = %._crit_edge.i
  %i.he = sub nsw i32 %i.gk, %i.hd
  %i.hf = sdiv i32 %i.he, 2                       ; 2 uses
  store i32 %i.hf, ptr %i.dh, align 4, !tbaa !55
  br label %bb.ax

bb.at:                                            ; preds = %._crit_edge.i
  %i.hg = sub nsw i32 %i.gk, %i.hd                ; 2 uses
  store i32 %i.hg, ptr %i.dh, align 4, !tbaa !55
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.dh, align 4, !tbaa !55
  %i.hh = sub nsw i32 %i.gk, %i.hd
  %i.hi = add i32 %i.ev, -1
  %i.hj = sdiv i32 %i.hh, %i.hi
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge.i
  %i.hk = sub nsw i32 %i.gk, %i.hd
  %i.hl = sdiv i32 %i.hk, %i.ev                   ; 2 uses
  %i.hm = sdiv i32 %i.hl, 2                       ; 2 uses
  store i32 %i.hm, ptr %i.dh, align 4, !tbaa !55
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i
  %i.hn = sub nsw i32 %i.gk, %i.hd
  %i.ho = add i32 %i.ev, 1
  %i.hp = sdiv i32 %i.hn, %i.ho                   ; 3 uses
  store i32 %i.hp, ptr %i.dh, align 4, !tbaa !55
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %._crit_edge._crit_edge.i, %bb.ap
  %.pre97.i = phi i32 [ 0, %bb.ap ], [ %.pre97.pre.i, %._crit_edge._crit_edge.i ], [ 0, %bb.ar ], [ %i.hf, %bb.as ], [ %i.hg, %bb.at ], [ 0, %bb.au ], [ %i.hm, %bb.av ], [ %i.hp, %bb.aw ] ; 4 uses
  %.169.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i, %bb.ap ], [ %.068.i, %._crit_edge._crit_edge.i ], [ %.068.i, %bb.ar ], [ %.068.i, %bb.as ], [ %.068.i, %bb.at ], [ %i.hj, %bb.au ], [ %i.hl, %bb.av ], [ %i.hp, %bb.aw ] ; 5 uses
  %i.hq = add i32 %i.ev, -1                       ; 3 uses
  %.not85.i = icmp eq i32 %i.hq, 0
  br i1 %.not85.i, label %._crit_edge81.i, label %.lr.ph80.preheader.i

.lr.ph80.preheader.i:                             ; preds = %bb.ax
  %wide.trip.count90.i = zext i32 %i.hq to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count90.i, 3     ; 3 uses
  %i.hr = icmp ult i32 %i.hq, 4
  br i1 %i.hr, label %.lr.ph80.i.epil.preheader, label %.lr.ph80.preheader.i.new

.lr.ph80.preheader.i.new:                         ; preds = %.lr.ph80.preheader.i
  %unroll_iter = and i64 %wide.trip.count90.i, 4294967292
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.lr.ph80.i, %.lr.ph80.preheader.i.new
  %i.hs = phi i32 [ %.pre97.i, %.lr.ph80.preheader.i.new ], [ %i.il, %.lr.ph80.i ]
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph80.preheader.i.new ], [ %indvars.iv.next88.i.3, %.lr.ph80.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph80.preheader.i.new ], [ %niter.next.3, %.lr.ph80.i ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv87.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !55
  %i.hv = add i32 %i.hs, %.169.i
  %i.hw = add i32 %i.hv, %i.hu                    ; 2 uses
  %indvars.iv.next88.i = or disjoint i64 %indvars.iv87.i, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !55
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next88.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !55
  %i.ia = add i32 %i.hw, %.169.i
  %i.ib = add i32 %i.ia, %i.hz                    ; 2 uses
  %indvars.iv.next88.i.1 = or disjoint i64 %indvars.iv87.i, 2 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.1
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !55
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next88.i.1
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !55
  %i.if = add i32 %i.ib, %.169.i
  %i.ig = add i32 %i.if, %i.ie                    ; 2 uses
  %indvars.iv.next88.i.2 = or disjoint i64 %indvars.iv87.i, 3 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.2
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !55
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next88.i.2
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !55
  %i.ik = add i32 %i.ig, %.169.i
  %i.il = add i32 %i.ik, %i.ij                    ; 3 uses
  %indvars.iv.next88.i.3 = add nuw nsw i64 %indvars.iv87.i, 4 ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.3
  store i32 %i.il, ptr %i.im, align 4, !tbaa !55
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge81.i.loopexit.unr-lcssa, label %.lr.ph80.i, !llvm.loop !44

._crit_edge81.i.loopexit.unr-lcssa:               ; preds = %.lr.ph80.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge81.i.loopexit, label %.lr.ph80.i.epil.preheader

.lr.ph80.i.epil.preheader:                        ; preds = %._crit_edge81.i.loopexit.unr-lcssa, %.lr.ph80.preheader.i
  %.epil.init = phi i32 [ %.pre97.i, %.lr.ph80.preheader.i ], [ %i.il, %._crit_edge81.i.loopexit.unr-lcssa ]
  %indvars.iv87.i.epil.init = phi i64 [ 0, %.lr.ph80.preheader.i ], [ %indvars.iv.next88.i.3, %._crit_edge81.i.loopexit.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph80.i.epil

.lr.ph80.i.epil:                                  ; preds = %.lr.ph80.i.epil, %.lr.ph80.i.epil.preheader
  %i.in = phi i32 [ %.epil.init, %.lr.ph80.i.epil.preheader ], [ %i.ir, %.lr.ph80.i.epil ]
  %indvars.iv87.i.epil = phi i64 [ %indvars.iv87.i.epil.init, %.lr.ph80.i.epil.preheader ], [ %indvars.iv.next88.i.epil, %.lr.ph80.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph80.i.epil.preheader ], [ %epil.iter.next, %.lr.ph80.i.epil ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv87.i.epil
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !55
  %i.iq = add i32 %i.in, %.169.i
  %i.ir = add i32 %i.iq, %i.ip                    ; 2 uses
  %indvars.iv.next88.i.epil = add nuw nsw i64 %indvars.iv87.i.epil, 1 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next88.i.epil
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !55
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge81.i.loopexit, label %.lr.ph80.i.epil, !llvm.loop !45

._crit_edge81.i.loopexit:                         ; preds = %.lr.ph80.i.epil, %._crit_edge81.i.loopexit.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %wide.trip.count90.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !55
  br label %._crit_edge81.i

._crit_edge81.i:                                  ; preds = %._crit_edge81.i.loopexit, %bb.ax
  %i.it = phi i32 [ %.pre97.i, %bb.ax ], [ %.pre, %._crit_edge81.i.loopexit ]
  %.pre-phi.i = phi i64 [ 0, %bb.ax ], [ %wide.trip.count90.i, %._crit_edge81.i.loopexit ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.pre-phi.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !55
  %or.cond.i33 = and i1 %i.fz, %i.ex
  br i1 %or.cond.i33, label %.lr.ph84.preheader.i, label %grid_align.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge81.i
  %wide.trip.count95.i = zext i32 %i.ev to i64    ; 6 uses
  %min.iters.check103 = icmp ult i32 %i.ev, 8
  br i1 %min.iters.check103, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %i.iw = shl nuw nsw i64 %wide.trip.count95.i, 2 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.dh, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.gm, i64 %i.iw
  %bound0 = icmp ult ptr %i.dh, %i.iy
  %bound1 = icmp ult ptr %i.gm, %i.ix
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck
  %n.vec105 = and i64 %wide.trip.count95.i, 4294967288 ; 3 uses
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.gk, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph104
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next114, %vector.body108 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index109 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !55, !alias.scope !68, !noalias !69
  %wide.load111 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !55, !alias.scope !68, !noalias !69
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index109 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load112 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !55, !alias.scope !69
  %wide.load113 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !55, !alias.scope !69
  %i.jd = add <4 x i32> %wide.load110, %wide.load112
  %i.je = add <4 x i32> %wide.load111, %wide.load113
  %i.jf = sub <4 x i32> %broadcast.splat107, %i.jd
  %i.jg = sub <4 x i32> %broadcast.splat107, %i.je
  store <4 x i32> %i.jf, ptr %i.iz, align 4, !tbaa !55, !alias.scope !68, !noalias !69
  store <4 x i32> %i.jg, ptr %i.ja, align 4, !tbaa !55, !alias.scope !68, !noalias !69
  %index.next114 = add nuw i64 %index109, 8       ; 2 uses
  %i.jh = icmp eq i64 %index.next114, %n.vec105
  br i1 %i.jh, label %middle.block115, label %vector.body108, !llvm.loop !49

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %n.vec105, %wide.trip.count95.i
  br i1 %cmp.n116, label %grid_align.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block115
  %indvars.iv92.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec105, %middle.block115 ] ; 5 uses
  %xtraiter146 = and i64 %wide.trip.count95.i, 1
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph84.i.prol.loopexit, label %.lr.ph84.i.prol

.lr.ph84.i.prol:                                  ; preds = %.lr.ph84.i.preheader
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv92.i.ph ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !55
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv92.i.ph
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !55
  %i.jm = add i32 %i.jj, %i.jl
  %i.jn = sub i32 %i.gk, %i.jm
  store i32 %i.jn, ptr %i.ji, align 4, !tbaa !55
  %indvars.iv.next93.i.prol = or disjoint i64 %indvars.iv92.i.ph, 1
  br label %.lr.ph84.i.prol.loopexit

.lr.ph84.i.prol.loopexit:                         ; preds = %.lr.ph84.i.prol, %.lr.ph84.i.preheader
  %indvars.iv92.i.unr = phi i64 [ %indvars.iv92.i.ph, %.lr.ph84.i.preheader ], [ %indvars.iv.next93.i.prol, %.lr.ph84.i.prol ]
  %i.jo = add nsw i64 %wide.trip.count95.i, -1
  %i.jp = icmp eq i64 %indvars.iv92.i.ph, %i.jo
  br i1 %i.jp, label %grid_align.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i.1, %.lr.ph84.i ], [ %indvars.iv92.i.unr, %.lr.ph84.i.prol.loopexit ] ; 4 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv92.i ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !55
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv92.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !55
  %i.ju = add i32 %i.jr, %i.jt
  %i.jv = sub i32 %i.gk, %i.ju
  store i32 %i.jv, ptr %i.jq, align 4, !tbaa !55
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next93.i ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !55
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next93.i
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !55
  %i.ka = add i32 %i.jx, %i.jz
  %i.kb = sub i32 %i.gk, %i.ka
  store i32 %i.kb, ptr %i.jw, align 4, !tbaa !55
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %exitcond96.not.i.1 = icmp eq i64 %indvars.iv.next93.i.1, %wide.trip.count95.i
  br i1 %exitcond96.not.i.1, label %grid_align.exit, label %.lr.ph84.i, !llvm.loop !50

grid_align.exit:                                  ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i, %middle.block115, %._crit_edge81.i
  %i.kc = sub i32 %i.it, %.pre97.i
  %i.kd = add i32 %i.kc, %i.iv
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.kd, ptr %i.ke, align 8, !tbaa !70
  %i.kf = and i64 %i.gd, 4294967295
  %i.kg = icmp eq i64 %i.kf, 1073741823
  br i1 %i.kg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %grid_align.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.ki = load i32, ptr %i.kh, align 2
  %i.kj = and i32 %i.ki, 1024
  %.not34.i = icmp eq i32 %i.kj, 0
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %grid_align.exit
  %i.kk = phi i1 [ false, %grid_align.exit ], [ %.not34.i, %bb.ay ]
  %i.kl = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8 ; 5 uses
  %i.km = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -87) #8
  %i.kn = load i32, ptr %i.w, align 4, !tbaa !59  ; 8 uses
  %i.ko = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 9 uses
  br i1 %i.kk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.bb:                                            ; preds = %bb.az
  %i.kp = ptrtoint ptr %i.km to i64
  %.sroa.0.0.extract.trunc.i.i61.i = trunc i64 %i.kp to i32 ; 2 uses
  %i.kq = add i32 %.sroa.0.0.extract.trunc.i.i61.i, -4
  %or.cond3.i.i = icmp ult i32 %i.kq, 3           ; 2 uses
  %i.kr = icmp eq i32 %i.kn, 1
  %.068.i.i = select i1 %or.cond3.i.i, i32 0, i32 %.sroa.0.0.extract.trunc.i56.i ; 7 uses
  %i.ks = and i1 %i.kr, %or.cond3.i.i
  %.067.i.i = select i1 %i.ks, i32 1, i32 %.sroa.0.0.extract.trunc.i.i61.i
  %.not.i62.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i62.i, label %._crit_edge.i66.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bb
  %wide.trip.count.i.i = zext i32 %i.kn to i64    ; 3 uses
  %min.iters.check119 = icmp ult i32 %i.kn, 8
  br i1 %min.iters.check119, label %.lr.ph.i63.i.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec121 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert122 = insertelement <4 x i32> poison, i32 %.068.i.i, i64 0
  %broadcast.splat123 = shufflevector <4 x i32> %broadcast.splatinsert122, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph120
  %index125 = phi i64 [ 0, %vector.ph120 ], [ %index.next130, %vector.body124 ] ; 2 uses
  %vec.phi126 = phi <4 x i32> [ zeroinitializer, %vector.ph120 ], [ %i.kx, %vector.body124 ]
  %vec.phi127 = phi <4 x i32> [ zeroinitializer, %vector.ph120 ], [ %i.ky, %vector.body124 ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %index125 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load128 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !55
  %wide.load129 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !55
  %i.kv = add <4 x i32> %vec.phi126, %broadcast.splat123
  %i.kw = add <4 x i32> %vec.phi127, %broadcast.splat123
  %i.kx = add <4 x i32> %i.kv, %wide.load128      ; 2 uses
  %i.ky = add <4 x i32> %i.kw, %wide.load129      ; 2 uses
  %index.next130 = add nuw i64 %index125, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next130, %n.vec121
  br i1 %i.kz, label %middle.block131, label %vector.body124, !llvm.loop !51

middle.block131:                                  ; preds = %vector.body124
  %bin.rdx132 = add <4 x i32> %i.ky, %i.kx
  %i.la = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx132) ; 2 uses
  %cmp.n133 = icmp eq i64 %n.vec121, %wide.trip.count.i.i
  br i1 %cmp.n133, label %._crit_edge.i66.i, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block131
  %indvars.iv.i64.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec121, %middle.block131 ]
  %.06676.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.la, %middle.block131 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader, %.lr.ph.i63.i
  %indvars.iv.i64.i = phi i64 [ %indvars.iv.next.i65.i, %.lr.ph.i63.i ], [ %indvars.iv.i64.i.ph, %.lr.ph.i63.i.preheader ] ; 2 uses
  %.06676.i.i = phi i32 [ %i.le, %.lr.ph.i63.i ], [ %.06676.i.i.ph, %.lr.ph.i63.i.preheader ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.i64.i
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !55
  %i.ld = add i32 %.06676.i.i, %.068.i.i
  %i.le = add i32 %i.ld, %i.lc                    ; 2 uses
  %indvars.iv.next.i65.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i65.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i66.i, label %.lr.ph.i63.i, !llvm.loop !52

._crit_edge.i66.i:                                ; preds = %.lr.ph.i63.i, %middle.block131, %bb.bb
  %.066.lcssa.i.i = phi i32 [ 0, %bb.bb ], [ %i.la, %middle.block131 ], [ %i.le, %.lr.ph.i63.i ]
  %i.lf = sub nsw i32 %.066.lcssa.i.i, %.068.i.i  ; 5 uses
  switch i32 %.067.i.i, label %._crit_edge._crit_edge.i.i [
    i32 0, label %bb.bc
    i32 1, label %bb.bd
    i32 2, label %bb.be
    i32 6, label %bb.bf
    i32 5, label %bb.bg
    i32 4, label %bb.bh
  ]

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i66.i
  %.pre97.pre.i.i = load i32, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.bc:                                            ; preds = %._crit_edge.i66.i
  store i32 0, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.bd:                                            ; preds = %._crit_edge.i66.i
  %i.lg = sub nsw i32 %i.kl, %i.lf
  %i.lh = sdiv i32 %i.lg, 2                       ; 2 uses
  store i32 %i.lh, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.be:                                            ; preds = %._crit_edge.i66.i
  %i.li = sub nsw i32 %i.kl, %i.lf                ; 2 uses
  store i32 %i.li, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.bf:                                            ; preds = %._crit_edge.i66.i
  store i32 0, ptr %i.y, align 4, !tbaa !55
  %i.lj = sub nsw i32 %i.kl, %i.lf
  %i.lk = add i32 %i.kn, -1
  %i.ll = sdiv i32 %i.lj, %i.lk
  br label %bb.bi

bb.bg:                                            ; preds = %._crit_edge.i66.i
  %i.lm = sub nsw i32 %i.kl, %i.lf
  %i.ln = sdiv i32 %i.lm, %i.kn                   ; 2 uses
  %i.lo = sdiv i32 %i.ln, 2                       ; 2 uses
  store i32 %i.lo, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i66.i
  %i.lp = sub nsw i32 %i.kl, %i.lf
  %i.lq = add i32 %i.kn, 1
  %i.lr = sdiv i32 %i.lp, %i.lq                   ; 3 uses
  store i32 %i.lr, ptr %i.y, align 4, !tbaa !55
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %._crit_edge._crit_edge.i.i, %bb.ba
  %.pre97.i.i = phi i32 [ 0, %bb.ba ], [ %.pre97.pre.i.i, %._crit_edge._crit_edge.i.i ], [ 0, %bb.bc ], [ %i.lh, %bb.bd ], [ %i.li, %bb.be ], [ 0, %bb.bf ], [ %i.lo, %bb.bg ], [ %i.lr, %bb.bh ] ; 4 uses
  %.169.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i56.i, %bb.ba ], [ %.068.i.i, %._crit_edge._crit_edge.i.i ], [ %.068.i.i, %bb.bc ], [ %.068.i.i, %bb.bd ], [ %.068.i.i, %bb.be ], [ %i.ll, %bb.bf ], [ %i.ln, %bb.bg ], [ %i.lr, %bb.bh ] ; 5 uses
  %i.ls = add i32 %i.kn, -1                       ; 3 uses
  %.not85.i.i = icmp eq i32 %i.ls, 0
  br i1 %.not85.i.i, label %bb.bj, label %.lr.ph80.preheader.i.i

end_hunk_0
begin_hunk_1_@grid_update:bb.a
  %i.xw = call zeroext i1 @lv_obj_refr_size(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge, %bb.ci
  %i.xx = call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 52, ptr noundef null) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %calc.exit.thread

calc.exit.thread:                                 ; preds = %bb.v, %bb.d, %bb.b, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_set_grid_dsc_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @lv_obj_set_style_grid_column_dsc_array(ptr noundef %0, ptr noundef %1, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_row_dsc_array(ptr noundef %0, ptr noundef %2, i32 noundef 0) #8
  tail call void @lv_obj_set_style_layout(ptr noundef %0, i16 noundef zeroext 2, i32 noundef 0) #8
  ret void
}

declare void @lv_obj_set_style_grid_column_dsc_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_row_dsc_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_layout(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_obj_set_grid_align(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @lv_obj_set_style_grid_column_align(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_row_align(ptr noundef %0, i32 noundef %2, i32 noundef 0) #8
  ret void
}

declare void @lv_obj_set_style_grid_column_align(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_row_align(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_obj_set_grid_cell(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  tail call void @lv_obj_set_style_grid_cell_column_pos(ptr noundef %0, i32 noundef %2, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_cell_row_pos(ptr noundef %0, i32 noundef %5, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_cell_x_align(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_cell_column_span(ptr noundef %0, i32 noundef %3, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_cell_row_span(ptr noundef %0, i32 noundef %6, i32 noundef 0) #8
  tail call void @lv_obj_set_style_grid_cell_y_align(ptr noundef %0, i32 noundef %4, i32 noundef 0) #8
  %i.a = tail call ptr @lv_obj_get_parent(ptr noundef %0) #8
  tail call void @lv_obj_mark_layout_as_dirty(ptr noundef %i.a) #8
  ret void
}

declare void @lv_obj_set_style_grid_cell_column_pos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_cell_row_pos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_cell_x_align(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_cell_column_span(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_cell_row_span(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_grid_cell_y_align(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_mark_layout_as_dirty(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 536870811, 536871067) i32 @lv_grid_fr(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = add nuw nsw i32 %i.a, 536870811
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @lv_obj_get_scroll_x(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_y(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare zeroext i1 @lv_obj_refr_size(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_child(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_child_count(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_flag_any(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

declare void @lv_area_set_width(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_area_set_height(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_move_children_by(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_Bool", !4, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS11_lv_group_t", !8, i64 0}
!12 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!13 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16}
!14 = !{!"p1 _ZTS13_lv_display_t", !8, i64 0}
!15 = !{!"p1 _ZTS11_lv_indev_t", !8, i64 0}
!16 = !{!"p1 _ZTS11_lv_event_t", !8, i64 0}
!17 = !{!"", !13, i64 0, !9, i64 24, !4, i64 25, !9, i64 26, !9, i64 27, !5, i64 28, !9, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !8, i64 56, !8, i64 64}
!18 = !{!"p1 _ZTS11_lv_timer_t", !8, i64 0}
!19 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !18, i64 8, !13, i64 16}
!20 = !{!"", !5, i64 0, !4, i64 4, !8, i64 8, !8, i64 16}
!21 = !{!"_lv_draw_buf_handlers_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!22 = !{!"p1 _ZTS11_lv_cache_t", !8, i64 0}
!23 = !{!"p1 _ZTS15_lv_draw_unit_t", !8, i64 0}
!24 = !{!"", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !9, i64 24}
!25 = !{!"long", !4, i64 0}
!26 = !{!"", !8, i64 0, !25, i64 8, !25, i64 16, !13, i64 24}
!27 = !{!"p1 _ZTS14_snippet_stack", !8, i64 0}
!28 = !{!"_lv_global_t", !8, i64 0, !9, i64 8, !9, i64 9, !13, i64 16, !14, i64 40, !14, i64 48, !13, i64 56, !9, i64 80, !5, i64 84, !5, i64 88, !10, i64 96, !13, i64 104, !11, i64 128, !13, i64 136, !15, i64 160, !12, i64 168, !5, i64 176, !8, i64 184, !9, i64 192, !5, i64 196, !5, i64 200, !16, i64 208, !5, i64 216, !17, i64 224, !19, i64 296, !20, i64 336, !21, i64 360, !21, i64 416, !21, i64 472, !13, i64 528, !22, i64 552, !22, i64 560, !24, i64 568, !13, i64 600, !4, i64 624, !8, i64 816, !8, i64 824, !8, i64 832, !26, i64 840, !13, i64 888, !27, i64 912, !8, i64 920, !5, i64 928, !4, i64 932}
!29 = !{!28, !8, i64 184}
!30 = !{!"", !8, i64 0, !8, i64 8}
!31 = !{!"", !30, i64 0, !8, i64 16}
!32 = !{!31, !8, i64 0}
!33 = distinct !{!33, !56}
!34 = distinct !{!34, !56}
!35 = distinct !{!35, !56}
!36 = distinct !{!36, !56}
!37 = distinct !{!37, !56}
!38 = distinct !{!38, !56}
!39 = distinct !{!39, !56}
!40 = distinct !{!40, !56}
!41 = distinct !{!41, !56}
!42 = distinct !{!42, !56, !65, !66}
!43 = distinct !{!43, !56, !66, !65}
!44 = distinct !{!44, !56}
!45 = distinct !{!45, !67}
!46 = distinct !{!46, i1 false, !"LVerDomain"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !56, !65, !66}
!50 = distinct !{!50, !56, !65}
!51 = distinct !{!51, !56, !65, !66}
!52 = distinct !{!52, !56, !66, !65}
!53 = distinct !{!53, !67}
!54 = distinct !{!54, !56}
!55 = !{!5, !5, i64 0}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"p1 int", !8, i64 0}
!58 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!59 = !{!58, !5, i64 36}
!60 = !{!58, !57, i64 8}
!61 = !{!58, !57, i64 24}
!62 = !{!58, !5, i64 32}
!63 = !{!58, !57, i64 0}
!64 = !{!58, !57, i64 16}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!47}
!69 = !{!48}
!70 = !{!58, !5, i64 40}
!71 = !{!58, !5, i64 44}
!72 = !{!"p1 _ZTS15_lv_obj_class_t", !8, i64 0}
!73 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !8, i64 0}
!74 = !{!"p1 _ZTS15_lv_obj_style_t", !8, i64 0}
!75 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!76 = !{!"short", !4, i64 0}
!77 = !{!"_lv_obj_t", !72, i64 0, !12, i64 8, !73, i64 16, !74, i64 24, !8, i64 32, !75, i64 40, !5, i64 56, !76, i64 60, !76, i64 62, !76, i64 62, !76, i64 62, !76, i64 62, !76, i64 62, !76, i64 63, !76, i64 63, !76, i64 63, !76, i64 63, !76, i64 63, !76, i64 63, !76, i64 64}
!78 = !{!77, !5, i64 40}
!79 = !{!"", !5, i64 0, !5, i64 4}
!80 = !{!"", !5, i64 0, !5, i64 4, !79, i64 8}
!81 = !{!80, !5, i64 8}
!82 = !{!77, !5, i64 44}
!83 = !{!80, !5, i64 12}
!84 = !{!77, !73, i64 16}
!85 = !{!"any p2 pointer", !8, i64 0}
!86 = !{!"p2 _ZTS9_lv_obj_t", !85, i64 0}
!87 = !{!"_lv_array_t", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 20}
!88 = !{!"", !87, i64 0, !4, i64 24, !4, i64 24}
!89 = !{!"_lv_obj_spec_attr_t", !86, i64 0, !11, i64 8, !88, i64 16, !79, i64 48, !5, i64 56, !5, i64 60, !76, i64 64, !76, i64 66, !76, i64 66, !76, i64 66, !76, i64 66, !76, i64 67, !76, i64 67}
!90 = !{!89, !76, i64 64}
!91 = !{!89, !86, i64 0}
!92 = !{!12, !12, i64 0}
!93 = !{!77, !5, i64 48}
!94 = !{!77, !5, i64 52}
end_hunk_1
