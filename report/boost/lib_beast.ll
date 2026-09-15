Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE:bb.a
  %i.vp = load i8, ptr %i.vn, align 1, !tbaa !58
  %i.vq = zext i8 %i.vp to i32
  %i.vr = trunc nuw nsw i64 %indvars.iv473 to i32
  %i.vs = shl i32 %i.vq, %i.vr
  %i.vt = add i32 %i.vs, %i.vm                    ; 3 uses
  store i32 %i.vt, ptr %0, align 8, !tbaa !404
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 8 ; 3 uses
  %i.vu = trunc nuw nsw i64 %indvars.iv.next474 to i32 ; 2 uses
  store i32 %i.vu, ptr %i.y, align 4, !tbaa !403
  %.not8.i304 = icmp samesign ugt i64 %i.vj, %indvars.iv.next474
  br i1 %.not8.i304, label %.lr.ph.i302, label %.thread388, !llvm.loop !1159

.thread388:                                       ; preds = %bb.cj, %bb.ci
  %i.vv = phi i32 [ %i.uv, %bb.ci ], [ %i.vu, %bb.cj ]
  %i.vw = phi i32 [ %i.uw, %bb.ci ], [ %i.vt, %bb.cj ] ; 2 uses
  %notmask.i306 = shl nsw i64 -1, %i.vj
  %i.vx = trunc i64 %notmask.i306 to i32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !411
  %i.wa = zext i16 %i.vz to i32
  %i.wb = and i32 %i.vx, 65535
  %i.wc = xor i32 %i.wb, 65535
  %i.wd = and i32 %i.wc, %i.vw
  %i.we = zext i8 %i.vh to i32                    ; 2 uses
  %i.wf = lshr i32 %i.wd, %i.we
  %i.wg = add nuw nsw i32 %i.wf, %i.wa
  %i.wh = zext nneg i32 %i.wg to i64              ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.wh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 1
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !412
  %i.wl = zext i8 %i.wk to i32
  %i.wm = add nuw nsw i32 %i.wl, %i.we            ; 3 uses
  %i.wn = sub i32 %i.vv, %i.wm
  store i32 %i.wn, ptr %i.y, align 4, !tbaa !403
  %i.wo = lshr i32 %i.vw, %i.wm
  store i32 %i.wo, ptr %0, align 8, !tbaa !404
  %i.wp = load i32, ptr %i.an, align 8, !tbaa !390
  %i.wq = add nsw i32 %i.wp, %i.wm
  store i32 %i.wq, ptr %i.an, align 8, !tbaa !390
  %.pre495 = load i8, ptr %i.wi, align 2, !tbaa !414
  br label %bb.cm

bb.ck:                                            ; preds = %.lr.ph.i302
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.cl:                                            ; preds = %.loopexit408
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vc, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !412
  %i.wt = zext i8 %i.ws to i32                    ; 3 uses
  %i.wu = sub i32 %i.uv, %i.wt
  store i32 %i.wu, ptr %i.y, align 4, !tbaa !403
  %i.wv = lshr i32 %i.uw, %i.wt
  store i32 %i.wv, ptr %0, align 8, !tbaa !404
  %i.ww = load i32, ptr %i.an, align 8, !tbaa !390
  %i.wx = add nsw i32 %i.ww, %i.wt
  store i32 %i.wx, ptr %i.an, align 8, !tbaa !390
  br label %bb.cm

bb.cm:                                            ; preds = %.thread388, %bb.cl
  %i.wy = phi i8 [ %.pre495, %.thread388 ], [ %i.vd, %bb.cl ] ; 2 uses
  %i.wz = phi i64 [ %i.wh, %.thread388 ], [ %i.vb, %bb.cl ]
  %i.xa = and i8 %i.wy, 64
  %.not124 = icmp eq i8 %i.xa, 0
  br i1 %.not124, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1213
  %i.xc = and i64 %i.xb, -2
  %switch.i.i.i.i.i307 = icmp eq i64 %i.xc, -5572340897628102704
  br i1 %switch.i.i.i.i.i307, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i311, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i308

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i308: ; preds = %bb.cn
  %i.xd = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1213
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 48
  %i.xf = load ptr, ptr %i.xe, align 8, !noalias !1213
  %i.xg = call noundef zeroext i1 %i.xf(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 12) #48, !noalias !1213, !inline_history !1162
  br i1 %i.xg, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i311, label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit312"

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i311: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i308, %bb.cn
  br label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit312"

