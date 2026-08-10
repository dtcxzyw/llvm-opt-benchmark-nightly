inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_pts_border:bb.a
  store <2 x float> %i.kf, ptr %.08114.i.epil.init, align 4, !tbaa !11
  %.not91.i.epil = icmp eq ptr %.08015.i.epil.init, null
  br i1 %.not91.i.epil, label %.critedge427, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.epil.preheader
  %.08419.i.epil = fadd reassoc nsz arcp contract afn float %.08419.pn.i.epil.init, %i.qj ; 2 uses
  %sin17.i.epil = extractvalue { float, float } %sincos.pn.i.epil.init, 0
  %cos18.i.epil = extractvalue { float, float } %sincos.pn.i.epil.init, 1
  %i.sq = fmul reassoc nsz arcp contract afn float %sin17.i.epil, %.08419.i.epil
  %i.sr = fmul reassoc nsz arcp contract afn float %cos18.i.epil, %.08419.i.epil
  %i.ss = insertelement <2 x float> poison, float %i.sr, i64 0
  %i.st = insertelement <2 x float> %i.ss, float %i.sq, i64 1
  %i.su = fadd reassoc nsz arcp contract afn <2 x float> %i.st, %i.kf
  store <2 x float> %i.su, ptr %.08015.i.epil.init, align 4, !tbaa !11
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
  br i1 %exitcond.not, label %._crit_edge613, label %bb.an

bb.cd:                                            ; preds = %dt_masks_dynbuf_free.exit491
  %i.sv = getelementptr i8, ptr %.0370, i64 136   ; 2 uses
  %.0370.val = load i64, ptr %i.sv, align 8, !tbaa !240
  %i.sw = lshr i64 %.0370.val, 1
  %i.sx = trunc i64 %i.sw to i32
  store i32 %i.sx, ptr %8, align 4, !tbaa !28
  %i.sy = load ptr, ptr %.0370, align 8, !tbaa !234
  store ptr null, ptr %.0370, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i8 0, i64 16, i1 false)
  store ptr %i.sy, ptr %7, align 8, !tbaa !135
  %i.sz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ta = and i32 %i.sz, 4096
  %.not.i535 = icmp eq i32 %i.ta, 0
  br i1 %.not.i535, label %dt_masks_dynbuf_free.exit536, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tb = getelementptr inbounds nuw i8, ptr %.0370, i64 8
  %i.tc = load ptr, ptr %.0370, align 8, !tbaa !234
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.tb, ptr noundef %i.tc) #25
  br label %dt_masks_dynbuf_free.exit536

dt_masks_dynbuf_free.exit536:                     ; preds = %bb.cd, %bb.ce
  %i.td = load ptr, ptr %.0370, align 8, !tbaa !234
  call void @free(ptr noundef %i.td) #25
  call void @free(ptr noundef nonnull %.0370) #25
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
  %i.tq = fsub reassoc nsz arcp contract afn double %i.tp, %.0
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.tg, double noundef %i.tq) #25
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1567 = phi nsz double [ %.0, %bb.cf ], [ %i.tp, %bb.cg ] ; 3 uses
  br i1 %i.aj, label %bb.ci, label %bb.el

bb.ci:                                            ; preds = %bb.ch
  %i.tr = load ptr, ptr %7, align 8, !tbaa !135   ; 7 uses
  %i.ts = load i32, ptr %8, align 4, !tbaa !28    ; 9 uses
  %i.tt = icmp eq i32 %i.ts, 0
  %or.cond.i537 = or i1 %.not622, %i.tt
  br i1 %or.cond.i537, label %_path_find_self_intersection.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tu = mul nsw i32 %i.ai, 3                    ; 8 uses
  %i.tv = sub nsw i32 %i.ts, %i.tu                ; 9 uses
  %i.tw = icmp slt i32 %i.tu, %i.ts               ; 2 uses
  br i1 %i.tw, label %.lr.ph.i547, label %bb.ck

