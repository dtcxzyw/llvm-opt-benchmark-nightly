Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ma?download=true
inline.NumInlined: 4528
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre14.i610, i64 noundef %i.sp) #36
  br label %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit

_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit: ; preds = %.lr.ph.preheader.i.i603, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8nn180100Ev.exit.i.i, %bb.ae, %bb.q
  %i.uc = load ptr, ptr %14, align 8, !tbaa !85   ; 8 uses
  store ptr %i.uc, ptr %i.bw, align 8, !tbaa !87
  %.not834 = icmp eq i64 %i.px, 0
  br i1 %.not834, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477, label %bb.af

bb.af:                                            ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit
  %i.ud = ptrtoint ptr %i.uc to i64
  %i.ue = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = sub i64 %i.uf, %i.ud                    ; 4 uses
  %i.uh = ashr exact i64 %i.ug, 2
  %.not.i619 = icmp ult i64 %i.uh, %i.px
  br i1 %.not.i619, label %bb.ag, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i623

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i623: ; preds = %bb.af
  %.idx.i.i622 = shl i64 %i.px, 2                 ; 2 uses
  %i.ui = getelementptr i8, ptr %i.uc, i64 %.idx.i.i622
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.uc, i8 0, i64 %.idx.i.i622, i1 false), !tbaa !21
  store ptr %i.ui, ptr %i.bw, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477

bb.ag:                                            ; preds = %bb.af
  %i.uj = icmp ugt i64 %i.px, 4611686018427387903
  br i1 %i.uj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #34
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i626 = icmp ult i64 %i.ug, 9223372036854775804
  %i.uk = ashr exact i64 %i.ug, 1
  %.sroa.speculated.i.i627 = tail call i64 @llvm.umax.i64(i64 %i.uk, i64 %i.px)
  %.0.i.i628 = select i1 %.not.i.i626, i64 %.sroa.speculated.i.i627, i64 4611686018427387903 ; 3 uses
  %i.ul = icmp ugt i64 %.0.i.i628, 4611686018427387903
  br i1 %i.ul, label %bb.aj, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i639

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i639: ; preds = %bb.ai
  %i.um = shl nuw i64 %.0.i.i628, 2
  %i.un = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.um) #35 ; 6 uses
  %.idx.i6.i634 = shl nuw i64 %i.px, 2            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.un, i8 0, i64 %.idx.i6.i634, i1 false), !tbaa !21
  %i.uo = getelementptr i8, ptr %i.un, i64 %.idx.i6.i634
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %.0.i.i628
  store ptr %i.un, ptr %14, align 8, !tbaa !86
  store ptr %i.uo, ptr %i.bw, align 8, !tbaa !86
  store ptr %i.up, ptr %i.bx, align 8, !tbaa !86
  %.not.i7.i641 = icmp eq ptr %i.uc, null
  br i1 %.not.i7.i641, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i639
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.ug) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477

_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit, %bb.ak, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i639, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i623
  %i.uq = phi ptr [ %i.uc, %_ZNSt3__16vectorImNS_9allocatorImEEE6resizeEm.exit ], [ %i.un, %bb.ak ], [ %i.un, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i639 ], [ %i.uc, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i623 ] ; 6 uses
  %i.ur = load i64, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  %i.us = icmp ult i64 %.0336987, %i.ur
  br i1 %i.us, label %.preheader837, label %bb.al

.preheader837:                                    ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477
  br i1 %i.ot, label %.lr.ph962, label %.loopexit838

.lr.ph962:                                        ; preds = %.preheader837
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.0336987
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !65 ; 3 uses
  br i1 %i.pd, label %.epil.preheader1657, label %.lr.ph962.new

.lr.ph962.new:                                    ; preds = %.lr.ph962, %.lr.ph962.new
  %.0335961 = phi i64 [ %i.vi, %.lr.ph962.new ], [ %i.cc, %.lr.ph962 ] ; 3 uses
  %.0786960 = phi i64 [ %.sroa.speculated679.1, %.lr.ph962.new ], [ 0, %.lr.ph962 ]
  %.0788959 = phi i64 [ %.sroa.speculated676.1, %.lr.ph962.new ], [ %i.px, %.lr.ph962 ]
  %niter1664 = phi i64 [ %niter1664.next.1, %.lr.ph962.new ], [ 0, %.lr.ph962 ]
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %.0335961
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !21
  %i.ux = zext i32 %i.uw to i64                   ; 3 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.ux ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !21
  %i.va = add nsw i32 %i.uz, 1
  store i32 %i.va, ptr %i.uy, align 4, !tbaa !21
  %.sroa.speculated679 = tail call i64 @llvm.umax.i64(i64 %.0786960, i64 %i.ux)
  %.sroa.speculated676 = tail call i64 @llvm.umin.i64(i64 %.0788959, i64 %i.ux)
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %.0335961
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !21
  %i.ve = zext i32 %i.vd to i64                   ; 3 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.ve ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !21
  %i.vh = add nsw i32 %i.vg, 1
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !21
  %.sroa.speculated679.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated679, i64 %i.ve) ; 3 uses
  %.sroa.speculated676.1 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated676, i64 %i.ve) ; 3 uses
  %i.vi = add nuw i64 %.0335961, 2                ; 2 uses
  %niter1664.next.1 = add i64 %niter1664, 2       ; 2 uses
  %niter1664.ncmp.1 = icmp eq i64 %niter1664.next.1, %unroll_iter1663
  br i1 %niter1664.ncmp.1, label %.loopexit838.loopexit.unr-lcssa, label %.lr.ph962.new, !llvm.loop !306

bb.al:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit477
  br i1 %i.ot, label %.lr.ph956, label %.loopexit838

.lr.ph956:                                        ; preds = %bb.al
  %i.vj = sub nuw i64 %.0336987, %i.ur
  %i.vk = load ptr, ptr %i.bm, align 8, !tbaa !107
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.vk, i64 %i.vj
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !112 ; 3 uses
  br i1 %i.pc, label %.epil.preheader1649, label %.lr.ph956.new

