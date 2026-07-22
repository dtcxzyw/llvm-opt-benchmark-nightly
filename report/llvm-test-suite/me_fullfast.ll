inline.NumInlined: 28
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@SetupFastFullPelSearch:bb.a
  %i.gj = load i32, ptr %.phi.trans.insert, align 8, !tbaa !173 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [2 x i8], ptr %.2561, i64 %i.gk ; 3 uses
  %indvars.iv.next759 = add nsw i64 %indvars.iv758, 1 ; 2 uses
  %i.gm = load i32, ptr %i.fw, align 4, !tbaa !172
  %i.gn = load i32, ptr %i.ft, align 4, !tbaa !171 ; 2 uses
  %i.go = add nsw i32 %i.gn, %i.gm
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv.next759, %i.gp
  br i1 %i.gq, label %bb.n, label %._crit_edge564, !llvm.loop !175

._crit_edge564:                                   ; preds = %bb.n
  %i.gr = icmp sgt i32 %i.gn, 0
  br i1 %i.gr, label %.lr.ph563.1, label %.loopexit555

.lr.ph563.1:                                      ; preds = %._crit_edge564
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ej, i64 204
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !172
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %.phi.trans.insert797 = getelementptr inbounds nuw i8, ptr %i.ej, i64 15544
  %.pre798 = load i32, ptr %.phi.trans.insert797, align 8, !tbaa !173
  %i.gv = load ptr, ptr @imgUV_org, align 8, !tbaa !161
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load ptr, ptr @img, align 8, !tbaa !8   ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 15544 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 204 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 15548 ; 2 uses
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !167
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.gu
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !168
  %i.he = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !174
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = sext i32 %.pre798 to i64
  %i.hj = shl nsw i64 %i.hi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gl, ptr align 2 %i.hh, i64 %i.hj, i1 false)
  %i.hk = load i32, ptr %i.gy, align 8, !tbaa !173 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.hl
  %indvars.iv.next759.1.peel = add nsw i64 %i.gu, 1 ; 2 uses
  %i.hn = load i32, ptr %i.gz, align 4, !tbaa !172
  %i.ho = load i32, ptr %i.ha, align 4, !tbaa !171
  %i.hp = add nsw i32 %i.ho, %i.hn
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next759.1.peel, %i.hq
  br i1 %i.hr, label %.lr.ph563.1.peel.newph, label %._crit_edge564.loopexit.1

.lr.ph563.1.peel.newph:                           ; preds = %.lr.ph563.1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gx, i64 200
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph563.1.peel.newph
  %i.ht = phi i32 [ %i.hk, %.lr.ph563.1.peel.newph ], [ %i.ic, %bb.o ]
  %indvars.iv758.1 = phi i64 [ %indvars.iv.next759.1.peel, %.lr.ph563.1.peel.newph ], [ %indvars.iv.next759.1, %bb.o ] ; 2 uses
  %.2561.1 = phi ptr [ %i.hm, %.lr.ph563.1.peel.newph ], [ %i.ie, %bb.o ] ; 2 uses
  %i.hu = load ptr, ptr %i.gw, align 8, !tbaa !167
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %indvars.iv758.1
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !168
  %i.hx = load i32, ptr %i.hs, align 8, !tbaa !174
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = sext i32 %i.ht to i64
  %i.ib = shl nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2561.1, ptr align 2 %i.hz, i64 %i.ib, i1 false)
  %i.ic = load i32, ptr %i.gy, align 8, !tbaa !173 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [2 x i8], ptr %.2561.1, i64 %i.id
  %indvars.iv.next759.1 = add nsw i64 %indvars.iv758.1, 1 ; 2 uses
  %i.if = load i32, ptr %i.gz, align 4, !tbaa !172
  %i.ig = load i32, ptr %i.ha, align 4, !tbaa !171
  %i.ih = add nsw i32 %i.ig, %i.if
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next759.1, %i.ii
  br i1 %i.ij, label %bb.o, label %._crit_edge564.loopexit.1, !llvm.loop !176

._crit_edge564.loopexit.1:                        ; preds = %bb.o, %.lr.ph563.1
  %.pre799.pre = load ptr, ptr @input, align 8, !tbaa !8
  br label %.loopexit555

.loopexit555:                                     ; preds = %.preheader554.preheader, %._crit_edge564, %._crit_edge564.loopexit.1, %._crit_edge
  %i.ik = phi ptr [ %i.ej, %._crit_edge ], [ %i.gx, %._crit_edge564.loopexit.1 ], [ %i.ej, %._crit_edge564 ], [ %i.ej, %.preheader554.preheader ] ; 2 uses
  %i.il = phi ptr [ %i.du, %._crit_edge ], [ %.pre799.pre, %._crit_edge564.loopexit.1 ], [ %i.du, %._crit_edge564 ], [ %i.du, %.preheader554.preheader ]
  %.not521 = icmp sge i32 %i.fe, %i.o
  %i.im = sub nsw i32 %i.bf, %i.o
  %.not522 = icmp sle i32 %i.fe, %i.im
  %or.cond530.not535 = select i1 %.not521, i1 %.not522, i1 false
  %.not523 = icmp sge i32 %i.fd, %i.o
  %or.cond531.not534 = select i1 %or.cond530.not535, i1 %.not523, i1 false
  %i.in = sub nsw i32 %i.bi, %i.o
  %.not524 = icmp sle i32 %i.fd, %i.in
  %or.cond532.not = select i1 %or.cond531.not534, i1 %.not524, i1 false
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4168
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !163
  %.not525 = icmp eq i32 %i.ip, 0
  br i1 %.not525, label %bb.p, label %.loopexit555..loopexit553_crit_edge

.loopexit555..loopexit553_crit_edge:              ; preds = %.loopexit555
  %.pre801 = zext nneg i32 %i.r to i64
  br label %.loopexit553

bb.p:                                             ; preds = %.loopexit555
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 192
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !165
  %i.is = sub nsw i32 %i.ir, %i.fe
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 196
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !166
  %i.iv = sub nsw i32 %i.iu, %i.fd
  %i.iw = load ptr, ptr @spiral_search_x, align 8, !tbaa !168
  %i.ix = load ptr, ptr @spiral_search_y, align 8
  %i.iy = zext nneg i32 %i.r to i64               ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.t
  %indvars.iv764 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next765, %bb.t ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv764
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !162
  %i.jb = sext i16 %i.ja to i32
  %i.jc = icmp eq i32 %i.is, %i.jb
  br i1 %i.jc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %indvars.iv764
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !162
  %i.jf = sext i16 %i.je to i32
  %i.jg = icmp eq i32 %i.iv, %i.jf
  br i1 %i.jg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jh = trunc nuw nsw i64 %indvars.iv764 to i32
  %i.ji = load ptr, ptr @pos_00, align 8, !tbaa !36
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.c
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !38
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.f
  store i32 %i.jh, ptr %i.jl, align 4, !tbaa !4
  br label %.loopexit553

bb.t:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %i.jm = icmp samesign ult i64 %indvars.iv.next765, %i.iy
  br i1 %i.jm, label %bb.q, label %.loopexit553, !llvm.loop !178

.loopexit553:                                     ; preds = %bb.t, %.loopexit555..loopexit553_crit_edge, %bb.s
  %.pre-phi = phi i64 [ %.pre801, %.loopexit555..loopexit553_crit_edge ], [ %i.iy, %bb.s ], [ %i.iy, %bb.t ]
  br label %bb.u

bb.u:                                             ; preds = %.loopexit553, %.loopexit
  %indvars.iv793 = phi i64 [ 0, %.loopexit553 ], [ %indvars.iv.next794, %.loopexit ] ; 27 uses
  %i.jn = load ptr, ptr @spiral_search_y, align 8, !tbaa !168
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv793
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !162
  %i.jq = sext i16 %i.jp to i32
  %i.jr = add nsw i32 %i.fd, %i.jq                ; 3 uses
  %i.js = load ptr, ptr @spiral_search_x, align 8, !tbaa !168
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv793
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !162
  %i.jv = sext i16 %i.ju to i32
  %i.jw = add nsw i32 %i.fe, %i.jv                ; 3 uses
  %i.jx = shl i32 %i.jr, 2
  %i.jy = add i32 %i.jx, 80                       ; 5 uses
  %i.jz = shl i32 %i.jw, 2
  %i.ka = add i32 %i.jz, 80                       ; 5 uses
  br i1 %or.cond532.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kb = icmp sgt i32 %i.jr, -1
  br i1 %i.kb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kc = icmp sgt i32 %i.jr, %i.bi
  %i.kd = icmp slt i32 %i.jw, 0
  %or.cond.not538 = select i1 %i.kc, i1 true, i1 %i.kd
  %.not527 = icmp sgt i32 %i.jw, %i.bf
  %or.cond533 = select i1 %or.cond.not538, i1 true, i1 %.not527
  br i1 %or.cond533, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.sink = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]
  store i32 %.sink, ptr @ref_access_method, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.u
  %i.ke = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !8
  %i.ki = load ptr, ptr @ref_pic_sub, align 8, !tbaa !148
  %i.kj = call ptr %i.kh(ptr noundef %i.ki, i32 noundef %i.jy, i32 noundef %i.ka) #12 ; 2 uses
  br i1 %i.ap, label %bb.z, label %.preheader549