.lr.ph.i547:                                      ; preds = %bb.cj
  %i.tx = sext i32 %i.tu to i64
  %wide.trip.count.i = sext i32 %i.ts to i64
  br label %bb.cl

._crit_edge.i549:                                 ; preds = %bb.co
  %i.ty = add nsw <2 x i32> %i.vr, splat (i32 1)
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i549, %bb.cj
  %.sroa.6.0.i = phi i32 [ %.0246391402.i, %._crit_edge.i549 ], [ 0, %bb.cj ] ; 18 uses
  %.sroa.13.0.i = phi i32 [ %.0246391405.i, %._crit_edge.i549 ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.16.0.i = phi i32 [ %.0246391408.i, %._crit_edge.i549 ], [ 0, %bb.cj ] ; 2 uses
  %.0246389.lcssa.i = phi i32 [ %.0246388.i, %._crit_edge.i549 ], [ -1, %bb.cj ] ; 2 uses
  %i.tz = phi <2 x i32> [ %i.ty, %._crit_edge.i549 ], [ splat (i32 -2147483647), %bb.cj ]
  %i.ua = phi <2 x i32> [ %i.vp, %._crit_edge.i549 ], [ splat (i32 2147483647), %bb.cj ] ; 3 uses
  %.not.i.i538 = icmp slt i32 %.0246389.lcssa.i, %.sroa.6.0.i
  %i.ub = select i1 %.not.i.i538, i32 %i.tv, i32 0
  %i.uc = add nsw i32 %i.ub, %.0246389.lcssa.i
  %.not.i.2.i = icmp slt i32 %.sroa.13.0.i, %.sroa.6.0.i
  %i.ud = select i1 %.not.i.2.i, i32 %i.tv, i32 0
  %i.ue = add nsw i32 %i.ud, %.sroa.13.0.i
  %.not.i.3.i = icmp slt i32 %.sroa.16.0.i, %.sroa.6.0.i
  %i.uf = select i1 %.not.i.3.i, i32 %i.tv, i32 0
  %i.ug = add nsw i32 %i.uf, %.sroa.16.0.i
  %i.uh = add i32 %i.tv, -1
  %i.ui = add i32 %i.uh, %.sroa.6.0.i             ; 2 uses
  %i.uj = sub <2 x i32> %i.tz, %i.ua
  %i.uk = add <2 x i32> %i.uj, splat (i32 1)      ; 2 uses
  %i.ul = extractelement <2 x i32> %i.uk, i64 1   ; 2 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = extractelement <2 x i32> %i.uk, i64 0   ; 4 uses
  %i.uo = sext i32 %i.un to i64
  %i.up = mul nsw i64 %i.uo, %i.um                ; 3 uses
  %i.uq = icmp ult i64 %i.up, 10
  %i.ur = or i32 %i.un, %i.ul
  %i.us = icmp slt i32 %i.ur, 0
  %or.cond7.i = or i1 %i.us, %i.uq
  br i1 %or.cond7.i, label %_path_find_self_intersection.exit, label %bb.cp

bb.cl:                                            ; preds = %bb.co, %.lr.ph.i547
  %indvars.iv.i = phi i64 [ %i.tx, %.lr.ph.i547 ], [ %indvars.iv.next.i, %bb.co ] ; 3 uses
  %.0246391407.i = phi i32 [ 0, %.lr.ph.i547 ], [ %.0246391408.i, %bb.co ]
  %.0246391404.i = phi i32 [ 0, %.lr.ph.i547 ], [ %.0246391405.i, %bb.co ]
  %.0246391401.i = phi i32 [ 0, %.lr.ph.i547 ], [ %.0246391402.i, %bb.co ]
  %.0246389390.i = phi i32 [ -1, %.lr.ph.i547 ], [ %.0246388.i, %bb.co ]
  %i.ut = phi <2 x i32> [ splat (i32 -2147483648), %.lr.ph.i547 ], [ %i.vr, %bb.co ] ; 2 uses
  %i.uu = phi <2 x i32> [ splat (i32 2147483647), %.lr.ph.i547 ], [ %i.vp, %bb.co ] ; 2 uses
  %.idx.i = shl nsw i64 %indvars.iv.i, 3
  %i.uv = getelementptr inbounds i8, ptr %i.tr, i64 %.idx.i ; 4 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !11 ; 2 uses
  %i.ux = fcmp reassoc nsz arcp contract afn oeq float %i.uw, f0xFF7FFFFF
  br i1 %i.ux, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uy = getelementptr i8, ptr %i.uv, i64 4
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !11 ; 2 uses
  %i.va = fcmp reassoc nsz arcp contract afn oeq float %i.uz, f0xFF7FFFFF
  %i.vb = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vc = insertelement <2 x float> %i.vb, float %i.uz, i64 1
  br i1 %i.va, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.vd = getelementptr i8, ptr %i.uv, i64 -8
  %i.ve = load <2 x float>, ptr %i.vd, align 4, !tbaa !11 ; 2 uses
  store <2 x float> %i.ve, ptr %i.uv, align 4, !tbaa !11
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.vf = phi <2 x float> [ %i.ve, %bb.cn ], [ %i.vc, %bb.cm ] ; 3 uses
  %i.vg = sitofp <2 x i32> %i.uu to <2 x float>
  %i.vh = fptosi <2 x float> %i.vf to <2 x i32>   ; 2 uses
  %i.vi = trunc nsw i64 %indvars.iv.i to i32      ; 4 uses
  %i.vj = sitofp <2 x i32> %i.ut to <2 x float>
  %i.vk = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vf, %i.vg ; 3 uses
  %i.vl = extractelement <2 x i1> %i.vk, i64 0
  %.0246388.i = select i1 %i.vl, i32 %i.vi, i32 %.0246389390.i ; 2 uses
  %i.vm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vf, %i.vj ; 3 uses
  %i.vn = extractelement <2 x i1> %i.vm, i64 0
  %.0246391402.i = select i1 %i.vn, i32 %i.vi, i32 %.0246391401.i ; 2 uses
  %i.vo = extractelement <2 x i1> %i.vk, i64 1
  %.0246391405.i = select i1 %i.vo, i32 %i.vi, i32 %.0246391404.i ; 2 uses
  %i.vp = select <2 x i1> %i.vk, <2 x i32> %i.vh, <2 x i32> %i.uu ; 2 uses
  %i.vq = extractelement <2 x i1> %i.vm, i64 1
  %.0246391408.i = select i1 %i.vq, i32 %i.vi, i32 %.0246391407.i ; 2 uses
  %i.vr = select <2 x i1> %i.vm, <2 x i32> %i.vh, <2 x i32> %i.ut ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i548 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i548, label %._crit_edge.i549, label %bb.cl

bb.cp:                                            ; preds = %bb.ck
  %i.vs = shl i64 %i.up, 2                        ; 2 uses
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
  %invariant.op.i = sub i32 %.sroa.6.0.i, %i.tu
  br i1 %i.tw, label %.lr.ph438.i, label %.thread364.i

.lr.ph438.i:                                      ; preds = %bb.cr
  %i.vx = shl i32 %.sroa.6.0.i, 1                 ; 2 uses
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
  %i.wi = shl nsw i32 %i.ai, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vv, i64 136 ; 10 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vv, i64 144 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 9 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.az, i64 144 ; 3 uses
  %i.wp = insertelement <4 x i32> poison, i32 %i.uc, i64 0
  %i.wq = insertelement <4 x i32> %i.wp, i32 %.sroa.6.0.i, i64 1
  %i.wr = insertelement <4 x i32> %i.wq, i32 %i.ue, i64 2
  %i.ws = insertelement <4 x i32> %i.wr, i32 %i.ug, i64 3 ; 2 uses
  %i.wt = extractelement <2 x i32> %i.ua, i64 0   ; 2 uses
  %i.wu = extractelement <2 x i32> %i.ua, i64 1   ; 2 uses
  %invariant.op936 = sub i32 1, %i.wu
  %invariant.op937 = sub i32 1, %i.wt
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge427.i, %.lr.ph438.i
  %.0227435.i = phi i32 [ 0, %.lr.ph438.i ], [ %.1228.lcssa.i, %._crit_edge427.i ] ; 4 uses
  %.0253434.i = phi i32 [ %i.wh, %.lr.ph438.i ], [ %.1254.lcssa.i, %._crit_edge427.i ] ; 7 uses
  %.0260433.i = phi i32 [ %i.tu, %.lr.ph438.i ], [ %i.agl, %._crit_edge427.i ] ; 2 uses
  %.0261432.i = phi i32 [ %i.wc, %.lr.ph438.i ], [ %.1262.lcssa.i, %._crit_edge427.i ] ; 6 uses
  %.reass.i = add i32 %.0260433.i, %invariant.op.i ; 2 uses
  %.not.i539 = icmp slt i32 %.reass.i, %i.ts
  %i.wv = select i1 %.not.i539, i32 0, i32 %i.tv
  %spec.select.i540 = sub nsw i32 %.reass.i, %i.wv ; 10 uses
  %.not286.i = icmp slt i32 %.0227435.i, %i.wi
  br i1 %.not286.i, label %bb.ct, label %.thread364.i

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
  %i.xl = sub nsw i32 %i.xk, %.0253434.i          ; 4 uses
  %i.xm = icmp sgt i32 %i.xl, 1
  br i1 %i.xm, label %.preheader147.i.i, label %bb.da

.preheader147.i.i:                                ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %.074169.i.i = add nsw i32 %i.xk, -1
  %i.xn = extractelement <2 x i32> %i.xa, i64 1
  %i.xo = sub nsw i32 %i.xn, %.0261432.i
  %i.xp = uitofp nneg i32 %i.xl to float
  %i.xq = sitofp reassoc nsz arcp contract afn i32 %.0261432.i to float
  %i.xr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xp
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %dt_masks_dynbuf_add_2.exit106.i.i, %.preheader147.i.i
  %.074170.i.i = phi i32 [ %.074169.i.i, %.preheader147.i.i ], [ %.074.i.i, %dt_masks_dynbuf_add_2.exit106.i.i ] ; 3 uses
  %i.xs = sub nsw i32 %.074170.i.i, %.0253434.i
  %i.xt = mul nsw i32 %i.xs, %i.xo
  %i.xu = sitofp reassoc nsz arcp contract afn i32 %i.xt to float
  %i.xv = fmul reassoc nsz arcp contract afn float %i.xu, %i.xr
  %i.xw = fadd reassoc nsz arcp contract afn float %i.xv, %i.xq
  %i.xx = fptosi float %i.xw to i32
  %.val85.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %i.xy = sitofp reassoc nsz arcp contract afn i32 %.074170.i.i to float
  %17 = sitofp reassoc nsz arcp contract afn i32 %i.xx to float
  %i.xz = add i64 %.val85.i.i, 2                  ; 2 uses
  %i.ya = load i64, ptr %i.wk, align 8, !tbaa !241 ; 3 uses
  %.not.i100.i.i = icmp ult i64 %i.xz, %i.ya
  br i1 %.not.i100.i.i, label %bb.cz, label %bb.cx, !prof !242

bb.cx:                                            ; preds = %.loopexit.i.i
  %i.yb = icmp eq i64 %i.ya, 0
  br i1 %i.yb, label %dt_masks_dynbuf_add_2.exit106.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.yc = shl i64 %i.ya, 1
  %i.yd = add i64 %i.yc, 2
  %i.ye = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vv, i64 noundef %i.yd)
  %.not11.i101.i.i = icmp eq i32 %i.ye, 0
  br i1 %.not11.i101.i.i, label %dt_masks_dynbuf_add_2.exit106.i.i, label %._crit_edge.i102.i.i

