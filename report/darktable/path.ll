Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_pts_border:bb.a
  %.018.i98.i = phi i64 [ %i.ru, %.preheader.i97.i ], [ %i.rs, %bb.bw ] ; 3 uses
  %.not19.i99.i = icmp ult i64 %i.rr, %.018.i98.i
  %i.ru = shl i64 %.018.i98.i, 1
  br i1 %.not19.i99.i, label %bb.bx, label %.preheader.i97.i

bb.bx:                                            ; preds = %.preheader.i97.i
  %i.rv = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %.0378, i64 noundef %.018.i98.i)
  %.not20.not.i100.i = icmp eq i32 %i.rv, 0
  br i1 %.not20.not.i100.i, label %dt_masks_dynbuf_reserve_n.exit106.i, label %._crit_edge.i101.i

._crit_edge.i101.i:                               ; preds = %bb.bx
  %.pre.i102.i = load i64, ptr %i.gz, align 8, !tbaa !240 ; 2 uses
  %.pre21.i103.i = add i64 %.pre.i102.i, %i.rh
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.i101.i, %dt_masks_dynbuf_reserve_n.exit.i
  %.pre-phi.i104.i = phi i64 [ %.pre21.i103.i, %._crit_edge.i101.i ], [ %i.rr, %dt_masks_dynbuf_reserve_n.exit.i ]
  %i.rw = phi i64 [ %.pre.i102.i, %._crit_edge.i101.i ], [ %i.rq, %dt_masks_dynbuf_reserve_n.exit.i ]
  %i.rx = load ptr, ptr %.0378, align 8, !tbaa !234
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.rw
  store i64 %.pre-phi.i104.i, ptr %i.gz, align 8, !tbaa !240
  br label %dt_masks_dynbuf_reserve_n.exit106.i

dt_masks_dynbuf_reserve_n.exit106.i:              ; preds = %bb.by, %bb.bx, %bb.bw
  %.1.i105.i = phi ptr [ null, %bb.bx ], [ %i.ry, %bb.by ], [ null, %bb.bw ] ; 2 uses
  %.not.i532 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i532, label %.critedge427, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %dt_masks_dynbuf_reserve_n.exit106.i
  %sincos9.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.qm) ; 2 uses
  %i.rz = add nsw i32 %.084.i, -1                 ; 3 uses
  %xtraiter = and i32 %i.rz, 1
  %i.sa = icmp eq i32 %.084.i, 2
  br i1 %i.sa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.rz, -2
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.qg, %i.qg
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cb, %.lr.ph.preheader.i.new
  %.08319.pn.i = phi float [ %i.pv, %.lr.ph.preheader.i.new ], [ %.08319.i.1, %bb.cb ]
  %sincos.pn.i = phi { float, float } [ %sincos9.i, %.lr.ph.preheader.i.new ], [ %sincos.i.1, %bb.cb ] ; 2 uses
  %.08015.i = phi ptr [ %.1.i105.i, %.lr.ph.preheader.i.new ], [ %.1.i534.1, %bb.cb ] ; 4 uses
  %.08114.i = phi ptr [ %.1.i.i, %.lr.ph.preheader.i.new ], [ %i.sj, %bb.cb ] ; 3 uses
  %.08213.i = phi float [ %i.qm, %.lr.ph.preheader.i.new ], [ %.reass947, %bb.cb ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.cb ]
  %.08319.i = fadd reassoc nsz arcp contract afn float %.08319.pn.i, %i.qj ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.08114.i, i64 8
  store <2 x float> %i.kf, ptr %.08114.i, align 4, !tbaa !11
  %.not91.i = icmp eq ptr %.08015.i, null
  br i1 %.not91.i, label %.lr.ph.i.1, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i
  %sin17.i = extractvalue { float, float } %sincos.pn.i, 0
  %cos18.i = extractvalue { float, float } %sincos.pn.i, 1
  %i.sc = fmul reassoc nsz arcp contract afn float %cos18.i, %.08319.i
  %i.sd = fadd reassoc nsz arcp contract afn float %i.sc, %i.kh
  %i.se = getelementptr inbounds nuw i8, ptr %.08015.i, i64 4
  store float %i.sd, ptr %.08015.i, align 4, !tbaa !11
  %i.sf = fmul reassoc nsz arcp contract afn float %sin17.i, %.08319.i
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.kg
  %i.sh = getelementptr inbounds nuw i8, ptr %.08015.i, i64 8
  store float %i.sg, ptr %i.se, align 4, !tbaa !11
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bz, %.lr.ph.i
  %.1.i534 = phi ptr [ %i.sh, %bb.bz ], [ null, %.lr.ph.i ] ; 4 uses
  %i.si = fadd reassoc nsz arcp contract afn float %.08213.i, %i.qg
  %.08319.i.1 = fadd reassoc nsz arcp contract afn float %.08319.i, %i.qj ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.08114.i, i64 16 ; 2 uses
  store <2 x float> %i.kf, ptr %i.sb, align 4, !tbaa !11
  %.not91.i.1 = icmp eq ptr %.1.i534, null
  br i1 %.not91.i.1, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.1
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.si) ; 2 uses
  %sin17.i.1 = extractvalue { float, float } %sincos.i, 0
  %cos18.i.1 = extractvalue { float, float } %sincos.i, 1
  %i.sk = fmul reassoc nsz arcp contract afn float %cos18.i.1, %.08319.i.1
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.kh
  %i.sm = getelementptr inbounds nuw i8, ptr %.1.i534, i64 4
  store float %i.sl, ptr %.1.i534, align 4, !tbaa !11
  %i.sn = fmul reassoc nsz arcp contract afn float %sin17.i.1, %.08319.i.1
  %i.so = fadd reassoc nsz arcp contract afn float %i.sn, %i.kg
  %i.sp = getelementptr inbounds nuw i8, ptr %.1.i534, i64 8
  store float %i.so, ptr %i.sm, align 4, !tbaa !11
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i.1
  %.1.i534.1 = phi ptr [ %i.sp, %bb.ca ], [ null, %.lr.ph.i.1 ] ; 2 uses
  %.reass947 = fadd reassoc nsz arcp contract afn float %.08213.i, %invariant.op ; 2 uses
  %sincos.i.1 = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.reass947) ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge427.loopexit.unr-lcssa, label %.lr.ph.i