bb.z:                                             ; preds = %bb.y
  %i.kk = load ptr, ptr @img, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 15520
  br label %.preheader548

.preheader548:                                    ; preds = %bb.z, %bb.ab
  %indvars.iv782 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next783, %bb.ab ] ; 2 uses
  %indvars.iv780 = phi ptr [ getelementptr inbounds nuw (i8, ptr @SetupFastFullPelSearch.orig_pels, i64 128), %bb.z ], [ %scevgep781, %bb.ab ] ; 3 uses
  %.3649 = phi ptr [ @SetupFastFullPelSearch.orig_pels, %bb.z ], [ %indvars.iv780, %bb.ab ]
  %.0439648 = phi ptr [ %i.kj, %bb.z ], [ %scevgep780, %bb.ab ] ; 2 uses
  %.0479646 = phi i32 [ 0, %bb.z ], [ %i.pt, %bb.ab ]
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !179
  %i.kn = load i32, ptr @weight_luma, align 4, !tbaa !4
  %i.ko = load i32, ptr @wp_luma_round, align 4, !tbaa !4
  %i.kp = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !4
  %i.kq = load i32, ptr @offset_luma, align 4, !tbaa !4
  %i.kr = load i32, ptr @img_padded_size_x, align 4, !tbaa !4
  %i.ks = sext i32 %i.kr to i64                   ; 2 uses
  %i.kt = insertelement <8 x i32> poison, i32 %i.kn, i64 0
  %i.ku = shufflevector <8 x i32> %i.kt, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kv = insertelement <8 x i32> poison, i32 %i.ko, i64 0
  %i.kw = shufflevector <8 x i32> %i.kv, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kx = insertelement <8 x i32> poison, i32 %i.kp, i64 0
  %i.ky = shufflevector <8 x i32> %i.kx, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kz = insertelement <8 x i32> poison, i32 %i.kq, i64 0
  %i.la = shufflevector <8 x i32> %i.kz, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lb = insertelement <8 x i32> poison, i32 %i.km, i64 0
  %i.lc = shufflevector <8 x i32> %i.lb, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader548, %bb.aa
  %.4645 = phi ptr [ %.3649, %.preheader548 ], [ %i.ne, %bb.aa ] ; 3 uses
  %.1440644 = phi ptr [ %.0439648, %.preheader548 ], [ %i.pe, %bb.aa ] ; 3 uses
  %.2468643 = phi i32 [ 0, %.preheader548 ], [ %i.pf, %bb.aa ]
  %.0483642 = phi i32 [ 0, %.preheader548 ], [ %i.mj, %bb.aa ]
  %.0489641 = phi i32 [ 0, %.preheader548 ], [ %i.nd, %bb.aa ]
  %.0495640 = phi i32 [ 0, %.preheader548 ], [ %i.pd, %bb.aa ]
  %.0501639 = phi i32 [ 0, %.preheader548 ], [ %i.oj, %bb.aa ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.1440644, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %.4645, i64 16
  %i.lf = load <8 x i16>, ptr %.1440644, align 2, !tbaa !162
  %i.lg = zext <8 x i16> %i.lf to <8 x i32>
  %i.lh = mul nsw <8 x i32> %i.ku, %i.lg
  %i.li = add nsw <8 x i32> %i.lh, %i.kw
  %i.lj = ashr <8 x i32> %i.li, %i.ky
  %i.lk = add nsw <8 x i32> %i.lj, %i.la
  %i.ll = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lk, <8 x i32> zeroinitializer)
  %i.lm = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ll, <8 x i32> %i.lc)
  %i.ln = load <8 x i16>, ptr %.4645, align 2, !tbaa !162
  %i.lo = zext <8 x i16> %i.ln to <8 x i32>
  %i.lp = sub nsw <8 x i32> %i.lm, %i.lo          ; 8 uses
  %i.lq = extractelement <8 x i32> %i.lp, i64 0
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4
  %i.lu = add nsw i32 %i.lt, %.0483642
  %i.lv = extractelement <8 x i32> %i.lp, i64 1
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !4
  %i.lz = add nsw i32 %i.lu, %i.ly
  %i.ma = extractelement <8 x i32> %i.lp, i64 2
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !4
  %i.me = add nsw i32 %i.lz, %i.md
  %i.mf = extractelement <8 x i32> %i.lp, i64 3
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !4
  %i.mj = add nsw i32 %i.me, %i.mi                ; 2 uses
  %i.mk = extractelement <8 x i32> %i.lp, i64 4
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4
  %i.mo = add nsw i32 %i.mn, %.0489641
  %i.mp = extractelement <8 x i32> %i.lp, i64 5
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !4
  %i.mt = add nsw i32 %i.mo, %i.ms
  %i.mu = extractelement <8 x i32> %i.lp, i64 6
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = add nsw i32 %i.mt, %i.mx
  %i.mz = extractelement <8 x i32> %i.lp, i64 7
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !4
  %i.nd = add nsw i32 %i.my, %i.nc                ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.4645, i64 32
  %i.nf = load <8 x i16>, ptr %i.ld, align 2, !tbaa !162
  %i.ng = zext <8 x i16> %i.nf to <8 x i32>
  %i.nh = mul nsw <8 x i32> %i.ku, %i.ng
  %i.ni = add nsw <8 x i32> %i.nh, %i.kw
  %i.nj = ashr <8 x i32> %i.ni, %i.ky
  %i.nk = add nsw <8 x i32> %i.nj, %i.la
  %i.nl = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nk, <8 x i32> zeroinitializer)
  %i.nm = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.nl, <8 x i32> %i.lc)
  %i.nn = load <8 x i16>, ptr %i.le, align 2, !tbaa !162
  %i.no = zext <8 x i16> %i.nn to <8 x i32>
  %i.np = sub nsw <8 x i32> %i.nm, %i.no          ; 8 uses
  %i.nq = extractelement <8 x i32> %i.np, i64 0
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.nu = add nsw i32 %i.nt, %.0501639
  %i.nv = extractelement <8 x i32> %i.np, i64 1
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !4
  %i.nz = add nsw i32 %i.nu, %i.ny
  %i.oa = extractelement <8 x i32> %i.np, i64 2
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !4
  %i.oe = add nsw i32 %i.nz, %i.od
  %i.of = extractelement <8 x i32> %i.np, i64 3
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !4
  %i.oj = add nsw i32 %i.oe, %i.oi                ; 2 uses
  %i.ok = extractelement <8 x i32> %i.np, i64 4
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !4
  %i.oo = add nsw i32 %i.on, %.0495640
  %i.op = extractelement <8 x i32> %i.np, i64 5
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !4
  %i.ot = add nsw i32 %i.oo, %i.os
  %i.ou = extractelement <8 x i32> %i.np, i64 6
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4
  %i.oy = add nsw i32 %i.ot, %i.ox
  %i.oz = extractelement <8 x i32> %i.np, i64 7
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !4
  %i.pd = add nsw i32 %i.oy, %i.pc                ; 2 uses
  %i.pe = getelementptr [2 x i8], ptr %.1440644, i64 %i.ks
  %i.pf = add nuw nsw i32 %.2468643, 1            ; 2 uses
  %exitcond781.not = icmp eq i32 %i.pf, 4
  br i1 %exitcond781.not, label %bb.ab, label %bb.aa, !llvm.loop !180

bb.ab:                                            ; preds = %bb.aa
  %i.pg = shl nsw i64 %i.ks, 3
  %scevgep780 = getelementptr i8, ptr %.0439648, i64 %i.pg
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv782 ; 4 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !38
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv793
  store i32 %i.mj, ptr %i.pj, align 4, !tbaa !4
  %i.pk = getelementptr i8, ptr %i.ph, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !38
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv793
  store i32 %i.nd, ptr %i.pm, align 4, !tbaa !4
  %i.pn = getelementptr i8, ptr %i.ph, i64 16
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !38
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv793
  store i32 %i.oj, ptr %i.pp, align 4, !tbaa !4
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !38
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv793
  store i32 %i.pd, ptr %i.ps, align 4, !tbaa !4
  %i.pt = add nuw nsw i32 %.0479646, 1            ; 2 uses
  %scevgep781 = getelementptr i8, ptr %indvars.iv780, i64 128
  %exitcond785.not = icmp eq i32 %i.pt, 4
  br i1 %exitcond785.not, label %bb.ac, label %.preheader548, !llvm.loop !181

bb.ac:                                            ; preds = %bb.ab
  %i.pu = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not529 = icmp eq i32 %i.pu, 0
  br i1 %.not529, label %.loopexit, label %.preheader550

