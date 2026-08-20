inline.NumInlined: 1401
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5boost5beast19test_dynamic_bufferINS0_13static_bufferILm13EEEEEvRKT_:.lr.ph.i.i.i.epil.preheader
bb.bl:                                            ; preds = %.lr.ph.i.i253
  %.sroa.0.0.copyload.i.i261 = load ptr, ptr %.01017.i.i255, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i261, ptr align 1 %.sroa.011.016.i.i256, i64 %i.ur, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i262

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i262: ; preds = %bb.bl, %.lr.ph.i.i253
  %i.us = add i64 %i.ur, %.018.i.i254             ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i256, i64 %i.ur
  %i.uu = sub i64 %.sroa.6.015.i.i257, %i.ur      ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.01017.i.i255, i64 16 ; 2 uses
  %i.uw = icmp ne i64 %i.uu, 0
  %i.ux = icmp ne ptr %i.uv, %.0.v.i.i.i249.sroa.sel
  %i.uy = select i1 %i.uw, i1 %i.ux, i1 false
  br i1 %i.uy, label %.lr.ph.i.i253, label %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit264, !llvm.loop !138

_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit264: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i262
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %83, i64 noundef %i.us) #28
  %i.uz = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  call void @_ZNK5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %85, ptr noundef nonnull align 8 dereferenceable(40) %83) #28
  %i.va = getelementptr inbounds nuw i8, ptr %85, i64 24
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !134
  %.not.i.i.i.i265.not = icmp eq i64 %i.vb, 0
  %i.vc = select i1 %.not.i.i.i.i265.not, i64 1, i64 2
  br label %.lr.ph.i.i.i268.epil

.lr.ph.i.i.i268.epil:                             ; preds = %.lr.ph.i.i.i268.epil, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit264
  %.09.i.i.i269.epil = phi ptr [ %i.ve, %.lr.ph.i.i.i268.epil ], [ %85, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit264 ] ; 2 uses
  %.068.i.i.i270.epil = phi i64 [ %i.vd, %.lr.ph.i.i.i268.epil ], [ 0, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit264 ]
  %epil.iter1038 = phi i64 [ %epil.iter1038.next, %.lr.ph.i.i.i268.epil ], [ 0, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit264 ]
  %.sroa.3.0..0.sroa_idx.i.i.i271.epil = getelementptr inbounds nuw i8, ptr %.09.i.i.i269.epil, i64 8
  %.sroa.3.0.copyload.i.i.i272.epil = load i64, ptr %.sroa.3.0..0.sroa_idx.i.i.i271.epil, align 8, !tbaa !13
  %i.vd = add i64 %.sroa.3.0.copyload.i.i.i272.epil, %.068.i.i.i270.epil ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.09.i.i.i269.epil, i64 16
  %epil.iter1038.next = add i64 %epil.iter1038, 1 ; 2 uses
  %epil.iter1038.cmp.not = icmp eq i64 %epil.iter1038.next, %i.vc
  br i1 %epil.iter1038.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa, label %.lr.ph.i.i.i268.epil, !llvm.loop !142

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa: ; preds = %.lr.ph.i.i.i268.epil
  %i.vf = icmp eq i64 %i.vd, 13
  %i.vg = zext i1 %i.vf to i8
  store i8 %i.vg, ptr %i.al, align 1, !tbaa !118
  %i.vh = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.uz, ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull align 1 dereferenceable(1) @.str.3, ptr noundef nonnull @.str.6, i32 noundef 552) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28
  call void @_ZNK5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %86, ptr noundef nonnull align 8 dereferenceable(40) %83) #28
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_6detail12buffers_pairILb0EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %86)
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  %i.vi = getelementptr inbounds nuw i8, ptr %87, i64 40
  %i.vj = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.vk = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.vl = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 4 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %88, i64 24
  %i.vn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %89, i64 24
  %i.vp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 8 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %91, i64 24 ; 2 uses
  %.sroa.gep401 = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 2 uses
  %.sroa.gep402 = getelementptr inbounds nuw i8, ptr %91, i64 32 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %92, i64 24
  %i.vv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  br label %.preheader487

