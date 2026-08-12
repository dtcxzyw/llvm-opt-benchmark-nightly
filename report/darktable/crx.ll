inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z29crxDecodeTopLineNoRefPrevLineP12CrxBandParam:bb.a
  %i.to = load i32, ptr %i.l, align 4, !tbaa !25  ; 4 uses
  %.not.i144 = icmp ugt i32 %i.tn, %i.to
  br i1 %.not.i144, label %.preheader354, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tp = zext i32 %i.tm to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 1, !tbaa !21
  %i.ts = tail call i32 @llvm.bswap.i32(i32 %i.tr) ; 2 uses
  store i32 %i.tn, ptr %i.k, align 8, !tbaa !26
  %.not.i256 = icmp ult i32 %i.tn, %i.to
  br i1 %.not.i256, label %_ZL13crxFillBufferP12CrxBitstream.exit259, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tt = load i64, ptr %i.m, align 8, !tbaa !27
  %.not19.i257 = icmp eq i64 %i.tt, 0
  br i1 %.not19.i257, label %_ZL13crxFillBufferP12CrxBitstream.exit259, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.tu = zext i32 %i.to to i64
  %i.tv = load i64, ptr %i.n, align 8, !tbaa !28
  %i.tw = add nsw i64 %i.tv, %i.tu
  store i64 %i.tw, ptr %i.n, align 8, !tbaa !28
  %i.tx = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !30
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 120
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = tail call noundef i32 %i.ua(ptr noundef nonnull align 8 dereferenceable(8) %i.tx), !call_target !32, !inline_history !39 ; 0 uses
  %i.uc = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.ud = load i64, ptr %i.n, align 8, !tbaa !28
  %i.ue = load ptr, ptr %i.uc, align 8, !tbaa !30
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.ug = load ptr, ptr %i.uf, align 8
  %i.uh = tail call noundef i32 %i.ug(ptr noundef nonnull align 8 dereferenceable(8) %i.uc, i64 noundef %i.ud, i32 noundef 0), !call_target !40, !inline_history !39 ; 0 uses
  %i.ui = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.uj = load i64, ptr %i.m, align 8, !tbaa !27
  %spec.select.i258 = tail call i64 @llvm.smin.i64(i64 %i.uj, i64 65536)
  %i.uk = load ptr, ptr %i.ui, align 8, !tbaa !30
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  %i.un = tail call noundef i32 %i.um(ptr noundef nonnull align 8 dereferenceable(8) %i.ui, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %spec.select.i258), !call_target !46, !inline_history !39
  store i32 %i.un, ptr %i.l, align 4, !tbaa !25
  %i.uo = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !30
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 128
  %i.ur = load ptr, ptr %i.uq, align 8
  tail call void %i.ur(ptr noundef nonnull align 8 dereferenceable(8) %i.uo), !call_target !53, !inline_history !39
  %i.us = load i32, ptr %i.l, align 4, !tbaa !25  ; 2 uses
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.uu = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 4, ptr %i.uu, align 16, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.uu, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.uv = zext i32 %i.us to i64
  %i.uw = load i64, ptr %i.m, align 8, !tbaa !27
  %i.ux = sub nsw i64 %i.uw, %i.uv
  store i64 %i.ux, ptr %i.m, align 8, !tbaa !27
  br label %_ZL13crxFillBufferP12CrxBitstream.exit259

_ZL13crxFillBufferP12CrxBitstream.exit259:        ; preds = %bb.bv, %bb.bw, %bb.bz
  %i.uy = sub nsw i32 %i.tk, %i.sw                ; 2 uses
  %i.uz = sub nsw i32 32, %i.uy
  store i32 %i.uz, ptr %i.j, align 4, !tbaa !24
  %i.va = lshr i32 %i.ts, %i.sw
  %i.vb = or i32 %i.va, %i.sv
  %i.vc = sub nsw i32 32, %i.tk
  %i.vd = lshr i32 %i.vb, %i.vc
  %i.ve = shl i32 %i.ts, %i.uy
  store i32 %i.ve, ptr %i.i, align 8, !tbaa !23
  br label %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit148

