Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_do_read_transformations:bb.a
  %i.ve = load i8, ptr %.6882.i, align 1, !tbaa !26, !noalias !318
  %i.vf = zext i8 %i.ve to i32                    ; 2 uses
  %i.vg = lshr i32 %i.vf, %.6732880.i
  %i.vh = and i32 %i.vg, 15                       ; 2 uses
  %i.vi = icmp eq i32 %i.vh, %i.uy
  br i1 %i.vi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vj = load i16, ptr %i.uz, align 4, !tbaa !55, !alias.scope !318
  %i.vk = zext i16 %i.vj to i32
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.vl = mul nuw nsw i32 %i.vh, 17
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !26
  %i.vp = lshr i8 %i.vo, 4
  %i.vq = zext nneg i8 %i.vp to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink1034.i = phi i32 [ %i.vq, %bb.by ], [ %i.vk, %bb.bx ]
  %.pn1037.i = sub nsw i32 4, %.6732880.i
  %.pn.i = lshr i32 3855, %.pn1037.i
  %.sink1033.i = and i32 %.pn.i, %i.vf
  %i.vr = shl i32 %.sink1034.i, %.6732880.i
  %i.vs = or i32 %i.vr, %.sink1033.i
  %storemerge783.i = trunc i32 %i.vs to i8
  store i8 %storemerge783.i, ptr %.6882.i, align 1, !tbaa !26, !noalias !318
  %i.vt = icmp eq i32 %.6732880.i, 0              ; 2 uses
  %i.vu = add nsw i32 %.6732880.i, -4
  %.7733.i = select i1 %i.vt, i32 4, i32 %i.vu
  %.7.idx.i = zext i1 %i.vt to i64
  %.7.i195 = getelementptr inbounds nuw i8, ptr %.6882.i, i64 %.7.idx.i
  %i.vv = add nuw i32 %.3705881.i, 1              ; 2 uses
  %exitcond956.not.i = icmp eq i32 %i.vv, %i.sd
  br i1 %exitcond956.not.i, label %png_do_compose.exit, label %bb.bw, !llvm.loop !230

bb.ca:                                            ; preds = %bb.cc, %.lr.ph887.i
  %.8886.i = phi ptr [ %i.rm, %.lr.ph887.i ], [ %.9.i196, %bb.cc ] ; 3 uses
  %.4706885.i = phi i32 [ 0, %.lr.ph887.i ], [ %i.wl, %bb.cc ]
  %.8734884.i = phi i32 [ 4, %.lr.ph887.i ], [ %.9735.i, %bb.cc ] ; 5 uses
  %i.vw = load i8, ptr %.8886.i, align 1, !tbaa !26, !noalias !318
  %i.vx = zext i8 %i.vw to i32                    ; 2 uses
  %i.vy = lshr i32 %i.vx, %.8734884.i
  %i.vz = and i32 %i.vy, 15
  %i.wa = icmp eq i32 %i.vz, %i.vc
  br i1 %i.wa, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wb = sub nsw i32 4, %.8734884.i
  %i.wc = lshr i32 3855, %i.wb
  %i.wd = and i32 %i.wc, %i.vx
  %i.we = load i16, ptr %i.vd, align 4, !tbaa !55, !alias.scope !318
  %i.wf = zext i16 %i.we to i32
  %i.wg = shl i32 %i.wf, %.8734884.i
  %i.wh = or i32 %i.wg, %i.wd
  %i.wi = trunc i32 %i.wh to i8
  store i8 %i.wi, ptr %.8886.i, align 1, !tbaa !26, !noalias !318
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.wj = icmp eq i32 %.8734884.i, 0              ; 2 uses
  %i.wk = add nsw i32 %.8734884.i, -4
  %.9735.i = select i1 %i.wj, i32 4, i32 %i.wk
  %.9.idx.i = zext i1 %i.wj to i64
  %.9.i196 = getelementptr inbounds nuw i8, ptr %.8886.i, i64 %.9.idx.i
  %i.wl = add nuw i32 %.4706885.i, 1              ; 2 uses
  %exitcond957.not.i = icmp eq i32 %i.wl, %i.sd
  br i1 %exitcond957.not.i, label %png_do_compose.exit, label %bb.ca, !llvm.loop !231

bb.cd:                                            ; preds = %.split.i
  %.not780.i = icmp eq ptr %i.ro, null
  %.not915.i = icmp eq i32 %i.sd, 0               ; 2 uses
  br i1 %.not780.i, label %.preheader801.i, label %.preheader803.i.a

.preheader803.i.a:                                ; preds = %bb.cd
  br i1 %.not915.i, label %png_do_compose.exit, label %.lr.ph876.i

.lr.ph876.i:                                      ; preds = %.preheader803.i.a
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.wn = load i16, ptr %i.wm, align 8, !tbaa !57, !alias.scope !318 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter736 = and i32 %i.sd, 1
  %i.wp = icmp eq i32 %i.sd, 1
  br i1 %i.wp, label %.epil.preheader735, label %.lr.ph876.i.new

.lr.ph876.i.new:                                  ; preds = %.lr.ph876.i
  %unroll_iter739 = and i32 %i.sd, -2
  br label %bb.ce

.preheader801.i:                                  ; preds = %bb.cd
  br i1 %.not915.i, label %png_do_compose.exit, label %.lr.ph879.i

.lr.ph879.i:                                      ; preds = %.preheader801.i
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.wr = load i16, ptr %i.wq, align 8, !tbaa !57, !alias.scope !318 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter742 = and i32 %i.sd, 1
  %i.wt = icmp eq i32 %i.sd, 1
  br i1 %i.wt, label %.epil.preheader741, label %.lr.ph879.i.new

.lr.ph879.i.new:                                  ; preds = %.lr.ph879.i
  %unroll_iter745 = and i32 %i.sd, -2
  br label %bb.cl

bb.ce:                                            ; preds = %bb.ck, %.lr.ph876.i.new
  %.10875.i = phi ptr [ %i.rm, %.lr.ph876.i.new ], [ %i.xl, %bb.ck ] ; 4 uses
  %niter740 = phi i32 [ 0, %.lr.ph876.i.new ], [ %niter740.next.1, %bb.ck ]
  %i.wu = load i8, ptr %.10875.i, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.wv = zext i8 %i.wu to i16
  %i.ww = icmp eq i16 %i.wn, %i.wv
  br i1 %i.ww, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.wx = load i16, ptr %i.wo, align 4, !tbaa !55, !alias.scope !318
  %i.wy = trunc i16 %i.wx to i8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.wz = zext i8 %i.wu to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !26
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %storemerge781.i = phi i8 [ %i.xb, %bb.cg ], [ %i.wy, %bb.cf ]
  store i8 %storemerge781.i, ptr %.10875.i, align 1, !tbaa !26, !noalias !318
  %i.xc = getelementptr inbounds nuw i8, ptr %.10875.i, i64 1 ; 2 uses
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.xe = zext i8 %i.xd to i16
  %i.xf = icmp eq i16 %i.wn, %i.xe
  br i1 %i.xf, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xg = zext i8 %i.xd to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !26
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.xj = load i16, ptr %i.wo, align 4, !tbaa !55, !alias.scope !318
  %i.xk = trunc i16 %i.xj to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %storemerge781.i.1 = phi i8 [ %i.xi, %bb.ci ], [ %i.xk, %bb.cj ]
  store i8 %storemerge781.i.1, ptr %i.xc, align 1, !tbaa !26, !noalias !318
  %i.xl = getelementptr inbounds nuw i8, ptr %.10875.i, i64 2 ; 2 uses
  %niter740.next.1 = add nuw i32 %niter740, 2     ; 2 uses
  %niter740.ncmp.1 = icmp eq i32 %niter740.next.1, %unroll_iter739
  br i1 %niter740.ncmp.1, label %png_do_compose.exit.loopexit692.unr-lcssa, label %bb.ce, !llvm.loop !232

bb.cl:                                            ; preds = %bb.cp, %.lr.ph879.i.new
  %.11878.i = phi ptr [ %i.rm, %.lr.ph879.i.new ], [ %i.xx, %bb.cp ] ; 4 uses
  %niter746 = phi i32 [ 0, %.lr.ph879.i.new ], [ %niter746.next.1, %bb.cp ]
  %i.xm = load i8, ptr %.11878.i, align 1, !tbaa !26, !noalias !318
  %i.xn = zext i8 %i.xm to i16
  %i.xo = icmp eq i16 %i.wr, %i.xn
  br i1 %i.xo, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xp = load i16, ptr %i.ws, align 4, !tbaa !55, !alias.scope !318
  %i.xq = trunc i16 %i.xp to i8
  store i8 %i.xq, ptr %.11878.i, align 1, !tbaa !26, !noalias !318
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.xr = getelementptr inbounds nuw i8, ptr %.11878.i, i64 1 ; 2 uses
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !26, !noalias !318
  %i.xt = zext i8 %i.xs to i16
  %i.xu = icmp eq i16 %i.wr, %i.xt
  br i1 %i.xu, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.xv = load i16, ptr %i.ws, align 4, !tbaa !55, !alias.scope !318
  %i.xw = trunc i16 %i.xv to i8
  store i8 %i.xw, ptr %i.xr, align 1, !tbaa !26, !noalias !318
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.xx = getelementptr inbounds nuw i8, ptr %.11878.i, i64 2 ; 2 uses
  %niter746.next.1 = add nuw i32 %niter746, 2     ; 2 uses
  %niter746.ncmp.1 = icmp eq i32 %niter746.next.1, %unroll_iter745
  br i1 %niter746.ncmp.1, label %png_do_compose.exit.loopexit691.unr-lcssa, label %bb.cl, !llvm.loop !233

bb.cq:                                            ; preds = %.split.i
  %.not777.i = icmp eq ptr %i.ru, null
  %.not913.i = icmp eq i32 %i.sd, 0               ; 2 uses
  br i1 %.not777.i, label %.preheader805.i, label %.preheader807.i.a

.preheader807.i.a:                                ; preds = %bb.cq
  br i1 %.not913.i, label %png_do_compose.exit, label %.lr.ph870.i

.lr.ph870.i:                                      ; preds = %.preheader807.i.a
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.xz = load i16, ptr %i.xy, align 8, !tbaa !57, !alias.scope !318
  %i.ya = zext i16 %i.xz to i32
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %bb.cr

.preheader805.i:                                  ; preds = %bb.cq
  br i1 %.not913.i, label %png_do_compose.exit, label %.lr.ph873.i

.lr.ph873.i:                                      ; preds = %.preheader805.i
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.yd = load i16, ptr %i.yc, align 8, !tbaa !57, !alias.scope !318
  %i.ye = zext i16 %i.yd to i32                   ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter730 = and i32 %i.sd, 1
  %i.yg = icmp eq i32 %i.sd, 1
  br i1 %i.yg, label %.epil.preheader, label %.lr.ph873.i.new

.lr.ph873.i.new:                                  ; preds = %.lr.ph873.i
  %unroll_iter733 = and i32 %i.sd, -2
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ct, %.lr.ph870.i
  %.12869.i = phi ptr [ %i.rm, %.lr.ph870.i ], [ %i.yw, %bb.ct ] ; 4 uses
  %.7709868.i = phi i32 [ 0, %.lr.ph870.i ], [ %i.yv, %bb.ct ]
  %i.yh = load i8, ptr %.12869.i, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.yi = zext i8 %i.yh to i32
  %i.yj = shl nuw nsw i32 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.12869.i, i64 1 ; 2 uses
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !26, !noalias !318
  %i.ym = zext i8 %i.yl to i32                    ; 2 uses
  %i.yn = or disjoint i32 %i.yj, %i.ym
  %i.yo = icmp eq i32 %i.yn, %i.ya
  br i1 %i.yo, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yp = lshr i32 %i.ym, %i.sa
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.yq
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !316
  %i.yt = zext i8 %i.yh to i64
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %i.yt
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %storemerge778.in.in.i = phi ptr [ %i.yu, %bb.cs ], [ %i.yb, %bb.cr ]
  %storemerge778.in.i = load i16, ptr %storemerge778.in.in.i, align 2, !tbaa !27 ; 2 uses
  %storemerge779.in.i = lshr i16 %storemerge778.in.i, 8
  %storemerge779.i = trunc nuw i16 %storemerge779.in.i to i8
  store i8 %storemerge779.i, ptr %.12869.i, align 1, !tbaa !26, !noalias !318
  %storemerge778.i = trunc i16 %storemerge778.in.i to i8
  store i8 %storemerge778.i, ptr %i.yk, align 1, !tbaa !26, !noalias !318
  %i.yv = add nuw i32 %.7709868.i, 1              ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.12869.i, i64 2
  %exitcond952.not.i = icmp eq i32 %i.yv, %i.sd
  br i1 %exitcond952.not.i, label %png_do_compose.exit, label %bb.cr, !llvm.loop !234