.preheader487:                                    ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa, %bb.bn
  %indvars.iv695 = phi i64 [ 4, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa ], [ %indvars.iv.next696, %bb.bn ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa ], [ %indvars.iv.next, %bb.bn ] ; 2 uses
  %.052620 = phi i64 [ 1, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa ], [ %i.vx, %bb.bn ] ; 6 uses
  %.0619 = phi i8 [ 1, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit274.epilog-lcssa ], [ %i.wc, %bb.bn ]
  br label %.preheader.preheader

bb.bm:                                            ; preds = %bb.bn
  call void @_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_13static_bufferILm13EEEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(53) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #28
  ret void

.loopexit:                                        ; preds = %bb.bo
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond697 = icmp eq i64 %indvars.iv.next693, %indvars.iv695
  br i1 %exitcond697, label %bb.bn, label %.preheader.preheader, !llvm.loop !143

.preheader.preheader:                             ; preds = %.loopexit, %.preheader487
  %indvars.iv692 = phi i64 [ 3, %.preheader487 ], [ %indvars.iv.next693, %.loopexit ] ; 2 uses
  %storemerge618 = phi i64 [ 1, %.preheader487 ], [ %i.vw, %.loopexit ] ; 2 uses
  %.1617 = phi i8 [ %.0619, %.preheader487 ], [ %i.wc, %.loopexit ]
  %i.vw = add nuw nsw i64 %storemerge618, 1
  br label %.preheader

bb.bn:                                            ; preds = %.loopexit
  %i.vx = add nuw nsw i64 %.052620, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next696 = add nuw nsw i64 %indvars.iv695, 1 ; 2 uses
  %exitcond698 = icmp eq i64 %indvars.iv.next696, 17
  br i1 %exitcond698, label %bb.bm, label %.preheader487, !llvm.loop !144

.preheader:                                       ; preds = %.preheader.preheader, %bb.bo
  %storemerge79615 = phi i64 [ %i.vy, %bb.bo ], [ 1, %.preheader.preheader ] ; 2 uses
  %.2614 = phi i8 [ %i.wc, %bb.bo ], [ %.1617, %.preheader.preheader ]
  br label %.lr.ph.i276

bb.bo:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit378
  %i.vy = add nuw nsw i64 %storemerge79615, 1     ; 2 uses
  %exitcond694 = icmp eq i64 %i.vy, %indvars.iv692
  br i1 %exitcond694, label %.loopexit, label %.preheader, !llvm.loop !145

.lr.ph.i276:                                      ; preds = %.preheader, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit378
  %.051612 = phi i64 [ 1, %.preheader ], [ %i.aen, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit378 ] ; 2 uses
  %.3611 = phi i8 [ %.2614, %.preheader ], [ %i.wc, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit378 ] ; 4 uses
  %i.vz = insertelement <8 x i8> poison, i8 %.3611, i64 0
  %i.wa = shufflevector <8 x i8> %i.vz, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.wb = add <8 x i8> %i.wa, <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>
  %i.wc = add i8 %.3611, 1                        ; 4 uses
  store i8 %.3611, ptr %i.ag, align 8, !tbaa !17
  %i.wd = insertelement <4 x i8> poison, i8 %.3611, i64 0
  %i.we = shufflevector <4 x i8> %i.wd, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.wf = add <4 x i8> %i.we, <i8 9, i8 10, i8 11, i8 12>
  store <8 x i8> %i.wb, ptr %i.uc, align 1, !tbaa !17
  store <4 x i8> %i.wf, ptr %i.ue, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  call void @_ZN5boost5beast18static_buffer_baseC2EPvm(ptr noundef nonnull align 8 dereferenceable(53) %87, ptr noundef nonnull %i.vi, i64 noundef 13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.wg = load i64, ptr %i.an, align 8, !tbaa !119
  invoke void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair.15") align 8 %25, ptr noundef nonnull align 8 dereferenceable(53) %87, i64 noundef %i.wg)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %.lr.ph.i276
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZNK5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %26, ptr noundef nonnull align 8 dereferenceable(53) %0) #28
  %i.wh = load i64, ptr %i.vj, align 8, !tbaa !121
  %.not.i.i.i.i280 = icmp eq i64 %i.wh, 0
  %.0.v.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i280, i64 16, i64 32
  %.0.v.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %25, i64 %.0.v.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.wi = load i64, ptr %i.vk, align 8, !tbaa !134
  %.not.i.i4.i.i = icmp eq i64 %i.wi, 0
  %.0.v.i.i5.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i4.i.i, i64 16, i64 32
  %.0.v.i.i5.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %26, i64 %.0.v.i.i5.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %.lr.ph.i.i.i281