.preheader354:                                    ; preds = %bb.bu, %_ZL13crxFillBufferP12CrxBitstream.exit263
  %i.vf = phi i32 [ %i.wr, %_ZL13crxFillBufferP12CrxBitstream.exit263 ], [ %i.to, %bb.bu ] ; 5 uses
  %.043.i145 = phi i32 [ %i.wv, %_ZL13crxFillBufferP12CrxBitstream.exit263 ], [ %i.sv, %bb.bu ] ; 2 uses
  %.042.i146 = phi i32 [ %i.vh, %_ZL13crxFillBufferP12CrxBitstream.exit263 ], [ %i.sw, %bb.bu ] ; 3 uses
  %i.vg = load i32, ptr %i.k, align 8, !tbaa !26  ; 3 uses
  %.not52.i147 = icmp ult i32 %i.vg, %i.vf
  br i1 %.not52.i147, label %bb.ca, label %.loopexit355

bb.ca:                                            ; preds = %.preheader354
  %i.vh = add nsw i32 %.042.i146, 8               ; 3 uses
  %i.vi = add nuw i32 %i.vg, 1                    ; 2 uses
  store i32 %i.vi, ptr %i.k, align 8, !tbaa !26
  %i.vj = zext i32 %i.vg to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !60
  %.not.i260 = icmp ult i32 %i.vi, %i.vf
  br i1 %.not.i260, label %_ZL13crxFillBufferP12CrxBitstream.exit263, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vm = load i64, ptr %i.m, align 8, !tbaa !27
  %.not19.i261 = icmp eq i64 %i.vm, 0
  br i1 %.not19.i261, label %_ZL13crxFillBufferP12CrxBitstream.exit263, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.vn = zext i32 %i.vf to i64
  %i.vo = load i64, ptr %i.n, align 8, !tbaa !28
  %i.vp = add nsw i64 %i.vo, %i.vn
  store i64 %i.vp, ptr %i.n, align 8, !tbaa !28
  %i.vq = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !30
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 120
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = tail call noundef i32 %i.vt(ptr noundef nonnull align 8 dereferenceable(8) %i.vq), !call_target !32, !inline_history !39 ; 0 uses
  %i.vv = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.vw = load i64, ptr %i.n, align 8, !tbaa !28
  %i.vx = load ptr, ptr %i.vv, align 8, !tbaa !30
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = tail call noundef i32 %i.vz(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, i64 noundef %i.vw, i32 noundef 0), !call_target !40, !inline_history !39 ; 0 uses
  %i.wb = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.wc = load i64, ptr %i.m, align 8, !tbaa !27
  %spec.select.i262 = tail call i64 @llvm.smin.i64(i64 %i.wc, i64 65536)
  %i.wd = load ptr, ptr %i.wb, align 8, !tbaa !30
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 24
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = tail call noundef i32 %i.wf(ptr noundef nonnull align 8 dereferenceable(8) %i.wb, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %spec.select.i262), !call_target !46, !inline_history !39
  store i32 %i.wg, ptr %i.l, align 4, !tbaa !25
  %i.wh = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !30
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 128
  %i.wk = load ptr, ptr %i.wj, align 8
  tail call void %i.wk(ptr noundef nonnull align 8 dereferenceable(8) %i.wh), !call_target !53, !inline_history !39
  %i.wl = load i32, ptr %i.l, align 4, !tbaa !25  ; 3 uses
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.wn = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 4, ptr %i.wn, align 16, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.wn, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.wo = zext i32 %i.wl to i64
  %i.wp = load i64, ptr %i.m, align 8, !tbaa !27
  %i.wq = sub nsw i64 %i.wp, %i.wo
  store i64 %i.wq, ptr %i.m, align 8, !tbaa !27
  br label %_ZL13crxFillBufferP12CrxBitstream.exit263