.lr.ph956.new:                                    ; preds = %.lr.ph956, %.lr.ph956.new
  %.0334954 = phi i64 [ %i.wa, %.lr.ph956.new ], [ %i.cc, %.lr.ph956 ] ; 3 uses
  %.1953 = phi i64 [ %.sroa.speculated670.1, %.lr.ph956.new ], [ 0, %.lr.ph956 ]
  %.1789952 = phi i64 [ %.sroa.speculated.1, %.lr.ph956.new ], [ %i.px, %.lr.ph956 ]
  %niter1656 = phi i64 [ %niter1656.next.1, %.lr.ph956.new ], [ 0, %.lr.ph956 ]
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.0334954
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !25
  %i.vp = zext i8 %i.vo to i64                    ; 3 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.vp ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !21
  %i.vs = add nsw i32 %i.vr, 1
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !21
  %.sroa.speculated670 = tail call i64 @llvm.umax.i64(i64 %.1953, i64 %i.vp)
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.1789952, i64 %i.vp)
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.0334954
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !25
  %i.vw = zext i8 %i.vv to i64                    ; 3 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.vw ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !21
  %i.vz = add nsw i32 %i.vy, 1
  store i32 %i.vz, ptr %i.vx, align 4, !tbaa !21
  %.sroa.speculated670.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated670, i64 %i.vw) ; 3 uses
  %.sroa.speculated.1 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.vw) ; 3 uses
  %i.wa = add nuw i64 %.0334954, 2                ; 2 uses
  %niter1656.next.1 = add i64 %niter1656, 2       ; 2 uses
  %niter1656.ncmp.1 = icmp eq i64 %niter1656.next.1, %unroll_iter1655
  br i1 %niter1656.ncmp.1, label %.loopexit838.loopexit1597.unr-lcssa, label %.lr.ph956.new, !llvm.loop !307

.loopexit838.loopexit.unr-lcssa:                  ; preds = %.lr.ph962.new
  br i1 %lcmp.mod1659.not, label %.loopexit838, label %.epil.preheader1657

.epil.preheader1657:                              ; preds = %.loopexit838.loopexit.unr-lcssa, %.lr.ph962
  %.0335961.epil.init = phi i64 [ %i.cc, %.lr.ph962 ], [ %i.vi, %.loopexit838.loopexit.unr-lcssa ]
  %.0786960.epil.init = phi i64 [ 0, %.lr.ph962 ], [ %.sroa.speculated679.1, %.loopexit838.loopexit.unr-lcssa ]
  %.0788959.epil.init = phi i64 [ %i.px, %.lr.ph962 ], [ %.sroa.speculated676.1, %.loopexit838.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1662)
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %.0335961.epil.init
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !21
  %i.wd = zext i32 %i.wc to i64                   ; 3 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.wd ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !21
  %i.wg = add nsw i32 %i.wf, 1
  store i32 %i.wg, ptr %i.we, align 4, !tbaa !21
  %.sroa.speculated679.epil = tail call i64 @llvm.umax.i64(i64 %.0786960.epil.init, i64 %i.wd)
  %.sroa.speculated676.epil = tail call i64 @llvm.umin.i64(i64 %.0788959.epil.init, i64 %i.wd)
  br label %.loopexit838

.loopexit838.loopexit1597.unr-lcssa:              ; preds = %.lr.ph956.new
  br i1 %lcmp.mod1651.not, label %.loopexit838, label %.epil.preheader1649

.epil.preheader1649:                              ; preds = %.loopexit838.loopexit1597.unr-lcssa, %.lr.ph956
  %.0334954.epil.init = phi i64 [ %i.cc, %.lr.ph956 ], [ %i.wa, %.loopexit838.loopexit1597.unr-lcssa ]
  %.1953.epil.init = phi i64 [ 0, %.lr.ph956 ], [ %.sroa.speculated670.1, %.loopexit838.loopexit1597.unr-lcssa ]
  %.1789952.epil.init = phi i64 [ %i.px, %.lr.ph956 ], [ %.sroa.speculated.1, %.loopexit838.loopexit1597.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1654)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.0334954.epil.init
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !25
  %i.wj = zext i8 %i.wi to i64                    ; 3 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.wj ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !21
  %i.wm = add nsw i32 %i.wl, 1
  store i32 %i.wm, ptr %i.wk, align 4, !tbaa !21
  %.sroa.speculated670.epil = tail call i64 @llvm.umax.i64(i64 %.1953.epil.init, i64 %i.wj)
  %.sroa.speculated.epil = tail call i64 @llvm.umin.i64(i64 %.1789952.epil.init, i64 %i.wj)
  br label %.loopexit838

.loopexit838:                                     ; preds = %.epil.preheader1649, %.loopexit838.loopexit1597.unr-lcssa, %.epil.preheader1657, %.loopexit838.loopexit.unr-lcssa, %bb.al, %.preheader837
  %.2790 = phi i64 [ %.sroa.speculated676.epil, %.epil.preheader1657 ], [ %i.px, %.preheader837 ], [ %i.px, %bb.al ], [ %.sroa.speculated676.1, %.loopexit838.loopexit.unr-lcssa ], [ %.sroa.speculated.1, %.loopexit838.loopexit1597.unr-lcssa ], [ %.sroa.speculated.epil, %.epil.preheader1649 ] ; 13 uses
  %.2787 = phi i64 [ %.sroa.speculated679.epil, %.epil.preheader1657 ], [ 0, %.preheader837 ], [ 0, %bb.al ], [ %.sroa.speculated679.1, %.loopexit838.loopexit.unr-lcssa ], [ %.sroa.speculated670.1, %.loopexit838.loopexit1597.unr-lcssa ], [ %.sroa.speculated670.epil, %.epil.preheader1649 ] ; 12 uses
  %i.wn = sub nsw i64 %.2787, %.2790              ; 10 uses
  %.not835 = icmp eq i64 %.2787, %.2790
  br i1 %.not835, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517, label %bb.am

