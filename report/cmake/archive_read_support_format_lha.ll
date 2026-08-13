inline.NumInlined: 100
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@archive_read_format_lha_read_data:bb.a
  %.1.in.i.i263.i.i.i = load i16, ptr %.1.in.in.i.i262.i.i.i, align 2, !tbaa !42
  %.1.i.i264.i.i.i = zext i16 %.1.in.i.i263.i.i.i to i32 ; 3 uses
  %.not.i.i265.i.i.i = icmp sgt i32 %i.wc, %.1.i.i264.i.i.i
  br i1 %.not.i.i265.i.i.i, label %.lzh_decode_huffman.exit266.i.i.i.loopexit_crit_edge376, label %.lr.ph.i.i255.i.i.i, !llvm.loop !153

.lzh_decode_huffman.exit266.i.i.i.loopexit_crit_edge376: ; preds = %bb.eb
  br label %lzh_decode_huffman.exit266.i.i.i, !llvm.loop !153

lzh_decode_huffman.exit266.i.i.i:                 ; preds = %.lr.ph.i.i255.i.i.i, %.lr.ph373, %.lr.ph.preheader.i.i254.i.i.i, %.lzh_decode_huffman.exit266.i.i.i.loopexit_crit_edge376, %bb.ea
  %.0.i259.i.i.i = phi i32 [ %i.wb, %bb.ea ], [ 0, %.lr.ph.preheader.i.i254.i.i.i ], [ %.1.i.i264.i.i.i, %.lzh_decode_huffman.exit266.i.i.i.loopexit_crit_edge376 ], [ 0, %.lr.ph373 ], [ 0, %.lr.ph.i.i255.i.i.i ] ; 2 uses
  %i.wp = zext nneg i32 %.0.i259.i.i.i to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !9
  %i.ws = zext i8 %i.wr to i32
  %i.wt = sub nsw i32 %i.vm, %i.ws
  store i32 %i.wt, ptr %i.el, align 8, !tbaa !138
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %lzh_decode_huffman.exit266.i.i.i, %lzh_decode_huffman.exit252.i.i.i, %bb.dh
  %.3190.i.i.i = phi i32 [ %.2189.i.i.i, %lzh_decode_huffman.exit266.i.i.i ], [ %.2189.i.i.i, %lzh_decode_huffman.exit252.i.i.i ], [ %i.pw, %bb.dh ] ; 3 uses
  %.1180.i.i.i = phi i32 [ %.0.i259.i.i.i, %lzh_decode_huffman.exit266.i.i.i ], [ %.0.i245.i.i.i, %lzh_decode_huffman.exit252.i.i.i ], [ %i.pu, %bb.dh ] ; 4 uses
  %.2174.i.i.i = phi i32 [ %.1173.i.i.i, %lzh_decode_huffman.exit266.i.i.i ], [ %.1173.i.i.i, %lzh_decode_huffman.exit252.i.i.i ], [ %i.ps, %bb.dh ] ; 2 uses
  %.3.i.i.i = phi i32 [ %.2.i.i.i, %lzh_decode_huffman.exit266.i.i.i ], [ %.2.i.i.i, %lzh_decode_huffman.exit252.i.i.i ], [ %i.pq, %bb.dh ] ; 2 uses
  %i.wu = icmp sgt i32 %.1180.i.i.i, 1
  br i1 %i.wu, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %.loopexit.i.i.i
  %i.wv = add nsw i32 %.1180.i.i.i, -1            ; 5 uses
  %i.ww = load i32, ptr %i.el, align 8, !tbaa !138 ; 2 uses
  %.not215.i.i.i = icmp slt i32 %i.ww, %i.wv
  br i1 %.not215.i.i.i, label %bb.ed, label %.thread.i22.i.i