.critedge427.loopexit.unr-lcssa:                  ; preds = %bb.cb
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge427, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.critedge427.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.08319.pn.i.epil.init = phi float [ %i.pv, %.lr.ph.preheader.i ], [ %.08319.i.1, %.critedge427.loopexit.unr-lcssa ]
  %sincos.pn.i.epil.init = phi { float, float } [ %sincos9.i, %.lr.ph.preheader.i ], [ %sincos.i.1, %.critedge427.loopexit.unr-lcssa ] ; 2 uses
  %.08015.i.epil.init = phi ptr [ %.1.i105.i, %.lr.ph.preheader.i ], [ %.1.i534.1, %.critedge427.loopexit.unr-lcssa ] ; 3 uses
  %.08114.i.epil.init = phi ptr [ %.1.i.i, %.lr.ph.preheader.i ], [ %i.sj, %.critedge427.loopexit.unr-lcssa ]
  %lcmp.mod928 = trunc i32 %i.rz to i1
  call void @llvm.assume(i1 %lcmp.mod928)
  store <2 x float> %i.kf, ptr %.08114.i.epil.init, align 4, !tbaa !11
  %.not91.i.epil = icmp eq ptr %.08015.i.epil.init, null
  br i1 %.not91.i.epil, label %.critedge427, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.epil.preheader
  %.08319.i.epil = fadd reassoc nsz arcp contract afn float %.08319.pn.i.epil.init, %i.qj ; 2 uses
  %sin17.i.epil = extractvalue { float, float } %sincos.pn.i.epil.init, 0
  %cos18.i.epil = extractvalue { float, float } %sincos.pn.i.epil.init, 1
  %i.sq = fmul reassoc nsz arcp contract afn float %cos18.i.epil, %.08319.i.epil
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sq, %i.kh
  %i.ss = getelementptr inbounds nuw i8, ptr %.08015.i.epil.init, i64 4
  store float %i.sr, ptr %.08015.i.epil.init, align 4, !tbaa !11
  %i.st = fmul reassoc nsz arcp contract afn float %sin17.i.epil, %.08319.i.epil
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, %i.kg
  store float %i.su, ptr %i.ss, align 4, !tbaa !11
  br label %.critedge427

.critedge427:                                     ; preds = %.critedge427.loopexit.unr-lcssa, %bb.cc, %.lr.ph.i.epil.preheader, %dt_masks_dynbuf_reserve_n.exit106.i, %bb.bo, %_path_is_clockwise.exit527, %dt_masks_dynbuf_add_2.exit506.thread, %bb.bk, %dt_masks_dynbuf_add_2.exit513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.fm
  br i1 %exitcond.not, label %._crit_edge621, label %bb.an

bb.cd:                                            ; preds = %dt_masks_dynbuf_free.exit491
  %i.sv = getelementptr i8, ptr %.0378, i64 136   ; 2 uses
  %.0378.val = load i64, ptr %i.sv, align 8, !tbaa !240
  %i.sw = lshr i64 %.0378.val, 1
  %i.sx = trunc i64 %i.sw to i32
  store i32 %i.sx, ptr %8, align 4, !tbaa !28
  %i.sy = load ptr, ptr %.0378, align 8, !tbaa !234
  store ptr null, ptr %.0378, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i8 0, i64 16, i1 false)
  store ptr %i.sy, ptr %7, align 8, !tbaa !135
  %i.sz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ta = and i32 %i.sz, 4096
  %.not.i535 = icmp eq i32 %i.ta, 0
  br i1 %.not.i535, label %dt_masks_dynbuf_free.exit536, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tb = getelementptr inbounds nuw i8, ptr %.0378, i64 8
  %i.tc = load ptr, ptr %.0378, align 8, !tbaa !234
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.tb, ptr noundef %i.tc) #25
  br label %dt_masks_dynbuf_free.exit536

dt_masks_dynbuf_free.exit536:                     ; preds = %bb.cd, %bb.ce
  %i.td = load ptr, ptr %.0378, align 8, !tbaa !234
  call void @free(ptr noundef %i.td) #25
  call void @free(ptr noundef nonnull %.0378) #25
  br label %bb.cf

bb.cf:                                            ; preds = %dt_masks_dynbuf_free.exit491, %dt_masks_dynbuf_free.exit536
  %i.te = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.tf = and i32 %i.te, 4112
  %or.cond430.not = icmp eq i32 %i.tf, 4112
  br i1 %or.cond430.not, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.th = call i32 @gettimeofday(ptr noundef nonnull %14, ptr noundef null) #25 ; 0 uses
  %i.ti = load i64, ptr %14, align 8, !tbaa !132
  %i.tj = add nsw i64 %i.ti, -1290608000
  %i.tk = sitofp reassoc nsz arcp contract afn i64 %i.tj to double
  %i.tl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !134
  %i.tn = sitofp reassoc nsz arcp contract afn i64 %i.tm to double
  %i.to = fmul reassoc nnan nsz arcp contract afn double %i.tn, f0x3EB0C6F7A0B5ED8D
  %i.tp = fadd reassoc nsz arcp contract afn double %i.to, %i.tk ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.tq = fsub reassoc nsz arcp contract afn double %i.tp, %.0571
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.tg, double noundef %i.tq) #25
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1572 = phi nsz double [ %.0571, %bb.cf ], [ %i.tp, %bb.cg ] ; 3 uses
  br i1 %i.aj, label %bb.ci, label %bb.el

bb.ci:                                            ; preds = %bb.ch
  %i.tr = load ptr, ptr %7, align 8, !tbaa !135   ; 7 uses
  %i.ts = load i32, ptr %8, align 4, !tbaa !28    ; 9 uses
  %i.tt = icmp eq i32 %i.ts, 0
  %or.cond.i537 = or i1 %.not630, %i.tt
  br i1 %or.cond.i537, label %_path_find_self_intersection.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tu = mul nuw nsw i32 %i.ai, 3                ; 8 uses
  %i.tv = sub nsw i32 %i.ts, %i.tu                ; 9 uses
  %i.tw = icmp slt i32 %i.tu, %i.ts               ; 2 uses
  br i1 %i.tw, label %.lr.ph.i551, label %bb.ck

.lr.ph.i551:                                      ; preds = %bb.cj
  %17 = zext nneg i32 %i.tu to i64
  %wide.trip.count.i = zext nneg i32 %i.ts to i64
  br label %bb.cl