.lr.ph.i.i.i281:                                  ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.bp
  %.045.i.i.i = phi i64 [ %.1.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ 0, %bb.bp ] ; 2 uses
  %.02044.i.i.i = phi ptr [ %.121.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %26, %bb.bp ] ; 3 uses
  %.02243.i.i.i = phi i64 [ %.123.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ 0, %bb.bp ] ; 2 uses
  %.02442.i.i.i = phi ptr [ %.125.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %25, %bb.bp ] ; 3 uses
  %.02641.i.i.i = phi i64 [ %i.wo, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ 0, %bb.bp ]
  %.sroa.436.0..024.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.02442.i.i.i, i64 8
  %.sroa.436.0.copyload.i.i.i = load i64, ptr %.sroa.436.0..024.sroa_idx.i.i.i, align 8, !tbaa !13 ; 2 uses
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.02243.i.i.i, i64 %.sroa.436.0.copyload.i.i.i) ; 2 uses
  %i.wj = sub i64 %.sroa.436.0.copyload.i.i.i, %spec.select.i.i.i.i ; 3 uses
  %.sroa.4.0..020.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.02044.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..020.sroa_idx.i.i.i, align 8, !tbaa !13 ; 2 uses
  %spec.select.i29.i.i.i = call i64 @llvm.umin.i64(i64 %.045.i.i.i, i64 %.sroa.4.0.copyload.i.i.i) ; 2 uses
  %i.wk = sub i64 %.sroa.4.0.copyload.i.i.i, %spec.select.i29.i.i.i ; 3 uses
  %i.wl = call i64 @llvm.umin.i64(i64 %i.wj, i64 %i.wk) ; 5 uses
  %.not.i.i7.i.i = icmp eq i64 %i.wl, 0
  br i1 %.not.i.i7.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i281
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.02044.i.i.i, align 8, !tbaa !58
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %spec.select.i29.i.i.i
  %.sroa.035.0.copyload.i.i.i = load ptr, ptr %.02442.i.i.i, align 8, !tbaa !58
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload.i.i.i, i64 %spec.select.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wn, ptr align 1 %i.wm, i64 %i.wl, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.bq, %.lr.ph.i.i.i281
  %i.wo = add i64 %i.wl, %.02641.i.i.i            ; 2 uses
  %.not.i.i.i282 = icmp ugt i64 %i.wj, %i.wk      ; 2 uses
  %i.wp = add i64 %i.wl, %.02243.i.i.i
  %.125.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.i.i282, i64 0, i64 16
  %.125.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.02442.i.i.i, i64 %.125.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %.123.i.i.i = select i1 %.not.i.i.i282, i64 %i.wp, i64 0
  %.not40.i.i.i = icmp ugt i64 %i.wk, %i.wj       ; 2 uses
  %i.wq = add i64 %i.wl, %.045.i.i.i
  %.121.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not40.i.i.i, i64 0, i64 16
  %.121.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.02044.i.i.i, i64 %.121.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %.1.i.i.i = select i1 %.not40.i.i.i, i64 %i.wq, i64 0
  %i.wr = icmp ne ptr %.125.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.0.v.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel
  %i.ws = icmp ne ptr %.121.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.0.v.i.i5.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel
  %i.wt = select i1 %i.wr, i1 %i.ws, i1 false
  br i1 %i.wt, label %.lr.ph.i.i.i281, label %_ZN5boost5beast13static_bufferILm13EEC2ERKS2_.exit, !llvm.loop !146

bb.br:                                            ; preds = %.lr.ph.i276
  %i.wu = landingpad { ptr, i32 }
          catch ptr null
  %i.wv = extractvalue { ptr, i32 } %i.wu, 0
  call void @__clang_call_terminate(ptr %i.wv) #30
  unreachable

