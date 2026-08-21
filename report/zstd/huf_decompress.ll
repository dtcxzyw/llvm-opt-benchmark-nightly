inline.NumInlined: 744
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_readDTableX2_wksp:bb.a
  %i.fq = sext i32 %i.fc to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.eo, i64 %i.fo
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !45
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fk, %i.fu
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul nuw i64 %i.fw, 4294967297           ; 2 uses
  store i64 %i.fx, ptr %i.fr, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %i.fx, ptr %i.fy, align 2
  %i.fz = add i32 %i.fc, 4
  %indvars.iv.next88.i.prol = add nsw i64 %i.fo, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader
  %indvars.iv87.i.unr = phi i64 [ %i.fo, %.loopexit.i.us.us74.i.preheader ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %i.fc, %.loopexit.i.us.us74.i.preheader ], [ %i.fz, %.loopexit.i.us.us74.i.prol ]
  %i.ga = icmp eq i32 %i.ex, %.neg
  br i1 %i.ga, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.gb = sub i32 %i.ex, %i.ev
  %.neg399 = add i32 %i.ev, 1
  %xtraiter373 = and i32 %i.gb, 1
  %lcmp.mod374.not = icmp eq i32 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.gc = sext i32 %i.fc to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gc
  %i.ge = getelementptr inbounds i8, ptr %i.eo, i64 %i.fo
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !45
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.fk, %i.gg
  %i.gi = zext i32 %i.gh to i64
  %i.gj = mul nuw i64 %i.gi, 4294967297
  store i64 %i.gj, ptr %i.gd, align 2
  %i.gk = add i32 %i.fc, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fo, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fo, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
  %.05267.us.us.i.unr = phi i32 [ %i.fc, %.loopexit.i.us.us.i.preheader ], [ %i.gk, %.loopexit.i.us.us.i.prol ]
  %i.gl = icmp eq i32 %i.ex, %.neg399
  br i1 %i.gl, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.he, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.gm = sext i32 %.05267.us.us.i to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !45
  %i.gq = zext i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.fk, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = mul nuw i64 %i.gs, 4294967297
  store i64 %i.gt, ptr %i.gn, align 2
  %i.gu = add i32 %.05267.us.us.i, 2
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !45
  %i.ha = zext i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.fk, %i.ha
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul nuw i64 %i.hc, 4294967297
  store i64 %i.hd, ptr %i.gw, align 2
  %i.he = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.hf = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ex, %i.hf
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !53

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.ia, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.hg = sext i32 %.05267.us.us73.i to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !45
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.fk, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %i.hm, 4294967297           ; 2 uses
  store i64 %i.hn, ptr %i.hh, align 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 %i.hn, ptr %i.ho, align 2
  %i.hp = add i32 %.05267.us.us73.i, 4
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.ht = getelementptr i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !45
  %i.hv = zext i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.fk, %i.hv
  %i.hx = zext i32 %i.hw to i64
  %i.hy = mul nuw i64 %i.hx, 4294967297           ; 2 uses
  store i64 %i.hy, ptr %i.hr, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hy, ptr %i.hz, align 2
  %i.ia = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.ib = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ex, %i.ib
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !53

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fo, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.jj, %.loopexit.i.us.i ], [ %i.fc, %.lr.ph.split.us.i ] ; 2 uses
  %i.ic = sext i32 %.05267.us.i to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ic ; 9 uses
  %i.ie = load i32, ptr %i.fm, align 4, !tbaa !8  ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.ig = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !45
  %i.ii = zext i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.fk, %i.ii
  %i.ik = zext i32 %i.ij to i64
  %i.il = mul nuw i64 %i.ik, 4294967297
  %i.im = zext nneg i32 %i.ie to i64
  %i.in = insertelement <4 x i64> poison, i64 %i.il, i64 0
  %i.io = shufflevector <4 x i64> %i.in, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ip = add nsw i64 %i.im, -1
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %xtraiter376 = and i64 %i.ir, 7                 ; 3 uses
  %i.is = icmp ult i32 %i.ie, 57
  br i1 %i.is, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter380 = and i64 %i.ir, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter381 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter381.next.7, %.lr.ph.i.us.i ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.io, ptr %i.it, align 2
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store <4 x i64> %i.io, ptr %i.iv, align 2
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store <4 x i64> %i.io, ptr %i.ix, align 2
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store <4 x i64> %i.io, ptr %i.iz, align 2
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  store <4 x i64> %i.io, ptr %i.jb, align 2
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 160
  store <4 x i64> %i.io, ptr %i.jd, align 2
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 192
  store <4 x i64> %i.io, ptr %i.jf, align 2
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 224
  store <4 x i64> %i.io, ptr %i.jh, align 2
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 64 ; 2 uses
  %niter381.next.7 = add nuw nsw i64 %niter381, 8 ; 2 uses
  %niter381.ncmp.7.not = icmp eq i64 %niter381.next.7, %unroll_iter380
  br i1 %niter381.ncmp.7.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !54

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.7, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter376, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter377 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter377.next, %.lr.ph.i.us.i.epil ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i.epil
  store <4 x i64> %i.io, ptr %i.ji, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter377.next = add i64 %epil.iter377, 1   ; 2 uses
  %epil.iter377.cmp.not = icmp eq i64 %epil.iter377.next, %xtraiter376
  br i1 %epil.iter377.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !55

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i
  %i.jj = add i32 %.05267.us.i, %i.fe
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.jk = trunc nsw i64 %indvars.iv.next94.i to i32
  %.not57.us.i = icmp eq i32 %i.ex, %i.jk
  br i1 %.not57.us.i, label %.loopexit.i, label %.preheader.i.us.i, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %HUF_fillDTableX2Level2.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %HUF_fillDTableX2Level2.exit.loopexit.i ], [ %i.fo, %.lr.ph.i ] ; 2 uses
  %.05267.i = phi i32 [ %i.tj, %HUF_fillDTableX2Level2.exit.loopexit.i ], [ %i.fc, %.lr.ph.i ] ; 2 uses
  %i.jl = sext i32 %.05267.i to i64               ; 3 uses
  %i.jm = getelementptr [4 x i8], ptr %i.e, i64 %i.jl ; 13 uses
  %i.jn = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.i
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !45
  %i.jp = zext i8 %i.jo to i32                    ; 2 uses
  br i1 %i.fi, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.jq = or disjoint i32 %i.fk, %i.jp
  %i.jr = zext i32 %i.jq to i64
  %i.js = mul nuw i64 %i.jr, 4294967297           ; 4 uses
  %i.jt = load i32, ptr %i.fm, align 4, !tbaa !8  ; 3 uses
  switch i32 %i.fe, label %.preheader.i.i [
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.jv = zext nneg i32 %i.jt to i64
  %i.jw = insertelement <4 x i64> poison, i64 %i.js, i64 0
  %i.jx = shufflevector <4 x i64> %i.jw, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.jy = add nsw i64 %i.jv, -1
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %xtraiter345 = and i64 %i.ka, 7                 ; 3 uses
  %i.kb = icmp ult i32 %i.jt, 57
  br i1 %i.kb, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter349 = and i64 %i.ka, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.js, ptr %i.jm, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.js, ptr %i.jm, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %i.js, ptr %i.kc, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter350 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter350.next.7, %.lr.ph.i.i ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  store <4 x i64> %i.jx, ptr %i.kd, align 2
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  store <4 x i64> %i.jx, ptr %i.kf, align 2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  store <4 x i64> %i.jx, ptr %i.kh, align 2
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  store <4 x i64> %i.jx, ptr %i.kj, align 2
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 128
  store <4 x i64> %i.jx, ptr %i.kl, align 2
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 160
  store <4 x i64> %i.jx, ptr %i.kn, align 2
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 192
  store <4 x i64> %i.jx, ptr %i.kp, align 2
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 224
  store <4 x i64> %i.jx, ptr %i.kr, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter350.next.7 = add nuw nsw i64 %niter350, 8 ; 2 uses
  %niter350.ncmp.7.not = icmp eq i64 %niter350.next.7, %unroll_iter349
  br i1 %niter350.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !54

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod347.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod347.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod348 = icmp ne i64 %xtraiter345, 0
  call void @llvm.assume(i1 %lcmp.mod348)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter346 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter346.next, %.lr.ph.i.i.epil ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.jx, ptr %i.ks, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter346.next = add i64 %epil.iter346, 1   ; 2 uses
  %epil.iter346.cmp.not = icmp eq i64 %epil.iter346.next, %xtraiter345
  br i1 %epil.iter346.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !56

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.jp, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fl, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %HUF_fillDTableX2ForWeight.exit.i ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8  ; 2 uses
  %i.kx = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.ky = sub i32 %i.fn, %i.kx                    ; 6 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv55.i.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8
  %i.lb = zext i32 %i.la to i64                   ; 3 uses
  %i.lc = getelementptr [4 x i8], ptr %i.jm, i64 %i.lb ; 20 uses
  %i.ld = sext i32 %i.ku to i64                   ; 9 uses
  %i.le = getelementptr i8, ptr %i.eo, i64 %i.ld  ; 16 uses
  %i.lf = sext i32 %i.kw to i64                   ; 13 uses
  %i.lg = getelementptr i8, ptr %i.eo, i64 %i.lf  ; 7 uses
  %i.lh = sub i32 %spec.store.select, %i.ky
  %i.li = and i32 %i.lh, 31                       ; 2 uses
  %i.lj = shl nuw i32 1, %i.li
  %.not82116.i.i = icmp eq i32 %i.ku, %i.kw       ; 5 uses
  switch i32 %i.li, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.lk = shl i32 %i.ky, 16
  %invariant.op.reass = add i32 %i.lk, %invariant.op139 ; 3 uses
  %i.ll = sub nsw i64 %i.lf, %i.ld
  %xtraiter351 = and i64 %i.ll, 1
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !45
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.lo, %invariant.op.reass
  %i.lp = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.lq = mul nuw i64 %i.lp, 4294967297           ; 4 uses
  store i64 %i.lq, ptr %i.lc, align 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i64 %i.lq, ptr %i.lr, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i64 %i.lq, ptr %i.ls, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i64 %i.lq, ptr %i.lt, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.lc, %.lr.ph.i58.i ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.le, %.lr.ph.i58.i ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %i.lw = add nsw i64 %i.lf, -1
  %i.lx = icmp eq i64 %i.lw, %i.ld
  br i1 %i.lx, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.ly = shl i32 %i.ky, 16
  %invariant.op135.reass = add i32 %i.ly, %invariant.op139 ; 5 uses
  %i.lz = sub nsw i64 %i.lf, %i.ld
  %xtraiter356 = and i64 %i.lz, 3                 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %.prol.loopexit355, label %.prol.preheader354

.prol.preheader354:                               ; preds = %.lr.ph98.i.i, %.prol.preheader354
  %.297.i.i.prol = phi ptr [ %i.mg, %.prol.preheader354 ], [ %i.lc, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.mh, %.prol.preheader354 ], [ %i.le, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter358 = phi i64 [ %prol.iter358.next, %.prol.preheader354 ], [ 0, %.lr.ph98.i.i ]
  %i.ma = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !45
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw nsw i32 %i.mb, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.mc, %invariant.op135.reass
  %i.md = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.me = mul nuw i64 %i.md, 4294967297           ; 2 uses
  store i64 %i.me, ptr %.297.i.i.prol, align 2
  %i.mf = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.me, ptr %i.mf, align 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter358.next = add i64 %prol.iter358, 1   ; 2 uses
  %prol.iter358.cmp.not = icmp eq i64 %prol.iter358.next, %xtraiter356
  br i1 %prol.iter358.cmp.not, label %.prol.loopexit355, label %.prol.preheader354, !llvm.loop !57

.prol.loopexit355:                                ; preds = %.prol.preheader354, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.lc, %.lr.ph98.i.i ], [ %i.mg, %.prol.preheader354 ]
  %.27696.i.i.unr = phi ptr [ %i.le, %.lr.ph98.i.i ], [ %i.mh, %.prol.preheader354 ]
  %i.mi = sub nsw i64 %i.ld, %i.lf
  %i.mj = icmp ugt i64 %i.mi, -4
  br i1 %i.mj, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.mk = shl i32 %i.ky, 16
  %invariant.op136.reass = add i32 %i.mk, %invariant.op139 ; 6 uses
  %i.ml = sub nsw i64 %i.lf, %i.ld                ; 3 uses
  %min.iters.check298 = icmp ult i64 %i.ml, 8
  br i1 %min.iters.check298, label %scalar.ph297.preheader, label %vector.memcheck291

vector.memcheck291:                               ; preds = %.lr.ph104.i.i
  %i.mm = shl nsw i64 %i.lf, 3
  %i.mn = add nsw i64 %i.jl, %i.lb
  %i.mo = shl nsw i64 %i.mn, 2
  %i.mp = add nsw i64 %i.mm, %i.mo
  %i.mq = shl nsw i64 %i.ld, 3
  %i.mr = sub nsw i64 %i.mp, %i.mq
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.mr
  %bound0294 = icmp ult ptr %i.lc, %i.lg
  %bound1295 = icmp ult ptr %i.le, %scevgep293
  %found.conflict296 = and i1 %bound0294, %bound1295
  br i1 %found.conflict296, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck291
  %n.vec300 = and i64 %i.ml, -4                   ; 4 uses
  %i.ms = shl nsw i64 %n.vec300, 3
  %i.mt = getelementptr i8, ptr %i.lc, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.le, i64 %n.vec300
  %broadcast.splatinsert301 = insertelement <2 x i32> poison, i32 %invariant.op136.reass, i64 0
  %broadcast.splat302 = shufflevector <2 x i32> %broadcast.splatinsert301, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph299
  %index304 = phi i64 [ 0, %vector.ph299 ], [ %index.next312, %vector.body303 ] ; 3 uses
  %i.mv = shl i64 %index304, 3                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.lc, i64 %i.mv
  %i.mw = getelementptr i8, ptr %i.lc, i64 %i.mv
  %next.gep306 = getelementptr i8, ptr %i.mw, i64 16
  %next.gep307 = getelementptr i8, ptr %i.le, i64 %index304 ; 2 uses
  %i.mx = getelementptr i8, ptr %next.gep307, i64 2
  %wide.load308 = load <2 x i8>, ptr %next.gep307, align 1, !tbaa !45, !alias.scope !58
  %wide.load309 = load <2 x i8>, ptr %i.mx, align 1, !tbaa !45, !alias.scope !58
  %i.my = zext <2 x i8> %wide.load308 to <2 x i32>
  %i.mz = zext <2 x i8> %wide.load309 to <2 x i32>
  %i.na = shl nuw nsw <2 x i32> %i.my, splat (i32 8)
  %i.nb = shl nuw nsw <2 x i32> %i.mz, splat (i32 8)
  %i.nc = or disjoint <2 x i32> %i.na, %broadcast.splat302
  %i.nd = or disjoint <2 x i32> %i.nb, %broadcast.splat302
  %interleaved.vec310 = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec310, ptr %next.gep305, align 2, !alias.scope !61, !noalias !58
  %interleaved.vec311 = shufflevector <2 x i32> %i.nd, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec311, ptr %next.gep306, align 2, !alias.scope !61, !noalias !58
  %index.next312 = add nuw i64 %index304, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next312, %n.vec300
  br i1 %i.ne, label %middle.block313, label %vector.body303, !llvm.loop !63

middle.block313:                                  ; preds = %vector.body303
  %cmp.n314 = icmp eq i64 %i.ml, %n.vec300
  br i1 %cmp.n314, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %vector.memcheck291, %.lr.ph104.i.i, %middle.block313
  %.1103.i.i.ph = phi ptr [ %i.lc, %vector.memcheck291 ], [ %i.lc, %.lr.ph104.i.i ], [ %i.mt, %middle.block313 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.le, %vector.memcheck291 ], [ %i.le, %.lr.ph104.i.i ], [ %i.mu, %middle.block313 ] ; 3 uses
  %i.nf = add i64 %i.a, %i.lf
  %.175102.i.i.ph359 = ptrtoaddr ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.ng = sub i64 %i.nf, %.175102.i.i.ph359
  %i.nh = add i64 %i.eq, %i.lf
  %i.ni = sub i64 %i.nh, %.175102.i.i.ph359
  %xtraiter360 = and i64 %i.ng, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol

scalar.ph297.prol:                                ; preds = %scalar.ph297.preheader, %scalar.ph297.prol
  %.1103.i.i.prol = phi ptr [ %i.nn, %scalar.ph297.prol ], [ %.1103.i.i.ph, %scalar.ph297.preheader ] ; 3 uses
  %.175102.i.i.prol = phi ptr [ %i.no, %scalar.ph297.prol ], [ %.175102.i.i.ph, %scalar.ph297.preheader ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %scalar.ph297.prol ], [ 0, %scalar.ph297.preheader ]
  %i.nj = load i8, ptr %.175102.i.i.prol, align 1, !tbaa !45
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 8
  %.reass106.reass.i.reass.i.reass.prol = or disjoint i32 %i.nl, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %.1103.i.i.prol, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 4
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %i.nm, align 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.175102.i.i.prol, i64 1 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol, !llvm.loop !64

scalar.ph297.prol.loopexit:                       ; preds = %scalar.ph297.prol, %scalar.ph297.preheader
  %.1103.i.i.unr = phi ptr [ %.1103.i.i.ph, %scalar.ph297.preheader ], [ %i.nn, %scalar.ph297.prol ]
  %.175102.i.i.unr = phi ptr [ %.175102.i.i.ph, %scalar.ph297.preheader ], [ %i.no, %scalar.ph297.prol ]
  %i.np = icmp ult i64 %i.ni, 3
  br i1 %i.np, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph297

.preheader84.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.preheader84.i.i
  %i.nq = shl i32 %i.ky, 16
  %invariant.op137.reass = add i32 %i.nq, %invariant.op139 ; 6 uses
  %i.nr = sub nsw i64 %i.lf, %i.ld                ; 3 uses
  %min.iters.check275 = icmp ult i64 %i.nr, 8
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph110.i.i
  %i.ns = add nsw i64 %i.jl, %i.lf
  %i.nt = add nsw i64 %i.ns, %i.lb
  %i.nu = sub nsw i64 %i.nt, %i.ld
  %i.nv = shl nsw i64 %i.nu, 2
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.nv
  %bound0271 = icmp ult ptr %i.lc, %i.lg
  %bound1272 = icmp ult ptr %i.le, %scevgep270
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck268
  %n.vec277 = and i64 %i.nr, -8                   ; 4 uses
  %i.nw = shl nsw i64 %n.vec277, 2
  %i.nx = getelementptr i8, ptr %i.lc, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.le, i64 %n.vec277
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %invariant.op137.reass, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next286, %vector.body280 ] ; 3 uses
  %i.nz = shl i64 %index281, 2
  %next.gep282 = getelementptr i8, ptr %i.lc, i64 %i.nz ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.le, i64 %index281 ; 2 uses
  %i.oa = getelementptr i8, ptr %next.gep283, i64 4
  %wide.load284 = load <4 x i8>, ptr %next.gep283, align 1, !tbaa !45, !alias.scope !65
  %wide.load285 = load <4 x i8>, ptr %i.oa, align 1, !tbaa !45, !alias.scope !65
  %i.ob = zext <4 x i8> %wide.load284 to <4 x i32>
  %i.oc = zext <4 x i8> %wide.load285 to <4 x i32>
  %i.od = shl nuw nsw <4 x i32> %i.ob, splat (i32 8)
  %i.oe = shl nuw nsw <4 x i32> %i.oc, splat (i32 8)
  %i.of = or disjoint <4 x i32> %i.od, %broadcast.splat279
  %i.og = or disjoint <4 x i32> %i.oe, %broadcast.splat279
  %i.oh = getelementptr i8, ptr %next.gep282, i64 16
  store <4 x i32> %i.of, ptr %next.gep282, align 2, !alias.scope !68, !noalias !65
  store <4 x i32> %i.og, ptr %i.oh, align 2, !alias.scope !68, !noalias !65
  %index.next286 = add nuw i64 %index281, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next286, %n.vec277
  br i1 %i.oi, label %middle.block287, label %vector.body280, !llvm.loop !70