bb.am:                                            ; preds = %.loopexit838
  %i.wo = ptrtoint ptr %.sroa.0718.0983 to i64
  %i.wp = ptrtoint ptr %.sroa.22721.0984 to i64
  %i.wq = sub i64 %i.wp, %i.wo                    ; 2 uses
  %i.wr = sdiv exact i64 %i.wq, 12                ; 3 uses
  %.not.i.i479 = icmp ult i64 %i.wr, %i.wn
  br i1 %.not.i.i479, label %bb.an, label %iter.check1336

iter.check1336:                                   ; preds = %bb.am
  %.idx.i.i.i = mul nuw nsw i64 %i.wn, 12
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0718.0983, i64 %.idx.i.i.i
  %i.wt = mul i64 %.2787, 12
  %i.wu = add i64 %i.wt, -12
  %.neg = mul i64 %.2790, -12
  %i.wv = add i64 %.neg, %i.wu                    ; 3 uses
  %i.ww = udiv i64 %i.wv, 12
  %i.wx = add nuw nsw i64 %i.ww, 1                ; 5 uses
  %min.iters.check1321 = icmp ult i64 %i.wv, 36
  br i1 %min.iters.check1321, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check1322

vector.main.loop.iter.check1322:                  ; preds = %iter.check1336
  %min.iters.check1323 = icmp ult i64 %i.wv, 372
  br i1 %min.iters.check1323, label %vec.epilog.ph1340, label %vector.ph1324

vector.ph1324:                                    ; preds = %vector.main.loop.iter.check1322
  %i.wy = and i64 %i.wx, 28
  %n.vec1325 = and i64 %i.wx, 4611686018427387872 ; 4 uses
  %i.wz = mul i64 %n.vec1325, 12
  %i.xa = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.wz
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1332, %vector.body1326 ] ; 2 uses
  %i.xb = mul i64 %index1327, 12                  ; 4 uses
  %next.gep1328 = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.xb
  %i.xc = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.xb
  %next.gep1329 = getelementptr i8, ptr %i.xc, i64 96
  %i.xd = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.xb
  %next.gep1330 = getelementptr i8, ptr %i.xd, i64 192
  %i.xe = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.xb
  %next.gep1331 = getelementptr i8, ptr %i.xe, i64 288
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1328, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1329, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1330, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1331, align 4
  %index.next1332 = add nuw i64 %index1327, 32    ; 2 uses
  %i.xf = icmp eq i64 %index.next1332, %n.vec1325
  br i1 %i.xf, label %middle.block1333, label %vector.body1326, !llvm.loop !308

middle.block1333:                                 ; preds = %vector.body1326
  %cmp.n1334 = icmp eq i64 %i.wx, %n.vec1325
  br i1 %cmp.n1334, label %.loopexit, label %vec.epilog.iter.check1338

vec.epilog.iter.check1338:                        ; preds = %middle.block1333
  %min.epilog.iters.check1339 = icmp eq i64 %i.wy, 0
  br i1 %min.epilog.iters.check1339, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph1340, !prof !371

vec.epilog.ph1340:                                ; preds = %vector.main.loop.iter.check1322, %vec.epilog.iter.check1338
  %vec.epilog.resume.val1335 = phi i64 [ %n.vec1325, %vec.epilog.iter.check1338 ], [ 0, %vector.main.loop.iter.check1322 ]
  %n.vec1341 = and i64 %i.wx, 4611686018427387900 ; 3 uses
  %i.xg = mul i64 %n.vec1341, 12
  %i.xh = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.xg
  br label %vec.epilog.vector.body1342

vec.epilog.vector.body1342:                       ; preds = %vec.epilog.vector.body1342, %vec.epilog.ph1340
  %index1343 = phi i64 [ %vec.epilog.resume.val1335, %vec.epilog.ph1340 ], [ %index.next1345, %vec.epilog.vector.body1342 ] ; 2 uses
  %i.xi = mul i64 %index1343, 12
  %next.gep1344 = getelementptr i8, ptr %.sroa.0718.0983, i64 %i.xi
  store <12 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1344, align 4
  %index.next1345 = add nuw i64 %index1343, 4     ; 2 uses
  %i.xj = icmp eq i64 %index.next1345, %n.vec1341
  br i1 %i.xj, label %vec.epilog.middle.block1346, label %vec.epilog.vector.body1342, !llvm.loop !309