bb.ed:                                            ; preds = %bb.ec
  %i.wx = call fastcc i32 @lzh_br_fillup(ptr noundef nonnull %i.dv, ptr noundef nonnull %4)
  %.not216.i.i.i = icmp eq i32 %i.wx, 0
  %i.wy = load i32, ptr %i.el, align 8            ; 2 uses
  %.not217.i.i.i = icmp slt i32 %i.wy, %i.wv
  %or.cond.i23.i.i = select i1 %.not216.i.i.i, i1 %.not217.i.i.i, i1 false
  br i1 %or.cond.i23.i.i, label %bb.ee, label %.thread.i22.i.i

bb.ee:                                            ; preds = %bb.ed
  br i1 %i.eg, label %.thread270.i.i.i, label %bb.ef

.thread.i22.i.i:                                  ; preds = %bb.ed, %bb.ec
  %i.wz = phi i32 [ %i.ww, %bb.ec ], [ %i.wy, %bb.ed ]
  %i.xa = shl nuw i32 1, %i.wv
  %i.xb = load i64, ptr %4, align 8, !tbaa !146
  %i.xc = sub nsw i32 %i.wz, %i.wv                ; 2 uses
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = lshr i64 %i.xb, %i.xd
  %i.xf = trunc i64 %i.xe to i32
  %i.xg = zext nneg i32 %i.wv to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr @cache_masks, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !42
  %i.xj = zext i16 %i.xi to i32
  %i.xk = and i32 %i.xf, %i.xj
  %i.xl = add nuw nsw i32 %i.xk, %i.xa
  store i32 %i.xc, ptr %i.el, align 8, !tbaa !138
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 %.2174.i.i.i, ptr %i.pr, align 8, !tbaa !158
  store i32 %.1180.i.i.i, ptr %i.pt, align 4, !tbaa !159
  br label %.thread274.i.i.i

bb.eg:                                            ; preds = %.thread.i22.i.i, %.loopexit.i.i.i
  %.3182.i.i.i = phi i32 [ %i.xl, %.thread.i22.i.i ], [ %.1180.i.i.i, %.loopexit.i.i.i ]
  %i.xm = xor i32 %.3182.i.i.i, -1
  %i.xn = add i32 %.3190.i.i.i, %i.xm
  %i.xo = and i32 %i.xn, %i.py
  br label %.loopexit374.i.i.i

.loopexit374.i.i.i:                               ; preds = %bb.eg, %bb.dh
  %.4191.i.i.i = phi i32 [ %.3190.i.i.i, %bb.eg ], [ %i.pw, %bb.dh ]
  %.4183.i.i.i = phi i32 [ %i.xo, %bb.eg ], [ %i.pu, %bb.dh ]
  %.3175.i.i.i = phi i32 [ %.2174.i.i.i, %bb.eg ], [ %i.ps, %bb.dh ]
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.eg ], [ %i.pq, %bb.dh ] ; 3 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ep, %.loopexit374.i.i.i
  %.5192.i.i.i = phi i32 [ %.4191.i.i.i, %.loopexit374.i.i.i ], [ %i.xs, %bb.ep ] ; 4 uses
  %.5184.i.i.i = phi i32 [ %.4183.i.i.i, %.loopexit374.i.i.i ], [ %i.yz, %bb.ep ] ; 4 uses
  %.4176.i.i.i = phi i32 [ %.3175.i.i.i, %.loopexit374.i.i.i ], [ %i.yy, %bb.ep ] ; 5 uses
  %.5184..5192.i.i.i = call i32 @llvm.smax.i32(i32 %.5184.i.i.i, i32 %.5192.i.i.i)
  %i.xp = sub nsw i32 %i.qa, %.5184..5192.i.i.i   ; 3 uses
  %spec.select221.i.i.i = call i32 @llvm.smin.i32(i32 %.4176.i.i.i, i32 %i.xp) ; 8 uses
  %i.xq = add nsw i32 %spec.select221.i.i.i, %.5184.i.i.i ; 3 uses
  %i.xr = icmp slt i32 %i.xq, %.5192.i.i.i
  %i.xs = add nsw i32 %spec.select221.i.i.i, %.5192.i.i.i ; 4 uses
  %i.xt = icmp slt i32 %i.xs, %.5184.i.i.i
  %or.cond223.i.i.i = select i1 %i.xr, i1 true, i1 %i.xt
  %i.xu = sext i32 %.5192.i.i.i to i64
  %i.xv = getelementptr inbounds i8, ptr %i.pk, i64 %i.xu ; 4 uses
  %i.xw = sext i32 %.5184.i.i.i to i64
  %i.xx = getelementptr inbounds i8, ptr %i.pk, i64 %i.xw ; 4 uses
  br i1 %or.cond223.i.i.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.xy = sext i32 %spec.select221.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xv, ptr align 1 %i.xx, i64 %i.xy, i1 false)
  br label %bb.el