_ZN5boost5beast13static_bufferILm13EEC2ERKS2_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(53) %87, i64 noundef %i.wo) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.lr.ph.i.i289.preheader

.lr.ph.i.i289.preheader:                          ; preds = %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit300, %_ZN5boost5beast13static_bufferILm13EEC2ERKS2_.exit
  %.sroa.0418.0606 = phi ptr [ %i.ag, %_ZN5boost5beast13static_bufferILm13EEC2ERKS2_.exit ], [ %i.xh, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit300 ] ; 2 uses
  %.sroa.7.0605 = phi i64 [ %.052620, %_ZN5boost5beast13static_bufferILm13EEC2ERKS2_.exit ], [ %i.xi, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit300 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  %i.ww = load i64, ptr %i.vl, align 8, !tbaa !119
  %i.wx = sub i64 13, %i.ww
  %.sroa.speculated413 = call i64 @llvm.umin.i64(i64 %i.wx, i64 %storemerge618)
  call void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair.15") align 8 %88, ptr noundef nonnull align 8 dereferenceable(40) %87, i64 noundef %.sroa.speculated413)
  %i.wy = load i64, ptr %i.vm, align 8, !tbaa !121
  %.not.i.i.i284 = icmp eq i64 %i.wy, 0
  %.0.v.i.i.i285.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i284, i64 16, i64 32
  %.0.v.i.i.i285.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %88, i64 %.0.v.i.i.i285.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.0605, i64 %storemerge79615)
  br label %.lr.ph.i.i289

.lr.ph.i.i289:                                    ; preds = %.lr.ph.i.i289.preheader, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298
  %.018.i.i290 = phi i64 [ %i.xa, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298 ], [ 0, %.lr.ph.i.i289.preheader ]
  %.01017.i.i291 = phi ptr [ %i.xd, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298 ], [ %88, %.lr.ph.i.i289.preheader ] ; 3 uses
  %.sroa.011.016.i.i292 = phi ptr [ %i.xb, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298 ], [ %.sroa.0418.0606, %.lr.ph.i.i289.preheader ] ; 2 uses
  %.sroa.6.015.i.i293 = phi i64 [ %i.xc, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298 ], [ %.sroa.speculated, %.lr.ph.i.i289.preheader ] ; 2 uses
  %.sroa.4.0..010.sroa_idx.i.i294 = getelementptr inbounds nuw i8, ptr %.01017.i.i291, i64 8
  %.sroa.4.0.copyload.i.i295 = load i64, ptr %.sroa.4.0..010.sroa_idx.i.i294, align 8, !tbaa !13 ; 2 uses
  %i.wz = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i295, i64 %.sroa.6.015.i.i293) ; 4 uses
  %.not.i.i4.i296 = icmp eq i64 %.sroa.4.0.copyload.i.i295, 0
  br i1 %.not.i.i4.i296, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i289
  %.sroa.0.0.copyload.i.i297 = load ptr, ptr %.01017.i.i291, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i297, ptr align 1 %.sroa.011.016.i.i292, i64 %i.wz, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298: ; preds = %bb.bs, %.lr.ph.i.i289
  %i.xa = add i64 %i.wz, %.018.i.i290             ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i292, i64 %i.wz
  %i.xc = sub i64 %.sroa.6.015.i.i293, %i.wz      ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.01017.i.i291, i64 16 ; 2 uses
  %i.xe = icmp ne i64 %i.xc, 0
  %i.xf = icmp ne ptr %i.xd, %.0.v.i.i.i285.sroa.sel.v.sroa.sel.v.sroa.sel
  %i.xg = select i1 %i.xe, i1 %i.xf, i1 false
  br i1 %i.xg, label %.lr.ph.i.i289, label %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit300, !llvm.loop !138

_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit300: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i298
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %87, i64 noundef %i.xa) #28
  %..i301 = call i64 @llvm.umin.i64(i64 %i.xa, i64 %.sroa.7.0605) ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0418.0606, i64 %..i301
  %i.xi = sub i64 %.sroa.7.0605, %..i301          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  %.not82 = icmp eq i64 %i.xi, 0
  br i1 %.not82, label %bb.bt, label %.lr.ph.i.i289.preheader, !llvm.loop !147

