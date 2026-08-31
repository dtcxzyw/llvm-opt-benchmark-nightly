Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/multispline?download=true
inline.NumInlined: 116
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@makeMultiSpline:bb.a
  %i.se = load i32, ptr %i.ry, align 8, !tbaa !131
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [16 x i8], ptr %i.sd, i64 %i.sf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.sg, i64 16, i1 false), !tbaa.struct !48
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !129
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv.next345.i
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !138
  %indvars.iv.next343.i = add nsw i64 %indvars.iv342.i, -1
  %.not397.i = icmp eq i64 %indvars.iv342.i, 0
  br i1 %.not397.i, label %.preheader.i, label %bb.by, !llvm.loop !140

._crit_edge329.i:                                 ; preds = %mapTri.exit.i, %.preheader.i
  %i.sk = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 81) 24) #19 ; 11 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.bz, label %mkPoly.exit

bb.bz:                                            ; preds = %._crit_edge329.i
  %i.sm = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.sn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sm, ptr noundef nonnull @.str.1, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.lr.ph328.i:                                      ; preds = %.preheader.i, %mapTri.exit.i
  %.0327.i = phi i64 [ %i.td, %mapTri.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %.0327.i
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !138 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.sp, null
  br i1 %.not8.i.i, label %mapTri.exit.i, label %.lr.ph.i268.i

.lr.ph.i268.i:                                    ; preds = %.lr.ph328.i, %.lr.ph.i268.i
  %.09.i.i = phi ptr [ %i.tc, %.lr.ph.i268.i ], [ %i.sp, %.lr.ph328.i ] ; 4 uses
  %i.sq = load i32, ptr %.09.i.i, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.sq, ptr %i.b, align 4, !tbaa !46
  %i.sr = load ptr, ptr %i.qd, align 8, !tbaa !61
  %i.ss = call ptr %i.sr(ptr noundef nonnull %i.qd, ptr noundef nonnull %i.b, i32 noundef 512) #18, !inline_history !141
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 20
  %i.su = load i32, ptr %i.st, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.su, ptr %.09.i.i, align 8, !tbaa !125
  %i.sv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.sw, ptr %i.a, align 4, !tbaa !46
  %i.sx = load ptr, ptr %i.qd, align 8, !tbaa !61
  %i.sy = call ptr %i.sx(ptr noundef nonnull %i.qd, ptr noundef nonnull %i.a, i32 noundef 512) #18, !inline_history !141
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 20
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.ta, ptr %i.sv, align 4, !tbaa !128
  %i.tb = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !132 ; 2 uses
  %.not.i269.i = icmp eq ptr %i.tc, null
  br i1 %.not.i269.i, label %mapTri.exit.i, label %.lr.ph.i268.i, !llvm.loop !142

mapTri.exit.i:                                    ; preds = %.lr.ph.i268.i, %.lr.ph328.i
  %i.td = add nuw i64 %.0327.i, 1                 ; 2 uses
  %exitcond349.not.i = icmp eq i64 %i.td, %.0220.lcssa384.i
  br i1 %exitcond349.not.i, label %._crit_edge329.i, label %.lr.ph328.i, !llvm.loop !143

mkPoly.exit:                                      ; preds = %._crit_edge329.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 4 uses
  store i64 %.0220.lcssa384.i, ptr %i.te, align 8, !tbaa !144
  store ptr %i.rb, ptr %i.sk, align 8, !tbaa !147
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 4 uses
  store ptr %i.rc, ptr %i.tf, align 8, !tbaa !148
  call void @free(ptr noundef %i.jj) #18
  call void @free(ptr noundef %i.jk) #18
  %i.tg = call i32 @dtclose(ptr noundef nonnull %i.qd) #18 ; 0 uses
  call void @free(ptr noundef %.2.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.th = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 224
  %i.tj = load i16, ptr %i.ti, align 8, !tbaa !149 ; 5 uses
  %i.tk = sext i16 %i.tj to i32                   ; 2 uses
  %i.tl = load i32, ptr %0, align 8
  %i.tm = and i32 %i.tl, 3
  %i.tn = icmp eq i32 %i.tm, 2
  %i.to = getelementptr inbounds i8, ptr %0, i64 -64 ; 5 uses
  %i.tp = select i1 %i.tn, ptr %0, ptr %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 56
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !81 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !37
  %i.ts = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  store i64 0, ptr %i.ts, align 8, !tbaa !35
  %i.tt = load ptr, ptr %i.sk, align 8, !tbaa !147 ; 2 uses
  %i.tu = load <2 x double>, ptr %i.tt, align 8, !tbaa !38
  store <2 x double> %i.tu, ptr %4, align 16, !tbaa !38
  %i.tv = sext i32 %i.qi to i64                   ; 2 uses
  %i.tw = getelementptr inbounds [16 x i8], ptr %i.tt, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ty = load <2 x double>, ptr %i.tw, align 8, !tbaa !38
  store <2 x double> %i.ty, ptr %i.tx, align 16, !tbaa !38
  %i.tz = call i32 @Pshortestpath(ptr noundef nonnull %i.sk, ptr noundef nonnull %4, ptr noundef nonnull %6) #18
  %i.ua = icmp slt i32 %i.tz, 0
  br i1 %i.ua, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %mkPoly.exit
  %i.ub = load i32, ptr %0, align 8
  %i.uc = and i32 %i.ub, 3
  %i.ud = icmp eq i32 %i.uc, 3
  %i.ue = select i1 %i.ud, i64 56, i64 120
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ue
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !81
  %i.uh = call ptr @agnameof(ptr noundef %i.ug) #18
  %i.ui = load i32, ptr %0, align 8
  %i.uj = and i32 %i.ui, 3
  %i.uk = icmp eq i32 %i.uj, 2
  %i.ul = select i1 %i.uk, ptr %0, ptr %i.to
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 56
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !81
  %i.uo = call ptr @agnameof(ptr noundef %i.un) #18
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.5, ptr noundef %i.uh, ptr noundef %i.uo) #18
  br label %.thread174.i

bb.cb:                                            ; preds = %mkPoly.exit
  %i.up = load i64, ptr %i.ts, align 8, !tbaa !35 ; 4 uses
  %i.uq = icmp eq i64 %i.up, 2
  br i1 %i.uq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ur = call ptr @agraphof(ptr noundef %i.tr) #18
  call void @makeStraightEdge(ptr noundef %i.ur, ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull @sinfo) #18
  br label %.thread174.i

bb.cd:                                            ; preds = %bb.cb
  %i.us = icmp eq i16 %i.tj, 1
  %i.ut = load i8, ptr @Concentrate, align 1, !range !150
  %i.uu = trunc nuw i8 %i.ut to i1
  %or.cond.i = select i1 %i.us, i1 true, i1 %i.uu
  br i1 %or.cond.i, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.sk, i64 16, i1 false), !tbaa.struct !151
  %i.uv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !35 ; 10 uses
  %.not.i.i106 = icmp eq i64 %i.uw, 0
  br i1 %.not.i.i106, label %gv_calloc.exit.thread.i, label %bb.cf