._crit_edge.i102.i.i:                             ; preds = %bb.cy
  %.pre.i103.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i104.i.i = add i64 %.pre.i103.i.i, 2
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i102.i.i, %.loopexit.i.i
  %.pre-phi.i105.i.i = phi i64 [ %.pre12.i104.i.i, %._crit_edge.i102.i.i ], [ %i.xz, %.loopexit.i.i ]
  %i.yf = phi i64 [ %.pre.i103.i.i, %._crit_edge.i102.i.i ], [ %.val85.i.i, %.loopexit.i.i ]
  %i.yg = load ptr, ptr %i.vv, align 8, !tbaa !234
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %i.yf ; 2 uses
  store float %i.xy, ptr %i.yh, align 4, !tbaa !11
  store i64 %.pre-phi.i105.i.i, ptr %i.wj, align 8, !tbaa !240
  %i.yi = getelementptr i8, ptr %i.yh, i64 4
  store float %17, ptr %i.yi, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit106.i.i

dt_masks_dynbuf_add_2.exit106.i.i:                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.074.i.i = add nsw i32 %.074170.i.i, -1        ; 2 uses
  %i.yj = icmp sgt i32 %.074.i.i, %.0253434.i
  br i1 %i.yj, label %.loopexit.i.i, label %_path_fill_gaps.exit.i