bb.bt:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit300
  %i.xj = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !61 ; 7 uses
  %i.xk = load i64, ptr %i.vl, align 8, !tbaa !119
  %i.xl = icmp eq i64 %i.xk, %.052620
  br i1 %i.xl, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xn = load i8, ptr %i.xm, align 8, !tbaa !67, !range !42, !noundef !43
  %i.xo = trunc nuw i8 %i.xn to i1
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 9
  %i.xq = load i8, ptr %i.xp, align 1, !range !42
  %i.xr = trunc nuw i8 %i.xq to i1
  %or.cond.i.i.i = select i1 %i.xo, i1 %i.xr, i1 false
  br i1 %or.cond.i.i.i, label %bb.bv, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %22, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store ptr @.str.8, ptr %23, align 8, !tbaa !148
  %i.xs = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.10, ptr %i.xs, align 8, !tbaa !150
  %i.xt = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 592, ptr %i.xt, align 8, !tbaa !151
  %i.xu = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 48, ptr %i.xu, align 4, !tbaa !152
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(24) %23) #29
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  unreachable

common.resume:                                    ; preds = %bb.cu, %bb.bb, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i343, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i369 ], [ %eh.lpad-body382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %eh.lpad-body389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i343 ], [ %.pn71.pn, %bb.bb ], [ %i.xv, %bb.bx ], [ %i.zp, %bb.cj ], [ %.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313 ], [ %i.adi, %bb.de ], [ %eh.lpad-body364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %.pn76, %bb.bk ], [ %.pn.pn.pn.i, %bb.cu ]
  resume { ptr, i32 } %common.resume.op

bb.bx:                                            ; preds = %bb.bv
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i: ; preds = %bb.bu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !82
  call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.xx)
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

bb.by:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 1 dereferenceable(1) @.str.3, ptr noundef nonnull @.str.6, i32 noundef 583)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 8, !tbaa !67, !range !42, !noundef !43
  %i.ya = trunc nuw i8 %i.xz to i1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 9
  %i.yc = load i8, ptr %i.yb, align 1, !range !42
  %i.yd = trunc nuw i8 %i.yc to i1
  %or.cond.i.i = select i1 %i.ya, i1 %i.yd, i1 false
  br i1 %or.cond.i.i, label %bb.bz, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %9, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr @.str.8, ptr %10, align 8, !tbaa !148
  %i.ye = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.10, ptr %i.ye, align 8, !tbaa !150
  %i.yf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 592, ptr %i.yf, align 8, !tbaa !151
  %i.yg = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 48, ptr %i.yg, align 4, !tbaa !152
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #29
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body381

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %bb.by
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !82
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.yj, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %.noexc383 unwind label %bb.cf

.noexc383:                                        ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.yk = load i8, ptr %i.xy, align 8, !tbaa !67, !range !42, !noundef !43
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %bb.cc, label %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.cc:                                            ; preds = %.noexc383
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xj, i64 9
  store i8 1, ptr %i.ym, align 1, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %11, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr @.str.8, ptr %12, align 8, !tbaa !148
  %i.yn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.9, ptr %i.yn, align 8, !tbaa !150
  %i.yo = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 574, ptr %i.yo, align 8, !tbaa !151
  %i.yp = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 48, ptr %i.yp, align 4, !tbaa !152
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #29
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.body381

_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc383
  %i.yr = load ptr, ptr %24, align 8, !tbaa !15   ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.vn
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339: ; preds = %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.yt = load i64, ptr %i.vn, align 8, !tbaa !17
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340: ; preds = %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

bb.cf:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %.body381

.body381:                                         ; preds = %bb.cb, %bb.ce, %bb.cf
  %eh.lpad-body382 = phi { ptr, i32 } [ %i.yv, %bb.cf ], [ %i.yh, %bb.cb ], [ %i.yq, %bb.ce ]
  %i.yw = load ptr, ptr %24, align 8, !tbaa !15   ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.vn
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %.body381
  %i.yy = load i64, ptr %i.vn, align 8, !tbaa !17
  %i.yz = add i64 %i.yy, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.yz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %.body381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %common.resume

_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit: ; preds = %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340
end_hunk_0
