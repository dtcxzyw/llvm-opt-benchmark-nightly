Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_decompress?download=true
begin_hunk_0_@deflate_decompress_default:bb.a
  %.23696.4 = phi ptr [ %i.uo, %bb.cm ], [ %.23696.3, %bb.cn ] ; 5 uses
  %.28671.4 = phi i64 [ %i.ut, %bb.cm ], [ %.28671.3, %bb.cn ] ; 3 uses
  %.18.4 = phi i64 [ %.18.3, %bb.cm ], [ %i.uu, %bb.cn ] ; 3 uses
  %i.uw = add i32 %.23, 40                        ; 2 uses
  %i.ux = and i32 %i.uw, 255                      ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, 56
  br i1 %i.uy, label %.lr.ph1004.5, label %.loopexit894

.lr.ph1004.5:                                     ; preds = %bb.co
  %.not771.5 = icmp eq ptr %.23696.4, %i.e
  br i1 %.not771.5, label %bb.cq, label %bb.cp, !prof !16

bb.cp:                                            ; preds = %.lr.ph1004.5
  %i.uz = getelementptr inbounds nuw i8, ptr %.23696.4, i64 1
  %i.va = load i8, ptr %.23696.4, align 1, !tbaa !17
  %i.vb = zext i8 %i.va to i64
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = shl nuw nsw i64 %i.vb, %i.vc
  %i.ve = or i64 %i.vd, %.28671.4
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph1004.5
  %i.vf = add i64 %.18.4, 1                       ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8
  br i1 %i.vg, label %.thread836, label %bb.cr, !prof !16

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.23696.5 = phi ptr [ %i.uz, %bb.cp ], [ %.23696.4, %bb.cq ] ; 5 uses
  %.28671.5 = phi i64 [ %i.ve, %bb.cp ], [ %.28671.4, %bb.cq ] ; 3 uses
  %.18.5 = phi i64 [ %.18.4, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %i.vh = add i32 %.23, 48                        ; 2 uses
  %i.vi = and i32 %i.vh, 255                      ; 2 uses
  %i.vj = icmp samesign ult i32 %i.vi, 56
  br i1 %i.vj, label %.lr.ph1004.6, label %.loopexit894

.lr.ph1004.6:                                     ; preds = %bb.cr
  %.not771.6 = icmp eq ptr %.23696.5, %i.e
  br i1 %.not771.6, label %bb.ct, label %bb.cs, !prof !16

bb.cs:                                            ; preds = %.lr.ph1004.6
  %i.vk = getelementptr inbounds nuw i8, ptr %.23696.5, i64 1
  %i.vl = load i8, ptr %.23696.5, align 1, !tbaa !17
  %i.vm = zext i8 %i.vl to i64
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = shl nuw nsw i64 %i.vm, %i.vn
  %i.vp = or i64 %i.vo, %.28671.5
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph1004.6
  %i.vq = add i64 %.18.5, 1                       ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 8
  br i1 %i.vr, label %.thread836, label %bb.cu, !prof !16

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.23696.6 = phi ptr [ %i.vk, %bb.cs ], [ %.23696.5, %bb.ct ]
  %.28671.6 = phi i64 [ %i.vp, %bb.cs ], [ %.28671.5, %bb.ct ]
  %.18.6 = phi i64 [ %.18.5, %bb.cs ], [ %i.vq, %bb.ct ]
  %i.vs = add i32 %.23, 56
  br label %.loopexit894

.loopexit894:                                     ; preds = %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %.preheader, %bb.bz
  %.24697 = phi ptr [ %i.su, %bb.bz ], [ %.21694, %.preheader ], [ %.23696, %bb.cc ], [ %.23696.1, %bb.cf ], [ %.23696.2, %bb.ci ], [ %.23696.3, %bb.cl ], [ %.23696.4, %bb.co ], [ %.23696.5, %bb.cr ], [ %.23696.6, %bb.cu ] ; 2 uses
  %.29672 = phi i64 [ %i.so, %bb.bz ], [ %.26669, %.preheader ], [ %.28671, %bb.cc ], [ %.28671.1, %bb.cf ], [ %.28671.2, %bb.ci ], [ %.28671.3, %bb.cl ], [ %.28671.4, %bb.co ], [ %.28671.5, %bb.cr ], [ %.28671.6, %bb.cu ] ; 3 uses
  %.25 = phi i32 [ %i.sv, %bb.bz ], [ %.23, %.preheader ], [ %i.te, %bb.cc ], [ %i.tp, %bb.cf ], [ %i.ua, %bb.ci ], [ %i.ul, %bb.cl ], [ %i.uw, %bb.co ], [ %i.vh, %bb.cr ], [ %i.vs, %bb.cu ]
  %.19 = phi i64 [ %.16, %bb.bz ], [ %.16, %.preheader ], [ %.18, %bb.cc ], [ %.18.1, %bb.cf ], [ %.18.2, %bb.ci ], [ %.18.3, %bb.cl ], [ %.18.4, %bb.co ], [ %.18.5, %bb.cr ], [ %.18.6, %bb.cu ] ; 2 uses
  %i.vt = and i64 %.29672, %i.kf
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !17 ; 6 uses
  %i.vw = and i32 %i.vv, 255
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = lshr i64 %.29672, %i.vx                 ; 4 uses
  %i.vz = sub i32 %.25, %i.vv                     ; 2 uses
  %i.wa = and i32 %i.vv, 16384
  %.not772 = icmp eq i32 %i.wa, 0
  br i1 %.not772, label %bb.cw, label %bb.cv, !prof !15

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
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !17 ; 3 uses
  %i.wl = and i32 %i.wk, 255
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = lshr i64 %i.vy, %i.wm
  %i.wo = sub i32 %i.vz, %i.wk
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.30 = phi i64 [ %i.wn, %bb.cv ], [ %i.vy, %.loopexit894 ] ; 5 uses
  %.2642 = phi i64 [ %i.vy, %bb.cv ], [ %.29672, %.loopexit894 ]
  %.26 = phi i32 [ %i.wo, %bb.cv ], [ %i.vz, %.loopexit894 ] ; 4 uses
  %.5600 = phi i32 [ %i.wk, %bb.cv ], [ %i.vv, %.loopexit894 ] ; 5 uses
  %i.wp = lshr i32 %.5600, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5600, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = icmp eq ptr %.6706, %i.a
  br i1 %i.wq, label %.thread836, label %bb.cy, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.wr = trunc i32 %i.wp to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.wr, ptr %.6706, align 1, !tbaa !17
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wt = and i32 %.5600, 8192
  %.not775 = icmp eq i32 %i.wt, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.wu = and i32 %.5600, 255
  %i.wv = zext nneg i32 %i.wu to i64
  %notmask776 = shl nsw i64 -1, %i.wv
  %i.ww = xor i64 %notmask776, -1
  %i.wx = and i64 %.2642, %i.ww
  %i.wy = lshr i32 %.5600, 8
  %i.wz = and i32 %i.wy, 223
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %i.wx, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = add i32 %i.wp, %i.xc
  %i.xe = zext i32 %i.xd to i64                   ; 3 uses
  %i.xf = ptrtoint ptr %.6706 to i64              ; 5 uses
  %i.xg = sub i64 %i.k, %i.xf
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.thread836, label %bb.db, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.xi = and i64 %.30, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !14 ; 4 uses
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !15

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26, -8
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
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !14
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xn, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %i.xy = lshr i32 %.6, 16
  %i.xz = and i32 %.6, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27, %.6                       ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !16

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6706, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !17
  %i.ys = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yr, ptr %.6706, align 1, !tbaa !17
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !17
  %i.yv = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !17
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 4
  %i.za = add i32 %i.yi, -1
  %diff.check = icmp ult i32 %i.za, 31
  %or.cond1160 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1160, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zb = and i64 %i.yz, 28
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.zc = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zd = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.ze = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load1149 = load <16 x i8>, ptr %i.ze, align 1, !tbaa !17
  %i.zf = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !17
  store <16 x i8> %wide.load1149, ptr %i.zf, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zg = icmp eq i64 %index.next, %n.vec
  br i1 %i.zg, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %.26, %bb.cy ], [ %i.yk, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.yz, -4                  ; 4 uses
  %i.zh = getelementptr i8, ptr %i.yt, i64 %n.vec1151
  %i.zi = getelementptr i8, ptr %i.yv, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.yt, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yv, i64 %index1152
  %wide.load1155 = load <4 x i8>, ptr %next.gep1153, align 1, !tbaa !17
  store <4 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !17
  %index.next1156 = add nuw i64 %index1152, 4     ; 2 uses
  %i.zj = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.yz, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zc, %vec.epilog.iter.check ], [ %i.zh, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zd, %vec.epilog.iter.check ], [ %i.zi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zm, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zl = load i8, ptr %.0578, align 1, !tbaa !17
  %i.zm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zl, ptr %.0, align 1, !tbaa !17
  %i.zn = icmp ult ptr %i.zm, %i.yp
  br i1 %i.zn, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !46

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mw, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zo = lshr i32 %.29, 3
  %i.zp = and i32 %i.zo, 31
  %i.zq = zext nneg i32 %i.zp to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zq
  br i1 %.not781, label %.thread836, label %bb.df, !prof !16

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zq
  %i.zr = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %1 to i64
  %i.zu = sub i64 %i.zs, %i.zt
  store i64 %i.zu, ptr %5, align 8, !tbaa !27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zv = ptrtoint ptr %.8708 to i64
  %i.zw = sub i64 %i.zv, %i.q
  store i64 %i.zw, ptr %6, align 8, !tbaa !27
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8708, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14723 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14723
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_bmi2(ptr noalias nofree noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #4 {
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
  %.0700 = phi ptr [ %3, %bb.a ], [ %.8708, %.thread869 ] ; 6 uses
  %.0673 = phi ptr [ %1, %bb.a ], [ %.26699, %.thread869 ] ; 5 uses
  %.0643 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0618 = phi i32 [ 0, %bb.a ], [ %.29, %.thread869 ] ; 6 uses
  %.0611 = phi i64 [ 0, %bb.a ], [ %.21, %.thread869 ] ; 3 uses
  %i.r = ptrtoint ptr %.0673 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !15

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0618, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0673, align 1
  %i.w = and i32 %.0618, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0643
  %i.aa = getelementptr inbounds nuw i8, ptr %.0673, i64 7
  %i.ab = lshr i32 %.0618, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0618, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1612953 = phi i64 [ %.2613, %bb.f ], [ %.0611, %.preheader915 ] ; 2 uses
  %.1619952 = phi i32 [ %i.aq, %bb.f ], [ %.0618, %.preheader915 ]
  %.1644951 = phi i64 [ %.2645, %bb.f ], [ %.0643, %.preheader915 ] ; 2 uses
  %.1674950 = phi ptr [ %.2675, %bb.f ], [ %.0673, %.preheader915 ] ; 4 uses
  %.not = icmp eq ptr %.1674950, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1674950, i64 1
  %i.aj = load i8, ptr %.1674950, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1644951
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1612953, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2675 = phi ptr [ %i.ai, %bb.d ], [ %.1674950, %bb.e ] ; 2 uses
  %.2645 = phi i64 [ %i.an, %bb.d ], [ %.1644951, %bb.e ] ; 2 uses
  %.2613 = phi i64 [ %.1612953, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1619952, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !47

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3676 = phi ptr [ %i.af, %bb.c ], [ %.0673, %.preheader915 ], [ %.2675, %bb.f ] ; 8 uses
  %.3646 = phi i64 [ %i.z, %bb.c ], [ %.0643, %.preheader915 ], [ %.2645, %bb.f ] ; 5 uses
  %.2620 = phi i32 [ %i.ag, %bb.c ], [ %.0618, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3614 = phi i64 [ %.0611, %bb.c ], [ %.0611, %.preheader915 ], [ %.2613, %bb.f ] ; 7 uses
  %i.at = and i64 %.3646, 1
  %.not744 = icmp eq i64 %i.at, 0
  %i.au = trunc i64 %.3646 to i32                 ; 4 uses
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 3
  switch i32 %i.aw, label %default.unreachable [
    i32 2, label %bb.g
    i32 0, label %bb.at
    i32 1, label %bb.az
    i32 3, label %.thread836
  ], !prof !19

bb.g:                                             ; preds = %.loopexit916
  %i.ax = lshr i32 %i.au, 3
  %i.ay = and i32 %i.ax, 31
  %i.az = add nuw nsw i32 %i.ay, 257              ; 2 uses
  %i.ba = lshr i32 %i.au, 8
  %i.bb = and i32 %i.ba, 31
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 2 uses
  %i.bd = lshr i32 %i.au, 13                      ; 2 uses
  %i.be = and i32 %i.bd, 15
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.bf = lshr i64 %.3646, 17
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = and i8 %i.bg, 7
  store i8 %i.bh, ptr %i.l, align 8, !tbaa !17
  %i.bi = lshr i64 %.3646, 20                     ; 3 uses
  %i.bj = add i32 %.2620, -20                     ; 6 uses
  %i.bk = ptrtoint ptr %.3676 to i64
  %i.bl = sub i64 %i.i, %i.bk
  %i.bm = icmp ugt i64 %i.bl, 7
  br i1 %i.bm, label %bb.h, label %.preheader908, !prof !15

.preheader908:                                    ; preds = %bb.g
end_hunk_0
begin_hunk_1_@deflate_decompress_bmi2:bb.a
  %.23696.4 = phi ptr [ %i.uo, %bb.cm ], [ %.23696.3, %bb.cn ] ; 5 uses
  %.28671.4 = phi i64 [ %i.ut, %bb.cm ], [ %.28671.3, %bb.cn ] ; 3 uses
  %.18.4 = phi i64 [ %.18.3, %bb.cm ], [ %i.uu, %bb.cn ] ; 3 uses
  %i.uw = add i32 %.23, 40                        ; 2 uses
  %i.ux = and i32 %i.uw, 255                      ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, 56
  br i1 %i.uy, label %.lr.ph1004.5, label %.loopexit894

.lr.ph1004.5:                                     ; preds = %bb.co
  %.not771.5 = icmp eq ptr %.23696.4, %i.e
  br i1 %.not771.5, label %bb.cq, label %bb.cp, !prof !16

bb.cp:                                            ; preds = %.lr.ph1004.5
  %i.uz = getelementptr inbounds nuw i8, ptr %.23696.4, i64 1
  %i.va = load i8, ptr %.23696.4, align 1, !tbaa !17
  %i.vb = zext i8 %i.va to i64
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = shl nuw nsw i64 %i.vb, %i.vc
  %i.ve = or i64 %i.vd, %.28671.4
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph1004.5
  %i.vf = add i64 %.18.4, 1                       ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8
  br i1 %i.vg, label %.thread836, label %bb.cr, !prof !16

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.23696.5 = phi ptr [ %i.uz, %bb.cp ], [ %.23696.4, %bb.cq ] ; 5 uses
  %.28671.5 = phi i64 [ %i.ve, %bb.cp ], [ %.28671.4, %bb.cq ] ; 3 uses
  %.18.5 = phi i64 [ %.18.4, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %i.vh = add i32 %.23, 48                        ; 2 uses
  %i.vi = and i32 %i.vh, 255                      ; 2 uses
  %i.vj = icmp samesign ult i32 %i.vi, 56
  br i1 %i.vj, label %.lr.ph1004.6, label %.loopexit894

.lr.ph1004.6:                                     ; preds = %bb.cr
  %.not771.6 = icmp eq ptr %.23696.5, %i.e
  br i1 %.not771.6, label %bb.ct, label %bb.cs, !prof !16

bb.cs:                                            ; preds = %.lr.ph1004.6
  %i.vk = getelementptr inbounds nuw i8, ptr %.23696.5, i64 1
  %i.vl = load i8, ptr %.23696.5, align 1, !tbaa !17
  %i.vm = zext i8 %i.vl to i64
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = shl nuw nsw i64 %i.vm, %i.vn
  %i.vp = or i64 %i.vo, %.28671.5
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph1004.6
  %i.vq = add i64 %.18.5, 1                       ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 8
  br i1 %i.vr, label %.thread836, label %bb.cu, !prof !16

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.23696.6 = phi ptr [ %i.vk, %bb.cs ], [ %.23696.5, %bb.ct ]
  %.28671.6 = phi i64 [ %i.vp, %bb.cs ], [ %.28671.5, %bb.ct ]
  %.18.6 = phi i64 [ %.18.5, %bb.cs ], [ %i.vq, %bb.ct ]
  %i.vs = add i32 %.23, 56
  br label %.loopexit894

.loopexit894:                                     ; preds = %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %.preheader, %bb.bz
  %.24697 = phi ptr [ %i.su, %bb.bz ], [ %.21694, %.preheader ], [ %.23696, %bb.cc ], [ %.23696.1, %bb.cf ], [ %.23696.2, %bb.ci ], [ %.23696.3, %bb.cl ], [ %.23696.4, %bb.co ], [ %.23696.5, %bb.cr ], [ %.23696.6, %bb.cu ] ; 2 uses
  %.29672 = phi i64 [ %i.so, %bb.bz ], [ %.26669, %.preheader ], [ %.28671, %bb.cc ], [ %.28671.1, %bb.cf ], [ %.28671.2, %bb.ci ], [ %.28671.3, %bb.cl ], [ %.28671.4, %bb.co ], [ %.28671.5, %bb.cr ], [ %.28671.6, %bb.cu ] ; 3 uses
  %.25 = phi i32 [ %i.sv, %bb.bz ], [ %.23, %.preheader ], [ %i.te, %bb.cc ], [ %i.tp, %bb.cf ], [ %i.ua, %bb.ci ], [ %i.ul, %bb.cl ], [ %i.uw, %bb.co ], [ %i.vh, %bb.cr ], [ %i.vs, %bb.cu ]
  %.19 = phi i64 [ %.16, %bb.bz ], [ %.16, %.preheader ], [ %.18, %bb.cc ], [ %.18.1, %bb.cf ], [ %.18.2, %bb.ci ], [ %.18.3, %bb.cl ], [ %.18.4, %bb.co ], [ %.18.5, %bb.cr ], [ %.18.6, %bb.cu ] ; 2 uses
  %i.vt = and i64 %.29672, %i.kf
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !17 ; 6 uses
  %i.vw = and i32 %i.vv, 255
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = lshr i64 %.29672, %i.vx                 ; 4 uses
  %i.vz = sub i32 %.25, %i.vv                     ; 2 uses
  %i.wa = and i32 %i.vv, 16384
  %.not772 = icmp eq i32 %i.wa, 0
  br i1 %.not772, label %bb.cw, label %bb.cv, !prof !15

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
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !17 ; 3 uses
  %i.wl = and i32 %i.wk, 255
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = lshr i64 %i.vy, %i.wm
  %i.wo = sub i32 %i.vz, %i.wk
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.30 = phi i64 [ %i.wn, %bb.cv ], [ %i.vy, %.loopexit894 ] ; 5 uses
  %.2642 = phi i64 [ %i.vy, %bb.cv ], [ %.29672, %.loopexit894 ]
  %.26 = phi i32 [ %i.wo, %bb.cv ], [ %i.vz, %.loopexit894 ] ; 4 uses
  %.5600 = phi i32 [ %i.wk, %bb.cv ], [ %i.vv, %.loopexit894 ] ; 5 uses
  %i.wp = lshr i32 %.5600, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5600, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = icmp eq ptr %.6706, %i.a
  br i1 %i.wq, label %.thread836, label %bb.cy, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.wr = trunc i32 %i.wp to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.wr, ptr %.6706, align 1, !tbaa !17
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wt = and i32 %.5600, 8192
  %.not775 = icmp eq i32 %i.wt, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.wu = and i32 %.5600, 255
  %i.wv = zext nneg i32 %i.wu to i64
  %notmask776 = shl nsw i64 -1, %i.wv
  %i.ww = xor i64 %notmask776, -1
  %i.wx = and i64 %.2642, %i.ww
  %i.wy = lshr i32 %.5600, 8
  %i.wz = and i32 %i.wy, 223
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %i.wx, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = add i32 %i.wp, %i.xc
  %i.xe = zext i32 %i.xd to i64                   ; 3 uses
  %i.xf = ptrtoint ptr %.6706 to i64              ; 5 uses
  %i.xg = sub i64 %i.k, %i.xf
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.thread836, label %bb.db, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.xi = and i64 %.30, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !14 ; 4 uses
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !15

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26, -8
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
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !14
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xn, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %i.xy = lshr i32 %.6, 16
  %i.xz = and i32 %.6, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27, %.6                       ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !16

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6706, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !17
  %i.ys = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yr, ptr %.6706, align 1, !tbaa !17
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !17
  %i.yv = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !17
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 4
  %i.za = add i32 %i.yi, -1
  %diff.check = icmp ult i32 %i.za, 31
  %or.cond1160 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1160, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zb = and i64 %i.yz, 28
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.zc = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zd = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.ze = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load1149 = load <16 x i8>, ptr %i.ze, align 1, !tbaa !17
  %i.zf = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !17
  store <16 x i8> %wide.load1149, ptr %i.zf, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zg = icmp eq i64 %index.next, %n.vec
  br i1 %i.zg, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %.26, %bb.cy ], [ %i.yk, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.yz, -4                  ; 4 uses
  %i.zh = getelementptr i8, ptr %i.yt, i64 %n.vec1151
  %i.zi = getelementptr i8, ptr %i.yv, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.yt, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yv, i64 %index1152
  %wide.load1155 = load <4 x i8>, ptr %next.gep1153, align 1, !tbaa !17
  store <4 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !17
  %index.next1156 = add nuw i64 %index1152, 4     ; 2 uses
  %i.zj = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.yz, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zc, %vec.epilog.iter.check ], [ %i.zh, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zd, %vec.epilog.iter.check ], [ %i.zi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zm, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zl = load i8, ptr %.0578, align 1, !tbaa !17
  %i.zm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zl, ptr %.0, align 1, !tbaa !17
  %i.zn = icmp ult ptr %i.zm, %i.yp
  br i1 %i.zn, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !58

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mw, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zo = lshr i32 %.29, 3
  %i.zp = and i32 %i.zo, 31
  %i.zq = zext nneg i32 %i.zp to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zq
  br i1 %.not781, label %.thread836, label %bb.df, !prof !16

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zq
  %i.zr = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %1 to i64
  %i.zu = sub i64 %i.zs, %i.zt
  store i64 %i.zu, ptr %5, align 8, !tbaa !27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zv = ptrtoint ptr %.8708 to i64
  %i.zw = sub i64 %i.zv, %i.q
  store i64 %i.zw, ptr %6, align 8, !tbaa !27
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8708, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14723 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14723
}

declare void @libdeflate_init_x86_cpu_features() local_unnamed_addr #5

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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.d, i1 false), !tbaa !14
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
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader221.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !59

.preheader221.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader221.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader221.preheader.loopexit.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader221.preheader, label %.lr.ph.epil, !llvm.loop !60

.preheader221.preheader:                          ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader222
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.preheader, %bb.a
  %.0185236 = phi i32 [ %i.aq, %bb.a ], [ %5, %.preheader221.preheader ] ; 3 uses
  %i.am = zext i32 %.0185236 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.preheader221
  %i.aq = add nsw i32 %.0185236, -1               ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.preheader221, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %bb.a, %.preheader221
  %.0185.lcssa = phi i32 [ 1, %bb.a ], [ %.0185236, %.preheader221 ] ; 7 uses
  %.not198 = icmp eq ptr %7, null
  br i1 %.not198, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.as = tail call i32 @llvm.umin.i32(i32 %4, i32 %.0185.lcssa) ; 2 uses
  store i32 %i.as, ptr %7, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0186 = phi i32 [ %i.as, %bb.b ], [ %4, %.critedge ] ; 12 uses
  store i32 0, ptr %i.b, align 16, !tbaa !14
  %i.at = load i32, ptr %i.a, align 16, !tbaa !14 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !14
  %i.av = icmp ugt i32 %.0185.lcssa, 1
  br i1 %i.av, label %.lr.ph239.preheader, label %._crit_edge

end_hunk_1
begin_hunk_2_@build_decode_table:.preheader222
  %.not205 = icmp ugt i32 %i.fj, %.0186           ; 2 uses
  br i1 %.not205, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader218
  %i.fk = zext i32 %.4 to i64                     ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fk
  %i.fm = shl nuw nsw i64 %i.fk, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr align 4 %0, i64 %i.fm, i1 false)
  %i.fn = shl i32 %.4, 1
  br label %bb.m

bb.m:                                             ; preds = %.preheader218, %bb.l
  %.5 = phi i32 [ %i.fn, %bb.l ], [ %.4, %.preheader218 ] ; 2 uses
  %i.fo = zext i32 %i.fj to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !14 ; 3 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.preheader218, label %bb.n, !llvm.loop !68

bb.n:                                             ; preds = %bb.m
  br i1 %.not205, label %._crit_edge251, label %.preheader219, !llvm.loop !69

._crit_edge251:                                   ; preds = %bb.n, %bb.j
  %.0182.lcssa = phi ptr [ %i.db, %bb.j ], [ %i.fb, %bb.n ]
  %.0167.lcssa = phi i32 [ 0, %bb.j ], [ %i.fh, %bb.n ]
  %.3162.lcssa = phi i32 [ %.2161, %bb.j ], [ %i.fj, %bb.n ]
  %.0154.lcssa = phi i32 [ %i.dx, %bb.j ], [ %i.fq, %bb.n ]
  %i.fs = shl nuw nsw i32 1, %.0186               ; 2 uses
  %i.ft = add nsw i32 %i.fs, -1
  %invariant.op = or disjoint i32 %.0186, 49152
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.lr.ph268, %._crit_edge251
  %.2184.ph = phi ptr [ %.0182.lcssa, %._crit_edge251 ], [ %i.gy, %.lr.ph268 ]
  %.3170.ph = phi i32 [ %.0167.lcssa, %._crit_edge251 ], [ %i.he, %.lr.ph268 ]
  %.8.ph = phi i32 [ %.3162.lcssa, %._crit_edge251 ], [ %i.hh, %.lr.ph268 ] ; 3 uses
  %.2156.ph = phi i32 [ %.0154.lcssa, %._crit_edge251 ], [ %i.hk, %.lr.ph268 ]
  %.6.ph = phi i32 [ %i.fs, %._crit_edge251 ], [ %.7, %.lr.ph268 ]
  %.0148.ph = phi i32 [ -1, %._crit_edge251 ], [ %.1149, %.lr.ph268 ]
  %.0146.ph = phi i32 [ 0, %._crit_edge251 ], [ %.1147, %.lr.ph268 ]
  %.pre = sub i32 %.8.ph, %.0186                  ; 4 uses
  %.pre303 = shl nuw i32 1, %.pre                 ; 3 uses
  %i.fu = mul i32 %.pre, 257
  %notmask = shl nsw i32 -1, %.8.ph
  %i.fv = xor i32 %notmask, -1                    ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer, %bb.r
  %.2184 = phi ptr [ %i.gy, %bb.r ], [ %.2184.ph, %.loopexit.outer ] ; 2 uses
  %.3170 = phi i32 [ %i.he, %bb.r ], [ %.3170.ph, %.loopexit.outer ] ; 5 uses
  %.2156 = phi i32 [ %i.hf, %bb.r ], [ %.2156.ph, %.loopexit.outer ] ; 3 uses
  %.6 = phi i32 [ %.7, %bb.r ], [ %.6.ph, %.loopexit.outer ] ; 4 uses
  %.0148 = phi i32 [ %.1149, %bb.r ], [ %.0148.ph, %.loopexit.outer ] ; 2 uses
  %.0146 = phi i32 [ %.1147, %bb.r ], [ %.0146.ph, %.loopexit.outer ]
  %i.fw = and i32 %.3170, %i.ft                   ; 3 uses
  %.not201 = icmp eq i32 %i.fw, %.0148
  br i1 %.not201, label %._crit_edge302, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.fx = icmp ult i32 %.2156, %.pre303
  br i1 %i.fx, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.o, %.lr.ph262
  %.0145260 = phi i32 [ %i.fy, %.lr.ph262 ], [ %.pre, %bb.o ]
  %.1153259 = phi i32 [ %i.ge, %.lr.ph262 ], [ %.2156, %bb.o ]
  %i.fy = add i32 %.0145260, 1                    ; 4 uses
  %i.fz = shl nuw i32 %.1153259, 1
  %i.ga = add i32 %i.fy, %.0186
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !14
  %i.ge = add i32 %i.gd, %i.fz                    ; 2 uses
  %i.gf = shl nuw i32 1, %i.fy                    ; 2 uses
  %i.gg = icmp ult i32 %i.ge, %i.gf
  br i1 %i.gg, label %.lr.ph262, label %._crit_edge263, !llvm.loop !70

._crit_edge263:                                   ; preds = %.lr.ph262, %bb.o
  %.0145.lcssa = phi i32 [ %.pre, %bb.o ], [ %i.fy, %.lr.ph262 ]
  %.lcssa = phi i32 [ %.pre303, %bb.o ], [ %i.gf, %.lr.ph262 ]
  %i.gh = add i32 %.lcssa, %.6
  %i.gi = shl i32 %.6, 16
  %i.gj = shl i32 %.0145.lcssa, 8
  %i.gk = or i32 %i.gi, %i.gj
  %.reass = or i32 %i.gk, %invariant.op
  %i.gl = zext nneg i32 %i.fw to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gl
  store i32 %.reass, ptr %i.gm, align 4, !tbaa !14
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %.loopexit, %._crit_edge263
  %.7 = phi i32 [ %i.gh, %._crit_edge263 ], [ %.6, %.loopexit ] ; 3 uses
  %.1149 = phi i32 [ %i.fw, %._crit_edge263 ], [ %.0148, %.loopexit ] ; 2 uses
  %.1147 = phi i32 [ %.6, %._crit_edge263 ], [ %.0146, %.loopexit ] ; 3 uses
  %i.gn = load i16, ptr %.2184, align 2, !tbaa !75
  %i.go = zext i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !14
  %i.gr = add i32 %i.fu, %i.gq
  %i.gs = lshr i32 %.3170, %.0186
  %i.gt = add i32 %.1147, %i.gs
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge302
  %.0 = phi i32 [ %i.gt, %._crit_edge302 ], [ %i.gw, %bb.p ] ; 2 uses
  %i.gu = zext i32 %.0 to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gu
  store i32 %i.gr, ptr %i.gv, align 4, !tbaa !14
  %i.gw = add i32 %.0, %.pre303                   ; 2 uses
  %i.gx = icmp ult i32 %i.gw, %.7
  br i1 %i.gx, label %bb.p, label %bb.q, !llvm.loop !71

bb.q:                                             ; preds = %bb.p
  %.not202 = icmp eq i32 %.3170, %i.fv
  br i1 %.not202, label %.thread212, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %.2184, i64 2 ; 2 uses
  %i.gz = xor i32 %.3170, %i.fv
  %i.ha = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = lshr exact i32 -2147483648, %i.ha       ; 2 uses
  %i.hc = add i32 %i.hb, -1
  %i.hd = and i32 %i.hc, %.3170
  %i.he = or i32 %i.hd, %i.hb                     ; 2 uses
  %i.hf = add i32 %.2156, -1                      ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %bb.r, %.lr.ph268
  %.9266 = phi i32 [ %i.hh, %.lr.ph268 ], [ %.8.ph, %bb.r ]
  %i.hh = add i32 %.9266, 1                       ; 3 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !14 ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph268, label %.loopexit.outer, !llvm.loop !72

.thread212:                                       ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258, %bb.q, %bb.i, %.preheader, %bb.f, %._crit_edge244
  %.6181 = phi i1 [ true, %bb.q ], [ false, %._crit_edge244 ], [ true, %.preheader ], [ false, %bb.f ], [ true, %bb.i ], [ true, %.lr.ph258 ], [ true, %.lr.ph258.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.6181
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi2,+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!"libdeflate_decompressor", !4, i64 0, !4, i64 9368, !4, i64 10976, !11, i64 11552, !5, i64 11556, !8, i64 11560}
!13 = !{!12, !8, i64 11560}
!14 = !{!5, !5, i64 0}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!4, !4, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"branch_weights", i32 0, i32 2001, i32 2001, i32 2000, i32 1}
!20 = !{!12, !11, i64 11552}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!12, !5, i64 11556}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", i32 4, i32 28}
!27 = !{!10, !10, i64 0}
!28 = !{ptr @libdeflate_deflate_decompress_ex}
!29 = !{!"libdeflate_options", !10, i64 0, !8, i64 8, !8, i64 16}
!30 = !{!29, !10, i64 0}
!31 = !{!29, !8, i64 8}
!32 = !{!29, !8, i64 16}
!33 = !{ptr @libdeflate_alloc_decompressor_ex}
!34 = !{ptr @deflate_decompress_bmi2, ptr @deflate_decompress_default}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18, !24, !25}
!45 = distinct !{!45, !18, !24, !25}
!46 = distinct !{!46, !18, !24}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18, !24, !25}
!57 = distinct !{!57, !18, !24, !25}
!58 = distinct !{!58, !18, !24}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !73}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!"short", !4, i64 0}
!75 = !{!74, !74, i64 0}
end_hunk_2