._crit_edge.i553:                                 ; preds = %bb.co
  %i.tx = add nsw <2 x i32> %i.vr, splat (i32 1)
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i553, %bb.cj
  %.sroa.14.0.i = phi i32 [ %.0232375388.i, %._crit_edge.i553 ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.11.0.i = phi i32 [ %.0232375385.i, %._crit_edge.i553 ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.6459.0.i = phi i32 [ %.0232375382.i, %._crit_edge.i553 ], [ 0, %bb.cj ] ; 18 uses
  %.0232369.lcssa.i = phi i32 [ %.0232368.i, %._crit_edge.i553 ], [ -1, %bb.cj ] ; 2 uses
  %i.ty = phi <2 x i32> [ %i.tx, %._crit_edge.i553 ], [ splat (i32 -2147483647), %bb.cj ]
  %i.tz = phi <2 x i32> [ %i.vp, %._crit_edge.i553 ], [ splat (i32 2147483647), %bb.cj ] ; 3 uses
  %.not.i.i538 = icmp slt i32 %.0232369.lcssa.i, %.sroa.6459.0.i
  %i.ua = select i1 %.not.i.i538, i32 %i.tv, i32 0
  %i.ub = add nsw i32 %i.ua, %.0232369.lcssa.i
  %.not.i.2.i = icmp slt i32 %.sroa.11.0.i, %.sroa.6459.0.i
  %i.uc = select i1 %.not.i.2.i, i32 %i.tv, i32 0
  %i.ud = add nsw i32 %i.uc, %.sroa.11.0.i
  %.not.i.3.i = icmp slt i32 %.sroa.14.0.i, %.sroa.6459.0.i
  %i.ue = select i1 %.not.i.3.i, i32 %i.tv, i32 0
  %i.uf = add nsw i32 %i.ue, %.sroa.14.0.i
  %i.ug = add i32 %i.tv, -1
  %i.uh = add i32 %i.ug, %.sroa.6459.0.i          ; 2 uses
  %i.ui = sub <2 x i32> %i.ty, %i.tz
  %i.uj = add <2 x i32> %i.ui, splat (i32 1)      ; 2 uses
  %i.uk = extractelement <2 x i32> %i.uj, i64 0   ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %i.um = extractelement <2 x i32> %i.uj, i64 1   ; 4 uses
  %i.un = sext i32 %i.um to i64
  %i.uo = mul nsw i64 %i.ul, %i.un                ; 3 uses
  %i.up = icmp ult i64 %i.uo, 10
  %i.uq = or i32 %i.uk, %i.um
  %i.ur = icmp slt i32 %i.uq, 0
  %or.cond7.i = or i1 %i.ur, %i.up
  br i1 %or.cond7.i, label %_path_find_self_intersection.exit, label %bb.cp

bb.cl:                                            ; preds = %bb.co, %.lr.ph.i551
  %indvars.iv.i = phi i64 [ %17, %.lr.ph.i551 ], [ %indvars.iv.next.i, %bb.co ] ; 3 uses
  %.0232375387.i = phi i32 [ 0, %.lr.ph.i551 ], [ %.0232375388.i, %bb.co ]
  %.0232375384.i = phi i32 [ 0, %.lr.ph.i551 ], [ %.0232375385.i, %bb.co ]
  %.0232375381.i = phi i32 [ 0, %.lr.ph.i551 ], [ %.0232375382.i, %bb.co ]
  %.0232369370.i = phi i32 [ -1, %.lr.ph.i551 ], [ %.0232368.i, %bb.co ]
  %i.us = phi <2 x i32> [ splat (i32 -2147483648), %.lr.ph.i551 ], [ %i.vr, %bb.co ] ; 2 uses
  %i.ut = phi <2 x i32> [ splat (i32 2147483647), %.lr.ph.i551 ], [ %i.vp, %bb.co ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.idx.i ; 4 uses
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !11 ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn oeq float %i.uv, f0xFF7FFFFF
  br i1 %i.uw, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ux = getelementptr i8, ptr %i.uu, i64 4
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !11 ; 2 uses
  %i.uz = fcmp reassoc nsz arcp contract afn oeq float %i.uy, f0xFF7FFFFF
  %i.va = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.vb = insertelement <2 x float> %i.va, float %i.uy, i64 1
  br i1 %i.uz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.vc = getelementptr i8, ptr %i.uu, i64 -8
  %i.vd = load <2 x float>, ptr %i.vc, align 4, !tbaa !11 ; 2 uses
  store <2 x float> %i.vd, ptr %i.uu, align 4, !tbaa !11
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ve = phi <2 x float> [ %i.vd, %bb.cn ], [ %i.vb, %bb.cm ]
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.vg = sitofp <2 x i32> %i.ut to <2 x float>
  %i.vh = fptosi <2 x float> %i.vf to <2 x i32>   ; 2 uses
  %i.vi = trunc nsw i64 %indvars.iv.i to i32      ; 4 uses
  %i.vj = sitofp <2 x i32> %i.us to <2 x float>
  %i.vk = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vf, %i.vg ; 3 uses
  %i.vl = extractelement <2 x i1> %i.vk, i64 1
  %.0232368.i = select i1 %i.vl, i32 %i.vi, i32 %.0232369370.i ; 2 uses
  %i.vm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vf, %i.vj ; 3 uses
  %i.vn = extractelement <2 x i1> %i.vm, i64 1
  %.0232375382.i = select i1 %i.vn, i32 %i.vi, i32 %.0232375381.i ; 2 uses
  %i.vo = extractelement <2 x i1> %i.vk, i64 0
  %.0232375385.i = select i1 %i.vo, i32 %i.vi, i32 %.0232375384.i ; 2 uses
  %i.vp = select <2 x i1> %i.vk, <2 x i32> %i.vh, <2 x i32> %i.ut ; 2 uses
  %i.vq = extractelement <2 x i1> %i.vm, i64 0
  %.0232375388.i = select i1 %i.vq, i32 %i.vi, i32 %.0232375387.i ; 2 uses
  %i.vr = select <2 x i1> %i.vm, <2 x i32> %i.vh, <2 x i32> %i.us ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i552 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i552, label %._crit_edge.i553, label %bb.cl

bb.cp:                                            ; preds = %bb.ck
  %i.vs = shl i64 %i.uo, 2                        ; 2 uses
  %i.vt = call ptr @dt_alloc_aligned(i64 noundef %i.vs) #25 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vt, i64 64) ]
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %_path_find_self_intersection.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.vt, i8 0, i64 %i.vs, i1 false)
  %i.vv = call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 100000, ptr noundef nonnull @.str.34) ; 14 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %.sink.split.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %invariant.op.i = sub i32 %.sroa.6459.0.i, %i.tu
  br i1 %i.tw, label %.lr.ph414.i, label %.thread347.i

.lr.ph414.i:                                      ; preds = %bb.cr
  %i.vx = shl i32 %.sroa.6459.0.i, 1              ; 2 uses
  %i.vy = add i32 %i.vx, -1
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.vz
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !11
  %i.wc = fptosi float %i.wb to i32
  %i.wd = add i32 %i.vx, -2
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.we
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !11
  %i.wh = fptosi float %i.wg to i32
  %i.wi = shl nuw nsw i32 %i.ai, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vv, i64 136 ; 10 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vv, i64 144 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 9 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.az, i64 144 ; 3 uses
  %i.wp = insertelement <4 x i32> poison, i32 %i.ub, i64 0
  %i.wq = insertelement <4 x i32> %i.wp, i32 %.sroa.6459.0.i, i64 1
  %i.wr = insertelement <4 x i32> %i.wq, i32 %i.ud, i64 2
  %i.ws = insertelement <4 x i32> %i.wr, i32 %i.uf, i64 3 ; 2 uses
  %i.wt = extractelement <2 x i32> %i.tz, i64 0   ; 2 uses
  %i.wu = extractelement <2 x i32> %i.tz, i64 1   ; 2 uses
  %invariant.op948 = sub i32 1, %i.wt
  %invariant.op949 = sub i32 1, %i.wu
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge405.i, %.lr.ph414.i
  %.0219412.i = phi i32 [ %i.tu, %.lr.ph414.i ], [ %i.agm, %._crit_edge405.i ] ; 2 uses
  %.0220411.i = phi i32 [ %i.wc, %.lr.ph414.i ], [ %.1221.lcssa.i, %._crit_edge405.i ] ; 6 uses
  %.0222410.i = phi i32 [ %i.wh, %.lr.ph414.i ], [ %.1223.lcssa.i, %._crit_edge405.i ] ; 7 uses
  %.0241409.i = phi i32 [ 0, %.lr.ph414.i ], [ %.1242.lcssa.i, %._crit_edge405.i ] ; 4 uses
  %.reass.i = add i32 %.0219412.i, %invariant.op.i ; 2 uses
  %.not.i539 = icmp slt i32 %.reass.i, %i.ts
  %i.wv = select i1 %.not.i539, i32 0, i32 %i.tv
  %spec.select.i540 = sub nsw i32 %.reass.i, %i.wv ; 10 uses
  %.not277.i = icmp slt i32 %.0241409.i, %i.wi
  br i1 %.not277.i, label %bb.ct, label %.thread347.i

bb.ct:                                            ; preds = %bb.cs
  %i.ww = shl nsw i32 %spec.select.i540, 1
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.wx
  %i.wz = load <2 x float>, ptr %i.wy, align 4, !tbaa !11
  %i.xa = fptosi <2 x float> %i.wz to <2 x i32>   ; 4 uses
  store i64 0, ptr %i.wj, align 8, !tbaa !240
  %i.xb = sitofp <2 x i32> %i.xa to <2 x float>
  %i.xc = load i64, ptr %i.wk, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.xc, 2
  br i1 %.not.i.i.i, label %bb.cw, label %bb.cu, !prof !242

bb.cu:                                            ; preds = %bb.ct
  %i.xd = icmp eq i64 %i.xc, 0
  br i1 %i.xd, label %dt_masks_dynbuf_add_2.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xe = shl nuw nsw i64 %i.xc, 1
  %i.xf = add nuw nsw i64 %i.xe, 2
  %i.xg = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vv, i64 noundef %i.xf)
  %.not11.i.i.i = icmp eq i32 %i.xg, 0
  br i1 %.not11.i.i.i, label %dt_masks_dynbuf_add_2.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cv
  %.pre.i.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i.i.i = add i64 %.pre.i.i.i, 2
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i.i.i, %bb.ct
  %.pre-phi.i.i.i = phi i64 [ %.pre12.i.i.i, %._crit_edge.i.i.i ], [ 2, %bb.ct ]
  %i.xh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ 0, %bb.ct ]
  %i.xi = load ptr, ptr %i.vv, align 8, !tbaa !234
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %i.xh
  store i64 %.pre-phi.i.i.i, ptr %i.wj, align 8, !tbaa !240
  store <2 x float> %i.xb, ptr %i.xj, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit.i.i