"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit312": ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i308, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i311
  %i.xh = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i311 ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i308 ]
  %i.xi = or disjoint i64 %i.xh, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorEE7loc_bb_" to i64)
  store i64 12, ptr %3, align 8
  %.sroa.5.0..0.val.sroa_idx.i309 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..0.val.sroa_idx.i309, align 8
  store i64 %i.xi, ptr %i.aj, align 8, !tbaa !55
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge

bb.co:                                            ; preds = %bb.cm
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.wz
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 2
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !411
  %i.xm = zext i16 %i.xl to i32
  store i32 %i.xm, ptr %i.aq, align 4, !tbaa !1214
  %i.xn = and i8 %i.wy, 15
  %i.xo = zext nneg i8 %i.xn to i32               ; 2 uses
  store i32 %i.xo, ptr %i.ao, align 8, !tbaa !1197
  store i32 21, ptr %i.t, align 8, !tbaa !401
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge496, %bb.co
  %i.xp = phi i32 [ %.pre497, %._crit_edge496 ], [ %i.xo, %bb.co ] ; 7 uses
  %.not125 = icmp eq i32 %i.xp, 0
  br i1 %.not125, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = load i32, ptr %i.y, align 4, !tbaa !403 ; 3 uses
  %.not.i313 = icmp ugt i32 %i.xp, %i.xr
  br i1 %.not.i313, label %.lr.ph.preheader.i315, label %..thread394_crit_edge

..thread394_crit_edge:                            ; preds = %bb.cq
  %.pre498 = load i32, ptr %0, align 8, !tbaa !404
  br label %.thread394

.lr.ph.preheader.i315:                            ; preds = %bb.cq
  %.pre.i316 = load ptr, ptr %i.g, align 8, !tbaa !167 ; 2 uses
  %i.xs = load ptr, ptr %i.f, align 8, !tbaa !167 ; 2 uses
  %.not10.i318643 = icmp eq ptr %.pre.i316, %i.xs
  br i1 %.not10.i318643, label %.lr.ph.preheader.i315._crit_edge, label %.lr.ph644.preheader

.lr.ph644.preheader:                              ; preds = %.lr.ph.preheader.i315
  %.promoted745 = load i32, ptr %0, align 8, !tbaa !404
  br label %.lr.ph644

.lr.ph.i317:                                      ; preds = %.lr.ph644
  %.not10.i318 = icmp eq ptr %i.xw, %i.xs
  br i1 %.not10.i318, label %.lr.ph.preheader.i315._crit_edge, label %.lr.ph644, !llvm.loop !1159

.lr.ph644:                                        ; preds = %.lr.ph644.preheader, %.lr.ph.i317
  %i.xt = phi i32 [ %i.ya, %.lr.ph.i317 ], [ %.promoted745, %.lr.ph644.preheader ]
  %i.xu = phi i32 [ %i.yb, %.lr.ph.i317 ], [ %i.xr, %.lr.ph644.preheader ] ; 2 uses
  %i.xv = phi ptr [ %i.xw, %.lr.ph.i317 ], [ %.pre.i316, %.lr.ph644.preheader ] ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 3 uses
  store ptr %i.xw, ptr %i.g, align 8, !tbaa !167
  %i.xx = load i8, ptr %i.xv, align 1, !tbaa !58
  %i.xy = zext i8 %i.xx to i32
  %i.xz = shl i32 %i.xy, %i.xu
  %i.ya = add i32 %i.xz, %i.xt                    ; 3 uses
  store i32 %i.ya, ptr %0, align 8, !tbaa !404
  %i.yb = add i32 %i.xu, 8                        ; 4 uses
  store i32 %i.yb, ptr %i.y, align 4, !tbaa !403
  %.not8.i319 = icmp ugt i32 %i.xp, %i.yb
  br i1 %.not8.i319, label %.lr.ph.i317, label %.thread394, !llvm.loop !1159

.thread394:                                       ; preds = %.lr.ph644, %..thread394_crit_edge
  %i.yc = phi i32 [ %i.xr, %..thread394_crit_edge ], [ %i.yb, %.lr.ph644 ]
  %i.yd = phi i32 [ %.pre498, %..thread394_crit_edge ], [ %i.ya, %.lr.ph644 ] ; 2 uses
  %notmask.i321 = shl nsw i64 -1, %i.xq
  %i.ye = trunc i64 %notmask.i321 to i32
  %i.yf = lshr i32 %i.yd, %i.xp
  store i32 %i.yf, ptr %0, align 8, !tbaa !404
  %i.yg = sub i32 %i.yc, %i.xp
  store i32 %i.yg, ptr %i.y, align 4, !tbaa !403
  %i.yh = and i32 %i.ye, 65535
  %i.yi = xor i32 %i.yh, 65535
  %i.yj = and i32 %i.yi, %i.yd
  %i.yk = load i32, ptr %i.aq, align 4, !tbaa !1214
  %i.yl = add i32 %i.yk, %i.yj
  store i32 %i.yl, ptr %i.aq, align 4, !tbaa !1214
  %i.ym = load i32, ptr %i.an, align 8, !tbaa !390
  %i.yn = add i32 %i.ym, %i.xp
  store i32 %i.yn, ptr %i.an, align 8, !tbaa !390
  br label %bb.cr