.preheader550:                                    ; preds = %bb.ac
  %i.pv = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !8
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !155
  %i.qa = call ptr %i.py(ptr noundef %i.pz, i32 noundef %i.jy, i32 noundef %i.ka) #12
  %i.qb = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 15548
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 15544
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 15524 ; 4 uses
  br label %.preheader546

.preheader546:                                    ; preds = %.preheader550, %._crit_edge691
  %indvars.iv786 = phi i64 [ 0, %.preheader550 ], [ %indvars.iv.next787, %._crit_edge691 ] ; 2 uses
  %.6701 = phi ptr [ %indvars.iv780, %.preheader550 ], [ %.7.lcssa, %._crit_edge691 ] ; 2 uses
  %.2441700 = phi ptr [ %i.qa, %.preheader550 ], [ %.3442.lcssa, %._crit_edge691 ] ; 2 uses
  %.1480698 = phi i32 [ 0, %.preheader550 ], [ %i.uv, %._crit_edge691 ]
  %i.qf = load i32, ptr %i.qc, align 4, !tbaa !171 ; 2 uses
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.preheader541.lr.ph, label %._crit_edge691

.preheader541.lr.ph:                              ; preds = %.preheader546
  %i.qh = load i32, ptr %i.qd, align 8, !tbaa !173 ; 6 uses
  %i.qi = icmp sgt i32 %i.qh, 0
  %i.qj = load i32, ptr @wp_chroma_round, align 4 ; 4 uses
  %i.qk = load i32, ptr @chroma_log_weight_denom, align 4 ; 4 uses
  %i.ql = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.qm = sub nsw i32 %i.ql, %i.qh
  %i.qn = sext i32 %i.qm to i64
  %i.qo = load i32, ptr @weight_cr, align 4
  %i.qp = load i32, ptr @offset_cr, align 4
  %i.qq = load i32, ptr @weight_cr, align 4
  %i.qr = load i32, ptr @offset_cr, align 4
  %i.qs = load i32, ptr @weight_cr, align 4
  %i.qt = load i32, ptr @offset_cr, align 4
  %i.qu = load i32, ptr @weight_cr, align 4
  %i.qv = load i32, ptr @offset_cr, align 4
  br label %.preheader541

.preheader541:                                    ; preds = %.preheader541.lr.ph, %._crit_edge680
  %.7690 = phi ptr [ %.6701, %.preheader541.lr.ph ], [ %.11.lcssa, %._crit_edge680 ] ; 2 uses
  %.3442689 = phi ptr [ %.2441700, %.preheader541.lr.ph ], [ %i.ty, %._crit_edge680 ] ; 2 uses
  %.3469688 = phi i32 [ 0, %.preheader541.lr.ph ], [ %i.tz, %._crit_edge680 ]
  %.1484687 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2485.lcssa824832845, %._crit_edge680 ] ; 2 uses
  %.1490686 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2491.lcssa834843, %._crit_edge680 ] ; 2 uses
  %.1496685 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2497.lcssa, %._crit_edge680 ] ; 2 uses
  %.1502684 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2503.lcssa847, %._crit_edge680 ] ; 2 uses
  br i1 %i.qi, label %.lr.ph654, label %._crit_edge680

.lr.ph654:                                        ; preds = %.preheader541
  %i.qw = load i32, ptr %i.qe, align 4, !tbaa !182
  br label %bb.ad

.lr.ph663:                                        ; preds = %bb.ad
  %i.qx = load i32, ptr %i.qe, align 4, !tbaa !182
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph654, %bb.ad
  %.8653 = phi ptr [ %.7690, %.lr.ph654 ], [ %i.rh, %bb.ad ] ; 2 uses
  %.4443652 = phi ptr [ %.3442689, %.lr.ph654 ], [ %i.qy, %bb.ad ] ; 2 uses
  %.0458651 = phi i32 [ 0, %.lr.ph654 ], [ %i.rp, %bb.ad ]
  %.2485650 = phi i32 [ %.1484687, %.lr.ph654 ], [ %i.ro, %bb.ad ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.4443652, i64 2 ; 2 uses
  %i.qz = load i16, ptr %.4443652, align 2, !tbaa !162
  %i.ra = zext i16 %i.qz to i32
  %i.rb = mul nsw i32 %i.qo, %i.ra
  %i.rc = add nsw i32 %i.rb, %i.qj
  %i.rd = ashr i32 %i.rc, %i.qk
  %i.re = add nsw i32 %i.rd, %i.qp
  %i.rf = call noundef i32 @llvm.smax.i32(i32 %i.re, i32 0)
  %i.rg = call noundef i32 @llvm.smin.i32(i32 %i.rf, i32 %i.qw)
  %i.rh = getelementptr inbounds nuw i8, ptr %.8653, i64 2 ; 2 uses
  %i.ri = load i16, ptr %.8653, align 2, !tbaa !162
  %i.rj = zext i16 %i.ri to i32
  %i.rk = sub nsw i32 %i.rg, %i.rj
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !4
  %i.ro = add nsw i32 %i.rn, %.2485650            ; 2 uses
  %i.rp = add nuw nsw i32 %.0458651, 4            ; 2 uses
  %i.rq = icmp slt i32 %i.rp, %i.qh
  br i1 %i.rq, label %bb.ad, label %.lr.ph663, !llvm.loop !183

.lr.ph671:                                        ; preds = %bb.ae
  %i.rr = load i32, ptr %i.qe, align 4, !tbaa !182
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph663, %bb.ae
  %.9662 = phi ptr [ %i.rh, %.lr.ph663 ], [ %i.sb, %bb.ae ] ; 2 uses
  %.5444661 = phi ptr [ %i.qy, %.lr.ph663 ], [ %i.rs, %bb.ae ] ; 2 uses
  %.1459660 = phi i32 [ 0, %.lr.ph663 ], [ %i.sj, %bb.ae ]
  %.2491659 = phi i32 [ %.1490686, %.lr.ph663 ], [ %i.si, %bb.ae ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.5444661, i64 2 ; 2 uses
  %i.rt = load i16, ptr %.5444661, align 2, !tbaa !162
  %i.ru = zext i16 %i.rt to i32
  %i.rv = mul nsw i32 %i.qq, %i.ru
  %i.rw = add nsw i32 %i.rv, %i.qj
  %i.rx = ashr i32 %i.rw, %i.qk
  %i.ry = add nsw i32 %i.rx, %i.qr
  %i.rz = call noundef i32 @llvm.smax.i32(i32 %i.ry, i32 0)
  %i.sa = call noundef i32 @llvm.smin.i32(i32 %i.rz, i32 %i.qx)
  %i.sb = getelementptr inbounds nuw i8, ptr %.9662, i64 2 ; 2 uses
  %i.sc = load i16, ptr %.9662, align 2, !tbaa !162
  %i.sd = zext i16 %i.sc to i32
  %i.se = sub nsw i32 %i.sa, %i.sd
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !4
  %i.si = add nsw i32 %i.sh, %.2491659            ; 2 uses
  %i.sj = add nuw nsw i32 %.1459660, 4            ; 2 uses
  %i.sk = icmp slt i32 %i.sj, %i.qh
  br i1 %i.sk, label %bb.ae, label %.lr.ph671, !llvm.loop !184

.lr.ph679:                                        ; preds = %bb.af
  %i.sl = load i32, ptr %i.qe, align 4, !tbaa !182
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph671, %bb.af
  %.10670 = phi ptr [ %i.sb, %.lr.ph671 ], [ %i.sv, %bb.af ] ; 2 uses
  %.6445669 = phi ptr [ %i.rs, %.lr.ph671 ], [ %i.sm, %bb.af ] ; 2 uses
  %.2460668 = phi i32 [ 0, %.lr.ph671 ], [ %i.td, %bb.af ]
  %.2503667 = phi i32 [ %.1502684, %.lr.ph671 ], [ %i.tc, %bb.af ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.6445669, i64 2 ; 2 uses
  %i.sn = load i16, ptr %.6445669, align 2, !tbaa !162
  %i.so = zext i16 %i.sn to i32
  %i.sp = mul nsw i32 %i.qs, %i.so
  %i.sq = add nsw i32 %i.sp, %i.qj
  %i.sr = ashr i32 %i.sq, %i.qk
  %i.ss = add nsw i32 %i.sr, %i.qt
  %i.st = call noundef i32 @llvm.smax.i32(i32 %i.ss, i32 0)
  %i.su = call noundef i32 @llvm.smin.i32(i32 %i.st, i32 %i.rr)
  %i.sv = getelementptr inbounds nuw i8, ptr %.10670, i64 2 ; 2 uses
  %i.sw = load i16, ptr %.10670, align 2, !tbaa !162
  %i.sx = zext i16 %i.sw to i32
  %i.sy = sub nsw i32 %i.su, %i.sx
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !4
  %i.tc = add nsw i32 %i.tb, %.2503667            ; 2 uses
  %i.td = add nuw nsw i32 %.2460668, 4            ; 2 uses
  %i.te = icmp slt i32 %i.td, %i.qh
  br i1 %i.te, label %bb.af, label %.lr.ph679, !llvm.loop !185

bb.ag:                                            ; preds = %.lr.ph679, %bb.ag
  %.11678 = phi ptr [ %i.sv, %.lr.ph679 ], [ %i.to, %bb.ag ] ; 2 uses
  %.7446677 = phi ptr [ %i.sm, %.lr.ph679 ], [ %i.tf, %bb.ag ] ; 2 uses
  %.3461676 = phi i32 [ 0, %.lr.ph679 ], [ %i.tw, %bb.ag ]
  %.2497675 = phi i32 [ %.1496685, %.lr.ph679 ], [ %i.tv, %bb.ag ]
  %i.tf = getelementptr inbounds nuw i8, ptr %.7446677, i64 2 ; 2 uses
  %i.tg = load i16, ptr %.7446677, align 2, !tbaa !162
  %i.th = zext i16 %i.tg to i32
  %i.ti = mul nsw i32 %i.qu, %i.th
  %i.tj = add nsw i32 %i.ti, %i.qj
  %i.tk = ashr i32 %i.tj, %i.qk
  %i.tl = add nsw i32 %i.tk, %i.qv
  %i.tm = call noundef i32 @llvm.smax.i32(i32 %i.tl, i32 0)
  %i.tn = call noundef i32 @llvm.smin.i32(i32 %i.tm, i32 %i.sl)
  %i.to = getelementptr inbounds nuw i8, ptr %.11678, i64 2 ; 2 uses
  %i.tp = load i16, ptr %.11678, align 2, !tbaa !162
  %i.tq = zext i16 %i.tp to i32
  %i.tr = sub nsw i32 %i.tn, %i.tq
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !4
  %i.tv = add nsw i32 %i.tu, %.2497675            ; 2 uses
  %i.tw = add nuw nsw i32 %.3461676, 4            ; 2 uses
  %i.tx = icmp slt i32 %i.tw, %i.qh
  br i1 %i.tx, label %bb.ag, label %._crit_edge680, !llvm.loop !186

._crit_edge680:                                   ; preds = %bb.ag, %.preheader541
  %.2503.lcssa847 = phi i32 [ %.1502684, %.preheader541 ], [ %i.tc, %bb.ag ] ; 2 uses
  %.2485.lcssa824832845 = phi i32 [ %.1484687, %.preheader541 ], [ %i.ro, %bb.ag ] ; 2 uses
  %.2491.lcssa834843 = phi i32 [ %.1490686, %.preheader541 ], [ %i.si, %bb.ag ] ; 2 uses
  %.2497.lcssa = phi i32 [ %.1496685, %.preheader541 ], [ %i.tv, %bb.ag ] ; 2 uses
  %.7446.lcssa = phi ptr [ %.3442689, %.preheader541 ], [ %i.tf, %bb.ag ]
  %.11.lcssa = phi ptr [ %.7690, %.preheader541 ], [ %i.to, %bb.ag ] ; 2 uses
  %i.ty = getelementptr inbounds [2 x i8], ptr %.7446.lcssa, i64 %i.qn ; 2 uses
  %i.tz = add nuw nsw i32 %.3469688, 4            ; 2 uses
  %i.ua = icmp slt i32 %i.tz, %i.qf
  br i1 %i.ua, label %.preheader541, label %._crit_edge691, !llvm.loop !187

._crit_edge691:                                   ; preds = %._crit_edge680, %.preheader546
  %.1502.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2503.lcssa847, %._crit_edge680 ]
  %.1496.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2497.lcssa, %._crit_edge680 ]
  %.1490.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2491.lcssa834843, %._crit_edge680 ]
  %.1484.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2485.lcssa824832845, %._crit_edge680 ]
  %.3442.lcssa = phi ptr [ %.2441700, %.preheader546 ], [ %i.ty, %._crit_edge680 ]
  %.7.lcssa = phi ptr [ %.6701, %.preheader546 ], [ %.11.lcssa, %._crit_edge680 ] ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv786 ; 4 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !38
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv793 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !4
  %i.uf = add nsw i32 %i.ue, %.1484.lcssa
  store i32 %i.uf, ptr %i.ud, align 4, !tbaa !4
  %i.ug = getelementptr i8, ptr %i.ub, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !38
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv793 ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !4
  %i.uk = add nsw i32 %i.uj, %.1490.lcssa
  store i32 %i.uk, ptr %i.ui, align 4, !tbaa !4
  %i.ul = getelementptr i8, ptr %i.ub, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !38
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv793 ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !4
  %i.up = add nsw i32 %i.uo, %.1502.lcssa
  store i32 %i.up, ptr %i.un, align 4, !tbaa !4
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 4
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !38
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv793 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !4
  %i.uu = add nsw i32 %i.ut, %.1496.lcssa
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !4
  %i.uv = add nuw nsw i32 %.1480698, 1            ; 2 uses
  %exitcond789.not = icmp eq i32 %i.uv, 4