gv_calloc.exit.thread.i:                          ; preds = %bb.ce
  %i.ux = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #19
  %.pre261287.i = load ptr, ptr %5, align 8
  br label %._crit_edge227.i

bb.cf:                                            ; preds = %bb.ce
  %mul.ov.i.i107 = icmp ugt i64 %i.uw, 576460752303423487
  br i1 %mul.ov.i.i107, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.uy = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.uz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uy, ptr noundef nonnull @.str, i64 noundef %i.uw, i64 noundef 32) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.va = call noalias ptr @calloc(i64 noundef %i.uw, i64 noundef 32) #19 ; 6 uses
  %i.vb = icmp eq ptr %i.va, null
  br i1 %i.vb, label %bb.ci, label %.lr.ph226.i

bb.ci:                                            ; preds = %bb.ch
  %i.vc = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.vd = shl nuw i64 %i.uw, 5
  %i.ve = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vc, ptr noundef nonnull @.str.1, i64 noundef %i.vd) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.lr.ph226.i:                                      ; preds = %bb.ch
  %.pre261.i = load ptr, ptr %5, align 8          ; 9 uses
  %.not286.i = icmp eq i64 %i.uw, 1
  br i1 %.not286.i, label %._crit_edge227.loopexit.peel.begin.i, label %.lr.ph226.split.i

.lr.ph226.split.i:                                ; preds = %.lr.ph226.i
  %i.vf = add nsw i64 %i.uw, -1                   ; 3 uses
  %xtraiter428 = and i64 %i.vf, 1
  %i.vg = icmp eq i64 %i.uw, 2
  br i1 %i.vg, label %.epil.preheader427, label %.lr.ph226.split.i.new

.lr.ph226.split.i.new:                            ; preds = %.lr.ph226.split.i
  %unroll_iter433 = and i64 %i.vf, -2
  br label %bb.cj

._crit_edge227.loopexit.peel.begin.i.loopexit.unr-lcssa: ; preds = %bb.cj
  %lcmp.mod430.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod430.not, label %._crit_edge227.loopexit.peel.begin.i, label %.epil.preheader427

.epil.preheader427:                               ; preds = %._crit_edge227.loopexit.peel.begin.i.loopexit.unr-lcssa, %.lr.ph226.split.i
  %.0131225.i.epil.init = phi i64 [ 0, %.lr.ph226.split.i ], [ %i.wl, %._crit_edge227.loopexit.peel.begin.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod432 = trunc i64 %i.vf to i1
  call void @llvm.assume(i1 %lcmp.mod432)
  %i.vh = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %.0131225.i.epil.init ; 2 uses
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %.0131225.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vh, ptr noundef nonnull align 8 dereferenceable(16) %i.vi, i64 16, i1 false), !tbaa.struct !48
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vk = add nuw i64 %.0131225.i.epil.init, 1    ; 2 uses
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %i.vk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vj, ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i64 16, i1 false), !tbaa.struct !48
  br label %._crit_edge227.loopexit.peel.begin.i

._crit_edge227.loopexit.peel.begin.i:             ; preds = %.epil.preheader427, %._crit_edge227.loopexit.peel.begin.i.loopexit.unr-lcssa, %.lr.ph226.i
  %i.vm = phi i64 [ 0, %.lr.ph226.i ], [ %i.wl, %._crit_edge227.loopexit.peel.begin.i.loopexit.unr-lcssa ], [ %i.vk, %.epil.preheader427 ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %i.vm ; 2 uses
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %i.vm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vn, ptr noundef nonnull align 8 dereferenceable(16) %i.vo, i64 16, i1 false), !tbaa.struct !48
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vq = add nuw nsw i64 %i.vm, 1                ; 2 uses
  %i.vr = icmp eq i64 %i.vq, %i.uw
  %i.vs = select i1 %i.vr, i64 0, i64 %i.vq
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %i.vs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, ptr noundef nonnull align 8 dereferenceable(16) %i.vt, i64 16, i1 false), !tbaa.struct !48
  br label %._crit_edge227.i