.lr.ph.preheader.i315._crit_edge:                 ; preds = %.lr.ph.preheader.i315, %.lr.ph.i317
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.cr:                                            ; preds = %.thread394, %bb.cp
  store i32 22, ptr %i.t, align 8, !tbaa !401
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.d
  %i.yo = load ptr, ptr %i.n, align 8, !tbaa !407 ; 2 uses
  %i.yp = load ptr, ptr %i.o, align 8, !tbaa !408 ; 7 uses
  %i.yq = ptrtoint ptr %i.yo to i64
  %i.yr = ptrtoint ptr %i.yp to i64               ; 2 uses
  %i.ys = sub i64 %i.yq, %i.yr                    ; 2 uses
  %.not126 = icmp eq ptr %i.yo, %i.yp
  br i1 %.not126, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.cu:                                            ; preds = %bb.cs
  %i.yt = load i32, ptr %i.aq, align 4, !tbaa !1214
  %i.yu = zext i32 %i.yt to i64                   ; 3 uses
  %i.yv = load ptr, ptr %i.j, align 8, !tbaa !415
  %i.yw = ptrtoint ptr %i.yv to i64
  %i.yx = sub i64 %i.yr, %i.yw                    ; 2 uses
  %i.yy = icmp ult i64 %i.yx, %i.yu
  br i1 %i.yy, label %bb.cv, label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  %i.yz = sub nuw nsw i64 %i.yu, %i.yx            ; 3 uses
  %i.za = load i16, ptr %i.as, align 2, !tbaa !382 ; 2 uses
  %8 = trunc i64 %i.yz to i16
  %.not128 = icmp ult i16 %i.za, %8
  br i1 %.not128, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1215
  %i.zc = and i64 %i.zb, -2
  %switch.i.i.i.i.i322 = icmp eq i64 %i.zc, -5572340897628102704
  br i1 %switch.i.i.i.i.i322, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i326, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i323

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i323: ; preds = %bb.cw
  %i.zd = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1215
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 48
  %i.zf = load ptr, ptr %i.ze, align 8, !noalias !1215
  %i.zg = call noundef zeroext i1 %i.zf(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 13) #48, !noalias !1215, !inline_history !1162
  br i1 %i.zg, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i326, label %.thread396

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i326: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i323, %bb.cw
  br label %.thread396

.thread396:                                       ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i326, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i323
  %i.zh = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i326 ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i323 ]
  %i.zi = or disjoint i64 %i.zh, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorEE7loc_bb_" to i64)
  store i64 13, ptr %3, align 8
  %.sroa.5.0..0.val.sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..0.val.sroa_idx.i324, align 8
  store i64 %i.zi, ptr %i.aj, align 8, !tbaa !55
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge

bb.cx:                                            ; preds = %bb.cv
  %9 = trunc nuw i64 %i.yz to i32
  %i.zj = load i32, ptr %i.x, align 8, !tbaa !1200
  %10 = and i32 %9, 65535
  %spec.select.i328 = call noundef i32 @llvm.umin.i32(i32 %i.zj, i32 %10)
  %i.zk = zext nneg i32 %spec.select.i328 to i64
  %spec.select5.i329 = call i64 @llvm.umin.i64(i64 %i.ys, i64 %i.zk) ; 6 uses
  %spec.select.i330 = trunc nuw nsw i64 %spec.select5.i329 to i32
  %i.zl = and i64 %i.yz, 65535
  %i.zm = load i16, ptr %i.at, align 8, !tbaa !381 ; 2 uses
  %.not.i331 = icmp ult i16 %i.zm, %i.za
  %i.zn = zext i16 %i.zm to i64
  %i.zo = sub nsw i64 %i.zn, %i.zl                ; 2 uses
  br i1 %.not.i331, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zp = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yp, ptr nonnull align 1 %i.zq, i64 %spec.select5.i329, i1 false)
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cx
  %i.zr = load i16, ptr %i.au, align 4, !tbaa !380
  %i.zs = zext i16 %i.zr to i64                   ; 3 uses
  %i.zt = add nsw i64 %i.zo, %i.zs
  %i.zu = urem i64 %i.zt, %i.zs                   ; 2 uses
  %i.zv = sub nuw nsw i64 %i.zs, %i.zu            ; 4 uses
  %.not19.i = icmp samesign ugt i64 %spec.select5.i329, %i.zv
  %i.zw = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zu ; 2 uses
  br i1 %.not19.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yp, ptr nonnull align 1 %i.zx, i64 %spec.select5.i329, i1 false)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yp, ptr nonnull align 1 %i.zx, i64 %i.zv, i1 false)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.zv
  %i.zz = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.aaa = sub nuw nsw i64 %spec.select5.i329, %i.zv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zy, ptr nonnull align 1 %i.zz, i64 %i.aaa, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cy
  %i.aab = load ptr, ptr %i.o, align 8, !tbaa !395
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 %spec.select5.i329
  store ptr %i.aac, ptr %i.o, align 8, !tbaa !395
  %i.aad = load i32, ptr %i.x, align 8, !tbaa !1200
  %i.aae = sub i32 %i.aad, %spec.select.i330      ; 2 uses
  store i32 %i.aae, ptr %i.x, align 8, !tbaa !1200
  br label %.loopexit407