vec.epilog.middle.block1346:                      ; preds = %vec.epilog.vector.body1342
  %cmp.n1347 = icmp eq i64 %i.wx, %n.vec1341
  br i1 %cmp.n1347, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check1336, %vec.epilog.iter.check1338, %vec.epilog.middle.block1346
  %.sroa.4.07.i.i.i.ph = phi ptr [ %.sroa.0718.0983, %iter.check1336 ], [ %i.xa, %vec.epilog.iter.check1338 ], [ %i.xh, %vec.epilog.middle.block1346 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.4.07.i.i.i = phi ptr [ %i.xl, %.lr.ph.i.i.i ], [ %.sroa.4.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 8
  store i32 0, ptr %i.xk, align 4
  store <2 x float> <float f0x7F7FFFFF, float 0.000000e+00>, ptr %.sroa.4.07.i.i.i, align 4, !tbaa !68
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.xl, %i.ws
  br i1 %.not.i.i.i480, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !310

bb.an:                                            ; preds = %bb.am
  %i.xm = icmp ugt i64 %i.wn, 1537228672809129301
  br i1 %i.xm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE20__throw_length_errorB8nn180100Ev() #34
  unreachable

bb.ap:                                            ; preds = %bb.an
  %.not.i10.i.i = icmp ult i64 %i.wr, 768614336404564650
  %i.xn = shl nuw nsw i64 %i.wr, 1
  %.sroa.speculated.i.i.i481 = tail call i64 @llvm.umax.i64(i64 %i.xn, i64 %i.wn)
  %.0.i.i.i482 = select i1 %.not.i10.i.i, i64 %.sroa.speculated.i.i.i481, i64 1537228672809129301 ; 3 uses
  %i.xo = icmp ugt i64 %.0.i.i.i482, 1537228672809129301
  br i1 %i.xo, label %bb.aq, label %iter.check1307

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

iter.check1307:                                   ; preds = %bb.ap
  %i.xp = mul nuw i64 %.0.i.i.i482, 12
  %i.xq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xp) #35 ; 12 uses
  %.idx.i11.i.i = mul nuw nsw i64 %i.wn, 12
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 %.idx.i11.i.i
  %i.xs = mul i64 %.2787, 12
  %i.xt = add i64 %i.xs, -12
  %.neg1590 = mul i64 %.2790, -12
  %i.xu = add i64 %.neg1590, %i.xt                ; 3 uses
  %i.xv = udiv i64 %i.xu, 12
  %i.xw = add nuw nsw i64 %i.xv, 1                ; 5 uses
  %min.iters.check1292 = icmp ult i64 %i.xu, 36
  br i1 %min.iters.check1292, label %.lr.ph.i12.i.i.preheader, label %vector.main.loop.iter.check1293

vector.main.loop.iter.check1293:                  ; preds = %iter.check1307
  %min.iters.check1294 = icmp ult i64 %i.xu, 372
  br i1 %min.iters.check1294, label %vec.epilog.ph1311, label %vector.ph1295

vector.ph1295:                                    ; preds = %vector.main.loop.iter.check1293
  %i.xx = and i64 %i.xw, 28
  %n.vec1296 = and i64 %i.xw, 4611686018427387872 ; 4 uses
  %i.xy = mul i64 %n.vec1296, 12
  %i.xz = getelementptr i8, ptr %i.xq, i64 %i.xy
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1303, %vector.body1297 ] ; 2 uses
  %i.ya = mul i64 %index1298, 12                  ; 4 uses
  %next.gep1299 = getelementptr i8, ptr %i.xq, i64 %i.ya
  %i.yb = getelementptr i8, ptr %i.xq, i64 %i.ya
  %next.gep1300 = getelementptr i8, ptr %i.yb, i64 96
  %i.yc = getelementptr i8, ptr %i.xq, i64 %i.ya
  %next.gep1301 = getelementptr i8, ptr %i.yc, i64 192
  %i.yd = getelementptr i8, ptr %i.xq, i64 %i.ya
  %next.gep1302 = getelementptr i8, ptr %i.yd, i64 288
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1299, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1300, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1301, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1302, align 4
  %index.next1303 = add nuw i64 %index1298, 32    ; 2 uses
  %i.ye = icmp eq i64 %index.next1303, %n.vec1296
  br i1 %i.ye, label %middle.block1304, label %vector.body1297, !llvm.loop !311

middle.block1304:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %i.xw, %n.vec1296
  br i1 %cmp.n1305, label %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i, label %vec.epilog.iter.check1309

vec.epilog.iter.check1309:                        ; preds = %middle.block1304
  %min.epilog.iters.check1310 = icmp eq i64 %i.xx, 0
  br i1 %min.epilog.iters.check1310, label %.lr.ph.i12.i.i.preheader, label %vec.epilog.ph1311, !prof !371

vec.epilog.ph1311:                                ; preds = %vector.main.loop.iter.check1293, %vec.epilog.iter.check1309
  %vec.epilog.resume.val1306 = phi i64 [ %n.vec1296, %vec.epilog.iter.check1309 ], [ 0, %vector.main.loop.iter.check1293 ]
  %n.vec1312 = and i64 %i.xw, 4611686018427387900 ; 3 uses
  %i.yf = mul i64 %n.vec1312, 12
  %i.yg = getelementptr i8, ptr %i.xq, i64 %i.yf
  br label %vec.epilog.vector.body1313

vec.epilog.vector.body1313:                       ; preds = %vec.epilog.vector.body1313, %vec.epilog.ph1311
  %index1314 = phi i64 [ %vec.epilog.resume.val1306, %vec.epilog.ph1311 ], [ %index.next1316, %vec.epilog.vector.body1313 ] ; 2 uses
  %i.yh = mul i64 %index1314, 12
  %next.gep1315 = getelementptr i8, ptr %i.xq, i64 %i.yh
  store <12 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1315, align 4
  %index.next1316 = add nuw i64 %index1314, 4     ; 2 uses
  %i.yi = icmp eq i64 %index.next1316, %n.vec1312
  br i1 %i.yi, label %vec.epilog.middle.block1317, label %vec.epilog.vector.body1313, !llvm.loop !312

vec.epilog.middle.block1317:                      ; preds = %vec.epilog.vector.body1313
  %cmp.n1318 = icmp eq i64 %i.xw, %n.vec1312
  br i1 %cmp.n1318, label %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i, label %.lr.ph.i12.i.i.preheader

.lr.ph.i12.i.i.preheader:                         ; preds = %iter.check1307, %vec.epilog.iter.check1309, %vec.epilog.middle.block1317
  %.sroa.0.06.i.i.i.ph = phi ptr [ %i.xq, %iter.check1307 ], [ %i.xz, %vec.epilog.iter.check1309 ], [ %i.yg, %vec.epilog.middle.block1317 ]
  br label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i12.i.i.preheader, %.lr.ph.i12.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.yk, %.lr.ph.i12.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i12.i.i.preheader ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 8
  store i32 0, ptr %i.yj, align 4
  store <2 x float> <float f0x7F7FFFFF, float 0.000000e+00>, ptr %.sroa.0.06.i.i.i, align 4, !tbaa !68
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 12 ; 2 uses
  %.not.i13.i.i = icmp eq ptr %i.yk, %i.xr
  br i1 %.not.i13.i.i, label %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i, label %.lr.ph.i12.i.i, !llvm.loop !313