middle.block287:                                  ; preds = %vector.body280
  %cmp.n288 = icmp eq i64 %i.nr, %n.vec277
  br i1 %cmp.n288, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %vector.memcheck268, %.lr.ph110.i.i, %middle.block287
  %.0109.i.i.ph = phi ptr [ %i.lc, %vector.memcheck268 ], [ %i.lc, %.lr.ph110.i.i ], [ %i.nx, %middle.block287 ] ; 2 uses
  %.074108.i.i.ph = phi ptr [ %i.le, %vector.memcheck268 ], [ %i.le, %.lr.ph110.i.i ], [ %i.ny, %middle.block287 ] ; 3 uses
  %i.oj = add i64 %i.a, %i.lf
  %.074108.i.i.ph363 = ptrtoaddr ptr %.074108.i.i.ph to i64 ; 2 uses
  %i.ok = sub i64 %i.oj, %.074108.i.i.ph363
  %i.ol = add i64 %i.er, %i.lf
  %i.om = sub i64 %i.ol, %.074108.i.i.ph363
  %xtraiter364 = and i64 %i.ok, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol

scalar.ph274.prol:                                ; preds = %scalar.ph274.preheader, %scalar.ph274.prol
  %.0109.i.i.prol = phi ptr [ %i.oq, %scalar.ph274.prol ], [ %.0109.i.i.ph, %scalar.ph274.preheader ] ; 2 uses
  %.074108.i.i.prol = phi ptr [ %i.or, %scalar.ph274.prol ], [ %.074108.i.i.ph, %scalar.ph274.preheader ] ; 2 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %scalar.ph274.prol ], [ 0, %scalar.ph274.preheader ]
  %i.on = load i8, ptr %.074108.i.i.prol, align 1, !tbaa !45
  %i.oo = zext i8 %i.on to i32
  %i.op = shl nuw nsw i32 %i.oo, 8
  %.reass112.reass.i.reass.i.reass.prol = or disjoint i32 %i.op, %invariant.op137.reass
  %i.oq = getelementptr inbounds nuw i8, ptr %.0109.i.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.reass.i.reass.prol, ptr %.0109.i.i.prol, align 2
  %i.or = getelementptr inbounds nuw i8, ptr %.074108.i.i.prol, i64 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol, !llvm.loop !71