end_hunk_0
begin_hunk_1_@SetupFastFullPelSearch:bb.a
  br i1 %i.vh, label %.preheader541.lr.ph.1, label %._crit_edge691.1

.preheader541.lr.ph.1:                            ; preds = %.preheader546.1
  %i.vi = load i32, ptr %i.ve, align 8, !tbaa !173 ; 6 uses
  %i.vj = icmp sgt i32 %i.vi, 0
  %i.vk = load i32, ptr @wp_chroma_round, align 4 ; 4 uses
  %i.vl = load i32, ptr @chroma_log_weight_denom, align 4 ; 4 uses
  %i.vm = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.vn = sub nsw i32 %i.vm, %i.vi
  %i.vo = sext i32 %i.vn to i64
  %i.vp = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.vq = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  %i.vr = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.vs = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  %i.vt = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.vu = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  %i.vv = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.vw = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  br label %.preheader541.1

.preheader541.1:                                  ; preds = %._crit_edge680.1, %.preheader541.lr.ph.1
  %.7690.1 = phi ptr [ %.6701.1, %.preheader541.lr.ph.1 ], [ %.11.lcssa.1, %._crit_edge680.1 ] ; 2 uses
  %.3442689.1 = phi ptr [ %.2441700.1, %.preheader541.lr.ph.1 ], [ %i.yz, %._crit_edge680.1 ] ; 2 uses
  %.3469688.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %i.za, %._crit_edge680.1 ]
  %.1484687.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2485.lcssa824832845.1, %._crit_edge680.1 ] ; 2 uses
  %.1490686.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2491.lcssa834843.1, %._crit_edge680.1 ] ; 2 uses
  %.1496685.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2497.lcssa.1, %._crit_edge680.1 ] ; 2 uses
  %.1502684.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2503.lcssa847.1, %._crit_edge680.1 ] ; 2 uses
  br i1 %i.vj, label %.lr.ph654.1, label %._crit_edge680.1

