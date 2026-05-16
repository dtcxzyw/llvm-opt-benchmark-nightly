inline.NumInlined: 44
inline.NumDeleted: 22
begin_hunk_0_@png_do_read_transformations:bb.a
  %i.vk = load i8, ptr %.6882.i, align 1, !tbaa !29, !noalias !232
  %i.vl = zext i8 %i.vk to i32                    ; 2 uses
  %i.vm = lshr i32 %i.vl, %.6729880.i
  %i.vn = and i32 %i.vm, 15                       ; 2 uses
  %i.vo = icmp eq i32 %i.vn, %i.ve
  br i1 %i.vo, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vp = load i16, ptr %i.vf, align 4, !tbaa !148, !alias.scope !232
  %i.vq = zext i16 %i.vp to i32
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.vr = mul nuw nsw i32 %i.vn, 17
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !29
  %i.vv = lshr i8 %i.vu, 4
  %i.vw = zext nneg i8 %i.vv to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink1034.i = phi i32 [ %i.vw, %bb.by ], [ %i.vq, %bb.bx ]
  %.pn1037.i = sub nsw i32 4, %.6729880.i
  %.pn.i = lshr i32 3855, %.pn1037.i
  %.sink1033.i = and i32 %.pn.i, %i.vl
  %i.vx = shl i32 %.sink1034.i, %.6729880.i
  %i.vy = or i32 %i.vx, %.sink1033.i
  %storemerge783.i = trunc i32 %i.vy to i8
  store i8 %storemerge783.i, ptr %.6882.i, align 1, !tbaa !29, !noalias !232
  %i.vz = icmp eq i32 %.6729880.i, 0              ; 2 uses
  %i.wa = add nsw i32 %.6729880.i, -4
  %.7730.i = select i1 %i.vz, i32 4, i32 %i.wa
  %.7.idx.i = zext i1 %i.vz to i64
  %.7.i201 = getelementptr inbounds nuw i8, ptr %.6882.i, i64 %.7.idx.i
  %i.wb = add nuw i32 %.3705881.i, 1              ; 2 uses
  %exitcond956.not.i.a = icmp eq i32 %i.wb, %i.sj
  br i1 %exitcond956.not.i.a, label %png_do_compose.exit, label %bb.bw, !llvm.loop !238

bb.ca:                                            ; preds = %bb.cc, %.lr.ph887.i
  %.8886.i = phi ptr [ %i.rs, %.lr.ph887.i ], [ %.9.i202, %bb.cc ] ; 3 uses
  %.4706885.i = phi i32 [ 0, %.lr.ph887.i ], [ %i.wr, %bb.cc ]
  %.8731884.i = phi i32 [ 4, %.lr.ph887.i ], [ %.9732.i, %bb.cc ] ; 5 uses
  %i.wc = load i8, ptr %.8886.i, align 1, !tbaa !29, !noalias !232
  %i.wd = zext i8 %i.wc to i32                    ; 2 uses
  %i.we = lshr i32 %i.wd, %.8731884.i
  %i.wf = and i32 %i.we, 15
  %i.wg = icmp eq i32 %i.wf, %i.vi
  br i1 %i.wg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wh = sub nsw i32 4, %.8731884.i
  %i.wi = lshr i32 3855, %i.wh
  %i.wj = and i32 %i.wi, %i.wd
  %i.wk = load i16, ptr %i.vj, align 4, !tbaa !148, !alias.scope !232
  %i.wl = zext i16 %i.wk to i32
  %i.wm = shl i32 %i.wl, %.8731884.i
  %i.wn = or i32 %i.wm, %i.wj
  %i.wo = trunc i32 %i.wn to i8
  store i8 %i.wo, ptr %.8886.i, align 1, !tbaa !29, !noalias !232
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.wp = icmp eq i32 %.8731884.i, 0              ; 2 uses
  %i.wq = add nsw i32 %.8731884.i, -4
  %.9732.i = select i1 %i.wp, i32 4, i32 %i.wq
  %.9.idx.i = zext i1 %i.wp to i64
  %.9.i202 = getelementptr inbounds nuw i8, ptr %.8886.i, i64 %.9.idx.i
  %i.wr = add nuw i32 %.4706885.i, 1              ; 2 uses
  %exitcond957.not.i.a = icmp eq i32 %i.wr, %i.sj
  br i1 %exitcond957.not.i.a, label %png_do_compose.exit, label %bb.ca, !llvm.loop !239

bb.cd:                                            ; preds = %.split.i
  %.not780.i = icmp eq ptr %i.ru, null
  %.not915.i = icmp eq i32 %i.sj, 0               ; 2 uses
  br i1 %.not780.i, label %.preheader801.i, label %.preheader803.i

.preheader803.i:                                  ; preds = %bb.cd
  br i1 %.not915.i, label %png_do_compose.exit, label %.lr.ph876.i

.lr.ph876.i:                                      ; preds = %.preheader803.i
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.wt = load i16, ptr %i.ws, align 8, !tbaa !164, !alias.scope !232 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter761 = and i32 %i.sj, 1
  %i.wv = icmp eq i32 %i.sj, 1
  br i1 %i.wv, label %.epil.preheader760, label %.lr.ph876.i.new

.lr.ph876.i.new:                                  ; preds = %.lr.ph876.i
  %unroll_iter764 = and i32 %i.sj, -2
  br label %bb.ce

.preheader801.i:                                  ; preds = %bb.cd
  br i1 %.not915.i, label %png_do_compose.exit, label %.lr.ph879.i

.lr.ph879.i:                                      ; preds = %.preheader801.i
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.wx = load i16, ptr %i.ww, align 8, !tbaa !164, !alias.scope !232 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter767 = and i32 %i.sj, 1
  %i.wz = icmp eq i32 %i.sj, 1
  br i1 %i.wz, label %.epil.preheader766, label %.lr.ph879.i.new

.lr.ph879.i.new:                                  ; preds = %.lr.ph879.i
  %unroll_iter770 = and i32 %i.sj, -2
  br label %bb.cl

bb.ce:                                            ; preds = %bb.ck, %.lr.ph876.i.new
  %.10875.i = phi ptr [ %i.rs, %.lr.ph876.i.new ], [ %i.xr, %bb.ck ] ; 4 uses
  %niter765 = phi i32 [ 0, %.lr.ph876.i.new ], [ %niter765.next.1, %bb.ck ]
  %i.xa = load i8, ptr %.10875.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.xb = zext i8 %i.xa to i16
  %i.xc = icmp eq i16 %i.wt, %i.xb
  br i1 %i.xc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.xd = load i16, ptr %i.wu, align 4, !tbaa !148, !alias.scope !232
  %i.xe = trunc i16 %i.xd to i8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.xf = zext i8 %i.xa to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !29
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %storemerge781.i = phi i8 [ %i.xh, %bb.cg ], [ %i.xe, %bb.cf ]
  store i8 %storemerge781.i, ptr %.10875.i, align 1, !tbaa !29, !noalias !232
  %i.xi = getelementptr inbounds nuw i8, ptr %.10875.i, i64 1 ; 2 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.xk = zext i8 %i.xj to i16
  %i.xl = icmp eq i16 %i.wt, %i.xk
  br i1 %i.xl, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xm = zext i8 %i.xj to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !29
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.xp = load i16, ptr %i.wu, align 4, !tbaa !148, !alias.scope !232
  %i.xq = trunc i16 %i.xp to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %storemerge781.i.1 = phi i8 [ %i.xo, %bb.ci ], [ %i.xq, %bb.cj ]
  store i8 %storemerge781.i.1, ptr %i.xi, align 1, !tbaa !29, !noalias !232
  %i.xr = getelementptr inbounds nuw i8, ptr %.10875.i, i64 2 ; 2 uses
  %niter765.next.1 = add i32 %niter765, 2         ; 2 uses
  %niter765.ncmp.1 = icmp eq i32 %niter765.next.1, %unroll_iter764
  br i1 %niter765.ncmp.1, label %png_do_compose.exit.loopexit718.unr-lcssa, label %bb.ce, !llvm.loop !240

bb.cl:                                            ; preds = %bb.cp, %.lr.ph879.i.new
  %.11878.i = phi ptr [ %i.rs, %.lr.ph879.i.new ], [ %i.yd, %bb.cp ] ; 4 uses
  %niter771 = phi i32 [ 0, %.lr.ph879.i.new ], [ %niter771.next.1, %bb.cp ]
  %i.xs = load i8, ptr %.11878.i, align 1, !tbaa !29, !noalias !232
  %i.xt = zext i8 %i.xs to i16
  %i.xu = icmp eq i16 %i.wx, %i.xt
  br i1 %i.xu, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xv = load i16, ptr %i.wy, align 4, !tbaa !148, !alias.scope !232
  %i.xw = trunc i16 %i.xv to i8
  store i8 %i.xw, ptr %.11878.i, align 1, !tbaa !29, !noalias !232
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.xx = getelementptr inbounds nuw i8, ptr %.11878.i, i64 1 ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !29, !noalias !232
  %i.xz = zext i8 %i.xy to i16
  %i.ya = icmp eq i16 %i.wx, %i.xz
  br i1 %i.ya, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.yb = load i16, ptr %i.wy, align 4, !tbaa !148, !alias.scope !232
  %i.yc = trunc i16 %i.yb to i8
  store i8 %i.yc, ptr %i.xx, align 1, !tbaa !29, !noalias !232
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.yd = getelementptr inbounds nuw i8, ptr %.11878.i, i64 2 ; 2 uses
  %niter771.next.1 = add i32 %niter771, 2         ; 2 uses
  %niter771.ncmp.1 = icmp eq i32 %niter771.next.1, %unroll_iter770
  br i1 %niter771.ncmp.1, label %png_do_compose.exit.loopexit717.unr-lcssa, label %bb.cl, !llvm.loop !241

bb.cq:                                            ; preds = %.split.i
  %.not777.i = icmp eq ptr %i.sa, null
  %.not913.i = icmp eq i32 %i.sj, 0               ; 2 uses
  br i1 %.not777.i, label %.preheader805.i, label %.preheader807.i

.preheader807.i:                                  ; preds = %bb.cq
  br i1 %.not913.i, label %png_do_compose.exit, label %.lr.ph870.i

.lr.ph870.i:                                      ; preds = %.preheader807.i
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.yf = load i16, ptr %i.ye, align 8, !tbaa !164, !alias.scope !232
  %i.yg = zext i16 %i.yf to i32
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %bb.cr

.preheader805.i:                                  ; preds = %bb.cq
  br i1 %.not913.i, label %png_do_compose.exit, label %.lr.ph873.i

.lr.ph873.i:                                      ; preds = %.preheader805.i
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.yj = load i16, ptr %i.yi, align 8, !tbaa !164, !alias.scope !232
  %i.yk = zext i16 %i.yj to i32                   ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter755 = and i32 %i.sj, 1
  %i.ym = icmp eq i32 %i.sj, 1
  br i1 %i.ym, label %.epil.preheader, label %.lr.ph873.i.new

.lr.ph873.i.new:                                  ; preds = %.lr.ph873.i
  %unroll_iter758 = and i32 %i.sj, -2
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ct, %.lr.ph870.i
  %.12869.i = phi ptr [ %i.rs, %.lr.ph870.i ], [ %i.zc, %bb.ct ] ; 4 uses
  %.7709868.i = phi i32 [ 0, %.lr.ph870.i ], [ %i.zb, %bb.ct ]
  %i.yn = load i8, ptr %.12869.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.yo = zext i8 %i.yn to i32
  %i.yp = shl nuw nsw i32 %i.yo, 8
  %i.yq = getelementptr inbounds nuw i8, ptr %.12869.i, i64 1 ; 2 uses
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !29, !noalias !232
  %i.ys = zext i8 %i.yr to i32                    ; 2 uses
  %i.yt = or disjoint i32 %i.yp, %i.ys
  %i.yu = icmp eq i32 %i.yt, %i.yg
  br i1 %i.yu, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yv = lshr i32 %i.ys, %i.sg
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.yw
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !228
  %i.yz = zext i8 %i.yn to i64
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.yy, i64 %i.yz
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %storemerge778.in.in.i = phi ptr [ %i.za, %bb.cs ], [ %i.yh, %bb.cr ]
  %storemerge778.in.i = load i16, ptr %storemerge778.in.in.i, align 2, !tbaa !30 ; 2 uses
  %storemerge779.in.i = lshr i16 %storemerge778.in.i, 8
  %storemerge779.i = trunc nuw i16 %storemerge779.in.i to i8
  store i8 %storemerge779.i, ptr %.12869.i, align 1, !tbaa !29, !noalias !232
  %storemerge778.i = trunc i16 %storemerge778.in.i to i8
  store i8 %storemerge778.i, ptr %i.yq, align 1, !tbaa !29, !noalias !232
  %i.zb = add nuw i32 %.7709868.i, 1              ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.12869.i, i64 2
  %exitcond952.not.i = icmp eq i32 %i.zb, %i.sj
  br i1 %exitcond952.not.i, label %png_do_compose.exit, label %bb.cr, !llvm.loop !242