bb.da:                                            ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %i.yk = icmp slt i32 %i.xl, -1
  br i1 %i.yk, label %.preheader153.i.i, label %_path_fill_gaps.exit.i

.preheader153.i.i:                                ; preds = %bb.da
  %.075160.i.i = add nsw i32 %i.xk, 1
  %i.yl = extractelement <2 x i32> %i.xa, i64 1
  %i.ym = sub nsw i32 %i.yl, %.0261432.i
  %i.yn = sitofp reassoc nsz arcp contract afn i32 %i.xl to float
  %i.yo = sitofp reassoc nsz arcp contract afn i32 %.0261432.i to float
  %i.yp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yn
  br label %.loopexit150.i.i

.loopexit150.i.i:                                 ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %.preheader153.i.i
  %.075161.i.i = phi i32 [ %.075160.i.i, %.preheader153.i.i ], [ %.075.i.i, %dt_masks_dynbuf_add_2.exit127.i.i ] ; 3 uses
  %i.yq = sub nsw i32 %.075161.i.i, %.0253434.i
  %i.yr = mul nsw i32 %i.yq, %i.ym
  %i.ys = sitofp reassoc nsz arcp contract afn i32 %i.yr to float
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, %i.yp
  %i.yu = fadd reassoc nsz arcp contract afn float %i.yt, %i.yo
  %i.yv = fptosi float %i.yu to i32
  %.val83.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %i.yw = sitofp reassoc nsz arcp contract afn i32 %.075161.i.i to float
  %18 = sitofp reassoc nsz arcp contract afn i32 %i.yv to float
  %i.yx = add i64 %.val83.i.i, 2                  ; 2 uses
  %i.yy = load i64, ptr %i.wk, align 8, !tbaa !241 ; 3 uses
  %.not.i121.i.i = icmp ult i64 %i.yx, %i.yy
  br i1 %.not.i121.i.i, label %bb.dd, label %bb.db, !prof !242