_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i: ; preds = %.lr.ph.i12.i.i, %vec.epilog.middle.block1317, %middle.block1304
  %i.yl = getelementptr inbounds nuw [12 x i8], ptr %i.xq, i64 %.0.i.i.i482 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.sroa.0718.0983, null
  br i1 %.not.i14.i.i, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0718.0983, i64 noundef %i.wq) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block1333, %vec.epilog.middle.block1346, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i, %bb.ar
  %.sroa.0718.1.ph = phi ptr [ %i.xq, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i ], [ %i.xq, %bb.ar ], [ %.sroa.0718.0983, %middle.block1333 ], [ %.sroa.0718.0983, %vec.epilog.middle.block1346 ], [ %.sroa.0718.0983, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.22721.1.ph = phi ptr [ %i.yl, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i ], [ %i.yl, %bb.ar ], [ %.sroa.22721.0984, %middle.block1333 ], [ %.sroa.22721.0984, %vec.epilog.middle.block1346 ], [ %.sroa.22721.0984, %.lr.ph.i.i.i ] ; 5 uses
  %i.ym = ptrtoint ptr %.sroa.0715.0985 to i64
  %i.yn = ptrtoint ptr %.sroa.22.0986 to i64
  %i.yo = sub i64 %i.yn, %i.ym                    ; 2 uses
  %i.yp = sdiv exact i64 %i.yo, 12                ; 3 uses
  %.not.i.i492 = icmp ult i64 %i.yp, %i.wn
  br i1 %.not.i.i492, label %bb.as, label %iter.check1278

iter.check1278:                                   ; preds = %.loopexit
  %.idx.i.i.i494 = mul nuw nsw i64 %i.wn, 12
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0715.0985, i64 %.idx.i.i.i494
  %i.yr = mul i64 %.2787, 12
  %i.ys = add i64 %i.yr, -12
  %.neg1591 = mul i64 %.2790, -12
  %i.yt = add i64 %.neg1591, %i.ys                ; 3 uses
  %i.yu = udiv i64 %i.yt, 12
  %i.yv = add nuw nsw i64 %i.yu, 1                ; 5 uses
  %min.iters.check1263 = icmp ult i64 %i.yt, 36
  br i1 %min.iters.check1263, label %.lr.ph.i.i.i495.preheader, label %vector.main.loop.iter.check1264

vector.main.loop.iter.check1264:                  ; preds = %iter.check1278
  %min.iters.check1265 = icmp ult i64 %i.yt, 372
  br i1 %min.iters.check1265, label %vec.epilog.ph1282, label %vector.ph1266

vector.ph1266:                                    ; preds = %vector.main.loop.iter.check1264
  %i.yw = and i64 %i.yv, 28
  %n.vec1267 = and i64 %i.yv, 4611686018427387872 ; 4 uses
  %i.yx = mul i64 %n.vec1267, 12
  %i.yy = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.yx
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1274, %vector.body1268 ] ; 2 uses
  %i.yz = mul i64 %index1269, 12                  ; 4 uses
  %next.gep1270 = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.yz
  %i.za = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.yz
  %next.gep1271 = getelementptr i8, ptr %i.za, i64 96
  %i.zb = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.yz
  %next.gep1272 = getelementptr i8, ptr %i.zb, i64 192
  %i.zc = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.yz
  %next.gep1273 = getelementptr i8, ptr %i.zc, i64 288
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1270, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1271, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1272, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1273, align 4
  %index.next1274 = add nuw i64 %index1269, 32    ; 2 uses
  %i.zd = icmp eq i64 %index.next1274, %n.vec1267
  br i1 %i.zd, label %middle.block1275, label %vector.body1268, !llvm.loop !314

middle.block1275:                                 ; preds = %vector.body1268
  %cmp.n1276 = icmp eq i64 %i.yv, %n.vec1267
  br i1 %cmp.n1276, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517, label %vec.epilog.iter.check1280

vec.epilog.iter.check1280:                        ; preds = %middle.block1275
  %min.epilog.iters.check1281 = icmp eq i64 %i.yw, 0
  br i1 %min.epilog.iters.check1281, label %.lr.ph.i.i.i495.preheader, label %vec.epilog.ph1282, !prof !371

vec.epilog.ph1282:                                ; preds = %vector.main.loop.iter.check1264, %vec.epilog.iter.check1280
  %vec.epilog.resume.val1277 = phi i64 [ %n.vec1267, %vec.epilog.iter.check1280 ], [ 0, %vector.main.loop.iter.check1264 ]
  %n.vec1283 = and i64 %i.yv, 4611686018427387900 ; 3 uses
  %i.ze = mul i64 %n.vec1283, 12
  %i.zf = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.ze
  br label %vec.epilog.vector.body1284

vec.epilog.vector.body1284:                       ; preds = %vec.epilog.vector.body1284, %vec.epilog.ph1282
  %index1285 = phi i64 [ %vec.epilog.resume.val1277, %vec.epilog.ph1282 ], [ %index.next1287, %vec.epilog.vector.body1284 ] ; 2 uses
  %i.zg = mul i64 %index1285, 12
  %next.gep1286 = getelementptr i8, ptr %.sroa.0715.0985, i64 %i.zg
  store <12 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1286, align 4
  %index.next1287 = add nuw i64 %index1285, 4     ; 2 uses
  %i.zh = icmp eq i64 %index.next1287, %n.vec1283
  br i1 %i.zh, label %vec.epilog.middle.block1288, label %vec.epilog.vector.body1284, !llvm.loop !315