.lr.ph654.1:                                      ; preds = %.preheader541.1
  %i.vx = load i32, ptr %i.vf, align 4, !tbaa !182
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph654.1
  %.8653.1 = phi ptr [ %.7690.1, %.lr.ph654.1 ], [ %i.wh, %bb.ah ] ; 2 uses
  %.4443652.1 = phi ptr [ %.3442689.1, %.lr.ph654.1 ], [ %i.vy, %bb.ah ] ; 2 uses
  %.0458651.1 = phi i32 [ 0, %.lr.ph654.1 ], [ %i.wp, %bb.ah ]
  %.2485650.1 = phi i32 [ %.1484687.1, %.lr.ph654.1 ], [ %i.wo, %bb.ah ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.4443652.1, i64 2 ; 2 uses
  %i.vz = load i16, ptr %.4443652.1, align 2, !tbaa !162
  %i.wa = zext i16 %i.vz to i32
  %i.wb = mul nsw i32 %i.vp, %i.wa
  %i.wc = add nsw i32 %i.wb, %i.vk
  %i.wd = ashr i32 %i.wc, %i.vl
  %i.we = add nsw i32 %i.wd, %i.vq
  %i.wf = call noundef i32 @llvm.smax.i32(i32 %i.we, i32 0)
  %i.wg = call noundef i32 @llvm.smin.i32(i32 %i.wf, i32 %i.vx)
  %i.wh = getelementptr inbounds nuw i8, ptr %.8653.1, i64 2 ; 2 uses
  %i.wi = load i16, ptr %.8653.1, align 2, !tbaa !162
  %i.wj = zext i16 %i.wi to i32
  %i.wk = sub nsw i32 %i.wg, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !4
  %i.wo = add nsw i32 %i.wn, %.2485650.1          ; 2 uses
  %i.wp = add nuw nsw i32 %.0458651.1, 4          ; 2 uses
  %i.wq = icmp slt i32 %i.wp, %i.vi
  br i1 %i.wq, label %bb.ah, label %.lr.ph663.1, !llvm.loop !183

.lr.ph663.1:                                      ; preds = %bb.ah
  %i.wr = load i32, ptr %i.vf, align 4, !tbaa !182
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph663.1
  %.9662.1 = phi ptr [ %i.wh, %.lr.ph663.1 ], [ %i.xb, %bb.ai ] ; 2 uses
  %.5444661.1 = phi ptr [ %i.vy, %.lr.ph663.1 ], [ %i.ws, %bb.ai ] ; 2 uses
  %.1459660.1 = phi i32 [ 0, %.lr.ph663.1 ], [ %i.xj, %bb.ai ]
  %.2491659.1 = phi i32 [ %.1490686.1, %.lr.ph663.1 ], [ %i.xi, %bb.ai ]
  %i.ws = getelementptr inbounds nuw i8, ptr %.5444661.1, i64 2 ; 2 uses
  %i.wt = load i16, ptr %.5444661.1, align 2, !tbaa !162
  %i.wu = zext i16 %i.wt to i32
  %i.wv = mul nsw i32 %i.vr, %i.wu
  %i.ww = add nsw i32 %i.wv, %i.vk
  %i.wx = ashr i32 %i.ww, %i.vl
  %i.wy = add nsw i32 %i.wx, %i.vs
  %i.wz = call noundef i32 @llvm.smax.i32(i32 %i.wy, i32 0)
  %i.xa = call noundef i32 @llvm.smin.i32(i32 %i.wz, i32 %i.wr)
  %i.xb = getelementptr inbounds nuw i8, ptr %.9662.1, i64 2 ; 2 uses
  %i.xc = load i16, ptr %.9662.1, align 2, !tbaa !162
  %i.xd = zext i16 %i.xc to i32
  %i.xe = sub nsw i32 %i.xa, %i.xd
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !4
  %i.xi = add nsw i32 %i.xh, %.2491659.1          ; 2 uses
  %i.xj = add nuw nsw i32 %.1459660.1, 4          ; 2 uses
  %i.xk = icmp slt i32 %i.xj, %i.vi
  br i1 %i.xk, label %bb.ai, label %.lr.ph671.1, !llvm.loop !184

.lr.ph671.1:                                      ; preds = %bb.ai
  %i.xl = load i32, ptr %i.vf, align 4, !tbaa !182
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph671.1
  %.10670.1 = phi ptr [ %i.xb, %.lr.ph671.1 ], [ %i.xv, %bb.aj ] ; 2 uses
  %.6445669.1 = phi ptr [ %i.ws, %.lr.ph671.1 ], [ %i.xm, %bb.aj ] ; 2 uses
  %.2460668.1 = phi i32 [ 0, %.lr.ph671.1 ], [ %i.yd, %bb.aj ]
  %.2503667.1 = phi i32 [ %.1502684.1, %.lr.ph671.1 ], [ %i.yc, %bb.aj ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.6445669.1, i64 2 ; 2 uses
  %i.xn = load i16, ptr %.6445669.1, align 2, !tbaa !162
  %i.xo = zext i16 %i.xn to i32
  %i.xp = mul nsw i32 %i.vt, %i.xo
  %i.xq = add nsw i32 %i.xp, %i.vk
  %i.xr = ashr i32 %i.xq, %i.vl
  %i.xs = add nsw i32 %i.xr, %i.vu
  %i.xt = call noundef i32 @llvm.smax.i32(i32 %i.xs, i32 0)
  %i.xu = call noundef i32 @llvm.smin.i32(i32 %i.xt, i32 %i.xl)
  %i.xv = getelementptr inbounds nuw i8, ptr %.10670.1, i64 2 ; 2 uses
  %i.xw = load i16, ptr %.10670.1, align 2, !tbaa !162
  %i.xx = zext i16 %i.xw to i32
  %i.xy = sub nsw i32 %i.xu, %i.xx
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !4
  %i.yc = add nsw i32 %i.yb, %.2503667.1          ; 2 uses
  %i.yd = add nuw nsw i32 %.2460668.1, 4          ; 2 uses
  %i.ye = icmp slt i32 %i.yd, %i.vi
  br i1 %i.ye, label %bb.aj, label %.lr.ph679.1, !llvm.loop !185

.lr.ph679.1:                                      ; preds = %bb.aj
  %i.yf = load i32, ptr %i.vf, align 4, !tbaa !182
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph679.1
  %.11678.1 = phi ptr [ %i.xv, %.lr.ph679.1 ], [ %i.yp, %bb.ak ] ; 2 uses
  %.7446677.1 = phi ptr [ %i.xm, %.lr.ph679.1 ], [ %i.yg, %bb.ak ] ; 2 uses
  %.3461676.1 = phi i32 [ 0, %.lr.ph679.1 ], [ %i.yx, %bb.ak ]
  %.2497675.1 = phi i32 [ %.1496685.1, %.lr.ph679.1 ], [ %i.yw, %bb.ak ]
  %i.yg = getelementptr inbounds nuw i8, ptr %.7446677.1, i64 2 ; 2 uses
  %i.yh = load i16, ptr %.7446677.1, align 2, !tbaa !162
  %i.yi = zext i16 %i.yh to i32
  %i.yj = mul nsw i32 %i.vv, %i.yi
  %i.yk = add nsw i32 %i.yj, %i.vk
  %i.yl = ashr i32 %i.yk, %i.vl
  %i.ym = add nsw i32 %i.yl, %i.vw
  %i.yn = call noundef i32 @llvm.smax.i32(i32 %i.ym, i32 0)
  %i.yo = call noundef i32 @llvm.smin.i32(i32 %i.yn, i32 %i.yf)
  %i.yp = getelementptr inbounds nuw i8, ptr %.11678.1, i64 2 ; 2 uses
  %i.yq = load i16, ptr %.11678.1, align 2, !tbaa !162
  %i.yr = zext i16 %i.yq to i32
  %i.ys = sub nsw i32 %i.yo, %i.yr
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !4
  %i.yw = add nsw i32 %i.yv, %.2497675.1          ; 2 uses
  %i.yx = add nuw nsw i32 %.3461676.1, 4          ; 2 uses
  %i.yy = icmp slt i32 %i.yx, %i.vi
  br i1 %i.yy, label %bb.ak, label %._crit_edge680.1, !llvm.loop !186

._crit_edge680.1:                                 ; preds = %bb.ak, %.preheader541.1
  %.2503.lcssa847.1 = phi i32 [ %.1502684.1, %.preheader541.1 ], [ %i.yc, %bb.ak ] ; 2 uses
  %.2485.lcssa824832845.1 = phi i32 [ %.1484687.1, %.preheader541.1 ], [ %i.wo, %bb.ak ] ; 2 uses
  %.2491.lcssa834843.1 = phi i32 [ %.1490686.1, %.preheader541.1 ], [ %i.xi, %bb.ak ] ; 2 uses
  %.2497.lcssa.1 = phi i32 [ %.1496685.1, %.preheader541.1 ], [ %i.yw, %bb.ak ] ; 2 uses
  %.7446.lcssa.1 = phi ptr [ %.3442689.1, %.preheader541.1 ], [ %i.yg, %bb.ak ]
  %.11.lcssa.1 = phi ptr [ %.7690.1, %.preheader541.1 ], [ %i.yp, %bb.ak ] ; 2 uses
  %i.yz = getelementptr inbounds [2 x i8], ptr %.7446.lcssa.1, i64 %i.vo ; 2 uses
  %i.za = add nuw nsw i32 %.3469688.1, 4          ; 2 uses
  %i.zb = icmp slt i32 %i.za, %i.vg
  br i1 %i.zb, label %.preheader541.1, label %._crit_edge691.1, !llvm.loop !187

._crit_edge691.1:                                 ; preds = %._crit_edge680.1, %.preheader546.1
  %.1502.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2503.lcssa847.1, %._crit_edge680.1 ]
  %.1496.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2497.lcssa.1, %._crit_edge680.1 ]
  %.1490.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2491.lcssa834843.1, %._crit_edge680.1 ]
  %.1484.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2485.lcssa824832845.1, %._crit_edge680.1 ]
  %.3442.lcssa.1 = phi ptr [ %.2441700.1, %.preheader546.1 ], [ %i.yz, %._crit_edge680.1 ]
  %.7.lcssa.1 = phi ptr [ %.6701.1, %.preheader546.1 ], [ %.11.lcssa.1, %._crit_edge680.1 ]
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv786.1 ; 4 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !38
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %indvars.iv793 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !4
  %i.zg = add nsw i32 %i.zf, %.1484.lcssa.1
  store i32 %i.zg, ptr %i.ze, align 4, !tbaa !4
  %i.zh = getelementptr i8, ptr %i.zc, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !38
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv793 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !4
  %i.zl = add nsw i32 %i.zk, %.1490.lcssa.1
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !4
  %i.zm = getelementptr i8, ptr %i.zc, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !38
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %indvars.iv793 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !4
  %i.zq = add nsw i32 %i.zp, %.1502.lcssa.1
  store i32 %i.zq, ptr %i.zo, align 4, !tbaa !4
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv786.1, 4
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !38
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv793 ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !4
  %i.zv = add nsw i32 %i.zu, %.1496.lcssa.1
  store i32 %i.zv, ptr %i.zt, align 4, !tbaa !4
  %i.zw = add nuw nsw i32 %.1480698.1, 1          ; 2 uses
  %exitcond789.not.1 = icmp eq i32 %i.zw, 4
  br i1 %exitcond789.not.1, label %.loopexit, label %.preheader546.1, !llvm.loop !188