scalar.ph274.prol.loopexit:                       ; preds = %scalar.ph274.prol, %scalar.ph274.preheader
  %.0109.i.i.unr = phi ptr [ %.0109.i.i.ph, %scalar.ph274.preheader ], [ %i.oq, %scalar.ph274.prol ]
  %.074108.i.i.unr = phi ptr [ %.074108.i.i.ph, %scalar.ph274.preheader ], [ %i.or, %scalar.ph274.prol ]
  %i.os = icmp ult i64 %i.om, 3
  br i1 %i.os, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph274

.preheader.i60.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader.i60.i
  %i.ot = shl i32 %i.ky, 16
  %i.ou = zext i32 %i.lj to i64
  %.idx.i.i = shl nuw nsw i64 %i.ou, 2            ; 2 uses
  %invariant.op138.reass = add i32 %i.ot, %invariant.op139
  %i.ov = add nsw i64 %.idx.i.i, -32              ; 2 uses
  %i.ow = lshr i64 %i.ov, 5
  %i.ox = add nuw nsw i64 %i.ow, 1
  %xtraiter367 = and i64 %i.ox, 7                 ; 2 uses
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  %i.oy = icmp ult i64 %i.ov, 224
  br label %.lr.ph115.preheader.i.i

scalar.ph274:                                     ; preds = %scalar.ph274.prol.loopexit, %scalar.ph274
  %.0109.i.i = phi ptr [ %i.pr, %scalar.ph274 ], [ %.0109.i.i.unr, %scalar.ph274.prol.loopexit ] ; 5 uses
  %.074108.i.i = phi ptr [ %i.ps, %scalar.ph274 ], [ %.074108.i.i.unr, %scalar.ph274.prol.loopexit ] ; 5 uses
  %i.oz = load i8, ptr %.074108.i.i, align 1, !tbaa !45
  %i.pa = zext i8 %i.oz to i32
  %i.pb = shl nuw nsw i32 %i.pa, 8
  %.reass112.reass.i.reass.i.reass = or disjoint i32 %i.pb, %invariant.op137.reass
  %i.pc = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 4
  store i32 %.reass112.reass.i.reass.i.reass, ptr %.0109.i.i, align 2
  %i.pd = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 1
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !45
  %i.pf = zext i8 %i.pe to i32
  %i.pg = shl nuw nsw i32 %i.pf, 8
  %.reass112.reass.i.reass.i.reass.1 = or disjoint i32 %i.pg, %invariant.op137.reass
  %i.ph = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 8
  store i32 %.reass112.reass.i.reass.i.reass.1, ptr %i.pc, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 2
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !45
  %i.pk = zext i8 %i.pj to i32
  %i.pl = shl nuw nsw i32 %i.pk, 8
  %.reass112.reass.i.reass.i.reass.2 = or disjoint i32 %i.pl, %invariant.op137.reass
  %i.pm = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 12
  store i32 %.reass112.reass.i.reass.i.reass.2, ptr %i.ph, align 2
  %i.pn = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 3
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !45
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.pq, %invariant.op137.reass
  %i.pr = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.pm, align 2
  %i.ps = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.ps, %i.lg
  br i1 %.not81.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph274, !llvm.loop !72