bb.dd:                                            ; preds = %bb.cu
  %i.aaf = load i32, ptr %i.x, align 8, !tbaa !1200 ; 3 uses
  %i.aag = zext i32 %i.aaf to i64
  %spec.select5.i332 = call i64 @llvm.umin.i64(i64 %i.ys, i64 %i.aag) ; 2 uses
  %spec.select.i333 = trunc nuw i64 %spec.select5.i332 to i32 ; 4 uses
  %i.aah = sub i32 %i.aaf, %spec.select.i333      ; 2 uses
  store i32 %i.aah, ptr %i.x, align 8, !tbaa !1200
  %.not127447 = icmp eq i32 %i.aaf, 0
  br i1 %.not127447, label %.loopexit407, label %.lr.ph451.preheader

.lr.ph451.preheader:                              ; preds = %bb.dd
  %i.aai = sub nsw i64 0, %i.yu
  %i.aaj = getelementptr inbounds i8, ptr %i.yp, i64 %i.aai ; 2 uses
  %xtraiter699 = and i32 %spec.select.i333, 3     ; 2 uses
  %lcmp.mod700.not = icmp eq i32 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %.lr.ph451.prol.loopexit, label %.lr.ph451.prol

.lr.ph451.prol:                                   ; preds = %.lr.ph451.preheader, %.lr.ph451.prol
  %.0105449.prol = phi i32 [ %i.aak, %.lr.ph451.prol ], [ %spec.select.i333, %.lr.ph451.preheader ]
  %.0106448.prol = phi ptr [ %i.aal, %.lr.ph451.prol ], [ %i.aaj, %.lr.ph451.preheader ] ; 2 uses
  %prol.iter701 = phi i32 [ %prol.iter701.next, %.lr.ph451.prol ], [ 0, %.lr.ph451.preheader ]
  %i.aak = add i32 %.0105449.prol, -1             ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.0106448.prol, i64 1 ; 2 uses
  %i.aam = load i8, ptr %.0106448.prol, align 1, !tbaa !58
  %i.aan = load ptr, ptr %i.o, align 8, !tbaa !395 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 1
  store ptr %i.aao, ptr %i.o, align 8, !tbaa !395
  store i8 %i.aam, ptr %i.aan, align 1, !tbaa !58
  %prol.iter701.next = add i32 %prol.iter701, 1   ; 2 uses
  %prol.iter701.cmp.not = icmp eq i32 %prol.iter701.next, %xtraiter699
  br i1 %prol.iter701.cmp.not, label %.lr.ph451.prol.loopexit, label %.lr.ph451.prol, !llvm.loop !1186

.lr.ph451.prol.loopexit:                          ; preds = %.lr.ph451.prol, %.lr.ph451.preheader
  %.0105449.unr = phi i32 [ %spec.select.i333, %.lr.ph451.preheader ], [ %i.aak, %.lr.ph451.prol ]
  %.0106448.unr = phi ptr [ %i.aaj, %.lr.ph451.preheader ], [ %i.aal, %.lr.ph451.prol ]
  %i.aap = icmp samesign ult i64 %spec.select5.i332, 4
  br i1 %i.aap, label %.loopexit407.loopexit, label %.lr.ph451