bb.db:                                            ; preds = %.loopexit150.i.i
  %i.yz = icmp eq i64 %i.yy, 0
  br i1 %i.yz, label %dt_masks_dynbuf_add_2.exit127.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.za = shl i64 %i.yy, 1
  %i.zb = add i64 %i.za, 2
  %i.zc = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vv, i64 noundef %i.zb)
  %.not11.i122.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not11.i122.i.i, label %dt_masks_dynbuf_add_2.exit127.i.i, label %._crit_edge.i123.i.i

._crit_edge.i123.i.i:                             ; preds = %bb.dc
  %.pre.i124.i.i = load i64, ptr %i.wj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i125.i.i = add i64 %.pre.i124.i.i, 2
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i123.i.i, %.loopexit150.i.i
  %.pre-phi.i126.i.i = phi i64 [ %.pre12.i125.i.i, %._crit_edge.i123.i.i ], [ %i.yx, %.loopexit150.i.i ]
  %i.zd = phi i64 [ %.pre.i124.i.i, %._crit_edge.i123.i.i ], [ %.val83.i.i, %.loopexit150.i.i ]
  %i.ze = load ptr, ptr %i.vv, align 8, !tbaa !234
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.zd ; 2 uses
  store float %i.yw, ptr %i.zf, align 4, !tbaa !11
  store i64 %.pre-phi.i126.i.i, ptr %i.wj, align 8, !tbaa !240
  %i.zg = getelementptr i8, ptr %i.zf, i64 4
  store float %18, ptr %i.zg, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit127.i.i