bb.cu:                                            ; preds = %bb.cy, %.lr.ph873.i.new
  %.13872.i = phi ptr [ %i.rs, %.lr.ph873.i.new ], [ %i.zw, %bb.cy ] ; 6 uses
  %niter759 = phi i32 [ 0, %.lr.ph873.i.new ], [ %niter759.next.1, %bb.cy ]
  %i.zd = load i8, ptr %.13872.i, align 1, !tbaa !29, !noalias !232
  %i.ze = zext i8 %i.zd to i32
  %i.zf = shl nuw nsw i32 %i.ze, 8
  %i.zg = getelementptr inbounds nuw i8, ptr %.13872.i, i64 1 ; 2 uses
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !29, !noalias !232
  %i.zi = zext i8 %i.zh to i32
  %i.zj = or disjoint i32 %i.zf, %i.zi
  %i.zk = icmp eq i32 %i.zj, %i.yk
  br i1 %i.zk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %2 = load i16, ptr %i.yl, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %3 = lshr i16 %2, 8
  %4 = trunc nuw i16 %3 to i8
  store i8 %4, ptr %.13872.i, align 1, !tbaa !29, !noalias !232
  %i.zl = trunc i16 %2 to i8
  store i8 %i.zl, ptr %i.zg, align 1, !tbaa !29, !noalias !232
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.zm = getelementptr inbounds nuw i8, ptr %.13872.i, i64 2 ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !29, !noalias !232
  %i.zo = zext i8 %i.zn to i32
  %i.zp = shl nuw nsw i32 %i.zo, 8
  %i.zq = getelementptr inbounds nuw i8, ptr %.13872.i, i64 3 ; 2 uses
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !29, !noalias !232
  %i.zs = zext i8 %i.zr to i32
  %i.zt = or disjoint i32 %i.zp, %i.zs
  %i.zu = icmp eq i32 %i.zt, %i.yk
  br i1 %i.zu, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %5 = load i16, ptr %i.yl, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  store i8 %7, ptr %i.zm, align 1, !tbaa !29, !noalias !232
  %i.zv = trunc i16 %5 to i8
  store i8 %i.zv, ptr %i.zq, align 1, !tbaa !29, !noalias !232
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.zw = getelementptr inbounds nuw i8, ptr %.13872.i, i64 4 ; 2 uses
  %niter759.next.1 = add i32 %niter759, 2         ; 2 uses
  %niter759.ncmp.1 = icmp eq i32 %niter759.next.1, %unroll_iter758
  br i1 %niter759.ncmp.1, label %png_do_compose.exit.loopexit719.unr-lcssa, label %bb.cu, !llvm.loop !243

bb.cz:                                            ; preds = %bb.bi
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !210, !noalias !232
  %i.zz = icmp eq i8 %i.zy, 8
  %.not911.i = icmp eq i32 %i.sj, 0               ; 4 uses
  br i1 %i.zz, label %bb.da, label %bb.dl

bb.da:                                            ; preds = %bb.cz
  %.not776.i = icmp eq ptr %i.ru, null
  br i1 %.not776.i, label %.preheader809.i, label %.preheader811.i

.preheader811.i:                                  ; preds = %bb.da
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph864.i

.lr.ph864.i:                                      ; preds = %.preheader811.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !168, !alias.scope !232
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.db

.preheader809.i:                                  ; preds = %bb.da
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %.preheader809.i
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !168, !alias.scope !232
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.dg

bb.db:                                            ; preds = %bb.df, %.lr.ph864.i
  %.14863.i = phi ptr [ %i.rs, %.lr.ph864.i ], [ %i.abt, %bb.df ] ; 7 uses
  %.9711862.i = phi i32 [ 0, %.lr.ph864.i ], [ %i.abs, %bb.df ]
  %i.aao = load i8, ptr %.14863.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.aap = zext i8 %i.aao to i16
  %i.aaq = icmp eq i16 %i.aab, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %.14863.i, i64 1 ; 3 uses
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !29, !noalias !232 ; 2 uses
  br i1 %i.aaq, label %bb.dc, label %._crit_edge.i200

bb.dc:                                            ; preds = %bb.db
  %i.aat = load i16, ptr %i.aac, align 4, !tbaa !167, !alias.scope !232
  %i.aau = zext i8 %i.aas to i16
  %i.aav = icmp eq i16 %i.aat, %i.aau
  br i1 %i.aav, label %bb.dd, label %._crit_edge.i200

bb.dd:                                            ; preds = %bb.dc
  %i.aaw = getelementptr inbounds nuw i8, ptr %.14863.i, i64 2 ; 2 uses
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !29, !noalias !232
  %i.aay = load i16, ptr %i.aad, align 2, !tbaa !166, !alias.scope !232
  %i.aaz = zext i8 %i.aax to i16
  %i.aba = icmp eq i16 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.de, label %._crit_edge.i200

bb.de:                                            ; preds = %bb.dd
  %i.abb = load i16, ptr %i.aae, align 2, !tbaa !145, !alias.scope !232
  %i.abc = trunc i16 %i.abb to i8
  store i8 %i.abc, ptr %.14863.i, align 1, !tbaa !29, !noalias !232
  %i.abd = load i16, ptr %i.aaf, align 4, !tbaa !146, !alias.scope !232
  %i.abe = trunc i16 %i.abd to i8
  store i8 %i.abe, ptr %i.aar, align 1, !tbaa !29, !noalias !232
  %i.abf = load i16, ptr %i.aag, align 2, !tbaa !147, !alias.scope !232
  %i.abg = trunc i16 %i.abf to i8
  store i8 %i.abg, ptr %i.aaw, align 1, !tbaa !29, !noalias !232
  br label %bb.df

._crit_edge.i200:                                 ; preds = %bb.dd, %bb.dc, %bb.db
  %i.abh = zext i8 %i.aao to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !29
  store i8 %i.abj, ptr %.14863.i, align 1, !tbaa !29, !noalias !232
  %i.abk = zext i8 %i.aas to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !29
  store i8 %i.abm, ptr %i.aar, align 1, !tbaa !29, !noalias !232
  %i.abn = getelementptr inbounds nuw i8, ptr %.14863.i, i64 2 ; 2 uses
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !29, !noalias !232
  %i.abp = zext i8 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !29
  store i8 %i.abr, ptr %i.abn, align 1, !tbaa !29, !noalias !232
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i200, %bb.de
  %i.abs = add nuw i32 %.9711862.i, 1             ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.14863.i, i64 3
  %exitcond950.not.i = icmp eq i32 %i.abs, %i.sj
  br i1 %exitcond950.not.i, label %png_do_compose.exit, label %bb.db, !llvm.loop !244

bb.dg:                                            ; preds = %bb.dk, %.lr.ph867.i
  %.15866.i = phi ptr [ %i.rs, %.lr.ph867.i ], [ %i.aco, %bb.dk ] ; 5 uses
  %.10712865.i = phi i32 [ 0, %.lr.ph867.i ], [ %i.acn, %bb.dk ]
  %i.abu = load i8, ptr %.15866.i, align 1, !tbaa !29, !noalias !232
  %i.abv = zext i8 %i.abu to i16
  %i.abw = icmp eq i16 %i.aai, %i.abv
  br i1 %i.abw, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.abx = getelementptr inbounds nuw i8, ptr %.15866.i, i64 1 ; 2 uses
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !29, !noalias !232
  %i.abz = load i16, ptr %i.aaj, align 4, !tbaa !167, !alias.scope !232
  %i.aca = zext i8 %i.aby to i16
  %i.acb = icmp eq i16 %i.abz, %i.aca
  br i1 %i.acb, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.acc = getelementptr inbounds nuw i8, ptr %.15866.i, i64 2 ; 2 uses
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !29, !noalias !232
  %i.ace = load i16, ptr %i.aak, align 2, !tbaa !166, !alias.scope !232
  %i.acf = zext i8 %i.acd to i16
  %i.acg = icmp eq i16 %i.ace, %i.acf
  br i1 %i.acg, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ach = load i16, ptr %i.aal, align 2, !tbaa !145, !alias.scope !232
  %i.aci = trunc i16 %i.ach to i8
  store i8 %i.aci, ptr %.15866.i, align 1, !tbaa !29, !noalias !232
  %i.acj = load i16, ptr %i.aam, align 4, !tbaa !146, !alias.scope !232
  %i.ack = trunc i16 %i.acj to i8
  store i8 %i.ack, ptr %i.abx, align 1, !tbaa !29, !noalias !232
  %i.acl = load i16, ptr %i.aan, align 2, !tbaa !147, !alias.scope !232
  %i.acm = trunc i16 %i.acl to i8
  store i8 %i.acm, ptr %i.acc, align 1, !tbaa !29, !noalias !232
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %i.acn = add nuw i32 %.10712865.i, 1            ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.15866.i, i64 3
  %exitcond951.not.i = icmp eq i32 %i.acn, %i.sj
  br i1 %exitcond951.not.i, label %png_do_compose.exit, label %bb.dg, !llvm.loop !245

bb.dl:                                            ; preds = %bb.cz
  %.not774.i = icmp eq ptr %i.sa, null
  br i1 %.not774.i, label %.preheader813.i, label %.preheader815.i

.preheader815.i:                                  ; preds = %bb.dl
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph858.i

.lr.ph858.i:                                      ; preds = %.preheader815.i
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !168, !alias.scope !232
  %i.acr = zext i16 %i.acq to i32
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.dm

.preheader813.i:                                  ; preds = %bb.dl
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph861.i

.lr.ph861.i:                                      ; preds = %.preheader813.i
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !168, !alias.scope !232
  %i.acz = zext i16 %i.acy to i32
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.ds

bb.dm:                                            ; preds = %bb.dr, %.lr.ph858.i
  %.16857.i = phi ptr [ %i.rs, %.lr.ph858.i ], [ %i.afl, %bb.dr ] ; 9 uses
  %.11713856.i = phi i32 [ 0, %.lr.ph858.i ], [ %i.afk, %bb.dr ]
  %i.adf = load i8, ptr %.16857.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.adg = zext i8 %i.adf to i32
  %i.adh = shl nuw nsw i32 %i.adg, 8
  %i.adi = getelementptr inbounds nuw i8, ptr %.16857.i, i64 1 ; 3 uses
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !29, !noalias !232
  %i.adk = zext i8 %i.adj to i32                  ; 2 uses
  %i.adl = or disjoint i32 %i.adh, %i.adk
  %i.adm = getelementptr inbounds nuw i8, ptr %.16857.i, i64 2 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.16857.i, i64 3 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.16857.i, i64 4 ; 2 uses
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.adq = zext i8 %i.adp to i32
  %i.adr = shl nuw nsw i32 %i.adq, 8
  %i.ads = getelementptr inbounds nuw i8, ptr %.16857.i, i64 5 ; 2 uses
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !29, !noalias !232
  %i.adu = zext i8 %i.adt to i32                  ; 2 uses
  %i.adv = or disjoint i32 %i.adr, %i.adu
  %i.adw = icmp eq i32 %i.adl, %i.acr
  %.pre.i197 = load i8, ptr %i.adn, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %.pre961.i = load i8, ptr %i.adm, align 1, !tbaa !29, !noalias !232 ; 2 uses
  br i1 %i.adw, label %bb.dn, label %._crit_edge963.i