._crit_edge227.i:                                 ; preds = %._crit_edge227.loopexit.peel.begin.i, %gv_calloc.exit.thread.i
  %.pre261288.i = phi ptr [ %.pre261287.i, %gv_calloc.exit.thread.i ], [ %.pre261.i, %._crit_edge227.loopexit.peel.begin.i ]
  %i.vu = phi ptr [ %i.ux, %gv_calloc.exit.thread.i ], [ %i.va, %._crit_edge227.loopexit.peel.begin.i ] ; 2 uses
  %i.vv = load ptr, ptr %6, align 8
  call fastcc void @tweakPath(ptr %.pre261288.i, i64 %i.uw, i64 noundef %i.tv, ptr %i.vv, i64 %i.up)
  %i.vw = load i64, ptr %i.uv, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.vx = load ptr, ptr %6, align 8
  %i.vy = load i64, ptr %i.ts, align 8
  %i.vz = call i32 @Proutespline(ptr noundef %i.vu, i64 noundef %i.vw, ptr %i.vx, i64 %i.vy, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %i.wa = icmp slt i32 %i.vz, 0
  %i.wb = load i32, ptr %0, align 8
  %i.wc = and i32 %i.wb, 3                        ; 2 uses
  br i1 %i.wa, label %.thread.i108, label %bb.ck

bb.cj:                                            ; preds = %bb.cj, %.lr.ph226.split.i.new
  %.0131225.i = phi i64 [ 0, %.lr.ph226.split.i.new ], [ %i.wl, %bb.cj ] ; 4 uses
  %niter434 = phi i64 [ 0, %.lr.ph226.split.i.new ], [ %niter434.next.1, %bb.cj ]
  %i.wd = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %.0131225.i ; 2 uses
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %.0131225.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wd, ptr noundef nonnull align 8 dereferenceable(16) %i.we, i64 16, i1 false), !tbaa.struct !48
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wg = or disjoint i64 %.0131225.i, 1          ; 3 uses
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %i.wg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wf, ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i64 16, i1 false), !tbaa.struct !48
  %i.wi = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %i.wg ; 2 uses
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %i.wg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull align 8 dereferenceable(16) %i.wj, i64 16, i1 false), !tbaa.struct !48
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wl = add nuw i64 %.0131225.i, 2              ; 4 uses
  %i.wm = getelementptr inbounds nuw [16 x i8], ptr %.pre261.i, i64 %i.wl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull align 8 dereferenceable(16) %i.wm, i64 16, i1 false), !tbaa.struct !48
  %niter434.next.1 = add nuw i64 %niter434, 2     ; 2 uses
  %niter434.ncmp.1 = icmp eq i64 %niter434.next.1, %unroll_iter433
  br i1 %niter434.ncmp.1, label %._crit_edge227.loopexit.peel.begin.i.loopexit.unr-lcssa, label %bb.cj, !llvm.loop !152

.thread.i108:                                     ; preds = %._crit_edge227.i
  %i.wn = icmp eq i32 %i.wc, 3
  %i.wo = select i1 %i.wn, i64 56, i64 120
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 %i.wo
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !81
  %i.wr = call ptr @agnameof(ptr noundef %i.wq) #18
  %i.ws = load i32, ptr %0, align 8
  %i.wt = and i32 %i.ws, 3
  %i.wu = icmp eq i32 %i.wt, 2
  %i.wv = select i1 %i.wu, ptr %0, ptr %i.to
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 56
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !81
  %i.wy = call ptr @agnameof(ptr noundef %i.wx) #18
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.5, ptr noundef %i.wr, ptr noundef %i.wy) #18
  br label %.thread174.i

bb.ck:                                            ; preds = %._crit_edge227.i
  %i.wz = icmp eq i32 %i.wc, 2
  %i.xa = select i1 %i.wz, ptr %0, ptr %i.to
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 56
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !81
  %i.xd = icmp ne ptr %i.xc, %i.tr
  %i.xe = zext i1 %i.xd to i32
  %i.xf = load ptr, ptr %7, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xh = load i64, ptr %i.xg, align 8
  call fastcc void @finishEdge(ptr noundef nonnull %0, ptr %i.xf, i64 %i.xh, i32 noundef %i.xe)
  br label %genroute.exit

bb.cl:                                            ; preds = %bb.cd
  %i.xi = shl i64 %i.up, 1
  %i.xj = add i64 %i.xi, -2                       ; 7 uses
  %i.xk = add i64 %i.up, -2                       ; 4 uses
  %mul.ov.i150.i = icmp ugt i64 %i.xk, 2305843009213693951
  br i1 %mul.ov.i150.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xl = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.xm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xl, ptr noundef nonnull @.str, i64 noundef %i.xk, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.xn = call noalias ptr @calloc(i64 noundef %i.xk, i64 noundef 8) #19 ; 7 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %bb.co, label %gv_calloc.exit152.preheader.i

gv_calloc.exit152.preheader.i:                    ; preds = %bb.cn
  %i.xp = add nsw i32 %i.tk, 1                    ; 7 uses
  %i.xq = sext i32 %i.xp to i64                   ; 4 uses
  %.not.i.i.i92 = icmp eq i32 %i.xp, 0
  %mul.ov.i.i.i = icmp slt i16 %i.tj, -1
  %i.xr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xs = mul nsw i32 %i.xp, 15
  %i.xt = sitofp i32 %i.xs to double
  %i.xu = sitofp i32 %i.xp to double
  %i.xv = icmp sgt i16 %i.tj, -1                  ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.xp to i64    ; 6 uses
  %min.iters.check363 = icmp ult i32 %i.xp, 2
  %n.vec365 = and i64 %wide.trip.count.i.i, 65534 ; 3 uses
  %cmp.n383 = icmp eq i64 %n.vec365, %wide.trip.count.i.i
  %min.iters.check344 = icmp ult i32 %i.xp, 2
  %n.vec346 = and i64 %wide.trip.count.i.i, 65534 ; 3 uses
  %cmp.n360 = icmp eq i64 %n.vec346, %wide.trip.count.i.i
  br label %gv_calloc.exit152.i

bb.co:                                            ; preds = %bb.cn
  %i.xw = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.xx = shl nuw i64 %i.xk, 3
  %i.xy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xw, ptr noundef nonnull @.str.1, i64 noundef %i.xx) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit152.i:                              ; preds = %mkCtrlPts.exit.i, %gv_calloc.exit152.preheader.i
  %.0127.i = phi i64 [ %i.ye, %mkCtrlPts.exit.i ], [ 0, %gv_calloc.exit152.preheader.i ] ; 5 uses
  %i.xz = add nuw i64 %.0127.i, 2                 ; 2 uses
  %i.ya = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.yb = icmp ult i64 %i.xz, %i.ya
  br i1 %i.yb, label %bb.cp, label %bb.dd

bb.cp:                                            ; preds = %gv_calloc.exit152.i
  %i.yc = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %i.yd = getelementptr inbounds nuw [16 x i8], ptr %i.yc, i64 %.0127.i ; 2 uses
  %i.ye = add nuw i64 %.0127.i, 1                 ; 2 uses
  %i.yf = getelementptr inbounds nuw [16 x i8], ptr %i.yc, i64 %i.ye
  %i.yg = getelementptr inbounds nuw [16 x i8], ptr %i.yc, i64 %i.xz ; 2 uses
  %i.yh = load double, ptr %i.yd, align 8         ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yj = load double, ptr %i.yi, align 8         ; 2 uses
  %i.yk = load <2 x double>, ptr %i.yf, align 8   ; 11 uses
  %i.yl = extractelement <2 x double> %i.yk, i64 1 ; 7 uses
  %i.ym = extractelement <2 x double> %i.yk, i64 0 ; 7 uses
  %i.yn = load double, ptr %i.yg, align 8
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yp = load double, ptr %i.yo, align 8
  %i.yq = load i64, ptr %i.te, align 8, !tbaa !35 ; 2 uses
  %.not11.i.i.i = icmp ugt i64 %i.yq, 1
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i101, label %ctrlPtIdx.exit.thread.i.i