dt_masks_dynbuf_add_2.exit.i.i:                   ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.xk = extractelement <2 x i32> %i.xa, i64 0   ; 3 uses
  %i.xl = sub nsw i32 %i.xk, %.0222410.i          ; 4 uses
  %i.xm = icmp sgt i32 %i.xl, 1
  br i1 %i.xm, label %.preheader147.i.i, label %bb.da

.preheader147.i.i:                                ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %.077168.i.i = add nsw i32 %i.xk, -1
  %i.xn = extractelement <2 x i32> %i.xa, i64 1
  %i.xo = sub nsw i32 %i.xn, %.0220411.i
  %i.xp = uitofp nneg i32 %i.xl to float
  %i.xq = sitofp reassoc nsz arcp contract afn i32 %.0220411.i to float
  %i.xr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xp
  br label %.preheader.i.i550

.preheader.i.i550:                                ; preds = %dt_masks_dynbuf_add_2.exit106.i.i, %.preheader147.i.i
  %.077169.i.i = phi i32 [ %.077168.i.i, %.preheader147.i.i ], [ %.077.i.i, %dt_masks_dynbuf_add_2.exit106.i.i ] ; 3 uses
  %i.xs = sub nsw i32 %.077169.i.i, %.0222410.i
  %i.xt = mul nsw i32 %i.xs, %i.xo
  %i.xu = sitofp reassoc nsz arcp contract afn i32 %i.xt to float
  %i.xv = fmul reassoc nsz arcp contract afn float %i.xu, %i.xr
  %i.xw = fadd reassoc nsz arcp contract afn float %i.xv, %i.xq
  %i.xx = fptosi float %i.xw to i32
  %i.xy = sitofp reassoc nsz arcp contract afn i32 %.077169.i.i to float
  %i.xz = sitofp reassoc nsz arcp contract afn i32 %i.xx to float
  %i.ya = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %i.yb = add i64 %i.ya, 2                        ; 2 uses
  %i.yc = load i64, ptr %i.wk, align 8, !tbaa !241 ; 3 uses
  %.not.i100.i.i = icmp ult i64 %i.yb, %i.yc
  br i1 %.not.i100.i.i, label %bb.cz, label %bb.cx, !prof !242

bb.cx:                                            ; preds = %.preheader.i.i550
  %i.yd = icmp eq i64 %i.yc, 0
  br i1 %i.yd, label %dt_masks_dynbuf_add_2.exit106.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ye = shl i64 %i.yc, 1
  %i.yf = add i64 %i.ye, 2
  %i.yg = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vv, i64 noundef %i.yf)
  %.not11.i101.i.i = icmp eq i32 %i.yg, 0
  br i1 %.not11.i101.i.i, label %dt_masks_dynbuf_add_2.exit106.i.i, label %._crit_edge.i102.i.i

