Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/insert_vs_emplace_test?download=true
inline.NumInlined: 860
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@main:bb.a
_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit183: ; preds = %.noexc433, %bb.at
  %i.wg = phi i32 [ %.pre1918, %.noexc433 ], [ %i.vx, %bb.at ]
  %i.wh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.wi = add i32 %i.wh, 1
  store i32 %i.wi, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #23
  store i32 0, ptr %112, align 8, !tbaa !34
  %i.wj = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 3 uses
  store ptr null, ptr %i.wj, align 8, !tbaa !35
  %i.wk = add i32 %i.wg, 1
  store i32 %i.wk, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.wl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436 unwind label %bb.mh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.wm = load ptr, ptr %108, align 8, !tbaa !38, !noalias !210 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #23
  %i.wn = load i64, ptr %i.sv, align 8, !tbaa !42, !noalias !211
  %i.wo = load i64, ptr %i.sy, align 8, !tbaa !40, !noalias !211 ; 6 uses
  %.not.i.i437 = icmp eq i64 %i.wn, %i.wo
  br i1 %.not.i.i437, label %bb.ay, label %bb.av, !prof !45

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436
  %.not.i.i.i438 = icmp eq i64 %i.wo, 0
  br i1 %.not.i.i.i438, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wm) ]
  %i.wp = load i32, ptr %112, align 8, !tbaa !34, !noalias !211
  store i32 %i.wp, ptr %i.wm, align 8, !tbaa !34, !noalias !211
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wr = load ptr, ptr %i.wj, align 8, !tbaa !35, !noalias !211
  store ptr %i.wr, ptr %i.wq, align 8, !tbaa !35, !noalias !211
  %i.ws = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !211
  %i.wt = add i32 %i.ws, 1
  store i32 %i.wt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !211
  store i64 1, ptr %i.sy, align 8, !tbaa !40, !noalias !211
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit450

bb.ax:                                            ; preds = %bb.av
  %.idx2395 = shl nuw nsw i64 %i.wo, 4
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 %.idx2395 ; 6 uses
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 -16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wm) ]
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !34, !noalias !211
  store i32 %i.ww, ptr %i.wu, align 8, !tbaa !34, !noalias !211
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.wy = getelementptr inbounds i8, ptr %i.wu, i64 -8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !35, !noalias !211
  store ptr %i.wz, ptr %i.wx, align 8, !tbaa !35, !noalias !211
  %i.xa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !211
  %i.xb = add i32 %i.xa, 1
  store i32 %i.xb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !211
  %i.xc = add i64 %i.wo, 1
  store i64 %i.xc, ptr %i.sy, align 8, !tbaa !40, !noalias !211
  %i.xd = add nsw i64 %i.wo, -1                   ; 5 uses
  %.not8.i.i.i.i439 = icmp eq i64 %i.xd, 0
  %.pre.i.i.i440 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !211 ; 2 uses
  br i1 %.not8.i.i.i.i439, label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i447, label %.lr.ph.i.i.i.i441.preheader

.lr.ph.i.i.i.i441.preheader:                      ; preds = %bb.ax
  %i.xe = add i64 %i.wo, -2
  %xtraiter2469 = and i64 %i.xd, 3                ; 2 uses
  %lcmp.mod2470.not = icmp eq i64 %xtraiter2469, 0
  br i1 %lcmp.mod2470.not, label %.lr.ph.i.i.i.i441.prol.loopexit, label %.lr.ph.i.i.i.i441.prol

.lr.ph.i.i.i.i441.prol:                           ; preds = %.lr.ph.i.i.i.i441.preheader, %.lr.ph.i.i.i.i441.prol
  %.011.i.i.i.i442.prol = phi ptr [ %i.xh, %.lr.ph.i.i.i.i441.prol ], [ %i.wu, %.lr.ph.i.i.i.i441.preheader ] ; 2 uses
  %.0610.i.i.i.i443.prol = phi i64 [ %i.xf, %.lr.ph.i.i.i.i441.prol ], [ %i.xd, %.lr.ph.i.i.i.i441.preheader ]
  %.079.i.i.i.i444.prol = phi ptr [ %i.xg, %.lr.ph.i.i.i.i441.prol ], [ %i.wv, %.lr.ph.i.i.i.i441.preheader ] ; 2 uses
  %prol.iter2471 = phi i64 [ %prol.iter2471.next, %.lr.ph.i.i.i.i441.prol ], [ 0, %.lr.ph.i.i.i.i441.preheader ]
  %i.xf = add i64 %.0610.i.i.i.i443.prol, -1      ; 2 uses
  %i.xg = getelementptr inbounds i8, ptr %.079.i.i.i.i444.prol, i64 -16 ; 3 uses
  %i.xh = getelementptr inbounds i8, ptr %.011.i.i.i.i442.prol, i64 -16 ; 3 uses
  %i.xi = load i32, ptr %i.xg, align 8, !tbaa !34, !noalias !211
  store i32 %i.xi, ptr %i.xh, align 8, !tbaa !34, !noalias !211
  %i.xj = getelementptr inbounds i8, ptr %.079.i.i.i.i444.prol, i64 -8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !35, !noalias !211
  %i.xl = getelementptr inbounds i8, ptr %.011.i.i.i.i442.prol, i64 -8
  store ptr %i.xk, ptr %i.xl, align 8, !tbaa !35, !noalias !211
  %prol.iter2471.next = add i64 %prol.iter2471, 1 ; 2 uses
  %prol.iter2471.cmp.not = icmp eq i64 %prol.iter2471.next, %xtraiter2469
  br i1 %prol.iter2471.cmp.not, label %.lr.ph.i.i.i.i441.prol.loopexit, label %.lr.ph.i.i.i.i441.prol, !llvm.loop !106

.lr.ph.i.i.i.i441.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i441.prol, %.lr.ph.i.i.i.i441.preheader
  %.011.i.i.i.i442.unr = phi ptr [ %i.wu, %.lr.ph.i.i.i.i441.preheader ], [ %i.xh, %.lr.ph.i.i.i.i441.prol ]
  %.0610.i.i.i.i443.unr = phi i64 [ %i.xd, %.lr.ph.i.i.i.i441.preheader ], [ %i.xf, %.lr.ph.i.i.i.i441.prol ]
  %.079.i.i.i.i444.unr = phi ptr [ %i.wv, %.lr.ph.i.i.i.i441.preheader ], [ %i.xg, %.lr.ph.i.i.i.i441.prol ]
  %i.xm = icmp ult i64 %i.xe, 3
  br i1 %i.xm, label %._crit_edge.i.i.i.i446, label %.lr.ph.i.i.i.i441

.lr.ph.i.i.i.i441:                                ; preds = %.lr.ph.i.i.i.i441.prol.loopexit, %.lr.ph.i.i.i.i441
  %.011.i.i.i.i442 = phi ptr [ %i.yh, %.lr.ph.i.i.i.i441 ], [ %.011.i.i.i.i442.unr, %.lr.ph.i.i.i.i441.prol.loopexit ] ; 8 uses
  %.0610.i.i.i.i443 = phi i64 [ %i.yf, %.lr.ph.i.i.i.i441 ], [ %.0610.i.i.i.i443.unr, %.lr.ph.i.i.i.i441.prol.loopexit ]
  %.079.i.i.i.i444 = phi ptr [ %i.yg, %.lr.ph.i.i.i.i441 ], [ %.079.i.i.i.i444.unr, %.lr.ph.i.i.i.i441.prol.loopexit ] ; 8 uses
  %i.xn = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -16
  %i.xo = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -16
  %i.xp = load i32, ptr %i.xn, align 8, !tbaa !34, !noalias !211
  store i32 %i.xp, ptr %i.xo, align 8, !tbaa !34, !noalias !211
  %i.xq = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !35, !noalias !211
  %i.xs = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -8
  store ptr %i.xr, ptr %i.xs, align 8, !tbaa !35, !noalias !211
  %i.xt = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -32
  %i.xu = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -32
  %i.xv = load i32, ptr %i.xt, align 8, !tbaa !34, !noalias !211
  store i32 %i.xv, ptr %i.xu, align 8, !tbaa !34, !noalias !211
  %i.xw = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -24
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !35, !noalias !211
  %i.xy = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -24
  store ptr %i.xx, ptr %i.xy, align 8, !tbaa !35, !noalias !211
  %i.xz = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -48
  %i.ya = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -48
  %i.yb = load i32, ptr %i.xz, align 8, !tbaa !34, !noalias !211
  store i32 %i.yb, ptr %i.ya, align 8, !tbaa !34, !noalias !211
  %i.yc = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -40
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !35, !noalias !211
  %i.ye = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -40
  store ptr %i.yd, ptr %i.ye, align 8, !tbaa !35, !noalias !211
  %i.yf = add i64 %.0610.i.i.i.i443, -4           ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -64 ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -64 ; 2 uses
  %i.yi = load i32, ptr %i.yg, align 8, !tbaa !34, !noalias !211
  store i32 %i.yi, ptr %i.yh, align 8, !tbaa !34, !noalias !211
  %i.yj = getelementptr inbounds i8, ptr %.079.i.i.i.i444, i64 -56
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !35, !noalias !211
  %i.yl = getelementptr inbounds i8, ptr %.011.i.i.i.i442, i64 -56
  store ptr %i.yk, ptr %i.yl, align 8, !tbaa !35, !noalias !211
  %.not.i.i.i.i445.3 = icmp eq i64 %i.yf, 0
  br i1 %.not.i.i.i.i445.3, label %._crit_edge.i.i.i.i446, label %.lr.ph.i.i.i.i441, !llvm.loop !82

._crit_edge.i.i.i.i446:                           ; preds = %.lr.ph.i.i.i.i441, %.lr.ph.i.i.i.i441.prol.loopexit
  %i.ym = trunc i64 %i.xd to i32
  %i.yn = add i32 %.pre.i.i.i440, %i.ym
  br label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i447

_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i447: ; preds = %._crit_edge.i.i.i.i446, %bb.ax
  %i.yo = phi i32 [ %.pre.i.i.i440, %bb.ax ], [ %i.yn, %._crit_edge.i.i.i.i446 ]
  %i.yp = load i32, ptr %112, align 8, !tbaa !34, !noalias !211
  store i32 %i.yp, ptr %i.wm, align 8, !tbaa !34, !noalias !211
  %i.yq = load ptr, ptr %i.wj, align 8, !tbaa !35, !noalias !211
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store ptr %i.yq, ptr %i.yr, align 8, !tbaa !35, !noalias !211
  %i.ys = add i32 %i.yo, 1
  store i32 %i.ys, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !211
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit450

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %113, ptr noundef nonnull align 8 dereferenceable(24) %108, ptr noundef %i.wm, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %112)
          to label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit450 unwind label %bb.mi

_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit450: ; preds = %bb.aw, %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i447, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #23
  %i.yt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.az unwind label %bb.mh     ; 0 uses

bb.az:                                            ; preds = %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit450
  %i.yu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit452 unwind label %bb.mh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit452: ; preds = %bb.az
  %i.yv = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1568 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1637 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1660 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.yw = add i32 %.sroa.28.0.copyload1568, 1     ; 2 uses
  store i32 %i.yw, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #23
  %i.yx = load i64, ptr %i.sy, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i453 = icmp eq i64 %i.yx, 0
  br i1 %.not3.i.i453, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i456, label %.lr.ph.preheader.i.i454

.lr.ph.preheader.i.i454:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit452
  %i.yy = trunc i64 %i.yx to i32
  %i.yz = add i32 %i.yw, %i.yy
  store i32 %i.yz, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i456

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i456: ; preds = %.lr.ph.preheader.i.i454, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit452
  %i.za = load i64, ptr %i.sv, align 8, !tbaa !42 ; 2 uses
  %.not.i.i457 = icmp eq i64 %i.za, 0
  br i1 %.not.i.i457, label %_ZN5boost9container6vectorI1XvvED2Ev.exit458, label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i456
  %i.zb = load ptr, ptr %108, align 8, !tbaa !47
  %i.zc = shl i64 %i.za, 4
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zc) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit458

_ZN5boost9container6vectorI1XvvED2Ev.exit458:     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i456, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.zd = icmp eq <4 x i32> %i.sn, %i.yv
  %i.ze = icmp eq i32 %.sroa.641779.0.copyload1780, %.sroa.64.0.copyload1637
  %i.zf = icmp eq i32 %.sroa.761803.0.copyload1804, %.sroa.76.0.copyload1660
  %i.zg = freeze <4 x i1> %i.zd
  %i.zh = bitcast <4 x i1> %i.zg to i4
  %i.zi = icmp eq i4 %i.zh, -1
  %op.rdx2427 = select i1 %i.zi, i1 %i.ze, i1 false
  %op.rdx2428 = select i1 %op.rdx2427, i1 %i.zf, i1 false
  %i.zj = zext i1 %op.rdx2428 to i8
  store i8 %i.zj, ptr %i.a, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !49
  %i.zk = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 173, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, i8 0, i64 24, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 6 uses
  %i.zm = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc474 unwind label %bb.ml ; 5 uses

.noexc474:                                        ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit458
  %i.zn = load ptr, ptr %114, align 8, !tbaa !38  ; 6 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %114, i64 8 ; 12 uses
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i459 = shl i64 %i.zp, 4                 ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.idx.i.i459
  %.not16.i.i.i.i.i460 = icmp eq i64 %i.zp, 0
  br i1 %.not16.i.i.i.i.i460, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i472, label %.lr.ph.i.i.i.i.i461

.lr.ph.i.i.i.i.i461:                              ; preds = %.noexc474
  %.promoted.i.i.i.i.i462 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.zr = add i64 %.idx.i.i459, -16               ; 2 uses
  %i.zs = lshr exact i64 %i.zr, 4
  %i.zt = add nuw nsw i64 %i.zs, 1
  %xtraiter2474 = and i64 %i.zt, 3                ; 2 uses
  %lcmp.mod2475.not = icmp eq i64 %xtraiter2474, 0
  br i1 %lcmp.mod2475.not, label %.prol.loopexit2473, label %.prol.preheader2472

.prol.preheader2472:                              ; preds = %.lr.ph.i.i.i.i.i461, %.prol.preheader2472
  %.018.i.i.i.i.i463.prol = phi ptr [ %i.zy, %.prol.preheader2472 ], [ %i.zn, %.lr.ph.i.i.i.i.i461 ] ; 3 uses
  %.01517.i.i.i.i.i464.prol = phi ptr [ %i.zz, %.prol.preheader2472 ], [ %i.zm, %.lr.ph.i.i.i.i.i461 ] ; 3 uses
  %prol.iter2476 = phi i64 [ %prol.iter2476.next, %.prol.preheader2472 ], [ 0, %.lr.ph.i.i.i.i.i461 ]
  %i.zu = load i32, ptr %.018.i.i.i.i.i463.prol, align 8, !tbaa !34
  store i32 %i.zu, ptr %.01517.i.i.i.i.i464.prol, align 8, !tbaa !34
  %i.zv = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464.prol, i64 8
  %i.zw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463.prol, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !35
  store ptr %i.zx, ptr %i.zv, align 8, !tbaa !35
  %i.zy = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463.prol, i64 16 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464.prol, i64 16 ; 2 uses
  %prol.iter2476.next = add i64 %prol.iter2476, 1 ; 2 uses
  %prol.iter2476.cmp.not = icmp eq i64 %prol.iter2476.next, %xtraiter2474
  br i1 %prol.iter2476.cmp.not, label %.prol.loopexit2473, label %.prol.preheader2472, !llvm.loop !107

.prol.loopexit2473:                               ; preds = %.prol.preheader2472, %.lr.ph.i.i.i.i.i461
  %.018.i.i.i.i.i463.unr = phi ptr [ %i.zn, %.lr.ph.i.i.i.i.i461 ], [ %i.zy, %.prol.preheader2472 ]
  %.01517.i.i.i.i.i464.unr = phi ptr [ %i.zm, %.lr.ph.i.i.i.i.i461 ], [ %i.zz, %.prol.preheader2472 ]
  %i.aaa = icmp ult i64 %i.zr, 48
  br i1 %i.aaa, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i466, label %.lr.ph.i.i.i.i.i461.new

.lr.ph.i.i.i.i.i461.new:                          ; preds = %.prol.loopexit2473, %.lr.ph.i.i.i.i.i461.new
  %.018.i.i.i.i.i463 = phi ptr [ %i.aax, %.lr.ph.i.i.i.i.i461.new ], [ %.018.i.i.i.i.i463.unr, %.prol.loopexit2473 ] ; 9 uses
  %.01517.i.i.i.i.i464 = phi ptr [ %i.aay, %.lr.ph.i.i.i.i.i461.new ], [ %.01517.i.i.i.i.i464.unr, %.prol.loopexit2473 ] ; 9 uses
  %i.aab = load i32, ptr %.018.i.i.i.i.i463, align 8, !tbaa !34
  store i32 %i.aab, ptr %.01517.i.i.i.i.i464, align 8, !tbaa !34
  %i.aac = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !35
  store ptr %i.aae, ptr %i.aac, align 8, !tbaa !35
  %i.aaf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 16
  %i.aag = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 16
  %i.aah = load i32, ptr %i.aaf, align 8, !tbaa !34
  store i32 %i.aah, ptr %i.aag, align 8, !tbaa !34
  %i.aai = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 24
  %i.aaj = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !35
  store ptr %i.aak, ptr %i.aai, align 8, !tbaa !35
  %i.aal = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 32
  %i.aam = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 32
  %i.aan = load i32, ptr %i.aal, align 8, !tbaa !34
  store i32 %i.aan, ptr %i.aam, align 8, !tbaa !34
  %i.aao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 40
  %i.aap = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 40
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !35
  store ptr %i.aaq, ptr %i.aao, align 8, !tbaa !35
  %i.aar = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 48
  %i.aas = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 48
  %i.aat = load i32, ptr %i.aar, align 8, !tbaa !34
  store i32 %i.aat, ptr %i.aas, align 8, !tbaa !34
  %i.aau = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 56
  %i.aav = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 56
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !35
  store ptr %i.aaw, ptr %i.aau, align 8, !tbaa !35
  %i.aax = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i463, i64 64 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i464, i64 64
  %.not.i.i.i.i.i465.3 = icmp eq ptr %i.aax, %i.zq
  br i1 %.not.i.i.i.i.i465.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i466, label %.lr.ph.i.i.i.i.i461.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i472: ; preds = %.noexc474
  %.not.i.i.i473 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i473, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i471, label %bb.bb

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i466: ; preds = %.lr.ph.i.i.i.i.i461.new, %.prol.loopexit2473
  %i.aaz = add i64 %.idx.i.i459, 68719476720
  %i.aba = lshr exact i64 %i.aaz, 4
  %i.abb = trunc i64 %i.aba to i32
  %i.abc = add i32 %i.abb, 1
  %i.abd = add i32 %i.abc, %.promoted.i.i.i.i.i462
  store i32 %i.abd, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i467 = icmp eq ptr %i.zn, null
  br i1 %.not.i5.i.i467, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i471, label %.lr.ph.preheader.i.i.i.i468

.lr.ph.preheader.i.i.i.i468:                      ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i466
  %.promoted.i.i.i.i469 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.abe = trunc i64 %i.zp to i32
  %i.abf = add i32 %.promoted.i.i.i.i469, %i.abe
  store i32 %i.abf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.preheader.i.i.i.i468, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i472
  %i.abg = load i64, ptr %i.zl, align 8, !tbaa !42
  %i.abh = shl i64 %i.abg, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef %i.abh) #23
  %.pre.i.i.i470 = load i64, ptr %i.zo, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i471

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i471: ; preds = %bb.bb, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i466, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i472
  %i.abi = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i472 ], [ %.pre.i.i.i470, %bb.bb ], [ %i.zp, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i466 ] ; 4 uses
  store ptr %i.zm, ptr %114, align 8, !tbaa !38
  store i64 %i.abi, ptr %i.zo, align 8, !tbaa !43
  store i64 4, ptr %i.zl, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #23
  store i32 0, ptr %115, align 8, !tbaa !34
  %i.abj = getelementptr inbounds nuw i8, ptr %115, i64 8
  store ptr null, ptr %i.abj, align 8, !tbaa !35
  %i.abk = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.abl = add i32 %i.abk, 1                      ; 2 uses
  store i32 %i.abl, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i476 = icmp eq i64 %i.abi, 4
  br i1 %.not.i476, label %bb.bd, label %bb.bc, !prof !45

bb.bc:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i471
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.zm, i64 %i.abi ; 2 uses
  store i32 0, ptr %i.abm, align 8, !tbaa !34
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store ptr null, ptr %i.abn, align 8, !tbaa !35
  %i.abo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.abp = add i32 %i.abo, 1
  store i32 %i.abp, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.abq = add i64 %i.abi, 1                      ; 2 uses
  store i64 %i.abq, ptr %i.zo, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit182

bb.bd:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i471
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  %i.abr = getelementptr inbounds nuw i8, ptr %i.zm, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %77, ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull %i.abr, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %115)
          to label %.noexc478 unwind label %bb.mm

.noexc478:                                        ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  %.pre1919 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1920 = load i64, ptr %i.zo, align 8, !tbaa !40
  %.pre1921 = load i64, ptr %i.zl, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit182

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit182: ; preds = %.noexc478, %bb.bc
  %i.abs = phi i64 [ %.pre1921, %.noexc478 ], [ 4, %bb.bc ] ; 3 uses
  %i.abt = phi i64 [ %.pre1920, %.noexc478 ], [ %i.abq, %bb.bc ] ; 3 uses
  %i.abu = phi i32 [ %.pre1919, %.noexc478 ], [ %i.abl, %bb.bc ]
  %i.abv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.abw = add i32 %i.abv, 1
  store i32 %i.abw, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #23
  store i32 0, ptr %116, align 8, !tbaa !34
  %i.abx = getelementptr inbounds nuw i8, ptr %116, i64 8
  store ptr null, ptr %i.abx, align 8, !tbaa !35
  %i.aby = add i32 %i.abu, 1                      ; 2 uses
  store i32 %i.aby, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i480 = icmp eq i64 %i.abt, %i.abs
  br i1 %.not.i480, label %bb.bf, label %bb.be, !prof !45

bb.be:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit182
  %i.abz = load ptr, ptr %114, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.aca = getelementptr inbounds nuw [16 x i8], ptr %i.abz, i64 %i.abt ; 2 uses
  store i32 0, ptr %i.aca, align 8, !tbaa !34
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store ptr null, ptr %i.acb, align 8, !tbaa !35
  %i.acc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.acd = add i32 %i.acc, 1
  store i32 %i.acd, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.ace = add i64 %i.abt, 1                      ; 2 uses
  store i64 %i.ace, ptr %i.zo, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit181

bb.bf:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #23
  %i.acf = load ptr, ptr %114, align 8, !tbaa !38
  %i.acg = getelementptr inbounds nuw [16 x i8], ptr %i.acf, i64 %i.abs
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %76, ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef %i.acg, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %116)
          to label %.noexc482 unwind label %bb.mn

.noexc482:                                        ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23
  %.pre1922 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.ajj = add i32 %i.ajg, 1
  store i32 %i.ajj, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.ajk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 42)
          to label %bb.bw unwind label %bb.mx     ; 0 uses

bb.bw:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.ajl = load ptr, ptr %120, align 8, !tbaa !38, !noalias !215 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  store i32 0, ptr %124, align 8, !tbaa !34, !alias.scope !216
  %i.ajm = getelementptr inbounds nuw i8, ptr %124, i64 8 ; 2 uses
  store ptr null, ptr %i.ajm, align 8, !tbaa !35, !alias.scope !216
  %i.ajn = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12, !noalias !216
  %i.ajo = add i32 %i.ajn, 1
  store i32 %i.ajo, ptr @_ZN1X2spE, align 16, !tbaa !12, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #23
  %i.ajp = load i64, ptr %i.afv, align 8, !tbaa !42, !noalias !217
  %i.ajq = load i64, ptr %i.afy, align 8, !tbaa !40, !noalias !217 ; 6 uses
  %.not.i.i541 = icmp eq i64 %i.ajp, %i.ajq
  br i1 %.not.i.i541, label %bb.ca, label %bb.bx, !prof !45

bb.bx:                                            ; preds = %bb.bw
  %.idx2397 = shl nuw nsw i64 %i.ajq, 4
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %.idx2397 ; 6 uses
  %.not.i.i.i542 = icmp eq i64 %i.ajq, 0
  br i1 %.not.i.i.i542, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajl) ]
  store i32 0, ptr %i.ajl, align 8, !tbaa !34, !noalias !217
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store ptr null, ptr %i.ajs, align 8, !tbaa !35, !noalias !217
  %i.ajt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27, !noalias !217
  %i.aju = add i32 %i.ajt, 1
  store i32 %i.aju, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27, !noalias !217
  store i64 1, ptr %i.afy, align 8, !tbaa !40, !noalias !217
  br label %_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit195

bb.bz:                                            ; preds = %bb.bx
  %i.ajv = getelementptr inbounds i8, ptr %i.ajr, i64 -16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajl) ]
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !34, !noalias !217
  store i32 %i.ajw, ptr %i.ajr, align 8, !tbaa !34, !noalias !217
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.ajy = getelementptr inbounds i8, ptr %i.ajr, i64 -8
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !35, !noalias !217
  store ptr %i.ajz, ptr %i.ajx, align 8, !tbaa !35, !noalias !217
  %i.aka = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !217
  %i.akb = add i32 %i.aka, 1
  store i32 %i.akb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !217
  %i.akc = add i64 %i.ajq, 1
  store i64 %i.akc, ptr %i.afy, align 8, !tbaa !40, !noalias !217
  %i.akd = add nsw i64 %i.ajq, -1                 ; 5 uses
  %.not8.i.i.i.i543 = icmp eq i64 %i.akd, 0
  br i1 %.not8.i.i.i.i543, label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i551, label %.lr.ph.i.i.i.i544

.lr.ph.i.i.i.i544:                                ; preds = %bb.bz
  %.promoted.i.i.i.i545 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !217
  %i.ake = add i64 %i.ajq, -2
  %xtraiter2489 = and i64 %i.akd, 3               ; 2 uses
  %lcmp.mod2490.not = icmp eq i64 %xtraiter2489, 0
  br i1 %lcmp.mod2490.not, label %.prol.loopexit2488, label %.prol.preheader2487

.prol.preheader2487:                              ; preds = %.lr.ph.i.i.i.i544, %.prol.preheader2487
  %.011.i.i.i.i546.prol = phi ptr [ %i.akh, %.prol.preheader2487 ], [ %i.ajr, %.lr.ph.i.i.i.i544 ] ; 2 uses
  %.0610.i.i.i.i547.prol = phi i64 [ %i.akf, %.prol.preheader2487 ], [ %i.akd, %.lr.ph.i.i.i.i544 ]
  %.079.i.i.i.i548.prol = phi ptr [ %i.akg, %.prol.preheader2487 ], [ %i.ajv, %.lr.ph.i.i.i.i544 ] ; 2 uses
  %prol.iter2491 = phi i64 [ %prol.iter2491.next, %.prol.preheader2487 ], [ 0, %.lr.ph.i.i.i.i544 ]
  %i.akf = add i64 %.0610.i.i.i.i547.prol, -1     ; 2 uses
  %i.akg = getelementptr inbounds i8, ptr %.079.i.i.i.i548.prol, i64 -16 ; 3 uses
  %i.akh = getelementptr inbounds i8, ptr %.011.i.i.i.i546.prol, i64 -16 ; 3 uses
  %i.aki = load i32, ptr %i.akg, align 8, !tbaa !34, !noalias !217
  store i32 %i.aki, ptr %i.akh, align 8, !tbaa !34, !noalias !217
  %i.akj = getelementptr inbounds i8, ptr %.079.i.i.i.i548.prol, i64 -8
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !35, !noalias !217
  %i.akl = getelementptr inbounds i8, ptr %.011.i.i.i.i546.prol, i64 -8
  store ptr %i.akk, ptr %i.akl, align 8, !tbaa !35, !noalias !217
  %prol.iter2491.next = add i64 %prol.iter2491, 1 ; 2 uses
  %prol.iter2491.cmp.not = icmp eq i64 %prol.iter2491.next, %xtraiter2489
  br i1 %prol.iter2491.cmp.not, label %.prol.loopexit2488, label %.prol.preheader2487, !llvm.loop !126

.prol.loopexit2488:                               ; preds = %.prol.preheader2487, %.lr.ph.i.i.i.i544
  %.011.i.i.i.i546.unr = phi ptr [ %i.ajr, %.lr.ph.i.i.i.i544 ], [ %i.akh, %.prol.preheader2487 ]
  %.0610.i.i.i.i547.unr = phi i64 [ %i.akd, %.lr.ph.i.i.i.i544 ], [ %i.akf, %.prol.preheader2487 ]
  %.079.i.i.i.i548.unr = phi ptr [ %i.ajv, %.lr.ph.i.i.i.i544 ], [ %i.akg, %.prol.preheader2487 ]
  %i.akm = icmp ult i64 %i.ake, 3
  br i1 %i.akm, label %._crit_edge.i.i.i.i550, label %.lr.ph.i.i.i.i544.new

.lr.ph.i.i.i.i544.new:                            ; preds = %.prol.loopexit2488, %.lr.ph.i.i.i.i544.new
  %.011.i.i.i.i546 = phi ptr [ %i.alh, %.lr.ph.i.i.i.i544.new ], [ %.011.i.i.i.i546.unr, %.prol.loopexit2488 ] ; 8 uses
  %.0610.i.i.i.i547 = phi i64 [ %i.alf, %.lr.ph.i.i.i.i544.new ], [ %.0610.i.i.i.i547.unr, %.prol.loopexit2488 ]
  %.079.i.i.i.i548 = phi ptr [ %i.alg, %.lr.ph.i.i.i.i544.new ], [ %.079.i.i.i.i548.unr, %.prol.loopexit2488 ] ; 8 uses
  %i.akn = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -16
  %i.ako = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -16
  %i.akp = load i32, ptr %i.akn, align 8, !tbaa !34, !noalias !217
  store i32 %i.akp, ptr %i.ako, align 8, !tbaa !34, !noalias !217
  %i.akq = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -8
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !35, !noalias !217
  %i.aks = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -8
  store ptr %i.akr, ptr %i.aks, align 8, !tbaa !35, !noalias !217
  %i.akt = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -32
  %i.aku = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -32
  %i.akv = load i32, ptr %i.akt, align 8, !tbaa !34, !noalias !217
  store i32 %i.akv, ptr %i.aku, align 8, !tbaa !34, !noalias !217
  %i.akw = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -24
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !35, !noalias !217
  %i.aky = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -24
  store ptr %i.akx, ptr %i.aky, align 8, !tbaa !35, !noalias !217
  %i.akz = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -48
  %i.ala = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -48
  %i.alb = load i32, ptr %i.akz, align 8, !tbaa !34, !noalias !217
  store i32 %i.alb, ptr %i.ala, align 8, !tbaa !34, !noalias !217
  %i.alc = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -40
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !35, !noalias !217
  %i.ale = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -40
  store ptr %i.ald, ptr %i.ale, align 8, !tbaa !35, !noalias !217
  %i.alf = add i64 %.0610.i.i.i.i547, -4          ; 2 uses
  %i.alg = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -64 ; 2 uses
  %i.alh = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -64 ; 2 uses
  %i.ali = load i32, ptr %i.alg, align 8, !tbaa !34, !noalias !217
  store i32 %i.ali, ptr %i.alh, align 8, !tbaa !34, !noalias !217
  %i.alj = getelementptr inbounds i8, ptr %.079.i.i.i.i548, i64 -56
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !35, !noalias !217
  %i.all = getelementptr inbounds i8, ptr %.011.i.i.i.i546, i64 -56
  store ptr %i.alk, ptr %i.all, align 8, !tbaa !35, !noalias !217
  %.not.i.i.i.i549.3 = icmp eq i64 %i.alf, 0
  br i1 %.not.i.i.i.i549.3, label %._crit_edge.i.i.i.i550, label %.lr.ph.i.i.i.i544.new, !llvm.loop !82

._crit_edge.i.i.i.i550:                           ; preds = %.lr.ph.i.i.i.i544.new, %.prol.loopexit2488
  %i.alm = trunc i64 %i.akd to i32
  %i.aln = add i32 %.promoted.i.i.i.i545, %i.alm
  store i32 %i.aln, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !217
  br label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i551

_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i551: ; preds = %._crit_edge.i.i.i.i550, %bb.bz
  %i.alo = load i32, ptr %124, align 8, !tbaa !34, !noalias !217
  store i32 %i.alo, ptr %i.ajl, align 8, !tbaa !34, !noalias !217
  %i.alp = load ptr, ptr %i.ajm, align 8, !tbaa !35, !noalias !217
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store ptr %i.alp, ptr %i.alq, align 8, !tbaa !35, !noalias !217
  %i.alr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 12), align 4, !tbaa !28, !noalias !217
  %i.als = add i32 %i.alr, 1
  store i32 %i.als, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 12), align 4, !tbaa !28, !noalias !217
  br label %_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit195