.lr.ph.i.i.i101:                                  ; preds = %bb.cp
  %i.yr = load ptr, ptr %i.sk, align 8, !tbaa !37
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %.lr.ph.i.i.i101
  %.0812.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i101 ], [ %i.yv, %bb.cs ] ; 4 uses
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %.0812.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load double, ptr %i.ys, align 8, !tbaa !38
  %i.yt = fcmp oeq double %.sroa.0.0.copyload.i.i.i, %i.ym
  br i1 %i.yt, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %.sroa.4.0.copyload.i.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !38
  %i.yu = fcmp oeq double %.sroa.4.0.copyload.i.i.i, %i.yl
  br i1 %i.yu, label %ctrlPtIdx.exit.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.yv = add nuw i64 %.0812.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.yv, %i.yq
  br i1 %exitcond.not.i.i.i, label %ctrlPtIdx.exit.thread.i.i, label %bb.cq, !llvm.loop !153

ctrlPtIdx.exit.thread.i.i:                        ; preds = %bb.cp, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  br label %mkCtrlPts.exit.thread.i

ctrlPtIdx.exit.i.i:                               ; preds = %bb.cr
  %i.yw = trunc i64 %.0812.i.i.i to i32           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.yx = icmp slt i32 %i.yw, 0
  br i1 %i.yx, label %mkCtrlPts.exit.thread.i, label %bb.ct

bb.ct:                                            ; preds = %ctrlPtIdx.exit.i.i
  br i1 %.not.i.i.i92, label %.thread.i.i.i, label %bb.cu

.thread.i.i.i:                                    ; preds = %bb.ct
  %i.yy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #19
  br label %gv_calloc.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  br i1 %mul.ov.i.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.yz = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.za = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yz, ptr noundef nonnull @.str, i64 noundef %i.xq, i64 noundef 16) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.zb = call noalias ptr @calloc(i64 noundef %i.xq, i64 noundef 16) #19 ; 2 uses
  %i.zc = icmp eq ptr %i.zb, null
  br i1 %i.zc, label %bb.cx, label %gv_calloc.exit.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.zd = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ze = shl nuw nsw i64 %i.xq, 4
  %i.zf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zd, ptr noundef nonnull @.str.1, i64 noundef %i.ze) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.cw, %.thread.i.i.i
  %i.zg = phi ptr [ %i.yy, %.thread.i.i.i ], [ %i.zb, %bb.cw ] ; 6 uses
  %i.zh = fsub double %i.yp, %i.yl
  %i.zi = fsub double %i.yn, %i.ym
  %i.zj = call double @atan2(double noundef %i.zh, double noundef %i.zi) #18
  %i.zk = fsub double %i.yj, %i.yl
  %i.zl = fsub double %i.yh, %i.ym
  %i.zm = call double @atan2(double noundef %i.zk, double noundef %i.zl) #18
  %i.zn = fadd double %i.zj, %i.zm
  %i.zo = fmul double %i.zn, 5.000000e-01         ; 2 uses
  %i.zp = call double @sin(double noundef %i.zo) #18
  %i.zq = call double @cos(double noundef %i.zo) #18
  %i.zr = insertelement <2 x double> poison, double %i.zq, i64 0
  %i.zs = insertelement <2 x double> %i.zr, double %i.zp, i64 1 ; 5 uses
  %i.zt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zs, <2 x double> splat (double 1.000000e+02), <2 x double> %i.yk) ; 4 uses
  %i.zu = icmp slt i32 %i.qi, %i.yw
  %i.zv = extractelement <2 x double> %i.zt, i64 0
  %i.zw = extractelement <2 x double> %i.zt, i64 1
  %i.zx = call i32 @wind(double %i.yh, double %i.yj, double %i.ym, double %i.yl, double %i.zv, double %i.zw) #18 ; 2 uses
  br i1 %i.zu, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %gv_calloc.exit.i.i
  %.not96.i.i = icmp eq i32 %i.zx, 1
  br i1 %.not96.i.i, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zy = fneg <2 x double> %i.zs                 ; 2 uses
  %i.zz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> splat (double 1.000000e+02), <2 x double> %i.yk)
  br label %bb.dc

bb.da:                                            ; preds = %gv_calloc.exit.i.i
  %.not.i153.i = icmp eq i32 %i.zx, -1
  br i1 %.not.i153.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
end_hunk_0
begin_hunk_1_@makeMultiSpline:bb.a

.loopexit182.i:                                   ; preds = %mkCtrlPts.exit.i, %mkCtrlPts.exit.thread.i
  %i.aco = load i32, ptr %0, align 8
  %i.acp = and i32 %i.aco, 3
  %i.acq = icmp eq i32 %i.acp, 3
  %i.acr = select i1 %i.acq, i64 56, i64 120
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 %i.acr
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !81
  %i.acu = call ptr @agnameof(ptr noundef %i.act) #18
  %i.acv = load i32, ptr %0, align 8
  %i.acw = and i32 %i.acv, 3
  %i.acx = icmp eq i32 %i.acw, 2
  %i.acy = select i1 %i.acx, ptr %0, ptr %i.to
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 56
  br label %.loopexit.sink.split.i

bb.dd:                                            ; preds = %gv_calloc.exit152.i
  %.not.i154.i = icmp eq i64 %i.xj, 0
  br i1 %.not.i154.i, label %.thread.i157.i, label %bb.de

.thread.i157.i:                                   ; preds = %bb.dd
  %i.ada = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #19
  br label %gv_calloc.exit158.i

bb.de:                                            ; preds = %bb.dd
  %mul.ov.i156.i = icmp ugt i64 %i.xj, 1152921504606846975
  br i1 %mul.ov.i156.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.adb = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.adc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adb, ptr noundef nonnull @.str, i64 noundef %i.xj, i64 noundef 16) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.add = call noalias ptr @calloc(i64 noundef %i.xj, i64 noundef 16) #19 ; 2 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.dh, label %gv_calloc.exit158.i