._crit_edge.i102.i.i:                             ; preds = %bb.cy
  %.pre.i103.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i104.i.i = add i64 %.pre.i103.i.i, 2
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i102.i.i, %.preheader.i.i550
  %.pre-phi.i105.i.i = phi i64 [ %.pre12.i104.i.i, %._crit_edge.i102.i.i ], [ %i.yb, %.preheader.i.i550 ]
  %i.yh = phi i64 [ %.pre.i103.i.i, %._crit_edge.i102.i.i ], [ %i.ya, %.preheader.i.i550 ]
  %i.yi = load ptr, ptr %i.vv, align 8, !tbaa !234
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %i.yh ; 2 uses
  store float %i.xy, ptr %i.yj, align 4, !tbaa !11
  store i64 %.pre-phi.i105.i.i, ptr %i.wj, align 8, !tbaa !240
  %i.yk = getelementptr i8, ptr %i.yj, i64 4
  store float %i.xz, ptr %i.yk, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit106.i.i

dt_masks_dynbuf_add_2.exit106.i.i:                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.077.i.i = add nsw i32 %.077169.i.i, -1        ; 2 uses
  %i.yl = icmp sgt i32 %.077.i.i, %.0222410.i
  br i1 %i.yl, label %.preheader.i.i550, label %_path_fill_gaps.exit.i

bb.da:                                            ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %i.ym = icmp slt i32 %i.xl, -1
  br i1 %i.ym, label %.preheader153.i.i, label %_path_fill_gaps.exit.i

.preheader153.i.i:                                ; preds = %bb.da
  %.074160.i.i = add nsw i32 %i.xk, 1
  %i.yn = extractelement <2 x i32> %i.xa, i64 1
  %i.yo = sub nsw i32 %i.yn, %.0220411.i
  %i.yp = sitofp reassoc nsz arcp contract afn i32 %i.xl to float
  %i.yq = sitofp reassoc nsz arcp contract afn i32 %.0220411.i to float
  %i.yr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yp
  br label %.preheader149.i.i

.preheader149.i.i:                                ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %.preheader153.i.i
  %.074161.i.i = phi i32 [ %.074160.i.i, %.preheader153.i.i ], [ %.074.i.i, %dt_masks_dynbuf_add_2.exit127.i.i ] ; 3 uses
  %i.ys = sub nsw i32 %.074161.i.i, %.0222410.i
  %i.yt = mul nsw i32 %i.ys, %i.yo
  %i.yu = sitofp reassoc nsz arcp contract afn i32 %i.yt to float
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, %i.yr
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yv, %i.yq
  %i.yx = fptosi float %i.yw to i32
  %i.yy = sitofp reassoc nsz arcp contract afn i32 %.074161.i.i to float
  %i.yz = sitofp reassoc nsz arcp contract afn i32 %i.yx to float
  %i.za = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %i.zb = add i64 %i.za, 2                        ; 2 uses
  %i.zc = load i64, ptr %i.wk, align 8, !tbaa !241 ; 3 uses
  %.not.i121.i.i = icmp ult i64 %i.zb, %i.zc
  br i1 %.not.i121.i.i, label %bb.dd, label %bb.db, !prof !242

bb.db:                                            ; preds = %.preheader149.i.i
  %i.zd = icmp eq i64 %i.zc, 0
  br i1 %i.zd, label %dt_masks_dynbuf_add_2.exit127.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ze = shl i64 %i.zc, 1
  %i.zf = add i64 %i.ze, 2
  %i.zg = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vv, i64 noundef %i.zf)
  %.not11.i122.i.i = icmp eq i32 %i.zg, 0
  br i1 %.not11.i122.i.i, label %dt_masks_dynbuf_add_2.exit127.i.i, label %._crit_edge.i123.i.i

._crit_edge.i123.i.i:                             ; preds = %bb.dc
  %.pre.i124.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i125.i.i = add i64 %.pre.i124.i.i, 2
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i123.i.i, %.preheader149.i.i
  %.pre-phi.i126.i.i = phi i64 [ %.pre12.i125.i.i, %._crit_edge.i123.i.i ], [ %i.zb, %.preheader149.i.i ]
  %i.zh = phi i64 [ %.pre.i124.i.i, %._crit_edge.i123.i.i ], [ %i.za, %.preheader149.i.i ]
  %i.zi = load ptr, ptr %i.vv, align 8, !tbaa !234
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %i.zh ; 2 uses
  store float %i.yy, ptr %i.zj, align 4, !tbaa !11
  store i64 %.pre-phi.i126.i.i, ptr %i.wj, align 8, !tbaa !240
  %i.zk = getelementptr i8, ptr %i.zj, i64 4
  store float %i.yz, ptr %i.zk, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit127.i.i

dt_masks_dynbuf_add_2.exit127.i.i:                ; preds = %bb.dd, %bb.dc, %bb.db
  %.074.i.i = add i32 %.074161.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %.074.i.i, %.0222410.i
  br i1 %exitcond.not.i.i, label %_path_fill_gaps.exit.i, label %.preheader149.i.i

_path_fill_gaps.exit.i:                           ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %dt_masks_dynbuf_add_2.exit106.i.i, %bb.da
  %.val.i541 = load i64, ptr %i.wj, align 8, !tbaa !240
  %i.zl = lshr i64 %.val.i541, 1
  %i.zm = trunc i64 %i.zl to i32
  %.0217399.i = add i32 %i.zm, -1                 ; 2 uses
  %i.zn = icmp sgt i32 %.0217399.i, -1
  br i1 %i.zn, label %.lr.ph404.i, label %._crit_edge405.i

.lr.ph404.i:                                      ; preds = %_path_fill_gaps.exit.i
  %i.zo = add nsw i32 %spec.select.i540, -1
  %.not.i294.i = icmp slt i32 %spec.select.i540, %.sroa.6459.0.i
end_hunk_0
begin_hunk_1_@_path_get_pts_border:bb.a
  %i.ajj = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.ajj) #25
  br label %dt_masks_intbuf_free.exit557

dt_masks_intbuf_free.exit557:                     ; preds = %dt_masks_dynbuf_free.exit555, %bb.eu
  %i.ajk = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void @free(ptr noundef %i.ajk) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  br label %.critedge438