bb.ca:                                            ; preds = %bb.bw
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %125, ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef %i.ajl, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %124)
          to label %_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit195 unwind label %bb.my

_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit195: ; preds = %bb.by, %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i551, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #23
  %i.alt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.alu = add i32 %i.alt, 1
  store i32 %i.alu, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #23
  %i.alv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.cb unwind label %bb.mx     ; 0 uses

bb.cb:                                            ; preds = %_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit195
  %i.alw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit556 unwind label %bb.mx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit556: ; preds = %bb.cb
  %i.alx = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.281707.0.copyload1709 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.641779.0.copyload1781 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.761803.0.copyload1805 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.aly = add i32 %.sroa.281707.0.copyload1709, 1 ; 2 uses
  store i32 %i.aly, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.alz = load i64, ptr %i.afy, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i557 = icmp eq i64 %i.alz, 0
  br i1 %.not3.i.i557, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i560, label %.lr.ph.preheader.i.i558

.lr.ph.preheader.i.i558:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit556
  %i.ama = trunc i64 %i.alz to i32
  %i.amb = add i32 %i.aly, %i.ama
  store i32 %i.amb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i560

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i560: ; preds = %.lr.ph.preheader.i.i558, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit556
  %i.amc = load i64, ptr %i.afv, align 8, !tbaa !42 ; 2 uses
  %.not.i.i561 = icmp eq i64 %i.amc, 0
  br i1 %.not.i.i561, label %_ZN5boost9container6vectorI1XvvED2Ev.exit562, label %bb.cc

bb.cc:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i560
  %i.amd = load ptr, ptr %120, align 8, !tbaa !47
  %i.ame = shl i64 %i.amc, 4
  call void @_ZdlPvm(ptr noundef %i.amd, i64 noundef %i.ame) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit562

_ZN5boost9container6vectorI1XvvED2Ev.exit562:     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i560, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.amf = icmp eq <4 x i32> %i.alx, %i.afn
  %i.amg = icmp eq i32 %.sroa.641779.0.copyload1781, %.sroa.64.0.copyload1638
  %i.amh = icmp eq i32 %.sroa.761803.0.copyload1805, %.sroa.76.0.copyload1661
  %i.ami = freeze <4 x i1> %i.amf
  %i.amj = bitcast <4 x i1> %i.ami to i4
  %i.amk = icmp eq i4 %i.amj, -1
  %op.rdx2425 = select i1 %i.amk, i1 %i.amg, i1 false
  %op.rdx2426 = select i1 %op.rdx2425, i1 %i.amh, i1 false
  %i.aml = zext i1 %op.rdx2426 to i8
  store i8 %i.aml, ptr %i.c, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 1, ptr %i.d, align 1, !tbaa !49
  %i.amm = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %126, i8 0, i64 24, i1 false)
  %i.amn = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 6 uses
  %i.amo = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc579 unwind label %bb.nb ; 5 uses

.noexc579:                                        ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit562
  %i.amp = load ptr, ptr %126, align 8, !tbaa !38 ; 6 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %126, i64 8 ; 12 uses
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i564 = shl i64 %i.amr, 4                ; 3 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amp, i64 %.idx.i.i564
  %.not16.i.i.i.i.i565 = icmp eq i64 %i.amr, 0
  br i1 %.not16.i.i.i.i.i565, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i577, label %.lr.ph.i.i.i.i.i566

.lr.ph.i.i.i.i.i566:                              ; preds = %.noexc579
  %.promoted.i.i.i.i.i567 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.amt = add i64 %.idx.i.i564, -16              ; 2 uses
  %i.amu = lshr exact i64 %i.amt, 4
  %i.amv = add nuw nsw i64 %i.amu, 1
  %xtraiter2494 = and i64 %i.amv, 3               ; 2 uses
  %lcmp.mod2495.not = icmp eq i64 %xtraiter2494, 0
  br i1 %lcmp.mod2495.not, label %.prol.loopexit2493, label %.prol.preheader2492

.prol.preheader2492:                              ; preds = %.lr.ph.i.i.i.i.i566, %.prol.preheader2492
  %.018.i.i.i.i.i568.prol = phi ptr [ %i.ana, %.prol.preheader2492 ], [ %i.amp, %.lr.ph.i.i.i.i.i566 ] ; 3 uses
  %.01517.i.i.i.i.i569.prol = phi ptr [ %i.anb, %.prol.preheader2492 ], [ %i.amo, %.lr.ph.i.i.i.i.i566 ] ; 3 uses
  %prol.iter2496 = phi i64 [ %prol.iter2496.next, %.prol.preheader2492 ], [ 0, %.lr.ph.i.i.i.i.i566 ]
  %i.amw = load i32, ptr %.018.i.i.i.i.i568.prol, align 8, !tbaa !34
  store i32 %i.amw, ptr %.01517.i.i.i.i.i569.prol, align 8, !tbaa !34
  %i.amx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569.prol, i64 8
  %i.amy = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568.prol, i64 8
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !35
  store ptr %i.amz, ptr %i.amx, align 8, !tbaa !35
  %i.ana = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568.prol, i64 16 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569.prol, i64 16 ; 2 uses
  %prol.iter2496.next = add i64 %prol.iter2496, 1 ; 2 uses
  %prol.iter2496.cmp.not = icmp eq i64 %prol.iter2496.next, %xtraiter2494
  br i1 %prol.iter2496.cmp.not, label %.prol.loopexit2493, label %.prol.preheader2492, !llvm.loop !127

.prol.loopexit2493:                               ; preds = %.prol.preheader2492, %.lr.ph.i.i.i.i.i566
  %.018.i.i.i.i.i568.unr = phi ptr [ %i.amp, %.lr.ph.i.i.i.i.i566 ], [ %i.ana, %.prol.preheader2492 ]
  %.01517.i.i.i.i.i569.unr = phi ptr [ %i.amo, %.lr.ph.i.i.i.i.i566 ], [ %i.anb, %.prol.preheader2492 ]
  %i.anc = icmp ult i64 %i.amt, 48
  br i1 %i.anc, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i571, label %.lr.ph.i.i.i.i.i566.new

.lr.ph.i.i.i.i.i566.new:                          ; preds = %.prol.loopexit2493, %.lr.ph.i.i.i.i.i566.new
  %.018.i.i.i.i.i568 = phi ptr [ %i.anz, %.lr.ph.i.i.i.i.i566.new ], [ %.018.i.i.i.i.i568.unr, %.prol.loopexit2493 ] ; 9 uses
  %.01517.i.i.i.i.i569 = phi ptr [ %i.aoa, %.lr.ph.i.i.i.i.i566.new ], [ %.01517.i.i.i.i.i569.unr, %.prol.loopexit2493 ] ; 9 uses
  %i.and = load i32, ptr %.018.i.i.i.i.i568, align 8, !tbaa !34
  store i32 %i.and, ptr %.01517.i.i.i.i.i569, align 8, !tbaa !34
  %i.ane = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 8
  %i.anf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 8
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !35
  store ptr %i.ang, ptr %i.ane, align 8, !tbaa !35
  %i.anh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 16
  %i.ani = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 16
  %i.anj = load i32, ptr %i.anh, align 8, !tbaa !34
  store i32 %i.anj, ptr %i.ani, align 8, !tbaa !34
  %i.ank = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 24
  %i.anl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 24
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !35
  store ptr %i.anm, ptr %i.ank, align 8, !tbaa !35
  %i.ann = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 32
  %i.ano = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 32
  %i.anp = load i32, ptr %i.ann, align 8, !tbaa !34
  store i32 %i.anp, ptr %i.ano, align 8, !tbaa !34
  %i.anq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 40
  %i.anr = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 40
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !35
  store ptr %i.ans, ptr %i.anq, align 8, !tbaa !35
  %i.ant = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 48
  %i.anu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 48
  %i.anv = load i32, ptr %i.ant, align 8, !tbaa !34
  store i32 %i.anv, ptr %i.anu, align 8, !tbaa !34
  %i.anw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 56
  %i.anx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 56
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !35
  store ptr %i.any, ptr %i.anw, align 8, !tbaa !35
  %i.anz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i568, i64 64 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i569, i64 64
  %.not.i.i.i.i.i570.3 = icmp eq ptr %i.anz, %i.ams
  br i1 %.not.i.i.i.i.i570.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i571, label %.lr.ph.i.i.i.i.i566.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i577: ; preds = %.noexc579
  %.not.i.i.i578 = icmp eq ptr %i.amp, null
  br i1 %.not.i.i.i578, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i576, label %bb.cd

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i571: ; preds = %.lr.ph.i.i.i.i.i566.new, %.prol.loopexit2493
  %i.aob = add i64 %.idx.i.i564, 68719476720
  %i.aoc = lshr exact i64 %i.aob, 4
  %i.aod = trunc i64 %i.aoc to i32
  %i.aoe = add i32 %i.aod, 1
  %i.aof = add i32 %i.aoe, %.promoted.i.i.i.i.i567
  store i32 %i.aof, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i572 = icmp eq ptr %i.amp, null
  br i1 %.not.i5.i.i572, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i576, label %.lr.ph.preheader.i.i.i.i573

.lr.ph.preheader.i.i.i.i573:                      ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i571
  %.promoted.i.i.i.i574 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.aog = trunc i64 %i.amr to i32
  %i.aoh = add i32 %.promoted.i.i.i.i574, %i.aog
  store i32 %i.aoh, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.preheader.i.i.i.i573, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i577
  %i.aoi = load i64, ptr %i.amn, align 8, !tbaa !42
  %i.aoj = shl i64 %i.aoi, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.amp, i64 noundef %i.aoj) #23
  %.pre.i.i.i575 = load i64, ptr %i.amq, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i576

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i576: ; preds = %bb.cd, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i571, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i577
  %i.aok = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i577 ], [ %.pre.i.i.i575, %bb.cd ], [ %i.amr, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i571 ] ; 4 uses
  store ptr %i.amo, ptr %126, align 8, !tbaa !38
  store i64 %i.aok, ptr %i.amq, align 8, !tbaa !43
  store i64 4, ptr %i.amn, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #23
  store i32 0, ptr %127, align 8, !tbaa !34
  %i.aol = getelementptr inbounds nuw i8, ptr %127, i64 8
  store ptr null, ptr %i.aol, align 8, !tbaa !35
  %i.aom = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.aon = add i32 %i.aom, 1                      ; 2 uses
  store i32 %i.aon, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i581 = icmp eq i64 %i.aok, 4
  br i1 %.not.i581, label %bb.cf, label %bb.ce, !prof !45

bb.ce:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i576
  %i.aoo = getelementptr inbounds nuw [16 x i8], ptr %i.amo, i64 %i.aok ; 2 uses
  store i32 0, ptr %i.aoo, align 8, !tbaa !34
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  store ptr null, ptr %i.aop, align 8, !tbaa !35
  %i.aoq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.aor = add i32 %i.aoq, 1
  store i32 %i.aor, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.aos = add i64 %i.aok, 1                      ; 2 uses
  store i64 %i.aos, ptr %i.amq, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit176

bb.cf:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i576
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #23
  %i.aot = getelementptr inbounds nuw i8, ptr %i.amo, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %71, ptr noundef nonnull align 8 dereferenceable(24) %126, ptr noundef nonnull %i.aot, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %127)
          to label %.noexc583 unwind label %bb.nc

.noexc583:                                        ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %.pre1935 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1936 = load i64, ptr %i.amq, align 8, !tbaa !40
  %.pre1937 = load i64, ptr %i.amn, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit176

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit176: ; preds = %.noexc583, %bb.ce
  %i.aou = phi i64 [ %.pre1937, %.noexc583 ], [ 4, %bb.ce ] ; 3 uses
  %i.aov = phi i64 [ %.pre1936, %.noexc583 ], [ %i.aos, %bb.ce ] ; 3 uses
  %i.aow = phi i32 [ %.pre1935, %.noexc583 ], [ %i.aon, %bb.ce ]
  %i.aox = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.aoy = add i32 %i.aox, 1
  store i32 %i.aoy, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #23
  store i32 0, ptr %128, align 8, !tbaa !34
  %i.aoz = getelementptr inbounds nuw i8, ptr %128, i64 8
  store ptr null, ptr %i.aoz, align 8, !tbaa !35
  %i.apa = add i32 %i.aow, 1                      ; 2 uses
  store i32 %i.apa, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i585 = icmp eq i64 %i.aov, %i.aou
  br i1 %.not.i585, label %bb.ch, label %bb.cg, !prof !45

bb.cg:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit176
  %i.apb = load ptr, ptr %126, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.apc = getelementptr inbounds nuw [16 x i8], ptr %i.apb, i64 %i.aov ; 2 uses
  store i32 0, ptr %i.apc, align 8, !tbaa !34
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  store ptr null, ptr %i.apd, align 8, !tbaa !35
  %i.ape = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.apf = add i32 %i.ape, 1
  store i32 %i.apf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.apg = add i64 %i.aov, 1                      ; 2 uses
  store i64 %i.apg, ptr %i.amq, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit175

bb.ch:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #23
  %i.aph = load ptr, ptr %126, align 8, !tbaa !38
  %i.api = getelementptr inbounds nuw [16 x i8], ptr %i.aph, i64 %i.aou
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %70, ptr noundef nonnull align 8 dereferenceable(24) %126, ptr noundef %i.api, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %128)
          to label %.noexc587 unwind label %bb.nd

.noexc587:                                        ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  %.pre1938 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_1
begin_hunk_2_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit171

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit171: ; preds = %.noexc644, %bb.cv
  %i.awd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.awe = add i32 %i.awd, 1
  store i32 %i.awe, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #23
  %i.awf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647 unwind label %bb.nh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.awg = load ptr, ptr %132, align 8, !tbaa !38, !noalias !220 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #23
  store i32 0, ptr %136, align 8, !tbaa !34
  %i.awh = getelementptr inbounds nuw i8, ptr %136, i64 8 ; 2 uses
  store ptr null, ptr %i.awh, align 8, !tbaa !35
  store i32 1, ptr @_ZN1X2spE, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #23
  %i.awi = load i64, ptr %i.ass, align 8, !tbaa !42, !noalias !221
  %i.awj = load i64, ptr %i.asv, align 8, !tbaa !40, !noalias !221 ; 6 uses
  %.not.i.i648 = icmp eq i64 %i.awi, %i.awj
  br i1 %.not.i.i648, label %bb.da, label %bb.cx, !prof !45

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647
  %.not.i.i.i649 = icmp eq i64 %i.awj, 0
  br i1 %.not.i.i.i649, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awg) ]
  store i32 0, ptr %i.awg, align 8, !tbaa !34, !noalias !221
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awg, i64 8
  store ptr null, ptr %i.awk, align 8, !tbaa !35, !noalias !221
  %i.awl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !221
  %i.awm = add i32 %i.awl, 1
  store i32 %i.awm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !221
  store i64 1, ptr %i.asv, align 8, !tbaa !40, !noalias !221
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit661

bb.cz:                                            ; preds = %bb.cx
  %.idx2399 = shl nuw nsw i64 %i.awj, 4
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awg, i64 %.idx2399 ; 6 uses
  %i.awo = getelementptr inbounds i8, ptr %i.awn, i64 -16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awg) ]
  %i.awp = load i32, ptr %i.awo, align 8, !tbaa !34, !noalias !221
  store i32 %i.awp, ptr %i.awn, align 8, !tbaa !34, !noalias !221
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.awr = getelementptr inbounds i8, ptr %i.awn, i64 -8
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !35, !noalias !221
  store ptr %i.aws, ptr %i.awq, align 8, !tbaa !35, !noalias !221
  %i.awt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !221
  %i.awu = add i32 %i.awt, 1
  store i32 %i.awu, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !221
  %i.awv = add i64 %i.awj, 1
  store i64 %i.awv, ptr %i.asv, align 8, !tbaa !40, !noalias !221
  %i.aww = add nsw i64 %i.awj, -1                 ; 5 uses
  %.not8.i.i.i.i650 = icmp eq i64 %i.aww, 0
  %.pre.i.i.i651 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !221 ; 2 uses
  br i1 %.not8.i.i.i.i650, label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i658, label %.lr.ph.i.i.i.i652.preheader

.lr.ph.i.i.i.i652.preheader:                      ; preds = %bb.cz
  %i.awx = add i64 %i.awj, -2
  %xtraiter2505 = and i64 %i.aww, 3               ; 2 uses
  %lcmp.mod2506.not = icmp eq i64 %xtraiter2505, 0
  br i1 %lcmp.mod2506.not, label %.lr.ph.i.i.i.i652.prol.loopexit, label %.lr.ph.i.i.i.i652.prol

.lr.ph.i.i.i.i652.prol:                           ; preds = %.lr.ph.i.i.i.i652.preheader, %.lr.ph.i.i.i.i652.prol
  %.011.i.i.i.i653.prol = phi ptr [ %i.axa, %.lr.ph.i.i.i.i652.prol ], [ %i.awn, %.lr.ph.i.i.i.i652.preheader ] ; 2 uses
  %.0610.i.i.i.i654.prol = phi i64 [ %i.awy, %.lr.ph.i.i.i.i652.prol ], [ %i.aww, %.lr.ph.i.i.i.i652.preheader ]
  %.079.i.i.i.i655.prol = phi ptr [ %i.awz, %.lr.ph.i.i.i.i652.prol ], [ %i.awo, %.lr.ph.i.i.i.i652.preheader ] ; 2 uses
  %prol.iter2507 = phi i64 [ %prol.iter2507.next, %.lr.ph.i.i.i.i652.prol ], [ 0, %.lr.ph.i.i.i.i652.preheader ]
  %i.awy = add i64 %.0610.i.i.i.i654.prol, -1     ; 2 uses
  %i.awz = getelementptr inbounds i8, ptr %.079.i.i.i.i655.prol, i64 -16 ; 3 uses
  %i.axa = getelementptr inbounds i8, ptr %.011.i.i.i.i653.prol, i64 -16 ; 3 uses
  %i.axb = load i32, ptr %i.awz, align 8, !tbaa !34, !noalias !221
  store i32 %i.axb, ptr %i.axa, align 8, !tbaa !34, !noalias !221
  %i.axc = getelementptr inbounds i8, ptr %.079.i.i.i.i655.prol, i64 -8
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !35, !noalias !221
  %i.axe = getelementptr inbounds i8, ptr %.011.i.i.i.i653.prol, i64 -8
  store ptr %i.axd, ptr %i.axe, align 8, !tbaa !35, !noalias !221
  %prol.iter2507.next = add i64 %prol.iter2507, 1 ; 2 uses
  %prol.iter2507.cmp.not = icmp eq i64 %prol.iter2507.next, %xtraiter2505
  br i1 %prol.iter2507.cmp.not, label %.lr.ph.i.i.i.i652.prol.loopexit, label %.lr.ph.i.i.i.i652.prol, !llvm.loop !142

.lr.ph.i.i.i.i652.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i652.prol, %.lr.ph.i.i.i.i652.preheader
  %.011.i.i.i.i653.unr = phi ptr [ %i.awn, %.lr.ph.i.i.i.i652.preheader ], [ %i.axa, %.lr.ph.i.i.i.i652.prol ]
  %.0610.i.i.i.i654.unr = phi i64 [ %i.aww, %.lr.ph.i.i.i.i652.preheader ], [ %i.awy, %.lr.ph.i.i.i.i652.prol ]
  %.079.i.i.i.i655.unr = phi ptr [ %i.awo, %.lr.ph.i.i.i.i652.preheader ], [ %i.awz, %.lr.ph.i.i.i.i652.prol ]
  %i.axf = icmp ult i64 %i.awx, 3
  br i1 %i.axf, label %._crit_edge.i.i.i.i657, label %.lr.ph.i.i.i.i652

.lr.ph.i.i.i.i652:                                ; preds = %.lr.ph.i.i.i.i652.prol.loopexit, %.lr.ph.i.i.i.i652
  %.011.i.i.i.i653 = phi ptr [ %i.aya, %.lr.ph.i.i.i.i652 ], [ %.011.i.i.i.i653.unr, %.lr.ph.i.i.i.i652.prol.loopexit ] ; 8 uses
  %.0610.i.i.i.i654 = phi i64 [ %i.axy, %.lr.ph.i.i.i.i652 ], [ %.0610.i.i.i.i654.unr, %.lr.ph.i.i.i.i652.prol.loopexit ]
  %.079.i.i.i.i655 = phi ptr [ %i.axz, %.lr.ph.i.i.i.i652 ], [ %.079.i.i.i.i655.unr, %.lr.ph.i.i.i.i652.prol.loopexit ] ; 8 uses
  %i.axg = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -16
  %i.axh = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -16
  %i.axi = load i32, ptr %i.axg, align 8, !tbaa !34, !noalias !221
  store i32 %i.axi, ptr %i.axh, align 8, !tbaa !34, !noalias !221
  %i.axj = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !35, !noalias !221
  %i.axl = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -8
  store ptr %i.axk, ptr %i.axl, align 8, !tbaa !35, !noalias !221
  %i.axm = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -32
  %i.axn = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -32
  %i.axo = load i32, ptr %i.axm, align 8, !tbaa !34, !noalias !221
  store i32 %i.axo, ptr %i.axn, align 8, !tbaa !34, !noalias !221
  %i.axp = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -24
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !35, !noalias !221
  %i.axr = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -24
  store ptr %i.axq, ptr %i.axr, align 8, !tbaa !35, !noalias !221
  %i.axs = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -48
  %i.axt = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -48
  %i.axu = load i32, ptr %i.axs, align 8, !tbaa !34, !noalias !221
  store i32 %i.axu, ptr %i.axt, align 8, !tbaa !34, !noalias !221
  %i.axv = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -40
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !35, !noalias !221
  %i.axx = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -40
  store ptr %i.axw, ptr %i.axx, align 8, !tbaa !35, !noalias !221
  %i.axy = add i64 %.0610.i.i.i.i654, -4          ; 2 uses
  %i.axz = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -64 ; 2 uses
  %i.aya = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -64 ; 2 uses
  %i.ayb = load i32, ptr %i.axz, align 8, !tbaa !34, !noalias !221
  store i32 %i.ayb, ptr %i.aya, align 8, !tbaa !34, !noalias !221
  %i.ayc = getelementptr inbounds i8, ptr %.079.i.i.i.i655, i64 -56
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !35, !noalias !221
  %i.aye = getelementptr inbounds i8, ptr %.011.i.i.i.i653, i64 -56
  store ptr %i.ayd, ptr %i.aye, align 8, !tbaa !35, !noalias !221
  %.not.i.i.i.i656.3 = icmp eq i64 %i.axy, 0
  br i1 %.not.i.i.i.i656.3, label %._crit_edge.i.i.i.i657, label %.lr.ph.i.i.i.i652, !llvm.loop !82

._crit_edge.i.i.i.i657:                           ; preds = %.lr.ph.i.i.i.i652, %.lr.ph.i.i.i.i652.prol.loopexit
  %i.ayf = trunc i64 %i.aww to i32
  %i.ayg = add i32 %.pre.i.i.i651, %i.ayf
  br label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i658

_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i658: ; preds = %._crit_edge.i.i.i.i657, %bb.cz
  %i.ayh = phi i32 [ %.pre.i.i.i651, %bb.cz ], [ %i.ayg, %._crit_edge.i.i.i.i657 ]
  %i.ayi = load i32, ptr %136, align 8, !tbaa !34, !noalias !221
  store i32 %i.ayi, ptr %i.awg, align 8, !tbaa !34, !noalias !221
  %i.ayj = load ptr, ptr %i.awh, align 8, !tbaa !35, !noalias !221
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.awg, i64 8
  store ptr %i.ayj, ptr %i.ayk, align 8, !tbaa !35, !noalias !221
  %i.ayl = add i32 %i.ayh, 1
  store i32 %i.ayl, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !221
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit661

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit647
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %137, ptr noundef nonnull align 8 dereferenceable(24) %132, ptr noundef %i.awg, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %136)
          to label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit661 unwind label %bb.nl

_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit661: ; preds = %bb.cy, %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i658, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #23
  %i.aym = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.ayn = add i32 %i.aym, 1
  store i32 %i.ayn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #23
  %i.ayo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.db unwind label %bb.nh     ; 0 uses

bb.db:                                            ; preds = %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit661
  %i.ayp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663 unwind label %bb.nh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663: ; preds = %bb.db
  %i.ayq = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.64.0.copyload1639 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1662 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.ayr = load i64, ptr %i.asv, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i664 = icmp eq i64 %i.ayr, 0
  br i1 %.not3.i.i664, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i667, label %.lr.ph.preheader.i.i665

.lr.ph.preheader.i.i665:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663
  %.sroa.28.0.copyload1570 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %i.ays = trunc i64 %i.ayr to i32
  %i.ayt = add i32 %.sroa.28.0.copyload1570, %i.ays
  store i32 %i.ayt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i667

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i667: ; preds = %.lr.ph.preheader.i.i665, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit663
  %i.ayu = load i64, ptr %i.ass, align 8, !tbaa !42 ; 2 uses
  %.not.i.i668 = icmp eq i64 %i.ayu, 0
  br i1 %.not.i.i668, label %_ZN5boost9container6vectorI1XvvED2Ev.exit669, label %bb.dc

bb.dc:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i667
  %i.ayv = load ptr, ptr %132, align 8, !tbaa !47
  %i.ayw = shl i64 %i.ayu, 4
  call void @_ZdlPvm(ptr noundef %i.ayv, i64 noundef %i.ayw) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit669

_ZN5boost9container6vectorI1XvvED2Ev.exit669:     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i667, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ayx = icmp eq <4 x i32> %i.asl, %i.ayq
  %i.ayy = icmp eq i32 %.sroa.641779.0.copyload1782, %.sroa.64.0.copyload1639
  %i.ayz = icmp eq i32 %.sroa.761803.0.copyload1806, %.sroa.76.0.copyload1662
  %i.aza = freeze <4 x i1> %i.ayx
  %i.azb = bitcast <4 x i1> %i.aza to i4
  %i.azc = icmp eq i4 %i.azb, -1
  %op.rdx2423 = select i1 %i.azc, i1 %i.ayy, i1 false
  %op.rdx2424 = select i1 %op.rdx2423, i1 %i.ayz, i1 false
  %i.azd = zext i1 %op.rdx2424 to i8
  store i8 %i.azd, ptr %i.e, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 1, ptr %i.f, align 1, !tbaa !49
  %i.aze = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 231, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %138, i8 0, i64 24, i1 false)
  %i.azf = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 6 uses
  %i.azg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc686 unwind label %bb.nn ; 5 uses

.noexc686:                                        ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit669
  %i.azh = load ptr, ptr %138, align 8, !tbaa !38 ; 6 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 12 uses
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i671 = shl i64 %i.azj, 4                ; 3 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 %.idx.i.i671
  %.not16.i.i.i.i.i672 = icmp eq i64 %i.azj, 0
  br i1 %.not16.i.i.i.i.i672, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i684, label %.lr.ph.i.i.i.i.i673

.lr.ph.i.i.i.i.i673:                              ; preds = %.noexc686
  %.promoted.i.i.i.i.i674 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.azl = add i64 %.idx.i.i671, -16              ; 2 uses
  %i.azm = lshr exact i64 %i.azl, 4
  %i.azn = add nuw nsw i64 %i.azm, 1
  %xtraiter2510 = and i64 %i.azn, 3               ; 2 uses
  %lcmp.mod2511.not = icmp eq i64 %xtraiter2510, 0
  br i1 %lcmp.mod2511.not, label %.prol.loopexit2509, label %.prol.preheader2508

.prol.preheader2508:                              ; preds = %.lr.ph.i.i.i.i.i673, %.prol.preheader2508
  %.018.i.i.i.i.i675.prol = phi ptr [ %i.azs, %.prol.preheader2508 ], [ %i.azh, %.lr.ph.i.i.i.i.i673 ] ; 3 uses
  %.01517.i.i.i.i.i676.prol = phi ptr [ %i.azt, %.prol.preheader2508 ], [ %i.azg, %.lr.ph.i.i.i.i.i673 ] ; 3 uses
  %prol.iter2512 = phi i64 [ %prol.iter2512.next, %.prol.preheader2508 ], [ 0, %.lr.ph.i.i.i.i.i673 ]
  %i.azo = load i32, ptr %.018.i.i.i.i.i675.prol, align 8, !tbaa !34
  store i32 %i.azo, ptr %.01517.i.i.i.i.i676.prol, align 8, !tbaa !34
  %i.azp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676.prol, i64 8
  %i.azq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675.prol, i64 8
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !35
  store ptr %i.azr, ptr %i.azp, align 8, !tbaa !35
  %i.azs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675.prol, i64 16 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676.prol, i64 16 ; 2 uses
  %prol.iter2512.next = add i64 %prol.iter2512, 1 ; 2 uses
  %prol.iter2512.cmp.not = icmp eq i64 %prol.iter2512.next, %xtraiter2510
  br i1 %prol.iter2512.cmp.not, label %.prol.loopexit2509, label %.prol.preheader2508, !llvm.loop !143

.prol.loopexit2509:                               ; preds = %.prol.preheader2508, %.lr.ph.i.i.i.i.i673
  %.018.i.i.i.i.i675.unr = phi ptr [ %i.azh, %.lr.ph.i.i.i.i.i673 ], [ %i.azs, %.prol.preheader2508 ]
  %.01517.i.i.i.i.i676.unr = phi ptr [ %i.azg, %.lr.ph.i.i.i.i.i673 ], [ %i.azt, %.prol.preheader2508 ]
  %i.azu = icmp ult i64 %i.azl, 48
  br i1 %i.azu, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i678, label %.lr.ph.i.i.i.i.i673.new

.lr.ph.i.i.i.i.i673.new:                          ; preds = %.prol.loopexit2509, %.lr.ph.i.i.i.i.i673.new
  %.018.i.i.i.i.i675 = phi ptr [ %i.bar, %.lr.ph.i.i.i.i.i673.new ], [ %.018.i.i.i.i.i675.unr, %.prol.loopexit2509 ] ; 9 uses
  %.01517.i.i.i.i.i676 = phi ptr [ %i.bas, %.lr.ph.i.i.i.i.i673.new ], [ %.01517.i.i.i.i.i676.unr, %.prol.loopexit2509 ] ; 9 uses
  %i.azv = load i32, ptr %.018.i.i.i.i.i675, align 8, !tbaa !34
  store i32 %i.azv, ptr %.01517.i.i.i.i.i676, align 8, !tbaa !34
  %i.azw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 8
  %i.azx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 8
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !35
  store ptr %i.azy, ptr %i.azw, align 8, !tbaa !35
  %i.azz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 16
  %i.baa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 16
  %i.bab = load i32, ptr %i.azz, align 8, !tbaa !34
  store i32 %i.bab, ptr %i.baa, align 8, !tbaa !34
  %i.bac = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 24
  %i.bad = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 24
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !35
  store ptr %i.bae, ptr %i.bac, align 8, !tbaa !35
  %i.baf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 32
  %i.bag = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 32
  %i.bah = load i32, ptr %i.baf, align 8, !tbaa !34
  store i32 %i.bah, ptr %i.bag, align 8, !tbaa !34
  %i.bai = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 40
  %i.baj = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 40
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !35
  store ptr %i.bak, ptr %i.bai, align 8, !tbaa !35
  %i.bal = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 48
  %i.bam = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 48
  %i.ban = load i32, ptr %i.bal, align 8, !tbaa !34
  store i32 %i.ban, ptr %i.bam, align 8, !tbaa !34
  %i.bao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 56
  %i.bap = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 56
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !35
  store ptr %i.baq, ptr %i.bao, align 8, !tbaa !35
  %i.bar = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i675, i64 64 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i676, i64 64
  %.not.i.i.i.i.i677.3 = icmp eq ptr %i.bar, %i.azk
  br i1 %.not.i.i.i.i.i677.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i678, label %.lr.ph.i.i.i.i.i673.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i684: ; preds = %.noexc686
  %.not.i.i.i685 = icmp eq ptr %i.azh, null
  br i1 %.not.i.i.i685, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i683, label %bb.dd

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i678: ; preds = %.lr.ph.i.i.i.i.i673.new, %.prol.loopexit2509
  %i.bat = add i64 %.idx.i.i671, 68719476720
  %i.bau = lshr exact i64 %i.bat, 4
  %i.bav = trunc i64 %i.bau to i32
  %i.baw = add i32 %i.bav, 1
  %i.bax = add i32 %i.baw, %.promoted.i.i.i.i.i674
  store i32 %i.bax, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i679 = icmp eq ptr %i.azh, null
  br i1 %.not.i5.i.i679, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i683, label %.lr.ph.preheader.i.i.i.i680