bb.dh:                                            ; preds = %bb.dg
  %i.adf = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.adg = shl nuw i64 %i.xj, 4
  %i.adh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adf, ptr noundef nonnull @.str.1, i64 noundef %i.adg) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit158.i:                              ; preds = %bb.dg, %.thread.i157.i
  %i.adi = phi ptr [ %i.ada, %.thread.i157.i ], [ %i.add, %bb.dg ]
  store ptr %i.adi, ptr %5, align 8, !tbaa !37
  %i.adj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.xj, ptr %i.adj, align 8, !tbaa !35
  %i.adk = icmp sgt i16 %i.tj, 0
  br i1 %i.adk, label %.lr.ph220.i, label %.loopexit.i

.lr.ph220.i:                                      ; preds = %gv_calloc.exit158.i
  %.not146.i = icmp eq i32 %2, 0
  %i.adl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %wide.trip.count.i95 = zext nneg i32 %i.tk to i64
  br label %bb.di

bb.di:                                            ; preds = %.thread171.i, %.lr.ph220.i
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph220.i ], [ %indvars.iv.next.i98, %.thread171.i ] ; 3 uses
  %.0137218.i = phi ptr [ %0, %.lr.ph220.i ], [ %i.ahy, %.thread171.i ] ; 12 uses
  %i.adn = load ptr, ptr %5, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adn, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !48
  %i.ado = load i64, ptr %i.ts, align 8, !tbaa !35 ; 2 uses
  %i.adp = icmp ugt i64 %i.ado, 2
  br i1 %i.adp, label %.lr.ph.i100, label %._crit_edge.i97

._crit_edge.i97:                                  ; preds = %.lr.ph.i100, %bb.di
  %.lcssa.i = phi i64 [ %i.ado, %bb.di ], [ %i.aed, %.lr.ph.i100 ]
  %i.adq = load ptr, ptr %5, align 8, !tbaa !37
  %i.adr = getelementptr [16 x i8], ptr %i.adq, i64 %.lcssa.i
  %i.ads = getelementptr i8, ptr %i.adr, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ads, ptr noundef nonnull align 16 dereferenceable(16) %i.tx, i64 16, i1 false), !tbaa.struct !48
  %i.adt = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.adu = icmp ugt i64 %i.adt, 2
  br i1 %i.adu, label %.lr.ph213.i, label %._crit_edge214.i

.lr.ph.i100:                                      ; preds = %bb.di, %.lr.ph.i100
  %i.adv = phi i64 [ %i.aec, %.lr.ph.i100 ], [ 2, %bb.di ] ; 2 uses
  %.0125210.i = phi i64 [ %i.adv, %.lr.ph.i100 ], [ 1, %bb.di ] ; 2 uses
  %i.adw = load ptr, ptr %5, align 8, !tbaa !37
  %i.adx = getelementptr inbounds nuw [16 x i8], ptr %i.adw, i64 %.0125210.i
  %i.ady = getelementptr [8 x i8], ptr %i.xn, i64 %.0125210.i
  %i.adz = getelementptr i8, ptr %i.ady, i64 -8
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !80
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.aea, i64 %indvars.iv.i96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adx, ptr noundef nonnull align 8 dereferenceable(16) %i.aeb, i64 16, i1 false), !tbaa.struct !48
  %i.aec = add nuw i64 %i.adv, 1                  ; 2 uses
  %i.aed = load i64, ptr %i.ts, align 8, !tbaa !35 ; 2 uses
  %i.aee = icmp ult i64 %i.aec, %i.aed
  br i1 %i.aee, label %.lr.ph.i100, label %._crit_edge.i97, !llvm.loop !160

._crit_edge214.i:                                 ; preds = %.lr.ph213.i, %._crit_edge.i97
  %i.aef = call i32 @Pshortestpath(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %8) #18
  %i.aeg = icmp slt i32 %i.aef, 0
  br i1 %i.aeg, label %bb.dj, label %bb.dk

.lr.ph213.i:                                      ; preds = %._crit_edge.i97, %.lr.ph213.i
  %i.aeh = phi i64 [ %i.aeq, %.lr.ph213.i ], [ 2, %._crit_edge.i97 ] ; 2 uses
  %.0124211.i = phi i64 [ %i.aeh, %.lr.ph213.i ], [ 1, %._crit_edge.i97 ] ; 2 uses
  %i.aei = load ptr, ptr %5, align 8, !tbaa !37
  %i.aej = sub i64 %i.xj, %.0124211.i
  %i.aek = getelementptr inbounds nuw [16 x i8], ptr %i.aei, i64 %i.aej
  %i.ael = getelementptr [8 x i8], ptr %i.xn, i64 %.0124211.i
  %i.aem = getelementptr i8, ptr %i.ael, i64 -8
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !80
  %i.aeo = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %indvars.iv.i96
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aek, ptr noundef nonnull align 8 dereferenceable(16) %i.aep, i64 16, i1 false), !tbaa.struct !48
  %i.aeq = add nuw i64 %i.aeh, 1                  ; 2 uses
  %i.aer = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.aes = icmp ult i64 %i.aeq, %i.aer
  br i1 %i.aes, label %.lr.ph213.i, label %._crit_edge214.i, !llvm.loop !161

bb.dj:                                            ; preds = %._crit_edge214.i
  %i.aet = load i32, ptr %.0137218.i, align 8
  %i.aeu = and i32 %i.aet, 3
  %i.aev = icmp eq i32 %i.aeu, 3
  %i.aew = select i1 %i.aev, i64 56, i64 120
  %i.aex = getelementptr inbounds nuw i8, ptr %.0137218.i, i64 %i.aew
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !81
  %i.aez = call ptr @agnameof(ptr noundef %i.aey) #18
  %i.afa = load i32, ptr %.0137218.i, align 8
  %i.afb = and i32 %i.afa, 3
  %i.afc = icmp eq i32 %i.afb, 2
  %i.afd = select i1 %i.afc, i64 56, i64 -8
  %i.afe = getelementptr inbounds i8, ptr %.0137218.i, i64 %i.afd
  br label %.loopexit.sink.split.i