bb.ev:                                            ; preds = %bb.el
  %i.ajl = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.ahf, i64 noundef %i.ahh) #25
  %.not405 = icmp eq i32 %i.ajl, 0
  br i1 %.not405, label %bb.fq, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.aj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ajm = load ptr, ptr %7, align 8, !tbaa !135
  %i.ajn = load i32, ptr %8, align 4, !tbaa !28
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.ajm, i64 noundef %i.ajo) #25
  %.not406 = icmp eq i32 %i.ajp, 0
  br i1 %.not406, label %bb.fq, label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.ajq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ajr = and i32 %i.ajq, 4112
  %or.cond433.not = icmp eq i32 %i.ajr, 4112
  br i1 %or.cond433.not, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ajt = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #25 ; 0 uses
  %i.aju = load i64, ptr %11, align 8, !tbaa !132
  %i.ajv = add nsw i64 %i.aju, -1290608000
  %i.ajw = sitofp reassoc nsz arcp contract afn i64 %i.ajv to double
  %i.ajx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !134
  %i.ajz = sitofp reassoc nsz arcp contract afn i64 %i.ajy to double
  %i.aka = fmul reassoc nnan nsz arcp contract afn double %i.ajz, f0x3EB0C6F7A0B5ED8D
  %i.akb = fadd reassoc nsz arcp contract afn double %i.aka, %i.ajw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.akc = fsub reassoc nsz arcp contract afn double %i.akb, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.ajs, double noundef %i.akc) #25
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.3 = phi nsz double [ %.2, %bb.ey ], [ %i.akb, %bb.ez ]
  br i1 %i.aj, label %.preheader595, label %.loopexit

.preheader595:                                    ; preds = %bb.fa
  br i1 %.not630, label %.preheader, label %.preheader594.lr.ph

.preheader594.lr.ph:                              ; preds = %.preheader595
  %i.akd = load ptr, ptr %7, align 8, !tbaa !135  ; 18 uses
  %min.iters.check846 = icmp ult i32 %i.ai, 5
  br i1 %min.iters.check846, label %.preheader594.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader594.lr.ph
  %scevgep = getelementptr nuw i8, ptr %i.akd, i64 8
  %i.ake = mul nuw nsw i64 %i.fm, 24              ; 2 uses
  %scevgep843 = getelementptr i8, ptr %i.akd, i64 %i.ake
  %scevgep844 = getelementptr i8, ptr %i.fo, i64 8
  %scevgep845 = getelementptr i8, ptr %i.fo, i64 %i.ake
  %bound0 = icmp ult ptr %scevgep, %scevgep845
  %bound1 = icmp ult ptr %scevgep844, %scevgep843
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader594.preheader, label %vector.ph847

vector.ph847:                                     ; preds = %vector.memcheck
  %i.akf = and i64 %i.fm, 3                       ; 2 uses
  %i.akg = icmp eq i64 %i.akf, 0
  %i.akh = select i1 %i.akg, i64 4, i64 %i.akf
  %n.vec848 = sub nsw i64 %i.fm, %i.akh           ; 2 uses
  br label %vector.body849

vector.body849:                                   ; preds = %vector.body849, %vector.ph847
  %index850 = phi i64 [ 0, %vector.ph847 ], [ %index.next859, %vector.body849 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph847 ], [ %vec.ind.next, %vector.body849 ] ; 2 uses
  %i.aki = mul nuw nsw <4 x i64> %vec.ind, splat (i64 6) ; 4 uses
  %i.akj = add nuw nsw <4 x i64> %i.aki, splat (i64 2) ; 2 uses
  %i.akk = extractelement <4 x i64> %i.akj, i64 0
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akk
  %wide.vec851 = load <24 x float>, ptr %i.akl, align 8, !tbaa !11, !alias.scope !251 ; 4 uses
  %strided.vec852 = shufflevector <24 x float> %wide.vec851, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec853 = shufflevector <24 x float> %wide.vec851, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec854 = shufflevector <24 x float> %wide.vec851, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %strided.vec855 = shufflevector <24 x float> %wide.vec851, <24 x float> poison, <4 x i32> <i32 3, i32 9, i32 15, i32 21>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.akd, <4 x i64> %i.akj
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec852, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %i.akm = add nuw nsw <4 x i64> %i.aki, splat (i64 3)
  %wide.gep856 = getelementptr inbounds nuw [4 x i8], ptr %i.akd, <4 x i64> %i.akm
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec853, <4 x ptr> align 4 %wide.gep856, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %i.akn = add nuw nsw <4 x i64> %i.aki, splat (i64 4)
  %wide.gep857 = getelementptr inbounds nuw [4 x i8], ptr %i.akd, <4 x i64> %i.akn
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec854, <4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %i.ako = add nuw nsw <4 x i64> %i.aki, splat (i64 5)
  %wide.gep858 = getelementptr inbounds nuw [4 x i8], ptr %i.akd, <4 x i64> %i.ako
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec855, <4 x ptr> align 4 %wide.gep858, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %index.next859 = add nuw i64 %index850, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.akp = icmp eq i64 %index.next859, %n.vec848
  br i1 %i.akp, label %.preheader594.preheader, label %vector.body849, !llvm.loop !256

.preheader594.preheader:                          ; preds = %vector.body849, %vector.memcheck, %.preheader594.lr.ph
  %indvars.iv655.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader594.lr.ph ], [ %n.vec848, %vector.body849 ] ; 5 uses
  %i.akq = sub nsw i64 %i.fm, %indvars.iv655.ph
  %xtraiter929 = and i64 %i.akq, 1
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod930.not, label %.preheader594.prol.loopexit, label %.preheader594.prol

.preheader594.prol:                               ; preds = %.preheader594.preheader
  %i.akr = mul nuw nsw i64 %indvars.iv655.ph, 6   ; 4 uses
  %i.aks = add nuw nsw i64 %i.akr, 2              ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.aks
  %i.aku = load float, ptr %i.akt, align 8, !tbaa !11
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.aks
  store float %i.aku, ptr %i.akv, align 4, !tbaa !11
  %i.akw = add nuw nsw i64 %i.akr, 3              ; 2 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akw
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !11
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akw
  store float %i.aky, ptr %i.akz, align 4, !tbaa !11
  %i.ala = add nuw nsw i64 %i.akr, 4              ; 2 uses
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ala
  %i.alc = load float, ptr %i.alb, align 8, !tbaa !11
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.ala
  store float %i.alc, ptr %i.ald, align 4, !tbaa !11
  %i.ale = add nuw nsw i64 %i.akr, 5              ; 2 uses
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ale
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !11
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.ale
  store float %i.alg, ptr %i.alh, align 4, !tbaa !11
  %indvars.iv.next656.prol = add nuw nsw i64 %indvars.iv655.ph, 1
  br label %.preheader594.prol.loopexit