dt_masks_dynbuf_add_2.exit127.i.i:                ; preds = %bb.dd, %bb.dc, %bb.db
  %.075.i.i = add i32 %.075161.i.i, 1             ; 2 uses
  %exitcond175.not.i.i = icmp eq i32 %.075.i.i, %.0253434.i
  br i1 %exitcond175.not.i.i, label %_path_fill_gaps.exit.i, label %.loopexit150.i.i

_path_fill_gaps.exit.i:                           ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %dt_masks_dynbuf_add_2.exit106.i.i, %bb.da
  %.val.i541 = load i64, ptr %i.wj, align 8, !tbaa !240
  %i.zh = lshr i64 %.val.i541, 1
  %i.zi = trunc i64 %i.zh to i32
  %.0258420.i = add i32 %i.zi, -1                 ; 2 uses
  %i.zj = icmp sgt i32 %.0258420.i, -1
  br i1 %i.zj, label %.lr.ph426.i, label %._crit_edge427.i

.lr.ph426.i:                                      ; preds = %_path_fill_gaps.exit.i
  %i.zk = add nsw i32 %spec.select.i540, -1
  %.not.i303.i = icmp slt i32 %spec.select.i540, %.sroa.6.0.i
  %i.zl = select i1 %.not.i303.i, i32 %i.tv, i32 0
  %i.zm = add nsw i32 %i.zl, %spec.select.i540    ; 10 uses
  %i.zn = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %i.zo = shufflevector <4 x i32> %i.zn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zp = icmp slt <4 x i32> %i.ws, %i.zo
  %i.zq = zext nneg i32 %.0258420.i to i64
  %broadcast.splatinsert798 = insertelement <8 x i32> poison, i32 %i.zm, i64 0
  %broadcast.splat799 = shufflevector <8 x i32> %broadcast.splatinsert798, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert821 = insertelement <8 x i32> poison, i32 %i.zm, i64 0
  %broadcast.splat822 = shufflevector <8 x i32> %broadcast.splatinsert821, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.ei, %.lr.ph426.i
  %indvars.iv480.i = phi i64 [ %i.zq, %.lr.ph426.i ], [ %indvars.iv.next481.i, %bb.ei ] ; 3 uses
  %.1228423.i = phi i32 [ %.0227435.i, %.lr.ph426.i ], [ %.8235.ph.i, %bb.ei ] ; 2 uses
  %.1254422.i = phi i32 [ %.0253434.i, %.lr.ph426.i ], [ %.2255.ph.i, %bb.ei ] ; 2 uses
  %.1262421.i = phi i32 [ %.0261432.i, %.lr.ph426.i ], [ %.2263.ph.i, %bb.ei ] ; 2 uses
  %.val299.i = load ptr, ptr %i.vv, align 8, !tbaa !234
  %.idx525.i = shl nuw nsw i64 %indvars.iv480.i, 3
  %i.zr = getelementptr inbounds nuw i8, ptr %.val299.i, i64 %.idx525.i ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !11
  %i.zt = fptosi float %i.zs to i32               ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !11
  %i.zw = fptosi float %i.zv to i32               ; 4 uses
  %.reass.reass = add i32 %i.zw, %invariant.op936
  %i.zx = mul nsw i32 %.reass.reass, %i.un
  %.reass780.reass = add i32 %i.zt, %invariant.op937
  %i.zy = add nsw i32 %.reass780.reass, %i.zx     ; 3 uses
  %i.zz = icmp slt i32 %i.zy, 0
  br i1 %i.zz, label %.sink.split.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aaa = zext nneg i32 %i.zy to i64             ; 3 uses
  %i.aab = icmp ult i64 %i.up, %i.aaa
  br i1 %i.aab, label %.sink.split.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aac = icmp eq i32 %.1254422.i, %i.zt
  %i.aad = icmp eq i32 %.1262421.i, %i.zw
  %or.cond292.i = select i1 %i.aac, i1 %i.aad, i1 false
  br i1 %or.cond292.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.aaa
  store i32 %spec.select.i540, ptr %i.aae, align 4, !tbaa !28
  br label %bb.ei

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.wl, align 4
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.aaa ; 3 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !28
  store i32 %i.aag, ptr %i.a, align 4, !tbaa !28
  %.not287.i = icmp sgt i32 %i.wt, %i.zt
  br i1 %.not287.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aah = getelementptr i8, ptr %i.aaf, i64 -4
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !28
  store i32 %i.aai, ptr %i.wl, align 4, !tbaa !28
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.not288.i = icmp sgt i32 %i.wu, %i.zw
  br i1 %.not288.i, label %.preheader901, label %bb.dl