.lr.ph.preheader.i.i.i.i680:                      ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i678
  %.promoted.i.i.i.i681 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.bay = trunc i64 %i.azj to i32
  %i.baz = add i32 %.promoted.i.i.i.i681, %i.bay
  store i32 %i.baz, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.preheader.i.i.i.i680, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i684
  %i.bba = load i64, ptr %i.azf, align 8, !tbaa !42
  %i.bbb = shl i64 %i.bba, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.azh, i64 noundef %i.bbb) #23
  %.pre.i.i.i682 = load i64, ptr %i.azi, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i683

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i683: ; preds = %bb.dd, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i678, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i684
  %i.bbc = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i684 ], [ %.pre.i.i.i682, %bb.dd ], [ %i.azj, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i678 ] ; 4 uses
  store ptr %i.azg, ptr %138, align 8, !tbaa !38
  store i64 %i.bbc, ptr %i.azi, align 8, !tbaa !43
  store i64 3, ptr %i.azf, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #23
  store i32 0, ptr %139, align 8, !tbaa !34
  %i.bbd = getelementptr inbounds nuw i8, ptr %139, i64 8
  store ptr null, ptr %i.bbd, align 8, !tbaa !35
  %i.bbe = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.bbf = add i32 %i.bbe, 1                      ; 2 uses
  store i32 %i.bbf, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i688 = icmp eq i64 %i.bbc, 3
  br i1 %.not.i688, label %bb.df, label %bb.de, !prof !45

bb.de:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i683
  %i.bbg = getelementptr inbounds nuw [16 x i8], ptr %i.azg, i64 %i.bbc ; 2 uses
  store i32 0, ptr %i.bbg, align 8, !tbaa !34
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8
  store ptr null, ptr %i.bbh, align 8, !tbaa !35
  %i.bbi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bbj = add i32 %i.bbi, 1
  store i32 %i.bbj, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bbk = add i64 %i.bbc, 1                      ; 2 uses
  store i64 %i.bbk, ptr %i.azi, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit170

bb.df:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i683
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.azg, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %65, ptr noundef nonnull align 8 dereferenceable(24) %138, ptr noundef nonnull %i.bbl, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %139)
          to label %.noexc690 unwind label %bb.no

.noexc690:                                        ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  %.pre1947 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1948 = load i64, ptr %i.azi, align 8, !tbaa !40
  %.pre1949 = load i64, ptr %i.azf, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit170

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit170: ; preds = %.noexc690, %bb.de
  %i.bbm = phi i64 [ %.pre1949, %.noexc690 ], [ 3, %bb.de ] ; 3 uses
  %i.bbn = phi i64 [ %.pre1948, %.noexc690 ], [ %i.bbk, %bb.de ] ; 3 uses
  %i.bbo = phi i32 [ %.pre1947, %.noexc690 ], [ %i.bbf, %bb.de ]
  %i.bbp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.bbq = add i32 %i.bbp, 1
  store i32 %i.bbq, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #23
  store i32 0, ptr %140, align 8, !tbaa !34
  %i.bbr = getelementptr inbounds nuw i8, ptr %140, i64 8
  store ptr null, ptr %i.bbr, align 8, !tbaa !35
  %i.bbs = add i32 %i.bbo, 1                      ; 2 uses
  store i32 %i.bbs, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i692 = icmp eq i64 %i.bbn, %i.bbm
  br i1 %.not.i692, label %bb.dh, label %bb.dg, !prof !45

bb.dg:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit170
  %i.bbt = load ptr, ptr %138, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.bbu = getelementptr inbounds nuw [16 x i8], ptr %i.bbt, i64 %i.bbn ; 2 uses
  store i32 0, ptr %i.bbu, align 8, !tbaa !34
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 8
  store ptr null, ptr %i.bbv, align 8, !tbaa !35
  %i.bbw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bbx = add i32 %i.bbw, 1
  store i32 %i.bbx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bby = add i64 %i.bbn, 1                      ; 2 uses
  store i64 %i.bby, ptr %i.azi, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit169

bb.dh:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  %i.bbz = load ptr, ptr %138, align 8, !tbaa !38
  %i.bca = getelementptr inbounds nuw [16 x i8], ptr %i.bbz, i64 %i.bbm
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %64, ptr noundef nonnull align 8 dereferenceable(24) %138, ptr noundef %i.bca, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %140)
          to label %.noexc694 unwind label %bb.np

.noexc694:                                        ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  %.pre1950 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.biy = phi i32 [ %.pre1960, %.noexc751 ], [ %i.bip, %bb.dv ]
  %i.biz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.bja = add i32 %i.biz, 1
  store i32 %i.bja, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #23
  store i32 0, ptr %148, align 8, !tbaa !34
  %i.bjb = getelementptr inbounds nuw i8, ptr %148, i64 8 ; 3 uses
  store ptr null, ptr %i.bjb, align 8, !tbaa !35
  %i.bjc = add i32 %i.biy, 1
  store i32 %i.bjc, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.bjd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit754 unwind label %bb.nz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit754: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.bje = load ptr, ptr %144, align 8, !tbaa !38, !noalias !224 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #23
  %i.bjf = load i64, ptr %i.bfn, align 8, !tbaa !42, !noalias !225
  %i.bjg = load i64, ptr %i.bfq, align 8, !tbaa !40, !noalias !225 ; 6 uses
  %.not.i.i755 = icmp eq i64 %i.bjf, %i.bjg
  br i1 %.not.i.i755, label %bb.ea, label %bb.dx, !prof !45

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit754
  %.idx2401 = shl nuw nsw i64 %i.bjg, 4
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bje, i64 %.idx2401 ; 6 uses
  %.not.i.i.i756 = icmp eq i64 %i.bjg, 0
  br i1 %.not.i.i.i756, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bje) ]
  %i.bji = load i32, ptr %148, align 8, !tbaa !34, !noalias !225
  store i32 %i.bji, ptr %i.bje, align 8, !tbaa !34, !noalias !225
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  %i.bjk = load ptr, ptr %i.bjb, align 8, !tbaa !35, !noalias !225
  store ptr %i.bjk, ptr %i.bjj, align 8, !tbaa !35, !noalias !225
  %i.bjl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27, !noalias !225
  %i.bjm = add i32 %i.bjl, 1
  store i32 %i.bjm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27, !noalias !225
  store i64 1, ptr %i.bfq, align 8, !tbaa !40, !noalias !225
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJRS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS6_IS7_Lb1EEEDpOT_.exit768

bb.dz:                                            ; preds = %bb.dx
  %i.bjn = getelementptr inbounds i8, ptr %i.bjh, i64 -16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bje) ]
  %i.bjo = load i32, ptr %i.bjn, align 8, !tbaa !34, !noalias !225
  store i32 %i.bjo, ptr %i.bjh, align 8, !tbaa !34, !noalias !225
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjh, i64 8
  %i.bjq = getelementptr inbounds i8, ptr %i.bjh, i64 -8
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !35, !noalias !225
  store ptr %i.bjr, ptr %i.bjp, align 8, !tbaa !35, !noalias !225
  %i.bjs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !225
  %i.bjt = add i32 %i.bjs, 1
  store i32 %i.bjt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !225
  %i.bju = add i64 %i.bjg, 1
  store i64 %i.bju, ptr %i.bfq, align 8, !tbaa !40, !noalias !225
  %i.bjv = add nsw i64 %i.bjg, -1                 ; 5 uses
  %.not8.i.i.i.i757 = icmp eq i64 %i.bjv, 0
  br i1 %.not8.i.i.i.i757, label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i765, label %.lr.ph.i.i.i.i758

.lr.ph.i.i.i.i758:                                ; preds = %bb.dz
  %.promoted.i.i.i.i759 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !225
  %i.bjw = add i64 %i.bjg, -2
  %xtraiter2525 = and i64 %i.bjv, 3               ; 2 uses
  %lcmp.mod2526.not = icmp eq i64 %xtraiter2525, 0
  br i1 %lcmp.mod2526.not, label %.prol.loopexit2524, label %.prol.preheader2523

.prol.preheader2523:                              ; preds = %.lr.ph.i.i.i.i758, %.prol.preheader2523
  %.011.i.i.i.i760.prol = phi ptr [ %i.bjz, %.prol.preheader2523 ], [ %i.bjh, %.lr.ph.i.i.i.i758 ] ; 2 uses
  %.0610.i.i.i.i761.prol = phi i64 [ %i.bjx, %.prol.preheader2523 ], [ %i.bjv, %.lr.ph.i.i.i.i758 ]
  %.079.i.i.i.i762.prol = phi ptr [ %i.bjy, %.prol.preheader2523 ], [ %i.bjn, %.lr.ph.i.i.i.i758 ] ; 2 uses
  %prol.iter2527 = phi i64 [ %prol.iter2527.next, %.prol.preheader2523 ], [ 0, %.lr.ph.i.i.i.i758 ]
  %i.bjx = add i64 %.0610.i.i.i.i761.prol, -1     ; 2 uses
  %i.bjy = getelementptr inbounds i8, ptr %.079.i.i.i.i762.prol, i64 -16 ; 3 uses
  %i.bjz = getelementptr inbounds i8, ptr %.011.i.i.i.i760.prol, i64 -16 ; 3 uses
  %i.bka = load i32, ptr %i.bjy, align 8, !tbaa !34, !noalias !225
  store i32 %i.bka, ptr %i.bjz, align 8, !tbaa !34, !noalias !225
  %i.bkb = getelementptr inbounds i8, ptr %.079.i.i.i.i762.prol, i64 -8
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !35, !noalias !225
  %i.bkd = getelementptr inbounds i8, ptr %.011.i.i.i.i760.prol, i64 -8
  store ptr %i.bkc, ptr %i.bkd, align 8, !tbaa !35, !noalias !225
  %prol.iter2527.next = add i64 %prol.iter2527, 1 ; 2 uses
  %prol.iter2527.cmp.not = icmp eq i64 %prol.iter2527.next, %xtraiter2525
  br i1 %prol.iter2527.cmp.not, label %.prol.loopexit2524, label %.prol.preheader2523, !llvm.loop !158

.prol.loopexit2524:                               ; preds = %.prol.preheader2523, %.lr.ph.i.i.i.i758
  %.011.i.i.i.i760.unr = phi ptr [ %i.bjh, %.lr.ph.i.i.i.i758 ], [ %i.bjz, %.prol.preheader2523 ]
  %.0610.i.i.i.i761.unr = phi i64 [ %i.bjv, %.lr.ph.i.i.i.i758 ], [ %i.bjx, %.prol.preheader2523 ]
  %.079.i.i.i.i762.unr = phi ptr [ %i.bjn, %.lr.ph.i.i.i.i758 ], [ %i.bjy, %.prol.preheader2523 ]
  %i.bke = icmp ult i64 %i.bjw, 3
  br i1 %i.bke, label %._crit_edge.i.i.i.i764, label %.lr.ph.i.i.i.i758.new

.lr.ph.i.i.i.i758.new:                            ; preds = %.prol.loopexit2524, %.lr.ph.i.i.i.i758.new
  %.011.i.i.i.i760 = phi ptr [ %i.bkz, %.lr.ph.i.i.i.i758.new ], [ %.011.i.i.i.i760.unr, %.prol.loopexit2524 ] ; 8 uses
  %.0610.i.i.i.i761 = phi i64 [ %i.bkx, %.lr.ph.i.i.i.i758.new ], [ %.0610.i.i.i.i761.unr, %.prol.loopexit2524 ]
  %.079.i.i.i.i762 = phi ptr [ %i.bky, %.lr.ph.i.i.i.i758.new ], [ %.079.i.i.i.i762.unr, %.prol.loopexit2524 ] ; 8 uses
  %i.bkf = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -16
  %i.bkg = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -16
  %i.bkh = load i32, ptr %i.bkf, align 8, !tbaa !34, !noalias !225
  store i32 %i.bkh, ptr %i.bkg, align 8, !tbaa !34, !noalias !225
  %i.bki = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -8
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !35, !noalias !225
  %i.bkk = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -8
  store ptr %i.bkj, ptr %i.bkk, align 8, !tbaa !35, !noalias !225
  %i.bkl = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -32
  %i.bkm = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -32
  %i.bkn = load i32, ptr %i.bkl, align 8, !tbaa !34, !noalias !225
  store i32 %i.bkn, ptr %i.bkm, align 8, !tbaa !34, !noalias !225
  %i.bko = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -24
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !35, !noalias !225
  %i.bkq = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -24
  store ptr %i.bkp, ptr %i.bkq, align 8, !tbaa !35, !noalias !225
  %i.bkr = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -48
  %i.bks = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -48
  %i.bkt = load i32, ptr %i.bkr, align 8, !tbaa !34, !noalias !225
  store i32 %i.bkt, ptr %i.bks, align 8, !tbaa !34, !noalias !225
  %i.bku = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -40
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !35, !noalias !225
  %i.bkw = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -40
  store ptr %i.bkv, ptr %i.bkw, align 8, !tbaa !35, !noalias !225
  %i.bkx = add i64 %.0610.i.i.i.i761, -4          ; 2 uses
  %i.bky = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -64 ; 2 uses
  %i.bkz = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -64 ; 2 uses
  %i.bla = load i32, ptr %i.bky, align 8, !tbaa !34, !noalias !225
  store i32 %i.bla, ptr %i.bkz, align 8, !tbaa !34, !noalias !225
  %i.blb = getelementptr inbounds i8, ptr %.079.i.i.i.i762, i64 -56
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !35, !noalias !225
  %i.bld = getelementptr inbounds i8, ptr %.011.i.i.i.i760, i64 -56
  store ptr %i.blc, ptr %i.bld, align 8, !tbaa !35, !noalias !225
  %.not.i.i.i.i763.3 = icmp eq i64 %i.bkx, 0
  br i1 %.not.i.i.i.i763.3, label %._crit_edge.i.i.i.i764, label %.lr.ph.i.i.i.i758.new, !llvm.loop !82

._crit_edge.i.i.i.i764:                           ; preds = %.lr.ph.i.i.i.i758.new, %.prol.loopexit2524
  %i.ble = trunc i64 %i.bjv to i32
  %i.blf = add i32 %.promoted.i.i.i.i759, %i.ble
  store i32 %i.blf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !225
  br label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i765

_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i765: ; preds = %._crit_edge.i.i.i.i764, %bb.dz
  %i.blg = load i32, ptr %148, align 8, !tbaa !34, !noalias !225
  store i32 %i.blg, ptr %i.bje, align 8, !tbaa !34, !noalias !225
  %i.blh = load ptr, ptr %i.bjb, align 8, !tbaa !35, !noalias !225
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  store ptr %i.blh, ptr %i.bli, align 8, !tbaa !35, !noalias !225
  %i.blj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 12), align 4, !tbaa !28, !noalias !225
  %i.blk = add i32 %i.blj, 1
  store i32 %i.blk, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 12), align 4, !tbaa !28, !noalias !225
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJRS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS6_IS7_Lb1EEEDpOT_.exit768

bb.ea:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit754
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %149, ptr noundef nonnull align 8 dereferenceable(24) %144, ptr noundef %i.bje, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %148)
          to label %_ZN5boost9container6vectorI1XvvE7emplaceIJRS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS6_IS7_Lb1EEEDpOT_.exit768 unwind label %bb.oa

_ZN5boost9container6vectorI1XvvE7emplaceIJRS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS6_IS7_Lb1EEEDpOT_.exit768: ; preds = %bb.dy, %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i765, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #23
  %i.bll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.eb unwind label %bb.nz     ; 0 uses

bb.eb:                                            ; preds = %_ZN5boost9container6vectorI1XvvE7emplaceIJRS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS6_IS7_Lb1EEEDpOT_.exit768
  %i.blm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit770 unwind label %bb.nz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit770: ; preds = %bb.eb
  %i.bln = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1571 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1640 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1663 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.blo = add i32 %.sroa.28.0.copyload1571, 1    ; 2 uses
  store i32 %i.blo, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #23
  %i.blp = load i64, ptr %i.bfq, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i771 = icmp eq i64 %i.blp, 0
  br i1 %.not3.i.i771, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i774, label %.lr.ph.preheader.i.i772

.lr.ph.preheader.i.i772:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit770
  %i.blq = trunc i64 %i.blp to i32
  %i.blr = add i32 %i.blo, %i.blq
  store i32 %i.blr, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i774

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i774: ; preds = %.lr.ph.preheader.i.i772, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit770
  %i.bls = load i64, ptr %i.bfn, align 8, !tbaa !42 ; 2 uses
  %.not.i.i775 = icmp eq i64 %i.bls, 0
  br i1 %.not.i.i775, label %_ZN5boost9container6vectorI1XvvED2Ev.exit776, label %bb.ec

bb.ec:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i774
  %i.blt = load ptr, ptr %144, align 8, !tbaa !47
  %i.blu = shl i64 %i.bls, 4
  call void @_ZdlPvm(ptr noundef %i.blt, i64 noundef %i.blu) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit776

_ZN5boost9container6vectorI1XvvED2Ev.exit776:     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i774, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.blv = icmp eq <4 x i32> %i.bff, %i.bln
  %i.blw = icmp eq i32 %.sroa.641779.0.copyload1783, %.sroa.64.0.copyload1640
  %i.blx = icmp eq i32 %.sroa.761803.0.copyload1807, %.sroa.76.0.copyload1663
  %i.bly = freeze <4 x i1> %i.blv
  %i.blz = bitcast <4 x i1> %i.bly to i4
  %i.bma = icmp eq i4 %i.blz, -1
  %op.rdx2421 = select i1 %i.bma, i1 %i.blw, i1 false
  %op.rdx2422 = select i1 %op.rdx2421, i1 %i.blx, i1 false
  %i.bmb = zext i1 %op.rdx2422 to i8
  store i8 %i.bmb, ptr %i.g, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i8 1, ptr %i.h, align 1, !tbaa !49
  %i.bmc = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %150, i8 0, i64 24, i1 false)
  %i.bmd = getelementptr inbounds nuw i8, ptr %150, i64 16 ; 6 uses
  %i.bme = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc793 unwind label %bb.od ; 5 uses

.noexc793:                                        ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit776
  %i.bmf = load ptr, ptr %150, align 8, !tbaa !38 ; 6 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %150, i64 8 ; 12 uses
  %i.bmh = load i64, ptr %i.bmg, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i778 = shl i64 %i.bmh, 4                ; 3 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %.idx.i.i778
  %.not16.i.i.i.i.i779 = icmp eq i64 %i.bmh, 0
  br i1 %.not16.i.i.i.i.i779, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i791, label %.lr.ph.i.i.i.i.i780

.lr.ph.i.i.i.i.i780:                              ; preds = %.noexc793
  %.promoted.i.i.i.i.i781 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bmj = add i64 %.idx.i.i778, -16              ; 2 uses
  %i.bmk = lshr exact i64 %i.bmj, 4
  %i.bml = add nuw nsw i64 %i.bmk, 1
  %xtraiter2530 = and i64 %i.bml, 3               ; 2 uses
  %lcmp.mod2531.not = icmp eq i64 %xtraiter2530, 0
  br i1 %lcmp.mod2531.not, label %.prol.loopexit2529, label %.prol.preheader2528

.prol.preheader2528:                              ; preds = %.lr.ph.i.i.i.i.i780, %.prol.preheader2528
  %.018.i.i.i.i.i782.prol = phi ptr [ %i.bmq, %.prol.preheader2528 ], [ %i.bmf, %.lr.ph.i.i.i.i.i780 ] ; 3 uses
  %.01517.i.i.i.i.i783.prol = phi ptr [ %i.bmr, %.prol.preheader2528 ], [ %i.bme, %.lr.ph.i.i.i.i.i780 ] ; 3 uses
  %prol.iter2532 = phi i64 [ %prol.iter2532.next, %.prol.preheader2528 ], [ 0, %.lr.ph.i.i.i.i.i780 ]
  %i.bmm = load i32, ptr %.018.i.i.i.i.i782.prol, align 8, !tbaa !34
  store i32 %i.bmm, ptr %.01517.i.i.i.i.i783.prol, align 8, !tbaa !34
  %i.bmn = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783.prol, i64 8
  %i.bmo = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782.prol, i64 8
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !35
  store ptr %i.bmp, ptr %i.bmn, align 8, !tbaa !35
  %i.bmq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782.prol, i64 16 ; 2 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783.prol, i64 16 ; 2 uses
  %prol.iter2532.next = add i64 %prol.iter2532, 1 ; 2 uses
  %prol.iter2532.cmp.not = icmp eq i64 %prol.iter2532.next, %xtraiter2530
  br i1 %prol.iter2532.cmp.not, label %.prol.loopexit2529, label %.prol.preheader2528, !llvm.loop !159

.prol.loopexit2529:                               ; preds = %.prol.preheader2528, %.lr.ph.i.i.i.i.i780
  %.018.i.i.i.i.i782.unr = phi ptr [ %i.bmf, %.lr.ph.i.i.i.i.i780 ], [ %i.bmq, %.prol.preheader2528 ]
  %.01517.i.i.i.i.i783.unr = phi ptr [ %i.bme, %.lr.ph.i.i.i.i.i780 ], [ %i.bmr, %.prol.preheader2528 ]
  %i.bms = icmp ult i64 %i.bmj, 48
  br i1 %i.bms, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i785, label %.lr.ph.i.i.i.i.i780.new

.lr.ph.i.i.i.i.i780.new:                          ; preds = %.prol.loopexit2529, %.lr.ph.i.i.i.i.i780.new
  %.018.i.i.i.i.i782 = phi ptr [ %i.bnp, %.lr.ph.i.i.i.i.i780.new ], [ %.018.i.i.i.i.i782.unr, %.prol.loopexit2529 ] ; 9 uses
  %.01517.i.i.i.i.i783 = phi ptr [ %i.bnq, %.lr.ph.i.i.i.i.i780.new ], [ %.01517.i.i.i.i.i783.unr, %.prol.loopexit2529 ] ; 9 uses
  %i.bmt = load i32, ptr %.018.i.i.i.i.i782, align 8, !tbaa !34
  store i32 %i.bmt, ptr %.01517.i.i.i.i.i783, align 8, !tbaa !34
  %i.bmu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 8
  %i.bmv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 8
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !35
  store ptr %i.bmw, ptr %i.bmu, align 8, !tbaa !35
  %i.bmx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 16
  %i.bmy = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 16
  %i.bmz = load i32, ptr %i.bmx, align 8, !tbaa !34
  store i32 %i.bmz, ptr %i.bmy, align 8, !tbaa !34
  %i.bna = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 24
  %i.bnb = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 24
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !35
  store ptr %i.bnc, ptr %i.bna, align 8, !tbaa !35
  %i.bnd = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 32
  %i.bne = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 32
  %i.bnf = load i32, ptr %i.bnd, align 8, !tbaa !34
  store i32 %i.bnf, ptr %i.bne, align 8, !tbaa !34
  %i.bng = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 40
  %i.bnh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 40
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !35
  store ptr %i.bni, ptr %i.bng, align 8, !tbaa !35
  %i.bnj = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 48
  %i.bnk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 48
  %i.bnl = load i32, ptr %i.bnj, align 8, !tbaa !34
  store i32 %i.bnl, ptr %i.bnk, align 8, !tbaa !34
  %i.bnm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 56
  %i.bnn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 56
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !35
  store ptr %i.bno, ptr %i.bnm, align 8, !tbaa !35
  %i.bnp = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i782, i64 64 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i783, i64 64
  %.not.i.i.i.i.i784.3 = icmp eq ptr %i.bnp, %i.bmi
  br i1 %.not.i.i.i.i.i784.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i785, label %.lr.ph.i.i.i.i.i780.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i791: ; preds = %.noexc793
  %.not.i.i.i792 = icmp eq ptr %i.bmf, null
  br i1 %.not.i.i.i792, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i790, label %bb.ed

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i785: ; preds = %.lr.ph.i.i.i.i.i780.new, %.prol.loopexit2529
  %i.bnr = add i64 %.idx.i.i778, 68719476720
  %i.bns = lshr exact i64 %i.bnr, 4
  %i.bnt = trunc i64 %i.bns to i32
  %i.bnu = add i32 %i.bnt, 1
  %i.bnv = add i32 %i.bnu, %.promoted.i.i.i.i.i781
  store i32 %i.bnv, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i786 = icmp eq ptr %i.bmf, null
  br i1 %.not.i5.i.i786, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i790, label %.lr.ph.preheader.i.i.i.i787

.lr.ph.preheader.i.i.i.i787:                      ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i785
  %.promoted.i.i.i.i788 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.bnw = trunc i64 %i.bmh to i32
  %i.bnx = add i32 %.promoted.i.i.i.i788, %i.bnw
  store i32 %i.bnx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.preheader.i.i.i.i787, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i791
  %i.bny = load i64, ptr %i.bmd, align 8, !tbaa !42
  %i.bnz = shl i64 %i.bny, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bmf, i64 noundef %i.bnz) #23
  %.pre.i.i.i789 = load i64, ptr %i.bmg, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i790

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i790: ; preds = %bb.ed, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i785, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i791
  %i.boa = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i791 ], [ %.pre.i.i.i789, %bb.ed ], [ %i.bmh, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i785 ] ; 4 uses
  store ptr %i.bme, ptr %150, align 8, !tbaa !38
  store i64 %i.boa, ptr %i.bmg, align 8, !tbaa !43
  store i64 3, ptr %i.bmd, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #23
  store i32 0, ptr %151, align 8, !tbaa !34
  %i.bob = getelementptr inbounds nuw i8, ptr %151, i64 8
  store ptr null, ptr %i.bob, align 8, !tbaa !35
  %i.boc = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.bod = add i32 %i.boc, 1                      ; 2 uses
  store i32 %i.bod, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i795 = icmp eq i64 %i.boa, 3
  br i1 %.not.i795, label %bb.ef, label %bb.ee, !prof !45

bb.ee:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i790
  %i.boe = getelementptr inbounds nuw [16 x i8], ptr %i.bme, i64 %i.boa ; 2 uses
  store i32 0, ptr %i.boe, align 8, !tbaa !34
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 8
  store ptr null, ptr %i.bof, align 8, !tbaa !35
  %i.bog = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.boh = add i32 %i.bog, 1
  store i32 %i.boh, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.boi = add i64 %i.boa, 1                      ; 2 uses
  store i64 %i.boi, ptr %i.bmg, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit164

bb.ef:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i790
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bme, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %150, ptr noundef nonnull %i.boj, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %151)
          to label %.noexc797 unwind label %bb.oe

.noexc797:                                        ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  %.pre1961 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1962 = load i64, ptr %i.bmg, align 8, !tbaa !40
  %.pre1963 = load i64, ptr %i.bmd, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit164

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit164: ; preds = %.noexc797, %bb.ee
  %i.bok = phi i64 [ %.pre1963, %.noexc797 ], [ 3, %bb.ee ] ; 3 uses
  %i.bol = phi i64 [ %.pre1962, %.noexc797 ], [ %i.boi, %bb.ee ] ; 3 uses
  %i.bom = phi i32 [ %.pre1961, %.noexc797 ], [ %i.bod, %bb.ee ]
  %i.bon = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.boo = add i32 %i.bon, 1
  store i32 %i.boo, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #23
  store i32 0, ptr %152, align 8, !tbaa !34
  %i.bop = getelementptr inbounds nuw i8, ptr %152, i64 8
  store ptr null, ptr %i.bop, align 8, !tbaa !35
  %i.boq = add i32 %i.bom, 1                      ; 2 uses
  store i32 %i.boq, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i799 = icmp eq i64 %i.bol, %i.bok
  br i1 %.not.i799, label %bb.eh, label %bb.eg, !prof !45

bb.eg:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit164
  %i.bor = load ptr, ptr %150, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.bos = getelementptr inbounds nuw [16 x i8], ptr %i.bor, i64 %i.bol ; 2 uses
  store i32 0, ptr %i.bos, align 8, !tbaa !34
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bos, i64 8
  store ptr null, ptr %i.bot, align 8, !tbaa !35
  %i.bou = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bov = add i32 %i.bou, 1
  store i32 %i.bov, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bow = add i64 %i.bol, 1                      ; 2 uses
  store i64 %i.bow, ptr %i.bmg, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit163

bb.eh:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit164
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  %i.box = load ptr, ptr %150, align 8, !tbaa !38
  %i.boy = getelementptr inbounds nuw [16 x i8], ptr %i.box, i64 %i.bok
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %58, ptr noundef nonnull align 8 dereferenceable(24) %150, ptr noundef %i.boy, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %152)
          to label %.noexc801 unwind label %bb.of

.noexc801:                                        ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  %.pre1964 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_3
begin_hunk_4_@main:bb.a
_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit159: ; preds = %.noexc858, %bb.ev
  %i.bvw = phi i32 [ %.pre1974, %.noexc858 ], [ %i.bvn, %bb.ev ]
  %i.bvx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.bvy = add i32 %i.bvx, 1
  store i32 %i.bvy, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #23
  store i32 0, ptr %160, align 8, !tbaa !34
  %i.bvz = getelementptr inbounds nuw i8, ptr %160, i64 8 ; 3 uses
  store ptr null, ptr %i.bvz, align 8, !tbaa !35
  %i.bwa = add i32 %i.bvw, 1
  store i32 %i.bwa, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.bwb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861 unwind label %bb.op ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.bwc = load ptr, ptr %156, align 8, !tbaa !38, !noalias !228 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #23
  %i.bwd = load i64, ptr %i.bsl, align 8, !tbaa !42, !noalias !229
  %i.bwe = load i64, ptr %i.bso, align 8, !tbaa !40, !noalias !229 ; 6 uses
  %.not.i.i862 = icmp eq i64 %i.bwd, %i.bwe
  br i1 %.not.i.i862, label %bb.fa, label %bb.ex, !prof !45

bb.ex:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861
  %.not.i.i.i863 = icmp eq i64 %i.bwe, 0
  br i1 %.not.i.i.i863, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bwc) ]
  %i.bwf = load i32, ptr %160, align 8, !tbaa !34, !noalias !229
  store i32 %i.bwf, ptr %i.bwc, align 8, !tbaa !34, !noalias !229
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwc, i64 8
  %i.bwh = load ptr, ptr %i.bvz, align 8, !tbaa !35, !noalias !229
  store ptr %i.bwh, ptr %i.bwg, align 8, !tbaa !35, !noalias !229
  %i.bwi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !229
  %i.bwj = add i32 %i.bwi, 1
  store i32 %i.bwj, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !229
  store i64 1, ptr %i.bso, align 8, !tbaa !40, !noalias !229
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit875

bb.ez:                                            ; preds = %bb.ex
  %.idx2403 = shl nuw nsw i64 %i.bwe, 4
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwc, i64 %.idx2403 ; 6 uses
  %i.bwl = getelementptr inbounds i8, ptr %i.bwk, i64 -16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bwc) ]
  %i.bwm = load i32, ptr %i.bwl, align 8, !tbaa !34, !noalias !229
  store i32 %i.bwm, ptr %i.bwk, align 8, !tbaa !34, !noalias !229
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwk, i64 8
  %i.bwo = getelementptr inbounds i8, ptr %i.bwk, i64 -8
  %i.bwp = load ptr, ptr %i.bwo, align 8, !tbaa !35, !noalias !229
  store ptr %i.bwp, ptr %i.bwn, align 8, !tbaa !35, !noalias !229
  %i.bwq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !229
  %i.bwr = add i32 %i.bwq, 1
  store i32 %i.bwr, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !229
  %i.bws = add i64 %i.bwe, 1
  store i64 %i.bws, ptr %i.bso, align 8, !tbaa !40, !noalias !229
  %i.bwt = add nsw i64 %i.bwe, -1                 ; 5 uses
  %.not8.i.i.i.i864 = icmp eq i64 %i.bwt, 0
  %.pre.i.i.i865 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !229 ; 2 uses
  br i1 %.not8.i.i.i.i864, label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i872, label %.lr.ph.i.i.i.i866.preheader

.lr.ph.i.i.i.i866.preheader:                      ; preds = %bb.ez
  %i.bwu = add i64 %i.bwe, -2
  %xtraiter2541 = and i64 %i.bwt, 3               ; 2 uses
  %lcmp.mod2542.not = icmp eq i64 %xtraiter2541, 0
  br i1 %lcmp.mod2542.not, label %.lr.ph.i.i.i.i866.prol.loopexit, label %.lr.ph.i.i.i.i866.prol