.preheader594.prol.loopexit:                      ; preds = %.preheader594.prol, %.preheader594.preheader
  %indvars.iv655.unr = phi i64 [ %indvars.iv655.ph, %.preheader594.preheader ], [ %indvars.iv.next656.prol, %.preheader594.prol ]
  %i.ali = add nsw i64 %i.fm, -1
  %i.alj = icmp eq i64 %indvars.iv655.ph, %i.ali
  br i1 %i.alj, label %.preheader, label %.preheader594

.preheader594:                                    ; preds = %.preheader594.prol.loopexit, %.preheader594
  %indvars.iv655 = phi i64 [ %indvars.iv.next656.1, %.preheader594 ], [ %indvars.iv655.unr, %.preheader594.prol.loopexit ] ; 3 uses
  %i.alk = mul nuw nsw i64 %indvars.iv655, 6      ; 4 uses
  %i.all = add nuw nsw i64 %i.alk, 2              ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.all
  %i.aln = load float, ptr %i.alm, align 8, !tbaa !11
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.all
  store float %i.aln, ptr %i.alo, align 4, !tbaa !11
  %i.alp = add nuw nsw i64 %i.alk, 3              ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alp
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !11
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.alp
  store float %i.alr, ptr %i.als, align 4, !tbaa !11
  %i.alt = add nuw nsw i64 %i.alk, 4              ; 2 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alt
  %i.alv = load float, ptr %i.alu, align 8, !tbaa !11
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.alt
  store float %i.alv, ptr %i.alw, align 4, !tbaa !11
  %i.alx = add nuw nsw i64 %i.alk, 5              ; 2 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alx
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !11
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.alx
  store float %i.alz, ptr %i.ama, align 4, !tbaa !11
  %i.amb = mul nuw i64 %indvars.iv655, 6          ; 4 uses
  %i.amc = add nuw i64 %i.amb, 8                  ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amc
  %i.ame = load float, ptr %i.amd, align 8, !tbaa !11
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.amc
  store float %i.ame, ptr %i.amf, align 4, !tbaa !11
  %i.amg = add nuw i64 %i.amb, 9                  ; 2 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amg
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !11
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.amg
  store float %i.ami, ptr %i.amj, align 4, !tbaa !11
  %i.amk = add nuw i64 %i.amb, 10                 ; 2 uses
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amk
  %i.amm = load float, ptr %i.aml, align 8, !tbaa !11
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.amk
  store float %i.amm, ptr %i.amn, align 4, !tbaa !11
  %i.amo = add nuw i64 %i.amb, 11                 ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amo
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !11
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.amo
  store float %i.amq, ptr %i.amr, align 4, !tbaa !11
  %indvars.iv.next656.1 = add nuw nsw i64 %indvars.iv655, 2 ; 2 uses
  %exitcond659.not.1 = icmp eq i64 %indvars.iv.next656.1, %i.fm
  br i1 %exitcond659.not.1, label %.preheader, label %.preheader594, !llvm.loop !257

.preheader:                                       ; preds = %.preheader594.prol.loopexit, %.preheader594, %.preheader595
  %i.ams = icmp sgt i32 %.0369, 0
  br i1 %i.ams, label %.lr.ph625, label %.loopexit

.lr.ph625:                                        ; preds = %.preheader
  %.val464 = load ptr, ptr %i.az, align 8, !tbaa !234
  %i.amt = mul nuw nsw i32 %i.ai, 3
  %i.amu = mul i32 %i.ai, 6                       ; 2 uses
  %i.amv = zext i32 %i.amu to i64
  %i.amw = or disjoint i32 %i.amu, 1
  %i.amx = zext i32 %i.amw to i64                 ; 2 uses
  %wide.trip.count663 = zext nneg i32 %.0369 to i64
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph625, %bb.fl
  %indvars.iv660 = phi i64 [ 0, %.lr.ph625 ], [ %indvars.iv.next661, %bb.fl ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv660, 3
  %i.amy = getelementptr inbounds nuw i8, ptr %.val464, i64 %.idx ; 2 uses
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !11
  %i.ana = fptosi float %i.amz to i32             ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !11
  %i.and = fptosi float %i.anc to i32             ; 5 uses
  %.not411 = icmp sgt i32 %i.ana, %i.and
  br i1 %.not411, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ane = load ptr, ptr %7, align 8, !tbaa !135
  %i.anf = shl nsw i32 %i.ana, 1
  %i.ang = sext i32 %i.anf to i64
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %i.ang ; 2 uses
  store float f0xFF7FFFFF, ptr %i.anh, align 4, !tbaa !11
  %i.ani = sitofp reassoc nsz arcp contract afn i32 %i.and to float
  br label %bb.fl

bb.fd:                                            ; preds = %bb.fb
  %i.anj = icmp slt i32 %i.amt, %i.and
  %.pre677 = load ptr, ptr %7, align 8, !tbaa !135 ; 4 uses
  br i1 %i.anj, label %bb.fe, label %bb.fk

bb.fe:                                            ; preds = %bb.fd
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %.pre677, i64 %i.amv ; 2 uses
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !11
  %i.anm = fcmp reassoc nsz arcp contract afn oeq float %i.anl, f0xFF7FFFFF
  br i1 %i.anm, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %.pre677, i64 %i.amx ; 3 uses
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !11 ; 3 uses
  %i.anp = fcmp reassoc nsz arcp contract afn oeq float %i.ano, f0xFF7FFFFF
  %18 = uitofp nneg i32 %i.and to float           ; 3 uses
  br i1 %i.anp, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store float %18, ptr %i.ann, align 4, !tbaa !11
  br label %bb.fj

bb.fh:                                            ; preds = %bb.ff
  %i.anq = fcmp reassoc nsz arcp contract afn ogt float %i.ano, %18
  %.434 = select reassoc nsz arcp contract afn i1 %i.anq, float %i.ano, float %18
  store float %.434, ptr %i.ann, align 4, !tbaa !11
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  %19 = uitofp nneg i32 %i.and to float
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.pre677, i64 %i.amx
  store float %19, ptr %i.anr, align 4, !tbaa !11
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.fg
  store float f0xFF7FFFFF, ptr %i.ank, align 4, !tbaa !11
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fd
  %i.ans = shl nsw i32 %i.ana, 1
  %i.ant = sext i32 %i.ans to i64
  %i.anu = getelementptr inbounds [4 x i8], ptr %.pre677, i64 %i.ant ; 2 uses
  store float f0xFF7FFFFF, ptr %i.anu, align 4, !tbaa !11
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fc
  %.sink791 = phi ptr [ %i.anu, %bb.fk ], [ %i.anh, %bb.fc ]
  %.sink = phi float [ f0xFF7FFFFF, %bb.fk ], [ %i.ani, %bb.fc ]
  %i.anv = getelementptr i8, ptr %.sink791, i64 4
  store float %.sink, ptr %i.anv, align 4, !tbaa !11
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next661, %wide.trip.count663
  br i1 %exitcond664.not, label %.loopexit, label %bb.fb

.loopexit:                                        ; preds = %bb.fl, %.preheader, %bb.fa
  %i.anw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94 ; 2 uses
  %i.anx = and i32 %i.anw, 4112
  %or.cond435.not = icmp eq i32 %i.anx, 4112
  br i1 %or.cond435.not, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.loopexit
  %i.any = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.anz = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #25 ; 0 uses
  %i.aoa = load i64, ptr %10, align 8, !tbaa !132
  %i.aob = add nsw i64 %i.aoa, -1290608000
  %i.aoc = sitofp reassoc nsz arcp contract afn i64 %i.aob to double
  %i.aod = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !134
  %i.aof = sitofp reassoc nsz arcp contract afn i64 %i.aoe to double
  %i.aog = fmul reassoc nnan nsz arcp contract afn double %i.aof, f0x3EB0C6F7A0B5ED8D
  %i.aoh = fadd reassoc nsz arcp contract afn double %i.aog, %i.aoc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.aoi = fsub reassoc nsz arcp contract afn double %i.aoh, %.3
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.any, double noundef %i.aoi) #25
  %.pre678 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit, %bb.fm
  %i.aoj = phi i32 [ %i.anw, %.loopexit ], [ %.pre678, %bb.fm ]
  %i.aok = and i32 %i.aoj, 4096
  %.not.i558 = icmp eq i32 %i.aok, 0
  %.pre680 = load ptr, ptr %i.az, align 8, !tbaa !234 ; 2 uses
  br i1 %.not.i558, label %dt_masks_dynbuf_free.exit559, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aol = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aol, ptr noundef %.pre680) #25
  %.pre679 = load ptr, ptr %i.az, align 8, !tbaa !234
  br label %dt_masks_dynbuf_free.exit559

