inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %i.um = shl i64 %.sroa.0.6.i, %i.ul
  %i.un = lshr i64 %i.um, 1
  %i.uo = and i32 %i.uj, 63
  %i.up = xor i32 %i.uo, 63
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = lshr i64 %i.un, %i.uq
  %i.us = add i32 %.sroa.20.8.i, %i.uj            ; 2 uses
  %i.ut = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.uu = add nuw i64 %i.ur, %i.ut
  %i.uv = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %.not.i97.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i97.i, i64 %.sroa.78.0195.i, i64 %.sroa.5.0191.i
  %i.uw = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 63
  br i1 %i.uw, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.ux = icmp ult ptr %.sroa.81.0196.i, %i.ds
  br i1 %i.ux, label %bb.cf, label %.thread.i99.i

bb.cf:                                            ; preds = %bb.ce
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.81.0196.i, i64 1 ; 3 uses
  %i.uz = load i8, ptr %.sroa.81.0196.i, align 1, !tbaa !9 ; 2 uses
  %i.va = zext i8 %i.uz to i64
  %.not75.i.i = icmp eq i8 %i.uz, -1
  br i1 %.not75.i.i, label %bb.cg, label %.thread.i99.i

.thread.i99.i:                                    ; preds = %bb.cf, %bb.ce
  %i.vb = phi i64 [ %i.va, %bb.cf ], [ 0, %bb.ce ]
  %.061101.i.i = phi ptr [ %i.uy, %bb.cf ], [ %.sroa.81.0196.i, %bb.ce ]
  %narrow.i.i = add nuw nsw i64 %i.vb, 63
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.81.0196.i, i64 4 ; 2 uses
  %.not76.i.i = icmp ugt ptr %i.vc, %i.ds
  br i1 %.not76.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.061.val.i.i = load i16, ptr %i.uy, align 1
  %i.vd = getelementptr i8, ptr %.sroa.81.0196.i, i64 3
  %.061.val84.i.i = load i8, ptr %i.vd, align 1, !tbaa !9
  %i.ve = zext i16 %.061.val.i.i to i64
  %i.vf = zext i8 %.061.val84.i.i to i64
  %i.vg = shl nuw nsw i64 %i.vf, 16
  %i.vh = or disjoint i64 %i.vg, %i.ve
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.thread.i99.i
  %.162.i.i = phi ptr [ %.061101.i.i, %.thread.i99.i ], [ %i.vc, %bb.ch ], [ %i.uy, %bb.cg ] ; 2 uses
  %.0.shrunk.i.i = phi i64 [ %narrow.i.i, %.thread.i99.i ], [ %i.vh, %bb.ch ], [ 63, %bb.cg ]
  %.not77.i.i = icmp ult ptr %.162.i.i, %i.ds
  %spec.select.i.i = select i1 %.not77.i.i, ptr %.162.i.i, ptr %i.te
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cd
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.ci ], [ %.sroa.81.0196.i, %bb.cd ] ; 7 uses
  %.1.i.i = phi i64 [ %.0.shrunk.i.i, %bb.ci ], [ %i.uv, %bb.cd ] ; 14 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %.sroa.68.0200.i ; 3 uses
  %.sroa.0.0.copyload.i85.i.i = load i16, ptr %i.vi, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i86.i.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 2
  %.sroa.4.0.copyload.i87.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i86.i.i, align 2, !tbaa !9 ; 3 uses
  %.sroa.5.0..sroa_idx.i88.i.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 3
  %.sroa.5.0.copyload.i89.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i88.i.i, align 1, !tbaa !9
  %i.vj = zext i8 %.sroa.5.0.copyload.i89.i.i to i32 ; 2 uses
  %i.vk = and i32 %i.us, 63
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl i64 %.sroa.0.6.i, %i.vl
  %i.vn = lshr i64 %i.vm, 1
  %i.vo = and i32 %i.vj, 63
  %i.vp = xor i32 %i.vo, 63
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = lshr i64 %i.vn, %i.vq
  %i.vs = add i32 %i.us, %i.vj                    ; 2 uses
  %i.vt = zext i16 %.sroa.0.0.copyload.i85.i.i to i64
  %i.vu = add nuw i64 %i.vr, %i.vt
  %i.vv = zext i8 %.sroa.4.0.copyload.i87.i.i to i32
  %i.vw = add nsw i32 %i.vv, -1
  %i.vx = icmp eq i8 %.sroa.4.0.copyload.i87.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.vx, i32 0, i32 %i.vw ; 2 uses
  %i.vy = zext i8 %.sroa.4.0.copyload.i87.i.i to i64
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_decodeSequence.offsetPrefix, i64 %i.vy
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !7
  %i.wb = add i32 %i.vs, %spec.store.select.i.i   ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %.sroa.73.0198.i ; 3 uses
  %.sroa.0.0.copyload.i92.i.i = load i16, ptr %i.wc, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i93.i.i = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  %.sroa.4.0.copyload.i94.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i93.i.i, align 2, !tbaa !9 ; 2 uses
  %.sroa.5.0..sroa_idx.i95.i.i = getelementptr inbounds nuw i8, ptr %i.wc, i64 3
  %.sroa.5.0.copyload.i96.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i95.i.i, align 1, !tbaa !9
  %i.wd = zext i8 %.sroa.5.0.copyload.i96.i.i to i32 ; 2 uses
  %i.we = and i32 %i.wb, 63
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = shl i64 %.sroa.0.6.i, %i.wf
  %i.wh = lshr i64 %i.wg, 1
  %i.wi = and i32 %i.wd, 63
  %i.wj = xor i32 %i.wi, 63
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = lshr i64 %i.wh, %i.wk
  %i.wm = add i32 %i.wb, %i.wd                    ; 2 uses
  %i.wn = zext i16 %.sroa.0.0.copyload.i92.i.i to i64
  %i.wo = add nuw i64 %i.wl, %i.wn
  %i.wp = zext i8 %.sroa.4.0.copyload.i94.i.i to i64
  %i.wq = icmp eq i8 %.sroa.4.0.copyload.i94.i.i, 127
  br i1 %i.wq, label %bb.ck, label %ZSTD_decodeSequence.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.wr = icmp ult ptr %.3.i.i, %i.ds
  br i1 %i.wr, label %bb.cl, label %.thread102.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ws = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.wt = load i8, ptr %.3.i.i, align 1, !tbaa !9 ; 2 uses
  %i.wu = zext i8 %i.wt to i64
  %.not78.i.i = icmp eq i8 %i.wt, -1
  br i1 %.not78.i.i, label %bb.cm, label %.thread102.i.i