vec.epilog.middle.block1288:                      ; preds = %vec.epilog.vector.body1284
  %cmp.n1289 = icmp eq i64 %i.yv, %n.vec1283
  br i1 %cmp.n1289, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517, label %.lr.ph.i.i.i495.preheader

.lr.ph.i.i.i495.preheader:                        ; preds = %iter.check1278, %vec.epilog.iter.check1280, %vec.epilog.middle.block1288
  %.sroa.4.07.i.i.i496.ph = phi ptr [ %.sroa.0715.0985, %iter.check1278 ], [ %i.yy, %vec.epilog.iter.check1280 ], [ %i.zf, %vec.epilog.middle.block1288 ]
  br label %.lr.ph.i.i.i495

.lr.ph.i.i.i495:                                  ; preds = %.lr.ph.i.i.i495.preheader, %.lr.ph.i.i.i495
  %.sroa.4.07.i.i.i496 = phi ptr [ %i.zj, %.lr.ph.i.i.i495 ], [ %.sroa.4.07.i.i.i496.ph, %.lr.ph.i.i.i495.preheader ] ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i496, i64 8
  store i32 0, ptr %i.zi, align 4
  store <2 x float> <float f0x7F7FFFFF, float 0.000000e+00>, ptr %.sroa.4.07.i.i.i496, align 4, !tbaa !68
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i496, i64 12 ; 2 uses
  %.not.i.i.i497 = icmp eq ptr %i.zj, %i.yq
  br i1 %.not.i.i.i497, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517, label %.lr.ph.i.i.i495, !llvm.loop !316

bb.as:                                            ; preds = %.loopexit
  %i.zk = icmp ugt i64 %i.wn, 1537228672809129301
  br i1 %i.zk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @_ZNKSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE20__throw_length_errorB8nn180100Ev() #34
  unreachable

bb.au:                                            ; preds = %bb.as
  %.not.i10.i.i499 = icmp ult i64 %i.yp, 768614336404564650
  %i.zl = shl nuw nsw i64 %i.yp, 1
  %.sroa.speculated.i.i.i500 = tail call i64 @llvm.umax.i64(i64 %i.zl, i64 %i.wn)
  %.0.i.i.i501 = select i1 %.not.i10.i.i499, i64 %.sroa.speculated.i.i.i500, i64 1537228672809129301 ; 3 uses
  %i.zm = icmp ugt i64 %.0.i.i.i501, 1537228672809129301
  br i1 %i.zm, label %bb.av, label %iter.check1249

bb.av:                                            ; preds = %bb.au
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

iter.check1249:                                   ; preds = %bb.au
  %i.zn = mul nuw i64 %.0.i.i.i501, 12
  %i.zo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zn) #35 ; 12 uses
  %.idx.i11.i.i503 = mul nuw nsw i64 %i.wn, 12
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.idx.i11.i.i503
  %i.zq = mul i64 %.2787, 12
  %i.zr = add i64 %i.zq, -12
  %.neg1592 = mul i64 %.2790, -12
  %i.zs = add i64 %.neg1592, %i.zr                ; 3 uses
  %i.zt = udiv i64 %i.zs, 12
  %i.zu = add nuw nsw i64 %i.zt, 1                ; 5 uses
  %min.iters.check1234 = icmp ult i64 %i.zs, 36
  br i1 %min.iters.check1234, label %.lr.ph.i12.i.i504.preheader, label %vector.main.loop.iter.check1235

vector.main.loop.iter.check1235:                  ; preds = %iter.check1249
  %min.iters.check1236 = icmp ult i64 %i.zs, 372
  br i1 %min.iters.check1236, label %vec.epilog.ph1253, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.main.loop.iter.check1235
  %i.zv = and i64 %i.zu, 28
  %n.vec1238 = and i64 %i.zu, 4611686018427387872 ; 4 uses
  %i.zw = mul i64 %n.vec1238, 12
  %i.zx = getelementptr i8, ptr %i.zo, i64 %i.zw
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1245, %vector.body1239 ] ; 2 uses
  %i.zy = mul i64 %index1240, 12                  ; 4 uses
  %next.gep1241 = getelementptr i8, ptr %i.zo, i64 %i.zy
  %i.zz = getelementptr i8, ptr %i.zo, i64 %i.zy
  %next.gep1242 = getelementptr i8, ptr %i.zz, i64 96
  %i.aaa = getelementptr i8, ptr %i.zo, i64 %i.zy
  %next.gep1243 = getelementptr i8, ptr %i.aaa, i64 192
  %i.aab = getelementptr i8, ptr %i.zo, i64 %i.zy
  %next.gep1244 = getelementptr i8, ptr %i.aab, i64 288
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1241, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1242, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1243, align 4
  store <24 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1244, align 4
  %index.next1245 = add nuw i64 %index1240, 32    ; 2 uses
  %i.aac = icmp eq i64 %index.next1245, %n.vec1238
  br i1 %i.aac, label %middle.block1246, label %vector.body1239, !llvm.loop !317

middle.block1246:                                 ; preds = %vector.body1239
  %cmp.n1247 = icmp eq i64 %i.zu, %n.vec1238
  br i1 %cmp.n1247, label %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507, label %vec.epilog.iter.check1251

vec.epilog.iter.check1251:                        ; preds = %middle.block1246
  %min.epilog.iters.check1252 = icmp eq i64 %i.zv, 0
  br i1 %min.epilog.iters.check1252, label %.lr.ph.i12.i.i504.preheader, label %vec.epilog.ph1253, !prof !371

vec.epilog.ph1253:                                ; preds = %vector.main.loop.iter.check1235, %vec.epilog.iter.check1251
  %vec.epilog.resume.val1248 = phi i64 [ %n.vec1238, %vec.epilog.iter.check1251 ], [ 0, %vector.main.loop.iter.check1235 ]
  %n.vec1254 = and i64 %i.zu, 4611686018427387900 ; 3 uses
  %i.aad = mul i64 %n.vec1254, 12
  %i.aae = getelementptr i8, ptr %i.zo, i64 %i.aad
  br label %vec.epilog.vector.body1255