dt_masks_dynbuf_free.exit559:                     ; preds = %bb.fn, %bb.fo
  %i.aom = phi ptr [ %.pre680, %bb.fn ], [ %.pre679, %bb.fo ]
  call void @free(ptr noundef %i.aom) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.aon = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aoo = and i32 %i.aon, 4096
  %.not.i560 = icmp eq i32 %i.aoo, 0
  br i1 %.not.i560, label %dt_masks_intbuf_free.exit561, label %bb.fp

bb.fp:                                            ; preds = %dt_masks_dynbuf_free.exit559
  %i.aop = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.aop) #25
  br label %dt_masks_intbuf_free.exit561

dt_masks_intbuf_free.exit561:                     ; preds = %dt_masks_dynbuf_free.exit559, %bb.fp
  %i.aoq = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void @free(ptr noundef %i.aoq) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  br label %.critedge438

bb.fq:                                            ; preds = %bb.ex, %bb.ev, %.thread586
  %i.aor = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aos = and i32 %i.aor, 4096
  %.not.i562 = icmp eq i32 %i.aos, 0
  br i1 %.not.i562, label %dt_masks_dynbuf_free.exit563, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aot = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.aou = load ptr, ptr %i.az, align 8, !tbaa !234
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aot, ptr noundef %i.aou) #25
  br label %dt_masks_dynbuf_free.exit563

dt_masks_dynbuf_free.exit563:                     ; preds = %bb.fq, %bb.fr
  %i.aov = load ptr, ptr %i.az, align 8, !tbaa !234
  call void @free(ptr noundef %i.aov) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.aow = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aox = and i32 %i.aow, 4096
  %.not.i564 = icmp eq i32 %i.aox, 0
  br i1 %.not.i564, label %dt_masks_intbuf_free.exit565, label %bb.fs

bb.fs:                                            ; preds = %dt_masks_dynbuf_free.exit563
  %i.aoy = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.aoy) #25
  br label %dt_masks_intbuf_free.exit565

dt_masks_intbuf_free.exit565:                     ; preds = %dt_masks_dynbuf_free.exit563, %bb.fs
  %i.aoz = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void @free(ptr noundef %i.aoz) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  %i.apa = load ptr, ptr %5, align 8, !tbaa !135
  call void @free(ptr noundef %i.apa) #25
  store ptr null, ptr %5, align 8, !tbaa !135
  store i32 0, ptr %6, align 4, !tbaa !28
  br i1 %i.aj, label %.critedge437, label %.critedge438

.critedge437:                                     ; preds = %dt_masks_intbuf_free.exit565
  %i.apb = load ptr, ptr %7, align 8, !tbaa !135
  call void @free(ptr noundef %i.apb) #25
  store ptr null, ptr %7, align 8, !tbaa !135
  store i32 0, ptr %8, align 4, !tbaa !28
  br label %.critedge438

.critedge438:                                     ; preds = %.critedge.thread, %dt_masks_intbuf_free.exit557, %dt_masks_intbuf_free.exit561, %dt_masks_intbuf_free.exit565, %.critedge437, %bb.v, %dt_masks_intbuf_free.exit, %.critedge, %dt_masks_dynbuf_free.exit
  %.1 = phi i32 [ 0, %bb.v ], [ 0, %dt_masks_dynbuf_free.exit ], [ 0, %.critedge ], [ 0, %dt_masks_intbuf_free.exit ], [ 1, %dt_masks_intbuf_free.exit561 ], [ 1, %dt_masks_intbuf_free.exit557 ], [ 0, %dt_masks_intbuf_free.exit565 ], [ 0, %.critedge437 ], [ 0, %.critedge.thread ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @dt_masks_dynbuf_init(i64 noundef range(i64 0, 4294967296) %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #27 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = tail call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 128) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.d, align 8, !tbaa !240
  %i.e = shl nuw nsw i64 %0, 2
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef %i.e) #25 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_dt_masks_dynbuf_growto.exit.thread, label %bb.c

_dt_masks_dynbuf_growto.exit.thread:              ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b, i64 noundef %0) #25
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !241
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.f, ptr nonnull align 4 %i.g, i64 %i.j, i1 false)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.l = and i32 %i.k, 4096
  %.not20.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !241
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !234
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b, i64 noundef %i.m, ptr noundef nonnull %i.f, ptr noundef %i.n) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !234
  tail call void @free(ptr noundef %i.o) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %0, ptr %i.p, align 8, !tbaa !241
  store ptr %i.f, ptr %i.a, align 8, !tbaa !234
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.r = and i32 %i.q, 4096
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef nonnull %i.f) #25
  br label %bb.i

bb.i:                                             ; preds = %_dt_masks_dynbuf_growto.exit.thread, %bb.h
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.a) #25
  br label %.thread
end_hunk_1