.lr.ph.i.i.i.i866.prol:                           ; preds = %.lr.ph.i.i.i.i866.preheader, %.lr.ph.i.i.i.i866.prol
  %.011.i.i.i.i867.prol = phi ptr [ %i.bwx, %.lr.ph.i.i.i.i866.prol ], [ %i.bwk, %.lr.ph.i.i.i.i866.preheader ] ; 2 uses
  %.0610.i.i.i.i868.prol = phi i64 [ %i.bwv, %.lr.ph.i.i.i.i866.prol ], [ %i.bwt, %.lr.ph.i.i.i.i866.preheader ]
  %.079.i.i.i.i869.prol = phi ptr [ %i.bww, %.lr.ph.i.i.i.i866.prol ], [ %i.bwl, %.lr.ph.i.i.i.i866.preheader ] ; 2 uses
  %prol.iter2543 = phi i64 [ %prol.iter2543.next, %.lr.ph.i.i.i.i866.prol ], [ 0, %.lr.ph.i.i.i.i866.preheader ]
  %i.bwv = add i64 %.0610.i.i.i.i868.prol, -1     ; 2 uses
  %i.bww = getelementptr inbounds i8, ptr %.079.i.i.i.i869.prol, i64 -16 ; 3 uses
  %i.bwx = getelementptr inbounds i8, ptr %.011.i.i.i.i867.prol, i64 -16 ; 3 uses
  %i.bwy = load i32, ptr %i.bww, align 8, !tbaa !34, !noalias !229
  store i32 %i.bwy, ptr %i.bwx, align 8, !tbaa !34, !noalias !229
  %i.bwz = getelementptr inbounds i8, ptr %.079.i.i.i.i869.prol, i64 -8
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !35, !noalias !229
  %i.bxb = getelementptr inbounds i8, ptr %.011.i.i.i.i867.prol, i64 -8
  store ptr %i.bxa, ptr %i.bxb, align 8, !tbaa !35, !noalias !229
  %prol.iter2543.next = add i64 %prol.iter2543, 1 ; 2 uses
  %prol.iter2543.cmp.not = icmp eq i64 %prol.iter2543.next, %xtraiter2541
  br i1 %prol.iter2543.cmp.not, label %.lr.ph.i.i.i.i866.prol.loopexit, label %.lr.ph.i.i.i.i866.prol, !llvm.loop !174

.lr.ph.i.i.i.i866.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i866.prol, %.lr.ph.i.i.i.i866.preheader
  %.011.i.i.i.i867.unr = phi ptr [ %i.bwk, %.lr.ph.i.i.i.i866.preheader ], [ %i.bwx, %.lr.ph.i.i.i.i866.prol ]
  %.0610.i.i.i.i868.unr = phi i64 [ %i.bwt, %.lr.ph.i.i.i.i866.preheader ], [ %i.bwv, %.lr.ph.i.i.i.i866.prol ]
  %.079.i.i.i.i869.unr = phi ptr [ %i.bwl, %.lr.ph.i.i.i.i866.preheader ], [ %i.bww, %.lr.ph.i.i.i.i866.prol ]
  %i.bxc = icmp ult i64 %i.bwu, 3
  br i1 %i.bxc, label %._crit_edge.i.i.i.i871, label %.lr.ph.i.i.i.i866

.lr.ph.i.i.i.i866:                                ; preds = %.lr.ph.i.i.i.i866.prol.loopexit, %.lr.ph.i.i.i.i866
  %.011.i.i.i.i867 = phi ptr [ %i.bxx, %.lr.ph.i.i.i.i866 ], [ %.011.i.i.i.i867.unr, %.lr.ph.i.i.i.i866.prol.loopexit ] ; 8 uses
  %.0610.i.i.i.i868 = phi i64 [ %i.bxv, %.lr.ph.i.i.i.i866 ], [ %.0610.i.i.i.i868.unr, %.lr.ph.i.i.i.i866.prol.loopexit ]
  %.079.i.i.i.i869 = phi ptr [ %i.bxw, %.lr.ph.i.i.i.i866 ], [ %.079.i.i.i.i869.unr, %.lr.ph.i.i.i.i866.prol.loopexit ] ; 8 uses
  %i.bxd = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -16
  %i.bxe = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -16
  %i.bxf = load i32, ptr %i.bxd, align 8, !tbaa !34, !noalias !229
  store i32 %i.bxf, ptr %i.bxe, align 8, !tbaa !34, !noalias !229
  %i.bxg = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -8
  %i.bxh = load ptr, ptr %i.bxg, align 8, !tbaa !35, !noalias !229
  %i.bxi = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -8
  store ptr %i.bxh, ptr %i.bxi, align 8, !tbaa !35, !noalias !229
  %i.bxj = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -32
  %i.bxk = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -32
  %i.bxl = load i32, ptr %i.bxj, align 8, !tbaa !34, !noalias !229
  store i32 %i.bxl, ptr %i.bxk, align 8, !tbaa !34, !noalias !229
  %i.bxm = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -24
  %i.bxn = load ptr, ptr %i.bxm, align 8, !tbaa !35, !noalias !229
  %i.bxo = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -24
  store ptr %i.bxn, ptr %i.bxo, align 8, !tbaa !35, !noalias !229
  %i.bxp = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -48
  %i.bxq = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -48
  %i.bxr = load i32, ptr %i.bxp, align 8, !tbaa !34, !noalias !229
  store i32 %i.bxr, ptr %i.bxq, align 8, !tbaa !34, !noalias !229
  %i.bxs = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -40
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !35, !noalias !229
  %i.bxu = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -40
  store ptr %i.bxt, ptr %i.bxu, align 8, !tbaa !35, !noalias !229
  %i.bxv = add i64 %.0610.i.i.i.i868, -4          ; 2 uses
  %i.bxw = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -64 ; 2 uses
  %i.bxx = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -64 ; 2 uses
  %i.bxy = load i32, ptr %i.bxw, align 8, !tbaa !34, !noalias !229
  store i32 %i.bxy, ptr %i.bxx, align 8, !tbaa !34, !noalias !229
  %i.bxz = getelementptr inbounds i8, ptr %.079.i.i.i.i869, i64 -56
  %i.bya = load ptr, ptr %i.bxz, align 8, !tbaa !35, !noalias !229
  %i.byb = getelementptr inbounds i8, ptr %.011.i.i.i.i867, i64 -56
  store ptr %i.bya, ptr %i.byb, align 8, !tbaa !35, !noalias !229
  %.not.i.i.i.i870.3 = icmp eq i64 %i.bxv, 0
  br i1 %.not.i.i.i.i870.3, label %._crit_edge.i.i.i.i871, label %.lr.ph.i.i.i.i866, !llvm.loop !82

._crit_edge.i.i.i.i871:                           ; preds = %.lr.ph.i.i.i.i866, %.lr.ph.i.i.i.i866.prol.loopexit
  %i.byc = trunc i64 %i.bwt to i32
  %i.byd = add i32 %.pre.i.i.i865, %i.byc
  br label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i872

_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i872: ; preds = %._crit_edge.i.i.i.i871, %bb.ez
  %i.bye = phi i32 [ %.pre.i.i.i865, %bb.ez ], [ %i.byd, %._crit_edge.i.i.i.i871 ]
  %i.byf = load i32, ptr %160, align 8, !tbaa !34, !noalias !229
  store i32 %i.byf, ptr %i.bwc, align 8, !tbaa !34, !noalias !229
  %i.byg = load ptr, ptr %i.bvz, align 8, !tbaa !35, !noalias !229
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bwc, i64 8
  store ptr %i.byg, ptr %i.byh, align 8, !tbaa !35, !noalias !229
  %i.byi = add i32 %i.bye, 1
  store i32 %i.byi, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !229
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit875

bb.fa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %161, ptr noundef nonnull align 8 dereferenceable(24) %156, ptr noundef %i.bwc, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %160)
          to label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit875 unwind label %bb.oq

_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit875: ; preds = %bb.ey, %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i872, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #23
  %i.byj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.fb unwind label %bb.op     ; 0 uses

bb.fb:                                            ; preds = %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit875
  %i.byk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit877 unwind label %bb.op ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit877: ; preds = %bb.fb
  %i.byl = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1572 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1641 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1664 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.bym = add i32 %.sroa.28.0.copyload1572, 1    ; 2 uses
  store i32 %i.bym, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #23
  %i.byn = load i64, ptr %i.bso, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i878 = icmp eq i64 %i.byn, 0
  br i1 %.not3.i.i878, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i881, label %.lr.ph.preheader.i.i879

.lr.ph.preheader.i.i879:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit877
  %i.byo = trunc i64 %i.byn to i32
  %i.byp = add i32 %i.bym, %i.byo
  store i32 %i.byp, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i881

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i881: ; preds = %.lr.ph.preheader.i.i879, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit877
  %i.byq = load i64, ptr %i.bsl, align 8, !tbaa !42 ; 2 uses
  %.not.i.i882 = icmp eq i64 %i.byq, 0
  br i1 %.not.i.i882, label %_ZN5boost9container6vectorI1XvvED2Ev.exit883, label %bb.fc

bb.fc:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i881
  %i.byr = load ptr, ptr %156, align 8, !tbaa !47
  %i.bys = shl i64 %i.byq, 4
  call void @_ZdlPvm(ptr noundef %i.byr, i64 noundef %i.bys) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit883

_ZN5boost9container6vectorI1XvvED2Ev.exit883:     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i881, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.byt = icmp eq <4 x i32> %i.bsd, %i.byl
  %i.byu = icmp eq i32 %.sroa.641779.0.copyload1784, %.sroa.64.0.copyload1641
  %i.byv = icmp eq i32 %.sroa.761803.0.copyload1808, %.sroa.76.0.copyload1664
  %i.byw = freeze <4 x i1> %i.byt
  %i.byx = bitcast <4 x i1> %i.byw to i4
  %i.byy = icmp eq i4 %i.byx, -1
  %op.rdx2419 = select i1 %i.byy, i1 %i.byu, i1 false
  %op.rdx2420 = select i1 %op.rdx2419, i1 %i.byv, i1 false
  %i.byz = zext i1 %op.rdx2420 to i8
  store i8 %i.byz, ptr %i.i, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i8 1, ptr %i.j, align 1, !tbaa !49
  %i.bza = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %162, i8 0, i64 24, i1 false)
  %i.bzb = getelementptr inbounds nuw i8, ptr %162, i64 16 ; 6 uses
  %i.bzc = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc900 unwind label %bb.ot ; 5 uses

.noexc900:                                        ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit883
  %i.bzd = load ptr, ptr %162, align 8, !tbaa !38 ; 6 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %162, i64 8 ; 12 uses
  %i.bzf = load i64, ptr %i.bze, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i885 = shl i64 %i.bzf, 4                ; 3 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzd, i64 %.idx.i.i885
  %.not16.i.i.i.i.i886 = icmp eq i64 %i.bzf, 0
  br i1 %.not16.i.i.i.i.i886, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i898, label %.lr.ph.i.i.i.i.i887

.lr.ph.i.i.i.i.i887:                              ; preds = %.noexc900
  %.promoted.i.i.i.i.i888 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.bzh = add i64 %.idx.i.i885, -16              ; 2 uses
  %i.bzi = lshr exact i64 %i.bzh, 4
  %i.bzj = add nuw nsw i64 %i.bzi, 1
  %xtraiter2546 = and i64 %i.bzj, 3               ; 2 uses
  %lcmp.mod2547.not = icmp eq i64 %xtraiter2546, 0
  br i1 %lcmp.mod2547.not, label %.prol.loopexit2545, label %.prol.preheader2544

.prol.preheader2544:                              ; preds = %.lr.ph.i.i.i.i.i887, %.prol.preheader2544
  %.018.i.i.i.i.i889.prol = phi ptr [ %i.bzo, %.prol.preheader2544 ], [ %i.bzd, %.lr.ph.i.i.i.i.i887 ] ; 3 uses
  %.01517.i.i.i.i.i890.prol = phi ptr [ %i.bzp, %.prol.preheader2544 ], [ %i.bzc, %.lr.ph.i.i.i.i.i887 ] ; 3 uses
  %prol.iter2548 = phi i64 [ %prol.iter2548.next, %.prol.preheader2544 ], [ 0, %.lr.ph.i.i.i.i.i887 ]
  %i.bzk = load i32, ptr %.018.i.i.i.i.i889.prol, align 8, !tbaa !34
  store i32 %i.bzk, ptr %.01517.i.i.i.i.i890.prol, align 8, !tbaa !34
  %i.bzl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890.prol, i64 8
  %i.bzm = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889.prol, i64 8
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !35
  store ptr %i.bzn, ptr %i.bzl, align 8, !tbaa !35
  %i.bzo = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889.prol, i64 16 ; 2 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890.prol, i64 16 ; 2 uses
  %prol.iter2548.next = add i64 %prol.iter2548, 1 ; 2 uses
  %prol.iter2548.cmp.not = icmp eq i64 %prol.iter2548.next, %xtraiter2546
  br i1 %prol.iter2548.cmp.not, label %.prol.loopexit2545, label %.prol.preheader2544, !llvm.loop !175

.prol.loopexit2545:                               ; preds = %.prol.preheader2544, %.lr.ph.i.i.i.i.i887
  %.018.i.i.i.i.i889.unr = phi ptr [ %i.bzd, %.lr.ph.i.i.i.i.i887 ], [ %i.bzo, %.prol.preheader2544 ]
  %.01517.i.i.i.i.i890.unr = phi ptr [ %i.bzc, %.lr.ph.i.i.i.i.i887 ], [ %i.bzp, %.prol.preheader2544 ]
  %i.bzq = icmp ult i64 %i.bzh, 48
  br i1 %i.bzq, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i892, label %.lr.ph.i.i.i.i.i887.new

.lr.ph.i.i.i.i.i887.new:                          ; preds = %.prol.loopexit2545, %.lr.ph.i.i.i.i.i887.new
  %.018.i.i.i.i.i889 = phi ptr [ %i.can, %.lr.ph.i.i.i.i.i887.new ], [ %.018.i.i.i.i.i889.unr, %.prol.loopexit2545 ] ; 9 uses
  %.01517.i.i.i.i.i890 = phi ptr [ %i.cao, %.lr.ph.i.i.i.i.i887.new ], [ %.01517.i.i.i.i.i890.unr, %.prol.loopexit2545 ] ; 9 uses
  %i.bzr = load i32, ptr %.018.i.i.i.i.i889, align 8, !tbaa !34
  store i32 %i.bzr, ptr %.01517.i.i.i.i.i890, align 8, !tbaa !34
  %i.bzs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 8
  %i.bzt = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 8
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !35
  store ptr %i.bzu, ptr %i.bzs, align 8, !tbaa !35
  %i.bzv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 16
  %i.bzw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 16
  %i.bzx = load i32, ptr %i.bzv, align 8, !tbaa !34
  store i32 %i.bzx, ptr %i.bzw, align 8, !tbaa !34
  %i.bzy = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 24
  %i.bzz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 24
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !35
  store ptr %i.caa, ptr %i.bzy, align 8, !tbaa !35
  %i.cab = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 32
  %i.cac = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 32
  %i.cad = load i32, ptr %i.cab, align 8, !tbaa !34
  store i32 %i.cad, ptr %i.cac, align 8, !tbaa !34
  %i.cae = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 40
  %i.caf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 40
  %i.cag = load ptr, ptr %i.caf, align 8, !tbaa !35
  store ptr %i.cag, ptr %i.cae, align 8, !tbaa !35
  %i.cah = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 48
  %i.cai = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 48
  %i.caj = load i32, ptr %i.cah, align 8, !tbaa !34
  store i32 %i.caj, ptr %i.cai, align 8, !tbaa !34
  %i.cak = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 56
  %i.cal = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 56
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !35
  store ptr %i.cam, ptr %i.cak, align 8, !tbaa !35
  %i.can = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i889, i64 64 ; 2 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i890, i64 64
  %.not.i.i.i.i.i891.3 = icmp eq ptr %i.can, %i.bzg
  br i1 %.not.i.i.i.i.i891.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i892, label %.lr.ph.i.i.i.i.i887.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i898: ; preds = %.noexc900
  %.not.i.i.i899 = icmp eq ptr %i.bzd, null
  br i1 %.not.i.i.i899, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i897, label %bb.fd

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i892: ; preds = %.lr.ph.i.i.i.i.i887.new, %.prol.loopexit2545
  %i.cap = add i64 %.idx.i.i885, 68719476720
  %i.caq = lshr exact i64 %i.cap, 4
  %i.car = trunc i64 %i.caq to i32
  %i.cas = add i32 %i.car, 1
  %i.cat = add i32 %i.cas, %.promoted.i.i.i.i.i888
  store i32 %i.cat, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i893 = icmp eq ptr %i.bzd, null
  br i1 %.not.i5.i.i893, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i897, label %.lr.ph.preheader.i.i.i.i894

.lr.ph.preheader.i.i.i.i894:                      ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i892
  %.promoted.i.i.i.i895 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.cau = trunc i64 %i.bzf to i32
  %i.cav = add i32 %.promoted.i.i.i.i895, %i.cau
  store i32 %i.cav, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph.preheader.i.i.i.i894, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i898
  %i.caw = load i64, ptr %i.bzb, align 8, !tbaa !42
  %i.cax = shl i64 %i.caw, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bzd, i64 noundef %i.cax) #23
  %.pre.i.i.i896 = load i64, ptr %i.bze, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i897

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i897: ; preds = %bb.fd, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i892, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i898
  %i.cay = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i898 ], [ %.pre.i.i.i896, %bb.fd ], [ %i.bzf, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i892 ] ; 4 uses
  store ptr %i.bzc, ptr %162, align 8, !tbaa !38
  store i64 %i.cay, ptr %i.bze, align 8, !tbaa !43
  store i64 3, ptr %i.bzb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #23
  store i32 0, ptr %163, align 8, !tbaa !34
  %i.caz = getelementptr inbounds nuw i8, ptr %163, i64 8
  store ptr null, ptr %i.caz, align 8, !tbaa !35
  %i.cba = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.cbb = add i32 %i.cba, 1                      ; 2 uses
  store i32 %i.cbb, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i902 = icmp eq i64 %i.cay, 3
  br i1 %.not.i902, label %bb.ff, label %bb.fe, !prof !45

bb.fe:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i897
  %i.cbc = getelementptr inbounds nuw [16 x i8], ptr %i.bzc, i64 %i.cay ; 2 uses
  store i32 0, ptr %i.cbc, align 8, !tbaa !34
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8
  store ptr null, ptr %i.cbd, align 8, !tbaa !35
  %i.cbe = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cbf = add i32 %i.cbe, 1
  store i32 %i.cbf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cbg = add i64 %i.cay, 1                      ; 2 uses
  store i64 %i.cbg, ptr %i.bze, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit158

bb.ff:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i897
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.bzc, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %162, ptr noundef nonnull %i.cbh, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %163)
          to label %.noexc904 unwind label %bb.ou

.noexc904:                                        ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %.pre1975 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1976 = load i64, ptr %i.bze, align 8, !tbaa !40
  %.pre1977 = load i64, ptr %i.bzb, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit158

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit158: ; preds = %.noexc904, %bb.fe
  %i.cbi = phi i64 [ %.pre1977, %.noexc904 ], [ 3, %bb.fe ] ; 3 uses
  %i.cbj = phi i64 [ %.pre1976, %.noexc904 ], [ %i.cbg, %bb.fe ] ; 3 uses
  %i.cbk = phi i32 [ %.pre1975, %.noexc904 ], [ %i.cbb, %bb.fe ]
  %i.cbl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.cbm = add i32 %i.cbl, 1
  store i32 %i.cbm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #23
  store i32 0, ptr %164, align 8, !tbaa !34
  %i.cbn = getelementptr inbounds nuw i8, ptr %164, i64 8
  store ptr null, ptr %i.cbn, align 8, !tbaa !35
  %i.cbo = add i32 %i.cbk, 1                      ; 2 uses
  store i32 %i.cbo, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i906 = icmp eq i64 %i.cbj, %i.cbi
  br i1 %.not.i906, label %bb.fh, label %bb.fg, !prof !45

bb.fg:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit158
  %i.cbp = load ptr, ptr %162, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.cbq = getelementptr inbounds nuw [16 x i8], ptr %i.cbp, i64 %i.cbj ; 2 uses
  store i32 0, ptr %i.cbq, align 8, !tbaa !34
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 8
  store ptr null, ptr %i.cbr, align 8, !tbaa !35
  %i.cbs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cbt = add i32 %i.cbs, 1
  store i32 %i.cbt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cbu = add i64 %i.cbj, 1                      ; 2 uses
  store i64 %i.cbu, ptr %i.bze, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit157

bb.fh:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  %i.cbv = load ptr, ptr %162, align 8, !tbaa !38
  %i.cbw = getelementptr inbounds nuw [16 x i8], ptr %i.cbv, i64 %i.cbi
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %52, ptr noundef nonnull align 8 dereferenceable(24) %162, ptr noundef %i.cbw, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %164)
          to label %.noexc908 unwind label %bb.ov

.noexc908:                                        ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %.pre1978 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_4
begin_hunk_5_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit153

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit153: ; preds = %.noexc965, %bb.fv
  %i.cir = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.cis = add i32 %i.cir, 1
  store i32 %i.cis, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #23
  %i.cit = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.23, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit968 unwind label %bb.oz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit968: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.ciu = load ptr, ptr %168, align 8, !tbaa !38, !noalias !232 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #23
  store i32 0, ptr %172, align 8, !tbaa !34
  %i.civ = getelementptr inbounds nuw i8, ptr %172, i64 8 ; 2 uses
  store ptr null, ptr %i.civ, align 8, !tbaa !35
  store i32 1, ptr @_ZN1X2spE, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #23
  %i.ciw = load i64, ptr %i.cfg, align 8, !tbaa !42, !noalias !233
  %i.cix = load i64, ptr %i.cfj, align 8, !tbaa !40, !noalias !233 ; 6 uses
  %.not.i.i969 = icmp eq i64 %i.ciw, %i.cix
  br i1 %.not.i.i969, label %bb.ga, label %bb.fx, !prof !45

bb.fx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit968
  %.not.i.i.i970 = icmp eq i64 %i.cix, 0
  br i1 %.not.i.i.i970, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ciu) ]
  store i32 0, ptr %i.ciu, align 8, !tbaa !34, !noalias !233
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.ciu, i64 8
  store ptr null, ptr %i.ciy, align 8, !tbaa !35, !noalias !233
  %i.ciz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !233
  %i.cja = add i32 %i.ciz, 1
  store i32 %i.cja, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !233
  store i64 1, ptr %i.cfj, align 8, !tbaa !40, !noalias !233
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit982

bb.fz:                                            ; preds = %bb.fx
  %.idx2405 = shl nuw nsw i64 %i.cix, 4
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.ciu, i64 %.idx2405 ; 6 uses
  %i.cjc = getelementptr inbounds i8, ptr %i.cjb, i64 -16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ciu) ]
  %i.cjd = load i32, ptr %i.cjc, align 8, !tbaa !34, !noalias !233
  store i32 %i.cjd, ptr %i.cjb, align 8, !tbaa !34, !noalias !233
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjb, i64 8
  %i.cjf = getelementptr inbounds i8, ptr %i.cjb, i64 -8
  %i.cjg = load ptr, ptr %i.cjf, align 8, !tbaa !35, !noalias !233
  store ptr %i.cjg, ptr %i.cje, align 8, !tbaa !35, !noalias !233
  %i.cjh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !233
  %i.cji = add i32 %i.cjh, 1
  store i32 %i.cji, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29, !noalias !233
  %i.cjj = add i64 %i.cix, 1
  store i64 %i.cjj, ptr %i.cfj, align 8, !tbaa !40, !noalias !233
  %i.cjk = add nsw i64 %i.cix, -1                 ; 5 uses
  %.not8.i.i.i.i971 = icmp eq i64 %i.cjk, 0
  %.pre.i.i.i972 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !233 ; 2 uses
  br i1 %.not8.i.i.i.i971, label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i979, label %.lr.ph.i.i.i.i973.preheader

.lr.ph.i.i.i.i973.preheader:                      ; preds = %bb.fz
  %i.cjl = add i64 %i.cix, -2
  %xtraiter2557 = and i64 %i.cjk, 3               ; 2 uses
  %lcmp.mod2558.not = icmp eq i64 %xtraiter2557, 0
  br i1 %lcmp.mod2558.not, label %.lr.ph.i.i.i.i973.prol.loopexit, label %.lr.ph.i.i.i.i973.prol

.lr.ph.i.i.i.i973.prol:                           ; preds = %.lr.ph.i.i.i.i973.preheader, %.lr.ph.i.i.i.i973.prol
  %.011.i.i.i.i974.prol = phi ptr [ %i.cjo, %.lr.ph.i.i.i.i973.prol ], [ %i.cjb, %.lr.ph.i.i.i.i973.preheader ] ; 2 uses
  %.0610.i.i.i.i975.prol = phi i64 [ %i.cjm, %.lr.ph.i.i.i.i973.prol ], [ %i.cjk, %.lr.ph.i.i.i.i973.preheader ]
  %.079.i.i.i.i976.prol = phi ptr [ %i.cjn, %.lr.ph.i.i.i.i973.prol ], [ %i.cjc, %.lr.ph.i.i.i.i973.preheader ] ; 2 uses
  %prol.iter2559 = phi i64 [ %prol.iter2559.next, %.lr.ph.i.i.i.i973.prol ], [ 0, %.lr.ph.i.i.i.i973.preheader ]
  %i.cjm = add i64 %.0610.i.i.i.i975.prol, -1     ; 2 uses
  %i.cjn = getelementptr inbounds i8, ptr %.079.i.i.i.i976.prol, i64 -16 ; 3 uses
  %i.cjo = getelementptr inbounds i8, ptr %.011.i.i.i.i974.prol, i64 -16 ; 3 uses
  %i.cjp = load i32, ptr %i.cjn, align 8, !tbaa !34, !noalias !233
  store i32 %i.cjp, ptr %i.cjo, align 8, !tbaa !34, !noalias !233
  %i.cjq = getelementptr inbounds i8, ptr %.079.i.i.i.i976.prol, i64 -8
  %i.cjr = load ptr, ptr %i.cjq, align 8, !tbaa !35, !noalias !233
  %i.cjs = getelementptr inbounds i8, ptr %.011.i.i.i.i974.prol, i64 -8
  store ptr %i.cjr, ptr %i.cjs, align 8, !tbaa !35, !noalias !233
  %prol.iter2559.next = add i64 %prol.iter2559, 1 ; 2 uses
  %prol.iter2559.cmp.not = icmp eq i64 %prol.iter2559.next, %xtraiter2557
  br i1 %prol.iter2559.cmp.not, label %.lr.ph.i.i.i.i973.prol.loopexit, label %.lr.ph.i.i.i.i973.prol, !llvm.loop !190

.lr.ph.i.i.i.i973.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i973.prol, %.lr.ph.i.i.i.i973.preheader
  %.011.i.i.i.i974.unr = phi ptr [ %i.cjb, %.lr.ph.i.i.i.i973.preheader ], [ %i.cjo, %.lr.ph.i.i.i.i973.prol ]
  %.0610.i.i.i.i975.unr = phi i64 [ %i.cjk, %.lr.ph.i.i.i.i973.preheader ], [ %i.cjm, %.lr.ph.i.i.i.i973.prol ]
  %.079.i.i.i.i976.unr = phi ptr [ %i.cjc, %.lr.ph.i.i.i.i973.preheader ], [ %i.cjn, %.lr.ph.i.i.i.i973.prol ]
  %i.cjt = icmp ult i64 %i.cjl, 3
  br i1 %i.cjt, label %._crit_edge.i.i.i.i978, label %.lr.ph.i.i.i.i973

.lr.ph.i.i.i.i973:                                ; preds = %.lr.ph.i.i.i.i973.prol.loopexit, %.lr.ph.i.i.i.i973
  %.011.i.i.i.i974 = phi ptr [ %i.cko, %.lr.ph.i.i.i.i973 ], [ %.011.i.i.i.i974.unr, %.lr.ph.i.i.i.i973.prol.loopexit ] ; 8 uses
  %.0610.i.i.i.i975 = phi i64 [ %i.ckm, %.lr.ph.i.i.i.i973 ], [ %.0610.i.i.i.i975.unr, %.lr.ph.i.i.i.i973.prol.loopexit ]
  %.079.i.i.i.i976 = phi ptr [ %i.ckn, %.lr.ph.i.i.i.i973 ], [ %.079.i.i.i.i976.unr, %.lr.ph.i.i.i.i973.prol.loopexit ] ; 8 uses
  %i.cju = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -16
  %i.cjv = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -16
  %i.cjw = load i32, ptr %i.cju, align 8, !tbaa !34, !noalias !233
  store i32 %i.cjw, ptr %i.cjv, align 8, !tbaa !34, !noalias !233
  %i.cjx = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -8
  %i.cjy = load ptr, ptr %i.cjx, align 8, !tbaa !35, !noalias !233
  %i.cjz = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -8
  store ptr %i.cjy, ptr %i.cjz, align 8, !tbaa !35, !noalias !233
  %i.cka = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -32
  %i.ckb = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -32
  %i.ckc = load i32, ptr %i.cka, align 8, !tbaa !34, !noalias !233
  store i32 %i.ckc, ptr %i.ckb, align 8, !tbaa !34, !noalias !233
  %i.ckd = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -24
  %i.cke = load ptr, ptr %i.ckd, align 8, !tbaa !35, !noalias !233
  %i.ckf = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -24
  store ptr %i.cke, ptr %i.ckf, align 8, !tbaa !35, !noalias !233
  %i.ckg = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -48
  %i.ckh = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -48
  %i.cki = load i32, ptr %i.ckg, align 8, !tbaa !34, !noalias !233
  store i32 %i.cki, ptr %i.ckh, align 8, !tbaa !34, !noalias !233
  %i.ckj = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -40
  %i.ckk = load ptr, ptr %i.ckj, align 8, !tbaa !35, !noalias !233
  %i.ckl = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -40
  store ptr %i.ckk, ptr %i.ckl, align 8, !tbaa !35, !noalias !233
  %i.ckm = add i64 %.0610.i.i.i.i975, -4          ; 2 uses
  %i.ckn = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -64 ; 2 uses
  %i.cko = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -64 ; 2 uses
  %i.ckp = load i32, ptr %i.ckn, align 8, !tbaa !34, !noalias !233
  store i32 %i.ckp, ptr %i.cko, align 8, !tbaa !34, !noalias !233
  %i.ckq = getelementptr inbounds i8, ptr %.079.i.i.i.i976, i64 -56
  %i.ckr = load ptr, ptr %i.ckq, align 8, !tbaa !35, !noalias !233
  %i.cks = getelementptr inbounds i8, ptr %.011.i.i.i.i974, i64 -56
  store ptr %i.ckr, ptr %i.cks, align 8, !tbaa !35, !noalias !233
  %.not.i.i.i.i977.3 = icmp eq i64 %i.ckm, 0
  br i1 %.not.i.i.i.i977.3, label %._crit_edge.i.i.i.i978, label %.lr.ph.i.i.i.i973, !llvm.loop !82

._crit_edge.i.i.i.i978:                           ; preds = %.lr.ph.i.i.i.i973, %.lr.ph.i.i.i.i973.prol.loopexit
  %i.ckt = trunc i64 %i.cjk to i32
  %i.cku = add i32 %.pre.i.i.i972, %i.ckt
  br label %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i979

_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i979: ; preds = %._crit_edge.i.i.i.i978, %bb.fz
  %i.ckv = phi i32 [ %.pre.i.i.i972, %bb.fz ], [ %i.cku, %._crit_edge.i.i.i.i978 ]
  %i.ckw = load i32, ptr %172, align 8, !tbaa !34, !noalias !233
  store i32 %i.ckw, ptr %i.ciu, align 8, !tbaa !34, !noalias !233
  %i.ckx = load ptr, ptr %i.civ, align 8, !tbaa !35, !noalias !233
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ciu, i64 8
  store ptr %i.ckx, ptr %i.cky, align 8, !tbaa !35, !noalias !233
  %i.ckz = add i32 %i.ckv, 1
  store i32 %i.ckz, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !30, !noalias !233
  br label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit982

bb.ga:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit968
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %173, ptr noundef nonnull align 8 dereferenceable(24) %168, ptr noundef %i.ciu, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %172)
          to label %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit982 unwind label %bb.pd

_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit982: ; preds = %bb.fy, %_ZN5boost9container15move_backward_nIP1XS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i979, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #23
  %i.cla = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.clb = add i32 %i.cla, 1
  store i32 %i.clb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #23
  %i.clc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.gb unwind label %bb.oz     ; 0 uses

bb.gb:                                            ; preds = %_ZN5boost9container6vectorI1XvvE7emplaceIJS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS5_IS6_Lb1EEEDpOT_.exit982
  %i.cld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984 unwind label %bb.oz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984: ; preds = %bb.gb
  %i.cle = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.64.0.copyload1642 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1665 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.clf = load i64, ptr %i.cfj, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i985 = icmp eq i64 %i.clf, 0
  br i1 %.not3.i.i985, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i988, label %.lr.ph.preheader.i.i986

.lr.ph.preheader.i.i986:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984
  %.sroa.28.0.copyload1573 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %i.clg = trunc i64 %i.clf to i32
  %i.clh = add i32 %.sroa.28.0.copyload1573, %i.clg
  store i32 %i.clh, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i988

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i988: ; preds = %.lr.ph.preheader.i.i986, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984
  %i.cli = load i64, ptr %i.cfg, align 8, !tbaa !42 ; 2 uses
  %.not.i.i989 = icmp eq i64 %i.cli, 0
  br i1 %.not.i.i989, label %_ZN5boost9container6vectorI1XvvED2Ev.exit990, label %bb.gc