bb.dk:                                            ; preds = %._crit_edge214.i
  br i1 %.not146.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aff = load ptr, ptr %8, align 8
  %i.afg = load i64, ptr %i.adl, align 8
  call void @make_polyline(ptr %i.aff, i64 %i.afg, ptr noundef nonnull %7) #18
  br label %.thread171.i

bb.dm:                                            ; preds = %bb.dk
  %i.afh = load i64, ptr %i.adj, align 8, !tbaa !35 ; 10 uses
  %.not.i159.i = icmp eq i64 %i.afh, 0
  br i1 %.not.i159.i, label %gv_calloc.exit163.thread.i, label %bb.dn

gv_calloc.exit163.thread.i:                       ; preds = %bb.dm
  %i.afi = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #19
  %.pre289.i = load ptr, ptr %5, align 8
  br label %._crit_edge217.i

bb.dn:                                            ; preds = %bb.dm
  %mul.ov.i161.i = icmp ugt i64 %i.afh, 576460752303423487
  br i1 %mul.ov.i161.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.afj = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.afk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afj, ptr noundef nonnull @.str, i64 noundef %i.afh, i64 noundef 32) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.dp:                                            ; preds = %bb.dn
  %i.afl = call noalias ptr @calloc(i64 noundef %i.afh, i64 noundef 32) #19 ; 6 uses
  %i.afm = icmp eq ptr %i.afl, null
  br i1 %i.afm, label %bb.dq, label %.lr.ph216.i

bb.dq:                                            ; preds = %bb.dp
  %i.afn = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.afo = shl nuw i64 %i.afh, 5
  %i.afp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afn, ptr noundef nonnull @.str.1, i64 noundef %i.afo) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.lr.ph216.i:                                      ; preds = %bb.dp
  %.pre.i = load ptr, ptr %5, align 8             ; 9 uses
  %.not285.i = icmp eq i64 %i.afh, 1
  br i1 %.not285.i, label %._crit_edge217.loopexit.peel.begin.i, label %.lr.ph216.split.i

.lr.ph216.split.i:                                ; preds = %.lr.ph216.i
  %i.afq = add nsw i64 %i.afh, -1                 ; 3 uses
  %xtraiter420 = and i64 %i.afq, 1
  %i.afr = icmp eq i64 %i.afh, 2
  br i1 %i.afr, label %.epil.preheader419, label %.lr.ph216.split.i.new

.lr.ph216.split.i.new:                            ; preds = %.lr.ph216.split.i
  %unroll_iter425 = and i64 %i.afq, -2
  br label %bb.dr

._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa: ; preds = %bb.dr
  %lcmp.mod422.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod422.not, label %._crit_edge217.loopexit.peel.begin.i, label %.epil.preheader419

.epil.preheader419:                               ; preds = %._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa, %.lr.ph216.split.i
  %.0123215.i.epil.init = phi i64 [ 0, %.lr.ph216.split.i ], [ %i.agx, %._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod424 = trunc i64 %i.afq to i1
  call void @llvm.assume(i1 %lcmp.mod424)
  %i.afs = getelementptr inbounds nuw [32 x i8], ptr %i.afl, i64 %.0123215.i.epil.init ; 2 uses
  %i.aft = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %.0123215.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afs, ptr noundef nonnull align 8 dereferenceable(16) %i.aft, i64 16, i1 false), !tbaa.struct !48
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  %i.afv = add nuw i64 %.0123215.i.epil.init, 1   ; 2 uses
  %i.afw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.afv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afu, ptr noundef nonnull align 8 dereferenceable(16) %i.afw, i64 16, i1 false), !tbaa.struct !48
  br label %._crit_edge217.loopexit.peel.begin.i

._crit_edge217.loopexit.peel.begin.i:             ; preds = %.epil.preheader419, %._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa, %.lr.ph216.i
  %i.afx = phi i64 [ 0, %.lr.ph216.i ], [ %i.agx, %._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa ], [ %i.afv, %.epil.preheader419 ] ; 3 uses
  %i.afy = getelementptr inbounds nuw [32 x i8], ptr %i.afl, i64 %i.afx ; 2 uses
  %i.afz = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.afx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afy, ptr noundef nonnull align 8 dereferenceable(16) %i.afz, i64 16, i1 false), !tbaa.struct !48
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  %i.agb = add nuw nsw i64 %i.afx, 1              ; 2 uses
  %i.agc = icmp eq i64 %i.agb, %i.afh
  %i.agd = select i1 %i.agc, i64 0, i64 %i.agb
  %i.age = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.agd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aga, ptr noundef nonnull align 8 dereferenceable(16) %i.age, i64 16, i1 false), !tbaa.struct !48
  br label %._crit_edge217.i

._crit_edge217.i:                                 ; preds = %._crit_edge217.loopexit.peel.begin.i, %gv_calloc.exit163.thread.i
  %.pre290.i = phi ptr [ %.pre289.i, %gv_calloc.exit163.thread.i ], [ %.pre.i, %._crit_edge217.loopexit.peel.begin.i ]
  %i.agf = phi ptr [ %i.afi, %gv_calloc.exit163.thread.i ], [ %i.afl, %._crit_edge217.loopexit.peel.begin.i ] ; 2 uses
  %i.agg = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.agh = add i64 %i.agg, -1
  %i.agi = load ptr, ptr %8, align 8
  %i.agj = load i64, ptr %i.adl, align 8
  call fastcc void @tweakPath(ptr %.pre290.i, i64 %i.afh, i64 noundef %i.agh, ptr %i.agi, i64 %i.agj)
  %i.agk = load i64, ptr %i.adj, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.agl = load ptr, ptr %8, align 8
  %i.agm = load i64, ptr %i.adl, align 8
  %i.agn = call i32 @Proutespline(ptr noundef %i.agf, i64 noundef %i.agk, ptr %i.agl, i64 %i.agm, ptr noundef nonnull %10, ptr noundef nonnull %7) #18
  %i.ago = icmp sgt i32 %i.agn, -1
  call void @free(ptr noundef %i.agf) #18
  br i1 %i.ago, label %.thread171.i, label %bb.ds