.preheader549:                                    ; preds = %bb.y, %bb.am
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %bb.am ], [ 0, %bb.y ] ; 2 uses
  %indvars.iv767 = phi ptr [ %scevgep, %bb.am ], [ getelementptr inbounds nuw (i8, ptr @SetupFastFullPelSearch.orig_pels, i64 128), %bb.y ] ; 3 uses
  %.12579 = phi ptr [ %indvars.iv767, %bb.am ], [ @SetupFastFullPelSearch.orig_pels, %bb.y ]
  %.8447578 = phi ptr [ %scevgep767, %bb.am ], [ %i.kj, %bb.y ] ; 2 uses
  %.2481576 = phi i32 [ %i.agr, %bb.am ], [ 0, %bb.y ]
  %i.zx = load i32, ptr @img_padded_size_x, align 4, !tbaa !4
  %i.zy = sext i32 %i.zx to i64                   ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.preheader549, %bb.al
  %.13575 = phi ptr [ %.12579, %.preheader549 ], [ %i.afv, %bb.al ] ; 17 uses
  %.9448574 = phi ptr [ %.8447578, %.preheader549 ], [ %i.agc, %bb.al ] ; 17 uses
  %.4470573 = phi i32 [ 0, %.preheader549 ], [ %i.agd, %bb.al ]
  %.3486572 = phi i32 [ 0, %.preheader549 ], [ %i.abm, %bb.al ]
  %.3492571 = phi i32 [ 0, %.preheader549 ], [ %i.ada, %bb.al ]
  %.3498570 = phi i32 [ 0, %.preheader549 ], [ %i.agb, %bb.al ]
  %.3504569 = phi i32 [ 0, %.preheader549 ], [ %i.aeo, %bb.al ]
  %i.zz = getelementptr inbounds nuw i8, ptr %.9448574, i64 2
  %i.aaa = load i16, ptr %.9448574, align 2, !tbaa !162
  %i.aab = zext i16 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %.13575, i64 2
  %i.aad = load i16, ptr %.13575, align 2, !tbaa !162
  %i.aae = zext i16 %i.aad to i64
  %i.aaf = sub nsw i64 %i.aab, %i.aae
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !4
  %i.aai = add nsw i32 %i.aah, %.3486572
  %i.aaj = getelementptr inbounds nuw i8, ptr %.9448574, i64 4
  %i.aak = load i16, ptr %i.zz, align 2, !tbaa !162
  %i.aal = zext i16 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.13575, i64 4
  %i.aan = load i16, ptr %i.aac, align 2, !tbaa !162
  %i.aao = zext i16 %i.aan to i64
  %i.aap = sub nsw i64 %i.aal, %i.aao
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !4
  %i.aas = add nsw i32 %i.aai, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %.9448574, i64 6
  %i.aau = load i16, ptr %i.aaj, align 2, !tbaa !162
  %i.aav = zext i16 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.13575, i64 6
  %i.aax = load i16, ptr %i.aam, align 2, !tbaa !162
  %i.aay = zext i16 %i.aax to i64
  %i.aaz = sub nsw i64 %i.aav, %i.aay
  %i.aba = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !4
  %i.abc = add nsw i32 %i.aas, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %.9448574, i64 8
  %i.abe = load i16, ptr %i.aat, align 2, !tbaa !162
  %i.abf = zext i16 %i.abe to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %.13575, i64 8
  %i.abh = load i16, ptr %i.aaw, align 2, !tbaa !162
  %i.abi = zext i16 %i.abh to i64
  %i.abj = sub nsw i64 %i.abf, %i.abi
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abj
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !4
  %i.abm = add nsw i32 %i.abc, %i.abl             ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.9448574, i64 10
  %i.abo = load i16, ptr %i.abd, align 2, !tbaa !162
  %i.abp = zext i16 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %.13575, i64 10
  %i.abr = load i16, ptr %i.abg, align 2, !tbaa !162
  %i.abs = zext i16 %i.abr to i64
  %i.abt = sub nsw i64 %i.abp, %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !4
  %i.abw = add nsw i32 %i.abv, %.3492571
  %i.abx = getelementptr inbounds nuw i8, ptr %.9448574, i64 12
  %i.aby = load i16, ptr %i.abn, align 2, !tbaa !162
  %i.abz = zext i16 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %.13575, i64 12
  %i.acb = load i16, ptr %i.abq, align 2, !tbaa !162
  %i.acc = zext i16 %i.acb to i64
  %i.acd = sub nsw i64 %i.abz, %i.acc
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !4
  %i.acg = add nsw i32 %i.abw, %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %.9448574, i64 14
  %i.aci = load i16, ptr %i.abx, align 2, !tbaa !162
  %i.acj = zext i16 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %.13575, i64 14
  %i.acl = load i16, ptr %i.aca, align 2, !tbaa !162
  %i.acm = zext i16 %i.acl to i64
  %i.acn = sub nsw i64 %i.acj, %i.acm
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !4
  %i.acq = add nsw i32 %i.acg, %i.acp
  %i.acr = getelementptr inbounds nuw i8, ptr %.9448574, i64 16
  %i.acs = load i16, ptr %i.ach, align 2, !tbaa !162
  %i.act = zext i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %.13575, i64 16
  %i.acv = load i16, ptr %i.ack, align 2, !tbaa !162
  %i.acw = zext i16 %i.acv to i64
  %i.acx = sub nsw i64 %i.act, %i.acw
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !4
  %i.ada = add nsw i32 %i.acq, %i.acz             ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.9448574, i64 18
  %i.adc = load i16, ptr %i.acr, align 2, !tbaa !162
  %i.add = zext i16 %i.adc to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %.13575, i64 18
  %i.adf = load i16, ptr %i.acu, align 2, !tbaa !162
  %i.adg = zext i16 %i.adf to i64
  %i.adh = sub nsw i64 %i.add, %i.adg
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adh
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !4
  %i.adk = add nsw i32 %i.adj, %.3504569
  %i.adl = getelementptr inbounds nuw i8, ptr %.9448574, i64 20
  %i.adm = load i16, ptr %i.adb, align 2, !tbaa !162
  %i.adn = zext i16 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %.13575, i64 20
  %i.adp = load i16, ptr %i.ade, align 2, !tbaa !162
  %i.adq = zext i16 %i.adp to i64
  %i.adr = sub nsw i64 %i.adn, %i.adq
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !4
  %i.adu = add nsw i32 %i.adk, %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %.9448574, i64 22
  %i.adw = load i16, ptr %i.adl, align 2, !tbaa !162
  %i.adx = zext i16 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %.13575, i64 22
  %i.adz = load i16, ptr %i.ado, align 2, !tbaa !162
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = sub nsw i64 %i.adx, %i.aea
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !4
  %i.aee = add nsw i32 %i.adu, %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %.9448574, i64 24
  %i.aeg = load i16, ptr %i.adv, align 2, !tbaa !162
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %.13575, i64 24
  %i.aej = load i16, ptr %i.ady, align 2, !tbaa !162
  %i.aek = zext i16 %i.aej to i64
  %i.ael = sub nsw i64 %i.aeh, %i.aek
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !4
  %i.aeo = add nsw i32 %i.aee, %i.aen             ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.9448574, i64 26
  %i.aeq = load i16, ptr %i.aef, align 2, !tbaa !162
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw i8, ptr %.13575, i64 26
  %i.aet = load i16, ptr %i.aei, align 2, !tbaa !162
  %i.aeu = zext i16 %i.aet to i64
  %i.aev = sub nsw i64 %i.aer, %i.aeu
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aev
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !4
  %i.aey = add nsw i32 %i.aex, %.3498570
  %i.aez = getelementptr inbounds nuw i8, ptr %.9448574, i64 28
  %i.afa = load i16, ptr %i.aep, align 2, !tbaa !162
  %i.afb = zext i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %.13575, i64 28
  %i.afd = load i16, ptr %i.aes, align 2, !tbaa !162
  %i.afe = zext i16 %i.afd to i64
  %i.aff = sub nsw i64 %i.afb, %i.afe
  %i.afg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !4
  %i.afi = add nsw i32 %i.aey, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %.9448574, i64 30
  %i.afk = load i16, ptr %i.aez, align 2, !tbaa !162
  %i.afl = zext i16 %i.afk to i64
  %i.afm = getelementptr inbounds nuw i8, ptr %.13575, i64 30
  %i.afn = load i16, ptr %i.afc, align 2, !tbaa !162
  %i.afo = zext i16 %i.afn to i64
  %i.afp = sub nsw i64 %i.afl, %i.afo
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.afp
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !4
  %i.afs = add nsw i32 %i.afi, %i.afr
  %i.aft = load i16, ptr %i.afj, align 2, !tbaa !162
  %i.afu = zext i16 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr %.13575, i64 32
  %i.afw = load i16, ptr %i.afm, align 2, !tbaa !162
  %i.afx = zext i16 %i.afw to i64
  %i.afy = sub nsw i64 %i.afu, %i.afx
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !4
  %i.agb = add nsw i32 %i.afs, %i.aga             ; 2 uses
  %i.agc = getelementptr [2 x i8], ptr %.9448574, i64 %i.zy
  %i.agd = add nuw nsw i32 %.4470573, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.agd, 4
  br i1 %exitcond.not, label %bb.am, label %bb.al, !llvm.loop !189