scalar.ph297:                                     ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297
  %.1103.i.i = phi ptr [ %i.qp, %scalar.ph297 ], [ %.1103.i.i.unr, %scalar.ph297.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.qq, %scalar.ph297 ], [ %.175102.i.i.unr, %scalar.ph297.prol.loopexit ] ; 5 uses
  %i.pt = load i8, ptr %.175102.i.i, align 1, !tbaa !45
  %i.pu = zext i8 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.pv, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.pw = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.pw, align 2
  %i.px = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !45
  %i.qa = zext i8 %i.pz to i32
  %i.qb = shl nuw nsw i32 %i.qa, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.qb, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.px, align 2
  %i.qc = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.qc, align 2
  %i.qd = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.qe = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !45
  %i.qg = zext i8 %i.qf to i32
  %i.qh = shl nuw nsw i32 %i.qg, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.qh, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.qd, align 2
  %i.qi = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.qi, align 2
  %i.qj = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.qk = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !45
  %i.qm = zext i8 %i.ql to i32
  %i.qn = shl nuw nsw i32 %i.qm, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.qn, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.qj, align 2
  %i.qo = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.qo, align 2
  %i.qp = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.qq = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.qq, %i.lg
  br i1 %.not80.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph297, !llvm.loop !73

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit355, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.rv, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit355 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.rw, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit355 ] ; 5 uses
  %i.qr = load i8, ptr %.27696.i.i, align 1, !tbaa !45
  %i.qs = zext i8 %i.qr to i32
  %i.qt = shl nuw nsw i32 %i.qs, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.qt, %invariant.op135.reass
  %i.qu = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.qv = mul nuw i64 %i.qu, 4294967297           ; 2 uses
  store i64 %i.qv, ptr %.297.i.i, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.qv, ptr %i.qw, align 2
  %i.qx = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !45
  %i.ra = zext i8 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.rb, %invariant.op135.reass
  %i.rc = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.rd = mul nuw i64 %i.rc, 4294967297           ; 2 uses
  store i64 %i.rd, ptr %i.qx, align 2
  %i.re = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.rd, ptr %i.re, align 2
  %i.rf = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.rg = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !45
  %i.ri = zext i8 %i.rh to i32
  %i.rj = shl nuw nsw i32 %i.ri, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.rj, %invariant.op135.reass
  %i.rk = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.rl = mul nuw i64 %i.rk, 4294967297           ; 2 uses
  store i64 %i.rl, ptr %i.rf, align 2
end_hunk_0