vec.epilog.vector.body1255:                       ; preds = %vec.epilog.vector.body1255, %vec.epilog.ph1253
  %index1256 = phi i64 [ %vec.epilog.resume.val1248, %vec.epilog.ph1253 ], [ %index.next1258, %vec.epilog.vector.body1255 ] ; 2 uses
  %i.aaf = mul i64 %index1256, 12
  %next.gep1257 = getelementptr i8, ptr %i.zo, i64 %i.aaf
  store <12 x float> <float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00, float f0x7F7FFFFF, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep1257, align 4
  %index.next1258 = add nuw i64 %index1256, 4     ; 2 uses
  %i.aag = icmp eq i64 %index.next1258, %n.vec1254
  br i1 %i.aag, label %vec.epilog.middle.block1259, label %vec.epilog.vector.body1255, !llvm.loop !318

vec.epilog.middle.block1259:                      ; preds = %vec.epilog.vector.body1255
  %cmp.n1260 = icmp eq i64 %i.zu, %n.vec1254
  br i1 %cmp.n1260, label %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507, label %.lr.ph.i12.i.i504.preheader

.lr.ph.i12.i.i504.preheader:                      ; preds = %iter.check1249, %vec.epilog.iter.check1251, %vec.epilog.middle.block1259
  %.sroa.0.06.i.i.i505.ph = phi ptr [ %i.zo, %iter.check1249 ], [ %i.zx, %vec.epilog.iter.check1251 ], [ %i.aae, %vec.epilog.middle.block1259 ]
  br label %.lr.ph.i12.i.i504

.lr.ph.i12.i.i504:                                ; preds = %.lr.ph.i12.i.i504.preheader, %.lr.ph.i12.i.i504
  %.sroa.0.06.i.i.i505 = phi ptr [ %i.aai, %.lr.ph.i12.i.i504 ], [ %.sroa.0.06.i.i.i505.ph, %.lr.ph.i12.i.i504.preheader ] ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i505, i64 8
  store i32 0, ptr %i.aah, align 4
  store <2 x float> <float f0x7F7FFFFF, float 0.000000e+00>, ptr %.sroa.0.06.i.i.i505, align 4, !tbaa !68
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i505, i64 12 ; 2 uses
  %.not.i13.i.i506 = icmp eq ptr %i.aai, %i.zp
  br i1 %.not.i13.i.i506, label %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507, label %.lr.ph.i12.i.i504, !llvm.loop !319

_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507: ; preds = %.lr.ph.i12.i.i504, %vec.epilog.middle.block1259, %middle.block1246
  %i.aaj = getelementptr inbounds nuw [12 x i8], ptr %i.zo, i64 %.0.i.i.i501 ; 2 uses
  %.not.i14.i.i516 = icmp eq ptr %.sroa.0715.0985, null
  br i1 %.not.i14.i.i516, label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0985, i64 noundef %i.yo) #36
  br label %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517

_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517: ; preds = %.lr.ph.i.i.i495, %middle.block1275, %vec.epilog.middle.block1288, %.loopexit838, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507, %bb.aw
  %.sroa.22721.1824 = phi ptr [ %.sroa.22721.1.ph, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507 ], [ %.sroa.22721.1.ph, %bb.aw ], [ %.sroa.22721.0984, %.loopexit838 ], [ %.sroa.22721.1.ph, %middle.block1275 ], [ %.sroa.22721.1.ph, %vec.epilog.middle.block1288 ], [ %.sroa.22721.1.ph, %.lr.ph.i.i.i495 ] ; 2 uses
  %.sroa.0718.1822 = phi ptr [ %.sroa.0718.1.ph, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507 ], [ %.sroa.0718.1.ph, %bb.aw ], [ %.sroa.0718.0983, %.loopexit838 ], [ %.sroa.0718.1.ph, %middle.block1275 ], [ %.sroa.0718.1.ph, %vec.epilog.middle.block1288 ], [ %.sroa.0718.1.ph, %.lr.ph.i.i.i495 ] ; 4 uses
  %.sroa.0715.1 = phi ptr [ %i.zo, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507 ], [ %i.zo, %bb.aw ], [ %.sroa.0715.0985, %.loopexit838 ], [ %.sroa.0715.0985, %middle.block1275 ], [ %.sroa.0715.0985, %vec.epilog.middle.block1288 ], [ %.sroa.0715.0985, %.lr.ph.i.i.i495 ] ; 4 uses
  %.sroa.22.1 = phi ptr [ %i.aaj, %_ZNSt3__114__split_bufferIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS_6vectorINS1_21ModularMultiplierInfoENS_9allocatorIS6_EEEENS_5arrayINSC_IjLm2EEELm2EEEfPNS5_INS1_20PropertyDecisionNodeENS7_ISF_EEEEE8CostInfoRNS7_ISJ_EEE18__construct_at_endEm.exit.i.i507 ], [ %i.aaj, %bb.aw ], [ %.sroa.22.0986, %.loopexit838 ], [ %.sroa.22.0986, %middle.block1275 ], [ %.sroa.22.0986, %vec.epilog.middle.block1288 ], [ %.sroa.22.0986, %.lr.ph.i.i.i495 ] ; 2 uses
  br i1 %.not1000, label %.lr.ph974, label %.preheader

.lr.ph974:                                        ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517
  %i.aak = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.0336987
  %i.aal = icmp ult i64 %.2790, %.2787
  %i.aam = shl i64 %.2790, 2
  %i.aan = add i64 %i.aam, 4
  %i.aao = mul i64 %.0349.lcssa, %i.aan
  br label %bb.ax

.preheader:                                       ; preds = %._crit_edge972, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8CostInfoNS6_ISI_EEE6resizeEm.exit517
  %i.aap = icmp ult i64 %.2790, %.2787
  br i1 %i.aap, label %.lr.ph977, label %._crit_edge978