_ZL13crxFillBufferP12CrxBitstream.exit263:        ; preds = %bb.ca, %bb.cb, %bb.ce
  %i.wr = phi i32 [ %i.vf, %bb.ca ], [ %i.vf, %bb.cb ], [ %i.wl, %bb.ce ]
  %i.ws = zext i8 %i.vl to i32
  %i.wt = sub nsw i32 24, %.042.i146
  %i.wu = shl i32 %i.ws, %i.wt
  %i.wv = or i32 %i.wu, %.043.i145                ; 2 uses
  %i.ww = icmp slt i32 %i.vh, %i.tk
  br i1 %i.ww, label %.preheader354, label %.loopexit355, !llvm.loop !62

.loopexit355:                                     ; preds = %_ZL13crxFillBufferP12CrxBitstream.exit263, %.preheader354, %bb.bt
  %.144.i141 = phi i32 [ %i.sv, %bb.bt ], [ %i.wv, %_ZL13crxFillBufferP12CrxBitstream.exit263 ], [ %.043.i145, %.preheader354 ] ; 2 uses
  %.1.i142 = phi i32 [ %i.sw, %bb.bt ], [ %i.vh, %_ZL13crxFillBufferP12CrxBitstream.exit263 ], [ %.042.i146, %.preheader354 ]
  %i.wx = sub nsw i32 32, %i.tk
  %i.wy = lshr i32 %.144.i141, %i.wx
  %i.wz = shl i32 %.144.i141, %i.tk
  store i32 %i.wz, ptr %i.i, align 8, !tbaa !23
  %i.xa = sub nsw i32 %.1.i142, %i.tk
  store i32 %i.xa, ptr %i.j, align 4, !tbaa !24
  br label %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit148

_Z19crxBitstreamGetBitsP12CrxBitstreami.exit148:  ; preds = %_ZL13crxFillBufferP12CrxBitstream.exit259, %.loopexit355
  %.0.i143 = phi i32 [ %i.vd, %_ZL13crxFillBufferP12CrxBitstream.exit259 ], [ %i.wy, %.loopexit355 ]
  %i.xb = add i32 %.0.i143, %.089
  %.pr = load i32, ptr %i.q, align 8, !tbaa !64
  br label %bb.cf

bb.cf:                                            ; preds = %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit148, %bb.bs
  %i.xc = phi i32 [ %.pr, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit148 ], [ %i.th, %bb.bs ] ; 2 uses
  %.2 = phi i32 [ %i.xb, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit148 ], [ %.089, %bb.bs ] ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 0
  br i1 %i.xd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.xe = add nsw i32 %i.xc, -1
  store i32 %i.xe, ptr %i.q, align 8, !tbaa !64
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.xf = icmp sgt i32 %.2, %.091464
  br i1 %i.xf, label %.thread331, label %.thread

.thread:                                          ; preds = %bb.bq, %bb.bn, %bb.br, %bb.ch
  %.3 = phi i32 [ %.2, %bb.ch ], [ %.089, %bb.br ], [ %.091464, %bb.bn ], [ %.091464, %bb.bq ] ; 4 uses
  %i.xg = sub nsw i32 %.091464, %.3               ; 2 uses
  %i.xh = icmp sgt i32 %.3, 0
  br i1 %i.xh, label %.lr.ph444, label %.thread.thread

.lr.ph444:                                        ; preds = %.thread
  %.promoted = load ptr, ptr %i.r, align 8, !tbaa !80 ; 2 uses
  %.promoted447 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.xi = zext nneg i32 %.3 to i64
  %i.xj = shl nuw nsw i64 %i.xi, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.promoted, i8 0, i64 %i.xj, i1 false), !tbaa !21
  %scevgep = getelementptr nuw i8, ptr %.promoted447, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep, i8 0, i64 %i.xj, i1 false), !tbaa !21
  %i.xk = add nsw i32 %.3, -1
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = shl nuw nsw i64 %i.xl, 2                ; 2 uses
  %scevgep526 = getelementptr nuw i8, ptr %scevgep, i64 %i.xm
  %scevgep527 = getelementptr i8, ptr %.promoted, i64 4
  %scevgep528 = getelementptr i8, ptr %scevgep527, i64 %i.xm
  store ptr %scevgep528, ptr %i.r, align 8, !tbaa !80
  store ptr %scevgep526, ptr %i.c, align 8, !tbaa !22
  br label %.thread.thread