bb.gc:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i988
  %i.clj = load ptr, ptr %168, align 8, !tbaa !47
  %i.clk = shl i64 %i.cli, 4
  call void @_ZdlPvm(ptr noundef %i.clj, i64 noundef %i.clk) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit990

_ZN5boost9container6vectorI1XvvED2Ev.exit990:     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i988, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.cll = icmp eq <4 x i32> %i.cez, %i.cle
  %i.clm = icmp eq i32 %.sroa.641779.0.copyload1785, %.sroa.64.0.copyload1642
  %i.cln = icmp eq i32 %.sroa.761803.0.copyload1809, %.sroa.76.0.copyload1665
  %i.clo = freeze <4 x i1> %i.cll
  %i.clp = bitcast <4 x i1> %i.clo to i4
  %i.clq = icmp eq i4 %i.clp, -1
  %op.rdx2417 = select i1 %i.clq, i1 %i.clm, i1 false
  %op.rdx2418 = select i1 %op.rdx2417, i1 %i.cln, i1 false
  %i.clr = zext i1 %op.rdx2418 to i8
  store i8 %i.clr, ptr %i.k, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i8 1, ptr %i.l, align 1, !tbaa !49
  %i.cls = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 319, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %174, i8 0, i64 24, i1 false)
  %i.clt = getelementptr inbounds nuw i8, ptr %174, i64 16 ; 6 uses
  %i.clu = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc1007 unwind label %bb.pf ; 5 uses

.noexc1007:                                       ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit990
  %i.clv = load ptr, ptr %174, align 8, !tbaa !38 ; 6 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %174, i64 8 ; 11 uses
  %i.clx = load i64, ptr %i.clw, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i992 = shl i64 %i.clx, 4                ; 3 uses
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clv, i64 %.idx.i.i992
  %.not16.i.i.i.i.i993 = icmp eq i64 %i.clx, 0
  br i1 %.not16.i.i.i.i.i993, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1005, label %.lr.ph.i.i.i.i.i994

.lr.ph.i.i.i.i.i994:                              ; preds = %.noexc1007
  %.promoted.i.i.i.i.i995 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.clz = add i64 %.idx.i.i992, -16              ; 2 uses
  %i.cma = lshr exact i64 %i.clz, 4
  %i.cmb = add nuw nsw i64 %i.cma, 1
  %xtraiter2562 = and i64 %i.cmb, 3               ; 2 uses
  %lcmp.mod2563.not = icmp eq i64 %xtraiter2562, 0
  br i1 %lcmp.mod2563.not, label %.prol.loopexit2561, label %.prol.preheader2560

.prol.preheader2560:                              ; preds = %.lr.ph.i.i.i.i.i994, %.prol.preheader2560
  %.018.i.i.i.i.i996.prol = phi ptr [ %i.cmg, %.prol.preheader2560 ], [ %i.clv, %.lr.ph.i.i.i.i.i994 ] ; 3 uses
  %.01517.i.i.i.i.i997.prol = phi ptr [ %i.cmh, %.prol.preheader2560 ], [ %i.clu, %.lr.ph.i.i.i.i.i994 ] ; 3 uses
  %prol.iter2564 = phi i64 [ %prol.iter2564.next, %.prol.preheader2560 ], [ 0, %.lr.ph.i.i.i.i.i994 ]
  %i.cmc = load i32, ptr %.018.i.i.i.i.i996.prol, align 8, !tbaa !34
  store i32 %i.cmc, ptr %.01517.i.i.i.i.i997.prol, align 8, !tbaa !34
  %i.cmd = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997.prol, i64 8
  %i.cme = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996.prol, i64 8
  %i.cmf = load ptr, ptr %i.cme, align 8, !tbaa !35
  store ptr %i.cmf, ptr %i.cmd, align 8, !tbaa !35
  %i.cmg = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996.prol, i64 16 ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997.prol, i64 16 ; 2 uses
  %prol.iter2564.next = add i64 %prol.iter2564, 1 ; 2 uses
  %prol.iter2564.cmp.not = icmp eq i64 %prol.iter2564.next, %xtraiter2562
  br i1 %prol.iter2564.cmp.not, label %.prol.loopexit2561, label %.prol.preheader2560, !llvm.loop !191

.prol.loopexit2561:                               ; preds = %.prol.preheader2560, %.lr.ph.i.i.i.i.i994
  %.018.i.i.i.i.i996.unr = phi ptr [ %i.clv, %.lr.ph.i.i.i.i.i994 ], [ %i.cmg, %.prol.preheader2560 ]
  %.01517.i.i.i.i.i997.unr = phi ptr [ %i.clu, %.lr.ph.i.i.i.i.i994 ], [ %i.cmh, %.prol.preheader2560 ]
  %i.cmi = icmp ult i64 %i.clz, 48
  br i1 %i.cmi, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i999, label %.lr.ph.i.i.i.i.i994.new

.lr.ph.i.i.i.i.i994.new:                          ; preds = %.prol.loopexit2561, %.lr.ph.i.i.i.i.i994.new
  %.018.i.i.i.i.i996 = phi ptr [ %i.cnf, %.lr.ph.i.i.i.i.i994.new ], [ %.018.i.i.i.i.i996.unr, %.prol.loopexit2561 ] ; 9 uses
  %.01517.i.i.i.i.i997 = phi ptr [ %i.cng, %.lr.ph.i.i.i.i.i994.new ], [ %.01517.i.i.i.i.i997.unr, %.prol.loopexit2561 ] ; 9 uses
  %i.cmj = load i32, ptr %.018.i.i.i.i.i996, align 8, !tbaa !34
  store i32 %i.cmj, ptr %.01517.i.i.i.i.i997, align 8, !tbaa !34
  %i.cmk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 8
  %i.cml = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 8
  %i.cmm = load ptr, ptr %i.cml, align 8, !tbaa !35
  store ptr %i.cmm, ptr %i.cmk, align 8, !tbaa !35
  %i.cmn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 16
  %i.cmo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 16
  %i.cmp = load i32, ptr %i.cmn, align 8, !tbaa !34
  store i32 %i.cmp, ptr %i.cmo, align 8, !tbaa !34
  %i.cmq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 24
  %i.cmr = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 24
  %i.cms = load ptr, ptr %i.cmr, align 8, !tbaa !35
  store ptr %i.cms, ptr %i.cmq, align 8, !tbaa !35
  %i.cmt = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 32
  %i.cmu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 32
  %i.cmv = load i32, ptr %i.cmt, align 8, !tbaa !34
  store i32 %i.cmv, ptr %i.cmu, align 8, !tbaa !34
  %i.cmw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 40
  %i.cmx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 40
  %i.cmy = load ptr, ptr %i.cmx, align 8, !tbaa !35
  store ptr %i.cmy, ptr %i.cmw, align 8, !tbaa !35
  %i.cmz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 48
  %i.cna = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 48
  %i.cnb = load i32, ptr %i.cmz, align 8, !tbaa !34
  store i32 %i.cnb, ptr %i.cna, align 8, !tbaa !34
  %i.cnc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 56
  %i.cnd = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 56
  %i.cne = load ptr, ptr %i.cnd, align 8, !tbaa !35
  store ptr %i.cne, ptr %i.cnc, align 8, !tbaa !35
  %i.cnf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i996, i64 64 ; 2 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i997, i64 64
  %.not.i.i.i.i.i998.3 = icmp eq ptr %i.cnf, %i.cly
  br i1 %.not.i.i.i.i.i998.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i999, label %.lr.ph.i.i.i.i.i994.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1005: ; preds = %.noexc1007
  %.not.i.i.i1006 = icmp eq ptr %i.clv, null
  br i1 %.not.i.i.i1006, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1004, label %bb.gd

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i999: ; preds = %.lr.ph.i.i.i.i.i994.new, %.prol.loopexit2561
  %i.cnh = add i64 %.idx.i.i992, 68719476720
  %i.cni = lshr exact i64 %i.cnh, 4
  %i.cnj = trunc i64 %i.cni to i32
  %i.cnk = add i32 %i.cnj, 1
  %i.cnl = add i32 %i.cnk, %.promoted.i.i.i.i.i995
  store i32 %i.cnl, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i1000 = icmp eq ptr %i.clv, null
  br i1 %.not.i5.i.i1000, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1004, label %.lr.ph.preheader.i.i.i.i1001

.lr.ph.preheader.i.i.i.i1001:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i999
  %.promoted.i.i.i.i1002 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.cnm = trunc i64 %i.clx to i32
  %i.cnn = add i32 %.promoted.i.i.i.i1002, %i.cnm
  store i32 %i.cnn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.gd

bb.gd:                                            ; preds = %.lr.ph.preheader.i.i.i.i1001, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1005
  %i.cno = load i64, ptr %i.clt, align 8, !tbaa !42
  %i.cnp = shl i64 %i.cno, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.clv, i64 noundef %i.cnp) #23
  %.pre.i.i.i1003 = load i64, ptr %i.clw, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1004

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1004: ; preds = %bb.gd, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i999, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1005
  %i.cnq = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1005 ], [ %.pre.i.i.i1003, %bb.gd ], [ %i.clx, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i999 ] ; 4 uses
  store ptr %i.clu, ptr %174, align 8, !tbaa !38
  store i64 %i.cnq, ptr %i.clw, align 8, !tbaa !43
  store i64 4, ptr %i.clt, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #23
  store i32 0, ptr %175, align 8, !tbaa !34
  %i.cnr = getelementptr inbounds nuw i8, ptr %175, i64 8
  store ptr null, ptr %i.cnr, align 8, !tbaa !35
  %i.cns = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.cnt = add i32 %i.cns, 1                      ; 2 uses
  store i32 %i.cnt, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1009 = icmp eq i64 %i.cnq, 4
  br i1 %.not.i1009, label %bb.gf, label %bb.ge, !prof !45

bb.ge:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1004
  %i.cnu = getelementptr inbounds nuw [16 x i8], ptr %i.clu, i64 %i.cnq ; 2 uses
  store i32 0, ptr %i.cnu, align 8, !tbaa !34
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.cnu, i64 8
  store ptr null, ptr %i.cnv, align 8, !tbaa !35
  %i.cnw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cnx = add i32 %i.cnw, 1
  store i32 %i.cnx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cny = add i64 %i.cnq, 1                      ; 2 uses
  store i64 %i.cny, ptr %i.clw, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit152

bb.gf:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1004
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.clu, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %47, ptr noundef nonnull align 8 dereferenceable(24) %174, ptr noundef nonnull %i.cnz, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %175)
          to label %.noexc1011 unwind label %bb.pg

.noexc1011:                                       ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  %.pre1987 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1988 = load i64, ptr %i.clw, align 8, !tbaa !40
  %.pre1989 = load i64, ptr %i.clt, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit152

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit152: ; preds = %.noexc1011, %bb.ge
  %i.coa = phi i64 [ %.pre1989, %.noexc1011 ], [ 4, %bb.ge ] ; 3 uses
  %i.cob = phi i64 [ %.pre1988, %.noexc1011 ], [ %i.cny, %bb.ge ] ; 3 uses
  %i.coc = phi i32 [ %.pre1987, %.noexc1011 ], [ %i.cnt, %bb.ge ]
  %i.cod = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.coe = add i32 %i.cod, 1
  store i32 %i.coe, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #23
  store i32 0, ptr %176, align 8, !tbaa !34
  %i.cof = getelementptr inbounds nuw i8, ptr %176, i64 8
  store ptr null, ptr %i.cof, align 8, !tbaa !35
  %i.cog = add i32 %i.coc, 1                      ; 2 uses
  store i32 %i.cog, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1013 = icmp eq i64 %i.cob, %i.coa
  br i1 %.not.i1013, label %bb.gh, label %bb.gg, !prof !45

bb.gg:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit152
  %i.coh = load ptr, ptr %174, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.coi = getelementptr inbounds nuw [16 x i8], ptr %i.coh, i64 %i.cob ; 2 uses
  store i32 0, ptr %i.coi, align 8, !tbaa !34
  %i.coj = getelementptr inbounds nuw i8, ptr %i.coi, i64 8
  store ptr null, ptr %i.coj, align 8, !tbaa !35
  %i.cok = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.col = add i32 %i.cok, 1
  store i32 %i.col, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.com = add i64 %i.cob, 1                      ; 2 uses
  store i64 %i.com, ptr %i.clw, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit151

bb.gh:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.con = load ptr, ptr %174, align 8, !tbaa !38
  %i.coo = getelementptr inbounds nuw [16 x i8], ptr %i.con, i64 %i.coa
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %46, ptr noundef nonnull align 8 dereferenceable(24) %174, ptr noundef %i.coo, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %176)
          to label %.noexc1015 unwind label %bb.ph

.noexc1015:                                       ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %.pre1990 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_5
begin_hunk_6_@main:bb.a
  %i.csj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.csk = add i32 %i.csj, 1
  store i32 %i.csk, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.csl = add i64 %i.csd, 1                      ; 2 uses
  store i64 %i.csl, ptr %i.cqj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit149

bb.gq:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1046
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  %i.csm = getelementptr inbounds nuw i8, ptr %i.cqh, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %179, ptr noundef nonnull %i.csm, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %180)
          to label %.noexc1053 unwind label %bb.pm

.noexc1053:                                       ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  %.pre1994 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1995 = load i64, ptr %i.cqj, align 8, !tbaa !40
  %.pre1996 = load i64, ptr %i.cqg, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit149

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit149: ; preds = %.noexc1053, %bb.gp
  %i.csn = phi i64 [ %.pre1996, %.noexc1053 ], [ 4, %bb.gp ] ; 3 uses
  %i.cso = phi i64 [ %.pre1995, %.noexc1053 ], [ %i.csl, %bb.gp ] ; 3 uses
  %i.csp = phi i32 [ %.pre1994, %.noexc1053 ], [ %i.csg, %bb.gp ]
  %i.csq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.csr = add i32 %i.csq, 1
  store i32 %i.csr, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #23
  store i32 0, ptr %181, align 8, !tbaa !34
  %i.css = getelementptr inbounds nuw i8, ptr %181, i64 8
  store ptr null, ptr %i.css, align 8, !tbaa !35
  %i.cst = add i32 %i.csp, 1                      ; 2 uses
  store i32 %i.cst, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1055 = icmp eq i64 %i.cso, %i.csn
  br i1 %.not.i1055, label %bb.gs, label %bb.gr, !prof !45

bb.gr:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit149
  %i.csu = load ptr, ptr %179, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.csv = getelementptr inbounds nuw [16 x i8], ptr %i.csu, i64 %i.cso ; 2 uses
  store i32 0, ptr %i.csv, align 8, !tbaa !34
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 8
  store ptr null, ptr %i.csw, align 8, !tbaa !35
  %i.csx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.csy = add i32 %i.csx, 1
  store i32 %i.csy, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.csz = add i64 %i.cso, 1                      ; 2 uses
  store i64 %i.csz, ptr %i.cqj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit148

bb.gs:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  %i.cta = load ptr, ptr %179, align 8, !tbaa !38
  %i.ctb = getelementptr inbounds nuw [16 x i8], ptr %i.cta, i64 %i.csn
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %179, ptr noundef %i.ctb, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %181)
          to label %.noexc1057 unwind label %bb.pn

.noexc1057:                                       ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  %.pre1997 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre1998 = load i64, ptr %i.cqj, align 8, !tbaa !40
  %.pre1999 = load i64, ptr %i.cqg, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit148

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit148: ; preds = %.noexc1057, %bb.gr
  %i.ctc = phi i64 [ %.pre1999, %.noexc1057 ], [ %i.csn, %bb.gr ] ; 2 uses
  %i.ctd = phi i64 [ %.pre1998, %.noexc1057 ], [ %i.csz, %bb.gr ] ; 3 uses
  %i.cte = phi i32 [ %.pre1997, %.noexc1057 ], [ %i.cst, %bb.gr ]
  %i.ctf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.ctg = add i32 %i.ctf, 1
  store i32 %i.ctg, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #23
  store i32 0, ptr %182, align 8, !tbaa !34
  %i.cth = getelementptr inbounds nuw i8, ptr %182, i64 8
  store ptr null, ptr %i.cth, align 8, !tbaa !35
  %i.cti = add i32 %i.cte, 1                      ; 2 uses
  store i32 %i.cti, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1059 = icmp eq i64 %i.ctd, %i.ctc
  br i1 %.not.i1059, label %bb.gu, label %bb.gt, !prof !45

bb.gt:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit148
  %i.ctj = load ptr, ptr %179, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.ctk = getelementptr inbounds nuw [16 x i8], ptr %i.ctj, i64 %i.ctd ; 2 uses
  store i32 0, ptr %i.ctk, align 8, !tbaa !34
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.ctk, i64 8
  store ptr null, ptr %i.ctl, align 8, !tbaa !35
  %i.ctm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.ctn = add i32 %i.ctm, 1
  store i32 %i.ctn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cto = add i64 %i.ctd, 1
  store i64 %i.cto, ptr %i.cqj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit147

bb.gu:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.ctp = load ptr, ptr %179, align 8, !tbaa !38
  %i.ctq = getelementptr inbounds nuw [16 x i8], ptr %i.ctp, i64 %i.ctc
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %41, ptr noundef nonnull align 8 dereferenceable(24) %179, ptr noundef %i.ctq, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %182)
          to label %.noexc1061 unwind label %bb.po

.noexc1061:                                       ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  %.pre2000 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit147

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit147: ; preds = %.noexc1061, %bb.gt
  %i.ctr = phi i32 [ %.pre2000, %.noexc1061 ], [ %i.cti, %bb.gt ]
  %i.cts = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.ctt = add i32 %i.cts, 1
  store i32 %i.ctt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #23
  store i32 0, ptr %183, align 8, !tbaa !34
  %i.ctu = getelementptr inbounds nuw i8, ptr %183, i64 8 ; 2 uses
  store ptr null, ptr %i.ctu, align 8, !tbaa !35
  %i.ctv = add i32 %i.ctr, 1
  store i32 %i.ctv, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.ctw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1064 unwind label %bb.pp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1064: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.ctx = load i64, ptr %i.cqj, align 8, !tbaa !40 ; 4 uses
  %i.cty = load i64, ptr %i.cqg, align 8, !tbaa !42
  %.not.i1065 = icmp eq i64 %i.ctx, %i.cty
  br i1 %.not.i1065, label %bb.gw, label %bb.gv, !prof !45

bb.gv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1064
  %i.ctz = load ptr, ptr %179, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.cua = getelementptr inbounds nuw [16 x i8], ptr %i.ctz, i64 %i.ctx ; 2 uses
  %i.cub = load i32, ptr %183, align 8, !tbaa !34
  store i32 %i.cub, ptr %i.cua, align 8, !tbaa !34
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.cua, i64 8
  %i.cud = load ptr, ptr %i.ctu, align 8, !tbaa !35
  store ptr %i.cud, ptr %i.cuc, align 8, !tbaa !35
  %i.cue = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27
  %i.cuf = add i32 %i.cue, 1
  store i32 %i.cuf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27
  %i.cug = add i64 %i.ctx, 1
  store i64 %i.cug, ptr %i.cqj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit

bb.gw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1064
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.cuh = load ptr, ptr %179, align 8, !tbaa !38
  %i.cui = getelementptr inbounds nuw [16 x i8], ptr %i.cuh, i64 %i.ctx
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %179, ptr noundef %i.cui, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %183)
          to label %.noexc1067 unwind label %bb.pp

.noexc1067:                                       ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit

_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit: ; preds = %.noexc1067, %bb.gv
  %i.cuj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.gx unwind label %bb.pp     ; 0 uses

bb.gx:                                            ; preds = %_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit
  %i.cuk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1069 unwind label %bb.pp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1069: ; preds = %bb.gx
  %i.cul = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1574 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1643 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1666 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.cum = add i32 %.sroa.28.0.copyload1574, 1    ; 2 uses
  store i32 %i.cum, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #23
  %i.cun = load i64, ptr %i.cqj, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i1070 = icmp eq i64 %i.cun, 0
  br i1 %.not3.i.i1070, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1073, label %.lr.ph.preheader.i.i1071

.lr.ph.preheader.i.i1071:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1069
  %i.cuo = trunc i64 %i.cun to i32
  %i.cup = add i32 %i.cum, %i.cuo
  store i32 %i.cup, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1073

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1073: ; preds = %.lr.ph.preheader.i.i1071, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1069
  %i.cuq = load i64, ptr %i.cqg, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1074 = icmp eq i64 %i.cuq, 0
  br i1 %.not.i.i1074, label %_ZN5boost9container6vectorI1XvvED2Ev.exit1075, label %bb.gy

bb.gy:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1073
  %i.cur = load ptr, ptr %179, align 8, !tbaa !47
  %i.cus = shl i64 %i.cuq, 4
  call void @_ZdlPvm(ptr noundef %i.cur, i64 noundef %i.cus) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit1075

_ZN5boost9container6vectorI1XvvED2Ev.exit1075:    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1073, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  %i.cut = icmp eq <4 x i32> %i.cpy, %i.cul
  %i.cuu = icmp eq i32 %.sroa.641779.0.copyload1786, %.sroa.64.0.copyload1643
  %i.cuv = icmp eq i32 %.sroa.761803.0.copyload1810, %.sroa.76.0.copyload1666
  %i.cuw = freeze <4 x i1> %i.cut
  %i.cux = bitcast <4 x i1> %i.cuw to i4
  %i.cuy = icmp eq i4 %i.cux, -1
  %op.rdx2415 = select i1 %i.cuy, i1 %i.cuu, i1 false
  %op.rdx2416 = select i1 %op.rdx2415, i1 %i.cuv, i1 false
  %i.cuz = zext i1 %op.rdx2416 to i8
  store i8 %i.cuz, ptr %i.m, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i8 1, ptr %i.n, align 1, !tbaa !49
  %i.cva = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 349, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %184, i8 0, i64 24, i1 false)
  %i.cvb = getelementptr inbounds nuw i8, ptr %184, i64 16 ; 6 uses
  %i.cvc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc1092 unwind label %bb.pr ; 5 uses

.noexc1092:                                       ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit1075
  %i.cvd = load ptr, ptr %184, align 8, !tbaa !38 ; 6 uses
  %i.cve = getelementptr inbounds nuw i8, ptr %184, i64 8 ; 11 uses
  %i.cvf = load i64, ptr %i.cve, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i1077 = shl i64 %i.cvf, 4               ; 3 uses
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvd, i64 %.idx.i.i1077
  %.not16.i.i.i.i.i1078 = icmp eq i64 %i.cvf, 0
  br i1 %.not16.i.i.i.i.i1078, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1090, label %.lr.ph.i.i.i.i.i1079

.lr.ph.i.i.i.i.i1079:                             ; preds = %.noexc1092
  %.promoted.i.i.i.i.i1080 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cvh = add i64 %.idx.i.i1077, -16             ; 2 uses
  %i.cvi = lshr exact i64 %i.cvh, 4
  %i.cvj = add nuw nsw i64 %i.cvi, 1
  %xtraiter2572 = and i64 %i.cvj, 3               ; 2 uses
  %lcmp.mod2573.not = icmp eq i64 %xtraiter2572, 0
  br i1 %lcmp.mod2573.not, label %.prol.loopexit2571, label %.prol.preheader2570

.prol.preheader2570:                              ; preds = %.lr.ph.i.i.i.i.i1079, %.prol.preheader2570
  %.018.i.i.i.i.i1081.prol = phi ptr [ %i.cvo, %.prol.preheader2570 ], [ %i.cvd, %.lr.ph.i.i.i.i.i1079 ] ; 3 uses
  %.01517.i.i.i.i.i1082.prol = phi ptr [ %i.cvp, %.prol.preheader2570 ], [ %i.cvc, %.lr.ph.i.i.i.i.i1079 ] ; 3 uses
  %prol.iter2574 = phi i64 [ %prol.iter2574.next, %.prol.preheader2570 ], [ 0, %.lr.ph.i.i.i.i.i1079 ]
  %i.cvk = load i32, ptr %.018.i.i.i.i.i1081.prol, align 8, !tbaa !34
  store i32 %i.cvk, ptr %.01517.i.i.i.i.i1082.prol, align 8, !tbaa !34
  %i.cvl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082.prol, i64 8
  %i.cvm = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081.prol, i64 8
  %i.cvn = load ptr, ptr %i.cvm, align 8, !tbaa !35
  store ptr %i.cvn, ptr %i.cvl, align 8, !tbaa !35
  %i.cvo = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081.prol, i64 16 ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082.prol, i64 16 ; 2 uses
  %prol.iter2574.next = add i64 %prol.iter2574, 1 ; 2 uses
  %prol.iter2574.cmp.not = icmp eq i64 %prol.iter2574.next, %xtraiter2572
  br i1 %prol.iter2574.cmp.not, label %.prol.loopexit2571, label %.prol.preheader2570, !llvm.loop !193

.prol.loopexit2571:                               ; preds = %.prol.preheader2570, %.lr.ph.i.i.i.i.i1079
  %.018.i.i.i.i.i1081.unr = phi ptr [ %i.cvd, %.lr.ph.i.i.i.i.i1079 ], [ %i.cvo, %.prol.preheader2570 ]
  %.01517.i.i.i.i.i1082.unr = phi ptr [ %i.cvc, %.lr.ph.i.i.i.i.i1079 ], [ %i.cvp, %.prol.preheader2570 ]
  %i.cvq = icmp ult i64 %i.cvh, 48
  br i1 %i.cvq, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1084, label %.lr.ph.i.i.i.i.i1079.new

.lr.ph.i.i.i.i.i1079.new:                         ; preds = %.prol.loopexit2571, %.lr.ph.i.i.i.i.i1079.new
  %.018.i.i.i.i.i1081 = phi ptr [ %i.cwn, %.lr.ph.i.i.i.i.i1079.new ], [ %.018.i.i.i.i.i1081.unr, %.prol.loopexit2571 ] ; 9 uses
  %.01517.i.i.i.i.i1082 = phi ptr [ %i.cwo, %.lr.ph.i.i.i.i.i1079.new ], [ %.01517.i.i.i.i.i1082.unr, %.prol.loopexit2571 ] ; 9 uses
  %i.cvr = load i32, ptr %.018.i.i.i.i.i1081, align 8, !tbaa !34
  store i32 %i.cvr, ptr %.01517.i.i.i.i.i1082, align 8, !tbaa !34
  %i.cvs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 8
  %i.cvt = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 8
  %i.cvu = load ptr, ptr %i.cvt, align 8, !tbaa !35
  store ptr %i.cvu, ptr %i.cvs, align 8, !tbaa !35
  %i.cvv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 16
  %i.cvw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 16
  %i.cvx = load i32, ptr %i.cvv, align 8, !tbaa !34
  store i32 %i.cvx, ptr %i.cvw, align 8, !tbaa !34
  %i.cvy = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 24
  %i.cvz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 24
  %i.cwa = load ptr, ptr %i.cvz, align 8, !tbaa !35
  store ptr %i.cwa, ptr %i.cvy, align 8, !tbaa !35
  %i.cwb = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 32
  %i.cwc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 32
  %i.cwd = load i32, ptr %i.cwb, align 8, !tbaa !34
  store i32 %i.cwd, ptr %i.cwc, align 8, !tbaa !34
  %i.cwe = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 40
  %i.cwf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 40
  %i.cwg = load ptr, ptr %i.cwf, align 8, !tbaa !35
  store ptr %i.cwg, ptr %i.cwe, align 8, !tbaa !35
  %i.cwh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 48
  %i.cwi = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 48
  %i.cwj = load i32, ptr %i.cwh, align 8, !tbaa !34
  store i32 %i.cwj, ptr %i.cwi, align 8, !tbaa !34
  %i.cwk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 56
  %i.cwl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 56
  %i.cwm = load ptr, ptr %i.cwl, align 8, !tbaa !35
  store ptr %i.cwm, ptr %i.cwk, align 8, !tbaa !35
  %i.cwn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1081, i64 64 ; 2 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1082, i64 64
  %.not.i.i.i.i.i1083.3 = icmp eq ptr %i.cwn, %i.cvg
  br i1 %.not.i.i.i.i.i1083.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1084, label %.lr.ph.i.i.i.i.i1079.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1090: ; preds = %.noexc1092
  %.not.i.i.i1091 = icmp eq ptr %i.cvd, null
  br i1 %.not.i.i.i1091, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1089, label %bb.gz

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1084: ; preds = %.lr.ph.i.i.i.i.i1079.new, %.prol.loopexit2571
  %i.cwp = add i64 %.idx.i.i1077, 68719476720
  %i.cwq = lshr exact i64 %i.cwp, 4
  %i.cwr = trunc i64 %i.cwq to i32
  %i.cws = add i32 %i.cwr, 1
  %i.cwt = add i32 %i.cws, %.promoted.i.i.i.i.i1080
  store i32 %i.cwt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i1085 = icmp eq ptr %i.cvd, null
  br i1 %.not.i5.i.i1085, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1089, label %.lr.ph.preheader.i.i.i.i1086

.lr.ph.preheader.i.i.i.i1086:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1084
  %.promoted.i.i.i.i1087 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.cwu = trunc i64 %i.cvf to i32
  %i.cwv = add i32 %.promoted.i.i.i.i1087, %i.cwu
  store i32 %i.cwv, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.preheader.i.i.i.i1086, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1090
  %i.cww = load i64, ptr %i.cvb, align 8, !tbaa !42
  %i.cwx = shl i64 %i.cww, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.cvd, i64 noundef %i.cwx) #23
  %.pre.i.i.i1088 = load i64, ptr %i.cve, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1089

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1089: ; preds = %bb.gz, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1084, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1090
  %i.cwy = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1090 ], [ %.pre.i.i.i1088, %bb.gz ], [ %i.cvf, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1084 ] ; 4 uses
  store ptr %i.cvc, ptr %184, align 8, !tbaa !38
  store i64 %i.cwy, ptr %i.cve, align 8, !tbaa !43
  store i64 4, ptr %i.cvb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #23
  store i32 0, ptr %185, align 8, !tbaa !34
  %i.cwz = getelementptr inbounds nuw i8, ptr %185, i64 8
  store ptr null, ptr %i.cwz, align 8, !tbaa !35
  %i.cxa = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.cxb = add i32 %i.cxa, 1                      ; 2 uses
  store i32 %i.cxb, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1094 = icmp eq i64 %i.cwy, 4
  br i1 %.not.i1094, label %bb.hb, label %bb.ha, !prof !45

bb.ha:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1089
  %i.cxc = getelementptr inbounds nuw [16 x i8], ptr %i.cvc, i64 %i.cwy ; 2 uses
  store i32 0, ptr %i.cxc, align 8, !tbaa !34
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 8
  store ptr null, ptr %i.cxd, align 8, !tbaa !35
  %i.cxe = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cxf = add i32 %i.cxe, 1
  store i32 %i.cxf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cxg = add i64 %i.cwy, 1                      ; 2 uses
  store i64 %i.cxg, ptr %i.cve, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit146

bb.hb:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1089
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cvc, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %184, ptr noundef nonnull %i.cxh, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %185)
          to label %.noexc1096 unwind label %bb.ps

.noexc1096:                                       ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %.pre2001 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2002 = load i64, ptr %i.cve, align 8, !tbaa !40
  %.pre2003 = load i64, ptr %i.cvb, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit146

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit146: ; preds = %.noexc1096, %bb.ha
  %i.cxi = phi i64 [ %.pre2003, %.noexc1096 ], [ 4, %bb.ha ] ; 3 uses
  %i.cxj = phi i64 [ %.pre2002, %.noexc1096 ], [ %i.cxg, %bb.ha ] ; 3 uses
  %i.cxk = phi i32 [ %.pre2001, %.noexc1096 ], [ %i.cxb, %bb.ha ]
  %i.cxl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.cxm = add i32 %i.cxl, 1
  store i32 %i.cxm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #23
  store i32 0, ptr %186, align 8, !tbaa !34
  %i.cxn = getelementptr inbounds nuw i8, ptr %186, i64 8
  store ptr null, ptr %i.cxn, align 8, !tbaa !35
  %i.cxo = add i32 %i.cxk, 1                      ; 2 uses
  store i32 %i.cxo, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1098 = icmp eq i64 %i.cxj, %i.cxi
  br i1 %.not.i1098, label %bb.hd, label %bb.hc, !prof !45

bb.hc:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit146
  %i.cxp = load ptr, ptr %184, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.cxq = getelementptr inbounds nuw [16 x i8], ptr %i.cxp, i64 %i.cxj ; 2 uses
  store i32 0, ptr %i.cxq, align 8, !tbaa !34
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxq, i64 8
  store ptr null, ptr %i.cxr, align 8, !tbaa !35
  %i.cxs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cxt = add i32 %i.cxs, 1
  store i32 %i.cxt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.cxu = add i64 %i.cxj, 1                      ; 2 uses
  store i64 %i.cxu, ptr %i.cve, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit145

bb.hd:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  %i.cxv = load ptr, ptr %184, align 8, !tbaa !38
  %i.cxw = getelementptr inbounds nuw [16 x i8], ptr %i.cxv, i64 %i.cxi
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %38, ptr noundef nonnull align 8 dereferenceable(24) %184, ptr noundef %i.cxw, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %186)
          to label %.noexc1100 unwind label %bb.pt