.lr.ph977:                                        ; preds = %.preheader
  %i.aaq = load ptr, ptr %14, align 8, !tbaa !85
  %i.aar = shl nuw i64 1, %.0336987
  %i.aas = and i64 %i.aar, %i.cg
  %i.aat = icmp ne i64 %i.aas, 0
  br label %bb.bh

bb.ax:                                            ; preds = %.lr.ph974, %._crit_edge972
  %.0333973 = phi i64 [ 0, %.lr.ph974 ], [ %i.adi, %._crit_edge972 ] ; 5 uses
  %i.aau = load ptr, ptr %0, align 8, !tbaa !73
  %i.aav = getelementptr inbounds nuw [24 x i8], ptr %i.aau, i64 %.0333973 ; 2 uses
  %i.aaw = load i64, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  %i.aax = icmp ult i64 %.0336987, %i.aaw
  br i1 %i.aax, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ot, label %.lr.ph.i518, label %_ZN3jxl6N_AVX224CollectExtraBitsIncreaseILb1EEEvRNS_11TreeSamplesERKNSt3__16vectorINS_13ResidualTokenENS4_9allocatorIS6_EEEERNS5_IiNS7_IiEEEERNS5_ImNS7_ImEEEEmmmm.exit

.lr.ph.i518:                                      ; preds = %bb.ay
  %i.aay = load ptr, ptr %i.aav, align 8, !tbaa !78
  %i.aaz = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.aba = load ptr, ptr %i.aak, align 8, !tbaa !65
  %i.abb = load ptr, ptr %15, align 8, !tbaa !85
  %i.abc = load ptr, ptr %16, align 8, !tbaa !122
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i518
  %.021.i = phi i64 [ %i.cc, %.lr.ph.i518 ], [ %i.abz, %bb.az ] ; 4 uses
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %i.aay, i64 %.021.i ; 2 uses
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %.021.i
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !45 ; 2 uses
  %i.abg = zext i16 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %.021.i
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !21
  %i.abj = zext i32 %i.abi to i64                 ; 2 uses
  %i.abk = load i8, ptr %i.abd, align 1, !tbaa !80
  %i.abl = zext i8 %i.abk to i64
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !94
  %i.abo = zext i8 %i.abn to i64
  %i.abp = mul nuw nsw i64 %i.abo, %i.abg
  %i.abq = mul nuw nsw i64 %.0349.lcssa, %i.abj
  %i.abr = getelementptr [4 x i8], ptr %i.abb, i64 %i.abq
  %i.abs = getelementptr [4 x i8], ptr %i.abr, i64 %i.abl ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !21
  %i.abu = zext i16 %i.abf to i32
  %i.abv = add i32 %i.abt, %i.abu
  store i32 %i.abv, ptr %i.abs, align 4, !tbaa !21
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.abj ; 2 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !47
  %i.aby = add i64 %i.abx, %i.abp
  store i64 %i.aby, ptr %i.abw, align 8, !tbaa !47
  %i.abz = add nuw i64 %.021.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.abz, %i.ce
  br i1 %exitcond.not.i, label %_ZN3jxl6N_AVX224CollectExtraBitsIncreaseILb1EEEvRNS_11TreeSamplesERKNSt3__16vectorINS_13ResidualTokenENS4_9allocatorIS6_EEEERNS5_IiNS7_IiEEEERNS5_ImNS7_ImEEEEmmmm.exit, label %bb.az, !llvm.loop !320

bb.ba:                                            ; preds = %bb.ax
  br i1 %i.ot, label %.lr.ph.i519, label %_ZN3jxl6N_AVX224CollectExtraBitsIncreaseILb1EEEvRNS_11TreeSamplesERKNSt3__16vectorINS_13ResidualTokenENS4_9allocatorIS6_EEEERNS5_IiNS7_IiEEEERNS5_ImNS7_ImEEEEmmmm.exit

.lr.ph.i519:                                      ; preds = %bb.ba
  %i.aca = sub nuw i64 %.0336987, %i.aaw
  %i.acb = load ptr, ptr %i.aav, align 8, !tbaa !78
  %i.acc = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.acd = load ptr, ptr %i.bm, align 8, !tbaa !107
  %i.ace = getelementptr inbounds nuw [24 x i8], ptr %i.acd, i64 %i.aca
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !112
  %i.acg = load ptr, ptr %15, align 8, !tbaa !85
  %i.ach = load ptr, ptr %16, align 8, !tbaa !122
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i519
  %.021.i520 = phi i64 [ %i.cc, %.lr.ph.i519 ], [ %i.ade, %bb.bb ] ; 4 uses
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.acb, i64 %.021.i520 ; 2 uses
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %i.acc, i64 %.021.i520
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !45 ; 2 uses
  %i.acl = zext i16 %i.ack to i64
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 %.021.i520
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !25
  %i.aco = zext i8 %i.acn to i64                  ; 2 uses
  %i.acp = load i8, ptr %i.aci, align 1, !tbaa !80
  %i.acq = zext i8 %i.acp to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aci, i64 1
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !94
  %i.act = zext i8 %i.acs to i64
  %i.acu = mul nuw nsw i64 %i.act, %i.acl
  %i.acv = mul nuw nsw i64 %.0349.lcssa, %i.aco
  %i.acw = getelementptr [4 x i8], ptr %i.acg, i64 %i.acv
  %i.acx = getelementptr [4 x i8], ptr %i.acw, i64 %i.acq ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !21
  %i.acz = zext i16 %i.ack to i32
  %i.ada = add i32 %i.acy, %i.acz
  store i32 %i.ada, ptr %i.acx, align 4, !tbaa !21
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.aco ; 2 uses
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !47
  %i.add = add i64 %i.adc, %i.acu
end_hunk_0
