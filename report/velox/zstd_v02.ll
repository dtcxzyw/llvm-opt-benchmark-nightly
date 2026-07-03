inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %i.uv = shl i64 %.sroa.0.6.i, %i.uu
  %i.uw = lshr i64 %i.uv, 1
  %i.ux = and i32 %i.us, 63
  %i.uy = xor i32 %i.ux, 63
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = lshr i64 %i.uw, %i.uz
  %i.vb = add i32 %.sroa.20.8.i, %i.us            ; 2 uses
  %i.vc = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.vd = add nuw i64 %i.va, %i.vc
  %i.ve = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %.not.i97.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i97.i, i64 %.sroa.78.0195.i, i64 %.sroa.5.0191.i
  %i.vf = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 63
  br i1 %i.vf, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.vg = icmp ult ptr %.sroa.81.0196.i, %i.eb
  br i1 %i.vg, label %bb.cf, label %.thread.i99.i

bb.cf:                                            ; preds = %bb.ce
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.81.0196.i, i64 1 ; 3 uses
  %i.vi = load i8, ptr %.sroa.81.0196.i, align 1, !tbaa !9 ; 2 uses
  %i.vj = zext i8 %i.vi to i64
  %.not75.i.i = icmp eq i8 %i.vi, -1
  br i1 %.not75.i.i, label %bb.cg, label %.thread.i99.i

.thread.i99.i:                                    ; preds = %bb.cf, %bb.ce
  %i.vk = phi i64 [ %i.vj, %bb.cf ], [ 0, %bb.ce ]
  %.061101.i.i = phi ptr [ %i.vh, %bb.cf ], [ %.sroa.81.0196.i, %bb.ce ]
  %narrow.i.i = add nuw nsw i64 %i.vk, 63
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.81.0196.i, i64 4 ; 2 uses
  %.not76.i.i = icmp ugt ptr %i.vl, %i.eb
  br i1 %.not76.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.061.val.i.i = load i16, ptr %i.vh, align 1
  %i.vm = getelementptr i8, ptr %.sroa.81.0196.i, i64 3
  %.061.val84.i.i = load i8, ptr %i.vm, align 1, !tbaa !9
  %i.vn = zext i16 %.061.val.i.i to i64
  %i.vo = zext i8 %.061.val84.i.i to i64
  %i.vp = shl nuw nsw i64 %i.vo, 16
  %i.vq = or disjoint i64 %i.vp, %i.vn
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.thread.i99.i
  %.162.i.i = phi ptr [ %.061101.i.i, %.thread.i99.i ], [ %i.vl, %bb.ch ], [ %i.vh, %bb.cg ] ; 2 uses
  %.0.shrunk.i.i = phi i64 [ %narrow.i.i, %.thread.i99.i ], [ %i.vq, %bb.ch ], [ 63, %bb.cg ]
  %.not77.i.i = icmp ult ptr %.162.i.i, %i.eb
  %spec.select.i.i = select i1 %.not77.i.i, ptr %.162.i.i, ptr %i.tn
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cd
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.ci ], [ %.sroa.81.0196.i, %bb.cd ] ; 7 uses
  %.1.i.i = phi i64 [ %.0.shrunk.i.i, %bb.ci ], [ %i.ve, %bb.cd ] ; 14 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.sroa.68.0200.i ; 3 uses
  %.sroa.0.0.copyload.i85.i.i = load i16, ptr %i.vr, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i86.i.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  %.sroa.4.0.copyload.i87.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i86.i.i, align 2, !tbaa !9 ; 3 uses
  %.sroa.5.0..sroa_idx.i88.i.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 3
  %.sroa.5.0.copyload.i89.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i88.i.i, align 1, !tbaa !9
  %i.vs = zext i8 %.sroa.5.0.copyload.i89.i.i to i32 ; 2 uses
  %i.vt = and i32 %i.vb, 63
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = shl i64 %.sroa.0.6.i, %i.vu
  %i.vw = lshr i64 %i.vv, 1
  %i.vx = and i32 %i.vs, 63
  %i.vy = xor i32 %i.vx, 63
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = lshr i64 %i.vw, %i.vz
  %i.wb = add i32 %i.vb, %i.vs                    ; 2 uses
  %i.wc = zext i16 %.sroa.0.0.copyload.i85.i.i to i64
  %i.wd = add nuw i64 %i.wa, %i.wc
  %i.we = zext i8 %.sroa.4.0.copyload.i87.i.i to i32
  %i.wf = add nsw i32 %i.we, -1
  %i.wg = icmp eq i8 %.sroa.4.0.copyload.i87.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.wg, i32 0, i32 %i.wf ; 2 uses
  %i.wh = zext i8 %.sroa.4.0.copyload.i87.i.i to i64
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_decodeSequence.offsetPrefix, i64 %i.wh
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !7
  %i.wk = add i32 %i.wb, %spec.store.select.i.i   ; 2 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %.sroa.73.0198.i ; 3 uses
  %.sroa.0.0.copyload.i92.i.i = load i16, ptr %i.wl, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i93.i.i = getelementptr inbounds nuw i8, ptr %i.wl, i64 2
  %.sroa.4.0.copyload.i94.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i93.i.i, align 2, !tbaa !9 ; 2 uses
  %.sroa.5.0..sroa_idx.i95.i.i = getelementptr inbounds nuw i8, ptr %i.wl, i64 3
  %.sroa.5.0.copyload.i96.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i95.i.i, align 1, !tbaa !9
  %i.wm = zext i8 %.sroa.5.0.copyload.i96.i.i to i32 ; 2 uses
  %i.wn = and i32 %i.wk, 63
  %i.wo = zext nneg i32 %i.wn to i64
  %i.wp = shl i64 %.sroa.0.6.i, %i.wo
  %i.wq = lshr i64 %i.wp, 1
  %i.wr = and i32 %i.wm, 63
  %i.ws = xor i32 %i.wr, 63
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = lshr i64 %i.wq, %i.wt
  %i.wv = add i32 %i.wk, %i.wm                    ; 2 uses
  %i.ww = zext i16 %.sroa.0.0.copyload.i92.i.i to i64
  %i.wx = add nuw i64 %i.wu, %i.ww
  %i.wy = zext i8 %.sroa.4.0.copyload.i94.i.i to i64
  %i.wz = icmp eq i8 %.sroa.4.0.copyload.i94.i.i, 127
  br i1 %i.wz, label %bb.ck, label %ZSTD_decodeSequence.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.xa = icmp ult ptr %.3.i.i, %i.eb
  br i1 %i.xa, label %bb.cl, label %.thread102.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.xb = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.xc = load i8, ptr %.3.i.i, align 1, !tbaa !9 ; 2 uses
  %i.xd = zext i8 %i.xc to i64
  %.not78.i.i = icmp eq i8 %i.xc, -1
  br i1 %.not78.i.i, label %bb.cm, label %.thread102.i.i