.thread102.i.i:                                   ; preds = %bb.cl, %bb.ck
  %i.wv = phi i64 [ %i.wu, %bb.cl ], [ 0, %bb.ck ]
  %.4105.i.i = phi ptr [ %i.ws, %bb.cl ], [ %.3.i.i, %bb.ck ]
  %narrow80.i.i = add nuw nsw i64 %i.wv, 127
  br label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ww = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4 ; 2 uses
  %.not79.i.i = icmp ugt ptr %i.ww, %i.ds
  br i1 %.not79.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.4.val.i.i = load i16, ptr %i.ws, align 1
  %i.wx = getelementptr i8, ptr %.3.i.i, i64 3
  %.4.val83.i.i = load i8, ptr %i.wx, align 1, !tbaa !9
  %i.wy = zext i16 %.4.val.i.i to i64
  %i.wz = zext i8 %.4.val83.i.i to i64
  %i.xa = shl nuw nsw i64 %i.wz, 16
  %i.xb = or disjoint i64 %i.xa, %i.wy
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.thread102.i.i
  %.5.i.i = phi ptr [ %.4105.i.i, %.thread102.i.i ], [ %i.ww, %bb.cn ], [ %i.ws, %bb.cm ] ; 2 uses
  %.059.shrunk.i.i = phi i64 [ %narrow80.i.i, %.thread102.i.i ], [ %i.xb, %bb.cn ], [ 127, %bb.cm ]
  %.not81.i.i = icmp ult ptr %.5.i.i, %i.ds
  %spec.select82.i.i = select i1 %.not81.i.i, ptr %.5.i.i, ptr %i.te
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.co, %bb.cj
  %.7.i98.i = phi ptr [ %spec.select82.i.i, %bb.co ], [ %.3.i.i, %bb.cj ]
  %.160.i.i = phi i64 [ %.059.shrunk.i.i, %bb.co ], [ %i.wp, %bb.cj ] ; 3 uses
  %i.xc = and i32 %i.vs, 63
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = shl i64 %.sroa.0.6.i, %i.xd
  %i.xf = lshr i64 %i.xe, 1
  %i.xg = and i32 %spec.store.select.i.i, 63
  %i.xh = xor i32 %i.xg, 63
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = lshr i64 %i.xf, %i.xi
  %i.xk = add i64 %i.xj, %i.wa
  %.058.i.i = select i1 %i.vx, i64 %.sroa.speculated.i, i64 %i.xk ; 7 uses
  %i.xl = add nuw nsw i64 %.160.i.i, 4            ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %.1.i.i ; 12 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 %i.xl  ; 5 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0138199.i, i64 %.1.i.i ; 2 uses
  %i.xp = add nuw nsw i64 %i.xl, %.1.i.i          ; 2 uses
  %i.xq = ptrtoint ptr %.060202.i to i64          ; 14 uses
  %i.xr = sub i64 %i.tg, %i.xq
  %i.xs = icmp ugt i64 %i.xp, %i.xr
  br i1 %i.xs, label %ZSTD_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.xt = ptrtoint ptr %.0138199.i to i64         ; 2 uses
  %i.xu = sub i64 %i.th, %i.xt
  %i.xv = icmp ugt i64 %.1.i.i, %i.xu
  br i1 %i.xv, label %ZSTD_decompressSequences.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xw = icmp ugt ptr %i.xm, %i.tf
  br i1 %i.xw, label %ZSTD_decompressSequences.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xx = ptrtoint ptr %i.xm to i64               ; 3 uses
  %i.xy = sub i64 %i.xx, %i.ti
  %i.xz = and i64 %i.xy, 4294967295
  %i.ya = icmp ugt i64 %.058.i.i, %i.xz
  br i1 %i.ya, label %ZSTD_decompressSequences.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yb = icmp ugt ptr %i.xn, %i.ck
  br i1 %i.yb, label %ZSTD_decompressSequences.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yc = icmp ugt ptr %i.xo, %i.cl
  br i1 %i.yc, label %ZSTD_decompressSequences.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.ct
  %i.yd = add i64 %i.xq, 8
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.xx, i64 %i.yd)
  %i.ye = xor i64 %i.xq, -1
  %i.yf = add i64 %umax156, %i.ye                 ; 2 uses
  %i.yg = lshr i64 %i.yf, 3
  %i.yh = add nuw nsw i64 %i.yg, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.yf, 24
  %i.yi = sub i64 %i.xt, %i.xq
  %diff.check155 = icmp ugt i64 %i.yi, -32
  %or.cond = or i1 %min.iters.check158, %diff.check155
  br i1 %or.cond, label %.preheader.i.i.preheader176, label %vector.ph159

vector.ph159:                                     ; preds = %.preheader.i.i.preheader
  %n.vec161 = and i64 %i.yh, 4611686018427387900  ; 3 uses
  %i.yj = shl i64 %n.vec161, 3                    ; 2 uses
  %i.yk = getelementptr i8, ptr %.060202.i, i64 %i.yj
  %i.yl = getelementptr i8, ptr %.0138199.i, i64 %i.yj
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.ym = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %.060202.i, i64 %i.ym ; 2 uses
  %next.gep165 = getelementptr i8, ptr %.0138199.i, i64 %i.ym ; 2 uses
  %i.yn = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x i64>, ptr %next.gep165, align 1
  %wide.load167 = load <2 x i64>, ptr %i.yn, align 1
  %i.yo = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %wide.load166, ptr %next.gep164, align 1
  store <2 x i64> %wide.load167, ptr %i.yo, align 1
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.yp = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.yp, label %middle.block169, label %vector.body162, !llvm.loop !43

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.yh, %n.vec161
  br i1 %cmp.n170, label %ZSTD_wildcopy.exit.i.i, label %.preheader.i.i.preheader176