bb.ej:                                            ; preds = %bb.eh
  %i.xz = icmp sgt i32 %spec.select221.i.i.i, 1
  br i1 %i.xz, label %.lr.ph.preheader.i40.i.i, label %._crit_edge.i16.i.i

.lr.ph.preheader.i40.i.i:                         ; preds = %bb.ej
  %i.ya = add nsw i32 %spec.select221.i.i.i, -1
  %i.yb = zext nneg i32 %i.ya to i64
  br label %.lr.ph.i41.i.i

.lr.ph.i41.i.i:                                   ; preds = %.lr.ph.i41.i.i, %.lr.ph.preheader.i40.i.i
  %indvars.iv345.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i40.i.i ], [ %indvars.iv.next346.i.i.i, %.lr.ph.i41.i.i ] ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 %indvars.iv345.i.i.i
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !9
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xv, i64 %indvars.iv345.i.i.i
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !9
  %i.yf = or disjoint i64 %indvars.iv345.i.i.i, 1 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !9
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.yf
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !9
  %indvars.iv.next346.i.i.i = add nuw nsw i64 %indvars.iv345.i.i.i, 2 ; 3 uses
  %i.yj = icmp samesign ult i64 %indvars.iv.next346.i.i.i, %i.yb
  br i1 %i.yj, label %.lr.ph.i41.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !160

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i41.i.i
  %i.yk = trunc nuw nsw i64 %indvars.iv.next346.i.i.i to i32
  br label %._crit_edge.i16.i.i

._crit_edge.i16.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.ej
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.yk, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.yl = icmp slt i32 %.0.lcssa.i.i.i, %spec.select221.i.i.i
  br i1 %i.yl, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %._crit_edge.i16.i.i
  %i.ym = zext nneg i32 %.0.lcssa.i.i.i to i64    ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !9
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.ym
  store i8 %i.yo, ptr %i.yp, align 1, !tbaa !9
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %._crit_edge.i16.i.i, %bb.ei
  %i.yq = icmp eq i32 %i.xs, %i.qa
  br i1 %i.yq, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.yr = load ptr, ptr %i.eh, align 8, !tbaa !104
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !113
  store ptr %i.yt, ptr %i.em, align 8, !tbaa !143
  store i32 %i.qa, ptr %i.ef, align 8, !tbaa !144
  %i.yu = load i64, ptr %i.en, align 8, !tbaa !145
  %i.yv = add i64 %i.yu, %i.qu
  store i64 %i.yv, ptr %i.en, align 8, !tbaa !145
  %.not220.i.i.i = icmp slt i32 %i.xp, %.4176.i.i.i
  br i1 %.not220.i.i.i, label %bb.en, label %.thread274.i.i.i

bb.en:                                            ; preds = %bb.em
  %i.yw = sub nsw i32 %.4176.i.i.i, %spec.select221.i.i.i
  store i32 %i.yw, ptr %i.pr, align 8, !tbaa !158
  %i.yx = and i32 %i.xq, %i.py
  store i32 %i.yx, ptr %i.pt, align 4, !tbaa !159
  br label %.thread274.i.i.i

bb.eo:                                            ; preds = %bb.el
  %.not219.i.i.i = icmp slt i32 %i.xp, %.4176.i.i.i
  br i1 %.not219.i.i.i, label %bb.ep, label %.preheader.preheader.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.yy = sub nsw i32 %.4176.i.i.i, %spec.select221.i.i.i
  %i.yz = and i32 %i.xq, %i.py
  br label %bb.eh