bb.cu:                                            ; preds = %bb.cy, %.lr.ph873.i.new
  %.13872.i = phi ptr [ %i.rm, %.lr.ph873.i.new ], [ %i.zq, %bb.cy ] ; 6 uses
  %niter734 = phi i32 [ 0, %.lr.ph873.i.new ], [ %niter734.next.1, %bb.cy ]
  %i.yx = load i8, ptr %.13872.i, align 1, !tbaa !26, !noalias !318
  %i.yy = zext i8 %i.yx to i32
  %i.yz = shl nuw nsw i32 %i.yy, 8
  %i.za = getelementptr inbounds nuw i8, ptr %.13872.i, i64 1 ; 2 uses
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !26, !noalias !318
  %i.zc = zext i8 %i.zb to i32
  %i.zd = or disjoint i32 %i.yz, %i.zc
  %i.ze = icmp eq i32 %i.zd, %i.ye
  br i1 %i.ze, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %2 = load i16, ptr %i.yf, align 4, !tbaa !55, !alias.scope !318 ; 2 uses
  %3 = lshr i16 %2, 8
  %4 = trunc nuw i16 %3 to i8
  store i8 %4, ptr %.13872.i, align 1, !tbaa !26, !noalias !318
  %i.zf = trunc i16 %2 to i8
  store i8 %i.zf, ptr %i.za, align 1, !tbaa !26, !noalias !318
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.zg = getelementptr inbounds nuw i8, ptr %.13872.i, i64 2 ; 2 uses
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !26, !noalias !318
  %i.zi = zext i8 %i.zh to i32
  %i.zj = shl nuw nsw i32 %i.zi, 8
  %i.zk = getelementptr inbounds nuw i8, ptr %.13872.i, i64 3 ; 2 uses
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !26, !noalias !318
  %i.zm = zext i8 %i.zl to i32
  %i.zn = or disjoint i32 %i.zj, %i.zm
  %i.zo = icmp eq i32 %i.zn, %i.ye
  br i1 %i.zo, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %5 = load i16, ptr %i.yf, align 4, !tbaa !55, !alias.scope !318 ; 2 uses
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  store i8 %7, ptr %i.zg, align 1, !tbaa !26, !noalias !318
  %i.zp = trunc i16 %5 to i8
  store i8 %i.zp, ptr %i.zk, align 1, !tbaa !26, !noalias !318
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.zq = getelementptr inbounds nuw i8, ptr %.13872.i, i64 4 ; 2 uses
  %niter734.next.1 = add nuw i32 %niter734, 2     ; 2 uses
  %niter734.ncmp.1 = icmp eq i32 %niter734.next.1, %unroll_iter733
  br i1 %niter734.ncmp.1, label %png_do_compose.exit.loopexit693.unr-lcssa, label %bb.cu, !llvm.loop !235

bb.cz:                                            ; preds = %bb.bi
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !75, !noalias !318
  %i.zt = icmp eq i8 %i.zs, 8
  %.not911.i = icmp eq i32 %i.sd, 0               ; 4 uses
  br i1 %i.zt, label %bb.da, label %bb.dl

bb.da:                                            ; preds = %bb.cz
  %.not776.i = icmp eq ptr %i.ro, null
  br i1 %.not776.i, label %.preheader809.i, label %.preheader811.i.a

.preheader811.i.a:                                ; preds = %bb.da
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph864.i

.lr.ph864.i:                                      ; preds = %.preheader811.i.a
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !60, !alias.scope !318
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.db

.preheader809.i:                                  ; preds = %bb.da
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %.preheader809.i
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !60, !alias.scope !318
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.dg

bb.db:                                            ; preds = %bb.df, %.lr.ph864.i
  %.14863.i = phi ptr [ %i.rm, %.lr.ph864.i ], [ %i.abn, %bb.df ] ; 7 uses
  %.9711862.i = phi i32 [ 0, %.lr.ph864.i ], [ %i.abm, %bb.df ]
  %i.aai = load i8, ptr %.14863.i, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.aaj = zext i8 %i.aai to i16
  %i.aak = icmp eq i16 %i.zv, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %.14863.i, i64 1 ; 3 uses
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !26, !noalias !318 ; 2 uses
  br i1 %i.aak, label %bb.dc, label %._crit_edge.i

bb.dc:                                            ; preds = %bb.db
  %i.aan = load i16, ptr %i.zw, align 4, !tbaa !59, !alias.scope !318
  %i.aao = zext i8 %i.aam to i16
  %i.aap = icmp eq i16 %i.aan, %i.aao
  br i1 %i.aap, label %bb.dd, label %._crit_edge.i

bb.dd:                                            ; preds = %bb.dc
  %i.aaq = getelementptr inbounds nuw i8, ptr %.14863.i, i64 2 ; 2 uses
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !26, !noalias !318
  %i.aas = load i16, ptr %i.zx, align 2, !tbaa !58, !alias.scope !318
  %i.aat = zext i8 %i.aar to i16
  %i.aau = icmp eq i16 %i.aas, %i.aat
  br i1 %i.aau, label %bb.de, label %._crit_edge.i

bb.de:                                            ; preds = %bb.dd
  %i.aav = load i16, ptr %i.zy, align 2, !tbaa !52, !alias.scope !318
  %i.aaw = trunc i16 %i.aav to i8
  store i8 %i.aaw, ptr %.14863.i, align 1, !tbaa !26, !noalias !318
  %i.aax = load i16, ptr %i.zz, align 8, !tbaa !53, !alias.scope !318
  %i.aay = trunc i16 %i.aax to i8
  store i8 %i.aay, ptr %i.aal, align 1, !tbaa !26, !noalias !318
  %i.aaz = load i16, ptr %i.aaa, align 2, !tbaa !54, !alias.scope !318
  %i.aba = trunc i16 %i.aaz to i8
  store i8 %i.aba, ptr %i.aaq, align 1, !tbaa !26, !noalias !318
  br label %bb.df

._crit_edge.i:                                    ; preds = %bb.dd, %bb.dc, %bb.db
  %i.abb = zext i8 %i.aai to i64
  %i.abc = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !26
  store i8 %i.abd, ptr %.14863.i, align 1, !tbaa !26, !noalias !318
  %i.abe = zext i8 %i.aam to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !26
  store i8 %i.abg, ptr %i.aal, align 1, !tbaa !26, !noalias !318
  %i.abh = getelementptr inbounds nuw i8, ptr %.14863.i, i64 2 ; 2 uses
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !26, !noalias !318
  %i.abj = zext i8 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !26
  store i8 %i.abl, ptr %i.abh, align 1, !tbaa !26, !noalias !318
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i, %bb.de
  %i.abm = add nuw i32 %.9711862.i, 1             ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.14863.i, i64 3
  %exitcond950.not.i = icmp eq i32 %i.abm, %i.sd
  br i1 %exitcond950.not.i, label %png_do_compose.exit, label %bb.db, !llvm.loop !236

bb.dg:                                            ; preds = %bb.dk, %.lr.ph867.i
  %.15866.i = phi ptr [ %i.rm, %.lr.ph867.i ], [ %i.aci, %bb.dk ] ; 5 uses
  %.10712865.i = phi i32 [ 0, %.lr.ph867.i ], [ %i.ach, %bb.dk ]
  %i.abo = load i8, ptr %.15866.i, align 1, !tbaa !26, !noalias !318
  %i.abp = zext i8 %i.abo to i16
  %i.abq = icmp eq i16 %i.aac, %i.abp
  br i1 %i.abq, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.abr = getelementptr inbounds nuw i8, ptr %.15866.i, i64 1 ; 2 uses
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !26, !noalias !318
  %i.abt = load i16, ptr %i.aad, align 4, !tbaa !59, !alias.scope !318
  %i.abu = zext i8 %i.abs to i16
  %i.abv = icmp eq i16 %i.abt, %i.abu
  br i1 %i.abv, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.abw = getelementptr inbounds nuw i8, ptr %.15866.i, i64 2 ; 2 uses
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !26, !noalias !318
  %i.aby = load i16, ptr %i.aae, align 2, !tbaa !58, !alias.scope !318
  %i.abz = zext i8 %i.abx to i16
  %i.aca = icmp eq i16 %i.aby, %i.abz
  br i1 %i.aca, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.acb = load i16, ptr %i.aaf, align 2, !tbaa !52, !alias.scope !318
  %i.acc = trunc i16 %i.acb to i8
  store i8 %i.acc, ptr %.15866.i, align 1, !tbaa !26, !noalias !318
  %i.acd = load i16, ptr %i.aag, align 8, !tbaa !53, !alias.scope !318
  %i.ace = trunc i16 %i.acd to i8
  store i8 %i.ace, ptr %i.abr, align 1, !tbaa !26, !noalias !318
  %i.acf = load i16, ptr %i.aah, align 2, !tbaa !54, !alias.scope !318
  %i.acg = trunc i16 %i.acf to i8
  store i8 %i.acg, ptr %i.abw, align 1, !tbaa !26, !noalias !318
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %i.ach = add nuw i32 %.10712865.i, 1            ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.15866.i, i64 3
  %exitcond951.not.i = icmp eq i32 %i.ach, %i.sd
  br i1 %exitcond951.not.i, label %png_do_compose.exit, label %bb.dg, !llvm.loop !237

bb.dl:                                            ; preds = %bb.cz
  %.not774.i = icmp eq ptr %i.ru, null
  br i1 %.not774.i, label %.preheader813.i, label %.preheader815.i.a

.preheader815.i.a:                                ; preds = %bb.dl
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph858.i

.lr.ph858.i:                                      ; preds = %.preheader815.i.a
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !60, !alias.scope !318
  %i.acl = zext i16 %i.ack to i32
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.dm

.preheader813.i:                                  ; preds = %bb.dl
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph861.i

.lr.ph861.i:                                      ; preds = %.preheader813.i
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !60, !alias.scope !318
  %i.act = zext i16 %i.acs to i32
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.ds

bb.dm:                                            ; preds = %bb.dr, %.lr.ph858.i
  %.16857.i = phi ptr [ %i.rm, %.lr.ph858.i ], [ %i.aff, %bb.dr ] ; 9 uses
  %.11713856.i = phi i32 [ 0, %.lr.ph858.i ], [ %i.afe, %bb.dr ]
  %i.acz = load i8, ptr %.16857.i, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.ada = zext i8 %i.acz to i32
  %i.adb = shl nuw nsw i32 %i.ada, 8
  %i.adc = getelementptr inbounds nuw i8, ptr %.16857.i, i64 1 ; 3 uses
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !26, !noalias !318
  %i.ade = zext i8 %i.add to i32                  ; 2 uses
  %i.adf = or disjoint i32 %i.adb, %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %.16857.i, i64 2 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.16857.i, i64 3 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.16857.i, i64 4 ; 2 uses
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.adk = zext i8 %i.adj to i32
  %i.adl = shl nuw nsw i32 %i.adk, 8
  %i.adm = getelementptr inbounds nuw i8, ptr %.16857.i, i64 5 ; 2 uses
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !26, !noalias !318
  %i.ado = zext i8 %i.adn to i32                  ; 2 uses
  %i.adp = or disjoint i32 %i.adl, %i.ado
  %i.adq = icmp eq i32 %i.adf, %i.acl
  %.pre.i192 = load i8, ptr %i.adh, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %.pre961.i = load i8, ptr %i.adg, align 1, !tbaa !26, !noalias !318 ; 2 uses
  br i1 %i.adq, label %bb.dn, label %._crit_edge963.i