bb.am:                                            ; preds = %bb.al
  %i.age = shl nsw i64 %i.zy, 3
  %scevgep767 = getelementptr i8, ptr %.8447578, i64 %i.age
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv768 ; 4 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !38
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv793
  store i32 %i.abm, ptr %i.agh, align 4, !tbaa !4
  %i.agi = getelementptr i8, ptr %i.agf, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !38
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %indvars.iv793
  store i32 %i.ada, ptr %i.agk, align 4, !tbaa !4
  %i.agl = getelementptr i8, ptr %i.agf, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !38
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv793
  store i32 %i.aeo, ptr %i.agn, align 4, !tbaa !4
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 4
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !38
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv793
  store i32 %i.agb, ptr %i.agq, align 4, !tbaa !4
  %i.agr = add nuw nsw i32 %.2481576, 1           ; 2 uses
  %scevgep = getelementptr i8, ptr %indvars.iv767, i64 128
  %exitcond771.not = icmp eq i32 %i.agr, 4
  br i1 %exitcond771.not, label %bb.an, label %.preheader549, !llvm.loop !190

bb.an:                                            ; preds = %bb.am
  %i.ags = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not528 = icmp eq i32 %i.ags, 0
  br i1 %.not528, label %.loopexit, label %.preheader551.preheader

.preheader551.preheader:                          ; preds = %bb.an
  %i.agt = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.agu = sext i32 %i.agt to i64
  %i.agv = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.agu
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !8
  %i.agx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !155
  %i.agy = call ptr %i.agw(ptr noundef %i.agx, i32 noundef %i.jy, i32 noundef %i.ka) #12
  %i.agz = load ptr, ptr @img, align 8, !tbaa !8  ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 15548
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 15544
  br label %.preheader547

.preheader547:                                    ; preds = %.preheader551.preheader, %._crit_edge621
  %indvars.iv772 = phi i64 [ 0, %.preheader551.preheader ], [ %indvars.iv.next773, %._crit_edge621 ] ; 2 uses
  %.15636 = phi ptr [ %indvars.iv767, %.preheader551.preheader ], [ %.16.lcssa, %._crit_edge621 ] ; 4 uses
  %.10449635 = phi ptr [ %i.agy, %.preheader551.preheader ], [ %.11450.lcssa, %._crit_edge621 ] ; 4 uses
  %.3482633 = phi i32 [ 0, %.preheader551.preheader ], [ %i.aqs, %._crit_edge621 ]
  %i.ahc = load i32, ptr %i.aha, align 4, !tbaa !171 ; 4 uses
  %i.ahd = icmp sgt i32 %i.ahc, 0
  br i1 %i.ahd, label %.preheader545.lr.ph, label %._crit_edge621

.preheader545.lr.ph:                              ; preds = %.preheader547
  %i.ahe = load i32, ptr %i.ahb, align 8, !tbaa !173 ; 7 uses
  %i.ahf = icmp sgt i32 %i.ahe, 0
  %i.ahg = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.ahh = sub nsw i32 %i.ahg, %i.ahe
  %i.ahi = sext i32 %i.ahh to i64                 ; 10 uses
  br i1 %i.ahf, label %.preheader545.us.preheader, label %._crit_edge610.preheader

._crit_edge610.preheader:                         ; preds = %.preheader545.lr.ph
  %i.ahj = add nsw i32 %i.ahc, -1
  %i.ahk = lshr i32 %i.ahj, 2
  %i.ahl = add nuw nsw i32 %i.ahk, 1              ; 2 uses
  %xtraiter = and i32 %i.ahl, 7                   ; 3 uses
  %i.ahm = icmp ult i32 %i.ahc, 29
  br i1 %i.ahm, label %._crit_edge610.epil.preheader, label %._crit_edge610.preheader.new

._crit_edge610.preheader.new:                     ; preds = %._crit_edge610.preheader
  %unroll_iter = and i32 %i.ahl, 2147483640
  br label %._crit_edge610

.preheader545.us.preheader:                       ; preds = %.preheader545.lr.ph
  %i.ahn = add nsw i32 %i.ahe, -1
  %i.aho = lshr i32 %i.ahn, 2
  %i.ahp = add nuw nsw i32 %i.aho, 1              ; 8 uses
  %xtraiter1023 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahq = icmp ult i32 %i.ahe, 13
  %unroll_iter1030 = and i32 %i.ahp, 2147483644
  %lcmp.mod1025.not = icmp eq i32 %xtraiter1023, 0
  %lcmp.mod1029 = icmp ne i32 %xtraiter1023, 0
  %xtraiter1036 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahr = icmp ult i32 %i.ahe, 13
  %unroll_iter1043 = and i32 %i.ahp, 2147483644
  %lcmp.mod1038.not = icmp eq i32 %xtraiter1036, 0
  %lcmp.mod1042 = icmp ne i32 %xtraiter1036, 0
  %xtraiter1050 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahs = icmp ult i32 %i.ahe, 13
  %unroll_iter1057 = and i32 %i.ahp, 2147483644
  %lcmp.mod1052.not = icmp eq i32 %xtraiter1050, 0
  %lcmp.mod1056 = icmp ne i32 %xtraiter1050, 0
  %xtraiter1064 = and i32 %i.ahp, 3               ; 3 uses
  %i.aht = icmp ult i32 %i.ahe, 13
  %unroll_iter1071 = and i32 %i.ahp, 2147483644
  %lcmp.mod1066.not = icmp eq i32 %xtraiter1064, 0
  %lcmp.mod1070 = icmp ne i32 %xtraiter1064, 0
  br label %.preheader545.us