.noexc1100:                                       ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %.pre2004 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_6
begin_hunk_7_@main:bb.a
  %i.dbr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dbs = add i32 %i.dbr, 1
  store i32 %i.dbs, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dbt = add i64 %i.dbl, 1                      ; 2 uses
  store i64 %i.dbt, ptr %i.czr, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit142

bb.hm:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1132
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.czp, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %189, ptr noundef nonnull %i.dbu, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %190)
          to label %.noexc1139 unwind label %bb.py

.noexc1139:                                       ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %.pre2008 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2009 = load i64, ptr %i.czr, align 8, !tbaa !40
  %.pre2010 = load i64, ptr %i.czo, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit142

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit142: ; preds = %.noexc1139, %bb.hl
  %i.dbv = phi i64 [ %.pre2010, %.noexc1139 ], [ 4, %bb.hl ] ; 3 uses
  %i.dbw = phi i64 [ %.pre2009, %.noexc1139 ], [ %i.dbt, %bb.hl ] ; 3 uses
  %i.dbx = phi i32 [ %.pre2008, %.noexc1139 ], [ %i.dbo, %bb.hl ]
  %i.dby = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dbz = add i32 %i.dby, 1
  store i32 %i.dbz, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #23
  store i32 0, ptr %191, align 8, !tbaa !34
  %i.dca = getelementptr inbounds nuw i8, ptr %191, i64 8
  store ptr null, ptr %i.dca, align 8, !tbaa !35
  %i.dcb = add i32 %i.dbx, 1                      ; 2 uses
  store i32 %i.dcb, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1141 = icmp eq i64 %i.dbw, %i.dbv
  br i1 %.not.i1141, label %bb.ho, label %bb.hn, !prof !45

bb.hn:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit142
  %i.dcc = load ptr, ptr %189, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dcd = getelementptr inbounds nuw [16 x i8], ptr %i.dcc, i64 %i.dbw ; 2 uses
  store i32 0, ptr %i.dcd, align 8, !tbaa !34
  %i.dce = getelementptr inbounds nuw i8, ptr %i.dcd, i64 8
  store ptr null, ptr %i.dce, align 8, !tbaa !35
  %i.dcf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dcg = add i32 %i.dcf, 1
  store i32 %i.dcg, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dch = add i64 %i.dbw, 1                      ; 2 uses
  store i64 %i.dch, ptr %i.czr, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit141

bb.ho:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  %i.dci = load ptr, ptr %189, align 8, !tbaa !38
  %i.dcj = getelementptr inbounds nuw [16 x i8], ptr %i.dci, i64 %i.dbv
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %189, ptr noundef %i.dcj, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %191)
          to label %.noexc1143 unwind label %bb.pz

.noexc1143:                                       ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  %.pre2011 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2012 = load i64, ptr %i.czr, align 8, !tbaa !40
  %.pre2013 = load i64, ptr %i.czo, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit141

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit141: ; preds = %.noexc1143, %bb.hn
  %i.dck = phi i64 [ %.pre2013, %.noexc1143 ], [ %i.dbv, %bb.hn ] ; 2 uses
  %i.dcl = phi i64 [ %.pre2012, %.noexc1143 ], [ %i.dch, %bb.hn ] ; 3 uses
  %i.dcm = phi i32 [ %.pre2011, %.noexc1143 ], [ %i.dcb, %bb.hn ]
  %i.dcn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dco = add i32 %i.dcn, 1
  store i32 %i.dco, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #23
  store i32 0, ptr %192, align 8, !tbaa !34
  %i.dcp = getelementptr inbounds nuw i8, ptr %192, i64 8
  store ptr null, ptr %i.dcp, align 8, !tbaa !35
  %i.dcq = add i32 %i.dcm, 1                      ; 2 uses
  store i32 %i.dcq, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1145 = icmp eq i64 %i.dcl, %i.dck
  br i1 %.not.i1145, label %bb.hq, label %bb.hp, !prof !45

bb.hp:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit141
  %i.dcr = load ptr, ptr %189, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dcs = getelementptr inbounds nuw [16 x i8], ptr %i.dcr, i64 %i.dcl ; 2 uses
  store i32 0, ptr %i.dcs, align 8, !tbaa !34
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcs, i64 8
  store ptr null, ptr %i.dct, align 8, !tbaa !35
  %i.dcu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dcv = add i32 %i.dcu, 1
  store i32 %i.dcv, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dcw = add i64 %i.dcl, 1
  store i64 %i.dcw, ptr %i.czr, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit140

bb.hq:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %i.dcx = load ptr, ptr %189, align 8, !tbaa !38
  %i.dcy = getelementptr inbounds nuw [16 x i8], ptr %i.dcx, i64 %i.dck
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %189, ptr noundef %i.dcy, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %192)
          to label %.noexc1147 unwind label %bb.qa

.noexc1147:                                       ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %.pre2014 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit140

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit140: ; preds = %.noexc1147, %bb.hp
  %i.dcz = phi i32 [ %.pre2014, %.noexc1147 ], [ %i.dcq, %bb.hp ]
  %i.dda = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.ddb = add i32 %i.dda, 1
  store i32 %i.ddb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #23
  store i32 0, ptr %193, align 8, !tbaa !34
  %i.ddc = getelementptr inbounds nuw i8, ptr %193, i64 8 ; 2 uses
  store ptr null, ptr %i.ddc, align 8, !tbaa !35
  %i.ddd = add i32 %i.dcz, 1
  store i32 %i.ddd, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.dde = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.27, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1150 unwind label %bb.qb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1150: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.ddf = load i64, ptr %i.czr, align 8, !tbaa !40 ; 4 uses
  %i.ddg = load i64, ptr %i.czo, align 8, !tbaa !42
  %.not.i1151 = icmp eq i64 %i.ddf, %i.ddg
  br i1 %.not.i1151, label %bb.hs, label %bb.hr, !prof !45

bb.hr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1150
  %i.ddh = load ptr, ptr %189, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.ddi = getelementptr inbounds nuw [16 x i8], ptr %i.ddh, i64 %i.ddf ; 2 uses
  %i.ddj = load i32, ptr %193, align 8, !tbaa !34
  store i32 %i.ddj, ptr %i.ddi, align 8, !tbaa !34
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.ddi, i64 8
  %i.ddl = load ptr, ptr %i.ddc, align 8, !tbaa !35
  store ptr %i.ddl, ptr %i.ddk, align 8, !tbaa !35
  %i.ddm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.ddn = add i32 %i.ddm, 1
  store i32 %i.ddn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.ddo = add i64 %i.ddf, 1
  store i64 %i.ddo, ptr %i.czr, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1154

bb.hs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1150
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.ddp = load ptr, ptr %189, align 8, !tbaa !38
  %i.ddq = getelementptr inbounds nuw [16 x i8], ptr %i.ddp, i64 %i.ddf
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %189, ptr noundef %i.ddq, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %193)
          to label %.noexc1153 unwind label %bb.qb

.noexc1153:                                       ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1154

_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1154: ; preds = %.noexc1153, %bb.hr
  %i.ddr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.ht unwind label %bb.qb     ; 0 uses

bb.ht:                                            ; preds = %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1154
  %i.dds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156 unwind label %bb.qb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156: ; preds = %bb.ht
  %i.ddt = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1575 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1644 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1667 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.ddu = add i32 %.sroa.28.0.copyload1575, 1    ; 2 uses
  store i32 %i.ddu, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #23
  %i.ddv = load i64, ptr %i.czr, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i1157 = icmp eq i64 %i.ddv, 0
  br i1 %.not3.i.i1157, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1160, label %.lr.ph.preheader.i.i1158

.lr.ph.preheader.i.i1158:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156
  %i.ddw = trunc i64 %i.ddv to i32
  %i.ddx = add i32 %i.ddu, %i.ddw
  store i32 %i.ddx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1160

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1160: ; preds = %.lr.ph.preheader.i.i1158, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156
  %i.ddy = load i64, ptr %i.czo, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1161 = icmp eq i64 %i.ddy, 0
  br i1 %.not.i.i1161, label %_ZN5boost9container6vectorI1XvvED2Ev.exit1162, label %bb.hu

bb.hu:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1160
  %i.ddz = load ptr, ptr %189, align 8, !tbaa !47
  %i.dea = shl i64 %i.ddy, 4
  call void @_ZdlPvm(ptr noundef %i.ddz, i64 noundef %i.dea) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit1162

_ZN5boost9container6vectorI1XvvED2Ev.exit1162:    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1160, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  %i.deb = icmp eq <4 x i32> %i.czg, %i.ddt
  %i.dec = icmp eq i32 %.sroa.641779.0.copyload1787, %.sroa.64.0.copyload1644
  %i.ded = icmp eq i32 %.sroa.761803.0.copyload1811, %.sroa.76.0.copyload1667
  %i.dee = freeze <4 x i1> %i.deb
  %i.def = bitcast <4 x i1> %i.dee to i4
  %i.deg = icmp eq i4 %i.def, -1
  %op.rdx2413 = select i1 %i.deg, i1 %i.dec, i1 false
  %op.rdx2414 = select i1 %op.rdx2413, i1 %i.ded, i1 false
  %i.deh = zext i1 %op.rdx2414 to i8
  store i8 %i.deh, ptr %i.o, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i8 1, ptr %i.p, align 1, !tbaa !49
  %i.dei = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 378, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.p) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %194, i8 0, i64 24, i1 false)
  %i.dej = getelementptr inbounds nuw i8, ptr %194, i64 16 ; 6 uses
  %i.dek = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc1179 unwind label %bb.qd ; 5 uses

.noexc1179:                                       ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit1162
  %i.del = load ptr, ptr %194, align 8, !tbaa !38 ; 6 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %194, i64 8 ; 11 uses
  %i.den = load i64, ptr %i.dem, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i1164 = shl i64 %i.den, 4               ; 3 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %i.del, i64 %.idx.i.i1164
  %.not16.i.i.i.i.i1165 = icmp eq i64 %i.den, 0
  br i1 %.not16.i.i.i.i.i1165, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1177, label %.lr.ph.i.i.i.i.i1166

.lr.ph.i.i.i.i.i1166:                             ; preds = %.noexc1179
  %.promoted.i.i.i.i.i1167 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dep = add i64 %.idx.i.i1164, -16             ; 2 uses
  %i.deq = lshr exact i64 %i.dep, 4
  %i.der = add nuw nsw i64 %i.deq, 1
  %xtraiter2582 = and i64 %i.der, 3               ; 2 uses
  %lcmp.mod2583.not = icmp eq i64 %xtraiter2582, 0
  br i1 %lcmp.mod2583.not, label %.prol.loopexit2581, label %.prol.preheader2580

.prol.preheader2580:                              ; preds = %.lr.ph.i.i.i.i.i1166, %.prol.preheader2580
  %.018.i.i.i.i.i1168.prol = phi ptr [ %i.dew, %.prol.preheader2580 ], [ %i.del, %.lr.ph.i.i.i.i.i1166 ] ; 3 uses
  %.01517.i.i.i.i.i1169.prol = phi ptr [ %i.dex, %.prol.preheader2580 ], [ %i.dek, %.lr.ph.i.i.i.i.i1166 ] ; 3 uses
  %prol.iter2584 = phi i64 [ %prol.iter2584.next, %.prol.preheader2580 ], [ 0, %.lr.ph.i.i.i.i.i1166 ]
  %i.des = load i32, ptr %.018.i.i.i.i.i1168.prol, align 8, !tbaa !34
  store i32 %i.des, ptr %.01517.i.i.i.i.i1169.prol, align 8, !tbaa !34
  %i.det = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169.prol, i64 8
  %i.deu = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168.prol, i64 8
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !35
  store ptr %i.dev, ptr %i.det, align 8, !tbaa !35
  %i.dew = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168.prol, i64 16 ; 2 uses
  %i.dex = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169.prol, i64 16 ; 2 uses
  %prol.iter2584.next = add i64 %prol.iter2584, 1 ; 2 uses
  %prol.iter2584.cmp.not = icmp eq i64 %prol.iter2584.next, %xtraiter2582
  br i1 %prol.iter2584.cmp.not, label %.prol.loopexit2581, label %.prol.preheader2580, !llvm.loop !195

.prol.loopexit2581:                               ; preds = %.prol.preheader2580, %.lr.ph.i.i.i.i.i1166
  %.018.i.i.i.i.i1168.unr = phi ptr [ %i.del, %.lr.ph.i.i.i.i.i1166 ], [ %i.dew, %.prol.preheader2580 ]
  %.01517.i.i.i.i.i1169.unr = phi ptr [ %i.dek, %.lr.ph.i.i.i.i.i1166 ], [ %i.dex, %.prol.preheader2580 ]
  %i.dey = icmp ult i64 %i.dep, 48
  br i1 %i.dey, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1171, label %.lr.ph.i.i.i.i.i1166.new

.lr.ph.i.i.i.i.i1166.new:                         ; preds = %.prol.loopexit2581, %.lr.ph.i.i.i.i.i1166.new
  %.018.i.i.i.i.i1168 = phi ptr [ %i.dfv, %.lr.ph.i.i.i.i.i1166.new ], [ %.018.i.i.i.i.i1168.unr, %.prol.loopexit2581 ] ; 9 uses
  %.01517.i.i.i.i.i1169 = phi ptr [ %i.dfw, %.lr.ph.i.i.i.i.i1166.new ], [ %.01517.i.i.i.i.i1169.unr, %.prol.loopexit2581 ] ; 9 uses
  %i.dez = load i32, ptr %.018.i.i.i.i.i1168, align 8, !tbaa !34
  store i32 %i.dez, ptr %.01517.i.i.i.i.i1169, align 8, !tbaa !34
  %i.dfa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 8
  %i.dfb = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 8
  %i.dfc = load ptr, ptr %i.dfb, align 8, !tbaa !35
  store ptr %i.dfc, ptr %i.dfa, align 8, !tbaa !35
  %i.dfd = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 16
  %i.dfe = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 16
  %i.dff = load i32, ptr %i.dfd, align 8, !tbaa !34
  store i32 %i.dff, ptr %i.dfe, align 8, !tbaa !34
  %i.dfg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 24
  %i.dfh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 24
  %i.dfi = load ptr, ptr %i.dfh, align 8, !tbaa !35
  store ptr %i.dfi, ptr %i.dfg, align 8, !tbaa !35
  %i.dfj = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 32
  %i.dfk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 32
  %i.dfl = load i32, ptr %i.dfj, align 8, !tbaa !34
  store i32 %i.dfl, ptr %i.dfk, align 8, !tbaa !34
  %i.dfm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 40
  %i.dfn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 40
  %i.dfo = load ptr, ptr %i.dfn, align 8, !tbaa !35
  store ptr %i.dfo, ptr %i.dfm, align 8, !tbaa !35
  %i.dfp = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 48
  %i.dfq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 48
  %i.dfr = load i32, ptr %i.dfp, align 8, !tbaa !34
  store i32 %i.dfr, ptr %i.dfq, align 8, !tbaa !34
  %i.dfs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 56
  %i.dft = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 56
  %i.dfu = load ptr, ptr %i.dft, align 8, !tbaa !35
  store ptr %i.dfu, ptr %i.dfs, align 8, !tbaa !35
  %i.dfv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1168, i64 64 ; 2 uses
  %i.dfw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1169, i64 64
  %.not.i.i.i.i.i1170.3 = icmp eq ptr %i.dfv, %i.deo
  br i1 %.not.i.i.i.i.i1170.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1171, label %.lr.ph.i.i.i.i.i1166.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1177: ; preds = %.noexc1179
  %.not.i.i.i1178 = icmp eq ptr %i.del, null
  br i1 %.not.i.i.i1178, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1176, label %bb.hv

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1171: ; preds = %.lr.ph.i.i.i.i.i1166.new, %.prol.loopexit2581
  %i.dfx = add i64 %.idx.i.i1164, 68719476720
  %i.dfy = lshr exact i64 %i.dfx, 4
  %i.dfz = trunc i64 %i.dfy to i32
  %i.dga = add i32 %i.dfz, 1
  %i.dgb = add i32 %i.dga, %.promoted.i.i.i.i.i1167
  store i32 %i.dgb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i1172 = icmp eq ptr %i.del, null
  br i1 %.not.i5.i.i1172, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1176, label %.lr.ph.preheader.i.i.i.i1173

.lr.ph.preheader.i.i.i.i1173:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1171
  %.promoted.i.i.i.i1174 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.dgc = trunc i64 %i.den to i32
  %i.dgd = add i32 %.promoted.i.i.i.i1174, %i.dgc
  store i32 %i.dgd, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.preheader.i.i.i.i1173, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1177
  %i.dge = load i64, ptr %i.dej, align 8, !tbaa !42
  %i.dgf = shl i64 %i.dge, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.del, i64 noundef %i.dgf) #23
  %.pre.i.i.i1175 = load i64, ptr %i.dem, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1176

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1176: ; preds = %bb.hv, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1171, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1177
  %i.dgg = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1177 ], [ %.pre.i.i.i1175, %bb.hv ], [ %i.den, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1171 ] ; 4 uses
  store ptr %i.dek, ptr %194, align 8, !tbaa !38
  store i64 %i.dgg, ptr %i.dem, align 8, !tbaa !43
  store i64 4, ptr %i.dej, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #23
  store i32 0, ptr %195, align 8, !tbaa !34
  %i.dgh = getelementptr inbounds nuw i8, ptr %195, i64 8
  store ptr null, ptr %i.dgh, align 8, !tbaa !35
  %i.dgi = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.dgj = add i32 %i.dgi, 1                      ; 2 uses
  store i32 %i.dgj, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1181 = icmp eq i64 %i.dgg, 4
  br i1 %.not.i1181, label %bb.hx, label %bb.hw, !prof !45

bb.hw:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1176
  %i.dgk = getelementptr inbounds nuw [16 x i8], ptr %i.dek, i64 %i.dgg ; 2 uses
  store i32 0, ptr %i.dgk, align 8, !tbaa !34
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgk, i64 8
  store ptr null, ptr %i.dgl, align 8, !tbaa !35
  %i.dgm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dgn = add i32 %i.dgm, 1
  store i32 %i.dgn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dgo = add i64 %i.dgg, 1                      ; 2 uses
  store i64 %i.dgo, ptr %i.dem, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit139

bb.hx:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1176
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dek, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %194, ptr noundef nonnull %i.dgp, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %195)
          to label %.noexc1183 unwind label %bb.qe

.noexc1183:                                       ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %.pre2015 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2016 = load i64, ptr %i.dem, align 8, !tbaa !40
  %.pre2017 = load i64, ptr %i.dej, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit139

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit139: ; preds = %.noexc1183, %bb.hw
  %i.dgq = phi i64 [ %.pre2017, %.noexc1183 ], [ 4, %bb.hw ] ; 3 uses
  %i.dgr = phi i64 [ %.pre2016, %.noexc1183 ], [ %i.dgo, %bb.hw ] ; 3 uses
  %i.dgs = phi i32 [ %.pre2015, %.noexc1183 ], [ %i.dgj, %bb.hw ]
  %i.dgt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dgu = add i32 %i.dgt, 1
  store i32 %i.dgu, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #23
  store i32 0, ptr %196, align 8, !tbaa !34
  %i.dgv = getelementptr inbounds nuw i8, ptr %196, i64 8
  store ptr null, ptr %i.dgv, align 8, !tbaa !35
  %i.dgw = add i32 %i.dgs, 1                      ; 2 uses
  store i32 %i.dgw, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1185 = icmp eq i64 %i.dgr, %i.dgq
  br i1 %.not.i1185, label %bb.hz, label %bb.hy, !prof !45

bb.hy:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit139
  %i.dgx = load ptr, ptr %194, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dgy = getelementptr inbounds nuw [16 x i8], ptr %i.dgx, i64 %i.dgr ; 2 uses
  store i32 0, ptr %i.dgy, align 8, !tbaa !34
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.dgy, i64 8
  store ptr null, ptr %i.dgz, align 8, !tbaa !35
  %i.dha = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dhb = add i32 %i.dha, 1
  store i32 %i.dhb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dhc = add i64 %i.dgr, 1                      ; 2 uses
  store i64 %i.dhc, ptr %i.dem, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit138

bb.hz:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.dhd = load ptr, ptr %194, align 8, !tbaa !38
  %i.dhe = getelementptr inbounds nuw [16 x i8], ptr %i.dhd, i64 %i.dgq
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %30, ptr noundef nonnull align 8 dereferenceable(24) %194, ptr noundef %i.dhe, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %196)
          to label %.noexc1187 unwind label %bb.qf

.noexc1187:                                       ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %.pre2018 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_7
begin_hunk_8_@main:bb.a
  %i.dku = getelementptr inbounds nuw [16 x i8], ptr %i.diu, i64 %i.dkq ; 2 uses
  store i32 0, ptr %i.dku, align 8, !tbaa !34
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dku, i64 8
  store ptr null, ptr %i.dkv, align 8, !tbaa !35
  %i.dkw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dkx = add i32 %i.dkw, 1
  store i32 %i.dkx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dky = add i64 %i.dkq, 1                      ; 2 uses
  store i64 %i.dky, ptr %i.diw, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit135

bb.ii:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1219
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.diu, i64 64
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %199, ptr noundef nonnull %i.dkz, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %200)
          to label %.noexc1226 unwind label %bb.qk

.noexc1226:                                       ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %.pre2021 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2022 = load i64, ptr %i.diw, align 8, !tbaa !40
  %.pre2023 = load i64, ptr %i.dit, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit135

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit135: ; preds = %.noexc1226, %bb.ih
  %i.dla = phi i64 [ %.pre2023, %.noexc1226 ], [ 4, %bb.ih ] ; 3 uses
  %i.dlb = phi i64 [ %.pre2022, %.noexc1226 ], [ %i.dky, %bb.ih ] ; 3 uses
  %i.dlc = phi i32 [ %.pre2021, %.noexc1226 ], [ %i.dkt, %bb.ih ]
  %i.dld = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dle = add i32 %i.dld, 1
  store i32 %i.dle, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #23
  store i32 0, ptr %201, align 8, !tbaa !34
  %i.dlf = getelementptr inbounds nuw i8, ptr %201, i64 8
  store ptr null, ptr %i.dlf, align 8, !tbaa !35
  %i.dlg = add i32 %i.dlc, 1                      ; 2 uses
  store i32 %i.dlg, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1228 = icmp eq i64 %i.dlb, %i.dla
  br i1 %.not.i1228, label %bb.ik, label %bb.ij, !prof !45

bb.ij:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit135
  %i.dlh = load ptr, ptr %199, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dli = getelementptr inbounds nuw [16 x i8], ptr %i.dlh, i64 %i.dlb ; 2 uses
  store i32 0, ptr %i.dli, align 8, !tbaa !34
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dli, i64 8
  store ptr null, ptr %i.dlj, align 8, !tbaa !35
  %i.dlk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dll = add i32 %i.dlk, 1
  store i32 %i.dll, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dlm = add i64 %i.dlb, 1                      ; 2 uses
  store i64 %i.dlm, ptr %i.diw, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit134

bb.ik:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.dln = load ptr, ptr %199, align 8, !tbaa !38
  %i.dlo = getelementptr inbounds nuw [16 x i8], ptr %i.dln, i64 %i.dla
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %199, ptr noundef %i.dlo, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %201)
          to label %.noexc1230 unwind label %bb.ql

.noexc1230:                                       ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %.pre2024 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2025 = load i64, ptr %i.diw, align 8, !tbaa !40
  %.pre2026 = load i64, ptr %i.dit, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit134

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit134: ; preds = %.noexc1230, %bb.ij
  %i.dlp = phi i64 [ %.pre2026, %.noexc1230 ], [ %i.dla, %bb.ij ] ; 2 uses
  %i.dlq = phi i64 [ %.pre2025, %.noexc1230 ], [ %i.dlm, %bb.ij ] ; 3 uses
  %i.dlr = phi i32 [ %.pre2024, %.noexc1230 ], [ %i.dlg, %bb.ij ]
  %i.dls = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dlt = add i32 %i.dls, 1
  store i32 %i.dlt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #23
  store i32 0, ptr %202, align 8, !tbaa !34
  %i.dlu = getelementptr inbounds nuw i8, ptr %202, i64 8
  store ptr null, ptr %i.dlu, align 8, !tbaa !35
  %i.dlv = add i32 %i.dlr, 1
  store i32 %i.dlv, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1232 = icmp eq i64 %i.dlq, %i.dlp
  br i1 %.not.i1232, label %bb.im, label %bb.il, !prof !45

bb.il:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit134
  %i.dlw = load ptr, ptr %199, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dlx = getelementptr inbounds nuw [16 x i8], ptr %i.dlw, i64 %i.dlq ; 2 uses
  store i32 0, ptr %i.dlx, align 8, !tbaa !34
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 8
  store ptr null, ptr %i.dly, align 8, !tbaa !35
  %i.dlz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dma = add i32 %i.dlz, 1
  store i32 %i.dma, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dmb = add i64 %i.dlq, 1
  store i64 %i.dmb, ptr %i.diw, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit133

bb.im:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.dmc = load ptr, ptr %199, align 8, !tbaa !38
  %i.dmd = getelementptr inbounds nuw [16 x i8], ptr %i.dmc, i64 %i.dlp
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %199, ptr noundef %i.dmd, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %202)
          to label %.noexc1234 unwind label %bb.qm

.noexc1234:                                       ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit133

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit133: ; preds = %.noexc1234, %bb.il
  %i.dme = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dmf = add i32 %i.dme, 1
  store i32 %i.dmf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #23
  %i.dmg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1237 unwind label %bb.qj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1237: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #23
  store i32 0, ptr %203, align 8, !tbaa !34
  %i.dmh = getelementptr inbounds nuw i8, ptr %203, i64 8
  store ptr null, ptr %i.dmh, align 8, !tbaa !35
  store i32 1, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.dmi = load i64, ptr %i.diw, align 8, !tbaa !40 ; 4 uses
  %i.dmj = load i64, ptr %i.dit, align 8, !tbaa !42
  %.not.i1238 = icmp eq i64 %i.dmi, %i.dmj
  br i1 %.not.i1238, label %bb.io, label %bb.in, !prof !45

bb.in:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1237
  %i.dmk = load ptr, ptr %199, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dml = getelementptr inbounds nuw [16 x i8], ptr %i.dmk, i64 %i.dmi ; 2 uses
  store i32 0, ptr %i.dml, align 8, !tbaa !34
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 8
  store ptr null, ptr %i.dmm, align 8, !tbaa !35
  %i.dmn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dmo = add i32 %i.dmn, 1
  store i32 %i.dmo, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dmp = add i64 %i.dmi, 1
  store i64 %i.dmp, ptr %i.diw, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1241

bb.io:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1237
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.dmq = load ptr, ptr %199, align 8, !tbaa !38
  %i.dmr = getelementptr inbounds nuw [16 x i8], ptr %i.dmq, i64 %i.dmi
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %199, ptr noundef %i.dmr, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %203)
          to label %.noexc1240 unwind label %bb.qn

.noexc1240:                                       ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1241

_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1241: ; preds = %.noexc1240, %bb.in
  %i.dms = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dmt = add i32 %i.dms, 1
  store i32 %i.dmt, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #23
  %i.dmu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.ip unwind label %bb.qj     ; 0 uses

bb.ip:                                            ; preds = %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1241
  %i.dmv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1243 unwind label %bb.qj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1243: ; preds = %bb.ip
  %i.dmw = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.64.0.copyload1645 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1668 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.dmx = load i64, ptr %i.diw, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i1244 = icmp eq i64 %i.dmx, 0
  br i1 %.not3.i.i1244, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1247, label %.lr.ph.preheader.i.i1245

.lr.ph.preheader.i.i1245:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1243
  %.sroa.28.0.copyload1576 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %i.dmy = trunc i64 %i.dmx to i32
  %i.dmz = add i32 %.sroa.28.0.copyload1576, %i.dmy
  store i32 %i.dmz, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1247

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1247: ; preds = %.lr.ph.preheader.i.i1245, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1243
  %i.dna = load i64, ptr %i.dit, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1248 = icmp eq i64 %i.dna, 0
  br i1 %.not.i.i1248, label %_ZN5boost9container6vectorI1XvvED2Ev.exit1249, label %bb.iq

bb.iq:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1247
  %i.dnb = load ptr, ptr %199, align 8, !tbaa !47
  %i.dnc = shl i64 %i.dna, 4
  call void @_ZdlPvm(ptr noundef %i.dnb, i64 noundef %i.dnc) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit1249

_ZN5boost9container6vectorI1XvvED2Ev.exit1249:    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1247, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.dnd = icmp eq <4 x i32> %i.dim, %i.dmw
  %i.dne = icmp eq i32 %.sroa.641779.0.copyload1788, %.sroa.64.0.copyload1645
  %i.dnf = icmp eq i32 %.sroa.761803.0.copyload1812, %.sroa.76.0.copyload1668
  %i.dng = freeze <4 x i1> %i.dnd
  %i.dnh = bitcast <4 x i1> %i.dng to i4
  %i.dni = icmp eq i4 %i.dnh, -1
  %op.rdx2411 = select i1 %i.dni, i1 %i.dne, i1 false
  %op.rdx2412 = select i1 %op.rdx2411, i1 %i.dnf, i1 false
  %i.dnj = zext i1 %op.rdx2412 to i8
  store i8 %i.dnj, ptr %i.q, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  store i8 1, ptr %i.r, align 1, !tbaa !49
  %i.dnk = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.r) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %204, i8 0, i64 24, i1 false)
  %i.dnl = getelementptr inbounds nuw i8, ptr %204, i64 16 ; 6 uses
  %i.dnm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc1266 unwind label %bb.qp ; 5 uses

.noexc1266:                                       ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit1249
  %i.dnn = load ptr, ptr %204, align 8, !tbaa !38 ; 6 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %204, i64 8 ; 11 uses
  %i.dnp = load i64, ptr %i.dno, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i1251 = shl i64 %i.dnp, 4               ; 3 uses
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.dnn, i64 %.idx.i.i1251
  %.not16.i.i.i.i.i1252 = icmp eq i64 %i.dnp, 0
  br i1 %.not16.i.i.i.i.i1252, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1264, label %.lr.ph.i.i.i.i.i1253

.lr.ph.i.i.i.i.i1253:                             ; preds = %.noexc1266
  %.promoted.i.i.i.i.i1254 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dnr = add i64 %.idx.i.i1251, -16             ; 2 uses
  %i.dns = lshr exact i64 %i.dnr, 4
  %i.dnt = add nuw nsw i64 %i.dns, 1
  %xtraiter2592 = and i64 %i.dnt, 3               ; 2 uses
  %lcmp.mod2593.not = icmp eq i64 %xtraiter2592, 0
  br i1 %lcmp.mod2593.not, label %.prol.loopexit2591, label %.prol.preheader2590

.prol.preheader2590:                              ; preds = %.lr.ph.i.i.i.i.i1253, %.prol.preheader2590
  %.018.i.i.i.i.i1255.prol = phi ptr [ %i.dny, %.prol.preheader2590 ], [ %i.dnn, %.lr.ph.i.i.i.i.i1253 ] ; 3 uses
  %.01517.i.i.i.i.i1256.prol = phi ptr [ %i.dnz, %.prol.preheader2590 ], [ %i.dnm, %.lr.ph.i.i.i.i.i1253 ] ; 3 uses
  %prol.iter2594 = phi i64 [ %prol.iter2594.next, %.prol.preheader2590 ], [ 0, %.lr.ph.i.i.i.i.i1253 ]
  %i.dnu = load i32, ptr %.018.i.i.i.i.i1255.prol, align 8, !tbaa !34
  store i32 %i.dnu, ptr %.01517.i.i.i.i.i1256.prol, align 8, !tbaa !34
  %i.dnv = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256.prol, i64 8
  %i.dnw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255.prol, i64 8
  %i.dnx = load ptr, ptr %i.dnw, align 8, !tbaa !35
  store ptr %i.dnx, ptr %i.dnv, align 8, !tbaa !35
  %i.dny = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255.prol, i64 16 ; 2 uses
  %i.dnz = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256.prol, i64 16 ; 2 uses
  %prol.iter2594.next = add i64 %prol.iter2594, 1 ; 2 uses
  %prol.iter2594.cmp.not = icmp eq i64 %prol.iter2594.next, %xtraiter2592
  br i1 %prol.iter2594.cmp.not, label %.prol.loopexit2591, label %.prol.preheader2590, !llvm.loop !197

.prol.loopexit2591:                               ; preds = %.prol.preheader2590, %.lr.ph.i.i.i.i.i1253
  %.018.i.i.i.i.i1255.unr = phi ptr [ %i.dnn, %.lr.ph.i.i.i.i.i1253 ], [ %i.dny, %.prol.preheader2590 ]
  %.01517.i.i.i.i.i1256.unr = phi ptr [ %i.dnm, %.lr.ph.i.i.i.i.i1253 ], [ %i.dnz, %.prol.preheader2590 ]
  %i.doa = icmp ult i64 %i.dnr, 48
  br i1 %i.doa, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1258, label %.lr.ph.i.i.i.i.i1253.new

