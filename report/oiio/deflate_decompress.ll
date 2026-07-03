inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@deflate_decompress_default:bb.a
  %.28.4 = phi i64 [ %i.ut, %bb.cm ], [ %.28.3, %bb.cn ] ; 3 uses
  %.23.4 = phi ptr [ %i.uo, %bb.cm ], [ %.23.3, %bb.cn ] ; 5 uses
  %i.uw = add i32 %.23672, 40                     ; 2 uses
  %i.ux = and i32 %i.uw, 255                      ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, 56
  br i1 %i.uy, label %.lr.ph1004.5, label %.loopexit894

.lr.ph1004.5:                                     ; preds = %bb.co
  %.not771.5 = icmp eq ptr %.23.4, %i.e
  br i1 %.not771.5, label %bb.cq, label %bb.cp, !prof !12

bb.cp:                                            ; preds = %.lr.ph1004.5
  %i.uz = getelementptr inbounds nuw i8, ptr %.23.4, i64 1
  %i.va = load i8, ptr %.23.4, align 1, !tbaa !13
  %i.vb = zext i8 %i.va to i64
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = shl nuw nsw i64 %i.vb, %i.vc
  %i.ve = or i64 %i.vd, %.28.4
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph1004.5
  %i.vf = add i64 %.18710.4, 1                    ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8
  br i1 %i.vg, label %.thread836, label %bb.cr, !prof !12

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.18710.5 = phi i64 [ %.18710.4, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %.28.5 = phi i64 [ %i.ve, %bb.cp ], [ %.28.4, %bb.cq ] ; 3 uses
  %.23.5 = phi ptr [ %i.uz, %bb.cp ], [ %.23.4, %bb.cq ] ; 5 uses
  %i.vh = add i32 %.23672, 48                     ; 2 uses
  %i.vi = and i32 %i.vh, 255                      ; 2 uses
  %i.vj = icmp samesign ult i32 %i.vi, 56
  br i1 %i.vj, label %.lr.ph1004.6, label %.loopexit894

.lr.ph1004.6:                                     ; preds = %bb.cr
  %.not771.6 = icmp eq ptr %.23.5, %i.e
  br i1 %.not771.6, label %bb.ct, label %bb.cs, !prof !12

bb.cs:                                            ; preds = %.lr.ph1004.6
  %i.vk = getelementptr inbounds nuw i8, ptr %.23.5, i64 1
  %i.vl = load i8, ptr %.23.5, align 1, !tbaa !13
  %i.vm = zext i8 %i.vl to i64
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = shl nuw nsw i64 %i.vm, %i.vn
  %i.vp = or i64 %i.vo, %.28.5
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph1004.6
  %i.vq = add i64 %.18710.5, 1                    ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 8
  br i1 %i.vr, label %.thread836, label %bb.cu, !prof !12

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.18710.6 = phi i64 [ %.18710.5, %bb.cs ], [ %i.vq, %bb.ct ]
  %.28.6 = phi i64 [ %i.vp, %bb.cs ], [ %.28.5, %bb.ct ]
  %.23.6 = phi ptr [ %i.vk, %bb.cs ], [ %.23.5, %bb.ct ]
  %i.vs = add i32 %.23672, 56
  br label %.loopexit894

.loopexit894:                                     ; preds = %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %.preheader, %bb.bz
  %.19711 = phi i64 [ %.16708, %bb.bz ], [ %.16708, %.preheader ], [ %.18710, %bb.cc ], [ %.18710.1, %bb.cf ], [ %.18710.2, %bb.ci ], [ %.18710.3, %bb.cl ], [ %.18710.4, %bb.co ], [ %.18710.5, %bb.cr ], [ %.18710.6, %bb.cu ] ; 2 uses
  %.25674 = phi i32 [ %i.sv, %bb.bz ], [ %.23672, %.preheader ], [ %i.te, %bb.cc ], [ %i.tp, %bb.cf ], [ %i.ua, %bb.ci ], [ %i.ul, %bb.cl ], [ %i.uw, %bb.co ], [ %i.vh, %bb.cr ], [ %i.vs, %bb.cu ]
  %.29 = phi i64 [ %i.so, %bb.bz ], [ %.26640, %.preheader ], [ %.28, %bb.cc ], [ %.28.1, %bb.cf ], [ %.28.2, %bb.ci ], [ %.28.3, %bb.cl ], [ %.28.4, %bb.co ], [ %.28.5, %bb.cr ], [ %.28.6, %bb.cu ] ; 3 uses
  %.24 = phi ptr [ %i.su, %bb.bz ], [ %.21, %.preheader ], [ %.23, %bb.cc ], [ %.23.1, %bb.cf ], [ %.23.2, %bb.ci ], [ %.23.3, %bb.cl ], [ %.23.4, %bb.co ], [ %.23.5, %bb.cr ], [ %.23.6, %bb.cu ] ; 2 uses
  %i.vt = and i64 %.29, %i.kf
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !13 ; 6 uses
  %i.vw = and i32 %i.vv, 255
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = lshr i64 %.29, %i.vx                    ; 4 uses
  %i.vz = sub i32 %.25674, %i.vv                  ; 2 uses
  %i.wa = and i32 %i.vv, 16384
  %.not772 = icmp eq i32 %i.wa, 0
  br i1 %.not772, label %bb.cw, label %bb.cv, !prof !11

bb.cv:                                            ; preds = %.loopexit894
  %i.wb = lshr i32 %i.vv, 16
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = lshr i32 %i.vv, 8
  %i.we = and i32 %i.wd, 63
  %i.wf = zext nneg i32 %i.we to i64
  %notmask773 = shl nsw i64 -1, %i.wf
  %i.wg = xor i64 %notmask773, -1
  %i.wh = and i64 %i.vy, %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wc
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !13 ; 3 uses
  %i.wl = and i32 %i.wk, 255
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = lshr i64 %i.vy, %i.wm
  %i.wo = sub i32 %i.vz, %i.wk
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.5690 = phi i32 [ %i.wk, %bb.cv ], [ %i.vv, %.loopexit894 ] ; 5 uses
  %.26675 = phi i32 [ %i.wo, %bb.cv ], [ %i.vz, %.loopexit894 ] ; 4 uses
  %.2643 = phi i64 [ %i.vy, %bb.cv ], [ %.29, %.loopexit894 ]
  %.30 = phi i64 [ %i.wn, %bb.cv ], [ %i.vy, %.loopexit894 ] ; 5 uses
  %i.wp = lshr i32 %.5690, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5690, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = icmp eq ptr %.6596, %i.a
  br i1 %i.wq, label %.thread836, label %bb.cy, !prof !12

bb.cy:                                            ; preds = %bb.cx
  %i.wr = trunc i32 %i.wp to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.6596, i64 1
  store i8 %i.wr, ptr %.6596, align 1, !tbaa !13
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wt = and i32 %.5690, 8192
  %.not775 = icmp eq i32 %i.wt, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !11

bb.da:                                            ; preds = %bb.cz
  %i.wu = and i32 %.5690, 255
  %i.wv = zext nneg i32 %i.wu to i64
  %notmask776 = shl nsw i64 -1, %i.wv
  %i.ww = xor i64 %notmask776, -1
  %i.wx = and i64 %.2643, %i.ww
  %i.wy = lshr i32 %.5690, 8
  %i.wz = and i32 %i.wy, 223
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %i.wx, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = add i32 %i.wp, %i.xc
  %i.xe = zext i32 %i.xd to i64                   ; 3 uses
  %i.xf = ptrtoint ptr %.6596 to i64              ; 5 uses
  %i.xg = sub i64 %i.k, %i.xf
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.thread836, label %bb.db, !prof !12

bb.db:                                            ; preds = %bb.da
  %i.xi = and i64 %.30, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !3  ; 4 uses
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !11

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26675, -8
  %i.xo = lshr i32 %i.xk, 16
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i32 %i.xk, 8
  %i.xr = and i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %notmask778 = shl nsw i64 -1, %i.xs
  %i.xt = xor i64 %notmask778, -1
  %i.xu = and i64 %i.xm, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.xp
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !3
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.6691 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %.27676 = phi i32 [ %i.xn, %bb.dc ], [ %.26675, %bb.db ]
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %i.xy = lshr i32 %.6691, 16
  %i.xz = and i32 %.6691, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6691, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27676, %.6691                 ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !12

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6596, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6596, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !13
  %i.ys = getelementptr inbounds nuw i8, ptr %.6596, i64 1
  store i8 %i.yr, ptr %.6596, align 1, !tbaa !13
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !13
  %i.yv = getelementptr inbounds nuw i8, ptr %.6596, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !13
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 4
  %diff.check = icmp ult i32 %i.yi, 32
  %or.cond1159 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1159, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1145 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1145, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.yz, 28
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.za = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zb = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1146 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.zc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load1147 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !13
  %i.zd = getelementptr i8, ptr %next.gep1146, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1146, align 1, !tbaa !13
  store <16 x i8> %wide.load1147, ptr %i.zd, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ze = icmp eq i64 %index.next, %n.vec
  br i1 %i.ze, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.23672.be = phi i32 [ %.26675, %bb.cy ], [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %i.yk, %vec.epilog.scalar.ph ]
  %.26640.be = phi i64 [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.6596.be = phi ptr [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.yp, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1150 = and i64 %i.yz, -4                  ; 4 uses
  %i.zf = getelementptr i8, ptr %i.yt, i64 %n.vec1150
  %i.zg = getelementptr i8, ptr %i.yv, i64 %n.vec1150
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1152 = getelementptr i8, ptr %i.yt, i64 %index1151
  %next.gep1153 = getelementptr i8, ptr %i.yv, i64 %index1151
  %wide.load1154 = load <4 x i8>, ptr %next.gep1152, align 1, !tbaa !13
  store <4 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !13
  %index.next1155 = add nuw i64 %index1151, 4     ; 2 uses
  %i.zh = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.zh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1156 = icmp eq i64 %i.yz, %n.vec1150
  br i1 %cmp.n1156, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.za, %vec.epilog.iter.check ], [ %i.zf, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zb, %vec.epilog.iter.check ], [ %i.zg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zi, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zj = load i8, ptr %.0578, align 1, !tbaa !13
  %i.zk = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zj, ptr %.0, align 1, !tbaa !13
  %i.zl = icmp ult ptr %i.zk, %i.yp
  br i1 %i.zl, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !36

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.21713 = phi i64 [ %.19711, %bb.cz ], [ 0, %bb.ay ], [ %.15707, %bb.bi ], [ %.15707, %bb.bl ] ; 3 uses
  %.29678 = phi i32 [ %.26675, %bb.cz ], [ 0, %bb.ay ], [ %.17666, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20634, %bb.bi ], [ %i.mw, %bb.bl ]
  %.26 = phi ptr [ %.24, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16, %bb.bi ], [ %.16, %bb.bl ] ; 2 uses
  %.8598 = phi ptr [ %.6596, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3593, %bb.bi ], [ %.3593, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zm = lshr i32 %.29678, 3
  %i.zn = and i32 %i.zm, 31
  %i.zo = zext nneg i32 %i.zn to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21713, %i.zo
  br i1 %.not781, label %.thread836, label %bb.df, !prof !12

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21713, %i.zo
  %i.zp = getelementptr inbounds i8, ptr %.26, i64 %.neg783
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %1 to i64
  %i.zs = sub i64 %i.zq, %i.zr
  store i64 %i.zs, ptr %5, align 8, !tbaa !37
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zt = ptrtoint ptr %.8598 to i64
  %i.zu = sub i64 %i.zt, %i.q
  store i64 %i.zu, ptr %6, align 8, !tbaa !37
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8598, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_bmi2(ptr noalias nofree noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0692 = phi i64 [ 0, %bb.a ], [ %.21713, %.thread869 ] ; 3 uses
  %.0649 = phi i32 [ 0, %bb.a ], [ %.29678, %.thread869 ] ; 6 uses
  %.0614 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0599 = phi ptr [ %1, %bb.a ], [ %.26, %.thread869 ] ; 5 uses
  %.0590 = phi ptr [ %3, %bb.a ], [ %.8598, %.thread869 ] ; 6 uses
  %i.r = ptrtoint ptr %.0599 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !11

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0649, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0599, align 1
  %i.w = and i32 %.0649, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0614
  %i.aa = getelementptr inbounds nuw i8, ptr %.0599, i64 7
  %i.ab = lshr i32 %.0649, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0649, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1600953 = phi ptr [ %.2601, %bb.f ], [ %.0599, %.preheader915 ] ; 4 uses
  %.1615952 = phi i64 [ %.2616, %bb.f ], [ %.0614, %.preheader915 ] ; 2 uses
  %.1650951 = phi i32 [ %i.aq, %bb.f ], [ %.0649, %.preheader915 ]
  %.1693950 = phi i64 [ %.2694, %bb.f ], [ %.0692, %.preheader915 ] ; 2 uses
  %.not = icmp eq ptr %.1600953, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1600953, i64 1
  %i.aj = load i8, ptr %.1600953, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
end_hunk_0
begin_hunk_1_@deflate_decompress_bmi2:bb.a
  %.28.4 = phi i64 [ %i.ut, %bb.cm ], [ %.28.3, %bb.cn ] ; 3 uses
  %.23.4 = phi ptr [ %i.uo, %bb.cm ], [ %.23.3, %bb.cn ] ; 5 uses
  %i.uw = add i32 %.23672, 40                     ; 2 uses
  %i.ux = and i32 %i.uw, 255                      ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, 56
  br i1 %i.uy, label %.lr.ph1004.5, label %.loopexit894

.lr.ph1004.5:                                     ; preds = %bb.co
  %.not771.5 = icmp eq ptr %.23.4, %i.e
  br i1 %.not771.5, label %bb.cq, label %bb.cp, !prof !12

bb.cp:                                            ; preds = %.lr.ph1004.5
  %i.uz = getelementptr inbounds nuw i8, ptr %.23.4, i64 1
  %i.va = load i8, ptr %.23.4, align 1, !tbaa !13
  %i.vb = zext i8 %i.va to i64
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = shl nuw nsw i64 %i.vb, %i.vc
  %i.ve = or i64 %i.vd, %.28.4
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph1004.5
  %i.vf = add i64 %.18710.4, 1                    ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8
  br i1 %i.vg, label %.thread836, label %bb.cr, !prof !12

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.18710.5 = phi i64 [ %.18710.4, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %.28.5 = phi i64 [ %i.ve, %bb.cp ], [ %.28.4, %bb.cq ] ; 3 uses
  %.23.5 = phi ptr [ %i.uz, %bb.cp ], [ %.23.4, %bb.cq ] ; 5 uses
  %i.vh = add i32 %.23672, 48                     ; 2 uses
  %i.vi = and i32 %i.vh, 255                      ; 2 uses
  %i.vj = icmp samesign ult i32 %i.vi, 56
  br i1 %i.vj, label %.lr.ph1004.6, label %.loopexit894

.lr.ph1004.6:                                     ; preds = %bb.cr
  %.not771.6 = icmp eq ptr %.23.5, %i.e
  br i1 %.not771.6, label %bb.ct, label %bb.cs, !prof !12

bb.cs:                                            ; preds = %.lr.ph1004.6
  %i.vk = getelementptr inbounds nuw i8, ptr %.23.5, i64 1
  %i.vl = load i8, ptr %.23.5, align 1, !tbaa !13
  %i.vm = zext i8 %i.vl to i64
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = shl nuw nsw i64 %i.vm, %i.vn
  %i.vp = or i64 %i.vo, %.28.5
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph1004.6
  %i.vq = add i64 %.18710.5, 1                    ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 8
  br i1 %i.vr, label %.thread836, label %bb.cu, !prof !12

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.18710.6 = phi i64 [ %.18710.5, %bb.cs ], [ %i.vq, %bb.ct ]
  %.28.6 = phi i64 [ %i.vp, %bb.cs ], [ %.28.5, %bb.ct ]
  %.23.6 = phi ptr [ %i.vk, %bb.cs ], [ %.23.5, %bb.ct ]
  %i.vs = add i32 %.23672, 56
  br label %.loopexit894

.loopexit894:                                     ; preds = %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %.preheader, %bb.bz
  %.19711 = phi i64 [ %.16708, %bb.bz ], [ %.16708, %.preheader ], [ %.18710, %bb.cc ], [ %.18710.1, %bb.cf ], [ %.18710.2, %bb.ci ], [ %.18710.3, %bb.cl ], [ %.18710.4, %bb.co ], [ %.18710.5, %bb.cr ], [ %.18710.6, %bb.cu ] ; 2 uses
  %.25674 = phi i32 [ %i.sv, %bb.bz ], [ %.23672, %.preheader ], [ %i.te, %bb.cc ], [ %i.tp, %bb.cf ], [ %i.ua, %bb.ci ], [ %i.ul, %bb.cl ], [ %i.uw, %bb.co ], [ %i.vh, %bb.cr ], [ %i.vs, %bb.cu ]
  %.29 = phi i64 [ %i.so, %bb.bz ], [ %.26640, %.preheader ], [ %.28, %bb.cc ], [ %.28.1, %bb.cf ], [ %.28.2, %bb.ci ], [ %.28.3, %bb.cl ], [ %.28.4, %bb.co ], [ %.28.5, %bb.cr ], [ %.28.6, %bb.cu ] ; 3 uses
  %.24 = phi ptr [ %i.su, %bb.bz ], [ %.21, %.preheader ], [ %.23, %bb.cc ], [ %.23.1, %bb.cf ], [ %.23.2, %bb.ci ], [ %.23.3, %bb.cl ], [ %.23.4, %bb.co ], [ %.23.5, %bb.cr ], [ %.23.6, %bb.cu ] ; 2 uses
  %i.vt = and i64 %.29, %i.kf
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !13 ; 6 uses
  %i.vw = and i32 %i.vv, 255
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = lshr i64 %.29, %i.vx                    ; 4 uses
  %i.vz = sub i32 %.25674, %i.vv                  ; 2 uses
  %i.wa = and i32 %i.vv, 16384
  %.not772 = icmp eq i32 %i.wa, 0
  br i1 %.not772, label %bb.cw, label %bb.cv, !prof !11

bb.cv:                                            ; preds = %.loopexit894
  %i.wb = lshr i32 %i.vv, 16
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = lshr i32 %i.vv, 8
  %i.we = and i32 %i.wd, 63
  %i.wf = zext nneg i32 %i.we to i64
  %notmask773 = shl nsw i64 -1, %i.wf
  %i.wg = xor i64 %notmask773, -1
  %i.wh = and i64 %i.vy, %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wc
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !13 ; 3 uses
  %i.wl = and i32 %i.wk, 255
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = lshr i64 %i.vy, %i.wm
  %i.wo = sub i32 %i.vz, %i.wk
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.5690 = phi i32 [ %i.wk, %bb.cv ], [ %i.vv, %.loopexit894 ] ; 5 uses
  %.26675 = phi i32 [ %i.wo, %bb.cv ], [ %i.vz, %.loopexit894 ] ; 4 uses
  %.2643 = phi i64 [ %i.vy, %bb.cv ], [ %.29, %.loopexit894 ]
  %.30 = phi i64 [ %i.wn, %bb.cv ], [ %i.vy, %.loopexit894 ] ; 5 uses
  %i.wp = lshr i32 %.5690, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5690, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = icmp eq ptr %.6596, %i.a
  br i1 %i.wq, label %.thread836, label %bb.cy, !prof !12

bb.cy:                                            ; preds = %bb.cx
  %i.wr = trunc i32 %i.wp to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.6596, i64 1
  store i8 %i.wr, ptr %.6596, align 1, !tbaa !13
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wt = and i32 %.5690, 8192
  %.not775 = icmp eq i32 %i.wt, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !11

bb.da:                                            ; preds = %bb.cz
  %i.wu = and i32 %.5690, 255
  %i.wv = zext nneg i32 %i.wu to i64
  %notmask776 = shl nsw i64 -1, %i.wv
  %i.ww = xor i64 %notmask776, -1
  %i.wx = and i64 %.2643, %i.ww
  %i.wy = lshr i32 %.5690, 8
  %i.wz = and i32 %i.wy, 223
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %i.wx, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = add i32 %i.wp, %i.xc
  %i.xe = zext i32 %i.xd to i64                   ; 3 uses
  %i.xf = ptrtoint ptr %.6596 to i64              ; 5 uses
  %i.xg = sub i64 %i.k, %i.xf
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.thread836, label %bb.db, !prof !12

bb.db:                                            ; preds = %bb.da
  %i.xi = and i64 %.30, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !3  ; 4 uses
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !11

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26675, -8
  %i.xo = lshr i32 %i.xk, 16
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i32 %i.xk, 8
  %i.xr = and i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %notmask778 = shl nsw i64 -1, %i.xs
  %i.xt = xor i64 %notmask778, -1
  %i.xu = and i64 %i.xm, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.xp
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !3
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.6691 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %.27676 = phi i32 [ %i.xn, %bb.dc ], [ %.26675, %bb.db ]
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %i.xy = lshr i32 %.6691, 16
  %i.xz = and i32 %.6691, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6691, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27676, %.6691                 ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !12

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6596, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6596, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !13
  %i.ys = getelementptr inbounds nuw i8, ptr %.6596, i64 1
  store i8 %i.yr, ptr %.6596, align 1, !tbaa !13
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !13
  %i.yv = getelementptr inbounds nuw i8, ptr %.6596, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !13
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 4
  %diff.check = icmp ult i32 %i.yi, 32
  %or.cond1159 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1159, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1145 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1145, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.yz, 28
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.za = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zb = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1146 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.zc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load1147 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !13
  %i.zd = getelementptr i8, ptr %next.gep1146, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1146, align 1, !tbaa !13
  store <16 x i8> %wide.load1147, ptr %i.zd, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ze = icmp eq i64 %index.next, %n.vec
  br i1 %i.ze, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.23672.be = phi i32 [ %.26675, %bb.cy ], [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %i.yk, %vec.epilog.scalar.ph ]
  %.26640.be = phi i64 [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.6596.be = phi ptr [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.yp, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1150 = and i64 %i.yz, -4                  ; 4 uses
  %i.zf = getelementptr i8, ptr %i.yt, i64 %n.vec1150
  %i.zg = getelementptr i8, ptr %i.yv, i64 %n.vec1150
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1152 = getelementptr i8, ptr %i.yt, i64 %index1151
  %next.gep1153 = getelementptr i8, ptr %i.yv, i64 %index1151
  %wide.load1154 = load <4 x i8>, ptr %next.gep1152, align 1, !tbaa !13
  store <4 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !13
  %index.next1155 = add nuw i64 %index1151, 4     ; 2 uses
  %i.zh = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.zh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1156 = icmp eq i64 %i.yz, %n.vec1150
  br i1 %cmp.n1156, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.za, %vec.epilog.iter.check ], [ %i.zf, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zb, %vec.epilog.iter.check ], [ %i.zg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zi, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zj = load i8, ptr %.0578, align 1, !tbaa !13
  %i.zk = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zj, ptr %.0, align 1, !tbaa !13
  %i.zl = icmp ult ptr %i.zk, %i.yp
  br i1 %i.zl, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !50

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.21713 = phi i64 [ %.19711, %bb.cz ], [ 0, %bb.ay ], [ %.15707, %bb.bi ], [ %.15707, %bb.bl ] ; 3 uses
  %.29678 = phi i32 [ %.26675, %bb.cz ], [ 0, %bb.ay ], [ %.17666, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20634, %bb.bi ], [ %i.mw, %bb.bl ]
  %.26 = phi ptr [ %.24, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16, %bb.bi ], [ %.16, %bb.bl ] ; 2 uses
  %.8598 = phi ptr [ %.6596, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3593, %bb.bi ], [ %.3593, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zm = lshr i32 %.29678, 3
  %i.zn = and i32 %i.zm, 31
  %i.zo = zext nneg i32 %i.zn to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21713, %i.zo
  br i1 %.not781, label %.thread836, label %bb.df, !prof !12

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21713, %i.zo
  %i.zp = getelementptr inbounds i8, ptr %.26, i64 %.neg783
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %1 to i64
  %i.zs = sub i64 %i.zq, %i.zr
  store i64 %i.zs, ptr %5, align 8, !tbaa !37
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zt = ptrtoint ptr %.8598 to i64
  %i.zu = sub i64 %i.zt, %i.q
  store i64 %i.zu, ptr %6, align 8, !tbaa !37
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8598, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14
}

declare void @libdeflate_init_x86_cpu_features() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @build_decode_table(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 7, 12) %4, i32 noundef range(i32 7, 16) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #6 {
.preheader222:
  %i.a = alloca [16 x i32], align 16              ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = shl nuw nsw i32 %5, 2
  %narrow = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.d, i1 false), !tbaa !3
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.preheader221.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader222
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader221.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !51

.preheader221.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader221.preheader, label %.lr.ph.epil.preheader

end_hunk_1