.thread270.i.i.i:                                 ; preds = %lzh_decode_huffman.exit.i33.i.i, %bb.ee, %lzh_decode_huffman.exit252.i.i.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.eq, i64 340
  store i32 -25, ptr %i.za, align 4, !tbaa !105
  br label %lzh_decode_blocks.exit.i.i

.thread274.loopexit.i.i.i:                        ; preds = %bb.dl
  %i.zb = trunc nsw i64 %indvars.iv.i18.i.i to i32
  br label %.thread274.i.i.i

.thread274.i.i.i:                                 ; preds = %.thread274.loopexit.i.i.i, %bb.en, %bb.em, %bb.ef, %bb.dx, %bb.ds
  %.8195.i.i.i = phi i32 [ 0, %bb.em ], [ %.3190.i.i.i, %bb.ef ], [ %.2189.i.i.i, %bb.dx ], [ 0, %bb.ds ], [ 0, %bb.en ], [ %i.zb, %.thread274.loopexit.i.i.i ]
  %.8.i.i.i = phi i32 [ 9, %bb.em ], [ 11, %bb.ef ], [ 10, %bb.dx ], [ 9, %bb.ds ], [ 12, %bb.en ], [ 9, %.thread274.loopexit.i.i.i ]
  %.6.i21.i.i = phi i32 [ %.4.i.i.i, %bb.em ], [ %.3.i.i.i, %bb.ef ], [ %.2.i.i.i, %bb.dx ], [ %i.tr, %bb.ds ], [ %.4.i.i.i, %bb.en ], [ %.1.i.i.i, %.thread274.loopexit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !157
  store i32 %.6.i21.i.i, ptr %i.pp, align 8, !tbaa !147
  store i32 %.8.i.i.i, ptr %i.eq, align 8, !tbaa !115
  store i32 %.8195.i.i.i, ptr %i.pv, align 8, !tbaa !114
  br label %lzh_decode_blocks.exit.i.i

lzh_decode_blocks.exit.i.i:                       ; preds = %.thread274.i.i.i, %.thread270.i.i.i, %bb.di
  %.0159.i.i.i = phi i32 [ 100, %bb.di ], [ -25, %.thread270.i.i.i ], [ 0, %.thread274.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %lzh_read_blocks.exit.i.i

lzh_read_blocks.exit.i.i:                         ; preds = %lzh_decode_blocks.exit.i.i, %bb.ce, %bb.bo, %bb.aq
  %.0.i60.i = phi i32 [ %.0159.i.i.i, %lzh_decode_blocks.exit.i.i ], [ 100, %bb.aq ], [ 100, %bb.ce ], [ 100, %bb.bo ] ; 2 uses
  %i.zc = icmp eq i32 %.0.i60.i, 100
  br i1 %i.zc, label %bb.ap, label %lzh_read_blocks.exit.thread.i.i, !llvm.loop !161

lzh_read_blocks.exit.thread.i.i:                  ; preds = %lzh_read_blocks.exit.i.i, %lzh_make_fake_table.exit.thread.i.i.i, %.thread281.i.i.i, %bb.cu, %bb.cn, %bb.ch, %bb.cb, %bb.by, %bb.bu, %bb.bl, %bb.bf, %bb.az, %bb.ay, %bb.aw
  %.044.i.i = phi i32 [ -25, %lzh_make_fake_table.exit.thread.i.i.i ], [ 1, %bb.ay ], [ 0, %bb.aw ], [ 0, %bb.az ], [ 0, %bb.bf ], [ 0, %bb.by ], [ 0, %bb.ch ], [ 0, %bb.cu ], [ 0, %.thread281.i.i.i ], [ 0, %bb.cn ], [ 0, %bb.cb ], [ 0, %bb.bu ], [ 0, %bb.bl ], [ %.0.i60.i, %lzh_read_blocks.exit.i.i ]
  %i.zd = load i32, ptr %i.ed, align 8, !tbaa !162
  %i.ze = sub nsw i32 %i.ec, %i.zd
  %i.zf = sext i32 %i.ze to i64
  %i.zg = load i64, ptr %i.ee, align 8, !tbaa !163
  %i.zh = add nsw i64 %i.zg, %i.zf                ; 2 uses
  store i64 %i.zh, ptr %i.ee, align 8, !tbaa !163
  br label %lzh_decode.exit.i

lzh_decode.exit.i:                                ; preds = %lzh_read_blocks.exit.thread.i.i, %bb.an
  %i.zi = phi i64 [ %i.zh, %lzh_read_blocks.exit.thread.i.i ], [ 0, %bb.an ] ; 2 uses
  %.014.i.i = phi i32 [ %.044.i.i, %lzh_read_blocks.exit.thread.i.i ], [ %i.ek, %bb.an ]
  switch i32 %.014.i.i, label %bb.er [
    i32 0, label %bb.es
    i32 1, label %bb.eq
  ]

bb.eq:                                            ; preds = %lzh_decode.exit.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  store i8 1, ptr %i.zj, align 4, !tbaa !50
  br label %bb.es

bb.er:                                            ; preds = %lzh_decode.exit.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.29) #16
  br label %lha_read_data_lzh.exit

bb.es:                                            ; preds = %bb.eq, %lzh_decode.exit.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.zi, ptr %i.zk, align 8, !tbaa !52
  %i.zl = load i64, ptr %i.dy, align 8, !tbaa !100
  %i.zm = sub nsw i64 %i.zl, %i.zi
  store i64 %i.zm, ptr %i.dy, align 8, !tbaa !100
  %i.zn = load i32, ptr %i.ef, align 8, !tbaa !129 ; 2 uses
  %.not55.i = icmp eq i32 %i.zn, 0
  %i.zo = load i64, ptr %i.z, align 8, !tbaa !101
  store i64 %i.zo, ptr %3, align 8, !tbaa !12
  br i1 %.not55.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zp = sext i32 %i.zn to i64                   ; 3 uses
  store i64 %i.zp, ptr %2, align 8, !tbaa !12
  %i.zq = getelementptr inbounds nuw i8, ptr %i.z, i64 384
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !164 ; 2 uses
  store ptr %i.zr, ptr %1, align 8, !tbaa !103
  %i.zs = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.zt = load i16, ptr %i.zs, align 8, !tbaa !102
  %i.zu = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.zt, ptr noundef %i.zr, i64 noundef %i.zp)
  store i16 %i.zu, ptr %i.zs, align 8, !tbaa !102
  %i.zv = load i64, ptr %i.z, align 8, !tbaa !101
  %i.zw = add i64 %i.zv, %i.zp
  store i64 %i.zw, ptr %i.z, align 8, !tbaa !101
  br label %lha_read_data_lzh.exit