.lr.ph.i.i.i.i.i1253.new:                         ; preds = %.prol.loopexit2591, %.lr.ph.i.i.i.i.i1253.new
  %.018.i.i.i.i.i1255 = phi ptr [ %i.dox, %.lr.ph.i.i.i.i.i1253.new ], [ %.018.i.i.i.i.i1255.unr, %.prol.loopexit2591 ] ; 9 uses
  %.01517.i.i.i.i.i1256 = phi ptr [ %i.doy, %.lr.ph.i.i.i.i.i1253.new ], [ %.01517.i.i.i.i.i1256.unr, %.prol.loopexit2591 ] ; 9 uses
  %i.dob = load i32, ptr %.018.i.i.i.i.i1255, align 8, !tbaa !34
  store i32 %i.dob, ptr %.01517.i.i.i.i.i1256, align 8, !tbaa !34
  %i.doc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 8
  %i.dod = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 8
  %i.doe = load ptr, ptr %i.dod, align 8, !tbaa !35
  store ptr %i.doe, ptr %i.doc, align 8, !tbaa !35
  %i.dof = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 16
  %i.dog = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 16
  %i.doh = load i32, ptr %i.dof, align 8, !tbaa !34
  store i32 %i.doh, ptr %i.dog, align 8, !tbaa !34
  %i.doi = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 24
  %i.doj = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 24
  %i.dok = load ptr, ptr %i.doj, align 8, !tbaa !35
  store ptr %i.dok, ptr %i.doi, align 8, !tbaa !35
  %i.dol = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 32
  %i.dom = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 32
  %i.don = load i32, ptr %i.dol, align 8, !tbaa !34
  store i32 %i.don, ptr %i.dom, align 8, !tbaa !34
  %i.doo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 40
  %i.dop = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 40
  %i.doq = load ptr, ptr %i.dop, align 8, !tbaa !35
  store ptr %i.doq, ptr %i.doo, align 8, !tbaa !35
  %i.dor = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 48
  %i.dos = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 48
  %i.dot = load i32, ptr %i.dor, align 8, !tbaa !34
  store i32 %i.dot, ptr %i.dos, align 8, !tbaa !34
  %i.dou = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 56
  %i.dov = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 56
  %i.dow = load ptr, ptr %i.dov, align 8, !tbaa !35
  store ptr %i.dow, ptr %i.dou, align 8, !tbaa !35
  %i.dox = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1255, i64 64 ; 2 uses
  %i.doy = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1256, i64 64
  %.not.i.i.i.i.i1257.3 = icmp eq ptr %i.dox, %i.dnq
  br i1 %.not.i.i.i.i.i1257.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1258, label %.lr.ph.i.i.i.i.i1253.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1264: ; preds = %.noexc1266
  %.not.i.i.i1265 = icmp eq ptr %i.dnn, null
  br i1 %.not.i.i.i1265, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1263, label %bb.ir

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1258: ; preds = %.lr.ph.i.i.i.i.i1253.new, %.prol.loopexit2591
  %i.doz = add i64 %.idx.i.i1251, 68719476720
  %i.dpa = lshr exact i64 %i.doz, 4
  %i.dpb = trunc i64 %i.dpa to i32
  %i.dpc = add i32 %i.dpb, 1
  %i.dpd = add i32 %i.dpc, %.promoted.i.i.i.i.i1254
  store i32 %i.dpd, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i1259 = icmp eq ptr %i.dnn, null
  br i1 %.not.i5.i.i1259, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1263, label %.lr.ph.preheader.i.i.i.i1260

.lr.ph.preheader.i.i.i.i1260:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1258
  %.promoted.i.i.i.i1261 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.dpe = trunc i64 %i.dnp to i32
  %i.dpf = add i32 %.promoted.i.i.i.i1261, %i.dpe
  store i32 %i.dpf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.ir

bb.ir:                                            ; preds = %.lr.ph.preheader.i.i.i.i1260, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1264
  %i.dpg = load i64, ptr %i.dnl, align 8, !tbaa !42
  %i.dph = shl i64 %i.dpg, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.dnn, i64 noundef %i.dph) #23
  %.pre.i.i.i1262 = load i64, ptr %i.dno, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1263

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1263: ; preds = %bb.ir, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1258, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1264
  %i.dpi = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1264 ], [ %.pre.i.i.i1262, %bb.ir ], [ %i.dnp, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1258 ] ; 4 uses
  store ptr %i.dnm, ptr %204, align 8, !tbaa !38
  store i64 %i.dpi, ptr %i.dno, align 8, !tbaa !43
  store i64 3, ptr %i.dnl, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %205) #23
  store i32 0, ptr %205, align 8, !tbaa !34
  %i.dpj = getelementptr inbounds nuw i8, ptr %205, i64 8
  store ptr null, ptr %i.dpj, align 8, !tbaa !35
  %i.dpk = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.dpl = add i32 %i.dpk, 1                      ; 2 uses
  store i32 %i.dpl, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1268 = icmp eq i64 %i.dpi, 3
  br i1 %.not.i1268, label %bb.it, label %bb.is, !prof !45

bb.is:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1263
  %i.dpm = getelementptr inbounds nuw [16 x i8], ptr %i.dnm, i64 %i.dpi ; 2 uses
  store i32 0, ptr %i.dpm, align 8, !tbaa !34
  %i.dpn = getelementptr inbounds nuw i8, ptr %i.dpm, i64 8
  store ptr null, ptr %i.dpn, align 8, !tbaa !35
  %i.dpo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dpp = add i32 %i.dpo, 1
  store i32 %i.dpp, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dpq = add i64 %i.dpi, 1                      ; 2 uses
  store i64 %i.dpq, ptr %i.dno, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit132

bb.it:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1263
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dnm, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %204, ptr noundef nonnull %i.dpr, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %205)
          to label %.noexc1270 unwind label %bb.qq

.noexc1270:                                       ; preds = %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %.pre2027 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2028 = load i64, ptr %i.dno, align 8, !tbaa !40
  %.pre2029 = load i64, ptr %i.dnl, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit132

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit132: ; preds = %.noexc1270, %bb.is
  %i.dps = phi i64 [ %.pre2029, %.noexc1270 ], [ 3, %bb.is ] ; 3 uses
  %i.dpt = phi i64 [ %.pre2028, %.noexc1270 ], [ %i.dpq, %bb.is ] ; 3 uses
  %i.dpu = phi i32 [ %.pre2027, %.noexc1270 ], [ %i.dpl, %bb.is ]
  %i.dpv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dpw = add i32 %i.dpv, 1
  store i32 %i.dpw, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %206) #23
  store i32 0, ptr %206, align 8, !tbaa !34
  %i.dpx = getelementptr inbounds nuw i8, ptr %206, i64 8
  store ptr null, ptr %i.dpx, align 8, !tbaa !35
  %i.dpy = add i32 %i.dpu, 1                      ; 2 uses
  store i32 %i.dpy, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1272 = icmp eq i64 %i.dpt, %i.dps
  br i1 %.not.i1272, label %bb.iv, label %bb.iu, !prof !45

bb.iu:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit132
  %i.dpz = load ptr, ptr %204, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dqa = getelementptr inbounds nuw [16 x i8], ptr %i.dpz, i64 %i.dpt ; 2 uses
  store i32 0, ptr %i.dqa, align 8, !tbaa !34
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 8
  store ptr null, ptr %i.dqb, align 8, !tbaa !35
  %i.dqc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dqd = add i32 %i.dqc, 1
  store i32 %i.dqd, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dqe = add i64 %i.dpt, 1                      ; 2 uses
  store i64 %i.dqe, ptr %i.dno, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit131

bb.iv:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.dqf = load ptr, ptr %204, align 8, !tbaa !38
  %i.dqg = getelementptr inbounds nuw [16 x i8], ptr %i.dqf, i64 %i.dps
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %204, ptr noundef %i.dqg, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %206)
          to label %.noexc1274 unwind label %bb.qr

.noexc1274:                                       ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %.pre2030 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_8
begin_hunk_9_@main:bb.a
  %i.dub = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.duc = add i32 %i.dub, 1
  store i32 %i.duc, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dud = add i64 %i.dtv, 1                      ; 2 uses
  store i64 %i.dud, ptr %i.dsb, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit129

bb.je:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1306
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.due = getelementptr inbounds nuw i8, ptr %i.drz, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %209, ptr noundef nonnull %i.due, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %210)
          to label %.noexc1313 unwind label %bb.qw

.noexc1313:                                       ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %.pre2034 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2035 = load i64, ptr %i.dsb, align 8, !tbaa !40
  %.pre2036 = load i64, ptr %i.dry, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit129

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit129: ; preds = %.noexc1313, %bb.jd
  %i.duf = phi i64 [ %.pre2036, %.noexc1313 ], [ 3, %bb.jd ] ; 3 uses
  %i.dug = phi i64 [ %.pre2035, %.noexc1313 ], [ %i.dud, %bb.jd ] ; 3 uses
  %i.duh = phi i32 [ %.pre2034, %.noexc1313 ], [ %i.dty, %bb.jd ]
  %i.dui = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.duj = add i32 %i.dui, 1
  store i32 %i.duj, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #23
  store i32 0, ptr %211, align 8, !tbaa !34
  %i.duk = getelementptr inbounds nuw i8, ptr %211, i64 8
  store ptr null, ptr %i.duk, align 8, !tbaa !35
  %i.dul = add i32 %i.duh, 1                      ; 2 uses
  store i32 %i.dul, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1315 = icmp eq i64 %i.dug, %i.duf
  br i1 %.not.i1315, label %bb.jg, label %bb.jf, !prof !45

bb.jf:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit129
  %i.dum = load ptr, ptr %209, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dun = getelementptr inbounds nuw [16 x i8], ptr %i.dum, i64 %i.dug ; 2 uses
  store i32 0, ptr %i.dun, align 8, !tbaa !34
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dun, i64 8
  store ptr null, ptr %i.duo, align 8, !tbaa !35
  %i.dup = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.duq = add i32 %i.dup, 1
  store i32 %i.duq, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dur = add i64 %i.dug, 1                      ; 2 uses
  store i64 %i.dur, ptr %i.dsb, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit128

bb.jg:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.dus = load ptr, ptr %209, align 8, !tbaa !38
  %i.dut = getelementptr inbounds nuw [16 x i8], ptr %i.dus, i64 %i.duf
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %209, ptr noundef %i.dut, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %211)
          to label %.noexc1317 unwind label %bb.qx

.noexc1317:                                       ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.pre2037 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2038 = load i64, ptr %i.dsb, align 8, !tbaa !40
  %.pre2039 = load i64, ptr %i.dry, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit128

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit128: ; preds = %.noexc1317, %bb.jf
  %i.duu = phi i64 [ %.pre2039, %.noexc1317 ], [ %i.duf, %bb.jf ] ; 2 uses
  %i.duv = phi i64 [ %.pre2038, %.noexc1317 ], [ %i.dur, %bb.jf ] ; 3 uses
  %i.duw = phi i32 [ %.pre2037, %.noexc1317 ], [ %i.dul, %bb.jf ]
  %i.dux = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.duy = add i32 %i.dux, 1
  store i32 %i.duy, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #23
  store i32 0, ptr %212, align 8, !tbaa !34
  %i.duz = getelementptr inbounds nuw i8, ptr %212, i64 8
  store ptr null, ptr %i.duz, align 8, !tbaa !35
  %i.dva = add i32 %i.duw, 1                      ; 2 uses
  store i32 %i.dva, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1319 = icmp eq i64 %i.duv, %i.duu
  br i1 %.not.i1319, label %bb.ji, label %bb.jh, !prof !45

bb.jh:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit128
  %i.dvb = load ptr, ptr %209, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dvc = getelementptr inbounds nuw [16 x i8], ptr %i.dvb, i64 %i.duv ; 2 uses
  store i32 0, ptr %i.dvc, align 8, !tbaa !34
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dvc, i64 8
  store ptr null, ptr %i.dvd, align 8, !tbaa !35
  %i.dve = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dvf = add i32 %i.dve, 1
  store i32 %i.dvf, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dvg = add i64 %i.duv, 1
  store i64 %i.dvg, ptr %i.dsb, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit127

bb.ji:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dvh = load ptr, ptr %209, align 8, !tbaa !38
  %i.dvi = getelementptr inbounds nuw [16 x i8], ptr %i.dvh, i64 %i.duu
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %209, ptr noundef %i.dvi, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %212)
          to label %.noexc1321 unwind label %bb.qy

.noexc1321:                                       ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.pre2040 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit127

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit127: ; preds = %.noexc1321, %bb.jh
  %i.dvj = phi i32 [ %.pre2040, %.noexc1321 ], [ %i.dva, %bb.jh ]
  %i.dvk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dvl = add i32 %i.dvk, 1
  store i32 %i.dvl, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #23
  store i32 0, ptr %213, align 8, !tbaa !34
  %i.dvm = getelementptr inbounds nuw i8, ptr %213, i64 8 ; 2 uses
  store ptr null, ptr %i.dvm, align 8, !tbaa !35
  %i.dvn = add i32 %i.dvj, 1
  store i32 %i.dvn, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.dvo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1324 unwind label %bb.qz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1324: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.dvp = load i64, ptr %i.dsb, align 8, !tbaa !40 ; 4 uses
  %i.dvq = load i64, ptr %i.dry, align 8, !tbaa !42
  %.not.i1325 = icmp eq i64 %i.dvp, %i.dvq
  br i1 %.not.i1325, label %bb.jk, label %bb.jj, !prof !45

bb.jj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1324
  %i.dvr = load ptr, ptr %209, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dvs = getelementptr inbounds nuw [16 x i8], ptr %i.dvr, i64 %i.dvp ; 2 uses
  %i.dvt = load i32, ptr %213, align 8, !tbaa !34
  store i32 %i.dvt, ptr %i.dvs, align 8, !tbaa !34
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvs, i64 8
  %i.dvv = load ptr, ptr %i.dvm, align 8, !tbaa !35
  store ptr %i.dvv, ptr %i.dvu, align 8, !tbaa !35
  %i.dvw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27
  %i.dvx = add i32 %i.dvw, 1
  store i32 %i.dvx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 8), align 8, !tbaa !27
  %i.dvy = add i64 %i.dvp, 1
  store i64 %i.dvy, ptr %i.dsb, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit1328

bb.jk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1324
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.dvz = load ptr, ptr %209, align 8, !tbaa !38
  %i.dwa = getelementptr inbounds nuw [16 x i8], ptr %i.dvz, i64 %i.dvp
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %209, ptr noundef %i.dwa, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %213)
          to label %.noexc1327 unwind label %bb.qz

.noexc1327:                                       ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit1328

_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit1328: ; preds = %.noexc1327, %bb.jj
  %i.dwb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.jl unwind label %bb.qz     ; 0 uses

bb.jl:                                            ; preds = %_ZN5boost9container6vectorI1XvvE12emplace_backIJRS2_EEES5_DpOT_.exit1328
  %i.dwc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1330 unwind label %bb.qz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1330: ; preds = %bb.jl
  %i.dwd = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1577 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1646 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1669 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.dwe = add i32 %.sroa.28.0.copyload1577, 1    ; 2 uses
  store i32 %i.dwe, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #23
  %i.dwf = load i64, ptr %i.dsb, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i1331 = icmp eq i64 %i.dwf, 0
  br i1 %.not3.i.i1331, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1334, label %.lr.ph.preheader.i.i1332

.lr.ph.preheader.i.i1332:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1330
  %i.dwg = trunc i64 %i.dwf to i32
  %i.dwh = add i32 %i.dwe, %i.dwg
  store i32 %i.dwh, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1334

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1334: ; preds = %.lr.ph.preheader.i.i1332, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1330
  %i.dwi = load i64, ptr %i.dry, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1335 = icmp eq i64 %i.dwi, 0
  br i1 %.not.i.i1335, label %_ZN5boost9container6vectorI1XvvED2Ev.exit1336, label %bb.jm

bb.jm:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1334
  %i.dwj = load ptr, ptr %209, align 8, !tbaa !47
  %i.dwk = shl i64 %i.dwi, 4
  call void @_ZdlPvm(ptr noundef %i.dwj, i64 noundef %i.dwk) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit1336

_ZN5boost9container6vectorI1XvvED2Ev.exit1336:    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1334, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #23
  %i.dwl = icmp eq <4 x i32> %i.drq, %i.dwd
  %i.dwm = icmp eq i32 %.sroa.641779.0.copyload1789, %.sroa.64.0.copyload1646
  %i.dwn = icmp eq i32 %.sroa.761803.0.copyload1813, %.sroa.76.0.copyload1669
  %i.dwo = freeze <4 x i1> %i.dwl
  %i.dwp = bitcast <4 x i1> %i.dwo to i4
  %i.dwq = icmp eq i4 %i.dwp, -1
  %op.rdx2409 = select i1 %i.dwq, i1 %i.dwm, i1 false
  %op.rdx2410 = select i1 %op.rdx2409, i1 %i.dwn, i1 false
  %i.dwr = zext i1 %op.rdx2410 to i8
  store i8 %i.dwr, ptr %i.s, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #23
  store i8 1, ptr %i.t, align 1, !tbaa !49
  %i.dws = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.t) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %214, i8 0, i64 24, i1 false)
  %i.dwt = getelementptr inbounds nuw i8, ptr %214, i64 16 ; 6 uses
  %i.dwu = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc1353 unwind label %bb.rb ; 5 uses

.noexc1353:                                       ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit1336
  %i.dwv = load ptr, ptr %214, align 8, !tbaa !38 ; 6 uses
  %i.dww = getelementptr inbounds nuw i8, ptr %214, i64 8 ; 11 uses
  %i.dwx = load i64, ptr %i.dww, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i1338 = shl i64 %i.dwx, 4               ; 3 uses
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dwv, i64 %.idx.i.i1338
  %.not16.i.i.i.i.i1339 = icmp eq i64 %i.dwx, 0
  br i1 %.not16.i.i.i.i.i1339, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1351, label %.lr.ph.i.i.i.i.i1340

.lr.ph.i.i.i.i.i1340:                             ; preds = %.noexc1353
  %.promoted.i.i.i.i.i1341 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dwz = add i64 %.idx.i.i1338, -16             ; 2 uses
  %i.dxa = lshr exact i64 %i.dwz, 4
  %i.dxb = add nuw nsw i64 %i.dxa, 1
  %xtraiter2602 = and i64 %i.dxb, 3               ; 2 uses
  %lcmp.mod2603.not = icmp eq i64 %xtraiter2602, 0
  br i1 %lcmp.mod2603.not, label %.prol.loopexit2601, label %.prol.preheader2600

.prol.preheader2600:                              ; preds = %.lr.ph.i.i.i.i.i1340, %.prol.preheader2600
  %.018.i.i.i.i.i1342.prol = phi ptr [ %i.dxg, %.prol.preheader2600 ], [ %i.dwv, %.lr.ph.i.i.i.i.i1340 ] ; 3 uses
  %.01517.i.i.i.i.i1343.prol = phi ptr [ %i.dxh, %.prol.preheader2600 ], [ %i.dwu, %.lr.ph.i.i.i.i.i1340 ] ; 3 uses
  %prol.iter2604 = phi i64 [ %prol.iter2604.next, %.prol.preheader2600 ], [ 0, %.lr.ph.i.i.i.i.i1340 ]
  %i.dxc = load i32, ptr %.018.i.i.i.i.i1342.prol, align 8, !tbaa !34
  store i32 %i.dxc, ptr %.01517.i.i.i.i.i1343.prol, align 8, !tbaa !34
  %i.dxd = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343.prol, i64 8
  %i.dxe = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342.prol, i64 8
  %i.dxf = load ptr, ptr %i.dxe, align 8, !tbaa !35
  store ptr %i.dxf, ptr %i.dxd, align 8, !tbaa !35
  %i.dxg = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342.prol, i64 16 ; 2 uses
  %i.dxh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343.prol, i64 16 ; 2 uses
  %prol.iter2604.next = add i64 %prol.iter2604, 1 ; 2 uses
  %prol.iter2604.cmp.not = icmp eq i64 %prol.iter2604.next, %xtraiter2602
  br i1 %prol.iter2604.cmp.not, label %.prol.loopexit2601, label %.prol.preheader2600, !llvm.loop !199

.prol.loopexit2601:                               ; preds = %.prol.preheader2600, %.lr.ph.i.i.i.i.i1340
  %.018.i.i.i.i.i1342.unr = phi ptr [ %i.dwv, %.lr.ph.i.i.i.i.i1340 ], [ %i.dxg, %.prol.preheader2600 ]
  %.01517.i.i.i.i.i1343.unr = phi ptr [ %i.dwu, %.lr.ph.i.i.i.i.i1340 ], [ %i.dxh, %.prol.preheader2600 ]
  %i.dxi = icmp ult i64 %i.dwz, 48
  br i1 %i.dxi, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1345, label %.lr.ph.i.i.i.i.i1340.new

.lr.ph.i.i.i.i.i1340.new:                         ; preds = %.prol.loopexit2601, %.lr.ph.i.i.i.i.i1340.new
  %.018.i.i.i.i.i1342 = phi ptr [ %i.dyf, %.lr.ph.i.i.i.i.i1340.new ], [ %.018.i.i.i.i.i1342.unr, %.prol.loopexit2601 ] ; 9 uses
  %.01517.i.i.i.i.i1343 = phi ptr [ %i.dyg, %.lr.ph.i.i.i.i.i1340.new ], [ %.01517.i.i.i.i.i1343.unr, %.prol.loopexit2601 ] ; 9 uses
  %i.dxj = load i32, ptr %.018.i.i.i.i.i1342, align 8, !tbaa !34
  store i32 %i.dxj, ptr %.01517.i.i.i.i.i1343, align 8, !tbaa !34
  %i.dxk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 8
  %i.dxl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 8
  %i.dxm = load ptr, ptr %i.dxl, align 8, !tbaa !35
  store ptr %i.dxm, ptr %i.dxk, align 8, !tbaa !35
  %i.dxn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 16
  %i.dxo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 16
  %i.dxp = load i32, ptr %i.dxn, align 8, !tbaa !34
  store i32 %i.dxp, ptr %i.dxo, align 8, !tbaa !34
  %i.dxq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 24
  %i.dxr = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 24
  %i.dxs = load ptr, ptr %i.dxr, align 8, !tbaa !35
  store ptr %i.dxs, ptr %i.dxq, align 8, !tbaa !35
  %i.dxt = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 32
  %i.dxu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 32
  %i.dxv = load i32, ptr %i.dxt, align 8, !tbaa !34
  store i32 %i.dxv, ptr %i.dxu, align 8, !tbaa !34
  %i.dxw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 40
  %i.dxx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 40
  %i.dxy = load ptr, ptr %i.dxx, align 8, !tbaa !35
  store ptr %i.dxy, ptr %i.dxw, align 8, !tbaa !35
  %i.dxz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 48
  %i.dya = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 48
  %i.dyb = load i32, ptr %i.dxz, align 8, !tbaa !34
  store i32 %i.dyb, ptr %i.dya, align 8, !tbaa !34
  %i.dyc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 56
  %i.dyd = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 56
  %i.dye = load ptr, ptr %i.dyd, align 8, !tbaa !35
  store ptr %i.dye, ptr %i.dyc, align 8, !tbaa !35
  %i.dyf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1342, i64 64 ; 2 uses
  %i.dyg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1343, i64 64
  %.not.i.i.i.i.i1344.3 = icmp eq ptr %i.dyf, %i.dwy
  br i1 %.not.i.i.i.i.i1344.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1345, label %.lr.ph.i.i.i.i.i1340.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1351: ; preds = %.noexc1353
  %.not.i.i.i1352 = icmp eq ptr %i.dwv, null
  br i1 %.not.i.i.i1352, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1350, label %bb.jn

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1345: ; preds = %.lr.ph.i.i.i.i.i1340.new, %.prol.loopexit2601
  %i.dyh = add i64 %.idx.i.i1338, 68719476720
  %i.dyi = lshr exact i64 %i.dyh, 4
  %i.dyj = trunc i64 %i.dyi to i32
  %i.dyk = add i32 %i.dyj, 1
  %i.dyl = add i32 %i.dyk, %.promoted.i.i.i.i.i1341
  store i32 %i.dyl, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i1346 = icmp eq ptr %i.dwv, null
  br i1 %.not.i5.i.i1346, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1350, label %.lr.ph.preheader.i.i.i.i1347

.lr.ph.preheader.i.i.i.i1347:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1345
  %.promoted.i.i.i.i1348 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.dym = trunc i64 %i.dwx to i32
  %i.dyn = add i32 %.promoted.i.i.i.i1348, %i.dym
  store i32 %i.dyn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.jn

bb.jn:                                            ; preds = %.lr.ph.preheader.i.i.i.i1347, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1351
  %i.dyo = load i64, ptr %i.dwt, align 8, !tbaa !42
  %i.dyp = shl i64 %i.dyo, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.dwv, i64 noundef %i.dyp) #23
  %.pre.i.i.i1349 = load i64, ptr %i.dww, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1350

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1350: ; preds = %bb.jn, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1345, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1351
  %i.dyq = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1351 ], [ %.pre.i.i.i1349, %bb.jn ], [ %i.dwx, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1345 ] ; 4 uses
  store ptr %i.dwu, ptr %214, align 8, !tbaa !38
  store i64 %i.dyq, ptr %i.dww, align 8, !tbaa !43
  store i64 3, ptr %i.dwt, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #23
  store i32 0, ptr %215, align 8, !tbaa !34
  %i.dyr = getelementptr inbounds nuw i8, ptr %215, i64 8
  store ptr null, ptr %i.dyr, align 8, !tbaa !35
  %i.dys = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.dyt = add i32 %i.dys, 1                      ; 2 uses
  store i32 %i.dyt, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1355 = icmp eq i64 %i.dyq, 3
  br i1 %.not.i1355, label %bb.jp, label %bb.jo, !prof !45

bb.jo:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1350
  %i.dyu = getelementptr inbounds nuw [16 x i8], ptr %i.dwu, i64 %i.dyq ; 2 uses
  store i32 0, ptr %i.dyu, align 8, !tbaa !34
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 8
  store ptr null, ptr %i.dyv, align 8, !tbaa !35
  %i.dyw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dyx = add i32 %i.dyw, 1
  store i32 %i.dyx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dyy = add i64 %i.dyq, 1                      ; 2 uses
  store i64 %i.dyy, ptr %i.dww, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit126

bb.jp:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1350
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dwu, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %214, ptr noundef nonnull %i.dyz, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %215)
          to label %.noexc1357 unwind label %bb.rc

.noexc1357:                                       ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pre2041 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2042 = load i64, ptr %i.dww, align 8, !tbaa !40
  %.pre2043 = load i64, ptr %i.dwt, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit126

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit126: ; preds = %.noexc1357, %bb.jo
  %i.dza = phi i64 [ %.pre2043, %.noexc1357 ], [ 3, %bb.jo ] ; 3 uses
  %i.dzb = phi i64 [ %.pre2042, %.noexc1357 ], [ %i.dyy, %bb.jo ] ; 3 uses
  %i.dzc = phi i32 [ %.pre2041, %.noexc1357 ], [ %i.dyt, %bb.jo ]
  %i.dzd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.dze = add i32 %i.dzd, 1
  store i32 %i.dze, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #23
  store i32 0, ptr %216, align 8, !tbaa !34
  %i.dzf = getelementptr inbounds nuw i8, ptr %216, i64 8
  store ptr null, ptr %i.dzf, align 8, !tbaa !35
  %i.dzg = add i32 %i.dzc, 1                      ; 2 uses
  store i32 %i.dzg, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1359 = icmp eq i64 %i.dzb, %i.dza
  br i1 %.not.i1359, label %bb.jr, label %bb.jq, !prof !45

bb.jq:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit126
  %i.dzh = load ptr, ptr %214, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.dzi = getelementptr inbounds nuw [16 x i8], ptr %i.dzh, i64 %i.dzb ; 2 uses
  store i32 0, ptr %i.dzi, align 8, !tbaa !34
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dzi, i64 8
  store ptr null, ptr %i.dzj, align 8, !tbaa !35
  %i.dzk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dzl = add i32 %i.dzk, 1
  store i32 %i.dzl, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.dzm = add i64 %i.dzb, 1                      ; 2 uses
  store i64 %i.dzm, ptr %i.dww, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit125

bb.jr:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dzn = load ptr, ptr %214, align 8, !tbaa !38
  %i.dzo = getelementptr inbounds nuw [16 x i8], ptr %i.dzn, i64 %i.dza
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %214, ptr noundef %i.dzo, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %216)
          to label %.noexc1361 unwind label %bb.rd

.noexc1361:                                       ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.pre2044 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_9
begin_hunk_10_@main:bb.a
  %i.edj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.edk = add i32 %i.edj, 1
  store i32 %i.edk, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.edl = add i64 %i.edd, 1                      ; 2 uses
  store i64 %i.edl, ptr %i.ebj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit122

bb.ka:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1393
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.edm = getelementptr inbounds nuw i8, ptr %i.ebh, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %219, ptr noundef nonnull %i.edm, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %220)
          to label %.noexc1400 unwind label %bb.ri

.noexc1400:                                       ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.pre2048 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2049 = load i64, ptr %i.ebj, align 8, !tbaa !40
  %.pre2050 = load i64, ptr %i.ebg, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit122

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit122: ; preds = %.noexc1400, %bb.jz
  %i.edn = phi i64 [ %.pre2050, %.noexc1400 ], [ 3, %bb.jz ] ; 3 uses
  %i.edo = phi i64 [ %.pre2049, %.noexc1400 ], [ %i.edl, %bb.jz ] ; 3 uses
  %i.edp = phi i32 [ %.pre2048, %.noexc1400 ], [ %i.edg, %bb.jz ]
  %i.edq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.edr = add i32 %i.edq, 1
  store i32 %i.edr, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #23
  store i32 0, ptr %221, align 8, !tbaa !34
  %i.eds = getelementptr inbounds nuw i8, ptr %221, i64 8
  store ptr null, ptr %i.eds, align 8, !tbaa !35
  %i.edt = add i32 %i.edp, 1                      ; 2 uses
  store i32 %i.edt, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1402 = icmp eq i64 %i.edo, %i.edn
  br i1 %.not.i1402, label %bb.kc, label %bb.kb, !prof !45

bb.kb:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit122
  %i.edu = load ptr, ptr %219, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.edv = getelementptr inbounds nuw [16 x i8], ptr %i.edu, i64 %i.edo ; 2 uses
  store i32 0, ptr %i.edv, align 8, !tbaa !34
  %i.edw = getelementptr inbounds nuw i8, ptr %i.edv, i64 8
  store ptr null, ptr %i.edw, align 8, !tbaa !35
  %i.edx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.edy = add i32 %i.edx, 1
  store i32 %i.edy, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.edz = add i64 %i.edo, 1                      ; 2 uses
  store i64 %i.edz, ptr %i.ebj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit121

bb.kc:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.eea = load ptr, ptr %219, align 8, !tbaa !38
  %i.eeb = getelementptr inbounds nuw [16 x i8], ptr %i.eea, i64 %i.edn
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %219, ptr noundef %i.eeb, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %221)
          to label %.noexc1404 unwind label %bb.rj

.noexc1404:                                       ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pre2051 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2052 = load i64, ptr %i.ebj, align 8, !tbaa !40
  %.pre2053 = load i64, ptr %i.ebg, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit121

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit121: ; preds = %.noexc1404, %bb.kb
  %i.eec = phi i64 [ %.pre2053, %.noexc1404 ], [ %i.edn, %bb.kb ] ; 2 uses
  %i.eed = phi i64 [ %.pre2052, %.noexc1404 ], [ %i.edz, %bb.kb ] ; 3 uses
  %i.eee = phi i32 [ %.pre2051, %.noexc1404 ], [ %i.edt, %bb.kb ]
  %i.eef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eeg = add i32 %i.eef, 1
  store i32 %i.eeg, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #23
  store i32 0, ptr %222, align 8, !tbaa !34
  %i.eeh = getelementptr inbounds nuw i8, ptr %222, i64 8
  store ptr null, ptr %i.eeh, align 8, !tbaa !35
  %i.eei = add i32 %i.eee, 1                      ; 2 uses
  store i32 %i.eei, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1406 = icmp eq i64 %i.eed, %i.eec
  br i1 %.not.i1406, label %bb.ke, label %bb.kd, !prof !45

bb.kd:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit121
  %i.eej = load ptr, ptr %219, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.eek = getelementptr inbounds nuw [16 x i8], ptr %i.eej, i64 %i.eed ; 2 uses
  store i32 0, ptr %i.eek, align 8, !tbaa !34
  %i.eel = getelementptr inbounds nuw i8, ptr %i.eek, i64 8
  store ptr null, ptr %i.eel, align 8, !tbaa !35
  %i.eem = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.een = add i32 %i.eem, 1
  store i32 %i.een, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eeo = add i64 %i.eed, 1
  store i64 %i.eeo, ptr %i.ebj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit120