.preheader545.us:                                 ; preds = %.preheader545.us.preheader, %._crit_edge610.us
  %.16620.us = phi ptr [ %.lcssa979.a, %._crit_edge610.us ], [ %.15636, %.preheader545.us.preheader ] ; 2 uses
  %.11450619.us = phi ptr [ %i.aie, %._crit_edge610.us ], [ %.10449635, %.preheader545.us.preheader ] ; 2 uses
  %.5471618.us = phi i32 [ %i.aif, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ]
  %.4487617.us = phi i32 [ %.lcssa969, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4493616.us = phi i32 [ %.lcssa972.a, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4499615.us = phi i32 [ %.lcssa978.a, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4505614.us = phi i32 [ %.lcssa975.a, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  br i1 %i.ahq, label %.epil.preheader, label %.preheader545.us.new

._crit_edge610.us.unr-lcssa:                      ; preds = %.lr.ph609.us
  br i1 %lcmp.mod1066.not, label %._crit_edge610.us, label %.lr.ph609.us.epil.preheader

.lr.ph609.us.epil.preheader:                      ; preds = %._crit_edge610.us.unr-lcssa, %.lr.ph609.us.preheader
  %.20608.us.epil.init = phi ptr [ %.lcssa976.a, %.lr.ph609.us.preheader ], [ %i.ajo, %._crit_edge610.us.unr-lcssa ]
  %.15454607.us.epil.init = phi ptr [ %.lcssa977.a, %.lr.ph609.us.preheader ], [ %i.ajl, %._crit_edge610.us.unr-lcssa ]
  %.5500605.us.epil.init = phi i32 [ %.4499615.us, %.lr.ph609.us.preheader ], [ %i.aju, %._crit_edge610.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1070)
  br label %.lr.ph609.us.epil

.lr.ph609.us.epil:                                ; preds = %.lr.ph609.us.epil, %.lr.ph609.us.epil.preheader
  %.20608.us.epil = phi ptr [ %i.ahx, %.lr.ph609.us.epil ], [ %.20608.us.epil.init, %.lr.ph609.us.epil.preheader ] ; 2 uses
  %.15454607.us.epil = phi ptr [ %i.ahu, %.lr.ph609.us.epil ], [ %.15454607.us.epil.init, %.lr.ph609.us.epil.preheader ] ; 2 uses
  %.5500605.us.epil = phi i32 [ %i.aid, %.lr.ph609.us.epil ], [ %.5500605.us.epil.init, %.lr.ph609.us.epil.preheader ]
  %epil.iter1065 = phi i32 [ %epil.iter1065.next, %.lr.ph609.us.epil ], [ 0, %.lr.ph609.us.epil.preheader ]
  %i.ahu = getelementptr inbounds nuw i8, ptr %.15454607.us.epil, i64 2 ; 2 uses
  %i.ahv = load i16, ptr %.15454607.us.epil, align 2, !tbaa !162
  %i.ahw = zext i16 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %.20608.us.epil, i64 2 ; 2 uses
  %i.ahy = load i16, ptr %.20608.us.epil, align 2, !tbaa !162
  %i.ahz = zext i16 %i.ahy to i64
  %i.aia = sub nsw i64 %i.ahw, %i.ahz
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !4
  %i.aid = add nsw i32 %i.aic, %.5500605.us.epil  ; 2 uses
  %epil.iter1065.next = add i32 %epil.iter1065, 1 ; 2 uses
  %epil.iter1065.cmp.not = icmp eq i32 %epil.iter1065.next, %xtraiter1064
  br i1 %epil.iter1065.cmp.not, label %._crit_edge610.us, label %.lr.ph609.us.epil, !llvm.loop !191

._crit_edge610.us:                                ; preds = %.lr.ph609.us.epil, %._crit_edge610.us.unr-lcssa
  %.lcssa980.a = phi ptr [ %i.ajl, %._crit_edge610.us.unr-lcssa ], [ %i.ahu, %.lr.ph609.us.epil ]
  %.lcssa979.a = phi ptr [ %i.ajo, %._crit_edge610.us.unr-lcssa ], [ %i.ahx, %.lr.ph609.us.epil ] ; 2 uses
  %.lcssa978.a = phi i32 [ %i.aju, %._crit_edge610.us.unr-lcssa ], [ %i.aid, %.lr.ph609.us.epil ] ; 2 uses
  %i.aie = getelementptr inbounds [2 x i8], ptr %.lcssa980.a, i64 %i.ahi ; 2 uses
  %i.aif = add nuw nsw i32 %.5471618.us, 4        ; 2 uses
  %i.aig = icmp slt i32 %i.aif, %i.ahc
  br i1 %i.aig, label %.preheader545.us, label %._crit_edge621, !llvm.loop !192

.lr.ph609.us:                                     ; preds = %.lr.ph609.us.preheader, %.lr.ph609.us
  %.20608.us = phi ptr [ %i.ajo, %.lr.ph609.us ], [ %.lcssa976.a, %.lr.ph609.us.preheader ] ; 5 uses
  %.15454607.us = phi ptr [ %i.ajl, %.lr.ph609.us ], [ %.lcssa977.a, %.lr.ph609.us.preheader ] ; 5 uses
  %.5500605.us = phi i32 [ %i.aju, %.lr.ph609.us ], [ %.4499615.us, %.lr.ph609.us.preheader ]
  %niter1072 = phi i32 [ %niter1072.next.3, %.lr.ph609.us ], [ 0, %.lr.ph609.us.preheader ]
  %i.aih = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 2
  %i.aii = load i16, ptr %.15454607.us, align 2, !tbaa !162
  %i.aij = zext i16 %i.aii to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %.20608.us, i64 2
  %i.ail = load i16, ptr %.20608.us, align 2, !tbaa !162
  %i.aim = zext i16 %i.ail to i64
  %i.ain = sub nsw i64 %i.aij, %i.aim
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !4
  %i.aiq = add nsw i32 %i.aip, %.5500605.us
  %i.air = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 4
  %i.ais = load i16, ptr %i.aih, align 2, !tbaa !162
  %i.ait = zext i16 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw i8, ptr %.20608.us, i64 4
  %i.aiv = load i16, ptr %i.aik, align 2, !tbaa !162
  %i.aiw = zext i16 %i.aiv to i64
  %i.aix = sub nsw i64 %i.ait, %i.aiw
  %i.aiy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aix
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !4
  %i.aja = add nsw i32 %i.aiz, %i.aiq
  %i.ajb = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 6
  %i.ajc = load i16, ptr %i.air, align 2, !tbaa !162
  %i.ajd = zext i16 %i.ajc to i64
  %i.aje = getelementptr inbounds nuw i8, ptr %.20608.us, i64 6
  %i.ajf = load i16, ptr %i.aiu, align 2, !tbaa !162
  %i.ajg = zext i16 %i.ajf to i64
  %i.ajh = sub nsw i64 %i.ajd, %i.ajg
  %i.aji = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !4
  %i.ajk = add nsw i32 %i.ajj, %i.aja
  %i.ajl = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 8 ; 3 uses
  %i.ajm = load i16, ptr %i.ajb, align 2, !tbaa !162
  %i.ajn = zext i16 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw i8, ptr %.20608.us, i64 8 ; 3 uses
  %i.ajp = load i16, ptr %i.aje, align 2, !tbaa !162
  %i.ajq = zext i16 %i.ajp to i64
  %i.ajr = sub nsw i64 %i.ajn, %i.ajq
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ajr
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !4
  %i.aju = add nsw i32 %i.ajt, %i.ajk             ; 3 uses
  %niter1072.next.3 = add nuw nsw i32 %niter1072, 4 ; 2 uses
  %niter1072.ncmp.3.not = icmp eq i32 %niter1072.next.3, %unroll_iter1071
  br i1 %niter1072.ncmp.3.not, label %._crit_edge610.us.unr-lcssa, label %.lr.ph609.us, !llvm.loop !193

.lr.ph601.us:                                     ; preds = %.lr.ph601.us.preheader, %.lr.ph601.us
  %.19600.us = phi ptr [ %i.alc, %.lr.ph601.us ], [ %.lcssa973.a, %.lr.ph601.us.preheader ] ; 5 uses
  %.14453599.us = phi ptr [ %i.akz, %.lr.ph601.us ], [ %.lcssa974.a, %.lr.ph601.us.preheader ] ; 5 uses
  %.5506597.us = phi i32 [ %i.ali, %.lr.ph601.us ], [ %.4505614.us, %.lr.ph601.us.preheader ]
  %niter1058 = phi i32 [ %niter1058.next.3, %.lr.ph601.us ], [ 0, %.lr.ph601.us.preheader ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 2
  %i.ajw = load i16, ptr %.14453599.us, align 2, !tbaa !162
  %i.ajx = zext i16 %i.ajw to i64
  %i.ajy = getelementptr inbounds nuw i8, ptr %.19600.us, i64 2
  %i.ajz = load i16, ptr %.19600.us, align 2, !tbaa !162
  %i.aka = zext i16 %i.ajz to i64
  %i.akb = sub nsw i64 %i.ajx, %i.aka
  %i.akc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.akb
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !4
  %i.ake = add nsw i32 %i.akd, %.5506597.us
  %i.akf = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 4
  %i.akg = load i16, ptr %i.ajv, align 2, !tbaa !162
  %i.akh = zext i16 %i.akg to i64
  %i.aki = getelementptr inbounds nuw i8, ptr %.19600.us, i64 4
  %i.akj = load i16, ptr %i.ajy, align 2, !tbaa !162
  %i.akk = zext i16 %i.akj to i64
  %i.akl = sub nsw i64 %i.akh, %i.akk
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.akl
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !4
  %i.ako = add nsw i32 %i.akn, %i.ake
  %i.akp = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 6
  %i.akq = load i16, ptr %i.akf, align 2, !tbaa !162
  %i.akr = zext i16 %i.akq to i64
  %i.aks = getelementptr inbounds nuw i8, ptr %.19600.us, i64 6
  %i.akt = load i16, ptr %i.aki, align 2, !tbaa !162
  %i.aku = zext i16 %i.akt to i64
  %i.akv = sub nsw i64 %i.akr, %i.aku
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.akv
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !4
  %i.aky = add nsw i32 %i.akx, %i.ako
  %i.akz = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 8 ; 3 uses
  %i.ala = load i16, ptr %i.akp, align 2, !tbaa !162
  %i.alb = zext i16 %i.ala to i64
  %i.alc = getelementptr inbounds nuw i8, ptr %.19600.us, i64 8 ; 3 uses
  %i.ald = load i16, ptr %i.aks, align 2, !tbaa !162
  %i.ale = zext i16 %i.ald to i64
  %i.alf = sub nsw i64 %i.alb, %i.ale
  %i.alg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.alf
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !4
  %i.ali = add nsw i32 %i.alh, %i.aky             ; 3 uses
  %niter1058.next.3 = add nuw nsw i32 %niter1058, 4 ; 2 uses
  %niter1058.ncmp.3.not = icmp eq i32 %niter1058.next.3, %unroll_iter1057
  br i1 %niter1058.ncmp.3.not, label %.lr.ph609.us.preheader.unr-lcssa, label %.lr.ph601.us, !llvm.loop !194

.lr.ph609.us.preheader.unr-lcssa:                 ; preds = %.lr.ph601.us
  br i1 %lcmp.mod1052.not, label %.lr.ph609.us.preheader, label %.lr.ph601.us.epil.preheader
end_hunk_1