.preheader.i.i.preheader176:                      ; preds = %.preheader.i.i.preheader, %middle.block169
  %.09.i.i.i.ph = phi ptr [ %.060202.i, %.preheader.i.i.preheader ], [ %i.yk, %middle.block169 ]
  %.0.i.i.i.ph = phi ptr [ %.0138199.i, %.preheader.i.i.preheader ], [ %i.yl, %middle.block169 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader176, %.preheader.i.i
  %.09.i.i.i = phi ptr [ %i.yq, %.preheader.i.i ], [ %.09.i.i.i.ph, %.preheader.i.i.preheader176 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.yr, %.preheader.i.i ], [ %.0.i.i.i.ph, %.preheader.i.i.preheader176 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.yq = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ys = icmp ult ptr %i.yq, %i.xm
  br i1 %i.ys, label %.preheader.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !46

ZSTD_wildcopy.exit.i.i:                           ; preds = %.preheader.i.i, %middle.block169
  %i.yt = sub nsw i64 0, %.058.i.i
  %i.yu = getelementptr inbounds i8, ptr %i.xm, i64 %i.yt ; 8 uses
  %i.yv = icmp ugt i64 %.058.i.i, %i.xx
  %i.yw = icmp ult ptr %i.yu, %i.cp
  %or.cond.i.i16 = select i1 %i.yv, i1 true, i1 %i.yw
  br i1 %or.cond.i.i16, label %ZSTD_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.yx = icmp samesign ult i64 %.058.i.i, 8
  br i1 %i.yx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.058.i.i
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !3
  %i.za = load i8, ptr %i.yu, align 1, !tbaa !9
  store i8 %i.za, ptr %i.xm, align 1, !tbaa !9
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !9
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !9
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xm, i64 2
  store i8 %i.zf, ptr %i.zg, align 1, !tbaa !9
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yu, i64 3
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !9
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xm, i64 3
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !9
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.058.i.i
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !3
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %i.yu, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %.val79.i.i = load i32, ptr %i.zn, align 1
  store i32 %.val79.i.i, ptr %i.zo, align 1
  %i.zp = sext i32 %i.yz to i64
  %i.zq = sub nsw i64 0, %i.zp
  %i.zr = getelementptr inbounds i8, ptr %i.zn, i64 %i.zq
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.val.i100.i = load i64, ptr %i.yu, align 1
  store i64 %.val.i100.i, ptr %i.xm, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.065.i.i = phi ptr [ %i.zr, %bb.cv ], [ %i.yu, %bb.cw ] ; 2 uses
  %.065.i.i118 = ptrtoaddr ptr %.065.i.i to i64   ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 11 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 8 ; 10 uses
  %i.zu = icmp ugt ptr %i.xn, %i.tj
  br i1 %i.zu, label %bb.cy, label %.preheader186.i.preheader

.preheader186.i.preheader:                        ; preds = %bb.cx
  %i.zv = add nsw i64 %.1.i.i, 4
  %i.zw = add nsw i64 %i.zv, %.160.i.i
  %i.zx = add i64 %i.zw, %i.xq
  %i.zy = add nsw i64 %.1.i.i, 16
  %i.zz = add i64 %i.zy, %i.xq
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.zx, i64 %i.zz)
  %i.aaa = add i64 %umax137, -9
  %i.aab = add i64 %.1.i.i, %i.xq
  %i.aac = sub i64 %i.aaa, %i.aab                 ; 2 uses
  %i.aad = lshr i64 %i.aac, 3
  %i.aae = add nuw nsw i64 %i.aad, 1              ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.aac, 56
  br i1 %min.iters.check139, label %.preheader186.i.preheader174, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.preheader186.i.preheader
  %i.aaf = add i64 %.1.i.i, %i.xq
  %i.aag = sub i64 %.065.i.i118, %i.aaf
  %diff.check136 = icmp ugt i64 %i.aag, -32
  br i1 %diff.check136, label %.preheader186.i.preheader174, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck135
  %n.vec142 = and i64 %i.aae, 4611686018427387900 ; 3 uses
  %i.aah = shl i64 %n.vec142, 3                   ; 2 uses
  %i.aai = getelementptr i8, ptr %i.zs, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %i.zt, i64 %i.aah
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.aak = shl i64 %index144, 3                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.zs, i64 %i.aak ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.zt, i64 %i.aak ; 2 uses
  %i.aal = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <2 x i64>, ptr %next.gep146, align 1
  %wide.load148 = load <2 x i64>, ptr %i.aal, align 1
  %i.aam = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x i64> %wide.load147, ptr %next.gep145, align 1
  store <2 x i64> %wide.load148, ptr %i.aam, align 1
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.aan = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.aan, label %middle.block150, label %vector.body143, !llvm.loop !47

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.aae, %n.vec142
  br i1 %cmp.n151, label %ZSTD_execSequence.exit.i, label %.preheader186.i.preheader174

.preheader186.i.preheader174:                     ; preds = %vector.memcheck135, %.preheader186.i.preheader, %middle.block150
  %.09.i84.i.i.ph = phi ptr [ %i.zs, %vector.memcheck135 ], [ %i.zs, %.preheader186.i.preheader ], [ %i.aai, %middle.block150 ]
  %.0.i85.i.i.ph = phi ptr [ %i.zt, %vector.memcheck135 ], [ %i.zt, %.preheader186.i.preheader ], [ %i.aaj, %middle.block150 ]
  br label %.preheader186.i

bb.cy:                                            ; preds = %bb.cx
  %i.aao = icmp ult ptr %i.zs, %i.tf
  br i1 %i.aao, label %.preheader.i.preheader, label %bb.cz

.preheader.i.preheader:                           ; preds = %bb.cy
  %i.aap = add nsw i64 %.1.i.i, 16
  %i.aaq = add i64 %i.aap, %i.xq
  %umax120 = tail call i64 @llvm.umax.i64(i64 %i.tk, i64 %i.aaq)
  %i.aar = add i64 %umax120, -9
  %i.aas = add i64 %.1.i.i, %i.xq
  %i.aat = sub i64 %i.aar, %i.aas                 ; 2 uses
  %i.aau = lshr i64 %i.aat, 3
  %i.aav = add nuw nsw i64 %i.aau, 1              ; 2 uses
  %min.iters.check121 = icmp ult i64 %i.aat, 56
  br i1 %min.iters.check121, label %.preheader.i.preheader173, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.preheader.i.preheader
  %i.aaw = add i64 %.1.i.i, %i.xq
  %i.aax = sub i64 %.065.i.i118, %i.aaw
  %diff.check119 = icmp ugt i64 %i.aax, -32
  br i1 %diff.check119, label %.preheader.i.preheader173, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck117
  %n.vec124 = and i64 %i.aav, 4611686018427387900 ; 3 uses
  %i.aay = shl i64 %n.vec124, 3                   ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.zs, i64 %i.aay
  %i.aba = getelementptr i8, ptr %i.zt, i64 %i.aay
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.abb = shl i64 %index126, 3                   ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.zs, i64 %i.abb ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.zt, i64 %i.abb ; 2 uses
  %i.abc = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 1
  %wide.load130 = load <2 x i64>, ptr %i.abc, align 1
  %i.abd = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x i64> %wide.load129, ptr %next.gep127, align 1
  store <2 x i64> %wide.load130, ptr %i.abd, align 1
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.abe = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.abe, label %middle.block132, label %vector.body125, !llvm.loop !48

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.aav, %n.vec124
  br i1 %cmp.n133, label %ZSTD_wildcopy.exit83.i.i, label %.preheader.i.preheader173

.preheader.i.preheader173:                        ; preds = %vector.memcheck117, %.preheader.i.preheader, %middle.block132
  %.09.i80.i.i.ph = phi ptr [ %i.zs, %vector.memcheck117 ], [ %i.zs, %.preheader.i.preheader ], [ %i.aaz, %middle.block132 ]
  %.0.i81.i.i.ph = phi ptr [ %i.zt, %vector.memcheck117 ], [ %i.zt, %.preheader.i.preheader ], [ %i.aba, %middle.block132 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader173, %.preheader.i
  %.09.i80.i.i = phi ptr [ %i.abf, %.preheader.i ], [ %.09.i80.i.i.ph, %.preheader.i.preheader173 ] ; 2 uses
  %.0.i81.i.i = phi ptr [ %i.abg, %.preheader.i ], [ %.0.i81.i.i.ph, %.preheader.i.preheader173 ] ; 2 uses
  %.0.val.i82.i.i = load i64, ptr %.0.i81.i.i, align 1
  store i64 %.0.val.i82.i.i, ptr %.09.i80.i.i, align 1
  %i.abf = getelementptr inbounds nuw i8, ptr %.09.i80.i.i, i64 8 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.0.i81.i.i, i64 8
  %i.abh = icmp ult ptr %i.abf, %i.tf
  br i1 %i.abh, label %.preheader.i, label %ZSTD_wildcopy.exit83.i.i, !llvm.loop !49

ZSTD_wildcopy.exit83.i.i:                         ; preds = %.preheader.i, %middle.block132
  %i.abi = ptrtoint ptr %i.zs to i64
  %i.abj = sub i64 %i.tk, %i.abi
  %i.abk = getelementptr inbounds i8, ptr %i.zt, i64 %i.abj
  br label %bb.cz

bb.cz:                                            ; preds = %ZSTD_wildcopy.exit83.i.i, %bb.cy
  %.068.i.i = phi ptr [ %i.tf, %ZSTD_wildcopy.exit83.i.i ], [ %i.zs, %bb.cy ] ; 7 uses
  %.166.i.i = phi ptr [ %i.abk, %ZSTD_wildcopy.exit83.i.i ], [ %i.zt, %bb.cy ] ; 7 uses
  %.166.i.i101 = ptrtoaddr ptr %.166.i.i to i64
  %i.abl = icmp ult ptr %.068.i.i, %i.xn
  br i1 %i.abl, label %iter.check, label %ZSTD_execSequence.exit.i

iter.check:                                       ; preds = %bb.cz
  %i.abm = add nsw i64 %.1.i.i, 4
  %i.abn = add nsw i64 %i.abm, %.160.i.i
  %i.abo = add i64 %i.abn, %i.xq
  %i.abp = add nsw i64 %.1.i.i, 8
  %i.abq = add i64 %i.abp, %i.xq
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.tk, i64 %i.abq)
  %i.abr = sub i64 %i.abo, %umax102               ; 7 uses
  %min.iters.check = icmp ult i64 %i.abr, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.abs = add nsw i64 %.1.i.i, 8
  %i.abt = add i64 %i.abs, %i.xq
  %umax = tail call i64 @llvm.umax.i64(i64 %i.tm, i64 %i.abt)
  %i.abu = sub i64 %.166.i.i101, %umax
  %diff.check = icmp ugt i64 %i.abu, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.abr, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.abr, 28
  %n.vec = and i64 %i.abr, -32                    ; 5 uses
  %i.abv = getelementptr i8, ptr %.166.i.i, i64 %n.vec
  %i.abw = getelementptr i8, ptr %.068.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.166.i.i, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.068.i.i, i64 %index ; 2 uses
  %i.abx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load105 = load <16 x i8>, ptr %i.abx, align 1, !tbaa !9
  %i.aby = getelementptr i8, ptr %next.gep104, i64 16
  store <16 x i8> %wide.load, ptr %next.gep104, align 1, !tbaa !9
  store <16 x i8> %wide.load105, ptr %i.aby, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.abz = icmp eq i64 %index.next, %n.vec
  br i1 %i.abz, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abr, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.abr, -4                  ; 4 uses
  %i.aca = getelementptr i8, ptr %.166.i.i, i64 %n.vec108
  %i.acb = getelementptr i8, ptr %.068.i.i, i64 %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.166.i.i, i64 %index109
  %next.gep111 = getelementptr i8, ptr %.068.i.i, i64 %index109
  %wide.load112 = load <4 x i8>, ptr %next.gep110, align 1, !tbaa !9
  store <4 x i8> %wide.load112, ptr %next.gep111, align 1, !tbaa !9
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %i.acc = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.acc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.abr, %n.vec108
  br i1 %cmp.n114, label %ZSTD_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.291.i.i.ph = phi ptr [ %.166.i.i, %iter.check ], [ %.166.i.i, %vector.memcheck ], [ %i.abv, %vec.epilog.iter.check ], [ %i.aca, %vec.epilog.middle.block ]
  %.16990.i.i.ph = phi ptr [ %.068.i.i, %iter.check ], [ %.068.i.i, %vector.memcheck ], [ %i.abw, %vec.epilog.iter.check ], [ %i.acb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.291.i.i = phi ptr [ %i.acd, %.lr.ph.i.i ], [ %.291.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.16990.i.i = phi ptr [ %i.acf, %.lr.ph.i.i ], [ %.16990.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.291.i.i, i64 1
  %i.ace = load i8, ptr %.291.i.i, align 1, !tbaa !9
  %i.acf = getelementptr inbounds nuw i8, ptr %.16990.i.i, i64 1 ; 2 uses
  store i8 %i.ace, ptr %.16990.i.i, align 1, !tbaa !9
  %i.acg = icmp ult ptr %i.acf, %i.xn
  br i1 %i.acg, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !53

.preheader186.i:                                  ; preds = %.preheader186.i.preheader174, %.preheader186.i
  %.09.i84.i.i = phi ptr [ %i.ach, %.preheader186.i ], [ %.09.i84.i.i.ph, %.preheader186.i.preheader174 ] ; 2 uses
  %.0.i85.i.i = phi ptr [ %i.aci, %.preheader186.i ], [ %.0.i85.i.i.ph, %.preheader186.i.preheader174 ] ; 2 uses
  %.0.val.i86.i.i = load i64, ptr %.0.i85.i.i, align 1
  store i64 %.0.val.i86.i.i, ptr %.09.i84.i.i, align 1
  %i.ach = getelementptr inbounds nuw i8, ptr %.09.i84.i.i, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.0.i85.i.i, i64 8
  %i.acj = icmp ult ptr %i.ach, %i.xn
  br i1 %i.acj, label %.preheader186.i, label %ZSTD_execSequence.exit.i, !llvm.loop !54

ZSTD_execSequence.exit.i:                         ; preds = %.preheader186.i, %.lr.ph.i.i, %middle.block150, %middle.block, %vec.epilog.middle.block, %bb.cz
  %i.ack = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.xp
  %i.acl = icmp ugt i32 %i.wm, 64
  br i1 %i.acl, label %ZSTD_decompressSequences.exit, label %bb.bz

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.acm = icmp ne i32 %.sroa.20.8.i, 64
  %i.acn = icmp ne ptr %.sroa.42112.8.i, %.786120.i.i
  %brmerge.i = select i1 %i.acn, i1 true, i1 %i.acm
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.da

bb.da:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.aco = ptrtoint ptr %.0138199.i to i64
  %i.acp = sub i64 %i.th, %i.aco                  ; 2 uses
  %i.acq = icmp ugt ptr %.0138199.i, %i.cl
  br i1 %i.acq, label %ZSTD_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acr = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.acp ; 3 uses
  %i.acs = icmp ugt ptr %i.acr, %i.ck
  br i1 %i.acs, label %ZSTD_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not71.i = icmp eq ptr %i.cl, %.0138199.i
  br i1 %.not71.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not72.i = icmp eq ptr %.060202.i, %.0138199.i
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060202.i, ptr align 1 %.0138199.i, i64 %i.acp, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.464.i = phi ptr [ %i.acr, %bb.dd ], [ %.060202.i, %bb.dc ], [ %i.acr, %bb.de ]
  %i.act = ptrtoint ptr %.464.i to i64
  %i.acu = ptrtoint ptr %1 to i64
  %i.acv = sub i64 %i.act, %i.acu
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %ZSTD_wildcopy.exit.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit85.i, %FSE_initDState.exit94.i, %bb.k, %bb.n, %bb.a, %bb.df, %bb.db, %bb.da, %BIT_reloadDStream.exit.thread.i, %BIT_initDStream.exit.i, %bb.bn, %bb.bf, %bb.bd, %ZSTD_decodeSeqHeaders.exit.i, %ZSTD_decodeSeqHeaders.exit.thread.i, %ZSTD_decodeLiteralsBlock.exit.thread25
  %.0 = phi i64 [ -20, %bb.k ], [ -20, %ZSTD_decodeLiteralsBlock.exit.thread25 ], [ %.7.i.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.i ], [ %i.acv, %bb.df ], [ %i.nw, %ZSTD_decodeSeqHeaders.exit.i ], [ -20, %BIT_reloadDStream.exit.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.da ], [ -70, %bb.db ], [ -20, %bb.bf ], [ -20, %bb.bd ], [ -20, %bb.bn ], [ -20, %bb.a ], [ -20, %bb.n ], [ -20, %FSE_initDState.exit94.i ], [ -20, %FSE_initDState.exit85.i ], [ -20, %ZSTD_execSequence.exit.i ], [ -20, %bb.ct ], [ -20, %ZSTD_wildcopy.exit.i.i ], [ -70, %bb.cs ], [ -20, %bb.cr ], [ -70, %bb.cq ], [ -20, %bb.cp ], [ -70, %ZSTD_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @HUF_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9 {
bb.a:
  %4 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [4097 x i16], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 24 uses
  %i.g = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUF_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 12 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUF_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !37
  %.not3940.i = icmp eq i32 %i.i, 0
  br i1 %.not3940.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03641.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03641.i.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUF_readDTableX2.exit.thread23, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count56.i = zext i32 %i.o to i64
  br label %bb.d

end_hunk_0
begin_hunk_1_@HUF_decompress4X4:bb.a

.lr.ph89.preheader.i:                             ; preds = %.preheader82.i
  %i.u = zext i32 %.068.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %.068.lcssa.i, 4
  br i1 %i.v, label %.lr.ph89.i.epil.preheader, label %.lr.ph89.preheader.i.new

.lr.ph89.preheader.i.new:                         ; preds = %.lr.ph89.preheader.i
  %unroll_iter = and i64 %i.u, 4294967292
  br label %.lr.ph89.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not81.i = icmp eq i64 %i.w, 0
  br i1 %.not81.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !71

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i114 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i114, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader82.loopexit.i, !llvm.loop !71

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.preheader.i.new
  %indvars.iv111.i = phi i64 [ 1, %.lr.ph89.preheader.i.new ], [ %indvars.iv.next112.i.3, %.lr.ph89.i ] ; 6 uses
  %.07387.i = phi i32 [ 0, %.lr.ph89.preheader.i.new ], [ %i.ao, %.lr.ph89.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph89.preheader.i.new ], [ %niter.next.3, %.lr.ph89.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv111.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add i32 %i.ab, %.07387.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv111.i
  store i32 %.07387.i, ptr %i.ad, align 4, !tbaa !3
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !3
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i.1
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next112.i.2 = add nuw nsw i64 %indvars.iv111.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i.2
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !3
  %indvars.iv.next112.i.3 = add nuw nsw i64 %indvars.iv111.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph89.i, !llvm.loop !72

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph89.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i
  %indvars.iv111.i.epil.init = phi i64 [ 1, %.lr.ph89.preheader.i ], [ %indvars.iv.next112.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07387.i.epil.init = phi i32 [ 0, %.lr.ph89.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod174 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph89.i.epil

.lr.ph89.i.epil:                                  ; preds = %.lr.ph89.i.epil, %.lr.ph89.i.epil.preheader
  %indvars.iv111.i.epil = phi i64 [ %indvars.iv111.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %indvars.iv.next112.i.epil, %.lr.ph89.i.epil ] ; 3 uses
  %.07387.i.epil = phi i32 [ %.07387.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %i.as, %.lr.ph89.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph89.i.epil.preheader ], [ %epil.iter.next, %.lr.ph89.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv111.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = add i32 %i.ar, %.07387.i.epil           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv111.i.epil
  store i32 %.07387.i.epil, ptr %i.at, align 4, !tbaa !3
  %indvars.iv.next112.i.epil = add nuw nsw i64 %indvars.iv111.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph89.i.epil, !llvm.loop !73

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.i.epil, %.preheader82.i
  %.073.lcssa.i = phi i32 [ 0, %.preheader82.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph89.i.epil ] ; 5 uses
  store i32 %.073.lcssa.i, ptr %i.j, align 4, !tbaa !3
  %i.au = load i32, ptr %i.h, align 4, !tbaa !3   ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count117.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter175 = and i64 %wide.trip.count117.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph93.i.epil.preheader, label %.lr.ph93.preheader.i.new

.lr.ph93.preheader.i.new:                         ; preds = %.lr.ph93.preheader.i
  %unroll_iter179 = and i64 %wide.trip.count117.i, 4294967294
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i.new
  %indvars.iv114.i = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %indvars.iv.next115.i.1, %.lr.ph93.i ] ; 4 uses
  %niter180 = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %niter180.next.1, %.lr.ph93.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !9   ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3
  %i.bc = trunc i64 %indvars.iv114.i to i8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !68
  %indvars.iv.next115.i = or disjoint i64 %indvars.iv114.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next115.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3  ; 2 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %i.bm = trunc i64 %indvars.iv.next115.i to i8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bn ; 2 uses
  store i8 %i.bm, ptr %i.bo, align 2, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !68
  %indvars.iv.next115.i.1 = add nuw nsw i64 %indvars.iv114.i, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge94.i.loopexit.unr-lcssa, label %.lr.ph93.i, !llvm.loop !75

._crit_edge94.i.loopexit.unr-lcssa:               ; preds = %.lr.ph93.i
  %lcmp.mod177.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod177.not, label %._crit_edge94.i, label %.lr.ph93.i.epil.preheader

.lr.ph93.i.epil.preheader:                        ; preds = %._crit_edge94.i.loopexit.unr-lcssa, %.lr.ph93.preheader.i
  %indvars.iv114.i.epil.init = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %indvars.iv.next115.i.1, %._crit_edge94.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = trunc i64 %indvars.iv114.i.epil.init to i8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bx ; 2 uses
  store i8 %i.bw, ptr %i.by, align 2, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !68
  br label %._crit_edge94.i

._crit_edge94.i:                                  ; preds = %.lr.ph93.i.epil.preheader, %._crit_edge94.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.j, align 4, !tbaa !3
  %i.ca = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.cb = sub nsw i32 %i.ca, %.068.lcssa.i        ; 4 uses
  br i1 %.not7786.i, label %._crit_edge108.split.i, label %.lr.ph99.preheader.i

.lr.ph99.preheader.i:                             ; preds = %._crit_edge94.i
  %i.cc = add nuw nsw i32 %.068.lcssa.i, 1        ; 2 uses
  %wide.trip.count122.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %i.cd = zext i32 %.068.lcssa.i to i64           ; 2 uses
  %xtraiter181 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.cc, 2
  br i1 %i.ce, label %.lr.ph99.i.epil.preheader, label %.lr.ph99.preheader.i.new

.lr.ph99.preheader.i.new:                         ; preds = %.lr.ph99.preheader.i
  %unroll_iter185 = and i64 %i.cd, 4294967294
  %invariant.op = sub i32 11, %i.n
  %invariant.op201 = sub i32 11, %i.n
  br label %.lr.ph99.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph99.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %.preheader.i, label %.lr.ph99.i.epil.preheader

.lr.ph99.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph99.preheader.i
  %indvars.iv119.i.epil.init = phi i64 [ 1, %.lr.ph99.preheader.i ], [ %indvars.iv.next120.i.1, %.preheader.i.unr-lcssa ]
  %.07196.i.epil.init = phi i32 [ 0, %.lr.ph99.preheader.i ], [ %i.cu, %.preheader.i.unr-lcssa ]
  %lcmp.mod184 = trunc i32 %.068.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119.i.epil.init
  store i32 %.07196.i.epil.init, ptr %i.cf, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph99.i.epil.preheader
  %i.cg = sub nsw i32 12, %i.cb                   ; 2 uses
  %.not79105.i = icmp ugt i32 %i.cb, %i.cg
  br i1 %.not79105.i, label %._crit_edge108.split.i, label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.preheader.i
  %i.ch = zext i32 %.068.lcssa.i to i64
  %i.ci = zext i32 %.068.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.068.lcssa.i, 8
  %n.vec = and i64 %i.ci, 4294967288              ; 3 uses
  %i.cj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ci
  br label %.lr.ph103.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i.new
  %indvars.iv119.i = phi i64 [ 1, %.lr.ph99.preheader.i.new ], [ %indvars.iv.next120.i.1, %.lr.ph99.i ] ; 5 uses
  %.07196.i = phi i32 [ 0, %.lr.ph99.preheader.i.new ], [ %i.cu, %.lr.ph99.i ] ; 2 uses
  %niter186 = phi i64 [ 0, %.lr.ph99.preheader.i.new ], [ %niter186.next.1, %.lr.ph99.i ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv119.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = trunc nuw nsw i64 %indvars.iv119.i to i32
  %.reass.reass = add i32 %i.cm, %invariant.op
  %i.cn = shl i32 %i.cl, %.reass.reass
  %i.co = add i32 %i.cn, %.07196.i                ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119.i
  store i32 %.07196.i, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next120.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = trunc nuw nsw i64 %indvars.iv.next120.i to i32
  %.reass.1.reass = add i32 %i.cs, %invariant.op201
  %i.ct = shl i32 %i.cr, %.reass.1.reass
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next120.i
  store i32 %i.co, ptr %i.cv, align 4, !tbaa !3
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph99.i, !llvm.loop !76

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.preheader, %._crit_edge104.i
  %.069106.i = phi i32 [ %i.ec, %._crit_edge104.i ], [ %i.cb, %.lr.ph103.i.preheader ] ; 9 uses
  %9 = zext i32 %.069106.i to i64
  %10 = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %9 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %.lr.ph103.i.a

.lr.ph103.i.a:                                    ; preds = %.lr.ph103.i
  %i.cw = zext i32 %.069106.i to i64
  %11 = mul nuw nsw i64 %i.cw, 68
  %12 = add nsw i64 %11, -1
  %diff.check = icmp ult i64 %12, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph103.i.a
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.069106.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = or disjoint i64 %index, 1               ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load = load <4 x i32>, ptr %i.cy, align 4, !tbaa !3
  %wide.load115 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !3
  %i.da = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.db = lshr <4 x i32> %wide.load115, %broadcast.splat
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.cx ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x i32> %i.da, ptr %i.dc, align 4, !tbaa !3
  store <4 x i32> %i.db, ptr %i.dd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph103.i.a, %.lr.ph103.i, %middle.block
  %indvars.iv124.i.ph = phi i64 [ 1, %.lr.ph103.i.a ], [ 1, %.lr.ph103.i ], [ %i.cj, %middle.block ] ; 4 uses
  %i.df = sub nsw i64 %wide.trip.count122.i, %indvars.iv124.i.ph
  %i.dg = sub nsw i64 %i.ch, %indvars.iv124.i.ph
  %xtraiter187 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %scalar.ph.prol ], [ %indvars.iv124.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = lshr i32 %i.di, %.069106.i
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv124.i.prol
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !3
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv124.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next125.i.prol, %scalar.ph.prol ]
  %i.dl = icmp ult i64 %i.dg, 3
  br i1 %i.dl, label %._crit_edge104.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %scalar.ph ], [ %indvars.iv124.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = lshr i32 %i.dn, %.069106.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv124.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = lshr i32 %i.dr, %.069106.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next125.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = lshr i32 %i.dv, %.069106.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next125.i.1
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !3
  %indvars.iv.next125.i.2 = add nuw nsw i64 %indvars.iv124.i, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.2
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = lshr i32 %i.dz, %.069106.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next125.i.2
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  %indvars.iv.next125.i.3 = add nuw nsw i64 %indvars.iv124.i, 4 ; 2 uses
  %exitcond128.not.i.3 = icmp eq i64 %indvars.iv.next125.i.3, %wide.trip.count122.i
  br i1 %exitcond128.not.i.3, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !79

._crit_edge104.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ec = add i32 %.069106.i, 1                   ; 2 uses
  %.not79.i = icmp ugt i32 %i.ec, %i.cg
  br i1 %.not79.i, label %._crit_edge108.split.i, label %.lr.ph103.i, !llvm.loop !80

._crit_edge108.split.i:                           ; preds = %._crit_edge104.i, %.preheader.i, %._crit_edge94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ed = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.073.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge108.split.i
  %wide.trip.count61.i.i = zext i32 %.073.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !66
  %i.eg = zext i8 %i.ef to i32                    ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !68  ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = sub nsw i32 %i.ca, %i.ej                ; 6 uses
  %i.el = zext i8 %i.ei to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 5 uses
  %i.eo = sub nsw i32 12, %i.ek                   ; 3 uses
  %i.ep = shl nuw i32 1, %i.eo                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.eo, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.eq = add nsw i32 %i.ed, %i.ek                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 1)
  %i.er = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.eu = zext i32 %i.en to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eu ; 4 uses
  %i.ew = zext i32 %i.ek to i64
  %i.ex = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.ew
  %i.ey = zext i32 %i.et to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ey
  %i.fa = sub i32 %.073.lcssa.i, %i.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.ex, i64 68, i1 false)
  %i.fb = icmp sgt i32 %i.eq, 1
  br i1 %i.fb, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.er
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.sroa.6.0.insert.ext42.i.i.i = shl nsw i32 %i.ek, 16
  %.sroa.6.0.insert.shift43.i.i.i = and i32 %.sroa.6.0.insert.ext42.i.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i.i, %i.eg
  %.sroa.0.0.insert.insert40.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fd to i64  ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.fd, 8
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i.i
  %n.vec147 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i.i, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph145
  %index151 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body150 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index151 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <4 x i32> %broadcast.splat149, ptr %i.fe, align 4
  store <4 x i32> %broadcast.splat149, ptr %i.ff, align 4
  %index.next152 = add nuw i64 %index151, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.fg, label %middle.block153, label %vector.body150, !llvm.loop !81

middle.block153:                                  ; preds = %vector.body150
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i.i.i
  br i1 %cmp.n154, label %.loopexit.i.i.i, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block153
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec147, %middle.block153 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph143 ], [ %indvars.iv.i.i.i.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i.i, ptr %i.fh, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph143, !llvm.loop !82

.loopexit.i.i.i:                                  ; preds = %scalar.ph143, %middle.block153, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.073.lcssa.i, %i.et
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.fa to i64
  %invariant.op.i.i = or disjoint i32 %i.eg, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !66
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !68  ; 2 uses
  %i.fn = zext i8 %i.fm to i32
  %i.fo = sub nsw i32 %i.ca, %i.fn                ; 2 uses
  %i.fp = sub nsw i32 %i.eo, %i.fo
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = zext i8 %i.fm to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 9 uses
  %i.fu = add i32 %i.fq, %i.ft                    ; 4 uses
  %i.fv = shl nuw nsw i32 %i.fk, 8
  %i.fw = add nsw i32 %i.fo, %i.ek
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.fw, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.fx = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.fv
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.fx, %invariant.op.i.i ; 2 uses
  %i.fy = add i32 %i.ft, 1
  %umax129 = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 %i.fy)
  %i.fz = sub i32 %umax129, %i.ft                 ; 3 uses
  %min.iters.check131 = icmp ult i32 %i.fz, 16
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %i.ga = add i32 %i.ft, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 %i.ga)
  %i.gb = add i32 %umax, -1
  %i.gc = icmp ult i32 %i.gb, %i.ft
  br i1 %i.gc, label %scalar.ph130.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.scevcheck
  %n.vec134 = and i32 %i.fz, -8                   ; 3 uses
  %i.gd = add i32 %i.ft, %n.vec134
  %broadcast.splatinsert135 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat136 = shufflevector <4 x i32> %broadcast.splatinsert135, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph132
  %index138 = phi i32 [ 0, %vector.ph132 ], [ %index.next139, %vector.body137 ] ; 2 uses
  %i.ge = add i32 %i.ft, %index138
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> %broadcast.splat136, ptr %i.gg, align 4
  store <4 x i32> %broadcast.splat136, ptr %i.gh, align 4
  %index.next139 = add nuw i32 %index138, 8       ; 2 uses
  %i.gi = icmp eq i32 %index.next139, %n.vec134
  br i1 %i.gi, label %middle.block140, label %vector.body137, !llvm.loop !83

middle.block140:                                  ; preds = %vector.body137
  %cmp.n141 = icmp eq i32 %i.fz, %n.vec134
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i.i, %middle.block140
  %.034.i.i.i.ph = phi i32 [ %i.ft, %vector.scevcheck ], [ %i.ft, %.lr.ph53.i.i.i ], [ %i.gd, %middle.block140 ]
  br label %scalar.ph130

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %scalar.ph130
  %.034.i.i.i = phi i32 [ %i.gj, %scalar.ph130 ], [ %.034.i.i.i.ph, %scalar.ph130.preheader ] ; 2 uses
  %i.gj = add i32 %.034.i.i.i, 1                  ; 2 uses
  %i.gk = zext i32 %.034.i.i.i to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gk
  store i32 %.sroa.0.0.insert.insert.i.reass.i.i, ptr %i.gl, align 4
  %i.gm = icmp ult i32 %i.gj, %i.fu
  br i1 %i.gm, label %scalar.ph130, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %scalar.ph130, %middle.block140
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !3
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.i.i.i, !llvm.loop !85

HUF_fillDTableX4Level2.exit.i.i:                  ; preds = %.loopexit, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre.i.i = add i32 %i.ep, %i.en
  br label %.loopexit.i.i

bb.e:                                             ; preds = %.lr.ph55.i.i
  %i.gn = add i32 %i.ep, %i.en                    ; 5 uses
  %i.go = icmp ult i32 %i.en, %i.gn
  br i1 %i.go, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.4.0.insert.ext.i.i = shl nsw i32 %i.ek, 16
  %.sroa.4.0.insert.shift.i.i = and i32 %.sroa.4.0.insert.ext.i.i, 16711680
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %i.eg
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, 16777216 ; 2 uses
  %i.gp = zext i32 %i.en to i64                   ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.gn to i64    ; 2 uses
  %i.gq = sub nsw i64 %wide.trip.count.i.i, %i.gp ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.gq, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.ph118

end_hunk_1