bb.ke:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.eep = load ptr, ptr %219, align 8, !tbaa !38
  %i.eeq = getelementptr inbounds nuw [16 x i8], ptr %i.eep, i64 %i.eec
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %219, ptr noundef %i.eeq, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %222)
          to label %.noexc1408 unwind label %bb.rk

.noexc1408:                                       ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pre2054 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit120

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit120: ; preds = %.noexc1408, %bb.kd
  %i.eer = phi i32 [ %.pre2054, %.noexc1408 ], [ %i.eei, %bb.kd ]
  %i.ees = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eet = add i32 %i.ees, 1
  store i32 %i.eet, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #23
  store i32 0, ptr %223, align 8, !tbaa !34
  %i.eeu = getelementptr inbounds nuw i8, ptr %223, i64 8 ; 2 uses
  store ptr null, ptr %i.eeu, align 8, !tbaa !35
  %i.eev = add i32 %i.eer, 1
  store i32 %i.eev, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.eew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.33, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1411 unwind label %bb.rl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1411: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  %i.eex = load i64, ptr %i.ebj, align 8, !tbaa !40 ; 4 uses
  %i.eey = load i64, ptr %i.ebg, align 8, !tbaa !42
  %.not.i1412 = icmp eq i64 %i.eex, %i.eey
  br i1 %.not.i1412, label %bb.kg, label %bb.kf, !prof !45

bb.kf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1411
  %i.eez = load ptr, ptr %219, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.efa = getelementptr inbounds nuw [16 x i8], ptr %i.eez, i64 %i.eex ; 2 uses
  %i.efb = load i32, ptr %223, align 8, !tbaa !34
  store i32 %i.efb, ptr %i.efa, align 8, !tbaa !34
  %i.efc = getelementptr inbounds nuw i8, ptr %i.efa, i64 8
  %i.efd = load ptr, ptr %i.eeu, align 8, !tbaa !35
  store ptr %i.efd, ptr %i.efc, align 8, !tbaa !35
  %i.efe = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eff = add i32 %i.efe, 1
  store i32 %i.eff, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.efg = add i64 %i.eex, 1
  store i64 %i.efg, ptr %i.ebj, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1415

bb.kg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1411
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.efh = load ptr, ptr %219, align 8, !tbaa !38
  %i.efi = getelementptr inbounds nuw [16 x i8], ptr %i.efh, i64 %i.eex
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %219, ptr noundef %i.efi, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %223)
          to label %.noexc1414 unwind label %bb.rl

.noexc1414:                                       ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1415

_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1415: ; preds = %.noexc1414, %bb.kf
  %i.efj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.kh unwind label %bb.rl     ; 0 uses

bb.kh:                                            ; preds = %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1415
  %i.efk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1417 unwind label %bb.rl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1417: ; preds = %bb.kh
  %i.efl = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %.sroa.28.0.copyload1578 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %.sroa.64.0.copyload1647 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %.sroa.76.0.copyload1670 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 20), align 4, !tbaa !31
  %i.efm = add i32 %.sroa.28.0.copyload1578, 1    ; 2 uses
  store i32 %i.efm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #23
  %i.efn = load i64, ptr %i.ebj, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i1418 = icmp eq i64 %i.efn, 0
  br i1 %.not3.i.i1418, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1421, label %.lr.ph.preheader.i.i1419

.lr.ph.preheader.i.i1419:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1417
  %i.efo = trunc i64 %i.efn to i32
  %i.efp = add i32 %i.efm, %i.efo
  store i32 %i.efp, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1421

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1421: ; preds = %.lr.ph.preheader.i.i1419, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1417
  %i.efq = load i64, ptr %i.ebg, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1422 = icmp eq i64 %i.efq, 0
  br i1 %.not.i.i1422, label %_ZN5boost9container6vectorI1XvvED2Ev.exit1423, label %bb.ki

bb.ki:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1421
  %i.efr = load ptr, ptr %219, align 8, !tbaa !47
  %i.efs = shl i64 %i.efq, 4
  call void @_ZdlPvm(ptr noundef %i.efr, i64 noundef %i.efs) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit1423

_ZN5boost9container6vectorI1XvvED2Ev.exit1423:    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1421, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #23
  %i.eft = icmp eq <4 x i32> %i.eay, %i.efl
  %i.efu = icmp eq i32 %.sroa.641779.0.copyload1790, %.sroa.64.0.copyload1647
  %i.efv = icmp eq i32 %.sroa.761803.0.copyload1814, %.sroa.76.0.copyload1670
  %i.efw = freeze <4 x i1> %i.eft
  %i.efx = bitcast <4 x i1> %i.efw to i4
  %i.efy = icmp eq i4 %i.efx, -1
  %op.rdx2407 = select i1 %i.efy, i1 %i.efu, i1 false
  %op.rdx2408 = select i1 %op.rdx2407, i1 %i.efv, i1 false
  %i.efz = zext i1 %op.rdx2408 to i8
  store i8 %i.efz, ptr %i.u, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #23
  store i8 1, ptr %i.v, align 1, !tbaa !49
  %i.ega = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.v) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  %i.egb = getelementptr inbounds nuw i8, ptr %224, i64 16 ; 6 uses
  %i.egc = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc1440 unwind label %bb.rn ; 5 uses

.noexc1440:                                       ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit1423
  %i.egd = load ptr, ptr %224, align 8, !tbaa !38 ; 6 uses
  %i.ege = getelementptr inbounds nuw i8, ptr %224, i64 8 ; 11 uses
  %i.egf = load i64, ptr %i.ege, align 8, !tbaa !40 ; 4 uses
  %.idx.i.i1425 = shl i64 %i.egf, 4               ; 3 uses
  %i.egg = getelementptr inbounds nuw i8, ptr %i.egd, i64 %.idx.i.i1425
  %.not16.i.i.i.i.i1426 = icmp eq i64 %i.egf, 0
  br i1 %.not16.i.i.i.i.i1426, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1438, label %.lr.ph.i.i.i.i.i1427

.lr.ph.i.i.i.i.i1427:                             ; preds = %.noexc1440
  %.promoted.i.i.i.i.i1428 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.egh = add i64 %.idx.i.i1425, -16             ; 2 uses
  %i.egi = lshr exact i64 %i.egh, 4
  %i.egj = add nuw nsw i64 %i.egi, 1
  %xtraiter2612 = and i64 %i.egj, 3               ; 2 uses
  %lcmp.mod2613.not = icmp eq i64 %xtraiter2612, 0
  br i1 %lcmp.mod2613.not, label %.prol.loopexit2611, label %.prol.preheader2610

.prol.preheader2610:                              ; preds = %.lr.ph.i.i.i.i.i1427, %.prol.preheader2610
  %.018.i.i.i.i.i1429.prol = phi ptr [ %i.ego, %.prol.preheader2610 ], [ %i.egd, %.lr.ph.i.i.i.i.i1427 ] ; 3 uses
  %.01517.i.i.i.i.i1430.prol = phi ptr [ %i.egp, %.prol.preheader2610 ], [ %i.egc, %.lr.ph.i.i.i.i.i1427 ] ; 3 uses
  %prol.iter2614 = phi i64 [ %prol.iter2614.next, %.prol.preheader2610 ], [ 0, %.lr.ph.i.i.i.i.i1427 ]
  %i.egk = load i32, ptr %.018.i.i.i.i.i1429.prol, align 8, !tbaa !34
  store i32 %i.egk, ptr %.01517.i.i.i.i.i1430.prol, align 8, !tbaa !34
  %i.egl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430.prol, i64 8
  %i.egm = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429.prol, i64 8
  %i.egn = load ptr, ptr %i.egm, align 8, !tbaa !35
  store ptr %i.egn, ptr %i.egl, align 8, !tbaa !35
  %i.ego = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429.prol, i64 16 ; 2 uses
  %i.egp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430.prol, i64 16 ; 2 uses
  %prol.iter2614.next = add i64 %prol.iter2614, 1 ; 2 uses
  %prol.iter2614.cmp.not = icmp eq i64 %prol.iter2614.next, %xtraiter2612
  br i1 %prol.iter2614.cmp.not, label %.prol.loopexit2611, label %.prol.preheader2610, !llvm.loop !201

.prol.loopexit2611:                               ; preds = %.prol.preheader2610, %.lr.ph.i.i.i.i.i1427
  %.018.i.i.i.i.i1429.unr = phi ptr [ %i.egd, %.lr.ph.i.i.i.i.i1427 ], [ %i.ego, %.prol.preheader2610 ]
  %.01517.i.i.i.i.i1430.unr = phi ptr [ %i.egc, %.lr.ph.i.i.i.i.i1427 ], [ %i.egp, %.prol.preheader2610 ]
  %i.egq = icmp ult i64 %i.egh, 48
  br i1 %i.egq, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1432, label %.lr.ph.i.i.i.i.i1427.new

.lr.ph.i.i.i.i.i1427.new:                         ; preds = %.prol.loopexit2611, %.lr.ph.i.i.i.i.i1427.new
  %.018.i.i.i.i.i1429 = phi ptr [ %i.ehn, %.lr.ph.i.i.i.i.i1427.new ], [ %.018.i.i.i.i.i1429.unr, %.prol.loopexit2611 ] ; 9 uses
  %.01517.i.i.i.i.i1430 = phi ptr [ %i.eho, %.lr.ph.i.i.i.i.i1427.new ], [ %.01517.i.i.i.i.i1430.unr, %.prol.loopexit2611 ] ; 9 uses
  %i.egr = load i32, ptr %.018.i.i.i.i.i1429, align 8, !tbaa !34
  store i32 %i.egr, ptr %.01517.i.i.i.i.i1430, align 8, !tbaa !34
  %i.egs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 8
  %i.egt = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 8
  %i.egu = load ptr, ptr %i.egt, align 8, !tbaa !35
  store ptr %i.egu, ptr %i.egs, align 8, !tbaa !35
  %i.egv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 16
  %i.egw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 16
  %i.egx = load i32, ptr %i.egv, align 8, !tbaa !34
  store i32 %i.egx, ptr %i.egw, align 8, !tbaa !34
  %i.egy = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 24
  %i.egz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 24
  %i.eha = load ptr, ptr %i.egz, align 8, !tbaa !35
  store ptr %i.eha, ptr %i.egy, align 8, !tbaa !35
  %i.ehb = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 32
  %i.ehc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 32
  %i.ehd = load i32, ptr %i.ehb, align 8, !tbaa !34
  store i32 %i.ehd, ptr %i.ehc, align 8, !tbaa !34
  %i.ehe = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 40
  %i.ehf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 40
  %i.ehg = load ptr, ptr %i.ehf, align 8, !tbaa !35
  store ptr %i.ehg, ptr %i.ehe, align 8, !tbaa !35
  %i.ehh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 48
  %i.ehi = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 48
  %i.ehj = load i32, ptr %i.ehh, align 8, !tbaa !34
  store i32 %i.ehj, ptr %i.ehi, align 8, !tbaa !34
  %i.ehk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 56
  %i.ehl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 56
  %i.ehm = load ptr, ptr %i.ehl, align 8, !tbaa !35
  store ptr %i.ehm, ptr %i.ehk, align 8, !tbaa !35
  %i.ehn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i1429, i64 64 ; 2 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i1430, i64 64
  %.not.i.i.i.i.i1431.3 = icmp eq ptr %i.ehn, %i.egg
  br i1 %.not.i.i.i.i.i1431.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1432, label %.lr.ph.i.i.i.i.i1427.new, !llvm.loop !0

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1438: ; preds = %.noexc1440
  %.not.i.i.i1439 = icmp eq ptr %i.egd, null
  br i1 %.not.i.i.i1439, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1437, label %bb.kj

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1432: ; preds = %.lr.ph.i.i.i.i.i1427.new, %.prol.loopexit2611
  %i.ehp = add i64 %.idx.i.i1425, 68719476720
  %i.ehq = lshr exact i64 %i.ehp, 4
  %i.ehr = trunc i64 %i.ehq to i32
  %i.ehs = add i32 %i.ehr, 1
  %i.eht = add i32 %i.ehs, %.promoted.i.i.i.i.i1428
  store i32 %i.eht, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %.not.i5.i.i1433 = icmp eq ptr %i.egd, null
  br i1 %.not.i5.i.i1433, label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1437, label %.lr.ph.preheader.i.i.i.i1434

.lr.ph.preheader.i.i.i.i1434:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1432
  %.promoted.i.i.i.i1435 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4
  %i.ehu = trunc i64 %i.egf to i32
  %i.ehv = add i32 %.promoted.i.i.i.i1435, %i.ehu
  store i32 %i.ehv, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %bb.kj

bb.kj:                                            ; preds = %.lr.ph.preheader.i.i.i.i1434, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1438
  %i.ehw = load i64, ptr %i.egb, align 8, !tbaa !42
  %i.ehx = shl i64 %i.ehw, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.egd, i64 noundef %i.ehx) #23
  %.pre.i.i.i1436 = load i64, ptr %i.ege, align 8, !tbaa !43
  br label %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1437

_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1437: ; preds = %bb.kj, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1432, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1438
  %i.ehy = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i1438 ], [ %.pre.i.i.i1436, %bb.kj ], [ %i.egf, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI1XEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i1432 ] ; 4 uses
  store ptr %i.egc, ptr %224, align 8, !tbaa !38
  store i64 %i.ehy, ptr %i.ege, align 8, !tbaa !43
  store i64 3, ptr %i.egb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #23
  store i32 0, ptr %225, align 8, !tbaa !34
  %i.ehz = getelementptr inbounds nuw i8, ptr %225, i64 8
  store ptr null, ptr %i.ehz, align 8, !tbaa !35
  %i.eia = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.eib = add i32 %i.eia, 1                      ; 2 uses
  store i32 %i.eib, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1442 = icmp eq i64 %i.ehy, 3
  br i1 %.not.i1442, label %bb.kl, label %bb.kk, !prof !45

bb.kk:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1437
  %i.eic = getelementptr inbounds nuw [16 x i8], ptr %i.egc, i64 %i.ehy ; 2 uses
  store i32 0, ptr %i.eic, align 8, !tbaa !34
  %i.eid = getelementptr inbounds nuw i8, ptr %i.eic, i64 8
  store ptr null, ptr %i.eid, align 8, !tbaa !35
  %i.eie = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eif = add i32 %i.eie, 1
  store i32 %i.eif, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eig = add i64 %i.ehy, 1                      ; 2 uses
  store i64 %i.eig, ptr %i.ege, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit119

bb.kl:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1437
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.eih = getelementptr inbounds nuw i8, ptr %i.egc, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %224, ptr noundef nonnull %i.eih, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %225)
          to label %.noexc1444 unwind label %bb.ro

.noexc1444:                                       ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.pre2055 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2056 = load i64, ptr %i.ege, align 8, !tbaa !40
  %.pre2057 = load i64, ptr %i.egb, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit119

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit119: ; preds = %.noexc1444, %bb.kk
  %i.eii = phi i64 [ %.pre2057, %.noexc1444 ], [ 3, %bb.kk ] ; 3 uses
  %i.eij = phi i64 [ %.pre2056, %.noexc1444 ], [ %i.eig, %bb.kk ] ; 3 uses
  %i.eik = phi i32 [ %.pre2055, %.noexc1444 ], [ %i.eib, %bb.kk ]
  %i.eil = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eim = add i32 %i.eil, 1
  store i32 %i.eim, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #23
  store i32 0, ptr %226, align 8, !tbaa !34
  %i.ein = getelementptr inbounds nuw i8, ptr %226, i64 8
  store ptr null, ptr %i.ein, align 8, !tbaa !35
  %i.eio = add i32 %i.eik, 1                      ; 2 uses
  store i32 %i.eio, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1446 = icmp eq i64 %i.eij, %i.eii
  br i1 %.not.i1446, label %bb.kn, label %bb.km, !prof !45

bb.km:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit119
  %i.eip = load ptr, ptr %224, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.eiq = getelementptr inbounds nuw [16 x i8], ptr %i.eip, i64 %i.eij ; 2 uses
  store i32 0, ptr %i.eiq, align 8, !tbaa !34
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eiq, i64 8
  store ptr null, ptr %i.eir, align 8, !tbaa !35
  %i.eis = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eit = add i32 %i.eis, 1
  store i32 %i.eit, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eiu = add i64 %i.eij, 1                      ; 2 uses
  store i64 %i.eiu, ptr %i.ege, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit118

bb.kn:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.eiv = load ptr, ptr %224, align 8, !tbaa !38
  %i.eiw = getelementptr inbounds nuw [16 x i8], ptr %i.eiv, i64 %i.eii
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %224, ptr noundef %i.eiw, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %226)
          to label %.noexc1448 unwind label %bb.rp

.noexc1448:                                       ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre2058 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
end_hunk_10
begin_hunk_11_@main:bb.a
  %i.emm = add i32 %i.eml, 1                      ; 2 uses
  store i32 %i.emm, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1485 = icmp eq i64 %i.emj, 3
  br i1 %.not.i1485, label %bb.kw, label %bb.kv, !prof !45

bb.kv:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1480
  %i.emn = getelementptr inbounds nuw [16 x i8], ptr %i.ekn, i64 %i.emj ; 2 uses
  store i32 0, ptr %i.emn, align 8, !tbaa !34
  %i.emo = getelementptr inbounds nuw i8, ptr %i.emn, i64 8
  store ptr null, ptr %i.emo, align 8, !tbaa !35
  %i.emp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.emq = add i32 %i.emp, 1
  store i32 %i.emq, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.emr = add i64 %i.emj, 1                      ; 2 uses
  store i64 %i.emr, ptr %i.ekp, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit115

bb.kw:                                            ; preds = %_ZN5boost9container6vectorI1XvvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i1480
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ems = getelementptr inbounds nuw i8, ptr %i.ekn, i64 48
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %229, ptr noundef nonnull %i.ems, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %230)
          to label %.noexc1487 unwind label %bb.ru

.noexc1487:                                       ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre2061 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2062 = load i64, ptr %i.ekp, align 8, !tbaa !40
  %.pre2063 = load i64, ptr %i.ekm, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit115

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit115: ; preds = %.noexc1487, %bb.kv
  %i.emt = phi i64 [ %.pre2063, %.noexc1487 ], [ 3, %bb.kv ] ; 3 uses
  %i.emu = phi i64 [ %.pre2062, %.noexc1487 ], [ %i.emr, %bb.kv ] ; 3 uses
  %i.emv = phi i32 [ %.pre2061, %.noexc1487 ], [ %i.emm, %bb.kv ]
  %i.emw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.emx = add i32 %i.emw, 1
  store i32 %i.emx, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #23
  store i32 0, ptr %231, align 8, !tbaa !34
  %i.emy = getelementptr inbounds nuw i8, ptr %231, i64 8
  store ptr null, ptr %i.emy, align 8, !tbaa !35
  %i.emz = add i32 %i.emv, 1                      ; 2 uses
  store i32 %i.emz, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1489 = icmp eq i64 %i.emu, %i.emt
  br i1 %.not.i1489, label %bb.ky, label %bb.kx, !prof !45

bb.kx:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit115
  %i.ena = load ptr, ptr %229, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.enb = getelementptr inbounds nuw [16 x i8], ptr %i.ena, i64 %i.emu ; 2 uses
  store i32 0, ptr %i.enb, align 8, !tbaa !34
  %i.enc = getelementptr inbounds nuw i8, ptr %i.enb, i64 8
  store ptr null, ptr %i.enc, align 8, !tbaa !35
  %i.end = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.ene = add i32 %i.end, 1
  store i32 %i.ene, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.enf = add i64 %i.emu, 1                      ; 2 uses
  store i64 %i.enf, ptr %i.ekp, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit114

bb.ky:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit115
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.eng = load ptr, ptr %229, align 8, !tbaa !38
  %i.enh = getelementptr inbounds nuw [16 x i8], ptr %i.eng, i64 %i.emt
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %229, ptr noundef %i.enh, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %231)
          to label %.noexc1491 unwind label %bb.rv

.noexc1491:                                       ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre2064 = load i32, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.pre2065 = load i64, ptr %i.ekp, align 8, !tbaa !40
  %.pre2066 = load i64, ptr %i.ekm, align 8, !tbaa !42
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit114

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit114: ; preds = %.noexc1491, %bb.kx
  %i.eni = phi i64 [ %.pre2066, %.noexc1491 ], [ %i.emt, %bb.kx ] ; 2 uses
  %i.enj = phi i64 [ %.pre2065, %.noexc1491 ], [ %i.enf, %bb.kx ] ; 3 uses
  %i.enk = phi i32 [ %.pre2064, %.noexc1491 ], [ %i.emz, %bb.kx ]
  %i.enl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.enm = add i32 %i.enl, 1
  store i32 %i.enm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #23
  store i32 0, ptr %232, align 8, !tbaa !34
  %i.enn = getelementptr inbounds nuw i8, ptr %232, i64 8
  store ptr null, ptr %i.enn, align 8, !tbaa !35
  %i.eno = add i32 %i.enk, 1
  store i32 %i.eno, ptr @_ZN1X2spE, align 16, !tbaa !12
  %.not.i1493 = icmp eq i64 %i.enj, %i.eni
  br i1 %.not.i1493, label %bb.la, label %bb.kz, !prof !45

bb.kz:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit114
  %i.enp = load ptr, ptr %229, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.enq = getelementptr inbounds nuw [16 x i8], ptr %i.enp, i64 %i.enj ; 2 uses
  store i32 0, ptr %i.enq, align 8, !tbaa !34
  %i.enr = getelementptr inbounds nuw i8, ptr %i.enq, i64 8
  store ptr null, ptr %i.enr, align 8, !tbaa !35
  %i.ens = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.ent = add i32 %i.ens, 1
  store i32 %i.ent, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.enu = add i64 %i.enj, 1
  store i64 %i.enu, ptr %i.ekp, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit

bb.la:                                            ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.env = load ptr, ptr %229, align 8, !tbaa !38
  %i.enw = getelementptr inbounds nuw [16 x i8], ptr %i.env, i64 %i.eni
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %229, ptr noundef %i.enw, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %232)
          to label %.noexc1495 unwind label %bb.rw

.noexc1495:                                       ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit

_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit: ; preds = %.noexc1495, %bb.kz
  %i.enx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eny = add i32 %i.enx, 1
  store i32 %i.eny, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #23
  %i.enz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1498 unwind label %bb.rt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1498: ; preds = %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN1X2spE, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #23
  store i32 0, ptr %233, align 8, !tbaa !34
  %i.eoa = getelementptr inbounds nuw i8, ptr %233, i64 8
  store ptr null, ptr %i.eoa, align 8, !tbaa !35
  store i32 1, ptr @_ZN1X2spE, align 16, !tbaa !12
  %i.eob = load i64, ptr %i.ekp, align 8, !tbaa !40 ; 4 uses
  %i.eoc = load i64, ptr %i.ekm, align 8, !tbaa !42
  %.not.i1499 = icmp eq i64 %i.eob, %i.eoc
  br i1 %.not.i1499, label %bb.lc, label %bb.lb, !prof !45

bb.lb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1498
  %i.eod = load ptr, ptr %229, align 8, !tbaa !38, !nonnull !46, !noundef !46
  %i.eoe = getelementptr inbounds nuw [16 x i8], ptr %i.eod, i64 %i.eob ; 2 uses
  store i32 0, ptr %i.eoe, align 8, !tbaa !34
  %i.eof = getelementptr inbounds nuw i8, ptr %i.eoe, i64 8
  store ptr null, ptr %i.eof, align 8, !tbaa !35
  %i.eog = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eoh = add i32 %i.eog, 1
  store i32 %i.eoh, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !29
  %i.eoi = add i64 %i.eob, 1
  store i64 %i.eoi, ptr %i.ekp, align 8, !tbaa !40
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1502

bb.lc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1498
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.eoj = load ptr, ptr %229, align 8, !tbaa !38
  %i.eok = getelementptr inbounds nuw [16 x i8], ptr %i.eoj, i64 %i.eob
  invoke void @_ZN5boost9container6vectorI1XvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %229, ptr noundef %i.eok, i64 noundef 1, ptr nonnull align 8 dereferenceable(16) %233)
          to label %.noexc1501 unwind label %bb.rx

.noexc1501:                                       ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1502

_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1502: ; preds = %.noexc1501, %bb.lb
  %i.eol = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eom = add i32 %i.eol, 1
  store i32 %i.eom, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #23
  %i.eon = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN1X7specialE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 4 dereferenceable(24) @_ZN1X2spE)
          to label %bb.ld unwind label %bb.rt     ; 0 uses

bb.ld:                                            ; preds = %_ZN5boost9container6vectorI1XvvE12emplace_backIJS2_EEERS2_DpOT_.exit1502
  %i.eoo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1504 unwind label %bb.rt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1504: ; preds = %bb.ld
  %i.eop = load <4 x i32>, ptr @_ZN1X2spE, align 16, !tbaa !31
  %i.eoq = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 16), align 16, !tbaa !31
  %i.eor = load i64, ptr %i.ekp, align 8, !tbaa !40 ; 2 uses
  %.not3.i.i1505 = icmp eq i64 %i.eor, 0
  br i1 %.not3.i.i1505, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1508, label %.lr.ph.preheader.i.i1506

.lr.ph.preheader.i.i1506:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1504
  %.sroa.28.0.copyload1579 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !31
  %i.eos = trunc i64 %i.eor to i32
  %i.eot = add i32 %.sroa.28.0.copyload1579, %i.eos
  store i32 %i.eot, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1508

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1508: ; preds = %.lr.ph.preheader.i.i1506, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1504
  %i.eou = load i64, ptr %i.ekm, align 8, !tbaa !42 ; 2 uses
  %.not.i.i1509 = icmp eq i64 %i.eou, 0
  br i1 %.not.i.i1509, label %_ZN5boost9container6vectorI1XvvED2Ev.exit1510, label %bb.le

bb.le:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1508
  %i.eov = load ptr, ptr %229, align 8, !tbaa !47
  %i.eow = shl i64 %i.eou, 4
  call void @_ZdlPvm(ptr noundef %i.eov, i64 noundef %i.eow) #23
  br label %_ZN5boost9container6vectorI1XvvED2Ev.exit1510

_ZN5boost9container6vectorI1XvvED2Ev.exit1510:    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI1XEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i1508, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #23
  %i.eox = icmp eq <4 x i32> %i.eke, %i.eop
  %i.eoy = icmp eq <2 x i32> %i.ekf, %i.eoq       ; 2 uses
  %i.eoz = freeze <4 x i1> %i.eox
  %i.epa = bitcast <4 x i1> %i.eoz to i4
  %i.epb = icmp eq i4 %i.epa, -1
  %i.epc = extractelement <2 x i1> %i.eoy, i64 0
  %op.rdx = select i1 %i.epb, i1 %i.epc, i1 false
  %i.epd = extractelement <2 x i1> %i.eoy, i64 1
  %op.rdx2406 = select i1 %op.rdx, i1 %i.epd, i1 false
  %i.epe = zext i1 %op.rdx2406 to i8
  store i8 %i.epe, ptr %i.w, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #23
  store i8 1, ptr %i.x, align 1, !tbaa !49
  %i.epf = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEbbEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 495, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.x) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #23
  %i.epg = call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.epg

bb.lf:                                            ; preds = %bb.a
  %i.eph = landingpad { ptr, i32 }
          cleanup
  br label %bb.lm

bb.lg:                                            ; preds = %bb.d
  %i.epi = landingpad { ptr, i32 }
          cleanup
  %i.epj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.epk = add i32 %i.epj, 1
  store i32 %i.epk, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #23
  br label %bb.lm

bb.lh:                                            ; preds = %bb.f
  %i.epl = landingpad { ptr, i32 }
          cleanup
  %i.epm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.epn = add i32 %i.epm, 1
  store i32 %i.epn, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #23
  br label %bb.lm

bb.li:                                            ; preds = %bb.h
  %i.epo = landingpad { ptr, i32 }
          cleanup
  %i.epp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.epq = add i32 %i.epp, 1
  store i32 %i.epq, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #23
  br label %bb.lm

bb.lj:                                            ; preds = %bb.m, %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit192, %_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit196
  %i.epr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.lk:                                            ; preds = %bb.l
  %i.eps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #23
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %.pn = phi { ptr, i32 } [ %i.epr, %bb.lj ], [ %i.eps, %bb.lk ]
  %i.ept = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.epu = add i32 %i.ept, 1
  store i32 %i.epu, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #23
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.li, %bb.lh, %bb.lg, %bb.lf
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ll ], [ %i.epo, %bb.li ], [ %i.epl, %bb.lh ], [ %i.epi, %bb.lg ], [ %i.eph, %bb.lf ]
  call void @_ZN5boost9container6vectorI1XvvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %90) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #23
  br label %bb.rz

bb.ln:                                            ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit
  %i.epv = landingpad { ptr, i32 }
          cleanup
  br label %bb.lu

bb.lo:                                            ; preds = %bb.q
  %i.epw = landingpad { ptr, i32 }
          cleanup
  %i.epx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.epy = add i32 %i.epx, 1
  store i32 %i.epy, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #23
  br label %bb.lu

bb.lp:                                            ; preds = %bb.s
  %i.epz = landingpad { ptr, i32 }
          cleanup
  %i.eqa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqb = add i32 %i.eqa, 1
  store i32 %i.eqb, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #23
  br label %bb.lu

bb.lq:                                            ; preds = %bb.u
  %i.eqc = landingpad { ptr, i32 }
          cleanup
  %i.eqd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqe = add i32 %i.eqd, 1
  store i32 %i.eqe, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #23
  br label %bb.lu

bb.lr:                                            ; preds = %bb.z, %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit189, %_ZN5boost9container6vectorI1XvvE7emplaceIJRS2_EEENS0_12vec_iteratorIPS2_Lb0EEENS6_IS7_Lb1EEEDpOT_.exit
  %i.eqf = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.ls:                                            ; preds = %bb.y
  %i.eqg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #23
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %.pn50 = phi { ptr, i32 } [ %i.eqf, %bb.lr ], [ %i.eqg, %bb.ls ]
  %i.eqh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqi = add i32 %i.eqh, 1
  store i32 %i.eqi, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #23
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.lq, %bb.lp, %bb.lo, %bb.ln
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.lt ], [ %i.eqc, %bb.lq ], [ %i.epz, %bb.lp ], [ %i.epw, %bb.lo ], [ %i.epv, %bb.ln ]
  call void @_ZN5boost9container6vectorI1XvvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %96) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #23
  br label %bb.rz

bb.lv:                                            ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit354
  %i.eqj = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

bb.lw:                                            ; preds = %bb.ad
  %i.eqk = landingpad { ptr, i32 }
          cleanup
  %i.eql = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqm = add i32 %i.eql, 1
  store i32 %i.eqm, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #23
  br label %bb.mc

bb.lx:                                            ; preds = %bb.af
  %i.eqn = landingpad { ptr, i32 }
          cleanup
  %i.eqo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqp = add i32 %i.eqo, 1
  store i32 %i.eqp, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #23
  br label %bb.mc

bb.ly:                                            ; preds = %bb.ah
  %i.eqq = landingpad { ptr, i32 }
          cleanup
  %i.eqr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqs = add i32 %i.eqr, 1
  store i32 %i.eqs, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #23
  br label %bb.mc

bb.lz:                                            ; preds = %bb.am, %_ZN5boost9container6vectorI1XvvE9push_backEOS2_.exit186, %_ZN5boost9container6vectorI1XvvE6insertENS0_12vec_iteratorIPS2_Lb1EEEOS2_.exit199
  %i.eqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.ma:                                            ; preds = %bb.al
  %i.equ = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #23
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %.pn53 = phi { ptr, i32 } [ %i.eqt, %bb.lz ], [ %i.equ, %bb.ma ]
  %i.eqv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.eqw = add i32 %i.eqv, 1
  store i32 %i.eqw, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #23
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ly, %bb.lx, %bb.lw, %bb.lv
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.mb ], [ %i.eqq, %bb.ly ], [ %i.eqn, %bb.lx ], [ %i.eqk, %bb.lw ], [ %i.eqj, %bb.lv ]
  call void @_ZN5boost9container6vectorI1XvvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %102) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #23
  br label %bb.rz

bb.md:                                            ; preds = %_ZN5boost9container6vectorI1XvvED2Ev.exit405
  %i.eqx = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.me:                                            ; preds = %bb.aq
  %i.eqy = landingpad { ptr, i32 }
          cleanup
  %i.eqz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.era = add i32 %i.eqz, 1
  store i32 %i.era, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #23
  br label %bb.mk

bb.mf:                                            ; preds = %bb.as
  %i.erb = landingpad { ptr, i32 }
          cleanup
  %i.erc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN1X2spE, i64 4), align 4, !tbaa !26
  %i.erd = add i32 %i.erc, 1
end_hunk_11