._crit_edge963.i:                                 ; preds = %bb.dm
  %.pre964.i = zext i8 %.pre.i192 to i32
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.adr = zext i8 %.pre961.i to i32
  %i.ads = shl nuw nsw i32 %i.adr, 8
  %i.adt = zext i8 %.pre.i192 to i32              ; 3 uses
  %i.adu = or disjoint i32 %i.ads, %i.adt
  %i.adv = load i16, ptr %i.acm, align 4, !tbaa !59, !alias.scope !318
  %i.adw = zext i16 %i.adv to i32
  %i.adx = icmp eq i32 %i.adu, %i.adw
  br i1 %i.adx, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.ady = load i16, ptr %i.acn, align 2, !tbaa !58, !alias.scope !318
  %i.adz = zext i16 %i.ady to i32
  %i.aea = icmp eq i32 %i.adp, %i.adz
  br i1 %i.aea, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %8 = load i16, ptr %i.aco, align 2, !tbaa !52, !alias.scope !318 ; 2 uses
  %9 = lshr i16 %8, 8
  %i.aeb = trunc nuw i16 %9 to i8
  store i8 %i.aeb, ptr %.16857.i, align 1, !tbaa !26, !noalias !318
  %10 = trunc i16 %8 to i8
  store i8 %10, ptr %i.adc, align 1, !tbaa !26, !noalias !318
  %i.aec = load i16, ptr %i.acp, align 8, !tbaa !53, !alias.scope !318 ; 2 uses
  %11 = lshr i16 %i.aec, 8
  %i.aed = trunc nuw i16 %11 to i8
  store i8 %i.aed, ptr %i.adg, align 1, !tbaa !26, !noalias !318
  %12 = trunc i16 %i.aec to i8
  store i8 %12, ptr %i.adh, align 1, !tbaa !26, !noalias !318
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn, %._crit_edge963.i
  %.pre-phi.i193 = phi i32 [ %.pre964.i, %._crit_edge963.i ], [ %i.adt, %bb.do ], [ %i.adt, %bb.dn ]
  %i.aee = lshr i32 %i.ade, %i.sa
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.aef
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !316
  %i.aei = zext i8 %i.acz to i64
  %i.aej = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %i.aei
  %i.aek = load i16, ptr %i.aej, align 2, !tbaa !27 ; 2 uses
  %i.ael = lshr i16 %i.aek, 8
  %i.aem = trunc nuw i16 %i.ael to i8
  store i8 %i.aem, ptr %.16857.i, align 1, !tbaa !26, !noalias !318
  %i.aen = trunc i16 %i.aek to i8
  store i8 %i.aen, ptr %i.adc, align 1, !tbaa !26, !noalias !318
  %i.aeo = lshr i32 %.pre-phi.i193, %i.sa
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.aep
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !316
  %i.aes = zext i8 %.pre961.i to i64
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %i.aer, i64 %i.aes
  %i.aeu = load i16, ptr %i.aet, align 2, !tbaa !27 ; 2 uses
  %i.aev = lshr i16 %i.aeu, 8
  %i.aew = trunc nuw i16 %i.aev to i8
  store i8 %i.aew, ptr %i.adg, align 1, !tbaa !26, !noalias !318
  %i.aex = trunc i16 %i.aeu to i8
  store i8 %i.aex, ptr %i.adh, align 1, !tbaa !26, !noalias !318
  %i.aey = lshr i32 %i.ado, %i.sa
  %i.aez = zext nneg i32 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.aez
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !316
  %i.afc = zext i8 %i.adj to i64
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %i.afb, i64 %i.afc
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %storemerge.in.in.i = phi ptr [ %i.afd, %bb.dq ], [ %i.acq, %bb.dp ]
  %storemerge.in.i = load i16, ptr %storemerge.in.in.i, align 2, !tbaa !27 ; 2 uses
  %storemerge775.in.i = lshr i16 %storemerge.in.i, 8
  %storemerge775.i = trunc nuw i16 %storemerge775.in.i to i8
  store i8 %storemerge775.i, ptr %i.adi, align 1, !tbaa !26, !noalias !318
  %storemerge.i194 = trunc i16 %storemerge.in.i to i8
  store i8 %storemerge.i194, ptr %i.adm, align 1, !tbaa !26, !noalias !318
  %i.afe = add nuw i32 %.11713856.i, 1            ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.16857.i, i64 6
  %exitcond948.not.i = icmp eq i32 %i.afe, %i.sd
  br i1 %exitcond948.not.i, label %png_do_compose.exit, label %bb.dm, !llvm.loop !238

bb.ds:                                            ; preds = %bb.dw, %.lr.ph861.i
  %.17860.i = phi ptr [ %i.rm, %.lr.ph861.i ], [ %i.agq, %bb.dw ] ; 8 uses
  %.12714859.i = phi i32 [ 0, %.lr.ph861.i ], [ %i.agp, %bb.dw ]
  %i.afg = load i8, ptr %.17860.i, align 1, !tbaa !26, !noalias !318
  %i.afh = zext i8 %i.afg to i32
  %i.afi = shl nuw nsw i32 %i.afh, 8
  %i.afj = getelementptr inbounds nuw i8, ptr %.17860.i, i64 1 ; 2 uses
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !26, !noalias !318
  %i.afl = zext i8 %i.afk to i32
  %i.afm = or disjoint i32 %i.afi, %i.afl
  %i.afn = getelementptr inbounds nuw i8, ptr %.17860.i, i64 2 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.17860.i, i64 3 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.17860.i, i64 4 ; 2 uses
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !26, !noalias !318
  %i.afr = zext i8 %i.afq to i32
  %i.afs = shl nuw nsw i32 %i.afr, 8
  %i.aft = getelementptr inbounds nuw i8, ptr %.17860.i, i64 5 ; 2 uses
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !26, !noalias !318
  %i.afv = zext i8 %i.afu to i32
  %i.afw = or disjoint i32 %i.afs, %i.afv
  %i.afx = icmp eq i32 %i.afm, %i.act
  br i1 %i.afx, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.afy = load i8, ptr %i.afo, align 1, !tbaa !26, !noalias !318
  %i.afz = load i8, ptr %i.afn, align 1, !tbaa !26, !noalias !318
  %i.aga = zext i8 %i.afz to i32
  %i.agb = shl nuw nsw i32 %i.aga, 8
  %i.agc = zext i8 %i.afy to i32
  %i.agd = or disjoint i32 %i.agb, %i.agc
  %i.age = load i16, ptr %i.acu, align 4, !tbaa !59, !alias.scope !318
  %i.agf = zext i16 %i.age to i32
  %i.agg = icmp eq i32 %i.agd, %i.agf
  br i1 %i.agg, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.agh = load i16, ptr %i.acv, align 2, !tbaa !58, !alias.scope !318
  %i.agi = zext i16 %i.agh to i32
  %i.agj = icmp eq i32 %i.afw, %i.agi
  br i1 %i.agj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %13 = load i16, ptr %i.acw, align 2, !tbaa !52, !alias.scope !318 ; 2 uses
  %14 = lshr i16 %13, 8
  %i.agk = trunc nuw i16 %14 to i8
  store i8 %i.agk, ptr %.17860.i, align 1, !tbaa !26, !noalias !318
  %15 = trunc i16 %13 to i8
  store i8 %15, ptr %i.afj, align 1, !tbaa !26, !noalias !318
  %i.agl = load i16, ptr %i.acx, align 8, !tbaa !53, !alias.scope !318 ; 2 uses
  %16 = lshr i16 %i.agl, 8
  %i.agm = trunc nuw i16 %16 to i8
  store i8 %i.agm, ptr %i.afn, align 1, !tbaa !26, !noalias !318
  %17 = trunc i16 %i.agl to i8
  store i8 %17, ptr %i.afo, align 1, !tbaa !26, !noalias !318
  %i.agn = load i16, ptr %i.acy, align 2, !tbaa !54, !alias.scope !318 ; 2 uses
  %18 = lshr i16 %i.agn, 8
  %19 = trunc nuw i16 %18 to i8
  store i8 %19, ptr %i.afp, align 1, !tbaa !26, !noalias !318
  %i.ago = trunc i16 %i.agn to i8
  store i8 %i.ago, ptr %i.aft, align 1, !tbaa !26, !noalias !318
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds
  %i.agp = add nuw i32 %.12714859.i, 1            ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.17860.i, i64 6
  %exitcond949.not.i = icmp eq i32 %i.agp, %i.sd
  br i1 %exitcond949.not.i, label %png_do_compose.exit, label %bb.ds, !llvm.loop !239

bb.dx:                                            ; preds = %bb.bi
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !75, !noalias !318
  %i.agt = icmp eq i8 %i.ags, 8
  %.not907.i = icmp eq i32 %i.sd, 0               ; 4 uses
  br i1 %i.agt, label %bb.dy, label %bb.ej

bb.dy:                                            ; preds = %bb.dx
  %i.agu = icmp ne ptr %i.rs, null
  %i.agv = icmp ne ptr %i.rq, null
  %or.cond.i189 = select i1 %i.agu, i1 %i.agv, i1 false
  %i.agw = icmp ne ptr %i.ro, null
  %or.cond3.i = select i1 %or.cond.i189, i1 %i.agw, i1 false
  br i1 %or.cond3.i, label %.preheader817.i, label %.preheader819.i.a

.preheader819.i.a:                                ; preds = %bb.dy
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph852.i

.lr.ph852.i:                                      ; preds = %.preheader819.i.a
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  br label %bb.ef

.preheader817.i:                                  ; preds = %bb.dy
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph855.i

.lr.ph855.i:                                      ; preds = %.preheader817.i
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 662
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ee, %.lr.ph855.i
  %.18854.i = phi ptr [ %i.rm, %.lr.ph855.i ], [ %i.aid, %bb.ee ] ; 5 uses
  %.13715853.i = phi i32 [ 0, %.lr.ph855.i ], [ %i.aic, %bb.ee ]
  %i.aha = getelementptr inbounds nuw i8, ptr %.18854.i, i64 1
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !26, !noalias !318 ; 3 uses
  switch i8 %i.ahb, label %bb.ec [
    i8 -1, label %bb.ea
    i8 0, label %bb.eb
  ]

bb.ea:                                            ; preds = %bb.dz
  %i.ahc = load i8, ptr %.18854.i, align 1, !tbaa !26, !noalias !318
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.ahd
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !26
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dz
  %i.ahg = load i16, ptr %i.agy, align 4, !tbaa !55, !alias.scope !318
  %i.ahh = trunc i16 %i.ahg to i8
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  %i.ahi = zext i8 %i.ahb to i16
  %i.ahj = load i8, ptr %.18854.i, align 1, !tbaa !26, !noalias !318
  %i.ahk = zext i8 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !26
  %i.ahn = zext i8 %i.ahm to i16
  %i.aho = mul nuw i16 %i.ahn, %i.ahi
  %i.ahp = load i16, ptr %i.agz, align 2, !tbaa !64, !alias.scope !318
  %i.ahq = xor i8 %i.ahb, -1
  %i.ahr = zext i8 %i.ahq to i16
  %i.ahs = mul i16 %i.ahp, %i.ahr
  %i.aht = add i16 %i.ahs, 128
  %i.ahu = add i16 %i.aht, %i.aho                 ; 2 uses
  %i.ahv = lshr i16 %i.ahu, 8
  %i.ahw = add i16 %i.ahv, %i.ahu
  %i.ahx = lshr i16 %i.ahw, 8                     ; 2 uses
  %i.ahy = trunc nuw i16 %i.ahx to i8
  br i1 %.not.i185, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ahz = zext nneg i16 %i.ahx to i64
  %i.aia = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ahz
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !26
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.sink.i191 = phi i8 [ %i.ahh, %bb.eb ], [ %i.ahf, %bb.ea ], [ %i.aib, %bb.ed ], [ %i.ahy, %bb.ec ]
  store i8 %.sink.i191, ptr %.18854.i, align 1, !tbaa !26, !noalias !318
  %i.aic = add nuw i32 %.13715853.i, 1            ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.18854.i, i64 2
  %exitcond947.not.i = icmp eq i32 %i.aic, %i.sd
  br i1 %exitcond947.not.i, label %png_do_compose.exit, label %bb.dz, !llvm.loop !240