.preheader901:                                    ; preds = %bb.dl, %bb.dk
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.aaj = sub nsw i32 %i.zy, %i.un
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !28
  store i32 %i.aam, ptr %i.wm, align 4, !tbaa !28
  br label %.preheader901

bb.dm:                                            ; preds = %_check_cutable.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ei

bb.dn:                                            ; preds = %.preheader901, %_check_cutable.exit.thread.i
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i.a, %_check_cutable.exit.thread.i ], [ 0, %.preheader901 ] ; 2 uses
  %.2229418.i = phi i32 [ %.7234.i, %_check_cutable.exit.thread.i ], [ %.1228423.i, %.preheader901 ] ; 10 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv476.i
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !28 ; 8 uses
  %i.aap = icmp eq i32 %i.aao, %spec.select.i540
  %i.aaq = icmp eq i32 %i.aao, %i.zk
  %or.cond294.i = select i1 %i.aap, i1 true, i1 %i.aaq
  br i1 %or.cond294.i, label %_check_cutable.exit.thread.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aar = icmp eq i32 %i.aao, 0
  br i1 %i.aar, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 %spec.select.i540, ptr %i.aaf, align 4, !tbaa !28
  br label %_check_cutable.exit.thread.i

bb.dq:                                            ; preds = %bb.do
  %.not.i302.i = icmp slt i32 %i.aao, %.sroa.6.0.i
  %i.aas = select i1 %.not.i302.i, i32 %i.tv, i32 0
  %i.aat = add nsw i32 %i.aas, %i.aao             ; 9 uses
  %i.aau = sub nsw i32 %i.zm, %i.aat
  %i.aav = sitofp reassoc nsz arcp contract afn i32 %i.aau to float
  %i.aaw = load i64, ptr %i.bd, align 8, !tbaa !236 ; 5 uses
  %.not49.i.i = icmp eq i64 %i.aaw, 0
  br i1 %.not49.i.i, label %._crit_edge.i306.i, label %iter.check