._crit_edge963.i:                                 ; preds = %bb.dm
  %.pre964.i = zext i8 %.pre.i197 to i32
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.adx = zext i8 %.pre961.i to i32
  %i.ady = shl nuw nsw i32 %i.adx, 8
  %i.adz = zext i8 %.pre.i197 to i32              ; 3 uses
  %i.aea = or disjoint i32 %i.ady, %i.adz
  %i.aeb = load i16, ptr %i.acs, align 4, !tbaa !167, !alias.scope !232
  %i.aec = zext i16 %i.aeb to i32
  %i.aed = icmp eq i32 %i.aea, %i.aec
  br i1 %i.aed, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.aee = load i16, ptr %i.act, align 2, !tbaa !166, !alias.scope !232
  %i.aef = zext i16 %i.aee to i32
  %i.aeg = icmp eq i32 %i.adv, %i.aef
  br i1 %i.aeg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %8 = load i16, ptr %i.acu, align 2, !tbaa !145, !alias.scope !232 ; 2 uses
  %9 = lshr i16 %8, 8
  %i.aeh = trunc nuw i16 %9 to i8
  store i8 %i.aeh, ptr %.16857.i, align 1, !tbaa !29, !noalias !232
  %10 = trunc i16 %8 to i8
  store i8 %10, ptr %i.adi, align 1, !tbaa !29, !noalias !232
  %i.aei = load i16, ptr %i.acv, align 4, !tbaa !146, !alias.scope !232 ; 2 uses
  %11 = lshr i16 %i.aei, 8
  %i.aej = trunc nuw i16 %11 to i8
  store i8 %i.aej, ptr %i.adm, align 1, !tbaa !29, !noalias !232
  %12 = trunc i16 %i.aei to i8
  store i8 %12, ptr %i.adn, align 1, !tbaa !29, !noalias !232
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn, %._crit_edge963.i
  %.pre-phi.i198 = phi i32 [ %.pre964.i, %._crit_edge963.i ], [ %i.adz, %bb.do ], [ %i.adz, %bb.dn ]
  %i.aek = lshr i32 %i.adk, %i.sg
  %i.ael = zext nneg i32 %i.aek to i64
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.ael
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !228
  %i.aeo = zext i8 %i.adf to i64
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.aen, i64 %i.aeo
  %i.aeq = load i16, ptr %i.aep, align 2, !tbaa !30 ; 2 uses
  %i.aer = lshr i16 %i.aeq, 8
  %i.aes = trunc nuw i16 %i.aer to i8
  store i8 %i.aes, ptr %.16857.i, align 1, !tbaa !29, !noalias !232
  %i.aet = trunc i16 %i.aeq to i8
  store i8 %i.aet, ptr %i.adi, align 1, !tbaa !29, !noalias !232
  %i.aeu = lshr i32 %.pre-phi.i198, %i.sg
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.aev
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !228
  %i.aey = zext i8 %.pre961.i to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.aex, i64 %i.aey
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !30 ; 2 uses
  %i.afb = lshr i16 %i.afa, 8
  %i.afc = trunc nuw i16 %i.afb to i8
  store i8 %i.afc, ptr %i.adm, align 1, !tbaa !29, !noalias !232
  %i.afd = trunc i16 %i.afa to i8
  store i8 %i.afd, ptr %i.adn, align 1, !tbaa !29, !noalias !232
  %i.afe = lshr i32 %i.adu, %i.sg
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.aff
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !228
  %i.afi = zext i8 %i.adp to i64
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.afh, i64 %i.afi
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %storemerge.in.in.i = phi ptr [ %i.afj, %bb.dq ], [ %i.acw, %bb.dp ]
  %storemerge.in.i = load i16, ptr %storemerge.in.in.i, align 2, !tbaa !30 ; 2 uses
  %storemerge775.in.i = lshr i16 %storemerge.in.i, 8
  %storemerge775.i = trunc nuw i16 %storemerge775.in.i to i8
  store i8 %storemerge775.i, ptr %i.ado, align 1, !tbaa !29, !noalias !232
  %storemerge.i199 = trunc i16 %storemerge.in.i to i8
  store i8 %storemerge.i199, ptr %i.ads, align 1, !tbaa !29, !noalias !232
  %i.afk = add nuw i32 %.11713856.i, 1            ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.16857.i, i64 6
  %exitcond948.not.i = icmp eq i32 %i.afk, %i.sj
  br i1 %exitcond948.not.i, label %png_do_compose.exit, label %bb.dm, !llvm.loop !246

bb.ds:                                            ; preds = %bb.dw, %.lr.ph861.i
  %.17860.i = phi ptr [ %i.rs, %.lr.ph861.i ], [ %i.agw, %bb.dw ] ; 8 uses
  %.12714859.i = phi i32 [ 0, %.lr.ph861.i ], [ %i.agv, %bb.dw ]
  %i.afm = load i8, ptr %.17860.i, align 1, !tbaa !29, !noalias !232
  %i.afn = zext i8 %i.afm to i32
  %i.afo = shl nuw nsw i32 %i.afn, 8
  %i.afp = getelementptr inbounds nuw i8, ptr %.17860.i, i64 1 ; 2 uses
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !29, !noalias !232
  %i.afr = zext i8 %i.afq to i32
  %i.afs = or disjoint i32 %i.afo, %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %.17860.i, i64 2 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %.17860.i, i64 3 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.17860.i, i64 4 ; 2 uses
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !29, !noalias !232
  %i.afx = zext i8 %i.afw to i32
  %i.afy = shl nuw nsw i32 %i.afx, 8
  %i.afz = getelementptr inbounds nuw i8, ptr %.17860.i, i64 5 ; 2 uses
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !29, !noalias !232
  %i.agb = zext i8 %i.aga to i32
  %i.agc = or disjoint i32 %i.afy, %i.agb
  %i.agd = icmp eq i32 %i.afs, %i.acz
  br i1 %i.agd, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.age = load i8, ptr %i.afu, align 1, !tbaa !29, !noalias !232
  %i.agf = load i8, ptr %i.aft, align 1, !tbaa !29, !noalias !232
  %i.agg = zext i8 %i.agf to i32
  %i.agh = shl nuw nsw i32 %i.agg, 8
  %i.agi = zext i8 %i.age to i32
  %i.agj = or disjoint i32 %i.agh, %i.agi
  %i.agk = load i16, ptr %i.ada, align 4, !tbaa !167, !alias.scope !232
  %i.agl = zext i16 %i.agk to i32
  %i.agm = icmp eq i32 %i.agj, %i.agl
  br i1 %i.agm, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.agn = load i16, ptr %i.adb, align 2, !tbaa !166, !alias.scope !232
  %i.ago = zext i16 %i.agn to i32
  %i.agp = icmp eq i32 %i.agc, %i.ago
  br i1 %i.agp, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %13 = load i16, ptr %i.adc, align 2, !tbaa !145, !alias.scope !232 ; 2 uses
  %14 = lshr i16 %13, 8
  %i.agq = trunc nuw i16 %14 to i8
  store i8 %i.agq, ptr %.17860.i, align 1, !tbaa !29, !noalias !232
  %15 = trunc i16 %13 to i8
  store i8 %15, ptr %i.afp, align 1, !tbaa !29, !noalias !232
  %i.agr = load i16, ptr %i.add, align 4, !tbaa !146, !alias.scope !232 ; 2 uses
  %16 = lshr i16 %i.agr, 8
  %i.ags = trunc nuw i16 %16 to i8
  store i8 %i.ags, ptr %i.aft, align 1, !tbaa !29, !noalias !232
  %17 = trunc i16 %i.agr to i8
  store i8 %17, ptr %i.afu, align 1, !tbaa !29, !noalias !232
  %i.agt = load i16, ptr %i.ade, align 2, !tbaa !147, !alias.scope !232 ; 2 uses
  %18 = lshr i16 %i.agt, 8
  %19 = trunc nuw i16 %18 to i8
  store i8 %19, ptr %i.afv, align 1, !tbaa !29, !noalias !232
  %i.agu = trunc i16 %i.agt to i8
  store i8 %i.agu, ptr %i.afz, align 1, !tbaa !29, !noalias !232
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds
  %i.agv = add nuw i32 %.12714859.i, 1            ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.17860.i, i64 6
  %exitcond949.not.i = icmp eq i32 %i.agv, %i.sj
  br i1 %exitcond949.not.i, label %png_do_compose.exit, label %bb.ds, !llvm.loop !247

bb.dx:                                            ; preds = %bb.bi
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !210, !noalias !232
  %i.agz = icmp eq i8 %i.agy, 8
  %.not907.i = icmp eq i32 %i.sj, 0               ; 4 uses
  br i1 %i.agz, label %bb.dy, label %bb.ej

bb.dy:                                            ; preds = %bb.dx
  %i.aha = icmp ne ptr %i.ry, null
  %i.ahb = icmp ne ptr %i.rw, null
  %or.cond.i194 = select i1 %i.aha, i1 %i.ahb, i1 false
  %i.ahc = icmp ne ptr %i.ru, null
  %or.cond3.i = select i1 %or.cond.i194, i1 %i.ahc, i1 false
  br i1 %or.cond3.i, label %.preheader817.i, label %.preheader819.i

.preheader819.i:                                  ; preds = %bb.dy
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph852.i

.lr.ph852.i:                                      ; preds = %.preheader819.i
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  br label %bb.ef

.preheader817.i:                                  ; preds = %bb.dy
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph855.i