.thread102.i.i:                                   ; preds = %bb.cl, %bb.ck
  %i.xe = phi i64 [ %i.xd, %bb.cl ], [ 0, %bb.ck ]
  %.4105.i.i = phi ptr [ %i.xb, %bb.cl ], [ %.3.i.i, %bb.ck ]
  %narrow80.i.i = add nuw nsw i64 %i.xe, 127
  br label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.xf = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4 ; 2 uses
  %.not79.i.i = icmp ugt ptr %i.xf, %i.eb
  br i1 %.not79.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.4.val.i.i = load i16, ptr %i.xb, align 1
  %i.xg = getelementptr i8, ptr %.3.i.i, i64 3
  %.4.val83.i.i = load i8, ptr %i.xg, align 1, !tbaa !9
  %i.xh = zext i16 %.4.val.i.i to i64
  %i.xi = zext i8 %.4.val83.i.i to i64
  %i.xj = shl nuw nsw i64 %i.xi, 16
  %i.xk = or disjoint i64 %i.xj, %i.xh
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.thread102.i.i
  %.5.i.i = phi ptr [ %.4105.i.i, %.thread102.i.i ], [ %i.xf, %bb.cn ], [ %i.xb, %bb.cm ] ; 2 uses
  %.059.shrunk.i.i = phi i64 [ %narrow80.i.i, %.thread102.i.i ], [ %i.xk, %bb.cn ], [ 127, %bb.cm ]
  %.not81.i.i = icmp ult ptr %.5.i.i, %i.eb
  %spec.select82.i.i = select i1 %.not81.i.i, ptr %.5.i.i, ptr %i.tn
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.co, %bb.cj
  %.7.i98.i = phi ptr [ %spec.select82.i.i, %bb.co ], [ %.3.i.i, %bb.cj ]
  %.160.i.i = phi i64 [ %.059.shrunk.i.i, %bb.co ], [ %i.wy, %bb.cj ] ; 3 uses
  %i.xl = and i32 %i.wb, 63
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = shl i64 %.sroa.0.6.i, %i.xm
  %i.xo = lshr i64 %i.xn, 1
  %i.xp = and i32 %spec.store.select.i.i, 63
  %i.xq = xor i32 %i.xp, 63
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = lshr i64 %i.xo, %i.xr
  %i.xt = add i64 %i.xs, %i.wj
  %.058.i.i = select i1 %i.wg, i64 %.sroa.speculated.i, i64 %i.xt ; 7 uses
  %i.xu = add nuw nsw i64 %.160.i.i, 4            ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %.1.i.i ; 12 uses
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.xu  ; 5 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.0138199.i, i64 %.1.i.i ; 2 uses
  %i.xy = add nuw nsw i64 %i.xu, %.1.i.i          ; 2 uses
  %i.xz = ptrtoint ptr %.060202.i to i64          ; 14 uses
  %i.ya = sub i64 %i.tp, %i.xz
  %i.yb = icmp ugt i64 %i.xy, %i.ya
  br i1 %i.yb, label %ZSTD_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.yc = ptrtoint ptr %.0138199.i to i64         ; 2 uses
  %i.yd = sub i64 %i.tq, %i.yc
  %i.ye = icmp ugt i64 %.1.i.i, %i.yd
  br i1 %i.ye, label %ZSTD_decompressSequences.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yf = icmp ugt ptr %i.xv, %i.to
  br i1 %i.yf, label %ZSTD_decompressSequences.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yg = ptrtoint ptr %i.xv to i64               ; 3 uses
  %i.yh = sub i64 %i.yg, %i.tr
  %i.yi = and i64 %i.yh, 4294967295
  %i.yj = icmp ugt i64 %.058.i.i, %i.yi
  br i1 %i.yj, label %ZSTD_decompressSequences.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yk = icmp ugt ptr %i.xw, %i.ct
  br i1 %i.yk, label %ZSTD_decompressSequences.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yl = icmp ugt ptr %i.xx, %i.cu
  br i1 %i.yl, label %ZSTD_decompressSequences.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.ct
  %i.ym = add i64 %i.xz, 8
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.yg, i64 %i.ym)
  %i.yn = xor i64 %i.xz, -1
  %i.yo = add i64 %umax156, %i.yn                 ; 2 uses
  %i.yp = lshr i64 %i.yo, 3
  %i.yq = add nuw nsw i64 %i.yp, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.yo, 24
  %i.yr = sub i64 %i.yc, %i.xz
  %diff.check155 = icmp ugt i64 %i.yr, -32
  %or.cond = or i1 %min.iters.check158, %diff.check155
  br i1 %or.cond, label %.preheader.i.i.preheader176, label %vector.ph159