bb.dr:                                            ; preds = %bb.dr, %.lr.ph216.split.i.new
  %.0123215.i = phi i64 [ 0, %.lr.ph216.split.i.new ], [ %i.agx, %bb.dr ] ; 4 uses
  %niter426 = phi i64 [ 0, %.lr.ph216.split.i.new ], [ %niter426.next.1, %bb.dr ]
  %i.agp = getelementptr inbounds nuw [32 x i8], ptr %i.afl, i64 %.0123215.i ; 2 uses
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %.0123215.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agp, ptr noundef nonnull align 8 dereferenceable(16) %i.agq, i64 16, i1 false), !tbaa.struct !48
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.ags = or disjoint i64 %.0123215.i, 1         ; 3 uses
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.ags
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agr, ptr noundef nonnull align 8 dereferenceable(16) %i.agt, i64 16, i1 false), !tbaa.struct !48
  %i.agu = getelementptr inbounds nuw [32 x i8], ptr %i.afl, i64 %i.ags ; 2 uses
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.ags
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agu, ptr noundef nonnull align 8 dereferenceable(16) %i.agv, i64 16, i1 false), !tbaa.struct !48
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.agx = add nuw i64 %.0123215.i, 2             ; 4 uses
  %i.agy = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.agx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agw, ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i64 16, i1 false), !tbaa.struct !48
  %niter426.next.1 = add nuw i64 %niter426, 2     ; 2 uses
  %niter426.ncmp.1 = icmp eq i64 %niter426.next.1, %unroll_iter425
  br i1 %niter426.ncmp.1, label %._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa, label %bb.dr, !llvm.loop !162

bb.ds:                                            ; preds = %._crit_edge217.i
  %i.agz = load i32, ptr %.0137218.i, align 8
  %i.aha = and i32 %i.agz, 3
  %i.ahb = icmp eq i32 %i.aha, 3
  %i.ahc = select i1 %i.ahb, i64 56, i64 120
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0137218.i, i64 %i.ahc
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !81
  %i.ahf = call ptr @agnameof(ptr noundef %i.ahe) #18
  %i.ahg = load i32, ptr %.0137218.i, align 8
  %i.ahh = and i32 %i.ahg, 3
  %i.ahi = icmp eq i32 %i.ahh, 2
  %i.ahj = select i1 %i.ahi, i64 56, i64 -8
  %i.ahk = getelementptr inbounds i8, ptr %.0137218.i, i64 %i.ahj
  br label %.loopexit.sink.split.i

.thread171.i:                                     ; preds = %._crit_edge217.i, %bb.dl
  %i.ahl = load i32, ptr %.0137218.i, align 8
  %i.ahm = and i32 %i.ahl, 3
  %i.ahn = icmp eq i32 %i.ahm, 2
  %i.aho = select i1 %i.ahn, i64 56, i64 -8
  %i.ahp = getelementptr inbounds i8, ptr %.0137218.i, i64 %i.aho
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !81
  %i.ahr = icmp ne ptr %i.ahq, %i.tr
  %i.ahs = zext i1 %i.ahr to i32
  %i.aht = load ptr, ptr %7, align 8
  %i.ahu = load i64, ptr %i.adm, align 8
  call fastcc void @finishEdge(ptr noundef nonnull %.0137218.i, ptr %i.aht, i64 %i.ahu, i32 noundef %i.ahs)
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0137218.i, i64 16
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !76
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 232
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !163
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond257.not.i = icmp eq i64 %indvars.iv.next.i98, %wide.trip.count.i95
  br i1 %exitcond257.not.i, label %.loopexit.i, label %bb.di, !llvm.loop !164

.loopexit.sink.split.i:                           ; preds = %bb.ds, %bb.dj, %.loopexit182.i
  %.sink320.in.i = phi ptr [ %i.afe, %bb.dj ], [ %i.ahk, %bb.ds ], [ %i.acz, %.loopexit182.i ]
  %.sink.i = phi ptr [ %i.aez, %bb.dj ], [ %i.ahf, %bb.ds ], [ %i.acu, %.loopexit182.i ]
  %.sink320.i = load ptr, ptr %.sink320.in.i, align 8, !tbaa !81
  %i.ahz = call ptr @agnameof(ptr noundef %.sink320.i) #18
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.5, ptr noundef %.sink.i, ptr noundef %i.ahz) #18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread171.i, %.loopexit.sink.split.i, %gv_calloc.exit158.i
  %.6.i = phi i32 [ 1, %.loopexit.sink.split.i ], [ 0, %gv_calloc.exit158.i ], [ 0, %.thread171.i ]
  %i.aia = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.aib = icmp ugt i64 %i.aia, 2
  br i1 %i.aib, label %.lr.ph223.i, label %._crit_edge224.i

._crit_edge224.i:                                 ; preds = %.lr.ph223.i, %.loopexit.i
  call void @free(ptr noundef nonnull %i.xn) #18
  br label %.thread174.i

.lr.ph223.i:                                      ; preds = %.loopexit.i, %.lr.ph223.i
  %.0221.i94 = phi i64 [ %i.aie, %.lr.ph223.i ], [ 0, %.loopexit.i ] ; 3 uses
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %.0221.i94
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !80
  call void @free(ptr noundef %i.aid) #18
  %i.aie = add nuw i64 %.0221.i94, 1
  %i.aif = add nuw i64 %.0221.i94, 3
  %i.aig = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.aih = icmp ult i64 %i.aif, %i.aig
  br i1 %i.aih, label %.lr.ph223.i, label %._crit_edge224.i, !llvm.loop !165

.thread174.i:                                     ; preds = %._crit_edge224.i, %.thread.i108, %bb.cc, %bb.ca
  %.6178.i = phi i32 [ 1, %bb.ca ], [ %.6.i, %._crit_edge224.i ], [ 1, %.thread.i108 ], [ 0, %bb.cc ]
  %i.aii = load ptr, ptr %5, align 8, !tbaa !37
  br label %genroute.exit