bb.eu:                                            ; preds = %bb.es
  store i64 0, ptr %2, align 8, !tbaa !12
  store ptr null, ptr %1, align 8, !tbaa !103
  %i.zx = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.zy = load i8, ptr %i.zx, align 4, !tbaa !50
  %.not56.i = icmp eq i8 %i.zy, 0
  br i1 %.not56.i, label %lha_read_data_lzh.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.zz = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !33 ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 293 ; 2 uses
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !51
  %.not.i61.i = icmp eq i8 %i.aac, 0
  br i1 %.not.i61.i, label %bb.ew, label %lha_read_data_lzh.exit

bb.ew:                                            ; preds = %bb.ev
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 64
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !74
  %i.aaf = and i32 %i.aae, 8
  %.not7.i.i = icmp eq i32 %i.aaf, 0
  br i1 %.not7.i.i, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaa, i64 186
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !73
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aaj = load i16, ptr %i.aai, align 8, !tbaa !102
  %.not8.i.i = icmp eq i16 %i.aah, %i.aaj
  br i1 %.not8.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.25) #16
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew
  %.0.i62.i = phi i32 [ -20, %bb.ey ], [ 1, %bb.ex ], [ 1, %bb.ew ]
  store i8 1, ptr %i.aab, align 1, !tbaa !51
  br label %lha_read_data_lzh.exit