.lr.ph451:                                        ; preds = %.lr.ph451.prol.loopexit, %.lr.ph451
  %.0105449 = phi i32 [ %i.abc, %.lr.ph451 ], [ %.0105449.unr, %.lr.ph451.prol.loopexit ]
  %.0106448 = phi ptr [ %i.abd, %.lr.ph451 ], [ %.0106448.unr, %.lr.ph451.prol.loopexit ] ; 5 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0106448, i64 1
  %i.aar = load i8, ptr %.0106448, align 1, !tbaa !58
  %i.aas = load ptr, ptr %i.o, align 8, !tbaa !395 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  store ptr %i.aat, ptr %i.o, align 8, !tbaa !395
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !58
  %i.aau = getelementptr inbounds nuw i8, ptr %.0106448, i64 2
  %i.aav = load i8, ptr %i.aaq, align 1, !tbaa !58
  %i.aaw = load ptr, ptr %i.o, align 8, !tbaa !395 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  store ptr %i.aax, ptr %i.o, align 8, !tbaa !395
  store i8 %i.aav, ptr %i.aaw, align 1, !tbaa !58
  %i.aay = getelementptr inbounds nuw i8, ptr %.0106448, i64 3
  %i.aaz = load i8, ptr %i.aau, align 1, !tbaa !58
  %i.aba = load ptr, ptr %i.o, align 8, !tbaa !395 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 1
  store ptr %i.abb, ptr %i.o, align 8, !tbaa !395
  store i8 %i.aaz, ptr %i.aba, align 1, !tbaa !58
  %i.abc = add i32 %.0105449, -4                  ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.0106448, i64 4
  %i.abe = load i8, ptr %i.aay, align 1, !tbaa !58
  %i.abf = load ptr, ptr %i.o, align 8, !tbaa !395 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 1
  store ptr %i.abg, ptr %i.o, align 8, !tbaa !395
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !58
  %.not127.3 = icmp eq i32 %i.abc, 0
  br i1 %.not127.3, label %.loopexit407.loopexit, label %.lr.ph451, !llvm.loop !1187

.loopexit407.loopexit:                            ; preds = %.lr.ph451, %.lr.ph451.prol.loopexit
  %.pre499 = load i32, ptr %i.x, align 8, !tbaa !1200
  br label %.loopexit407

.loopexit407:                                     ; preds = %.loopexit407.loopexit, %bb.dd, %bb.dc
  %i.abh = phi i32 [ %.pre499, %.loopexit407.loopexit ], [ %i.aah, %bb.dd ], [ %i.aae, %bb.dc ]
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.de, label %.critedge134

bb.de:                                            ; preds = %.loopexit407
  store i32 18, ptr %i.t, align 8, !tbaa !401
  br label %.critedge134

bb.df:                                            ; preds = %bb.d
  %i.abj = load ptr, ptr %i.n, align 8, !tbaa !407
  %i.abk = load ptr, ptr %i.o, align 8, !tbaa !408 ; 3 uses
  %.not = icmp eq ptr %i.abj, %i.abk
  br i1 %.not, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.dh:                                            ; preds = %bb.df
  %i.abl = load i32, ptr %i.x, align 8, !tbaa !1200
  %i.abm = trunc i32 %i.abl to i8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 1
  store ptr %i.abn, ptr %i.o, align 8, !tbaa !395
  store i8 %i.abm, ptr %i.abk, align 1, !tbaa !58
  store i32 18, ptr %i.t, align 8, !tbaa !401
  br label %.critedge134

bb.di:                                            ; preds = %bb.d
  store i32 26, ptr %i.t, align 8, !tbaa !401
  br label %.loopexit412

.loopexit412:                                     ; preds = %bb.d, %bb.di
  %i.abo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1216
  %i.abp = and i64 %i.abo, -2
  %switch.i.i.i.i = icmp eq i64 %i.abp, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.loopexit412
  %i.abq = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1216
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 48
  %i.abs = load ptr, ptr %i.abr, align 8, !noalias !1216
  %i.abt = call noundef zeroext i1 %i.abs(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 2) #48, !noalias !1216, !inline_history !36
  br i1 %i.abt, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.dj

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.loopexit412, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.abu = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.abv = or disjoint i64 %i.abu, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 2, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.abv, ptr %i.aj, align 8, !tbaa !55
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.dk:                                            ; preds = %bb.d
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.dl:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.193)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  store ptr @.str.192, ptr %7, align 8, !tbaa !74
  %i.abw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.188, ptr %i.abw, align 8, !tbaa !75
  %i.abx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 532, ptr %i.abx, align 8, !tbaa !76
  %i.aby = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 32, ptr %i.aby, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #49
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  unreachable

end_hunk_0