iter.check:                                       ; preds = %bb.dq
  %i.aax = load ptr, ptr %i.ba, align 8, !tbaa !238 ; 6 uses
  %i.aay = add i64 %i.aaw, -1
  %i.aaz = lshr i64 %i.aay, 1
  %i.aba = add nuw i64 %i.aaz, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.aaw, 15
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check797 = icmp ult i64 %i.aaw, 63
  br i1 %min.iters.check797, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abb = and i64 %i.aba, 24
  %n.vec = and i64 %i.aba, -32                    ; 4 uses
  %i.abc = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aat, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %vec.phi800 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi813, %vector.body ] ; 2 uses
  %vec.phi801 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi814, %vector.body ] ; 2 uses
  %vec.phi802 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi815, %vector.body ] ; 2 uses
  %i.abd = shl nuw i64 %index, 1                  ; 4 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.abd
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.abd
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 64
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.abd
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 128
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.abd
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 192
  %wide.vec = load <16 x i32>, ptr %i.abe, align 4, !tbaa !28 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec803 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec804 = load <16 x i32>, ptr %i.abg, align 4, !tbaa !28 ; 2 uses
  %strided.vec805 = shufflevector <16 x i32> %wide.vec804, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec806 = shufflevector <16 x i32> %wide.vec804, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec807 = load <16 x i32>, ptr %i.abi, align 4, !tbaa !28 ; 2 uses
  %strided.vec808 = shufflevector <16 x i32> %wide.vec807, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec809 = shufflevector <16 x i32> %wide.vec807, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec810 = load <16 x i32>, ptr %i.abk, align 4, !tbaa !28 ; 2 uses
  %strided.vec811 = shufflevector <16 x i32> %wide.vec810, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec812 = shufflevector <16 x i32> %wide.vec810, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.abl = icmp slt <8 x i32> %strided.vec803, %broadcast.splat
  %i.abm = icmp slt <8 x i32> %strided.vec806, %broadcast.splat
  %i.abn = icmp slt <8 x i32> %strided.vec809, %broadcast.splat
  %i.abo = icmp slt <8 x i32> %strided.vec812, %broadcast.splat
  %i.abp = icmp sgt <8 x i32> %strided.vec, %broadcast.splat799
  %i.abq = icmp sgt <8 x i32> %strided.vec805, %broadcast.splat799
  %i.abr = icmp sgt <8 x i32> %strided.vec808, %broadcast.splat799
  %i.abs = icmp sgt <8 x i32> %strided.vec811, %broadcast.splat799
  %i.abt = select <8 x i1> %i.abl, <8 x i1> splat (i1 true), <8 x i1> %i.abp
  %i.abu = select <8 x i1> %i.abm, <8 x i1> splat (i1 true), <8 x i1> %i.abq
  %i.abv = select <8 x i1> %i.abn, <8 x i1> splat (i1 true), <8 x i1> %i.abr
  %i.abw = select <8 x i1> %i.abo, <8 x i1> splat (i1 true), <8 x i1> %i.abs
  %i.abx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat799, <8 x i32> %strided.vec803)
  %i.aby = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat799, <8 x i32> %strided.vec806)
  %i.abz = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat799, <8 x i32> %strided.vec809)
  %i.aca = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat799, <8 x i32> %strided.vec812)
  %i.acb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec)
  %i.acc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec805)
  %i.acd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec808)
  %i.ace = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec811)
  %i.acf = sub nsw <8 x i32> %i.abx, %i.acb
  %i.acg = sub nsw <8 x i32> %i.aby, %i.acc
  %i.ach = sub nsw <8 x i32> %i.abz, %i.acd
  %i.aci = sub nsw <8 x i32> %i.aca, %i.ace
  %i.acj = sitofp reassoc nsz arcp contract afn <8 x i32> %i.acf to <8 x float>
  %i.ack = sitofp reassoc nsz arcp contract afn <8 x i32> %i.acg to <8 x float>
end_hunk_0