lha_read_data_lzh.exit:                           ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.er, %bb.et, %bb.eu, %bb.ev, %bb.ez
  %.0.i26 = phi i32 [ -30, %bb.ak ], [ -25, %bb.er ], [ 0, %bb.et ], [ -20, %bb.ag ], [ -30, %bb.ah ], [ 0, %bb.eu ], [ -20, %bb.ae ], [ -20, %bb.af ], [ 1, %bb.ev ], [ %.0.i62.i, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %lha_end_of_entry.exit

bb.fa:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.aak = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !100
  %i.aam = icmp eq i64 %i.aal, 0
  br i1 %i.aam, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store ptr null, ptr %1, align 8, !tbaa !103
  store i64 0, ptr %2, align 8, !tbaa !12
  %i.aan = load i64, ptr %i.z, align 8, !tbaa !101
  store i64 %i.aan, ptr %3, align 8, !tbaa !12
  %i.aao = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  store i8 1, ptr %i.aao, align 4, !tbaa !50
  br label %lha_read_data_none.exit

bb.fc:                                            ; preds = %bb.fa
  %i.aap = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %i.a) #16 ; 2 uses
  store ptr %i.aap, ptr %1, align 8, !tbaa !103
  %i.aaq = load i64, ptr %i.a, align 8, !tbaa !12 ; 3 uses
  %i.aar = icmp slt i64 %i.aaq, 1
  br i1 %i.aar, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.30) #16
  br label %lha_read_data_none.exit

bb.fe:                                            ; preds = %bb.fc
  %i.aas = load i64, ptr %i.aak, align 8, !tbaa !100 ; 3 uses
  %i.aat = icmp sgt i64 %i.aaq, %i.aas
  br i1 %i.aat, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i64 %i.aas, ptr %i.a, align 8, !tbaa !12
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aau = phi i64 [ %i.aas, %bb.ff ], [ %i.aaq, %bb.fe ] ; 6 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aaw = load i16, ptr %i.aav, align 8, !tbaa !102
  %i.aax = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.aaw, ptr noundef %i.aap, i64 noundef %i.aau)
  store i16 %i.aax, ptr %i.aav, align 8, !tbaa !102
  store i64 %i.aau, ptr %2, align 8, !tbaa !12
  %i.aay = load i64, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  store i64 %i.aay, ptr %3, align 8, !tbaa !12
  %i.aaz = add nsw i64 %i.aay, %i.aau
  store i64 %i.aaz, ptr %i.z, align 8, !tbaa !101
  %i.aba = load i64, ptr %i.aak, align 8, !tbaa !100 ; 2 uses
  %i.abb = sub nsw i64 %i.aba, %i.aau
  store i64 %i.abb, ptr %i.aak, align 8, !tbaa !100
  %i.abc = icmp eq i64 %i.aba, %i.aau
  br i1 %i.abc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.abd = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  store i8 1, ptr %i.abd, align 4, !tbaa !50
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.abe = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.aau, ptr %i.abe, align 8, !tbaa !52
  br label %lha_read_data_none.exit

lha_read_data_none.exit:                          ; preds = %bb.fb, %bb.fd, %bb.fi
  %.0.i27 = phi i32 [ 0, %bb.fb ], [ -30, %bb.fd ], [ 0, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %lha_end_of_entry.exit

lha_end_of_entry.exit:                            ; preds = %bb.h, %bb.d, %lha_read_data_lzh.exit, %lha_read_data_none.exit
  %.021 = phi i32 [ %.0.i27, %lha_read_data_none.exit ], [ %.0.i26, %lha_read_data_lzh.exit ], [ 1, %bb.d ], [ %.0.i, %bb.h ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @archive_read_format_lha_read_data_skip(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.e) #16 ; 0 uses
  store i64 0, ptr %i.d, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 293 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !100
end_hunk_0