.thread.thread:                                   ; preds = %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit164, %.lr.ph444, %.thread
  %i.xn = phi i32 [ %i.xg, %.thread ], [ %i.xg, %.lr.ph444 ], [ %.091464, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit164 ] ; 2 uses
  %i.xo = icmp slt i32 %i.xn, 1
  br i1 %i.xo, label %.thread337.loopexit, label %bb.ci

bb.ci:                                            ; preds = %.thread.thread
  %i.xp = load i32, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %.not.i183 = icmp eq i32 %i.xp, 0
  br i1 %.not.i183, label %bb.cj, label %_Z20crxBitstreamGetZerosP12CrxBitstream.exit198.thread

_Z20crxBitstreamGetZerosP12CrxBitstream.exit198.thread: ; preds = %bb.ci
  %i.xq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xp, i1 true) ; 3 uses
  %i.xr = xor i32 %i.xq, 31
  %i.xs = sub nuw nsw i32 32, %i.xr
  %i.xt = shl i32 %i.xp, %i.xs                    ; 2 uses
  store i32 %i.xt, ptr %i.i, align 8, !tbaa !23
  %.neg.i184 = xor i32 %i.xq, -1
  %i.xu = load i32, ptr %i.j, align 4, !tbaa !24
  %i.xv = add i32 %i.xu, %.neg.i184               ; 2 uses
  store i32 %i.xv, ptr %i.j, align 4, !tbaa !24
  br label %bb.dj

bb.cj:                                            ; preds = %bb.ci
  %i.xw = load i32, ptr %i.j, align 4, !tbaa !24
  %.pre529 = load i32, ptr %i.l, align 4, !tbaa !25 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cw, %bb.cj
  %i.xx = phi i32 [ %.pre529, %bb.cj ], [ %i.abn, %bb.cw ] ; 2 uses
  %i.xy = phi i32 [ %.pre529, %bb.cj ], [ %i.abo, %bb.cw ] ; 3 uses
  %.033.i186 = phi i32 [ %i.xw, %bb.cj ], [ %i.abp, %bb.cw ] ; 2 uses
  %i.xz = load i32, ptr %i.k, align 8, !tbaa !26  ; 3 uses
  %i.ya = add i32 %i.xz, 4                        ; 2 uses
  %.not48.i188449 = icmp ugt i32 %i.ya, %i.xy
  br i1 %.not48.i188449, label %._crit_edge453, label %.lr.ph452