bb.ef:                                            ; preds = %bb.ei, %.lr.ph852.i
  %.19851.i = phi ptr [ %i.rm, %.lr.ph852.i ], [ %i.aiw, %bb.ei ] ; 4 uses
  %.14716850.i = phi i32 [ 0, %.lr.ph852.i ], [ %i.aiv, %bb.ei ]
  %i.aie = getelementptr inbounds nuw i8, ptr %.19851.i, i64 1
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !26, !noalias !318 ; 3 uses
  switch i8 %i.aif, label %bb.eh [
    i8 0, label %bb.eg
    i8 -1, label %bb.ei
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.aig = load i16, ptr %i.agx, align 4, !tbaa !55, !alias.scope !318
  br label %.sink.split.i190

bb.eh:                                            ; preds = %bb.ef
  %i.aih = load i8, ptr %.19851.i, align 1, !tbaa !26, !noalias !318
  %i.aii = zext i8 %i.aih to i16
  %i.aij = zext i8 %i.aif to i16
  %i.aik = mul nuw i16 %i.aii, %i.aij
  %i.ail = load i16, ptr %i.agx, align 4, !tbaa !55, !alias.scope !318
  %i.aim = xor i8 %i.aif, -1
  %i.ain = zext i8 %i.aim to i16
  %i.aio = mul i16 %i.ail, %i.ain
  %i.aip = add i16 %i.aio, 128
  %i.aiq = add i16 %i.aip, %i.aik                 ; 2 uses
  %i.air = lshr i16 %i.aiq, 8
  %i.ais = add i16 %i.air, %i.aiq
  %i.ait = lshr i16 %i.ais, 8
  br label %.sink.split.i190

.sink.split.i190:                                 ; preds = %bb.eh, %bb.eg
  %.sink1036.i = phi i16 [ %i.ait, %bb.eh ], [ %i.aig, %bb.eg ]
  %i.aiu = trunc i16 %.sink1036.i to i8
  store i8 %i.aiu, ptr %.19851.i, align 1, !tbaa !26, !noalias !318
  br label %bb.ei

bb.ei:                                            ; preds = %.sink.split.i190, %bb.ef
  %i.aiv = add nuw i32 %.14716850.i, 1            ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.19851.i, i64 2
  %exitcond946.not.i = icmp eq i32 %i.aiv, %i.sd
  br i1 %exitcond946.not.i, label %png_do_compose.exit, label %bb.ef, !llvm.loop !241

bb.ej:                                            ; preds = %bb.dx
  %i.aix = icmp ne ptr %i.ru, null
  %i.aiy = icmp ne ptr %i.rw, null
  %or.cond5.i = select i1 %i.aix, i1 %i.aiy, i1 false
  %i.aiz = icmp ne ptr %i.ry, null
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.aiz, i1 false
  br i1 %or.cond7.i, label %.preheader821.i, label %.preheader823.i.a

.preheader823.i.a:                                ; preds = %bb.ej
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph846.i

.lr.ph846.i:                                      ; preds = %.preheader823.i.a
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  br label %bb.er

.preheader821.i:                                  ; preds = %bb.ej
  br i1 %.not907.i, label %png_do_compose.exit, label %.lr.ph849.i

.lr.ph849.i:                                      ; preds = %.preheader821.i
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 662
  br label %bb.ek

bb.ek:                                            ; preds = %bb.eq, %.lr.ph849.i
  %.20848.i = phi ptr [ %i.rm, %.lr.ph849.i ], [ %i.all, %bb.eq ] ; 11 uses
  %.15717847.i = phi i32 [ 0, %.lr.ph849.i ], [ %i.alk, %bb.eq ]
  %i.ajd = getelementptr inbounds nuw i8, ptr %.20848.i, i64 2
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !26, !noalias !318
  %i.ajf = zext i8 %i.aje to i32
  %i.ajg = shl nuw nsw i32 %i.ajf, 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %.20848.i, i64 3
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !26, !noalias !318
  %i.ajj = zext i8 %i.aji to i32
  %i.ajk = or disjoint i32 %i.ajg, %i.ajj         ; 3 uses
  %trunc792.i = trunc nuw i32 %i.ajk to i16
  switch i16 %trunc792.i, label %bb.en [
    i16 -1, label %bb.el
    i16 0, label %bb.em
  ]

bb.el:                                            ; preds = %bb.ek
  %i.ajl = getelementptr inbounds nuw i8, ptr %.20848.i, i64 1 ; 2 uses
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !26, !noalias !318
  %i.ajn = zext i8 %i.ajm to i32
  %i.ajo = lshr i32 %i.ajn, %i.sa
  %i.ajp = zext nneg i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.ajp
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !316
  %i.ajs = load i8, ptr %.20848.i, align 1, !tbaa !26, !noalias !318
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.ajt
  %i.ajv = load i16, ptr %i.aju, align 2, !tbaa !27 ; 2 uses
  %i.ajw = lshr i16 %i.ajv, 8
  %i.ajx = trunc nuw i16 %i.ajw to i8
  store i8 %i.ajx, ptr %.20848.i, align 1, !tbaa !26, !noalias !318
  %i.ajy = trunc i16 %i.ajv to i8
  store i8 %i.ajy, ptr %i.ajl, align 1, !tbaa !26, !noalias !318
  br label %bb.eq

bb.em:                                            ; preds = %bb.ek
  %20 = load i16, ptr %i.ajb, align 4, !tbaa !55, !alias.scope !318 ; 2 uses
  %21 = lshr i16 %20, 8
  %22 = trunc nuw i16 %21 to i8
  store i8 %22, ptr %.20848.i, align 1, !tbaa !26, !noalias !318
  %i.ajz = trunc i16 %20 to i8
  %i.aka = getelementptr inbounds nuw i8, ptr %.20848.i, i64 1
  store i8 %i.ajz, ptr %i.aka, align 1, !tbaa !26, !noalias !318
  br label %bb.eq

bb.en:                                            ; preds = %bb.ek
  %i.akb = getelementptr inbounds nuw i8, ptr %.20848.i, i64 1 ; 2 uses
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !26, !noalias !318
  %i.akd = zext i8 %i.akc to i32
  %i.ake = lshr i32 %i.akd, %i.sa
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.akf
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !316
  %i.aki = load i8, ptr %.20848.i, align 1, !tbaa !26, !noalias !318
  %i.akj = zext i8 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr %i.akh, i64 %i.akj
  %i.akl = load i16, ptr %i.akk, align 2, !tbaa !27
  %i.akm = zext i16 %i.akl to i32
  %i.akn = mul nuw i32 %i.ajk, %i.akm
  %i.ako = load i16, ptr %i.ajc, align 2, !tbaa !64, !alias.scope !318
  %i.akp = zext i16 %i.ako to i32
  %i.akq = xor i32 %i.ajk, 65535
  %i.akr = mul nuw i32 %i.akq, %i.akp
  %i.aks = add nuw i32 %i.akn, 32768
  %i.akt = add i32 %i.aks, %i.akr                 ; 2 uses
  %i.aku = lshr i32 %i.akt, 16
  %i.akv = add i32 %i.aku, %i.akt                 ; 2 uses
  %i.akw = lshr i32 %i.akv, 16                    ; 2 uses
  br i1 %.not.i185, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.akx = and i32 %i.akw, 255
  %i.aky = lshr i32 %i.akx, %i.sa
  %i.akz = zext nneg i32 %i.aky to i64
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.akz
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !316
  %i.alc = lshr i32 %i.akv, 24
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %i.ald
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !27
  %i.alg = zext i16 %i.alf to i32
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0739.i = phi i32 [ %i.alg, %bb.eo ], [ %i.akw, %bb.en ] ; 2 uses
  %i.alh = lshr i32 %.0739.i, 8
  %i.ali = trunc nuw i32 %i.alh to i8
  store i8 %i.ali, ptr %.20848.i, align 1, !tbaa !26, !noalias !318
  %i.alj = trunc i32 %.0739.i to i8
  store i8 %i.alj, ptr %i.akb, align 1, !tbaa !26, !noalias !318
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.em, %bb.el
  %i.alk = add nuw i32 %.15717847.i, 1            ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.20848.i, i64 4
  %exitcond945.not.i = icmp eq i32 %i.alk, %i.sd
  br i1 %exitcond945.not.i, label %png_do_compose.exit, label %bb.ek, !llvm.loop !242

bb.er:                                            ; preds = %bb.eu, %.lr.ph846.i
  %.21845.i = phi ptr [ %i.rm, %.lr.ph846.i ], [ %i.amr, %bb.eu ] ; 8 uses
  %.16718844.i = phi i32 [ 0, %.lr.ph846.i ], [ %i.amq, %bb.eu ]
  %i.alm = getelementptr inbounds nuw i8, ptr %.21845.i, i64 2
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !26, !noalias !318
  %i.alo = zext i8 %i.aln to i32
  %i.alp = shl nuw nsw i32 %i.alo, 8
  %i.alq = getelementptr inbounds nuw i8, ptr %.21845.i, i64 3
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !26, !noalias !318
  %i.als = zext i8 %i.alr to i32
  %i.alt = or disjoint i32 %i.alp, %i.als         ; 3 uses
  %trunc791.i = trunc nuw i32 %i.alt to i16
  switch i16 %trunc791.i, label %bb.et [
    i16 0, label %bb.es
    i16 -1, label %bb.eu
  ]

bb.es:                                            ; preds = %bb.er
  %23 = load i16, ptr %i.aja, align 4, !tbaa !55, !alias.scope !318 ; 2 uses
  %24 = lshr i16 %23, 8
  %25 = trunc nuw i16 %24 to i8
  store i8 %25, ptr %.21845.i, align 1, !tbaa !26, !noalias !318
  %i.alu = trunc i16 %23 to i8
  %i.alv = getelementptr inbounds nuw i8, ptr %.21845.i, i64 1
  store i8 %i.alu, ptr %i.alv, align 1, !tbaa !26, !noalias !318
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.alw = load i8, ptr %.21845.i, align 1, !tbaa !26, !noalias !318
  %i.alx = zext i8 %i.alw to i32
  %i.aly = shl nuw nsw i32 %i.alx, 8
  %i.alz = getelementptr inbounds nuw i8, ptr %.21845.i, i64 1 ; 2 uses
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !26, !noalias !318
  %i.amb = zext i8 %i.ama to i32
  %i.amc = or disjoint i32 %i.aly, %i.amb
  %i.amd = mul nuw i32 %i.amc, %i.alt
  %i.ame = load i16, ptr %i.aja, align 4, !tbaa !55, !alias.scope !318
  %i.amf = zext i16 %i.ame to i32
  %i.amg = xor i32 %i.alt, 65535
  %i.amh = mul nuw i32 %i.amg, %i.amf
  %i.ami = add nuw i32 %i.amh, 32768
  %i.amj = add i32 %i.ami, %i.amd                 ; 2 uses
  %i.amk = lshr i32 %i.amj, 16
  %i.aml = add i32 %i.amk, %i.amj                 ; 2 uses
  %i.amm = lshr i32 %i.aml, 16
  %i.amn = lshr i32 %i.aml, 24
  %i.amo = trunc nuw i32 %i.amn to i8
  store i8 %i.amo, ptr %.21845.i, align 1, !tbaa !26, !noalias !318
  %i.amp = trunc i32 %i.amm to i8
  store i8 %i.amp, ptr %i.alz, align 1, !tbaa !26, !noalias !318
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er
  %i.amq = add nuw i32 %.16718844.i, 1            ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.21845.i, i64 4
  %exitcond944.not.i = icmp eq i32 %i.amq, %i.sd
  br i1 %exitcond944.not.i, label %png_do_compose.exit, label %bb.er, !llvm.loop !243

bb.ev:                                            ; preds = %bb.bi
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !75, !noalias !318
  %i.amu = icmp eq i8 %i.amt, 8
  %.not903.i = icmp eq i32 %i.sd, 0               ; 4 uses
  br i1 %i.amu, label %bb.ew, label %bb.fm

bb.ew:                                            ; preds = %bb.ev
  %i.amv = icmp ne ptr %i.rs, null
  %i.amw = icmp ne ptr %i.rq, null
  %or.cond9.i = select i1 %i.amv, i1 %i.amw, i1 false
  %i.amx = icmp ne ptr %i.ro, null
  %or.cond11.i = select i1 %or.cond9.i, i1 %i.amx, i1 false
  br i1 %or.cond11.i, label %.preheader825.i, label %.preheader827.i.a

.preheader827.i.a:                                ; preds = %bb.ew
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph840.i

.lr.ph840.i:                                      ; preds = %.preheader827.i.a
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  br label %bb.fi

.preheader825.i:                                  ; preds = %bb.ew
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph843.i

.lr.ph843.i:                                      ; preds = %.preheader825.i
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 658
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fh, %.lr.ph843.i
  %.22842.i = phi ptr [ %i.rm, %.lr.ph843.i ], [ %i.aqq, %bb.fh ] ; 13 uses
  %.17719841.i = phi i32 [ 0, %.lr.ph843.i ], [ %i.aqp, %bb.fh ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.22842.i, i64 3
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !26, !noalias !318 ; 3 uses
  switch i8 %i.ani, label %bb.fa [
    i8 -1, label %bb.ey
    i8 0, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.anj = load i8, ptr %.22842.i, align 1, !tbaa !26, !noalias !318
  %i.ank = zext i8 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !26
  store i8 %i.anm, ptr %.22842.i, align 1, !tbaa !26, !noalias !318
  %i.ann = getelementptr inbounds nuw i8, ptr %.22842.i, i64 1 ; 2 uses
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !26, !noalias !318
  %i.anp = zext i8 %i.ano to i64
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !26
  store i8 %i.anr, ptr %i.ann, align 1, !tbaa !26, !noalias !318
  %i.ans = getelementptr inbounds nuw i8, ptr %.22842.i, i64 2 ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !26, !noalias !318
  %i.anu = zext i8 %i.ant to i64
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.anu
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !26
  store i8 %i.anw, ptr %i.ans, align 1, !tbaa !26, !noalias !318
  br label %bb.fh

bb.ez:                                            ; preds = %bb.ex
  %i.anx = load i16, ptr %i.anb, align 2, !tbaa !52, !alias.scope !318
  %i.any = trunc i16 %i.anx to i8
  store i8 %i.any, ptr %.22842.i, align 1, !tbaa !26, !noalias !318
  %i.anz = load i16, ptr %i.anc, align 8, !tbaa !53, !alias.scope !318
  %i.aoa = trunc i16 %i.anz to i8
  %i.aob = getelementptr inbounds nuw i8, ptr %.22842.i, i64 1
  store i8 %i.aoa, ptr %i.aob, align 1, !tbaa !26, !noalias !318
  %i.aoc = load i16, ptr %i.and, align 2, !tbaa !54, !alias.scope !318
  %i.aod = trunc i16 %i.aoc to i8
  %i.aoe = getelementptr inbounds nuw i8, ptr %.22842.i, i64 2
  store i8 %i.aod, ptr %i.aoe, align 1, !tbaa !26, !noalias !318
  br label %bb.fh

bb.fa:                                            ; preds = %bb.ex
  %i.aof = load i8, ptr %.22842.i, align 1, !tbaa !26, !noalias !318
  %i.aog = zext i8 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.aog
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !26
  %i.aoj = zext i8 %i.aoi to i32
  %i.aok = zext i8 %i.ani to i32                  ; 3 uses
  %i.aol = mul nuw nsw i32 %i.aoj, %i.aok
  %i.aom = load i16, ptr %i.ane, align 8, !tbaa !65, !alias.scope !318
  %i.aon = zext i16 %i.aom to i32
  %i.aoo = xor i8 %i.ani, -1
  %i.aop = zext i8 %i.aoo to i32                  ; 3 uses
  %i.aoq = mul nuw nsw i32 %i.aon, %i.aop
  %i.aor = add nuw nsw i32 %i.aol, 128
  %i.aos = add nuw nsw i32 %i.aor, %i.aoq         ; 2 uses
  %i.aot = lshr i32 %i.aos, 8
  %i.aou = and i32 %i.aot, 255
  %i.aov = add nuw nsw i32 %i.aou, %i.aos
  %i.aow = lshr i32 %i.aov, 8                     ; 2 uses
  %i.aox = trunc i32 %i.aow to i8
  br i1 %.not.i185, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %.mask.i = and i32 %i.aow, 255
  %i.aoy = zext nneg i32 %.mask.i to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.aoy
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !26
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.0736.i = phi i8 [ %i.apa, %bb.fb ], [ %i.aox, %bb.fa ]
  store i8 %.0736.i, ptr %.22842.i, align 1, !tbaa !26, !noalias !318
  %i.apb = getelementptr inbounds nuw i8, ptr %.22842.i, i64 1 ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !26, !noalias !318
  %i.apd = zext i8 %i.apc to i64
  %i.ape = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.apd
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !26
  %i.apg = zext i8 %i.apf to i32
  %i.aph = mul nuw nsw i32 %i.apg, %i.aok
  %i.api = load i16, ptr %i.anf, align 2, !tbaa !66, !alias.scope !318
  %i.apj = zext i16 %i.api to i32
  %i.apk = mul nuw nsw i32 %i.apj, %i.aop
  %i.apl = add nuw nsw i32 %i.aph, 128
  %i.apm = add nuw nsw i32 %i.apl, %i.apk         ; 2 uses
  %i.apn = lshr i32 %i.apm, 8
  %i.apo = and i32 %i.apn, 255
  %i.app = add nuw nsw i32 %i.apo, %i.apm
  %i.apq = lshr i32 %i.app, 8                     ; 2 uses
  %i.apr = trunc i32 %i.apq to i8
  br i1 %.not.i185, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %.mask769.i = and i32 %i.apq, 255
  %i.aps = zext nneg i32 %.mask769.i to i64
  %i.apt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.aps
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !26
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.1737.i = phi i8 [ %i.apu, %bb.fd ], [ %i.apr, %bb.fc ]
  store i8 %.1737.i, ptr %i.apb, align 1, !tbaa !26, !noalias !318
  %i.apv = getelementptr inbounds nuw i8, ptr %.22842.i, i64 2 ; 2 uses
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !26, !noalias !318
  %i.apx = zext i8 %i.apw to i64
  %i.apy = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !26
  %i.aqa = zext i8 %i.apz to i32
  %i.aqb = mul nuw nsw i32 %i.aqa, %i.aok
  %i.aqc = load i16, ptr %i.ang, align 4, !tbaa !67, !alias.scope !318
  %i.aqd = zext i16 %i.aqc to i32
  %i.aqe = mul nuw nsw i32 %i.aqd, %i.aop
  %i.aqf = add nuw nsw i32 %i.aqb, 128
  %i.aqg = add nuw nsw i32 %i.aqf, %i.aqe         ; 2 uses
  %i.aqh = lshr i32 %i.aqg, 8
  %i.aqi = and i32 %i.aqh, 255
  %i.aqj = add nuw nsw i32 %i.aqi, %i.aqg
  %i.aqk = lshr i32 %i.aqj, 8                     ; 2 uses
  %i.aql = trunc i32 %i.aqk to i8
  br i1 %.not.i185, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %.mask770.i = and i32 %i.aqk, 255
  %i.aqm = zext nneg i32 %.mask770.i to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.aqm
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !26
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.2738.i = phi i8 [ %i.aqo, %bb.ff ], [ %i.aql, %bb.fe ]
  store i8 %.2738.i, ptr %i.apv, align 1, !tbaa !26, !noalias !318
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ez, %bb.ey
  %i.aqp = add nuw i32 %.17719841.i, 1            ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.22842.i, i64 4
  %exitcond943.not.i = icmp eq i32 %i.aqp, %i.sd
  br i1 %exitcond943.not.i, label %png_do_compose.exit, label %bb.ex, !llvm.loop !244

bb.fi:                                            ; preds = %bb.fl, %.lr.ph840.i
  %.23839.i = phi ptr [ %i.rm, %.lr.ph840.i ], [ %i.asu, %bb.fl ] ; 9 uses
  %.18720838.i = phi i32 [ 0, %.lr.ph840.i ], [ %i.ast, %bb.fl ]
  %i.aqr = getelementptr inbounds nuw i8, ptr %.23839.i, i64 3
  %i.aqs = load i8, ptr %i.aqr, align 1, !tbaa !26, !noalias !318 ; 3 uses
  switch i8 %i.aqs, label %bb.fk [
    i8 0, label %bb.fj
    i8 -1, label %bb.fl
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.aqt = load i16, ptr %i.amy, align 2, !tbaa !52, !alias.scope !318
  %i.aqu = trunc i16 %i.aqt to i8
  store i8 %i.aqu, ptr %.23839.i, align 1, !tbaa !26, !noalias !318
  %i.aqv = load i16, ptr %i.amz, align 8, !tbaa !53, !alias.scope !318
  %i.aqw = trunc i16 %i.aqv to i8
  %i.aqx = getelementptr inbounds nuw i8, ptr %.23839.i, i64 1
  store i8 %i.aqw, ptr %i.aqx, align 1, !tbaa !26, !noalias !318
  %i.aqy = load i16, ptr %i.ana, align 2, !tbaa !54, !alias.scope !318
  %i.aqz = trunc i16 %i.aqy to i8
  %i.ara = getelementptr inbounds nuw i8, ptr %.23839.i, i64 2
  store i8 %i.aqz, ptr %i.ara, align 1, !tbaa !26, !noalias !318
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.arb = load i8, ptr %.23839.i, align 1, !tbaa !26, !noalias !318
  %i.arc = zext i8 %i.arb to i32
  %i.ard = zext i8 %i.aqs to i32                  ; 3 uses
  %i.are = mul nuw nsw i32 %i.arc, %i.ard
  %i.arf = load i16, ptr %i.amy, align 2, !tbaa !52, !alias.scope !318
  %i.arg = zext i16 %i.arf to i32
  %i.arh = xor i8 %i.aqs, -1
  %i.ari = zext i8 %i.arh to i32                  ; 3 uses
  %i.arj = mul nuw nsw i32 %i.arg, %i.ari
  %i.ark = add nuw nsw i32 %i.are, 128
  %i.arl = add nuw nsw i32 %i.ark, %i.arj         ; 2 uses
  %i.arm = lshr i32 %i.arl, 8
  %i.arn = and i32 %i.arm, 255
  %i.aro = add nuw nsw i32 %i.arn, %i.arl
  %i.arp = lshr i32 %i.aro, 8
  %i.arq = trunc i32 %i.arp to i8
  store i8 %i.arq, ptr %.23839.i, align 1, !tbaa !26, !noalias !318
  %i.arr = getelementptr inbounds nuw i8, ptr %.23839.i, i64 1 ; 2 uses
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !26, !noalias !318
  %i.art = zext i8 %i.ars to i32
  %i.aru = mul nuw nsw i32 %i.art, %i.ard
  %i.arv = load i16, ptr %i.amz, align 8, !tbaa !53, !alias.scope !318
  %i.arw = zext i16 %i.arv to i32
  %i.arx = mul nuw nsw i32 %i.arw, %i.ari
  %i.ary = add nuw nsw i32 %i.aru, 128
  %i.arz = add nuw nsw i32 %i.ary, %i.arx         ; 2 uses
  %i.asa = lshr i32 %i.arz, 8
  %i.asb = and i32 %i.asa, 255
  %i.asc = add nuw nsw i32 %i.asb, %i.arz
  %i.asd = lshr i32 %i.asc, 8
  %i.ase = trunc i32 %i.asd to i8
  store i8 %i.ase, ptr %i.arr, align 1, !tbaa !26, !noalias !318
  %i.asf = getelementptr inbounds nuw i8, ptr %.23839.i, i64 2 ; 2 uses
  %i.asg = load i8, ptr %i.asf, align 1, !tbaa !26, !noalias !318
  %i.ash = zext i8 %i.asg to i32
  %i.asi = mul nuw nsw i32 %i.ash, %i.ard
  %i.asj = load i16, ptr %i.ana, align 2, !tbaa !54, !alias.scope !318
  %i.ask = zext i16 %i.asj to i32
  %i.asl = mul nuw nsw i32 %i.ask, %i.ari
  %i.asm = add nuw nsw i32 %i.asi, 128
  %i.asn = add nuw nsw i32 %i.asm, %i.asl         ; 2 uses
  %i.aso = lshr i32 %i.asn, 8
  %i.asp = and i32 %i.aso, 255
  %i.asq = add nuw nsw i32 %i.asp, %i.asn
  %i.asr = lshr i32 %i.asq, 8
  %i.ass = trunc i32 %i.asr to i8
  store i8 %i.ass, ptr %i.asf, align 1, !tbaa !26, !noalias !318
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi
  %i.ast = add nuw i32 %.18720838.i, 1            ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.23839.i, i64 4
  %exitcond942.not.i = icmp eq i32 %i.ast, %i.sd
  br i1 %exitcond942.not.i, label %png_do_compose.exit, label %bb.fi, !llvm.loop !245

bb.fm:                                            ; preds = %bb.ev
  %i.asv = icmp ne ptr %i.ru, null
  %i.asw = icmp ne ptr %i.rw, null
  %or.cond13.i = select i1 %i.asv, i1 %i.asw, i1 false
  %i.asx = icmp ne ptr %i.ry, null
  %or.cond15.i = select i1 %or.cond13.i, i1 %i.asx, i1 false
  br i1 %or.cond15.i, label %.preheader829.i, label %.preheader831.i

.preheader831.i:                                  ; preds = %bb.fm
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.preheader831.i
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  br label %bb.fy

.preheader829.i:                                  ; preds = %bb.fm
  br i1 %.not903.i, label %png_do_compose.exit, label %.lr.ph837.i

.lr.ph837.i:                                      ; preds = %.preheader829.i
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.ate = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 658
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fx, %.lr.ph837.i
  %.24836.i = phi ptr [ %i.rm, %.lr.ph837.i ], [ %i.azs, %bb.fx ] ; 23 uses
  %.19721835.i = phi i32 [ 0, %.lr.ph837.i ], [ %i.azr, %bb.fx ]
  %i.ath = getelementptr inbounds nuw i8, ptr %.24836.i, i64 6
  %i.ati = load i8, ptr %i.ath, align 1, !tbaa !26, !noalias !318
  %i.atj = zext i8 %i.ati to i32
  %i.atk = shl nuw nsw i32 %i.atj, 8
  %i.atl = getelementptr inbounds nuw i8, ptr %.24836.i, i64 7
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !26, !noalias !318
  %i.atn = zext i8 %i.atm to i32
  %i.ato = or disjoint i32 %i.atk, %i.atn         ; 5 uses
  %trunc790.i = trunc nuw i32 %i.ato to i16
  switch i16 %trunc790.i, label %bb.fq [
    i16 -1, label %bb.fo
    i16 0, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.atp = getelementptr inbounds nuw i8, ptr %.24836.i, i64 1 ; 2 uses
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !26, !noalias !318
  %i.atr = zext i8 %i.atq to i32
  %i.ats = lshr i32 %i.atr, %i.sa
  %i.att = zext nneg i32 %i.ats to i64
  %i.atu = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.att
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !316
  %i.atw = load i8, ptr %.24836.i, align 1, !tbaa !26, !noalias !318
  %i.atx = zext i8 %i.atw to i64
  %i.aty = getelementptr inbounds nuw [2 x i8], ptr %i.atv, i64 %i.atx
  %i.atz = load i16, ptr %i.aty, align 2, !tbaa !27 ; 2 uses
  %i.aua = lshr i16 %i.atz, 8
  %i.aub = trunc nuw i16 %i.aua to i8
  store i8 %i.aub, ptr %.24836.i, align 1, !tbaa !26, !noalias !318
  %i.auc = trunc i16 %i.atz to i8
  store i8 %i.auc, ptr %i.atp, align 1, !tbaa !26, !noalias !318
  %i.aud = getelementptr inbounds nuw i8, ptr %.24836.i, i64 3 ; 2 uses
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !26, !noalias !318
  %i.auf = zext i8 %i.aue to i32
  %i.aug = lshr i32 %i.auf, %i.sa
  %i.auh = zext nneg i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.auh
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !316
  %i.auk = getelementptr inbounds nuw i8, ptr %.24836.i, i64 2 ; 2 uses
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !26, !noalias !318
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.auj, i64 %i.aum
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !27 ; 2 uses
  %i.aup = lshr i16 %i.auo, 8
  %i.auq = trunc nuw i16 %i.aup to i8
  store i8 %i.auq, ptr %i.auk, align 1, !tbaa !26, !noalias !318
  %i.aur = trunc i16 %i.auo to i8
  store i8 %i.aur, ptr %i.aud, align 1, !tbaa !26, !noalias !318
  %i.aus = getelementptr inbounds nuw i8, ptr %.24836.i, i64 5 ; 2 uses
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !26, !noalias !318
  %i.auu = zext i8 %i.aut to i32
  %i.auv = lshr i32 %i.auu, %i.sa
  %i.auw = zext nneg i32 %i.auv to i64
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.auw
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !316
  %i.auz = getelementptr inbounds nuw i8, ptr %.24836.i, i64 4 ; 2 uses
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !26, !noalias !318
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.auy, i64 %i.avb
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !27 ; 2 uses
  %i.ave = lshr i16 %i.avd, 8
  %i.avf = trunc nuw i16 %i.ave to i8
  store i8 %i.avf, ptr %i.auz, align 1, !tbaa !26, !noalias !318
  %i.avg = trunc i16 %i.avd to i8
  store i8 %i.avg, ptr %i.aus, align 1, !tbaa !26, !noalias !318
  br label %bb.fx

bb.fp:                                            ; preds = %bb.fn
  %i.avh = load i16, ptr %i.atb, align 2, !tbaa !52, !alias.scope !318 ; 2 uses
  %26 = lshr i16 %i.avh, 8
  %27 = trunc nuw i16 %26 to i8
  store i8 %27, ptr %.24836.i, align 1, !tbaa !26, !noalias !318
  %28 = trunc i16 %i.avh to i8
  %i.avi = getelementptr inbounds nuw i8, ptr %.24836.i, i64 1
  store i8 %28, ptr %i.avi, align 1, !tbaa !26, !noalias !318
  %i.avj = load i16, ptr %i.atc, align 8, !tbaa !53, !alias.scope !318 ; 2 uses
  %29 = lshr i16 %i.avj, 8
  %i.avk = trunc nuw i16 %29 to i8
  %i.avl = getelementptr inbounds nuw i8, ptr %.24836.i, i64 2
  store i8 %i.avk, ptr %i.avl, align 1, !tbaa !26, !noalias !318
  %30 = trunc i16 %i.avj to i8
  %i.avm = getelementptr inbounds nuw i8, ptr %.24836.i, i64 3
  store i8 %30, ptr %i.avm, align 1, !tbaa !26, !noalias !318
  %i.avn = load i16, ptr %i.atd, align 2, !tbaa !54, !alias.scope !318 ; 2 uses
  %31 = lshr i16 %i.avn, 8
  %32 = trunc nuw i16 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %.24836.i, i64 4
  store i8 %32, ptr %33, align 1, !tbaa !26, !noalias !318
  %i.avo = trunc i16 %i.avn to i8
  %i.avp = getelementptr inbounds nuw i8, ptr %.24836.i, i64 5
  store i8 %i.avo, ptr %i.avp, align 1, !tbaa !26, !noalias !318
  br label %bb.fx

bb.fq:                                            ; preds = %bb.fn
  %i.avq = getelementptr inbounds nuw i8, ptr %.24836.i, i64 1 ; 2 uses
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !26, !noalias !318
  %i.avs = zext i8 %i.avr to i32
  %i.avt = lshr i32 %i.avs, %i.sa
  %i.avu = zext nneg i32 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.avu
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !316
  %i.avx = load i8, ptr %.24836.i, align 1, !tbaa !26, !noalias !318
  %i.avy = zext i8 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [2 x i8], ptr %i.avw, i64 %i.avy
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !27
  %i.awb = zext i16 %i.awa to i32
  %i.awc = mul nuw i32 %i.ato, %i.awb
  %i.awd = load i16, ptr %i.ate, align 8, !tbaa !65, !alias.scope !318
  %i.awe = zext i16 %i.awd to i32
  %i.awf = xor i32 %i.ato, 65535                  ; 3 uses
  %i.awg = mul nuw i32 %i.awf, %i.awe
  %i.awh = add nuw i32 %i.awc, 32768
  %i.awi = add i32 %i.awh, %i.awg                 ; 2 uses
  %i.awj = lshr i32 %i.awi, 16
  %i.awk = add i32 %i.awj, %i.awi                 ; 2 uses
  %i.awl = lshr i32 %i.awk, 16                    ; 2 uses
  br i1 %.not.i185, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.awm = and i32 %i.awl, 255
  %i.awn = lshr i32 %i.awm, %i.sa
  %i.awo = zext nneg i32 %i.awn to i64
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.awo
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !316
  %i.awr = lshr i32 %i.awk, 24
  %i.aws = zext nneg i32 %i.awr to i64
  %i.awt = getelementptr inbounds nuw [2 x i8], ptr %i.awq, i64 %i.aws
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !27
  %i.awv = zext i16 %i.awu to i32
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.0723.i = phi i32 [ %i.awv, %bb.fr ], [ %i.awl, %bb.fq ] ; 2 uses
  %i.aww = lshr i32 %.0723.i, 8
  %i.awx = trunc nuw i32 %i.aww to i8
  store i8 %i.awx, ptr %.24836.i, align 1, !tbaa !26, !noalias !318
  %i.awy = trunc i32 %.0723.i to i8
  store i8 %i.awy, ptr %i.avq, align 1, !tbaa !26, !noalias !318
  %i.awz = getelementptr inbounds nuw i8, ptr %.24836.i, i64 3 ; 2 uses
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !26, !noalias !318
  %i.axb = zext i8 %i.axa to i32
  %i.axc = lshr i32 %i.axb, %i.sa
  %i.axd = zext nneg i32 %i.axc to i64
  %i.axe = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.axd
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !316
  %i.axg = getelementptr inbounds nuw i8, ptr %.24836.i, i64 2 ; 2 uses
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !26, !noalias !318
  %i.axi = zext i8 %i.axh to i64
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %i.axf, i64 %i.axi
  %i.axk = load i16, ptr %i.axj, align 2, !tbaa !27
  %i.axl = zext i16 %i.axk to i32
  %i.axm = mul nuw i32 %i.ato, %i.axl
  %i.axn = load i16, ptr %i.atf, align 2, !tbaa !66, !alias.scope !318
  %i.axo = zext i16 %i.axn to i32
  %i.axp = mul nuw i32 %i.awf, %i.axo
  %i.axq = add nuw i32 %i.axm, 32768
  %i.axr = add i32 %i.axq, %i.axp                 ; 2 uses
  %i.axs = lshr i32 %i.axr, 16
  %i.axt = add i32 %i.axs, %i.axr                 ; 2 uses
  %i.axu = lshr i32 %i.axt, 16                    ; 2 uses
  br i1 %.not.i185, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.axv = and i32 %i.axu, 255
  %i.axw = lshr i32 %i.axv, %i.sa
  %i.axx = zext nneg i32 %i.axw to i64
  %i.axy = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.axx
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !316
  %i.aya = lshr i32 %i.axt, 24
  %i.ayb = zext nneg i32 %i.aya to i64
  %i.ayc = getelementptr inbounds nuw [2 x i8], ptr %i.axz, i64 %i.ayb
  %i.ayd = load i16, ptr %i.ayc, align 2, !tbaa !27
  %i.aye = zext i16 %i.ayd to i32
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.1724.i = phi i32 [ %i.aye, %bb.ft ], [ %i.axu, %bb.fs ] ; 2 uses
  %i.ayf = lshr i32 %.1724.i, 8
  %i.ayg = trunc nuw i32 %i.ayf to i8
  store i8 %i.ayg, ptr %i.axg, align 1, !tbaa !26, !noalias !318
  %i.ayh = trunc i32 %.1724.i to i8
  store i8 %i.ayh, ptr %i.awz, align 1, !tbaa !26, !noalias !318
  %i.ayi = getelementptr inbounds nuw i8, ptr %.24836.i, i64 5 ; 2 uses
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !26, !noalias !318
  %i.ayk = zext i8 %i.ayj to i32
  %i.ayl = lshr i32 %i.ayk, %i.sa
  %i.aym = zext nneg i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.aym
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !316
  %i.ayp = getelementptr inbounds nuw i8, ptr %.24836.i, i64 4 ; 2 uses
  %i.ayq = load i8, ptr %i.ayp, align 1, !tbaa !26, !noalias !318
  %i.ayr = zext i8 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw [2 x i8], ptr %i.ayo, i64 %i.ayr
  %i.ayt = load i16, ptr %i.ays, align 2, !tbaa !27
  %i.ayu = zext i16 %i.ayt to i32
  %i.ayv = mul nuw i32 %i.ato, %i.ayu
  %i.ayw = load i16, ptr %i.atg, align 4, !tbaa !67, !alias.scope !318
  %i.ayx = zext i16 %i.ayw to i32
  %i.ayy = mul nuw i32 %i.awf, %i.ayx
  %i.ayz = add nuw i32 %i.ayv, 32768
  %i.aza = add i32 %i.ayz, %i.ayy                 ; 2 uses
  %i.azb = lshr i32 %i.aza, 16
  %i.azc = add i32 %i.azb, %i.aza                 ; 2 uses
  %i.azd = lshr i32 %i.azc, 16                    ; 2 uses
  br i1 %.not.i185, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.aze = and i32 %i.azd, 255
  %i.azf = lshr i32 %i.aze, %i.sa
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.azg
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !316
  %i.azj = lshr i32 %i.azc, 24
  %i.azk = zext nneg i32 %i.azj to i64
  %i.azl = getelementptr inbounds nuw [2 x i8], ptr %i.azi, i64 %i.azk
  %i.azm = load i16, ptr %i.azl, align 2, !tbaa !27
  %i.azn = zext i16 %i.azm to i32
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.2725.i = phi i32 [ %i.azn, %bb.fv ], [ %i.azd, %bb.fu ] ; 2 uses
  %i.azo = lshr i32 %.2725.i, 8
  %i.azp = trunc nuw i32 %i.azo to i8
  store i8 %i.azp, ptr %i.ayp, align 1, !tbaa !26, !noalias !318
  %i.azq = trunc i32 %.2725.i to i8
  store i8 %i.azq, ptr %i.ayi, align 1, !tbaa !26, !noalias !318
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fp, %bb.fo
  %i.azr = add nuw i32 %.19721835.i, 1            ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %.24836.i, i64 8
  %exitcond941.not.i = icmp eq i32 %i.azr, %i.sd
  br i1 %exitcond941.not.i, label %png_do_compose.exit, label %bb.fn, !llvm.loop !246

bb.fy:                                            ; preds = %bb.gb, %.lr.ph.i186
  %.25834.i = phi ptr [ %i.rm, %.lr.ph.i186 ], [ %i.bct, %bb.gb ] ; 16 uses
  %.20722833.i = phi i32 [ 0, %.lr.ph.i186 ], [ %i.bcs, %bb.gb ]
  %i.azt = getelementptr inbounds nuw i8, ptr %.25834.i, i64 6
  %i.azu = load i8, ptr %i.azt, align 1, !tbaa !26, !noalias !318
  %i.azv = zext i8 %i.azu to i32
  %i.azw = shl nuw nsw i32 %i.azv, 8
  %i.azx = getelementptr inbounds nuw i8, ptr %.25834.i, i64 7
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !26, !noalias !318
  %i.azz = zext i8 %i.azy to i32
  %i.baa = or disjoint i32 %i.azw, %i.azz         ; 5 uses
  %trunc.i = trunc nuw i32 %i.baa to i16
  switch i16 %trunc.i, label %bb.ga [
    i16 0, label %bb.fz
    i16 -1, label %bb.gb
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.bab = load i16, ptr %i.asy, align 2, !tbaa !52, !alias.scope !318 ; 2 uses
  %34 = lshr i16 %i.bab, 8
  %35 = trunc nuw i16 %34 to i8
  store i8 %35, ptr %.25834.i, align 1, !tbaa !26, !noalias !318
  %36 = trunc i16 %i.bab to i8
  %i.bac = getelementptr inbounds nuw i8, ptr %.25834.i, i64 1
  store i8 %36, ptr %i.bac, align 1, !tbaa !26, !noalias !318
  %i.bad = load i16, ptr %i.asz, align 8, !tbaa !53, !alias.scope !318 ; 2 uses
  %37 = lshr i16 %i.bad, 8
  %i.bae = trunc nuw i16 %37 to i8
  %i.baf = getelementptr inbounds nuw i8, ptr %.25834.i, i64 2
  store i8 %i.bae, ptr %i.baf, align 1, !tbaa !26, !noalias !318
  %38 = trunc i16 %i.bad to i8
  %i.bag = getelementptr inbounds nuw i8, ptr %.25834.i, i64 3
  store i8 %38, ptr %i.bag, align 1, !tbaa !26, !noalias !318
  %i.bah = load i16, ptr %i.ata, align 2, !tbaa !54, !alias.scope !318 ; 2 uses
  %39 = lshr i16 %i.bah, 8
  %40 = trunc nuw i16 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %.25834.i, i64 4
  store i8 %40, ptr %41, align 1, !tbaa !26, !noalias !318
  %i.bai = trunc i16 %i.bah to i8
  %i.baj = getelementptr inbounds nuw i8, ptr %.25834.i, i64 5
  store i8 %i.bai, ptr %i.baj, align 1, !tbaa !26, !noalias !318
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.bak = load i8, ptr %.25834.i, align 1, !tbaa !26, !noalias !318
  %i.bal = zext i8 %i.bak to i32
  %i.bam = shl nuw nsw i32 %i.bal, 8
  %i.ban = getelementptr inbounds nuw i8, ptr %.25834.i, i64 1 ; 2 uses
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !26, !noalias !318
  %i.bap = zext i8 %i.bao to i32
  %i.baq = or disjoint i32 %i.bam, %i.bap
  %i.bar = getelementptr inbounds nuw i8, ptr %.25834.i, i64 2 ; 2 uses
  %i.bas = load i8, ptr %i.bar, align 1, !tbaa !26, !noalias !318
  %i.bat = zext i8 %i.bas to i32
  %i.bau = shl nuw nsw i32 %i.bat, 8
  %i.bav = getelementptr inbounds nuw i8, ptr %.25834.i, i64 3 ; 2 uses
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !26, !noalias !318
  %i.bax = zext i8 %i.baw to i32
  %i.bay = or disjoint i32 %i.bau, %i.bax
  %i.baz = getelementptr inbounds nuw i8, ptr %.25834.i, i64 4 ; 2 uses
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !26, !noalias !318
  %i.bbb = zext i8 %i.bba to i32
  %i.bbc = shl nuw nsw i32 %i.bbb, 8
  %i.bbd = getelementptr inbounds nuw i8, ptr %.25834.i, i64 5 ; 2 uses
  %i.bbe = load i8, ptr %i.bbd, align 1, !tbaa !26, !noalias !318
  %i.bbf = zext i8 %i.bbe to i32
  %i.bbg = or disjoint i32 %i.bbc, %i.bbf
  %i.bbh = mul nuw i32 %i.baq, %i.baa
  %i.bbi = load i16, ptr %i.asy, align 2, !tbaa !52, !alias.scope !318
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = xor i32 %i.baa, 65535                  ; 3 uses
  %i.bbl = mul nuw i32 %i.bbk, %i.bbj
  %i.bbm = add nuw i32 %i.bbh, 32768
  %i.bbn = add i32 %i.bbm, %i.bbl                 ; 2 uses
  %i.bbo = lshr i32 %i.bbn, 16
  %i.bbp = add i32 %i.bbo, %i.bbn                 ; 2 uses
  %i.bbq = lshr i32 %i.bbp, 16
  %i.bbr = lshr i32 %i.bbp, 24
  %i.bbs = trunc nuw i32 %i.bbr to i8
  store i8 %i.bbs, ptr %.25834.i, align 1, !tbaa !26, !noalias !318
  %i.bbt = trunc i32 %i.bbq to i8
  store i8 %i.bbt, ptr %i.ban, align 1, !tbaa !26, !noalias !318
  %i.bbu = mul nuw i32 %i.bay, %i.baa
  %i.bbv = load i16, ptr %i.asz, align 8, !tbaa !53, !alias.scope !318
  %i.bbw = zext i16 %i.bbv to i32
  %i.bbx = mul nuw i32 %i.bbk, %i.bbw
  %i.bby = add nuw i32 %i.bbu, 32768
  %i.bbz = add i32 %i.bby, %i.bbx                 ; 2 uses
  %i.bca = lshr i32 %i.bbz, 16
  %i.bcb = add i32 %i.bca, %i.bbz                 ; 2 uses
  %i.bcc = lshr i32 %i.bcb, 16
  %i.bcd = lshr i32 %i.bcb, 24
  %i.bce = trunc nuw i32 %i.bcd to i8
  store i8 %i.bce, ptr %i.bar, align 1, !tbaa !26, !noalias !318
  %i.bcf = trunc i32 %i.bcc to i8
  store i8 %i.bcf, ptr %i.bav, align 1, !tbaa !26, !noalias !318
  %i.bcg = mul nuw i32 %i.bbg, %i.baa
  %i.bch = load i16, ptr %i.ata, align 2, !tbaa !54, !alias.scope !318
  %i.bci = zext i16 %i.bch to i32
  %i.bcj = mul nuw i32 %i.bbk, %i.bci
  %i.bck = add nuw i32 %i.bcg, 32768
  %i.bcl = add i32 %i.bck, %i.bcj                 ; 2 uses
  %i.bcm = lshr i32 %i.bcl, 16
  %i.bcn = add i32 %i.bcm, %i.bcl                 ; 2 uses
  %i.bco = lshr i32 %i.bcn, 16
  %i.bcp = lshr i32 %i.bcn, 24
  %i.bcq = trunc nuw i32 %i.bcp to i8
  store i8 %i.bcq, ptr %i.baz, align 1, !tbaa !26, !noalias !318
  %i.bcr = trunc i32 %i.bco to i8
  store i8 %i.bcr, ptr %i.bbd, align 1, !tbaa !26, !noalias !318
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy
  %i.bcs = add nuw i32 %.20722833.i, 1            ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %.25834.i, i64 8
  %exitcond.not.i187 = icmp eq i32 %i.bcs, %i.sd
  br i1 %exitcond.not.i187, label %png_do_compose.exit, label %bb.fy, !llvm.loop !247

png_do_compose.exit.loopexit691.unr-lcssa:        ; preds = %bb.cp
  %lcmp.mod743.not = icmp eq i32 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %png_do_compose.exit, label %.epil.preheader741

.epil.preheader741:                               ; preds = %png_do_compose.exit.loopexit691.unr-lcssa, %.lr.ph879.i
  %.11878.i.epil.init = phi ptr [ %i.rm, %.lr.ph879.i ], [ %i.xx, %png_do_compose.exit.loopexit691.unr-lcssa ] ; 2 uses
  %lcmp.mod744 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod744)
  %i.bcu = load i8, ptr %.11878.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bcv = zext i8 %i.bcu to i16
  %i.bcw = icmp eq i16 %i.wr, %i.bcv
  br i1 %i.bcw, label %bb.gc, label %png_do_compose.exit

bb.gc:                                            ; preds = %.epil.preheader741
  %i.bcx = load i16, ptr %i.ws, align 4, !tbaa !55, !alias.scope !318
  %i.bcy = trunc i16 %i.bcx to i8
  store i8 %i.bcy, ptr %.11878.i.epil.init, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit.loopexit692.unr-lcssa:        ; preds = %bb.ck
  %lcmp.mod737.not = icmp eq i32 %xtraiter736, 0
  br i1 %lcmp.mod737.not, label %png_do_compose.exit, label %.epil.preheader735

.epil.preheader735:                               ; preds = %png_do_compose.exit.loopexit692.unr-lcssa, %.lr.ph876.i
  %.10875.i.epil.init = phi ptr [ %i.rm, %.lr.ph876.i ], [ %i.xl, %png_do_compose.exit.loopexit692.unr-lcssa ] ; 2 uses
  %lcmp.mod738 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod738)
  %i.bcz = load i8, ptr %.10875.i.epil.init, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.bda = zext i8 %i.bcz to i16
  %i.bdb = icmp eq i16 %i.wn, %i.bda
  br i1 %i.bdb, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.epil.preheader735
  %i.bdc = zext i8 %i.bcz to i64
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.bdc
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !26
  br label %png_do_compose.exit.loopexit692.epilog-lcssa

bb.ge:                                            ; preds = %.epil.preheader735
  %i.bdf = load i16, ptr %i.wo, align 4, !tbaa !55, !alias.scope !318
  %i.bdg = trunc i16 %i.bdf to i8
  br label %png_do_compose.exit.loopexit692.epilog-lcssa

png_do_compose.exit.loopexit692.epilog-lcssa:     ; preds = %bb.ge, %bb.gd
  %storemerge781.i.epil = phi i8 [ %i.bde, %bb.gd ], [ %i.bdg, %bb.ge ]
  store i8 %storemerge781.i.epil, ptr %.10875.i.epil.init, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit.loopexit693.unr-lcssa:        ; preds = %bb.cy
  %lcmp.mod731.not = icmp eq i32 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %png_do_compose.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %png_do_compose.exit.loopexit693.unr-lcssa, %.lr.ph873.i
  %.13872.i.epil.init = phi ptr [ %i.rm, %.lr.ph873.i ], [ %i.zq, %png_do_compose.exit.loopexit693.unr-lcssa ] ; 3 uses
  %lcmp.mod732 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod732)
  %i.bdh = load i8, ptr %.13872.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bdi = zext i8 %i.bdh to i32
  %i.bdj = shl nuw nsw i32 %i.bdi, 8
  %i.bdk = getelementptr inbounds nuw i8, ptr %.13872.i.epil.init, i64 1 ; 2 uses
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !26, !noalias !318
  %i.bdm = zext i8 %i.bdl to i32
  %i.bdn = or disjoint i32 %i.bdj, %i.bdm
  %i.bdo = icmp eq i32 %i.bdn, %i.ye
  br i1 %i.bdo, label %bb.gf, label %png_do_compose.exit

bb.gf:                                            ; preds = %.epil.preheader
  %42 = load i16, ptr %i.yf, align 4, !tbaa !55, !alias.scope !318 ; 2 uses
  %43 = lshr i16 %42, 8
  %44 = trunc nuw i16 %43 to i8
  store i8 %44, ptr %.13872.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bdp = trunc i16 %42 to i8
  store i8 %i.bdp, ptr %i.bdk, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit:                              ; preds = %bb.gb, %bb.fx, %bb.fl, %bb.fh, %bb.eu, %bb.eq, %bb.ei, %bb.ee, %bb.dr, %bb.dw, %bb.df, %bb.dk, %bb.ct, %png_do_compose.exit.loopexit693.unr-lcssa, %bb.gf, %.epil.preheader, %png_do_compose.exit.loopexit692.epilog-lcssa, %png_do_compose.exit.loopexit692.unr-lcssa, %png_do_compose.exit.loopexit691.unr-lcssa, %bb.gc, %.epil.preheader741, %bb.bz, %bb.cc, %bb.br, %bb.bu, %bb.bm, %.preheader829.i, %.preheader831.i, %.preheader825.i, %.preheader827.i.a, %.preheader821.i, %.preheader823.i.a, %.preheader817.i, %.preheader819.i.a, %.preheader813.i, %.preheader815.i.a, %.preheader809.i, %.preheader811.i.a, %.preheader805.i, %.preheader807.i.a, %.preheader801.i, %.preheader803.i.a, %.preheader797.i, %.preheader799.i.a, %.preheader793.i, %.preheader795.i.a, %.preheader.i199, %.split.i, %bb.bj, %bb.bi, %bb.bh
  %i.bdq = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.bdr = and i32 %i.bdq, 6299648
  %or.cond179 = icmp eq i32 %i.bdr, 8192
  br i1 %or.cond179, label %bb.gg, label %png_do_gamma.exit

bb.gg:                                            ; preds = %png_do_compose.exit
  %i.bds = and i32 %i.bdq, 128
  %.not147 = icmp eq i32 %i.bds, 0
  br i1 %.not147, label %._crit_edge, label %bb.gh

._crit_edge:                                      ; preds = %bb.gg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 623
  %.pre384 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !48
  br label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.bdt = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bdu = load i16, ptr %i.bdt, align 8, !tbaa !51
  %.not148 = icmp eq i16 %i.bdu, 0
  br i1 %.not148, label %bb.gi, label %png_do_gamma.exit

bb.gi:                                            ; preds = %bb.gh
  %i.bdv = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bdw = load i8, ptr %i.bdv, align 1, !tbaa !48 ; 2 uses
  %i.bdx = and i8 %i.bdw, 4
  %.not149 = icmp eq i8 %i.bdx, 0
  br i1 %.not149, label %bb.gj, label %png_do_gamma.exit

bb.gj:                                            ; preds = %._crit_edge, %bb.gi
  %i.bdy = phi i8 [ %.pre384, %._crit_edge ], [ %i.bdw, %bb.gi ]
  %.not150 = icmp eq i8 %i.bdy, 3
  br i1 %.not150, label %png_do_gamma.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bdz = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 1 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !61, !alias.scope !319 ; 39 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !314, !alias.scope !319 ; 13 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.beg = load i32, ptr %i.bef, align 8, !tbaa !315, !alias.scope !319 ; 12 uses
  %i.beh = load i32, ptr %1, align 8, !tbaa !74, !noalias !319 ; 30 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !75, !noalias !319 ; 7 uses
  %i.bek = icmp ult i8 %i.bej, 9
  %i.bel = icmp ne ptr %i.bec, null
  %or.cond.i201 = select i1 %i.bek, i1 %i.bel, i1 false
  br i1 %or.cond.i201, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bem = icmp eq i8 %i.bej, 16
  %i.ben = icmp ne ptr %i.bee, null
  %or.cond3.i202 = select i1 %i.bem, i1 %i.ben, i1 false
  br i1 %or.cond3.i202, label %bb.gm, label %png_do_gamma.exit

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.beo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bep = load i8, ptr %i.beo, align 8, !tbaa !73, !noalias !319
  switch i8 %i.bep, label %png_do_gamma.exit [
    i8 2, label %bb.gn
    i8 6, label %bb.go
    i8 4, label %bb.gp
    i8 0, label %bb.gq
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.beq = icmp eq i8 %i.bej, 8
  %.not265.i = icmp eq i32 %i.beh, 0              ; 2 uses
  br i1 %i.beq, label %.preheader.i210, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph253.i

.preheader.i210:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph256.i211.preheader

.lr.ph256.i211.preheader:                         ; preds = %.preheader.i210
  %xtraiter781 = and i32 %i.beh, 1
  %i.ber = icmp eq i32 %i.beh, 1
  br i1 %i.ber, label %.lr.ph256.i211.epil.preheader, label %.lr.ph256.i211.preheader.new

.lr.ph256.i211.preheader.new:                     ; preds = %.lr.ph256.i211.preheader
  %unroll_iter785 = and i32 %i.beh, -2
  br label %.lr.ph256.i211

.lr.ph256.i211:                                   ; preds = %.lr.ph256.i211, %.lr.ph256.i211.preheader.new
  %.0255.i = phi ptr [ %i.bea, %.lr.ph256.i211.preheader.new ], [ %i.bfv, %.lr.ph256.i211 ] ; 8 uses
  %niter786 = phi i32 [ 0, %.lr.ph256.i211.preheader.new ], [ %niter786.next.1, %.lr.ph256.i211 ]
  %i.bes = load i8, ptr %.0255.i, align 1, !tbaa !26, !noalias !319
  %i.bet = zext i8 %i.bes to i64
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bet
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !26, !noalias !319
  store i8 %i.bev, ptr %.0255.i, align 1, !tbaa !26, !noalias !319
  %i.bew = getelementptr inbounds nuw i8, ptr %.0255.i, i64 1 ; 2 uses
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !26, !noalias !319
  %i.bey = zext i8 %i.bex to i64
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bey
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !26, !noalias !319
  store i8 %i.bfa, ptr %i.bew, align 1, !tbaa !26, !noalias !319
  %i.bfb = getelementptr inbounds nuw i8, ptr %.0255.i, i64 2 ; 2 uses
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !26, !noalias !319
  %i.bfd = zext i8 %i.bfc to i64
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bfd
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !26, !noalias !319
  store i8 %i.bff, ptr %i.bfb, align 1, !tbaa !26, !noalias !319
  %i.bfg = getelementptr inbounds nuw i8, ptr %.0255.i, i64 3 ; 2 uses
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !26, !noalias !319
  %i.bfi = zext i8 %i.bfh to i64
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bfi
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !26, !noalias !319
  store i8 %i.bfk, ptr %i.bfg, align 1, !tbaa !26, !noalias !319
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0255.i, i64 4 ; 2 uses
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !26, !noalias !319
  %i.bfn = zext i8 %i.bfm to i64
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bfn
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !26, !noalias !319
  store i8 %i.bfp, ptr %i.bfl, align 1, !tbaa !26, !noalias !319
  %i.bfq = getelementptr inbounds nuw i8, ptr %.0255.i, i64 5 ; 2 uses
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !26, !noalias !319
  %i.bfs = zext i8 %i.bfr to i64
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !26, !noalias !319
  store i8 %i.bfu, ptr %i.bfq, align 1, !tbaa !26, !noalias !319
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0255.i, i64 6 ; 2 uses
  %niter786.next.1 = add nuw i32 %niter786, 2     ; 2 uses
  %niter786.ncmp.1 = icmp eq i32 %niter786.next.1, %unroll_iter785
  br i1 %niter786.ncmp.1, label %png_do_gamma.exit.loopexit.unr-lcssa, label %.lr.ph256.i211, !llvm.loop !250

.lr.ph253.i:                                      ; preds = %.preheader210.i, %.lr.ph253.i
  %.1252.i = phi ptr [ %i.bho, %.lr.ph253.i ], [ %i.bea, %.preheader210.i ] ; 8 uses
  %.1200251.i = phi i32 [ %i.bhp, %.lr.ph253.i ], [ 0, %.preheader210.i ]
  %i.bfw = getelementptr inbounds nuw i8, ptr %.1252.i, i64 1 ; 2 uses
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !26, !noalias !319
  %i.bfy = zext i8 %i.bfx to i32
  %i.bfz = lshr i32 %i.bfy, %i.beg
  %i.bga = zext nneg i32 %i.bfz to i64
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bee, i64 %i.bga
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !316, !noalias !319
  %i.bgd = load i8, ptr %.1252.i, align 1, !tbaa !26, !noalias !319
  %i.bge = zext i8 %i.bgd to i64
  %i.bgf = getelementptr inbounds nuw [2 x i8], ptr %i.bgc, i64 %i.bge
  %i.bgg = load i16, ptr %i.bgf, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bgh = lshr i16 %i.bgg, 8
  %i.bgi = trunc nuw i16 %i.bgh to i8
  store i8 %i.bgi, ptr %.1252.i, align 1, !tbaa !26, !noalias !319
  %i.bgj = trunc i16 %i.bgg to i8
  store i8 %i.bgj, ptr %i.bfw, align 1, !tbaa !26, !noalias !319
  %i.bgk = getelementptr inbounds nuw i8, ptr %.1252.i, i64 2 ; 2 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %.1252.i, i64 3 ; 2 uses
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !26, !noalias !319
  %i.bgn = zext i8 %i.bgm to i32
  %i.bgo = lshr i32 %i.bgn, %i.beg
  %i.bgp = zext nneg i32 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw [8 x i8], ptr %i.bee, i64 %i.bgp
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !316, !noalias !319
  %i.bgs = load i8, ptr %i.bgk, align 1, !tbaa !26, !noalias !319
  %i.bgt = zext i8 %i.bgs to i64
  %i.bgu = getelementptr inbounds nuw [2 x i8], ptr %i.bgr, i64 %i.bgt
  %i.bgv = load i16, ptr %i.bgu, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bgw = lshr i16 %i.bgv, 8
  %i.bgx = trunc nuw i16 %i.bgw to i8
  store i8 %i.bgx, ptr %i.bgk, align 1, !tbaa !26, !noalias !319
  %i.bgy = trunc i16 %i.bgv to i8
  store i8 %i.bgy, ptr %i.bgl, align 1, !tbaa !26, !noalias !319
  %i.bgz = getelementptr inbounds nuw i8, ptr %.1252.i, i64 4 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.1252.i, i64 5 ; 2 uses
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !26, !noalias !319
  %i.bhc = zext i8 %i.bhb to i32
  %i.bhd = lshr i32 %i.bhc, %i.beg
  %i.bhe = zext nneg i32 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw [8 x i8], ptr %i.bee, i64 %i.bhe
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !316, !noalias !319
  %i.bhh = load i8, ptr %i.bgz, align 1, !tbaa !26, !noalias !319
  %i.bhi = zext i8 %i.bhh to i64
  %i.bhj = getelementptr inbounds nuw [2 x i8], ptr %i.bhg, i64 %i.bhi
  %i.bhk = load i16, ptr %i.bhj, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bhl = lshr i16 %i.bhk, 8
  %i.bhm = trunc nuw i16 %i.bhl to i8
  store i8 %i.bhm, ptr %i.bgz, align 1, !tbaa !26, !noalias !319
  %i.bhn = trunc i16 %i.bhk to i8
  store i8 %i.bhn, ptr %i.bha, align 1, !tbaa !26, !noalias !319
  %i.bho = getelementptr inbounds nuw i8, ptr %.1252.i, i64 6
  %i.bhp = add nuw i32 %.1200251.i, 1             ; 2 uses
  %exitcond279.not.i = icmp eq i32 %i.bhp, %i.beh
  br i1 %exitcond279.not.i, label %png_do_gamma.exit, label %.lr.ph253.i, !llvm.loop !251

bb.go:                                            ; preds = %bb.gm
  %i.bhq = icmp eq i8 %i.bej, 8
  %.not263.i = icmp eq i32 %i.beh, 0              ; 2 uses
  br i1 %i.bhq, label %.preheader212.i, label %.preheader214.i

.preheader214.i:                                  ; preds = %bb.go
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph247.i

end_hunk_0