genroute.exit:                                    ; preds = %bb.ck, %.thread174.i
  %.sink321.i = phi ptr [ %i.vu, %bb.ck ], [ %i.aii, %.thread174.i ]
  %.1.i93 = phi i32 [ 0, %bb.ck ], [ %.6178.i, %.thread174.i ]
  call void @free(ptr noundef %.sink321.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.aij = load ptr, ptr %i.sk, align 8, !tbaa !147
  call void @free(ptr noundef %i.aij) #18
  %i.aik = load i64, ptr %i.te, align 8, !tbaa !144 ; 2 uses
  %.not18.i = icmp eq i64 %i.aik, 0
  br i1 %.not18.i, label %freeTripoly.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %genroute.exit, %._crit_edge.i112
  %i.ail = phi i64 [ %i.air, %._crit_edge.i112 ], [ %i.aik, %genroute.exit ]
  %.014.i = phi i64 [ %i.ais, %._crit_edge.i112 ], [ 0, %genroute.exit ] ; 2 uses
  %i.aim = load ptr, ptr %i.tf, align 8, !tbaa !148
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %.014.i
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !138 ; 2 uses
  %.not12.i = icmp eq ptr %i.aio, null
  br i1 %.not12.i, label %._crit_edge.i112, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph16.i, %.lr.ph.i109
  %.01113.i = phi ptr [ %i.aiq, %.lr.ph.i109 ], [ %i.aio, %.lr.ph16.i ] ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !132 ; 2 uses
  call void @free(ptr noundef nonnull %.01113.i) #18
  %.not.i110 = icmp eq ptr %i.aiq, null
  br i1 %.not.i110, label %._crit_edge.loopexit.i, label %.lr.ph.i109, !llvm.loop !166

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i109
  %.pre.i111 = load i64, ptr %i.te, align 8, !tbaa !144
  br label %._crit_edge.i112

._crit_edge.i112:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph16.i
  %i.air = phi i64 [ %.pre.i111, %._crit_edge.loopexit.i ], [ %i.ail, %.lr.ph16.i ] ; 2 uses
  %i.ais = add nuw i64 %.014.i, 1                 ; 2 uses
  %i.ait = icmp ult i64 %i.ais, %i.air
  br i1 %i.ait, label %.lr.ph16.i, label %freeTripoly.exit, !llvm.loop !167

freeTripoly.exit:                                 ; preds = %._crit_edge.i112, %genroute.exit
  %i.aiu = load ptr, ptr %i.tf, align 8, !tbaa !148
  call void @free(ptr noundef %i.aiu) #18
  call void @free(ptr noundef nonnull %i.sk) #18
  br label %bb.dt

bb.dt:                                            ; preds = %triPath.exit, %freeTripoly.exit
  %.060 = phi i32 [ %.1.i93, %freeTripoly.exit ], [ -1, %triPath.exit ]
  %i.aiv = load i32, ptr %i.s, align 8, !tbaa !67 ; 3 uses
  %i.aiw = icmp sgt i32 %i.aiv, 0
  br i1 %i.aiw, label %.lr.ph.preheader.i, label %resetGraph.exit

.lr.ph.preheader.i:                               ; preds = %bb.dt
  %.val66 = load ptr, ptr %i.v, align 8, !tbaa !20 ; 2 uses
  %wide.trip.count.i114 = zext nneg i32 %i.aiv to i64 ; 2 uses
  %xtraiter435 = and i64 %wide.trip.count.i114, 7 ; 3 uses
  %i.aix = icmp ult i32 %i.aiv, 8
  br i1 %i.aix, label %.lr.ph.i115.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter439 = and i64 %wide.trip.count.i114, 2147483640
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.lr.ph.i115, %.lr.ph.preheader.i.new
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i117.7, %.lr.ph.i115 ] ; 9 uses
  %.02.i = phi ptr [ %.val66, %.lr.ph.preheader.i.new ], [ %i.akc, %.lr.ph.i115 ] ; 9 uses
  %niter440 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter440.next.7, %.lr.ph.i115 ]
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.aiz = load i64, ptr %i.aiy, align 8, !tbaa !75
  store i64 %i.aiz, ptr %.02.i, align 8, !tbaa !86
  %i.aja = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !75
  store i64 %i.ajd, ptr %i.aja, align 8, !tbaa !86
  %i.aje = getelementptr inbounds nuw i8, ptr %.02.i, i64 64
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !75
  store i64 %i.ajh, ptr %i.aje, align 8, !tbaa !86
  %i.aji = getelementptr inbounds nuw i8, ptr %.02.i, i64 96
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 24
  %i.ajl = load i64, ptr %i.ajk, align 8, !tbaa !75
  store i64 %i.ajl, ptr %i.aji, align 8, !tbaa !86
  %i.ajm = getelementptr inbounds nuw i8, ptr %.02.i, i64 128
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 32
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !75
  store i64 %i.ajp, ptr %i.ajm, align 8, !tbaa !86
  %i.ajq = getelementptr inbounds nuw i8, ptr %.02.i, i64 160
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 40
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !75
  store i64 %i.ajt, ptr %i.ajq, align 8, !tbaa !86
  %i.aju = getelementptr inbounds nuw i8, ptr %.02.i, i64 192
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 48
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !75
  store i64 %i.ajx, ptr %i.aju, align 8, !tbaa !86
  %i.ajy = getelementptr inbounds nuw i8, ptr %.02.i, i64 224
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 56
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !75
  store i64 %i.akb, ptr %i.ajy, align 8, !tbaa !86
  %i.akc = getelementptr inbounds nuw i8, ptr %.02.i, i64 256 ; 2 uses
  %indvars.iv.next.i117.7 = add nuw nsw i64 %indvars.iv.i116, 8 ; 2 uses
  %niter440.next.7 = add i64 %niter440, 8         ; 2 uses
  %niter440.ncmp.7 = icmp eq i64 %niter440.next.7, %unroll_iter439
  br i1 %niter440.ncmp.7, label %resetGraph.exit.loopexit.unr-lcssa, label %.lr.ph.i115, !llvm.loop !168

resetGraph.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i115
  %lcmp.mod437.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod437.not, label %resetGraph.exit, label %.lr.ph.i115.epil.preheader

.lr.ph.i115.epil.preheader:                       ; preds = %resetGraph.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i116.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i117.7, %resetGraph.exit.loopexit.unr-lcssa ]
  %.02.i.epil.init = phi ptr [ %.val66, %.lr.ph.preheader.i ], [ %i.akc, %resetGraph.exit.loopexit.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter435, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %.lr.ph.i115.epil
end_hunk_1