.lr.ph452:                                        ; preds = %bb.ck, %bb.cq
  %i.yb = phi i32 [ %i.zn, %bb.cq ], [ %i.xx, %bb.ck ] ; 2 uses
  %i.yc = phi i32 [ %i.zn, %bb.cq ], [ %i.xy, %bb.ck ] ; 2 uses
  %i.yd = phi i32 [ %i.aaa, %bb.cq ], [ %i.ya, %bb.ck ] ; 2 uses
  %i.ye = phi i32 [ %i.zz, %bb.cq ], [ %i.xz, %bb.ck ]
  %.1.i187450 = phi i32 [ %i.zy, %bb.cq ], [ %.033.i186, %bb.ck ] ; 2 uses
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 1, !tbaa !21 ; 2 uses
  store i32 %i.yd, ptr %i.k, align 8, !tbaa !26
  %.not.i264 = icmp ult i32 %i.yd, %i.yc
  br i1 %.not.i264, label %_ZL13crxFillBufferP12CrxBitstream.exit267, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph452
  %i.yi = load i64, ptr %i.m, align 8, !tbaa !27
  %.not19.i265 = icmp eq i64 %i.yi, 0
  br i1 %.not19.i265, label %_ZL13crxFillBufferP12CrxBitstream.exit267, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.yj = zext i32 %i.yc to i64
  %i.yk = load i64, ptr %i.n, align 8, !tbaa !28
  %i.yl = add nsw i64 %i.yk, %i.yj
  store i64 %i.yl, ptr %i.n, align 8, !tbaa !28
  %i.ym = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !30
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 120
  %i.yp = load ptr, ptr %i.yo, align 8
  %i.yq = tail call noundef i32 %i.yp(ptr noundef nonnull align 8 dereferenceable(8) %i.ym), !call_target !32, !inline_history !39 ; 0 uses
  %i.yr = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.ys = load i64, ptr %i.n, align 8, !tbaa !28
  %i.yt = load ptr, ptr %i.yr, align 8, !tbaa !30
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 32
  %i.yv = load ptr, ptr %i.yu, align 8
  %i.yw = tail call noundef i32 %i.yv(ptr noundef nonnull align 8 dereferenceable(8) %i.yr, i64 noundef %i.ys, i32 noundef 0), !call_target !40, !inline_history !39 ; 0 uses
  %i.yx = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.yy = load i64, ptr %i.m, align 8, !tbaa !27
  %spec.select.i266 = tail call i64 @llvm.smin.i64(i64 %i.yy, i64 65536)
  %i.yz = load ptr, ptr %i.yx, align 8, !tbaa !30
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = tail call noundef i32 %i.zb(ptr noundef nonnull align 8 dereferenceable(8) %i.yx, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %spec.select.i266), !call_target !46, !inline_history !39
  store i32 %i.zc, ptr %i.l, align 4, !tbaa !25
  %i.zd = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !30
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 128
  %i.zg = load ptr, ptr %i.zf, align 8
  tail call void %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %i.zd), !call_target !53, !inline_history !39
  %i.zh = load i32, ptr %i.l, align 4, !tbaa !25  ; 3 uses
  %i.zi = icmp eq i32 %i.zh, 0
  br i1 %i.zi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.zj = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 4, ptr %i.zj, align 16, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.zj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.zk = zext i32 %i.zh to i64
  %i.zl = load i64, ptr %i.m, align 8, !tbaa !27
  %i.zm = sub nsw i64 %i.zl, %i.zk
  store i64 %i.zm, ptr %i.m, align 8, !tbaa !27
  br label %_ZL13crxFillBufferP12CrxBitstream.exit267

_ZL13crxFillBufferP12CrxBitstream.exit267:        ; preds = %.lr.ph452, %bb.cl, %bb.co
  %i.zn = phi i32 [ %i.yb, %.lr.ph452 ], [ %i.yb, %bb.cl ], [ %i.zh, %bb.co ] ; 6 uses
  %.not51.i189 = icmp eq i32 %i.yh, 0
  br i1 %.not51.i189, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZL13crxFillBufferP12CrxBitstream.exit267
  %i.zo = tail call i32 @llvm.bswap.i32(i32 %i.yh) ; 2 uses
  %i.zp = zext i32 %i.zo to i64
  %i.zq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zo, i1 true)
  %i.zr = xor i32 %i.zq, 31                       ; 3 uses
  %i.zs = add i32 %.1.i187450, 31
  %i.zt = sub i32 %i.zs, %i.zr
  %i.zu = sub nuw nsw i32 32, %i.zr
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = shl nuw i64 %i.zp, %i.zv
  %i.zx = and i64 %i.zw, 4294967294
  br label %_Z20crxBitstreamGetZerosP12CrxBitstream.exit198

bb.cq:                                            ; preds = %_ZL13crxFillBufferP12CrxBitstream.exit267
  %i.zy = add i32 %.1.i187450, 32                 ; 2 uses
  %i.zz = load i32, ptr %i.k, align 8, !tbaa !26  ; 3 uses
  %i.aaa = add i32 %i.zz, 4                       ; 2 uses
  %.not48.i188 = icmp ugt i32 %i.aaa, %i.zn
  br i1 %.not48.i188, label %._crit_edge453, label %.lr.ph452, !llvm.loop !58