.lr.ph855.i:                                      ; preds = %.preheader817.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 662
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ee, %.lr.ph855.i
  %.18854.i = phi ptr [ %i.rs, %.lr.ph855.i ], [ %i.aij, %bb.ee ] ; 5 uses
  %.13715853.i = phi i32 [ 0, %.lr.ph855.i ], [ %i.aii, %bb.ee ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %.18854.i, i64 1
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !29, !noalias !232 ; 3 uses
  switch i8 %i.ahh, label %bb.ec [
    i8 -1, label %bb.ea
    i8 0, label %bb.eb
  ]

bb.ea:                                            ; preds = %bb.dz
  %i.ahi = load i8, ptr %.18854.i, align 1, !tbaa !29, !noalias !232
  %i.ahj = zext i8 %i.ahi to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !29
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dz
  %i.ahm = load i16, ptr %i.ahe, align 4, !tbaa !148, !alias.scope !232
  %i.ahn = trunc i16 %i.ahm to i8
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  %i.aho = zext i8 %i.ahh to i16
  %i.ahp = load i8, ptr %.18854.i, align 1, !tbaa !29, !noalias !232
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !29
  %i.aht = zext i8 %i.ahs to i16
  %i.ahu = mul nuw i16 %i.aht, %i.aho
  %i.ahv = load i16, ptr %i.ahf, align 2, !tbaa !173, !alias.scope !232
  %i.ahw = xor i8 %i.ahh, -1
  %i.ahx = zext i8 %i.ahw to i16
  %i.ahy = mul i16 %i.ahv, %i.ahx
  %i.ahz = add i16 %i.ahy, 128
  %i.aia = add i16 %i.ahz, %i.ahu                 ; 2 uses
  %i.aib = lshr i16 %i.aia, 8
  %i.aic = add i16 %i.aib, %i.aia
  %i.aid = lshr i16 %i.aic, 8                     ; 2 uses
  %i.aie = trunc nuw i16 %i.aid to i8
  br i1 %.not.i190, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aif = zext nneg i16 %i.aid to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !29
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.sink.i196 = phi i8 [ %i.ahn, %bb.eb ], [ %i.ahl, %bb.ea ], [ %i.aih, %bb.ed ], [ %i.aie, %bb.ec ]
  store i8 %.sink.i196, ptr %.18854.i, align 1, !tbaa !29, !noalias !232
  %i.aii = add nuw i32 %.13715853.i, 1            ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.18854.i, i64 2
  %exitcond947.not.i = icmp eq i32 %i.aii, %i.sj
  br i1 %exitcond947.not.i, label %png_do_compose.exit, label %bb.dz, !llvm.loop !248

bb.ef:                                            ; preds = %bb.ei, %.lr.ph852.i
  %.19851.i = phi ptr [ %i.rs, %.lr.ph852.i ], [ %i.ajc, %bb.ei ] ; 4 uses
  %.14716850.i = phi i32 [ 0, %.lr.ph852.i ], [ %i.ajb, %bb.ei ]
  %i.aik = getelementptr inbounds nuw i8, ptr %.19851.i, i64 1
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !29, !noalias !232 ; 3 uses
  switch i8 %i.ail, label %bb.eh [
    i8 0, label %bb.eg
    i8 -1, label %bb.ei
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.aim = load i16, ptr %i.ahd, align 4, !tbaa !148, !alias.scope !232
  br label %.sink.split.i195

bb.eh:                                            ; preds = %bb.ef
  %i.ain = load i8, ptr %.19851.i, align 1, !tbaa !29, !noalias !232
  %i.aio = zext i8 %i.ain to i16
  %i.aip = zext i8 %i.ail to i16
  %i.aiq = mul nuw i16 %i.aio, %i.aip
  %i.air = load i16, ptr %i.ahd, align 4, !tbaa !148, !alias.scope !232
  %i.ais = xor i8 %i.ail, -1
  %i.ait = zext i8 %i.ais to i16
  %i.aiu = mul i16 %i.air, %i.ait
  %i.aiv = add i16 %i.aiu, 128
  %i.aiw = add i16 %i.aiv, %i.aiq                 ; 2 uses
  %i.aix = lshr i16 %i.aiw, 8
  %i.aiy = add i16 %i.aix, %i.aiw
  %i.aiz = lshr i16 %i.aiy, 8
  br label %.sink.split.i195

.sink.split.i195:                                 ; preds = %bb.eh, %bb.eg
  %.sink1036.i = phi i16 [ %i.aiz, %bb.eh ], [ %i.aim, %bb.eg ]
  %i.aja = trunc i16 %.sink1036.i to i8
  store i8 %i.aja, ptr %.19851.i, align 1, !tbaa !29, !noalias !232
  br label %bb.ei

bb.ei:                                            ; preds = %.sink.split.i195, %bb.ef
  %i.ajb = add nuw i32 %.14716850.i, 1            ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.19851.i, i64 2
  %exitcond946.not.i = icmp eq i32 %i.ajb, %i.sj
  br i1 %exitcond946.not.i, label %png_do_compose.exit, label %bb.ef, !llvm.loop !249

bb.ej:                                            ; preds = %bb.dx
  %i.ajd = icmp ne ptr %i.sa, null
  %i.aje = icmp ne ptr %i.sc, null
  %or.cond5.i = select i1 %i.ajd, i1 %i.aje, i1 false
  %i.ajf = icmp ne ptr %i.se, null
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.ajf, i1 false
  br i1 %or.cond7.i, label %.preheader821.i, label %.preheader823.i

.preheader823.i:                                  ; preds = %bb.ej
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph846.i

.lr.ph846.i:                                      ; preds = %.preheader823.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  br label %bb.es

.preheader821.i:                                  ; preds = %bb.ej
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph849.i

.lr.ph849.i:                                      ; preds = %.preheader821.i
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 662
  br label %bb.ek

bb.ek:                                            ; preds = %bb.er, %.lr.ph849.i
  %.20848.i = phi ptr [ %i.rs, %.lr.ph849.i ], [ %i.alr, %bb.er ] ; 11 uses
  %.15717847.i = phi i32 [ 0, %.lr.ph849.i ], [ %i.alq, %bb.er ]
  %i.ajj = getelementptr inbounds nuw i8, ptr %.20848.i, i64 2
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !29, !noalias !232
  %i.ajl = zext i8 %i.ajk to i32
  %i.ajm = shl nuw nsw i32 %i.ajl, 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %.20848.i, i64 3
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !29, !noalias !232
  %i.ajp = zext i8 %i.ajo to i32
  %i.ajq = or disjoint i32 %i.ajm, %i.ajp         ; 3 uses
  %trunc792.i = trunc nuw i32 %i.ajq to i16
  switch i16 %trunc792.i, label %bb.en [
    i16 -1, label %bb.el
    i16 0, label %bb.em
  ]

bb.el:                                            ; preds = %bb.ek
  %i.ajr = getelementptr inbounds nuw i8, ptr %.20848.i, i64 1 ; 2 uses
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !29, !noalias !232
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = lshr i32 %i.ajt, %i.sg
  %i.ajv = zext nneg i32 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.ajv
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !228
  %i.ajy = load i8, ptr %.20848.i, align 1, !tbaa !29, !noalias !232
  %i.ajz = zext i8 %i.ajy to i64
  %i.aka = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.ajz
  %i.akb = load i16, ptr %i.aka, align 2, !tbaa !30 ; 2 uses
  %i.akc = lshr i16 %i.akb, 8
  %i.akd = trunc nuw i16 %i.akc to i8
  store i8 %i.akd, ptr %.20848.i, align 1, !tbaa !29, !noalias !232
  %i.ake = trunc i16 %i.akb to i8
  store i8 %i.ake, ptr %i.ajr, align 1, !tbaa !29, !noalias !232
  br label %bb.er

bb.em:                                            ; preds = %bb.ek
  %20 = load i16, ptr %i.ajh, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %21 = lshr i16 %20, 8
  %22 = trunc nuw i16 %21 to i8
  store i8 %22, ptr %.20848.i, align 1, !tbaa !29, !noalias !232
  %i.akf = trunc i16 %20 to i8
  %i.akg = getelementptr inbounds nuw i8, ptr %.20848.i, i64 1
  store i8 %i.akf, ptr %i.akg, align 1, !tbaa !29, !noalias !232
  br label %bb.er

bb.en:                                            ; preds = %bb.ek
  %i.akh = getelementptr inbounds nuw i8, ptr %.20848.i, i64 1 ; 2 uses
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !29, !noalias !232
  %i.akj = zext i8 %i.aki to i32
  %i.akk = lshr i32 %i.akj, %i.sg
  %i.akl = zext nneg i32 %i.akk to i64
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.akl
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !228
  %i.ako = load i8, ptr %.20848.i, align 1, !tbaa !29, !noalias !232
  %i.akp = zext i8 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.akn, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !30
  %i.aks = zext i16 %i.akr to i32
  %i.akt = mul nuw i32 %i.ajq, %i.aks
  %i.aku = load i16, ptr %i.aji, align 2, !tbaa !173, !alias.scope !232
  %i.akv = zext i16 %i.aku to i32
  %i.akw = xor i32 %i.ajq, 65535
  %i.akx = mul nuw i32 %i.akw, %i.akv
  %i.aky = add nuw i32 %i.akt, 32768
  %i.akz = add i32 %i.aky, %i.akx                 ; 2 uses
  %i.ala = lshr i32 %i.akz, 16
  %i.alb = add i32 %i.ala, %i.akz                 ; 2 uses
  %i.alc = lshr i32 %i.alb, 16                    ; 2 uses
  br i1 %.not.i190, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ald = trunc nuw i32 %i.alc to i16
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %i.ale = and i32 %i.alc, 255
  %i.alf = lshr i32 %i.ale, %i.sg
  %i.alg = zext nneg i32 %i.alf to i64
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.alg
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !228
  %i.alj = lshr i32 %i.alb, 24
  %i.alk = zext nneg i32 %i.alj to i64
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %i.ali, i64 %i.alk
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !30
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.0734.i = phi i16 [ %i.ald, %bb.eo ], [ %i.alm, %bb.ep ] ; 2 uses
  %i.aln = lshr i16 %.0734.i, 8
  %i.alo = trunc nuw i16 %i.aln to i8
  store i8 %i.alo, ptr %.20848.i, align 1, !tbaa !29, !noalias !232
  %i.alp = trunc i16 %.0734.i to i8
  store i8 %i.alp, ptr %i.akh, align 1, !tbaa !29, !noalias !232
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.em, %bb.el
  %i.alq = add nuw i32 %.15717847.i, 1            ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.20848.i, i64 4
  %exitcond945.not.i = icmp eq i32 %i.alq, %i.sj
  br i1 %exitcond945.not.i, label %png_do_compose.exit, label %bb.ek, !llvm.loop !250

bb.es:                                            ; preds = %bb.ev, %.lr.ph846.i
  %.21845.i = phi ptr [ %i.rs, %.lr.ph846.i ], [ %i.amx, %bb.ev ] ; 8 uses
  %.16718844.i = phi i32 [ 0, %.lr.ph846.i ], [ %i.amw, %bb.ev ]
  %i.als = getelementptr inbounds nuw i8, ptr %.21845.i, i64 2
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !29, !noalias !232
  %i.alu = zext i8 %i.alt to i32
  %i.alv = shl nuw nsw i32 %i.alu, 8
  %i.alw = getelementptr inbounds nuw i8, ptr %.21845.i, i64 3
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !29, !noalias !232
  %i.aly = zext i8 %i.alx to i32
  %i.alz = or disjoint i32 %i.alv, %i.aly         ; 3 uses
  %trunc791.i = trunc nuw i32 %i.alz to i16
  switch i16 %trunc791.i, label %bb.eu [
    i16 0, label %bb.et
    i16 -1, label %bb.ev
  ]

bb.et:                                            ; preds = %bb.es
  %23 = load i16, ptr %i.ajg, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %24 = lshr i16 %23, 8
  %25 = trunc nuw i16 %24 to i8
  store i8 %25, ptr %.21845.i, align 1, !tbaa !29, !noalias !232
  %i.ama = trunc i16 %23 to i8
  %i.amb = getelementptr inbounds nuw i8, ptr %.21845.i, i64 1
  store i8 %i.ama, ptr %i.amb, align 1, !tbaa !29, !noalias !232
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.amc = load i8, ptr %.21845.i, align 1, !tbaa !29, !noalias !232
  %i.amd = zext i8 %i.amc to i32
  %i.ame = shl nuw nsw i32 %i.amd, 8
  %i.amf = getelementptr inbounds nuw i8, ptr %.21845.i, i64 1 ; 2 uses
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !29, !noalias !232
  %i.amh = zext i8 %i.amg to i32
  %i.ami = or disjoint i32 %i.ame, %i.amh
  %i.amj = mul nuw i32 %i.ami, %i.alz
  %i.amk = load i16, ptr %i.ajg, align 4, !tbaa !148, !alias.scope !232
  %i.aml = zext i16 %i.amk to i32
  %i.amm = xor i32 %i.alz, 65535
  %i.amn = mul nuw i32 %i.amm, %i.aml
  %i.amo = add nuw i32 %i.amn, 32768
  %i.amp = add i32 %i.amo, %i.amj                 ; 2 uses
  %i.amq = lshr i32 %i.amp, 16
  %i.amr = add i32 %i.amq, %i.amp                 ; 2 uses
  %i.ams = lshr i32 %i.amr, 16
  %i.amt = lshr i32 %i.amr, 24
  %i.amu = trunc nuw i32 %i.amt to i8
  store i8 %i.amu, ptr %.21845.i, align 1, !tbaa !29, !noalias !232
  %i.amv = trunc i32 %i.ams to i8
  store i8 %i.amv, ptr %i.amf, align 1, !tbaa !29, !noalias !232
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %i.amw = add nuw i32 %.16718844.i, 1            ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.21845.i, i64 4
  %exitcond944.not.i = icmp eq i32 %i.amw, %i.sj
  br i1 %exitcond944.not.i, label %png_do_compose.exit, label %bb.es, !llvm.loop !251

bb.ew:                                            ; preds = %bb.bi
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !210, !noalias !232
  %i.ana = icmp eq i8 %i.amz, 8
  %.not903.i = icmp eq i32 %i.sj, 0               ; 4 uses
  br i1 %i.ana, label %bb.ex, label %bb.fn

bb.ex:                                            ; preds = %bb.ew
  %i.anb = icmp ne ptr %i.ry, null
  %i.anc = icmp ne ptr %i.rw, null
  %or.cond9.i = select i1 %i.anb, i1 %i.anc, i1 false
  %i.and = icmp ne ptr %i.ru, null
  %or.cond11.i = select i1 %or.cond9.i, i1 %i.and, i1 false
  br i1 %or.cond11.i, label %.preheader825.i, label %.preheader827.i

.preheader827.i:                                  ; preds = %bb.ex
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph840.i

.lr.ph840.i:                                      ; preds = %.preheader827.i
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  br label %bb.fj

.preheader825.i:                                  ; preds = %bb.ex
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph843.i

.lr.ph843.i:                                      ; preds = %.preheader825.i
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 658
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fi, %.lr.ph843.i
  %.22842.i = phi ptr [ %i.rs, %.lr.ph843.i ], [ %i.aqw, %bb.fi ] ; 13 uses
  %.17719841.i = phi i32 [ 0, %.lr.ph843.i ], [ %i.aqv, %bb.fi ]
  %i.ann = getelementptr inbounds nuw i8, ptr %.22842.i, i64 3
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !29, !noalias !232 ; 3 uses
  switch i8 %i.ano, label %bb.fb [
    i8 -1, label %bb.ez
    i8 0, label %bb.fa
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.anp = load i8, ptr %.22842.i, align 1, !tbaa !29, !noalias !232
  %i.anq = zext i8 %i.anp to i64
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.anq
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !29
  store i8 %i.ans, ptr %.22842.i, align 1, !tbaa !29, !noalias !232
  %i.ant = getelementptr inbounds nuw i8, ptr %.22842.i, i64 1 ; 2 uses
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !29, !noalias !232
  %i.anv = zext i8 %i.anu to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.anv
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !29
  store i8 %i.anx, ptr %i.ant, align 1, !tbaa !29, !noalias !232
  %i.any = getelementptr inbounds nuw i8, ptr %.22842.i, i64 2 ; 2 uses
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !29, !noalias !232
  %i.aoa = zext i8 %i.anz to i64
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.aoa
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !29
  store i8 %i.aoc, ptr %i.any, align 1, !tbaa !29, !noalias !232
  br label %bb.fi

bb.fa:                                            ; preds = %bb.ey
  %i.aod = load i16, ptr %i.anh, align 2, !tbaa !145, !alias.scope !232
  %i.aoe = trunc i16 %i.aod to i8
  store i8 %i.aoe, ptr %.22842.i, align 1, !tbaa !29, !noalias !232
  %i.aof = load i16, ptr %i.ani, align 4, !tbaa !146, !alias.scope !232
  %i.aog = trunc i16 %i.aof to i8
  %i.aoh = getelementptr inbounds nuw i8, ptr %.22842.i, i64 1
  store i8 %i.aog, ptr %i.aoh, align 1, !tbaa !29, !noalias !232
  %i.aoi = load i16, ptr %i.anj, align 2, !tbaa !147, !alias.scope !232
  %i.aoj = trunc i16 %i.aoi to i8
  %i.aok = getelementptr inbounds nuw i8, ptr %.22842.i, i64 2
  store i8 %i.aoj, ptr %i.aok, align 1, !tbaa !29, !noalias !232
  br label %bb.fi

bb.fb:                                            ; preds = %bb.ey
  %i.aol = load i8, ptr %.22842.i, align 1, !tbaa !29, !noalias !232
  %i.aom = zext i8 %i.aol to i64
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.aom
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !29
  %i.aop = zext i8 %i.aoo to i32
  %i.aoq = zext i8 %i.ano to i32                  ; 3 uses
  %i.aor = mul nuw nsw i32 %i.aop, %i.aoq
  %i.aos = load i16, ptr %i.ank, align 2, !tbaa !174, !alias.scope !232
  %i.aot = zext i16 %i.aos to i32
  %i.aou = xor i8 %i.ano, -1
  %i.aov = zext i8 %i.aou to i32                  ; 3 uses
  %i.aow = mul nuw nsw i32 %i.aot, %i.aov
  %i.aox = add nuw nsw i32 %i.aor, 128
  %i.aoy = add nuw nsw i32 %i.aox, %i.aow         ; 2 uses
  %i.aoz = lshr i32 %i.aoy, 8
  %i.apa = and i32 %i.aoz, 255
  %i.apb = add nuw nsw i32 %i.apa, %i.aoy
  %i.apc = lshr i32 %i.apb, 8                     ; 2 uses
  %i.apd = trunc i32 %i.apc to i8
  br i1 %.not.i190, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %.mask.i = and i32 %i.apc, 255
  %i.ape = zext nneg i32 %.mask.i to i64
  %i.apf = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.ape
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !29
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0735.i = phi i8 [ %i.apg, %bb.fc ], [ %i.apd, %bb.fb ]
  store i8 %.0735.i, ptr %.22842.i, align 1, !tbaa !29, !noalias !232
  %i.aph = getelementptr inbounds nuw i8, ptr %.22842.i, i64 1 ; 2 uses
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !29, !noalias !232
  %i.apj = zext i8 %i.api to i64
  %i.apk = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.apj
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !29
  %i.apm = zext i8 %i.apl to i32
  %i.apn = mul nuw nsw i32 %i.apm, %i.aoq
  %i.apo = load i16, ptr %i.anl, align 2, !tbaa !175, !alias.scope !232
  %i.app = zext i16 %i.apo to i32
  %i.apq = mul nuw nsw i32 %i.app, %i.aov
  %i.apr = add nuw nsw i32 %i.apn, 128
  %i.aps = add nuw nsw i32 %i.apr, %i.apq         ; 2 uses
  %i.apt = lshr i32 %i.aps, 8
  %i.apu = and i32 %i.apt, 255
  %i.apv = add nuw nsw i32 %i.apu, %i.aps
  %i.apw = lshr i32 %i.apv, 8                     ; 2 uses
  %i.apx = trunc i32 %i.apw to i8
  br i1 %.not.i190, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %.mask769.i = and i32 %i.apw, 255
  %i.apy = zext nneg i32 %.mask769.i to i64
  %i.apz = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.apy
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !29
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.1736.i = phi i8 [ %i.aqa, %bb.fe ], [ %i.apx, %bb.fd ]
  store i8 %.1736.i, ptr %i.aph, align 1, !tbaa !29, !noalias !232
  %i.aqb = getelementptr inbounds nuw i8, ptr %.22842.i, i64 2 ; 2 uses
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !29, !noalias !232
  %i.aqd = zext i8 %i.aqc to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.aqd
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !29
  %i.aqg = zext i8 %i.aqf to i32
  %i.aqh = mul nuw nsw i32 %i.aqg, %i.aoq
  %i.aqi = load i16, ptr %i.anm, align 2, !tbaa !176, !alias.scope !232
  %i.aqj = zext i16 %i.aqi to i32
  %i.aqk = mul nuw nsw i32 %i.aqj, %i.aov
  %i.aql = add nuw nsw i32 %i.aqh, 128
  %i.aqm = add nuw nsw i32 %i.aql, %i.aqk         ; 2 uses
  %i.aqn = lshr i32 %i.aqm, 8
  %i.aqo = and i32 %i.aqn, 255
  %i.aqp = add nuw nsw i32 %i.aqo, %i.aqm
  %i.aqq = lshr i32 %i.aqp, 8                     ; 2 uses
  %i.aqr = trunc i32 %i.aqq to i8
  br i1 %.not.i190, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %.mask770.i = and i32 %i.aqq, 255
  %i.aqs = zext nneg i32 %.mask770.i to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !29
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.2737.i = phi i8 [ %i.aqu, %bb.fg ], [ %i.aqr, %bb.ff ]
  store i8 %.2737.i, ptr %i.aqb, align 1, !tbaa !29, !noalias !232
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fa, %bb.ez
  %i.aqv = add nuw i32 %.17719841.i, 1            ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.22842.i, i64 4
  %exitcond943.not.i = icmp eq i32 %i.aqv, %i.sj
  br i1 %exitcond943.not.i, label %png_do_compose.exit, label %bb.ey, !llvm.loop !252

bb.fj:                                            ; preds = %bb.fm, %.lr.ph840.i
  %.23839.i = phi ptr [ %i.rs, %.lr.ph840.i ], [ %i.ata, %bb.fm ] ; 9 uses
  %.18720838.i = phi i32 [ 0, %.lr.ph840.i ], [ %i.asz, %bb.fm ]
  %i.aqx = getelementptr inbounds nuw i8, ptr %.23839.i, i64 3
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !29, !noalias !232 ; 3 uses
  switch i8 %i.aqy, label %bb.fl [
    i8 0, label %bb.fk
    i8 -1, label %bb.fm
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.aqz = load i16, ptr %i.ane, align 2, !tbaa !145, !alias.scope !232
  %i.ara = trunc i16 %i.aqz to i8
  store i8 %i.ara, ptr %.23839.i, align 1, !tbaa !29, !noalias !232
  %i.arb = load i16, ptr %i.anf, align 4, !tbaa !146, !alias.scope !232
  %i.arc = trunc i16 %i.arb to i8
  %i.ard = getelementptr inbounds nuw i8, ptr %.23839.i, i64 1
  store i8 %i.arc, ptr %i.ard, align 1, !tbaa !29, !noalias !232
  %i.are = load i16, ptr %i.ang, align 2, !tbaa !147, !alias.scope !232
  %i.arf = trunc i16 %i.are to i8
  %i.arg = getelementptr inbounds nuw i8, ptr %.23839.i, i64 2
  store i8 %i.arf, ptr %i.arg, align 1, !tbaa !29, !noalias !232
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.arh = load i8, ptr %.23839.i, align 1, !tbaa !29, !noalias !232
  %i.ari = zext i8 %i.arh to i32
  %i.arj = zext i8 %i.aqy to i32                  ; 3 uses
  %i.ark = mul nuw nsw i32 %i.ari, %i.arj
  %i.arl = load i16, ptr %i.ane, align 2, !tbaa !145, !alias.scope !232
  %i.arm = zext i16 %i.arl to i32
  %i.arn = xor i8 %i.aqy, -1
  %i.aro = zext i8 %i.arn to i32                  ; 3 uses
  %i.arp = mul nuw nsw i32 %i.arm, %i.aro
  %i.arq = add nuw nsw i32 %i.ark, 128
  %i.arr = add nuw nsw i32 %i.arq, %i.arp         ; 2 uses
  %i.ars = lshr i32 %i.arr, 8
  %i.art = and i32 %i.ars, 255
  %i.aru = add nuw nsw i32 %i.art, %i.arr
  %i.arv = lshr i32 %i.aru, 8
  %i.arw = trunc i32 %i.arv to i8
  store i8 %i.arw, ptr %.23839.i, align 1, !tbaa !29, !noalias !232
  %i.arx = getelementptr inbounds nuw i8, ptr %.23839.i, i64 1 ; 2 uses
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !29, !noalias !232
  %i.arz = zext i8 %i.ary to i32
  %i.asa = mul nuw nsw i32 %i.arz, %i.arj
  %i.asb = load i16, ptr %i.anf, align 4, !tbaa !146, !alias.scope !232
  %i.asc = zext i16 %i.asb to i32
  %i.asd = mul nuw nsw i32 %i.asc, %i.aro
  %i.ase = add nuw nsw i32 %i.asa, 128
  %i.asf = add nuw nsw i32 %i.ase, %i.asd         ; 2 uses
  %i.asg = lshr i32 %i.asf, 8
  %i.ash = and i32 %i.asg, 255
  %i.asi = add nuw nsw i32 %i.ash, %i.asf
  %i.asj = lshr i32 %i.asi, 8
  %i.ask = trunc i32 %i.asj to i8
  store i8 %i.ask, ptr %i.arx, align 1, !tbaa !29, !noalias !232
  %i.asl = getelementptr inbounds nuw i8, ptr %.23839.i, i64 2 ; 2 uses
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !29, !noalias !232
  %i.asn = zext i8 %i.asm to i32
  %i.aso = mul nuw nsw i32 %i.asn, %i.arj
  %i.asp = load i16, ptr %i.ang, align 2, !tbaa !147, !alias.scope !232
  %i.asq = zext i16 %i.asp to i32
  %i.asr = mul nuw nsw i32 %i.asq, %i.aro
  %i.ass = add nuw nsw i32 %i.aso, 128
  %i.ast = add nuw nsw i32 %i.ass, %i.asr         ; 2 uses
  %i.asu = lshr i32 %i.ast, 8
  %i.asv = and i32 %i.asu, 255
  %i.asw = add nuw nsw i32 %i.asv, %i.ast
  %i.asx = lshr i32 %i.asw, 8
  %i.asy = trunc i32 %i.asx to i8
  store i8 %i.asy, ptr %i.asl, align 1, !tbaa !29, !noalias !232
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  %i.asz = add nuw i32 %.18720838.i, 1            ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %.23839.i, i64 4
  %exitcond942.not.i = icmp eq i32 %i.asz, %i.sj
  br i1 %exitcond942.not.i, label %png_do_compose.exit, label %bb.fj, !llvm.loop !253

bb.fn:                                            ; preds = %bb.ew
  %i.atb = icmp ne ptr %i.sa, null
  %i.atc = icmp ne ptr %i.sc, null
  %or.cond13.i = select i1 %i.atb, i1 %i.atc, i1 false
  %i.atd = icmp ne ptr %i.se, null
  %or.cond15.i = select i1 %or.cond13.i, i1 %i.atd, i1 false
  br i1 %or.cond15.i, label %.preheader829.i, label %.preheader831.i

.preheader831.i:                                  ; preds = %bb.fn
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.preheader831.i
  %i.ate = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  br label %bb.fz

.preheader829.i:                                  ; preds = %bb.fn
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph837.i

.lr.ph837.i:                                      ; preds = %.preheader829.i
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.atk = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 658
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fy, %.lr.ph837.i
  %.24836.i = phi ptr [ %i.rs, %.lr.ph837.i ], [ %i.azy, %bb.fy ] ; 23 uses
  %.19721835.i = phi i32 [ 0, %.lr.ph837.i ], [ %i.azx, %bb.fy ]
  %i.atn = getelementptr inbounds nuw i8, ptr %.24836.i, i64 6
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !29, !noalias !232
  %i.atp = zext i8 %i.ato to i32
  %i.atq = shl nuw nsw i32 %i.atp, 8
  %i.atr = getelementptr inbounds nuw i8, ptr %.24836.i, i64 7
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !29, !noalias !232
  %i.att = zext i8 %i.ats to i32
  %i.atu = or disjoint i32 %i.atq, %i.att         ; 5 uses
  %trunc790.i = trunc nuw i32 %i.atu to i16
  switch i16 %trunc790.i, label %bb.fr [
    i16 -1, label %bb.fp
    i16 0, label %bb.fq
  ]

bb.fp:                                            ; preds = %bb.fo
  %i.atv = getelementptr inbounds nuw i8, ptr %.24836.i, i64 1 ; 2 uses
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !29, !noalias !232
  %i.atx = zext i8 %i.atw to i32
  %i.aty = lshr i32 %i.atx, %i.sg
  %i.atz = zext nneg i32 %i.aty to i64
  %i.aua = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.atz
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !228
  %i.auc = load i8, ptr %.24836.i, align 1, !tbaa !29, !noalias !232
  %i.aud = zext i8 %i.auc to i64
  %i.aue = getelementptr inbounds nuw [2 x i8], ptr %i.aub, i64 %i.aud
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !30 ; 2 uses
  %i.aug = lshr i16 %i.auf, 8
  %i.auh = trunc nuw i16 %i.aug to i8
  store i8 %i.auh, ptr %.24836.i, align 1, !tbaa !29, !noalias !232
  %i.aui = trunc i16 %i.auf to i8
  store i8 %i.aui, ptr %i.atv, align 1, !tbaa !29, !noalias !232
  %i.auj = getelementptr inbounds nuw i8, ptr %.24836.i, i64 3 ; 2 uses
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !29, !noalias !232
  %i.aul = zext i8 %i.auk to i32
  %i.aum = lshr i32 %i.aul, %i.sg
  %i.aun = zext nneg i32 %i.aum to i64
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.aun
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !228
  %i.auq = getelementptr inbounds nuw i8, ptr %.24836.i, i64 2 ; 2 uses
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !29, !noalias !232
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.aup, i64 %i.aus
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !30 ; 2 uses
  %i.auv = lshr i16 %i.auu, 8
  %i.auw = trunc nuw i16 %i.auv to i8
  store i8 %i.auw, ptr %i.auq, align 1, !tbaa !29, !noalias !232
  %i.aux = trunc i16 %i.auu to i8
  store i8 %i.aux, ptr %i.auj, align 1, !tbaa !29, !noalias !232
  %i.auy = getelementptr inbounds nuw i8, ptr %.24836.i, i64 5 ; 2 uses
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !29, !noalias !232
  %i.ava = zext i8 %i.auz to i32
  %i.avb = lshr i32 %i.ava, %i.sg
  %i.avc = zext nneg i32 %i.avb to i64
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.avc
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !228
  %i.avf = getelementptr inbounds nuw i8, ptr %.24836.i, i64 4 ; 2 uses
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !29, !noalias !232
  %i.avh = zext i8 %i.avg to i64
  %i.avi = getelementptr inbounds nuw [2 x i8], ptr %i.ave, i64 %i.avh
  %i.avj = load i16, ptr %i.avi, align 2, !tbaa !30 ; 2 uses
  %i.avk = lshr i16 %i.avj, 8
  %i.avl = trunc nuw i16 %i.avk to i8
  store i8 %i.avl, ptr %i.avf, align 1, !tbaa !29, !noalias !232
  %i.avm = trunc i16 %i.avj to i8
  store i8 %i.avm, ptr %i.auy, align 1, !tbaa !29, !noalias !232
  br label %bb.fy

bb.fq:                                            ; preds = %bb.fo
  %i.avn = load i16, ptr %i.ath, align 2, !tbaa !145, !alias.scope !232 ; 2 uses
  %26 = lshr i16 %i.avn, 8
  %27 = trunc nuw i16 %26 to i8
  store i8 %27, ptr %.24836.i, align 1, !tbaa !29, !noalias !232
  %28 = trunc i16 %i.avn to i8
  %i.avo = getelementptr inbounds nuw i8, ptr %.24836.i, i64 1
  store i8 %28, ptr %i.avo, align 1, !tbaa !29, !noalias !232
  %i.avp = load i16, ptr %i.ati, align 4, !tbaa !146, !alias.scope !232 ; 2 uses
  %29 = lshr i16 %i.avp, 8
  %i.avq = trunc nuw i16 %29 to i8
  %i.avr = getelementptr inbounds nuw i8, ptr %.24836.i, i64 2
  store i8 %i.avq, ptr %i.avr, align 1, !tbaa !29, !noalias !232
  %30 = trunc i16 %i.avp to i8
  %i.avs = getelementptr inbounds nuw i8, ptr %.24836.i, i64 3
  store i8 %30, ptr %i.avs, align 1, !tbaa !29, !noalias !232
  %i.avt = load i16, ptr %i.atj, align 2, !tbaa !147, !alias.scope !232 ; 2 uses
  %31 = lshr i16 %i.avt, 8
  %32 = trunc nuw i16 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %.24836.i, i64 4
  store i8 %32, ptr %33, align 1, !tbaa !29, !noalias !232
  %i.avu = trunc i16 %i.avt to i8
  %i.avv = getelementptr inbounds nuw i8, ptr %.24836.i, i64 5
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !29, !noalias !232
  br label %bb.fy

bb.fr:                                            ; preds = %bb.fo
  %i.avw = getelementptr inbounds nuw i8, ptr %.24836.i, i64 1 ; 2 uses
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !29, !noalias !232
  %i.avy = zext i8 %i.avx to i32
  %i.avz = lshr i32 %i.avy, %i.sg
  %i.awa = zext nneg i32 %i.avz to i64
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.awa
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !228
  %i.awd = load i8, ptr %.24836.i, align 1, !tbaa !29, !noalias !232
  %i.awe = zext i8 %i.awd to i64
  %i.awf = getelementptr inbounds nuw [2 x i8], ptr %i.awc, i64 %i.awe
  %i.awg = load i16, ptr %i.awf, align 2, !tbaa !30
  %i.awh = zext i16 %i.awg to i32
  %i.awi = mul nuw i32 %i.atu, %i.awh
  %i.awj = load i16, ptr %i.atk, align 2, !tbaa !174, !alias.scope !232
  %i.awk = zext i16 %i.awj to i32
  %i.awl = xor i32 %i.atu, 65535                  ; 3 uses
  %i.awm = mul nuw i32 %i.awl, %i.awk
  %i.awn = add nuw i32 %i.awi, 32768
  %i.awo = add i32 %i.awn, %i.awm                 ; 2 uses
  %i.awp = lshr i32 %i.awo, 16
  %i.awq = add i32 %i.awp, %i.awo                 ; 2 uses
  %i.awr = lshr i32 %i.awq, 16                    ; 2 uses
  %i.aws = trunc nuw i32 %i.awr to i16
  br i1 %.not.i190, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.awt = and i32 %i.awr, 255
  %i.awu = lshr i32 %i.awt, %i.sg
  %i.awv = zext nneg i32 %i.awu to i64
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.awv
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !228
  %i.awy = lshr i32 %i.awq, 24
  %i.awz = zext nneg i32 %i.awy to i64
  %i.axa = getelementptr inbounds nuw [2 x i8], ptr %i.awx, i64 %i.awz
  %i.axb = load i16, ptr %i.axa, align 2, !tbaa !30
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.0738.i = phi i16 [ %i.axb, %bb.fs ], [ %i.aws, %bb.fr ] ; 2 uses
  %i.axc = lshr i16 %.0738.i, 8
  %i.axd = trunc nuw i16 %i.axc to i8
  store i8 %i.axd, ptr %.24836.i, align 1, !tbaa !29, !noalias !232
  %i.axe = trunc i16 %.0738.i to i8
  store i8 %i.axe, ptr %i.avw, align 1, !tbaa !29, !noalias !232
  %i.axf = getelementptr inbounds nuw i8, ptr %.24836.i, i64 3 ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !29, !noalias !232
  %i.axh = zext i8 %i.axg to i32
  %i.axi = lshr i32 %i.axh, %i.sg
  %i.axj = zext nneg i32 %i.axi to i64
  %i.axk = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.axj
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !228
  %i.axm = getelementptr inbounds nuw i8, ptr %.24836.i, i64 2 ; 2 uses
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !29, !noalias !232
  %i.axo = zext i8 %i.axn to i64
  %i.axp = getelementptr inbounds nuw [2 x i8], ptr %i.axl, i64 %i.axo
  %i.axq = load i16, ptr %i.axp, align 2, !tbaa !30
  %i.axr = zext i16 %i.axq to i32
  %i.axs = mul nuw i32 %i.atu, %i.axr
  %i.axt = load i16, ptr %i.atl, align 2, !tbaa !175, !alias.scope !232
  %i.axu = zext i16 %i.axt to i32
  %i.axv = mul nuw i32 %i.awl, %i.axu
  %i.axw = add nuw i32 %i.axs, 32768
  %i.axx = add i32 %i.axw, %i.axv                 ; 2 uses
  %i.axy = lshr i32 %i.axx, 16
  %i.axz = add i32 %i.axy, %i.axx                 ; 2 uses
  %i.aya = lshr i32 %i.axz, 16                    ; 2 uses
  %i.ayb = trunc nuw i32 %i.aya to i16
  br i1 %.not.i190, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ayc = and i32 %i.aya, 255
  %i.ayd = lshr i32 %i.ayc, %i.sg
  %i.aye = zext nneg i32 %i.ayd to i64
  %i.ayf = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.aye
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !228
  %i.ayh = lshr i32 %i.axz, 24
  %i.ayi = zext nneg i32 %i.ayh to i64
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.ayg, i64 %i.ayi
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !30
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.1739.i = phi i16 [ %i.ayk, %bb.fu ], [ %i.ayb, %bb.ft ] ; 2 uses
  %i.ayl = lshr i16 %.1739.i, 8
  %i.aym = trunc nuw i16 %i.ayl to i8
  store i8 %i.aym, ptr %i.axm, align 1, !tbaa !29, !noalias !232
  %i.ayn = trunc i16 %.1739.i to i8
  store i8 %i.ayn, ptr %i.axf, align 1, !tbaa !29, !noalias !232
  %i.ayo = getelementptr inbounds nuw i8, ptr %.24836.i, i64 5 ; 2 uses
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !29, !noalias !232
  %i.ayq = zext i8 %i.ayp to i32
  %i.ayr = lshr i32 %i.ayq, %i.sg
  %i.ays = zext nneg i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.ays
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !228
  %i.ayv = getelementptr inbounds nuw i8, ptr %.24836.i, i64 4 ; 2 uses
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !29, !noalias !232
  %i.ayx = zext i8 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [2 x i8], ptr %i.ayu, i64 %i.ayx
  %i.ayz = load i16, ptr %i.ayy, align 2, !tbaa !30
  %i.aza = zext i16 %i.ayz to i32
  %i.azb = mul nuw i32 %i.atu, %i.aza
  %i.azc = load i16, ptr %i.atm, align 2, !tbaa !176, !alias.scope !232
  %i.azd = zext i16 %i.azc to i32
  %i.aze = mul nuw i32 %i.awl, %i.azd
  %i.azf = add nuw i32 %i.azb, 32768
  %i.azg = add i32 %i.azf, %i.aze                 ; 2 uses
  %i.azh = lshr i32 %i.azg, 16
  %i.azi = add i32 %i.azh, %i.azg                 ; 2 uses
  %i.azj = lshr i32 %i.azi, 16                    ; 2 uses
  %i.azk = trunc nuw i32 %i.azj to i16
  br i1 %.not.i190, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.azl = and i32 %i.azj, 255
  %i.azm = lshr i32 %i.azl, %i.sg
  %i.azn = zext nneg i32 %i.azm to i64
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.azn
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !228
  %i.azq = lshr i32 %i.azi, 24
  %i.azr = zext nneg i32 %i.azq to i64
  %i.azs = getelementptr inbounds nuw [2 x i8], ptr %i.azp, i64 %i.azr
  %i.azt = load i16, ptr %i.azs, align 2, !tbaa !30
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.2740.i = phi i16 [ %i.azt, %bb.fw ], [ %i.azk, %bb.fv ] ; 2 uses
  %i.azu = lshr i16 %.2740.i, 8
  %i.azv = trunc nuw i16 %i.azu to i8
  store i8 %i.azv, ptr %i.ayv, align 1, !tbaa !29, !noalias !232
  %i.azw = trunc i16 %.2740.i to i8
  store i8 %i.azw, ptr %i.ayo, align 1, !tbaa !29, !noalias !232
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fq, %bb.fp
  %i.azx = add nuw i32 %.19721835.i, 1            ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.24836.i, i64 8
  %exitcond941.not.i = icmp eq i32 %i.azx, %i.sj
  br i1 %exitcond941.not.i, label %png_do_compose.exit, label %bb.fo, !llvm.loop !254

bb.fz:                                            ; preds = %bb.gc, %.lr.ph.i191
  %.25834.i = phi ptr [ %i.rs, %.lr.ph.i191 ], [ %i.bcz, %bb.gc ] ; 16 uses
  %.20722833.i = phi i32 [ 0, %.lr.ph.i191 ], [ %i.bcy, %bb.gc ]
  %i.azz = getelementptr inbounds nuw i8, ptr %.25834.i, i64 6
  %i.baa = load i8, ptr %i.azz, align 1, !tbaa !29, !noalias !232
  %i.bab = zext i8 %i.baa to i32
  %i.bac = shl nuw nsw i32 %i.bab, 8
  %i.bad = getelementptr inbounds nuw i8, ptr %.25834.i, i64 7
  %i.bae = load i8, ptr %i.bad, align 1, !tbaa !29, !noalias !232
  %i.baf = zext i8 %i.bae to i32
  %i.bag = or disjoint i32 %i.bac, %i.baf         ; 5 uses
  %trunc.i = trunc nuw i32 %i.bag to i16
  switch i16 %trunc.i, label %bb.gb [
    i16 0, label %bb.ga
    i16 -1, label %bb.gc
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.bah = load i16, ptr %i.ate, align 2, !tbaa !145, !alias.scope !232 ; 2 uses
  %34 = lshr i16 %i.bah, 8
  %35 = trunc nuw i16 %34 to i8
  store i8 %35, ptr %.25834.i, align 1, !tbaa !29, !noalias !232
  %36 = trunc i16 %i.bah to i8
  %i.bai = getelementptr inbounds nuw i8, ptr %.25834.i, i64 1
  store i8 %36, ptr %i.bai, align 1, !tbaa !29, !noalias !232
  %i.baj = load i16, ptr %i.atf, align 4, !tbaa !146, !alias.scope !232 ; 2 uses
  %37 = lshr i16 %i.baj, 8
  %i.bak = trunc nuw i16 %37 to i8
  %i.bal = getelementptr inbounds nuw i8, ptr %.25834.i, i64 2
  store i8 %i.bak, ptr %i.bal, align 1, !tbaa !29, !noalias !232
  %38 = trunc i16 %i.baj to i8
  %i.bam = getelementptr inbounds nuw i8, ptr %.25834.i, i64 3
  store i8 %38, ptr %i.bam, align 1, !tbaa !29, !noalias !232
  %i.ban = load i16, ptr %i.atg, align 2, !tbaa !147, !alias.scope !232 ; 2 uses
  %39 = lshr i16 %i.ban, 8
  %40 = trunc nuw i16 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %.25834.i, i64 4
  store i8 %40, ptr %41, align 1, !tbaa !29, !noalias !232
  %i.bao = trunc i16 %i.ban to i8
  %i.bap = getelementptr inbounds nuw i8, ptr %.25834.i, i64 5
  store i8 %i.bao, ptr %i.bap, align 1, !tbaa !29, !noalias !232
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %i.baq = load i8, ptr %.25834.i, align 1, !tbaa !29, !noalias !232
  %i.bar = zext i8 %i.baq to i32
  %i.bas = shl nuw nsw i32 %i.bar, 8
  %i.bat = getelementptr inbounds nuw i8, ptr %.25834.i, i64 1 ; 2 uses
  %i.bau = load i8, ptr %i.bat, align 1, !tbaa !29, !noalias !232
  %i.bav = zext i8 %i.bau to i32
  %i.baw = or disjoint i32 %i.bas, %i.bav
  %i.bax = getelementptr inbounds nuw i8, ptr %.25834.i, i64 2 ; 2 uses
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !29, !noalias !232
  %i.baz = zext i8 %i.bay to i32
  %i.bba = shl nuw nsw i32 %i.baz, 8
  %i.bbb = getelementptr inbounds nuw i8, ptr %.25834.i, i64 3 ; 2 uses
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !29, !noalias !232
  %i.bbd = zext i8 %i.bbc to i32
  %i.bbe = or disjoint i32 %i.bba, %i.bbd
  %i.bbf = getelementptr inbounds nuw i8, ptr %.25834.i, i64 4 ; 2 uses
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !29, !noalias !232
  %i.bbh = zext i8 %i.bbg to i32
  %i.bbi = shl nuw nsw i32 %i.bbh, 8
  %i.bbj = getelementptr inbounds nuw i8, ptr %.25834.i, i64 5 ; 2 uses
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !29, !noalias !232
  %i.bbl = zext i8 %i.bbk to i32
  %i.bbm = or disjoint i32 %i.bbi, %i.bbl
  %i.bbn = mul nuw i32 %i.baw, %i.bag
  %i.bbo = load i16, ptr %i.ate, align 2, !tbaa !145, !alias.scope !232
  %i.bbp = zext i16 %i.bbo to i32
  %i.bbq = xor i32 %i.bag, 65535                  ; 3 uses
  %i.bbr = mul nuw i32 %i.bbq, %i.bbp
  %i.bbs = add nuw i32 %i.bbn, 32768
  %i.bbt = add i32 %i.bbs, %i.bbr                 ; 2 uses
  %i.bbu = lshr i32 %i.bbt, 16
  %i.bbv = add i32 %i.bbu, %i.bbt                 ; 2 uses
  %i.bbw = lshr i32 %i.bbv, 16
  %i.bbx = lshr i32 %i.bbv, 24
  %i.bby = trunc nuw i32 %i.bbx to i8
  store i8 %i.bby, ptr %.25834.i, align 1, !tbaa !29, !noalias !232
  %i.bbz = trunc i32 %i.bbw to i8
  store i8 %i.bbz, ptr %i.bat, align 1, !tbaa !29, !noalias !232
  %i.bca = mul nuw i32 %i.bbe, %i.bag
  %i.bcb = load i16, ptr %i.atf, align 4, !tbaa !146, !alias.scope !232
  %i.bcc = zext i16 %i.bcb to i32
  %i.bcd = mul nuw i32 %i.bbq, %i.bcc
  %i.bce = add nuw i32 %i.bca, 32768
  %i.bcf = add i32 %i.bce, %i.bcd                 ; 2 uses
  %i.bcg = lshr i32 %i.bcf, 16
  %i.bch = add i32 %i.bcg, %i.bcf                 ; 2 uses
  %i.bci = lshr i32 %i.bch, 16
  %i.bcj = lshr i32 %i.bch, 24
  %i.bck = trunc nuw i32 %i.bcj to i8
  store i8 %i.bck, ptr %i.bax, align 1, !tbaa !29, !noalias !232
  %i.bcl = trunc i32 %i.bci to i8
  store i8 %i.bcl, ptr %i.bbb, align 1, !tbaa !29, !noalias !232
  %i.bcm = mul nuw i32 %i.bbm, %i.bag
  %i.bcn = load i16, ptr %i.atg, align 2, !tbaa !147, !alias.scope !232
  %i.bco = zext i16 %i.bcn to i32
  %i.bcp = mul nuw i32 %i.bbq, %i.bco
  %i.bcq = add nuw i32 %i.bcm, 32768
  %i.bcr = add i32 %i.bcq, %i.bcp                 ; 2 uses
  %i.bcs = lshr i32 %i.bcr, 16
  %i.bct = add i32 %i.bcs, %i.bcr                 ; 2 uses
  %i.bcu = lshr i32 %i.bct, 16
  %i.bcv = lshr i32 %i.bct, 24
  %i.bcw = trunc nuw i32 %i.bcv to i8
  store i8 %i.bcw, ptr %i.bbf, align 1, !tbaa !29, !noalias !232
  %i.bcx = trunc i32 %i.bcu to i8
  store i8 %i.bcx, ptr %i.bbj, align 1, !tbaa !29, !noalias !232
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %i.bcy = add nuw i32 %.20722833.i, 1            ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %.25834.i, i64 8
  %exitcond.not.i192 = icmp eq i32 %i.bcy, %i.sj
  br i1 %exitcond.not.i192, label %png_do_compose.exit, label %bb.fz, !llvm.loop !255

png_do_compose.exit.loopexit717.unr-lcssa:        ; preds = %bb.cp
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %png_do_compose.exit, label %.epil.preheader766

.epil.preheader766:                               ; preds = %png_do_compose.exit.loopexit717.unr-lcssa, %.lr.ph879.i
  %.11878.i.epil.init = phi ptr [ %i.rs, %.lr.ph879.i ], [ %i.yd, %png_do_compose.exit.loopexit717.unr-lcssa ] ; 2 uses
  %lcmp.mod769 = trunc i32 %i.sj to i1
  tail call void @llvm.assume(i1 %lcmp.mod769)
  %i.bda = load i8, ptr %.11878.i.epil.init, align 1, !tbaa !29, !noalias !232
  %i.bdb = zext i8 %i.bda to i16
  %i.bdc = icmp eq i16 %i.wx, %i.bdb
  br i1 %i.bdc, label %bb.gd, label %png_do_compose.exit

bb.gd:                                            ; preds = %.epil.preheader766
  %i.bdd = load i16, ptr %i.wy, align 4, !tbaa !148, !alias.scope !232
  %i.bde = trunc i16 %i.bdd to i8
  store i8 %i.bde, ptr %.11878.i.epil.init, align 1, !tbaa !29, !noalias !232
  br label %png_do_compose.exit

png_do_compose.exit.loopexit718.unr-lcssa:        ; preds = %bb.ck
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %png_do_compose.exit, label %.epil.preheader760

.epil.preheader760:                               ; preds = %png_do_compose.exit.loopexit718.unr-lcssa, %.lr.ph876.i
  %.10875.i.epil.init = phi ptr [ %i.rs, %.lr.ph876.i ], [ %i.xr, %png_do_compose.exit.loopexit718.unr-lcssa ] ; 2 uses
  %lcmp.mod763 = trunc i32 %i.sj to i1
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.bdf = load i8, ptr %.10875.i.epil.init, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.bdg = zext i8 %i.bdf to i16
  %i.bdh = icmp eq i16 %i.wt, %i.bdg
  br i1 %i.bdh, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.epil.preheader760
  %i.bdi = zext i8 %i.bdf to i64
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.bdi
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !29
  br label %png_do_compose.exit.loopexit718.epilog-lcssa

bb.gf:                                            ; preds = %.epil.preheader760
  %i.bdl = load i16, ptr %i.wu, align 4, !tbaa !148, !alias.scope !232
  %i.bdm = trunc i16 %i.bdl to i8
  br label %png_do_compose.exit.loopexit718.epilog-lcssa

png_do_compose.exit.loopexit718.epilog-lcssa:     ; preds = %bb.gf, %bb.ge
  %storemerge781.i.epil = phi i8 [ %i.bdk, %bb.ge ], [ %i.bdm, %bb.gf ]
  store i8 %storemerge781.i.epil, ptr %.10875.i.epil.init, align 1, !tbaa !29, !noalias !232
  br label %png_do_compose.exit

png_do_compose.exit.loopexit719.unr-lcssa:        ; preds = %bb.cy
  %lcmp.mod756.not = icmp eq i32 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %png_do_compose.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %png_do_compose.exit.loopexit719.unr-lcssa, %.lr.ph873.i
  %.13872.i.epil.init = phi ptr [ %i.rs, %.lr.ph873.i ], [ %i.zw, %png_do_compose.exit.loopexit719.unr-lcssa ] ; 3 uses
  %lcmp.mod757 = trunc i32 %i.sj to i1
  tail call void @llvm.assume(i1 %lcmp.mod757)
  %i.bdn = load i8, ptr %.13872.i.epil.init, align 1, !tbaa !29, !noalias !232
  %i.bdo = zext i8 %i.bdn to i32
  %i.bdp = shl nuw nsw i32 %i.bdo, 8
  %i.bdq = getelementptr inbounds nuw i8, ptr %.13872.i.epil.init, i64 1 ; 2 uses
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !29, !noalias !232
  %i.bds = zext i8 %i.bdr to i32
  %i.bdt = or disjoint i32 %i.bdp, %i.bds
  %i.bdu = icmp eq i32 %i.bdt, %i.yk
  br i1 %i.bdu, label %bb.gg, label %png_do_compose.exit

bb.gg:                                            ; preds = %.epil.preheader
  %42 = load i16, ptr %i.yl, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %43 = lshr i16 %42, 8
  %44 = trunc nuw i16 %43 to i8
  store i8 %44, ptr %.13872.i.epil.init, align 1, !tbaa !29, !noalias !232
  %i.bdv = trunc i16 %42 to i8
  store i8 %i.bdv, ptr %i.bdq, align 1, !tbaa !29, !noalias !232
  br label %png_do_compose.exit

png_do_compose.exit:                              ; preds = %bb.gc, %bb.fy, %bb.fm, %bb.fi, %bb.ev, %bb.er, %bb.ei, %bb.ee, %bb.dr, %bb.dw, %bb.df, %bb.dk, %bb.ct, %png_do_compose.exit.loopexit719.unr-lcssa, %bb.gg, %.epil.preheader, %png_do_compose.exit.loopexit718.epilog-lcssa, %png_do_compose.exit.loopexit718.unr-lcssa, %png_do_compose.exit.loopexit717.unr-lcssa, %bb.gd, %.epil.preheader766, %bb.bz, %bb.cc, %bb.br, %bb.bu, %bb.bm, %.preheader829.i, %.preheader831.i, %.preheader825.i, %.preheader827.i, %.preheader821.i, %.preheader823.i, %.preheader817.i, %.preheader819.i, %.preheader813.i, %.preheader815.i, %.preheader809.i, %.preheader811.i, %.preheader805.i, %.preheader807.i, %.preheader801.i, %.preheader803.i, %.preheader797.i, %.preheader799.i, %.preheader793.i, %.preheader795.i, %.preheader.i205, %.split.i, %bb.bj, %bb.bi, %bb.bh
  %i.bdw = load i32, ptr %i.h, align 4, !tbaa !27 ; 2 uses
  %i.bdx = and i32 %i.bdw, 6299648
  %or.cond181 = icmp eq i32 %i.bdx, 8192
  br i1 %or.cond181, label %bb.gh, label %png_do_gamma.exit

bb.gh:                                            ; preds = %png_do_compose.exit
  %i.bdy = and i32 %i.bdw, 128
  %.not149 = icmp eq i32 %i.bdy, 0
  br i1 %.not149, label %._crit_edge, label %bb.gi

._crit_edge:                                      ; preds = %bb.gh
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 623
  %.pre400 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !131
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.bdz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bea = load i16, ptr %i.bdz, align 8, !tbaa !144
  %.not150 = icmp eq i16 %i.bea, 0
  br i1 %.not150, label %bb.gj, label %png_do_gamma.exit

bb.gj:                                            ; preds = %bb.gi
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !131 ; 2 uses
  %i.bed = and i8 %i.bec, 4
  %.not151 = icmp eq i8 %i.bed, 0
  br i1 %.not151, label %bb.gk, label %png_do_gamma.exit

bb.gk:                                            ; preds = %._crit_edge, %bb.gj
  %i.bee = phi i8 [ %.pre400, %._crit_edge ], [ %i.bec, %bb.gj ]
  %.not152 = icmp eq i8 %i.bee, 3
  br i1 %.not152, label %png_do_gamma.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bef = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 1 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !169, !alias.scope !256 ; 39 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !226, !alias.scope !256 ; 13 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bem = load i32, ptr %i.bel, align 8, !tbaa !227, !alias.scope !256 ; 12 uses
  %i.ben = load i32, ptr %1, align 8, !tbaa !209, !noalias !256 ; 33 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !210, !noalias !256 ; 7 uses
  %i.beq = icmp ult i8 %i.bep, 9
  %i.ber = icmp ne ptr %i.bei, null
  %or.cond.i207 = select i1 %i.beq, i1 %i.ber, i1 false
  br i1 %or.cond.i207, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.bes = icmp eq i8 %i.bep, 16
  %i.bet = icmp ne ptr %i.bek, null
  %or.cond3.i208 = select i1 %i.bes, i1 %i.bet, i1 false
  br i1 %or.cond3.i208, label %bb.gn, label %png_do_gamma.exit

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.beu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bev = load i8, ptr %i.beu, align 8, !tbaa !207, !noalias !256
  switch i8 %i.bev, label %png_do_gamma.exit [
    i8 2, label %bb.go
    i8 6, label %bb.gp
    i8 4, label %bb.gq
    i8 0, label %bb.gr
  ]

bb.go:                                            ; preds = %bb.gn
  %i.bew = icmp eq i8 %i.bep, 8
  %.not265.i = icmp eq i32 %i.ben, 0              ; 2 uses
  br i1 %i.bew, label %.preheader.i219, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.go
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph253.i

.preheader.i219:                                  ; preds = %bb.go
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph256.i220.preheader

.lr.ph256.i220.preheader:                         ; preds = %.preheader.i219
  %xtraiter806 = and i32 %i.ben, 1
  %i.bex = icmp eq i32 %i.ben, 1
  br i1 %i.bex, label %.lr.ph256.i220.epil.preheader, label %.lr.ph256.i220.preheader.new

.lr.ph256.i220.preheader.new:                     ; preds = %.lr.ph256.i220.preheader
  %unroll_iter810 = and i32 %i.ben, -2
  br label %.lr.ph256.i220

.lr.ph256.i220:                                   ; preds = %.lr.ph256.i220, %.lr.ph256.i220.preheader.new
  %.0255.i = phi ptr [ %i.beg, %.lr.ph256.i220.preheader.new ], [ %i.bgb, %.lr.ph256.i220 ] ; 8 uses
  %niter811 = phi i32 [ 0, %.lr.ph256.i220.preheader.new ], [ %niter811.next.1, %.lr.ph256.i220 ]
  %i.bey = load i8, ptr %.0255.i, align 1, !tbaa !29, !noalias !256
  %i.bez = zext i8 %i.bey to i64
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bez
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !29, !noalias !256
  store i8 %i.bfb, ptr %.0255.i, align 1, !tbaa !29, !noalias !256
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0255.i, i64 1 ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !29, !noalias !256
  %i.bfe = zext i8 %i.bfd to i64
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bfe
  %i.bfg = load i8, ptr %i.bff, align 1, !tbaa !29, !noalias !256
  store i8 %i.bfg, ptr %i.bfc, align 1, !tbaa !29, !noalias !256
  %i.bfh = getelementptr inbounds nuw i8, ptr %.0255.i, i64 2 ; 2 uses
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !29, !noalias !256
  %i.bfj = zext i8 %i.bfi to i64
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bfj
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !29, !noalias !256
  store i8 %i.bfl, ptr %i.bfh, align 1, !tbaa !29, !noalias !256
  %i.bfm = getelementptr inbounds nuw i8, ptr %.0255.i, i64 3 ; 2 uses
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !29, !noalias !256
  %i.bfo = zext i8 %i.bfn to i64
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bfo
  %i.bfq = load i8, ptr %i.bfp, align 1, !tbaa !29, !noalias !256
  store i8 %i.bfq, ptr %i.bfm, align 1, !tbaa !29, !noalias !256
  %i.bfr = getelementptr inbounds nuw i8, ptr %.0255.i, i64 4 ; 2 uses
  %i.bfs = load i8, ptr %i.bfr, align 1, !tbaa !29, !noalias !256
  %i.bft = zext i8 %i.bfs to i64
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bft
  %i.bfv = load i8, ptr %i.bfu, align 1, !tbaa !29, !noalias !256
  store i8 %i.bfv, ptr %i.bfr, align 1, !tbaa !29, !noalias !256
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0255.i, i64 5 ; 2 uses
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !29, !noalias !256
  %i.bfy = zext i8 %i.bfx to i64
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bfy
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !29, !noalias !256
  store i8 %i.bga, ptr %i.bfw, align 1, !tbaa !29, !noalias !256
  %i.bgb = getelementptr inbounds nuw i8, ptr %.0255.i, i64 6 ; 2 uses
  %niter811.next.1 = add i32 %niter811, 2         ; 2 uses
  %niter811.ncmp.1 = icmp eq i32 %niter811.next.1, %unroll_iter810
  br i1 %niter811.ncmp.1, label %png_do_gamma.exit.loopexit.unr-lcssa, label %.lr.ph256.i220, !llvm.loop !259

.lr.ph253.i:                                      ; preds = %.preheader210.i, %.lr.ph253.i
  %.1252.i = phi ptr [ %i.bhu, %.lr.ph253.i ], [ %i.beg, %.preheader210.i ] ; 8 uses
  %.1200251.i = phi i32 [ %i.bhv, %.lr.ph253.i ], [ 0, %.preheader210.i ]
  %i.bgc = getelementptr inbounds nuw i8, ptr %.1252.i, i64 1 ; 2 uses
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !29, !noalias !256
  %i.bge = zext i8 %i.bgd to i32
  %i.bgf = lshr i32 %i.bge, %i.bem
  %i.bgg = zext nneg i32 %i.bgf to i64
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr %i.bek, i64 %i.bgg
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !228, !noalias !256
  %i.bgj = load i8, ptr %.1252.i, align 1, !tbaa !29, !noalias !256
  %i.bgk = zext i8 %i.bgj to i64
  %i.bgl = getelementptr inbounds nuw [2 x i8], ptr %i.bgi, i64 %i.bgk
  %i.bgm = load i16, ptr %i.bgl, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bgn = lshr i16 %i.bgm, 8
  %i.bgo = trunc nuw i16 %i.bgn to i8
  store i8 %i.bgo, ptr %.1252.i, align 1, !tbaa !29, !noalias !256
  %i.bgp = trunc i16 %i.bgm to i8
  store i8 %i.bgp, ptr %i.bgc, align 1, !tbaa !29, !noalias !256
  %i.bgq = getelementptr inbounds nuw i8, ptr %.1252.i, i64 2 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.1252.i, i64 3 ; 2 uses
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !29, !noalias !256
  %i.bgt = zext i8 %i.bgs to i32
  %i.bgu = lshr i32 %i.bgt, %i.bem
  %i.bgv = zext nneg i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds nuw [8 x i8], ptr %i.bek, i64 %i.bgv
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !228, !noalias !256
  %i.bgy = load i8, ptr %i.bgq, align 1, !tbaa !29, !noalias !256
  %i.bgz = zext i8 %i.bgy to i64
  %i.bha = getelementptr inbounds nuw [2 x i8], ptr %i.bgx, i64 %i.bgz
  %i.bhb = load i16, ptr %i.bha, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bhc = lshr i16 %i.bhb, 8
  %i.bhd = trunc nuw i16 %i.bhc to i8
  store i8 %i.bhd, ptr %i.bgq, align 1, !tbaa !29, !noalias !256
  %i.bhe = trunc i16 %i.bhb to i8
  store i8 %i.bhe, ptr %i.bgr, align 1, !tbaa !29, !noalias !256
  %i.bhf = getelementptr inbounds nuw i8, ptr %.1252.i, i64 4 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %.1252.i, i64 5 ; 2 uses
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !29, !noalias !256
  %i.bhi = zext i8 %i.bhh to i32
  %i.bhj = lshr i32 %i.bhi, %i.bem
  %i.bhk = zext nneg i32 %i.bhj to i64
  %i.bhl = getelementptr inbounds nuw [8 x i8], ptr %i.bek, i64 %i.bhk
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !228, !noalias !256
  %i.bhn = load i8, ptr %i.bhf, align 1, !tbaa !29, !noalias !256
  %i.bho = zext i8 %i.bhn to i64
  %i.bhp = getelementptr inbounds nuw [2 x i8], ptr %i.bhm, i64 %i.bho
  %i.bhq = load i16, ptr %i.bhp, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bhr = lshr i16 %i.bhq, 8
  %i.bhs = trunc nuw i16 %i.bhr to i8
  store i8 %i.bhs, ptr %i.bhf, align 1, !tbaa !29, !noalias !256
  %i.bht = trunc i16 %i.bhq to i8
  store i8 %i.bht, ptr %i.bhg, align 1, !tbaa !29, !noalias !256
  %i.bhu = getelementptr inbounds nuw i8, ptr %.1252.i, i64 6
  %i.bhv = add nuw i32 %.1200251.i, 1             ; 2 uses
  %exitcond279.not.i = icmp eq i32 %i.bhv, %i.ben
  br i1 %exitcond279.not.i, label %png_do_gamma.exit, label %.lr.ph253.i, !llvm.loop !260

bb.gp:                                            ; preds = %bb.gn
  %i.bhw = icmp eq i8 %i.bep, 8
  %.not263.i = icmp eq i32 %i.ben, 0              ; 2 uses
  br i1 %i.bhw, label %.preheader212.i, label %.preheader214.i

.preheader214.i:                                  ; preds = %bb.gp
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph247.i

end_hunk_0