vector.ph159:                                     ; preds = %.preheader.i.i.preheader
  %n.vec161 = and i64 %i.yq, 4611686018427387900  ; 3 uses
  %i.ys = shl i64 %n.vec161, 3                    ; 2 uses
  %i.yt = getelementptr i8, ptr %.060202.i, i64 %i.ys
  %i.yu = getelementptr i8, ptr %.0138199.i, i64 %i.ys
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.yv = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %.060202.i, i64 %i.yv ; 2 uses
  %next.gep165 = getelementptr i8, ptr %.0138199.i, i64 %i.yv ; 2 uses
  %i.yw = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x i64>, ptr %next.gep165, align 1
  %wide.load167 = load <2 x i64>, ptr %i.yw, align 1
  %i.yx = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %wide.load166, ptr %next.gep164, align 1
  store <2 x i64> %wide.load167, ptr %i.yx, align 1
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.yy = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.yy, label %middle.block169, label %vector.body162, !llvm.loop !43

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.yq, %n.vec161
  br i1 %cmp.n170, label %ZSTD_wildcopy.exit.i.i, label %.preheader.i.i.preheader176

.preheader.i.i.preheader176:                      ; preds = %.preheader.i.i.preheader, %middle.block169
  %.09.i.i.i.ph = phi ptr [ %.060202.i, %.preheader.i.i.preheader ], [ %i.yt, %middle.block169 ]
  %.0.i.i.i.ph = phi ptr [ %.0138199.i, %.preheader.i.i.preheader ], [ %i.yu, %middle.block169 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader176, %.preheader.i.i
  %.09.i.i.i = phi ptr [ %i.yz, %.preheader.i.i ], [ %.09.i.i.i.ph, %.preheader.i.i.preheader176 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.za, %.preheader.i.i ], [ %.0.i.i.i.ph, %.preheader.i.i.preheader176 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.zb = icmp ult ptr %i.yz, %i.xv
  br i1 %i.zb, label %.preheader.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !46

ZSTD_wildcopy.exit.i.i:                           ; preds = %.preheader.i.i, %middle.block169
  %i.zc = sub nsw i64 0, %.058.i.i
  %i.zd = getelementptr inbounds i8, ptr %i.xv, i64 %i.zc ; 8 uses
  %i.ze = icmp ugt i64 %.058.i.i, %i.yg
  %i.zf = icmp ult ptr %i.zd, %i.cy
  %or.cond.i.i16 = select i1 %i.ze, i1 true, i1 %i.zf
  br i1 %or.cond.i.i16, label %ZSTD_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.zg = icmp samesign ult i64 %.058.i.i, 8
  br i1 %i.zg, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.058.i.i
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !3
  %i.zj = load i8, ptr %i.zd, align 1, !tbaa !9
  store i8 %i.zj, ptr %i.xv, align 1, !tbaa !9
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zd, i64 1
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !9
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !9
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zd, i64 2
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !9
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xv, i64 2
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !9
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zd, i64 3
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !9
  %i.zs = getelementptr inbounds nuw i8, ptr %i.xv, i64 3
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !9
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.058.i.i
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !3
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds i8, ptr %i.zd, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.xv, i64 4
  %.val79.i.i = load i32, ptr %i.zw, align 1
  store i32 %.val79.i.i, ptr %i.zx, align 1
  %i.zy = sext i32 %i.zi to i64
  %i.zz = sub nsw i64 0, %i.zy
  %i.aaa = getelementptr inbounds i8, ptr %i.zw, i64 %i.zz
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.val.i100.i = load i64, ptr %i.zd, align 1
  store i64 %.val.i100.i, ptr %i.xv, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.065.i.i = phi ptr [ %i.aaa, %bb.cv ], [ %i.zd, %bb.cw ] ; 2 uses
  %.065.i.i118 = ptrtoaddr ptr %.065.i.i to i64   ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 11 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 8 ; 10 uses
  %i.aad = icmp ugt ptr %i.xw, %i.ts
  br i1 %i.aad, label %bb.cy, label %.preheader186.i.preheader

.preheader186.i.preheader:                        ; preds = %bb.cx
  %i.aae = add nsw i64 %.1.i.i, 4
  %i.aaf = add nsw i64 %i.aae, %.160.i.i
  %i.aag = add i64 %i.aaf, %i.xz
  %i.aah = add nsw i64 %.1.i.i, 16
  %i.aai = add i64 %i.aah, %i.xz
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.aag, i64 %i.aai)
  %i.aaj = add i64 %umax137, -9
  %i.aak = add i64 %.1.i.i, %i.xz
  %i.aal = sub i64 %i.aaj, %i.aak                 ; 2 uses
  %i.aam = lshr i64 %i.aal, 3
  %i.aan = add nuw nsw i64 %i.aam, 1              ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.aal, 56
  br i1 %min.iters.check139, label %.preheader186.i.preheader174, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.preheader186.i.preheader
  %i.aao = add i64 %.1.i.i, %i.xz
  %i.aap = sub i64 %.065.i.i118, %i.aao
  %diff.check136 = icmp ugt i64 %i.aap, -32
  br i1 %diff.check136, label %.preheader186.i.preheader174, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck135
  %n.vec142 = and i64 %i.aan, 4611686018427387900 ; 3 uses
  %i.aaq = shl i64 %n.vec142, 3                   ; 2 uses
  %i.aar = getelementptr i8, ptr %i.aab, i64 %i.aaq
  %i.aas = getelementptr i8, ptr %i.aac, i64 %i.aaq
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.aat = shl i64 %index144, 3                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.aab, i64 %i.aat ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.aac, i64 %i.aat ; 2 uses
  %i.aau = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <2 x i64>, ptr %next.gep146, align 1
  %wide.load148 = load <2 x i64>, ptr %i.aau, align 1
  %i.aav = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x i64> %wide.load147, ptr %next.gep145, align 1
  store <2 x i64> %wide.load148, ptr %i.aav, align 1
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.aaw = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.aaw, label %middle.block150, label %vector.body143, !llvm.loop !47

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.aan, %n.vec142
  br i1 %cmp.n151, label %ZSTD_execSequence.exit.i, label %.preheader186.i.preheader174

.preheader186.i.preheader174:                     ; preds = %vector.memcheck135, %.preheader186.i.preheader, %middle.block150
  %.09.i84.i.i.ph = phi ptr [ %i.aab, %vector.memcheck135 ], [ %i.aab, %.preheader186.i.preheader ], [ %i.aar, %middle.block150 ]
  %.0.i85.i.i.ph = phi ptr [ %i.aac, %vector.memcheck135 ], [ %i.aac, %.preheader186.i.preheader ], [ %i.aas, %middle.block150 ]
  br label %.preheader186.i

bb.cy:                                            ; preds = %bb.cx
  %i.aax = icmp ult ptr %i.aab, %i.to
  br i1 %i.aax, label %.preheader.i.preheader, label %bb.cz

.preheader.i.preheader:                           ; preds = %bb.cy
  %i.aay = add nsw i64 %.1.i.i, 16
  %i.aaz = add i64 %i.aay, %i.xz
  %umax120 = tail call i64 @llvm.umax.i64(i64 %i.tt, i64 %i.aaz)
  %i.aba = add i64 %umax120, -9
  %i.abb = add i64 %.1.i.i, %i.xz
  %i.abc = sub i64 %i.aba, %i.abb                 ; 2 uses
  %i.abd = lshr i64 %i.abc, 3
  %i.abe = add nuw nsw i64 %i.abd, 1              ; 2 uses
  %min.iters.check121 = icmp ult i64 %i.abc, 56
  br i1 %min.iters.check121, label %.preheader.i.preheader173, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.preheader.i.preheader
  %i.abf = add i64 %.1.i.i, %i.xz
  %i.abg = sub i64 %.065.i.i118, %i.abf
  %diff.check119 = icmp ugt i64 %i.abg, -32
  br i1 %diff.check119, label %.preheader.i.preheader173, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck117
  %n.vec124 = and i64 %i.abe, 4611686018427387900 ; 3 uses
  %i.abh = shl i64 %n.vec124, 3                   ; 2 uses
  %i.abi = getelementptr i8, ptr %i.aab, i64 %i.abh
  %i.abj = getelementptr i8, ptr %i.aac, i64 %i.abh
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.abk = shl i64 %index126, 3                   ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.aab, i64 %i.abk ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.aac, i64 %i.abk ; 2 uses
  %i.abl = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 1
  %wide.load130 = load <2 x i64>, ptr %i.abl, align 1
  %i.abm = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x i64> %wide.load129, ptr %next.gep127, align 1
  store <2 x i64> %wide.load130, ptr %i.abm, align 1
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.abn = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.abn, label %middle.block132, label %vector.body125, !llvm.loop !48

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.abe, %n.vec124
  br i1 %cmp.n133, label %ZSTD_wildcopy.exit83.i.i, label %.preheader.i.preheader173

.preheader.i.preheader173:                        ; preds = %vector.memcheck117, %.preheader.i.preheader, %middle.block132
  %.09.i80.i.i.ph = phi ptr [ %i.aab, %vector.memcheck117 ], [ %i.aab, %.preheader.i.preheader ], [ %i.abi, %middle.block132 ]
  %.0.i81.i.i.ph = phi ptr [ %i.aac, %vector.memcheck117 ], [ %i.aac, %.preheader.i.preheader ], [ %i.abj, %middle.block132 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader173, %.preheader.i
  %.09.i80.i.i = phi ptr [ %i.abo, %.preheader.i ], [ %.09.i80.i.i.ph, %.preheader.i.preheader173 ] ; 2 uses
  %.0.i81.i.i = phi ptr [ %i.abp, %.preheader.i ], [ %.0.i81.i.i.ph, %.preheader.i.preheader173 ] ; 2 uses
  %.0.val.i82.i.i = load i64, ptr %.0.i81.i.i, align 1
  store i64 %.0.val.i82.i.i, ptr %.09.i80.i.i, align 1
  %i.abo = getelementptr inbounds nuw i8, ptr %.09.i80.i.i, i64 8 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.0.i81.i.i, i64 8
  %i.abq = icmp ult ptr %i.abo, %i.to
  br i1 %i.abq, label %.preheader.i, label %ZSTD_wildcopy.exit83.i.i, !llvm.loop !49

ZSTD_wildcopy.exit83.i.i:                         ; preds = %.preheader.i, %middle.block132
  %i.abr = ptrtoint ptr %i.aab to i64
  %i.abs = sub i64 %i.tt, %i.abr
  %i.abt = getelementptr inbounds i8, ptr %i.aac, i64 %i.abs
  br label %bb.cz

bb.cz:                                            ; preds = %ZSTD_wildcopy.exit83.i.i, %bb.cy
  %.068.i.i = phi ptr [ %i.to, %ZSTD_wildcopy.exit83.i.i ], [ %i.aab, %bb.cy ] ; 7 uses
  %.166.i.i = phi ptr [ %i.abt, %ZSTD_wildcopy.exit83.i.i ], [ %i.aac, %bb.cy ] ; 7 uses
  %.166.i.i101 = ptrtoaddr ptr %.166.i.i to i64
  %i.abu = icmp ult ptr %.068.i.i, %i.xw
  br i1 %i.abu, label %iter.check, label %ZSTD_execSequence.exit.i

iter.check:                                       ; preds = %bb.cz
  %i.abv = add nsw i64 %.1.i.i, 4
  %i.abw = add nsw i64 %i.abv, %.160.i.i
  %i.abx = add i64 %i.abw, %i.xz
  %i.aby = add nsw i64 %.1.i.i, 8
  %i.abz = add i64 %i.aby, %i.xz
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.tt, i64 %i.abz)
  %i.aca = sub i64 %i.abx, %umax102               ; 7 uses
  %min.iters.check = icmp ult i64 %i.aca, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.acb = add nsw i64 %.1.i.i, 8
  %i.acc = add i64 %i.acb, %i.xz
  %umax = tail call i64 @llvm.umax.i64(i64 %i.tv, i64 %i.acc)
  %i.acd = sub i64 %.166.i.i101, %umax
  %diff.check = icmp ugt i64 %i.acd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.aca, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aca, 28
  %n.vec = and i64 %i.aca, -32                    ; 5 uses
  %i.ace = getelementptr i8, ptr %.166.i.i, i64 %n.vec
  %i.acf = getelementptr i8, ptr %.068.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.166.i.i, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.068.i.i, i64 %index ; 2 uses
  %i.acg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load105 = load <16 x i8>, ptr %i.acg, align 1, !tbaa !9
  %i.ach = getelementptr i8, ptr %next.gep104, i64 16
  store <16 x i8> %wide.load, ptr %next.gep104, align 1, !tbaa !9
  store <16 x i8> %wide.load105, ptr %i.ach, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aci = icmp eq i64 %index.next, %n.vec
  br i1 %i.aci, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aca, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.aca, -4                  ; 4 uses
  %i.acj = getelementptr i8, ptr %.166.i.i, i64 %n.vec108
  %i.ack = getelementptr i8, ptr %.068.i.i, i64 %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.166.i.i, i64 %index109
  %next.gep111 = getelementptr i8, ptr %.068.i.i, i64 %index109
  %wide.load112 = load <4 x i8>, ptr %next.gep110, align 1, !tbaa !9
  store <4 x i8> %wide.load112, ptr %next.gep111, align 1, !tbaa !9
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %i.acl = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.acl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.aca, %n.vec108
  br i1 %cmp.n114, label %ZSTD_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.291.i.i.ph = phi ptr [ %.166.i.i, %iter.check ], [ %.166.i.i, %vector.memcheck ], [ %i.ace, %vec.epilog.iter.check ], [ %i.acj, %vec.epilog.middle.block ]
  %.16990.i.i.ph = phi ptr [ %.068.i.i, %iter.check ], [ %.068.i.i, %vector.memcheck ], [ %i.acf, %vec.epilog.iter.check ], [ %i.ack, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.291.i.i = phi ptr [ %i.acm, %.lr.ph.i.i ], [ %.291.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.16990.i.i = phi ptr [ %i.aco, %.lr.ph.i.i ], [ %.16990.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.291.i.i, i64 1
  %i.acn = load i8, ptr %.291.i.i, align 1, !tbaa !9
  %i.aco = getelementptr inbounds nuw i8, ptr %.16990.i.i, i64 1 ; 2 uses
  store i8 %i.acn, ptr %.16990.i.i, align 1, !tbaa !9
  %i.acp = icmp ult ptr %i.aco, %i.xw
  br i1 %i.acp, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !53

.preheader186.i:                                  ; preds = %.preheader186.i.preheader174, %.preheader186.i
  %.09.i84.i.i = phi ptr [ %i.acq, %.preheader186.i ], [ %.09.i84.i.i.ph, %.preheader186.i.preheader174 ] ; 2 uses
  %.0.i85.i.i = phi ptr [ %i.acr, %.preheader186.i ], [ %.0.i85.i.i.ph, %.preheader186.i.preheader174 ] ; 2 uses
  %.0.val.i86.i.i = load i64, ptr %.0.i85.i.i, align 1
  store i64 %.0.val.i86.i.i, ptr %.09.i84.i.i, align 1
  %i.acq = getelementptr inbounds nuw i8, ptr %.09.i84.i.i, i64 8 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i85.i.i, i64 8
  %i.acs = icmp ult ptr %i.acq, %i.xw
  br i1 %i.acs, label %.preheader186.i, label %ZSTD_execSequence.exit.i, !llvm.loop !54

ZSTD_execSequence.exit.i:                         ; preds = %.preheader186.i, %.lr.ph.i.i, %middle.block150, %middle.block, %vec.epilog.middle.block, %bb.cz
  %i.act = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.xy
  %i.acu = icmp ugt i32 %i.wv, 64
  br i1 %i.acu, label %ZSTD_decompressSequences.exit, label %bb.bz

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.acv = icmp ne i32 %.sroa.20.8.i, 64
  %i.acw = icmp ne ptr %.sroa.42112.8.i, %.786120.i.i
  %brmerge.i = select i1 %i.acw, i1 true, i1 %i.acv
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.da

bb.da:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.acx = ptrtoint ptr %.0138199.i to i64
  %i.acy = sub i64 %i.tq, %i.acx                  ; 2 uses
  %i.acz = icmp ugt ptr %.0138199.i, %i.cu
  br i1 %i.acz, label %ZSTD_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ada = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.acy ; 3 uses
  %i.adb = icmp ugt ptr %i.ada, %i.ct
  br i1 %i.adb, label %ZSTD_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not71.i = icmp eq ptr %i.cu, %.0138199.i
  br i1 %.not71.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not72.i = icmp eq ptr %.060202.i, %.0138199.i
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060202.i, ptr align 1 %.0138199.i, i64 %i.acy, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.464.i = phi ptr [ %i.ada, %bb.dd ], [ %.060202.i, %bb.dc ], [ %i.ada, %bb.de ]
  %i.adc = ptrtoint ptr %.464.i to i64
  %i.add = ptrtoint ptr %1 to i64
  %i.ade = sub i64 %i.adc, %i.add
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %ZSTD_wildcopy.exit.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit85.i, %FSE_initDState.exit94.i, %bb.k, %bb.n, %bb.a, %bb.df, %bb.db, %bb.da, %BIT_reloadDStream.exit.thread.i, %BIT_initDStream.exit.i, %bb.bn, %bb.bf, %bb.bd, %ZSTD_decodeSeqHeaders.exit.i, %ZSTD_decodeSeqHeaders.exit.thread.i, %ZSTD_decodeLiteralsBlock.exit.thread25
  %.0 = phi i64 [ -20, %bb.k ], [ -20, %ZSTD_decodeLiteralsBlock.exit.thread25 ], [ %.7.i.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.i ], [ %i.ade, %bb.df ], [ %i.of, %ZSTD_decodeSeqHeaders.exit.i ], [ -20, %BIT_reloadDStream.exit.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.da ], [ -70, %bb.db ], [ -20, %bb.bf ], [ -20, %bb.bd ], [ -20, %bb.bn ], [ -20, %bb.a ], [ -20, %bb.n ], [ -20, %FSE_initDState.exit94.i ], [ -20, %FSE_initDState.exit85.i ], [ -20, %ZSTD_execSequence.exit.i ], [ -20, %bb.ct ], [ -20, %ZSTD_wildcopy.exit.i.i ], [ -70, %bb.cs ], [ -20, %bb.cr ], [ -70, %bb.cq ], [ -20, %bb.cp ], [ -70, %ZSTD_decodeSequence.exit.i ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
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
begin_hunk_2_@HUF_decompress4X6:bb.a

.lr.ph94.preheader.i:                             ; preds = %.preheader87.i
  %i.r = zext i32 %.073.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i32 %.073.lcssa.i, 4
  br i1 %i.s, label %.lr.ph94.i.epil.preheader, label %.lr.ph94.preheader.i.new

.lr.ph94.preheader.i.new:                         ; preds = %.lr.ph94.preheader.i
  %unroll_iter = and i64 %i.r, 4294967292
  br label %.lr.ph94.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not86.i = icmp eq i64 %i.t, 0
  br i1 %.not86.i, label %HUF_readDTableX6.exit.thread, label %.lr.ph, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i107 = phi i64 [ %i.t, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ]
  %i.t = add nsw i64 %indvars.iv.i107, -1         ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %.preheader87.loopexit.i, !llvm.loop !90

.lr.ph94.i:                                       ; preds = %.lr.ph94.i, %.lr.ph94.preheader.i.new
  %indvars.iv116.i = phi i64 [ 1, %.lr.ph94.preheader.i.new ], [ %indvars.iv.next117.i.3, %.lr.ph94.i ] ; 6 uses
  %.07592.i = phi i32 [ 0, %.lr.ph94.preheader.i.new ], [ %i.al, %.lr.ph94.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph94.preheader.i.new ], [ %niter.next.3, %.lr.ph94.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = add i32 %i.y, %.07592.i                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv116.i
  store i32 %.07592.i, ptr %i.aa, align 4, !tbaa !3
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next117.i.1 = add nuw nsw i64 %indvars.iv116.i, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i.1
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !3
  %indvars.iv.next117.i.2 = add nuw nsw i64 %indvars.iv116.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = add i32 %i.ak, %i.ah                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i.2
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !3
  %indvars.iv.next117.i.3 = add nuw nsw i64 %indvars.iv116.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph94.i, !llvm.loop !91

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph94.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph94.i.epil.preheader

.lr.ph94.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.preheader.i
  %indvars.iv116.i.epil.init = phi i64 [ 1, %.lr.ph94.preheader.i ], [ %indvars.iv.next117.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07592.i.epil.init = phi i32 [ 0, %.lr.ph94.preheader.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph94.i.epil

.lr.ph94.i.epil:                                  ; preds = %.lr.ph94.i.epil, %.lr.ph94.i.epil.preheader
  %indvars.iv116.i.epil = phi i64 [ %indvars.iv116.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %indvars.iv.next117.i.epil, %.lr.ph94.i.epil ] ; 3 uses
  %.07592.i.epil = phi i32 [ %.07592.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph94.i.epil.preheader ], [ %epil.iter.next, %.lr.ph94.i.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %.07592.i.epil           ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv116.i.epil
  store i32 %.07592.i.epil, ptr %i.aq, align 4, !tbaa !3
  %indvars.iv.next117.i.epil = add nuw nsw i64 %indvars.iv116.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph94.i.epil, !llvm.loop !92

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.i.epil, %.preheader87.i
  %.075.lcssa.i = phi i32 [ 0, %.preheader87.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  store i32 %.075.lcssa.i, ptr %i.h, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !3   ; 4 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %._crit_edge99.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count122.i = zext i32 %i.ar to i64   ; 2 uses
  %xtraiter128 = and i64 %wide.trip.count122.i, 1
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph98.i.epil.preheader, label %.lr.ph98.preheader.i.new

.lr.ph98.preheader.i.new:                         ; preds = %.lr.ph98.preheader.i
  %unroll_iter132 = and i64 %wide.trip.count122.i, 4294967294
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i.new
  %indvars.iv119.i = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %indvars.iv.next120.i.1, %.lr.ph98.i ] ; 4 uses
  %niter133 = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %niter133.next.1, %.lr.ph98.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv119.i
  %i.au = load i8, ptr %i.at, align 2, !tbaa !9   ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !3
  %i.az = trunc i64 %indvars.iv119.i to i8
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ba ; 2 uses
  store i8 %i.az, ptr %i.bb, align 2, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.au, ptr %i.bc, align 1, !tbaa !68
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next120.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9   ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %i.bj = trunc i64 %indvars.iv.next120.i to i8
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bk ; 2 uses
  store i8 %i.bj, ptr %i.bl, align 2, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !68
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %niter133.next.1 = add i64 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i64 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %._crit_edge99.i.loopexit.unr-lcssa, label %.lr.ph98.i, !llvm.loop !93

._crit_edge99.i.loopexit.unr-lcssa:               ; preds = %.lr.ph98.i
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %._crit_edge99.i, label %.lr.ph98.i.epil.preheader

.lr.ph98.i.epil.preheader:                        ; preds = %._crit_edge99.i.loopexit.unr-lcssa, %.lr.ph98.preheader.i
  %indvars.iv119.i.epil.init = phi i64 [ 0, %.lr.ph98.preheader.i ], [ %indvars.iv.next120.i.1, %._crit_edge99.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod131 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv119.i.epil.init
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9   ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !3
  %i.bt = trunc i64 %indvars.iv119.i.epil.init to i8
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bu ; 2 uses
  store i8 %i.bt, ptr %i.bv, align 2, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bo, ptr %i.bw, align 1, !tbaa !68
  br label %._crit_edge99.i

._crit_edge99.i:                                  ; preds = %.lr.ph98.i.epil.preheader, %._crit_edge99.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.bx = add nuw nsw i32 %i.k, 1                 ; 2 uses
  %i.by = sub nsw i32 %i.bx, %.073.lcssa.i        ; 3 uses
  br i1 %.not8291.i, label %HUF_readDTableX6.exit, label %.lr.ph104.preheader.i

.lr.ph104.preheader.i:                            ; preds = %._crit_edge99.i
  %i.bz = add nuw nsw i32 %.073.lcssa.i, 1        ; 2 uses
  %wide.trip.count127.i = zext nneg i32 %i.bz to i64 ; 2 uses
  %i.ca = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %xtraiter134 = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.bz, 2
  br i1 %i.cb, label %.lr.ph104.i.epil.preheader, label %.lr.ph104.preheader.i.new

.lr.ph104.preheader.i.new:                        ; preds = %.lr.ph104.preheader.i
  %unroll_iter138 = and i64 %i.ca, 4294967294
  %invariant.op = sub i32 11, %i.k
  %invariant.op154 = sub i32 11, %i.k
  br label %.lr.ph104.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph104.i
  %lcmp.mod136.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod136.not, label %.preheader.i, label %.lr.ph104.i.epil.preheader

.lr.ph104.i.epil.preheader:                       ; preds = %.preheader.i.unr-lcssa, %.lr.ph104.preheader.i
  %indvars.iv124.i.epil.init = phi i64 [ 1, %.lr.ph104.preheader.i ], [ %indvars.iv.next125.i.1, %.preheader.i.unr-lcssa ]
  %.077102.i.epil.init = phi i32 [ 0, %.lr.ph104.preheader.i ], [ %i.cr, %.preheader.i.unr-lcssa ]
  %lcmp.mod137 = trunc i32 %.073.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i.epil.init
  store i32 %.077102.i.epil.init, ptr %i.cc, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph104.i.epil.preheader
  %i.cd = sub nsw i32 12, %i.by                   ; 2 uses
  %.not84110.i = icmp ugt i32 %i.by, %i.cd
  br i1 %.not84110.i, label %HUF_readDTableX6.exit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %.preheader.i
  %i.ce = zext i32 %.073.lcssa.i to i64
  %i.cf = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.073.lcssa.i, 8
  %n.vec = and i64 %i.cf, 4294967288              ; 3 uses
  %i.cg = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br label %.lr.ph108.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i, %.lr.ph104.preheader.i.new
  %indvars.iv124.i = phi i64 [ 1, %.lr.ph104.preheader.i.new ], [ %indvars.iv.next125.i.1, %.lr.ph104.i ] ; 5 uses
  %.077102.i = phi i32 [ 0, %.lr.ph104.preheader.i.new ], [ %i.cr, %.lr.ph104.i ] ; 2 uses
  %niter139 = phi i64 [ 0, %.lr.ph104.preheader.i.new ], [ %niter139.next.1, %.lr.ph104.i ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv124.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = trunc nuw nsw i64 %indvars.iv124.i to i32
  %.reass.reass = add i32 %i.cj, %invariant.op
  %i.ck = shl i32 %i.ci, %.reass.reass
  %i.cl = add i32 %i.ck, %.077102.i               ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  store i32 %.077102.i, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next125.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = trunc nuw nsw i64 %indvars.iv.next125.i to i32
  %.reass.1.reass = add i32 %i.cp, %invariant.op154
  %i.cq = shl i32 %i.co, %.reass.1.reass
  %i.cr = add i32 %i.cq, %i.cl                    ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  store i32 %i.cl, ptr %i.cs, align 4, !tbaa !3
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %niter139.next.1 = add nuw i64 %niter139, 2     ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph104.i, !llvm.loop !94

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.preheader, %._crit_edge109.i
  %.079111.i = phi i32 [ %i.dz, %._crit_edge109.i ], [ %i.by, %.lr.ph108.i.preheader ] ; 9 uses
  %9 = zext i32 %.079111.i to i64
  %10 = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %9 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %.lr.ph108.i.a

.lr.ph108.i.a:                                    ; preds = %.lr.ph108.i
  %i.ct = zext i32 %.079111.i to i64
  %11 = mul nuw nsw i64 %i.ct, 68
  %12 = add nsw i64 %11, -1
  %diff.check = icmp ult i64 %12, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph108.i.a
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.079111.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = or disjoint i64 %index, 1               ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <4 x i32>, ptr %i.cv, align 4, !tbaa !3
  %wide.load108 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !3
  %i.cx = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.cy = lshr <4 x i32> %wide.load108, %broadcast.splat
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !3
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge109.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph108.i.a, %.lr.ph108.i, %middle.block
  %indvars.iv129.i.ph = phi i64 [ 1, %.lr.ph108.i.a ], [ 1, %.lr.ph108.i ], [ %i.cg, %middle.block ] ; 4 uses
  %i.dc = sub nsw i64 %wide.trip.count127.i, %indvars.iv129.i.ph
  %i.dd = sub nsw i64 %i.ce, %indvars.iv129.i.ph
  %xtraiter140 = and i64 %i.dc, 3                 ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv129.i.prol = phi i64 [ %indvars.iv.next130.i.prol, %scalar.ph.prol ], [ %indvars.iv129.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv129.i.prol
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = lshr i32 %i.df, %.079111.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv129.i.prol
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %indvars.iv.next130.i.prol = add nuw nsw i64 %indvars.iv129.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter140
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !96

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv129.i.unr = phi i64 [ %indvars.iv129.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next130.i.prol, %scalar.ph.prol ]
  %i.di = icmp ult i64 %i.dd, 3
  br i1 %i.di, label %._crit_edge109.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i.3, %scalar.ph ], [ %indvars.iv129.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv129.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = lshr i32 %i.dk, %.079111.i
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv129.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !3
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = lshr i32 %i.do, %.079111.i
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next130.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %indvars.iv.next130.i.1 = add nuw nsw i64 %indvars.iv129.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = lshr i32 %i.ds, %.079111.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next130.i.1
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %indvars.iv.next130.i.2 = add nuw nsw i64 %indvars.iv129.i, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i.2
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = lshr i32 %i.dw, %.079111.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next130.i.2
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %exitcond133.not.i.3 = icmp eq i64 %indvars.iv.next130.i.3, %wide.trip.count127.i
  br i1 %exitcond133.not.i.3, label %._crit_edge109.i, label %scalar.ph, !llvm.loop !97

._crit_edge109.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dz = add i32 %.079111.i, 1                   ; 2 uses
  %.not84.i = icmp ugt i32 %i.dz, %i.cd
  br i1 %.not84.i, label %HUF_readDTableX6.exit, label %.lr.ph108.i, !llvm.loop !98

HUF_readDTableX6.exit.thread:                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a, %bb.b
  %.0.i.ph = phi i64 [ -44, %bb.b ], [ %i.i, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %HUF_decompress4X6_usingDTable.exit

HUF_readDTableX6.exit:                            ; preds = %._crit_edge109.i, %._crit_edge99.i, %.preheader.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 18 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8196
  call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.ea, ptr noundef %i.eb, i32 noundef 12, ptr noundef %i.f, i32 noundef 0, i32 noundef 1, i32 noundef %.073.lcssa.i, ptr noundef %8, i32 noundef %.075.lcssa.i, ptr noundef %i.c, i32 noundef %i.bx, i32 0, i16 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not17 = icmp ult i64 %i.i, %3
  br i1 %.not17, label %bb.c, label %HUF_decompress4X6_usingDTable.exit

bb.c:                                             ; preds = %HUF_readDTableX6.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 10 uses
  %i.ed = sub nuw i64 %3, %i.i                    ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 10
  br i1 %i.ee, label %HUF_decompress4X6_usingDTable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.eg = load i32, ptr %i.g, align 16, !tbaa !3  ; 6 uses
  %i.eh = add i32 %i.eg, -1
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ej ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val190.i = load i16, ptr %i.ec, align 1       ; 5 uses
  %i.el = zext i16 %.val190.i to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %.val189.i = load i16, ptr %i.em, align 1       ; 5 uses
  %i.en = zext i16 %.val189.i to i64              ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.val.i = load i16, ptr %i.eo, align 1          ; 5 uses
  %i.ep = zext i16 %.val.i to i64                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 6 ; 4 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.el  ; 12 uses
  %i.es = getelementptr i8, ptr %i.er, i64 %i.en  ; 12 uses
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ep  ; 3 uses
  %i.eu = add i64 %1, 3
  %i.ev = lshr i64 %i.eu, 2                       ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %i.ev ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ev ; 6 uses
  %i.ez = add nuw nsw i64 %i.el, 6
  %i.fa = add nuw nsw i64 %i.ez, %i.en
  %i.fb = add nuw nsw i64 %i.fa, %i.ep            ; 2 uses
  %i.fc = sub i64 %i.ed, %i.fb
  %i.fd = icmp ugt i64 %i.fb, %i.ed
  br i1 %i.fd, label %BIT_initDStream.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fe = icmp eq i16 %.val190.i, 0
  br i1 %i.fe, label %BIT_initDStream.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ff = icmp ugt i16 %.val190.i, 7
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.eq, ptr %i.fg, align 8, !tbaa !61
  br i1 %i.ff, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fh = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !63
  %.val.i.i = load i64, ptr %i.fh, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !64
  %i.fj = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.fl = trunc nuw nsw i64 %i.fj to i32
  %i.fm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fl, i1 true)
  %i.fn = xor i32 %i.fm, 31
  %i.fo = sub nuw nsw i32 8, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !65
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.eq, ptr %i.fq, align 8, !tbaa !63
  %i.fr = load i8, ptr %i.eq, align 1, !tbaa !9
  %i.fs = zext i8 %i.fr to i64                    ; 7 uses
  store i64 %i.fs, ptr %4, align 8, !tbaa !64
  switch i16 %.val190.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !9
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 48
  %i.fx = or disjoint i64 %i.fw, %i.fs
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fy = phi i64 [ %i.fx, %bb.i ], [ %i.fs, %bb.h ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ec, i64 11
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !9
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 40
  %i.gd = add nuw nsw i64 %i.gc, %i.fy
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ge = phi i64 [ %i.gd, %bb.j ], [ %i.fs, %bb.h ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ec, i64 10
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !9
  %i.gh = zext i8 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 32
  %i.gj = add nuw nsw i64 %i.gi, %i.ge
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.gk = phi i64 [ %i.gj, %bb.k ], [ %i.fs, %bb.h ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !9
  %i.gn = zext i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 24
  %i.gp = add nuw nsw i64 %i.go, %i.gk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.gq = phi i64 [ %i.gp, %bb.l ], [ %i.fs, %bb.h ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !9
  %i.gt = zext i8 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 16
  %i.gv = add nuw nsw i64 %i.gu, %i.gq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.gw = phi i64 [ %i.gv, %bb.m ], [ %i.fs, %bb.h ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ec, i64 7
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !9
  %i.gz = zext i8 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 8
  %i.hb = add nuw nsw i64 %i.ha, %i.gw
  store i64 %i.hb, ptr %4, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.hc = getelementptr i8, ptr %i.er, i64 -1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !9   ; 2 uses
  %i.he = icmp eq i8 %i.hd, 0
  br i1 %i.he, label %BIT_initDStream.exit.thread.i, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.o
  %i.hf = zext i8 %i.hd to i32
  %i.hg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hf, i1 true)
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hi = shl nuw nsw i16 %.val190.i, 3
  %i.hj = zext nneg i16 %i.hi to i32
  %reass.sub = sub nsw i32 %i.hg, %i.hj
  %i.hk = add nsw i32 %reass.sub, 41
  store i32 %i.hk, ptr %i.hh, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %.thread49.i.i, %.thread.i.i
  %i.hl = icmp eq i16 %.val189.i, 0
  br i1 %i.hl, label %BIT_initDStream.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hm = icmp ugt i16 %.val189.i, 7
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.hn, align 8, !tbaa !61
  br i1 %i.hm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ho = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !63
  %.val.i193.i = load i64, ptr %i.ho, align 1     ; 2 uses
  store i64 %.val.i193.i, ptr %5, align 8, !tbaa !64
  %i.hq = lshr i64 %.val.i193.i, 56               ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
end_hunk_2