._crit_edge453:                                   ; preds = %bb.cq, %bb.ck
  %i.aab = phi i32 [ %i.xx, %bb.ck ], [ %i.zn, %bb.cq ] ; 3 uses
  %i.aac = phi i32 [ %i.xy, %bb.ck ], [ %i.zn, %bb.cq ] ; 5 uses
  %.1.i187.lcssa = phi i32 [ %.033.i186, %bb.ck ], [ %i.zy, %bb.cq ] ; 2 uses
  %.lcssa402 = phi i32 [ %i.xz, %bb.ck ], [ %i.zz, %bb.cq ] ; 2 uses
  %i.aad = add i32 %.lcssa402, 1                  ; 3 uses
  %i.aae = icmp ult i32 %i.aac, %i.aad
  br i1 %i.aae, label %.split.loop.exit460, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge453
  store i32 %i.aad, ptr %i.k, align 8, !tbaa !26
  %i.aaf = zext i32 %.lcssa402 to i64
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !60 ; 2 uses
  %.not.i268 = icmp ult i32 %i.aad, %i.aac
  br i1 %.not.i268, label %_ZL13crxFillBufferP12CrxBitstream.exit271, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aai = load i64, ptr %i.m, align 8, !tbaa !27
  %.not19.i269 = icmp eq i64 %i.aai, 0
  br i1 %.not19.i269, label %_ZL13crxFillBufferP12CrxBitstream.exit271, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.aaj = zext i32 %i.aac to i64
  %i.aak = load i64, ptr %i.n, align 8, !tbaa !28
  %i.aal = add nsw i64 %i.aak, %i.aaj
  store i64 %i.aal, ptr %i.n, align 8, !tbaa !28
  %i.aam = load ptr, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !30
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 120
  %i.aap = load ptr, ptr %i.aao, align 8
  %i.aaq = tail call noundef i32 %i.aap(ptr noundef nonnull align 8 dereferenceable(8) %i.aam), !call_target !32, !inline_history !39 ; 0 uses
  %i.aar = load ptr, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.aas = load i64, ptr %i.n, align 8, !tbaa !28
  %i.aat = load ptr, ptr %i.aar, align 8, !tbaa !30
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 32
  %i.aav = load ptr, ptr %i.aau, align 8
  %i.aaw = tail call noundef i32 %i.aav(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, i64 noundef %i.aas, i32 noundef 0), !call_target !40, !inline_history !39 ; 0 uses
  %i.aax = load ptr, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.aay = load i64, ptr %i.m, align 8, !tbaa !27
  %spec.select.i270 = tail call i64 @llvm.smin.i64(i64 %i.aay, i64 65536)
  %i.aaz = load ptr, ptr %i.aax, align 8, !tbaa !30
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8
  %i.abc = tail call noundef i32 %i.abb(ptr noundef nonnull align 8 dereferenceable(8) %i.aax, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %spec.select.i270), !call_target !46, !inline_history !39
  store i32 %i.abc, ptr %i.l, align 4, !tbaa !25
  %i.abd = load ptr, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !30
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 128
  %i.abg = load ptr, ptr %i.abf, align 8
  tail call void %i.abg(ptr noundef nonnull align 8 dereferenceable(8) %i.abd), !call_target !53, !inline_history !39
  %i.abh = load i32, ptr %i.l, align 4, !tbaa !25 ; 4 uses
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.abj = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 4, ptr %i.abj, align 16, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.abj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.abk = zext i32 %i.abh to i64
  %i.abl = load i64, ptr %i.m, align 8, !tbaa !27
  %i.abm = sub nsw i64 %i.abl, %i.abk
  store i64 %i.abm, ptr %i.m, align 8, !tbaa !27
  br label %_ZL13crxFillBufferP12CrxBitstream.exit271
end_hunk_0
