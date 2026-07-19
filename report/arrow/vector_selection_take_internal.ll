inline.NumInlined: 4651
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i8 %i.fee, ptr %i.fec, align 1, !tbaa !98, !noalias !605
  %i.fef = add nsw i64 %.183.i47.i.i591, 1
  br label %bb.zf

bb.ze:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i.i595, %bb.zc, %bb.zb, %bb.za, %bb.yy
  %i.feg = shl nsw i64 %.3.i48.i.i590, 2
  %i.feh = getelementptr inbounds i8, ptr %i.eyl, i64 %i.feg
  store i32 0, ptr %i.feh, align 1, !noalias !605
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %bb.zd
  %.284.i.i.i593 = phi i64 [ %i.fef, %bb.zd ], [ %.183.i47.i.i591, %bb.ze ] ; 2 uses
  %i.fei = add nsw i64 %.3.i48.i.i590, 1          ; 2 uses
  %i.fej = add nuw nsw i64 %.078.i49.i.i589, 1    ; 2 uses
  %exitcond66.not.i.i594 = icmp eq i64 %i.fej, %i.fcu
  br i1 %exitcond66.not.i.i594, label %.loopexit.i.i558, label %.lr.ph50.i.i588, !llvm.loop !610

bb.zg:                                            ; preds = %bb.yx
  %i.fek = icmp sgt i32 %i.fcr, 0
  %i.fel = sext i16 %.sroa.0.0.extract.trunc.i.i.i549 to i64 ; 2 uses
  br i1 %i.fek, label %.preheader27.i.i574, label %.loopexit.sink.split.i.i555

.preheader27.i.i574:                              ; preds = %bb.zg
  %i.fem = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i549, 0
  br i1 %i.fem, label %.lr.ph44.i.i575, label %.loopexit.i.i558

.lr.ph44.i.i575:                                  ; preds = %.preheader27.i.i574, %bb.zu
  %.0.i43.i.i576 = phi i64 [ %i.fgs, %bb.zu ], [ 0, %.preheader27.i.i574 ]
  %.4.i42.i.i577 = phi i64 [ %i.fgr, %bb.zu ], [ %.081.i54.i.i547, %.preheader27.i.i574 ] ; 10 uses
  %.385.i41.i.i578 = phi i64 [ %.486.i.i.i580, %bb.zu ], [ %.082.i53.i.i548, %.preheader27.i.i574 ] ; 2 uses
  %i.fen = load ptr, ptr %i.eyq, align 8, !tbaa !66, !noalias !605 ; 2 uses
  %.not.i26.i.i579 = icmp eq ptr %i.fen, null
  br i1 %.not.i26.i.i579, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %.lr.ph44.i.i575
  %i.feo = load i64, ptr %i.eyo, align 8, !tbaa !99, !noalias !605
  %i.fep = add nsw i64 %i.feo, %.4.i42.i.i577     ; 2 uses
  %i.feq = lshr i64 %i.fep, 3
  %i.fer = getelementptr inbounds nuw i8, ptr %i.fen, i64 %i.feq
  %i.fes = load i8, ptr %i.fer, align 1, !tbaa !98, !noalias !605
  %i.fet = trunc i64 %i.fep to i8
  %i.feu = and i8 %i.fet, 7
  %i.fev = lshr i8 %i.fes, %i.feu
  %i.few = trunc i8 %i.fev to i1
  br i1 %i.few, label %bb.zm, label %bb.zt

bb.zi:                                            ; preds = %.lr.ph44.i.i575
  %i.fex = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !605
  %i.fey = getelementptr inbounds nuw i8, ptr %i.fex, i64 40
  %i.fez = load i32, ptr %i.fey, align 8, !tbaa !42, !noalias !605
  switch i32 %i.fez, label %bb.zl [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585
    i32 28, label %bb.zj
    i32 38, label %bb.zk
  ]

bb.zj:                                            ; preds = %bb.zi
  %i.ffa = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i577), !noalias !605
  br i1 %i.ffa, label %bb.zt, label %bb.zm

bb.zk:                                            ; preds = %bb.zi
  %i.ffb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i577), !noalias !605
  br i1 %i.ffb, label %bb.zt, label %bb.zm

bb.zl:                                            ; preds = %bb.zi
  %i.ffc = load i64, ptr %i.ezw, align 8, !tbaa !71, !noalias !605
  %i.ffd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !605
  %.not24.i.i586 = icmp eq i64 %i.ffc, %i.ffd
  br i1 %.not24.i.i586, label %bb.zt, label %bb.zm

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585:     ; preds = %bb.zi
  %i.ffe = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i577), !noalias !605
  br i1 %i.ffe, label %bb.zt, label %bb.zm

bb.zm:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585, %bb.zl, %bb.zk, %bb.zj, %bb.zh
  %i.fff = getelementptr inbounds i8, ptr %i.eyt, i64 %.4.i42.i.i577 ; 2 uses
  %i.ffg = load i8, ptr %i.fff, align 1, !tbaa !98, !noalias !605
  %i.ffh = zext i8 %i.ffg to i64                  ; 4 uses
  %i.ffi = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !605 ; 2 uses
  %.not.i29.i.i582 = icmp eq ptr %i.ffi, null
  br i1 %.not.i29.i.i582, label %bb.zo, label %bb.zn

bb.zn:                                            ; preds = %bb.zm
  %i.ffj = load i64, ptr %i.ezx, align 8, !tbaa !99, !noalias !605
  %i.ffk = add nsw i64 %i.ffj, %i.ffh             ; 2 uses
  %i.ffl = lshr i64 %i.ffk, 3
  %i.ffm = getelementptr inbounds nuw i8, ptr %i.ffi, i64 %i.ffl
  %i.ffn = load i8, ptr %i.ffm, align 1, !tbaa !98, !noalias !605
  %i.ffo = trunc i64 %i.ffk to i8
  %i.ffp = and i8 %i.ffo, 7
  %i.ffq = lshr i8 %i.ffn, %i.ffp
  %i.ffr = trunc i8 %i.ffq to i1
  br i1 %i.ffr, label %bb.zs, label %bb.zt

bb.zo:                                            ; preds = %bb.zm
  %i.ffs = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !605
  %i.fft = getelementptr inbounds nuw i8, ptr %i.ffs, i64 40
  %i.ffu = load i32, ptr %i.fft, align 8, !tbaa !42, !noalias !605
  switch i32 %i.ffu, label %bb.zr [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583
    i32 28, label %bb.zp
    i32 38, label %bb.zq
  ]

bb.zp:                                            ; preds = %bb.zo
  %i.ffv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ffh), !noalias !605
  br i1 %i.ffv, label %bb.zt, label %bb.zs

bb.zq:                                            ; preds = %bb.zo
  %i.ffw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ffh), !noalias !605
  br i1 %i.ffw, label %bb.zt, label %bb.zs

bb.zr:                                            ; preds = %bb.zo
  %i.ffx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !605
  %i.ffy = load i64, ptr %i.eym, align 8, !tbaa !62, !noalias !605
  %.not25.i.i584 = icmp eq i64 %i.ffx, %i.ffy
  br i1 %.not25.i.i584, label %bb.zt, label %bb.zs

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583:     ; preds = %bb.zo
  %i.ffz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ffh), !noalias !605
  br i1 %i.ffz, label %bb.zt, label %bb.zs

bb.zs:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583, %bb.zr, %bb.zq, %bb.zp, %bb.zn
  %i.fga = shl nsw i64 %.4.i42.i.i577, 2
  %i.fgb = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fga
  %i.fgc = load i8, ptr %i.fff, align 1, !tbaa !98, !noalias !605
  %i.fgd = zext i8 %i.fgc to i64
  %i.fge = shl nuw nsw i64 %i.fgd, 2
  %i.fgf = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fge
  %i.fgg = load i32, ptr %i.fgf, align 1, !noalias !605
  store i32 %i.fgg, ptr %i.fgb, align 1, !noalias !605
  %i.fgh = srem i64 %.4.i42.i.i577, 8
  %i.fgi = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.fgh
  %i.fgj = load i8, ptr %i.fgi, align 1, !tbaa !98, !noalias !605
  %i.fgk = sdiv i64 %.4.i42.i.i577, 8
  %i.fgl = getelementptr inbounds i8, ptr %.0.i.i.i.i544, i64 %i.fgk ; 2 uses
  %i.fgm = load i8, ptr %i.fgl, align 1, !tbaa !98, !noalias !605
  %i.fgn = or i8 %i.fgm, %i.fgj
  store i8 %i.fgn, ptr %i.fgl, align 1, !tbaa !98, !noalias !605
  %i.fgo = add nsw i64 %.385.i41.i.i578, 1
  br label %bb.zu

bb.zt:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583, %bb.zr, %bb.zq, %bb.zp, %bb.zn, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585, %bb.zl, %bb.zk, %bb.zj, %bb.zh
  %i.fgp = shl nsw i64 %.4.i42.i.i577, 2
  %i.fgq = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fgp
  store i32 0, ptr %i.fgq, align 1, !noalias !605
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zt, %bb.zs
  %.486.i.i.i580 = phi i64 [ %i.fgo, %bb.zs ], [ %.385.i41.i.i578, %bb.zt ] ; 2 uses
  %i.fgr = add nsw i64 %.4.i42.i.i577, 1          ; 2 uses
  %i.fgs = add nuw nsw i64 %.0.i43.i.i576, 1      ; 2 uses
  %exitcond65.not.i.i581 = icmp eq i64 %i.fgs, %i.fel
  br i1 %exitcond65.not.i.i581, label %.loopexit.i.i558, label %.lr.ph44.i.i575, !llvm.loop !611

.loopexit.sink.split.i.i555:                      ; preds = %bb.zg, %bb.yo
  %.sink86.i.i556 = phi i64 [ %i.fbe, %bb.yo ], [ %i.fel, %bb.zg ] ; 2 uses
  %.587.i.ph.i.i557 = phi i64 [ %i.fae, %bb.yo ], [ %.082.i53.i.i548, %bb.zg ]
  %i.fgt = shl nsw i64 %.081.i54.i.i547, 2
  %i.fgu = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fgt
  %i.fgv = shl nsw i64 %.sink86.i.i556, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.fgu, i8 0, i64 %i.fgv, i1 false), !noalias !605
  %i.fgw = add nsw i64 %.sink86.i.i556, %.081.i54.i.i547
  br label %.loopexit.i.i558

.loopexit.i.i558.loopexit3198.unr-lcssa:          ; preds = %.lr.ph39.i.i569
  %i.fgx = and i16 %.sroa.0.0.extract.trunc.i.i.i549, 1
  %lcmp.mod3470.not = icmp eq i16 %i.fgx, 0
  br i1 %lcmp.mod3470.not, label %.loopexit.i.i558, label %.lr.ph39.i.i569.epil.preheader

.lr.ph39.i.i569.epil.preheader:                   ; preds = %.loopexit.i.i558.loopexit3198.unr-lcssa, %.lr.ph39.i.i569.preheader
  %.1.i37.i.i571.epil.init = phi i64 [ %.081.i54.i.i547, %.lr.ph39.i.i569.preheader ], [ %i.fbc, %.loopexit.i.i558.loopexit3198.unr-lcssa ] ; 3 uses
  %lcmp.mod3472 = trunc i32 %i.ezy to i1
  call void @llvm.assume(i1 %lcmp.mod3472)
  %i.fgy = shl nsw i64 %.1.i37.i.i571.epil.init, 2
  %i.fgz = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fgy
  %i.fha = getelementptr inbounds i8, ptr %i.eyt, i64 %.1.i37.i.i571.epil.init
  %i.fhb = load i8, ptr %i.fha, align 1, !tbaa !98, !noalias !605
  %i.fhc = zext i8 %i.fhb to i64
  %i.fhd = shl nuw nsw i64 %i.fhc, 2
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fhd
  %i.fhf = load i32, ptr %i.fhe, align 1, !noalias !605
  store i32 %i.fhf, ptr %i.fgz, align 1, !noalias !605
  %i.fhg = add nsw i64 %.1.i37.i.i571.epil.init, 1
  br label %.loopexit.i.i558

.loopexit.i.i558:                                 ; preds = %bb.yw, %.lr.ph39.i.i569.epil.preheader, %.loopexit.i.i558.loopexit3198.unr-lcssa, %bb.zu, %bb.zf, %.loopexit.sink.split.i.i555, %.preheader27.i.i574, %.preheader.i.i587, %.preheader30.i.i561, %bb.yn
  %.587.i.i.i559 = phi i64 [ %.587.i.ph.i.i557, %.loopexit.sink.split.i.i555 ], [ %i.fae, %bb.yn ], [ %.486.i.i.i580, %bb.zu ], [ %i.fae, %.lr.ph39.i.i569.epil.preheader ], [ %i.fae, %.preheader30.i.i561 ], [ %.082.i53.i.i548, %.preheader.i.i587 ], [ %.082.i53.i.i548, %.preheader27.i.i574 ], [ %.284.i.i.i593, %bb.zf ], [ %i.fae, %.loopexit.i.i558.loopexit3198.unr-lcssa ], [ %i.fae, %bb.yw ] ; 2 uses
  %.5.i.i.i560 = phi i64 [ %i.fgw, %.loopexit.sink.split.i.i555 ], [ %.081.i54.i.i547, %bb.yn ], [ %i.fgr, %bb.zu ], [ %i.fhg, %.lr.ph39.i.i569.epil.preheader ], [ %.081.i54.i.i547, %.preheader30.i.i561 ], [ %.081.i54.i.i547, %.preheader.i.i587 ], [ %.081.i54.i.i547, %.preheader27.i.i574 ], [ %i.fei, %bb.zf ], [ %i.fbc, %.loopexit.i.i558.loopexit3198.unr-lcssa ], [ %i.fcp, %bb.yw ] ; 2 uses
  %i.fhh = icmp slt i64 %.5.i.i.i560, %i.eyn
  br i1 %i.fhh, label %bb.yl, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !612

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i558, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543
  %.082.i.lcssa.i.i545 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543 ], [ %.587.i.i.i559, %.loopexit.i.i558 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !605
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i539:                                    ; preds = %.lr.ph.i.i539, %.lr.ph.i.i539.preheader.new
  %.0.i1833.i.i540 = phi i64 [ 0, %.lr.ph.i.i539.preheader.new ], [ %i.fhz, %.lr.ph.i.i539 ] ; 4 uses
  %niter3468 = phi i64 [ 0, %.lr.ph.i.i539.preheader.new ], [ %niter3468.next.1, %.lr.ph.i.i539 ]
  %i.fhi = shl nsw i64 %.0.i1833.i.i540, 2
  %i.fhj = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.fhi
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.eyt, i64 %.0.i1833.i.i540
  %i.fhl = load i8, ptr %i.fhk, align 1, !tbaa !98, !noalias !605
  %i.fhm = zext i8 %i.fhl to i64
  %i.fhn = shl nuw nsw i64 %i.fhm, 2
  %i.fho = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fhn
  %i.fhp = load i32, ptr %i.fho, align 1, !noalias !605
  store i32 %i.fhp, ptr %i.fhj, align 1, !noalias !605
  %i.fhq = or disjoint i64 %.0.i1833.i.i540, 1    ; 2 uses
  %i.fhr = shl nsw i64 %i.fhq, 2
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.fhr
  %i.fht = getelementptr inbounds nuw i8, ptr %i.eyt, i64 %i.fhq
  %i.fhu = load i8, ptr %i.fht, align 1, !tbaa !98, !noalias !605
  %i.fhv = zext i8 %i.fhu to i64
  %i.fhw = shl nuw nsw i64 %i.fhv, 2
  %i.fhx = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fhw
  %i.fhy = load i32, ptr %i.fhx, align 1, !noalias !605
  store i32 %i.fhy, ptr %i.fhs, align 1, !noalias !605
  %i.fhz = add nuw nsw i64 %.0.i1833.i.i540, 2    ; 2 uses
  %niter3468.next.1 = add i64 %niter3468, 2       ; 2 uses
  %niter3468.ncmp.1 = icmp eq i64 %niter3468.next.1, %unroll_iter3467
  br i1 %niter3468.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa, label %.lr.ph.i.i539, !llvm.loop !613

bb.zv:                                            ; preds = %bb.yf
  br i1 %i.eyb, label %bb.zx, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.fia = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.fib = load i64, ptr %i.fia, align 8, !tbaa !71, !noalias !614
  %.not.i19.i21.i476 = icmp ne i64 %i.fib, 0
  %i.fic = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.fid = load ptr, ptr %i.fic, align 8, !noalias !614
  %i.fie = icmp ne ptr %i.fid, null
  %i.fif = select i1 %.not.i19.i21.i476, i1 %i.fie, i1 false
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zv
  %i.fig = phi i1 [ true, %bb.zv ], [ %i.fif, %bb.zw ]
  %i.fih = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !614
  %i.fii = extractvalue { i32, ptr } %i.fih, 1    ; 9 uses
  %i.fij = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !614 ; 13 uses
  %i.fik = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fil = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !614 ; 11 uses
  %i.fim = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.fin = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  %i.fio = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.fip = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.fiq = load ptr, ptr %i.fip, align 8, !tbaa !66, !noalias !614
  %i.fir = getelementptr inbounds [2 x i8], ptr %i.fiq, i64 %i.fin ; 9 uses
  br i1 %i.fig, label %bb.zy, label %.preheader32.i22.i477

.preheader32.i22.i477:                            ; preds = %bb.zx
  %i.fis = icmp sgt i64 %i.fil, 0
  br i1 %i.fis, label %.lr.ph.i24.i478.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i478.preheader:                        ; preds = %.preheader32.i22.i477
  %xtraiter3453 = and i64 %i.fil, 1
  %i.fit = icmp eq i64 %i.fil, 1
  br i1 %i.fit, label %.lr.ph.i24.i478.epil.preheader, label %.lr.ph.i24.i478.preheader.new

.lr.ph.i24.i478.preheader.new:                    ; preds = %.lr.ph.i24.i478.preheader
  %unroll_iter3456 = and i64 %i.fil, 9223372036854775806
  br label %.lr.ph.i24.i478

bb.zy:                                            ; preds = %bb.zx
  %i.fiu = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.fiv = load ptr, ptr %i.fiu, align 8, !tbaa !171, !noalias !614
  %i.fiw = load ptr, ptr %i.fiv, align 8, !tbaa !306, !noalias !614 ; 4 uses
  %.not.i.i.i27.i481 = icmp eq ptr %i.fiw, null
  br i1 %.not.i.i.i27.i481, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  %i.fix = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.fiy = load i64, ptr %i.fix, align 8, !tbaa !438, !noalias !614
  %i.fiz = getelementptr inbounds nuw i8, ptr %i.fiw, i64 9
  %i.fja = load i8, ptr %i.fiz, align 1, !tbaa !439, !range !127, !noalias !614, !noundef !128
  %i.fjb = trunc nuw i8 %i.fja to i1
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fiw, i64 8
  %i.fjd = load i8, ptr %i.fjc, align 8, !range !127, !noalias !614
  %i.fje = trunc nuw i8 %i.fjd to i1
  %i.fjf = select i1 %i.fjb, i1 %i.fje, i1 false, !prof !117
  %i.fjg = getelementptr inbounds nuw i8, ptr %i.fiw, i64 16
  %i.fjh = load ptr, ptr %i.fjg, align 8, !noalias !614
  %i.fji = select i1 %i.fjf, ptr %i.fjh, ptr null, !prof !117
  %i.fjj = getelementptr inbounds i8, ptr %i.fji, i64 %i.fiy
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482: ; preds = %bb.zz, %bb.zy
  %.0.i.i.i29.i483 = phi ptr [ %i.fjj, %bb.zz ], [ null, %bb.zy ] ; 5 uses
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.fjl = load i64, ptr %i.fjk, align 8, !tbaa !178, !noalias !614 ; 2 uses
  %i.fjm = ashr i64 %i.fjl, 3
  %i.fjn = and i64 %i.fjl, 7
  %i.fjo = icmp ne i64 %i.fjn, 0
  %i.fjp = zext i1 %i.fjo to i64
  %i.fjq = add nsw i64 %i.fjm, %i.fjp
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i483, i8 0, i64 %i.fjq, i1 false), !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !614
  %i.fjr = load ptr, ptr %i.fio, align 8, !tbaa !66, !noalias !614
  %i.fjs = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %i.fjr, i64 noundef %i.fjs, i64 noundef %i.fil), !noalias !614
  %i.fjt = icmp sgt i64 %i.fil, 0
  br i1 %i.fjt, label %.lr.ph55.i31.i485, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i485:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482
  %i.fju = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.aaa

bb.aaa:                                           ; preds = %.loopexit.i43.i497, %.lr.ph55.i31.i485
  %.081.i54.i32.i486 = phi i64 [ 0, %.lr.ph55.i31.i485 ], [ %.5.i.i45.i499, %.loopexit.i43.i497 ] ; 12 uses
  %.082.i53.i33.i487 = phi i64 [ 0, %.lr.ph55.i31.i485 ], [ %.587.i.i44.i498, %.loopexit.i43.i497 ] ; 6 uses
  %i.fjw = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %22), !noalias !614 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i488 = trunc i32 %i.fjw to i16 ; 10 uses
  %i.fjx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !614
  %.not.i20.i35.i489 = icmp ne i64 %i.fjx, 0
  %i.fjy = load ptr, ptr %i.v, align 8, !noalias !614
  %i.fjz = icmp ne ptr %i.fjy, null
  %i.fka = select i1 %.not.i20.i35.i489, i1 %i.fjz, i1 false
  br i1 %i.fka, label %bb.aam, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %.sroa.14.0.extract.shift.i.i36.i490 = lshr i32 %i.fjw, 16
  %.sroa.14.0.extract.trunc.i.i37.i491 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i490 to i64
  %sext91.i.i38.i492 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i491, 48
  %i.fkb = ashr exact i64 %sext91.i.i38.i492, 48
  %i.fkc = add nsw i64 %i.fkb, %.082.i53.i33.i487 ; 6 uses
  %i.fkd = ashr i32 %i.fjw, 16                    ; 2 uses
  %sext.i.i39.i493 = shl i32 %i.fjw, 16
  %i.fke = ashr exact i32 %sext.i.i39.i493, 16
  %i.fkf = icmp eq i32 %i.fkd, %i.fke
  br i1 %i.fkf, label %bb.aac, label %bb.aad

bb.aac:                                           ; preds = %bb.aab
  %i.fkg = sext i16 %.sroa.0.0.extract.trunc.i.i34.i488 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i483, i64 noundef %.081.i54.i32.i486, i64 noundef %i.fkg, i1 noundef zeroext true), !noalias !614
  %i.fkh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i488, 0
  br i1 %i.fkh, label %.lr.ph39.i54.i508.preheader, label %.loopexit.i43.i497

.lr.ph39.i54.i508.preheader:                      ; preds = %bb.aac
  %i.fki = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i488, 1
  br i1 %i.fki, label %.lr.ph39.i54.i508.epil.preheader, label %.lr.ph39.i54.i508.preheader.new

.lr.ph39.i54.i508.preheader.new:                  ; preds = %.lr.ph39.i54.i508.preheader
  %unroll_iter3462 = and i64 %i.fkg, 32766
  br label %.lr.ph39.i54.i508

.lr.ph39.i54.i508:                                ; preds = %.lr.ph39.i54.i508, %.lr.ph39.i54.i508.preheader.new
  %.1.i37.i56.i510 = phi i64 [ %.081.i54.i32.i486, %.lr.ph39.i54.i508.preheader.new ], [ %i.fla, %.lr.ph39.i54.i508 ] ; 4 uses
  %niter3463 = phi i64 [ 0, %.lr.ph39.i54.i508.preheader.new ], [ %niter3463.next.1, %.lr.ph39.i54.i508 ]
  %i.fkj = shl nsw i64 %.1.i37.i56.i510, 2
  %i.fkk = getelementptr inbounds i8, ptr %i.fij, i64 %i.fkj
  %i.fkl = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %.1.i37.i56.i510
  %i.fkm = load i16, ptr %i.fkl, align 2, !tbaa !269, !noalias !614
  %i.fkn = zext i16 %i.fkm to i64
  %i.fko = shl nuw nsw i64 %i.fkn, 2
  %i.fkp = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fko
  %i.fkq = load i32, ptr %i.fkp, align 1, !noalias !614
  store i32 %i.fkq, ptr %i.fkk, align 1, !noalias !614
  %i.fkr = add nsw i64 %.1.i37.i56.i510, 1        ; 2 uses
  %i.fks = shl nsw i64 %i.fkr, 2
  %i.fkt = getelementptr inbounds i8, ptr %i.fij, i64 %i.fks
  %i.fku = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %i.fkr
  %i.fkv = load i16, ptr %i.fku, align 2, !tbaa !269, !noalias !614
  %i.fkw = zext i16 %i.fkv to i64
  %i.fkx = shl nuw nsw i64 %i.fkw, 2
  %i.fky = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fkx
  %i.fkz = load i32, ptr %i.fky, align 1, !noalias !614
  store i32 %i.fkz, ptr %i.fkt, align 1, !noalias !614
  %i.fla = add nsw i64 %.1.i37.i56.i510, 2        ; 3 uses
  %niter3463.next.1 = add i64 %niter3463, 2       ; 2 uses
  %niter3463.ncmp.1 = icmp eq i64 %niter3463.next.1, %unroll_iter3462
  br i1 %niter3463.ncmp.1, label %.loopexit.i43.i497.loopexit3206.unr-lcssa, label %.lr.ph39.i54.i508, !llvm.loop !617

bb.aad:                                           ; preds = %bb.aab
  %i.flb = icmp sgt i32 %i.fkd, 0
  %i.flc = sext i16 %.sroa.0.0.extract.trunc.i.i34.i488 to i64 ; 2 uses
  br i1 %i.flb, label %.preheader30.i46.i500, label %.loopexit.sink.split.i40.i494

.preheader30.i46.i500:                            ; preds = %bb.aad
  %i.fld = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i488, 0
  br i1 %i.fld, label %.lr.ph36.i47.i501, label %.loopexit.i43.i497

.lr.ph36.i47.i501:                                ; preds = %.preheader30.i46.i500, %bb.aal
  %.079.i35.i48.i502 = phi i64 [ %i.fmo, %bb.aal ], [ 0, %.preheader30.i46.i500 ]
  %.2.i34.i49.i503 = phi i64 [ %i.fmn, %bb.aal ], [ %.081.i54.i32.i486, %.preheader30.i46.i500 ] ; 10 uses
  %i.fle = load ptr, ptr %i.fio, align 8, !tbaa !66, !noalias !614 ; 2 uses
  %.not.i21.i50.i504 = icmp eq ptr %i.fle, null
  br i1 %.not.i21.i50.i504, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %.lr.ph36.i47.i501
  %i.flf = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  %i.flg = add nsw i64 %i.flf, %.2.i34.i49.i503   ; 2 uses
  %i.flh = lshr i64 %i.flg, 3
  %i.fli = getelementptr inbounds nuw i8, ptr %i.fle, i64 %i.flh
  %i.flj = load i8, ptr %i.fli, align 1, !tbaa !98, !noalias !614
  %i.flk = trunc i64 %i.flg to i8
  %i.fll = and i8 %i.flk, 7
  %i.flm = lshr i8 %i.flj, %i.fll
  %i.fln = trunc i8 %i.flm to i1
  br i1 %i.fln, label %bb.aaj, label %bb.aak

bb.aaf:                                           ; preds = %.lr.ph36.i47.i501
  %i.flo = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !614
  %i.flp = getelementptr inbounds nuw i8, ptr %i.flo, i64 40
  %i.flq = load i32, ptr %i.flp, align 8, !tbaa !42, !noalias !614
  switch i32 %i.flq, label %bb.aai [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i506
    i32 28, label %bb.aag
    i32 38, label %bb.aah
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i8 %i.foc, ptr %i.foa, align 1, !tbaa !98, !noalias !614
  %i.fod = add nsw i64 %.183.i47.i76.i530, 1
  br label %bb.aau

bb.aat:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i80.i534, %bb.aar, %bb.aaq, %bb.aap, %bb.aan
  %i.foe = shl nsw i64 %.3.i48.i75.i529, 2
  %i.fof = getelementptr inbounds i8, ptr %i.fij, i64 %i.foe
  store i32 0, ptr %i.fof, align 1, !noalias !614
  br label %bb.aau

bb.aau:                                           ; preds = %bb.aat, %bb.aas
  %.284.i.i78.i532 = phi i64 [ %i.fod, %bb.aas ], [ %.183.i47.i76.i530, %bb.aat ] ; 2 uses
  %i.fog = add nsw i64 %.3.i48.i75.i529, 1        ; 2 uses
  %i.foh = add nuw nsw i64 %.078.i49.i74.i528, 1  ; 2 uses
  %exitcond66.not.i79.i533 = icmp eq i64 %i.foh, %i.fms
  br i1 %exitcond66.not.i79.i533, label %.loopexit.i43.i497, label %.lr.ph50.i73.i527, !llvm.loop !619

bb.aav:                                           ; preds = %bb.aam
  %i.foi = icmp sgt i32 %i.fmp, 0
  %i.foj = sext i16 %.sroa.0.0.extract.trunc.i.i34.i488 to i64 ; 2 uses
  br i1 %i.foi, label %.preheader27.i59.i513, label %.loopexit.sink.split.i40.i494

.preheader27.i59.i513:                            ; preds = %bb.aav
  %i.fok = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i488, 0
  br i1 %i.fok, label %.lr.ph44.i60.i514, label %.loopexit.i43.i497

.lr.ph44.i60.i514:                                ; preds = %.preheader27.i59.i513, %bb.abj
  %.0.i43.i61.i515 = phi i64 [ %i.fqq, %bb.abj ], [ 0, %.preheader27.i59.i513 ]
  %.4.i42.i62.i516 = phi i64 [ %i.fqp, %bb.abj ], [ %.081.i54.i32.i486, %.preheader27.i59.i513 ] ; 10 uses
  %.385.i41.i63.i517 = phi i64 [ %.486.i.i65.i519, %bb.abj ], [ %.082.i53.i33.i487, %.preheader27.i59.i513 ] ; 2 uses
  %i.fol = load ptr, ptr %i.fio, align 8, !tbaa !66, !noalias !614 ; 2 uses
  %.not.i26.i64.i518 = icmp eq ptr %i.fol, null
  br i1 %.not.i26.i64.i518, label %bb.aax, label %bb.aaw

bb.aaw:                                           ; preds = %.lr.ph44.i60.i514
  %i.fom = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  %i.fon = add nsw i64 %i.fom, %.4.i42.i62.i516   ; 2 uses
  %i.foo = lshr i64 %i.fon, 3
  %i.fop = getelementptr inbounds nuw i8, ptr %i.fol, i64 %i.foo
  %i.foq = load i8, ptr %i.fop, align 1, !tbaa !98, !noalias !614
  %i.for = trunc i64 %i.fon to i8
  %i.fos = and i8 %i.for, 7
  %i.fot = lshr i8 %i.foq, %i.fos
  %i.fou = trunc i8 %i.fot to i1
  br i1 %i.fou, label %bb.abb, label %bb.abi

bb.aax:                                           ; preds = %.lr.ph44.i60.i514
  %i.fov = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !614
  %i.fow = getelementptr inbounds nuw i8, ptr %i.fov, i64 40
  %i.fox = load i32, ptr %i.fow, align 8, !tbaa !42, !noalias !614
  switch i32 %i.fox, label %bb.aba [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524
    i32 28, label %bb.aay
    i32 38, label %bb.aaz
  ]

bb.aay:                                           ; preds = %bb.aax
  %i.foy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i516), !noalias !614
  br i1 %i.foy, label %bb.abi, label %bb.abb

bb.aaz:                                           ; preds = %bb.aax
  %i.foz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i516), !noalias !614
  br i1 %i.foz, label %bb.abi, label %bb.abb

bb.aba:                                           ; preds = %bb.aax
  %i.fpa = load i64, ptr %i.fju, align 8, !tbaa !71, !noalias !614
  %i.fpb = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !614
  %.not24.i71.i525 = icmp eq i64 %i.fpa, %i.fpb
  br i1 %.not24.i71.i525, label %bb.abi, label %bb.abb

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524:   ; preds = %bb.aax
  %i.fpc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i516), !noalias !614
  br i1 %i.fpc, label %bb.abi, label %bb.abb

bb.abb:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524, %bb.aba, %bb.aaz, %bb.aay, %bb.aaw
  %i.fpd = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %.4.i42.i62.i516 ; 2 uses
  %i.fpe = load i16, ptr %i.fpd, align 2, !tbaa !269, !noalias !614
  %i.fpf = zext i16 %i.fpe to i64                 ; 4 uses
  %i.fpg = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !614 ; 2 uses
  %.not.i29.i67.i521 = icmp eq ptr %i.fpg, null
  br i1 %.not.i29.i67.i521, label %bb.abd, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.fph = load i64, ptr %i.fjv, align 8, !tbaa !99, !noalias !614
  %i.fpi = add nsw i64 %i.fph, %i.fpf             ; 2 uses
  %i.fpj = lshr i64 %i.fpi, 3
  %i.fpk = getelementptr inbounds nuw i8, ptr %i.fpg, i64 %i.fpj
  %i.fpl = load i8, ptr %i.fpk, align 1, !tbaa !98, !noalias !614
  %i.fpm = trunc i64 %i.fpi to i8
  %i.fpn = and i8 %i.fpm, 7
  %i.fpo = lshr i8 %i.fpl, %i.fpn
  %i.fpp = trunc i8 %i.fpo to i1
  br i1 %i.fpp, label %bb.abh, label %bb.abi

bb.abd:                                           ; preds = %bb.abb
  %i.fpq = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !614
  %i.fpr = getelementptr inbounds nuw i8, ptr %i.fpq, i64 40
  %i.fps = load i32, ptr %i.fpr, align 8, !tbaa !42, !noalias !614
  switch i32 %i.fps, label %bb.abg [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522
    i32 28, label %bb.abe
    i32 38, label %bb.abf
  ]

bb.abe:                                           ; preds = %bb.abd
  %i.fpt = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fpf), !noalias !614
  br i1 %i.fpt, label %bb.abi, label %bb.abh

bb.abf:                                           ; preds = %bb.abd
  %i.fpu = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fpf), !noalias !614
  br i1 %i.fpu, label %bb.abi, label %bb.abh

bb.abg:                                           ; preds = %bb.abd
  %i.fpv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !614
  %i.fpw = load i64, ptr %i.fik, align 8, !tbaa !62, !noalias !614
  %.not25.i69.i523 = icmp eq i64 %i.fpv, %i.fpw
  br i1 %.not25.i69.i523, label %bb.abi, label %bb.abh

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522:   ; preds = %bb.abd
  %i.fpx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fpf), !noalias !614
  br i1 %i.fpx, label %bb.abi, label %bb.abh

bb.abh:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522, %bb.abg, %bb.abf, %bb.abe, %bb.abc
  %i.fpy = shl nsw i64 %.4.i42.i62.i516, 2
  %i.fpz = getelementptr inbounds i8, ptr %i.fij, i64 %i.fpy
  %i.fqa = load i16, ptr %i.fpd, align 2, !tbaa !269, !noalias !614
  %i.fqb = zext i16 %i.fqa to i64
  %i.fqc = shl nuw nsw i64 %i.fqb, 2
  %i.fqd = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fqc
  %i.fqe = load i32, ptr %i.fqd, align 1, !noalias !614
  store i32 %i.fqe, ptr %i.fpz, align 1, !noalias !614
  %i.fqf = srem i64 %.4.i42.i62.i516, 8
  %i.fqg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.fqf
  %i.fqh = load i8, ptr %i.fqg, align 1, !tbaa !98, !noalias !614
  %i.fqi = sdiv i64 %.4.i42.i62.i516, 8
  %i.fqj = getelementptr inbounds i8, ptr %.0.i.i.i29.i483, i64 %i.fqi ; 2 uses
  %i.fqk = load i8, ptr %i.fqj, align 1, !tbaa !98, !noalias !614
  %i.fql = or i8 %i.fqk, %i.fqh
  store i8 %i.fql, ptr %i.fqj, align 1, !tbaa !98, !noalias !614
  %i.fqm = add nsw i64 %.385.i41.i63.i517, 1
  br label %bb.abj

bb.abi:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522, %bb.abg, %bb.abf, %bb.abe, %bb.abc, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524, %bb.aba, %bb.aaz, %bb.aay, %bb.aaw
  %i.fqn = shl nsw i64 %.4.i42.i62.i516, 2
  %i.fqo = getelementptr inbounds i8, ptr %i.fij, i64 %i.fqn
  store i32 0, ptr %i.fqo, align 1, !noalias !614
  br label %bb.abj

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %.486.i.i65.i519 = phi i64 [ %i.fqm, %bb.abh ], [ %.385.i41.i63.i517, %bb.abi ] ; 2 uses
  %i.fqp = add nsw i64 %.4.i42.i62.i516, 1        ; 2 uses
  %i.fqq = add nuw nsw i64 %.0.i43.i61.i515, 1    ; 2 uses
  %exitcond65.not.i66.i520 = icmp eq i64 %i.fqq, %i.foj
  br i1 %exitcond65.not.i66.i520, label %.loopexit.i43.i497, label %.lr.ph44.i60.i514, !llvm.loop !620

.loopexit.sink.split.i40.i494:                    ; preds = %bb.aav, %bb.aad
  %.sink86.i41.i495 = phi i64 [ %i.flc, %bb.aad ], [ %i.foj, %bb.aav ] ; 2 uses
  %.587.i.ph.i42.i496 = phi i64 [ %i.fkc, %bb.aad ], [ %.082.i53.i33.i487, %bb.aav ]
  %i.fqr = shl nsw i64 %.081.i54.i32.i486, 2
  %i.fqs = getelementptr inbounds i8, ptr %i.fij, i64 %i.fqr
  %i.fqt = shl nsw i64 %.sink86.i41.i495, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.fqs, i8 0, i64 %i.fqt, i1 false), !noalias !614
  %i.fqu = add nsw i64 %.sink86.i41.i495, %.081.i54.i32.i486
  br label %.loopexit.i43.i497

.loopexit.i43.i497.loopexit3206.unr-lcssa:        ; preds = %.lr.ph39.i54.i508
  %i.fqv = and i16 %.sroa.0.0.extract.trunc.i.i34.i488, 1
  %lcmp.mod3459.not = icmp eq i16 %i.fqv, 0
  br i1 %lcmp.mod3459.not, label %.loopexit.i43.i497, label %.lr.ph39.i54.i508.epil.preheader

.lr.ph39.i54.i508.epil.preheader:                 ; preds = %.loopexit.i43.i497.loopexit3206.unr-lcssa, %.lr.ph39.i54.i508.preheader
  %.1.i37.i56.i510.epil.init = phi i64 [ %.081.i54.i32.i486, %.lr.ph39.i54.i508.preheader ], [ %i.fla, %.loopexit.i43.i497.loopexit3206.unr-lcssa ] ; 3 uses
  %lcmp.mod3461 = trunc i32 %i.fjw to i1
  call void @llvm.assume(i1 %lcmp.mod3461)
  %i.fqw = shl nsw i64 %.1.i37.i56.i510.epil.init, 2
  %i.fqx = getelementptr inbounds i8, ptr %i.fij, i64 %i.fqw
  %i.fqy = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %.1.i37.i56.i510.epil.init
  %i.fqz = load i16, ptr %i.fqy, align 2, !tbaa !269, !noalias !614
  %i.fra = zext i16 %i.fqz to i64
  %i.frb = shl nuw nsw i64 %i.fra, 2
  %i.frc = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.frb
  %i.frd = load i32, ptr %i.frc, align 1, !noalias !614
  store i32 %i.frd, ptr %i.fqx, align 1, !noalias !614
  %i.fre = add nsw i64 %.1.i37.i56.i510.epil.init, 1
  br label %.loopexit.i43.i497

.loopexit.i43.i497:                               ; preds = %bb.aal, %.lr.ph39.i54.i508.epil.preheader, %.loopexit.i43.i497.loopexit3206.unr-lcssa, %bb.abj, %bb.aau, %.loopexit.sink.split.i40.i494, %.preheader27.i59.i513, %.preheader.i72.i526, %.preheader30.i46.i500, %bb.aac
  %.587.i.i44.i498 = phi i64 [ %.587.i.ph.i42.i496, %.loopexit.sink.split.i40.i494 ], [ %i.fkc, %bb.aac ], [ %.486.i.i65.i519, %bb.abj ], [ %i.fkc, %.lr.ph39.i54.i508.epil.preheader ], [ %i.fkc, %.preheader30.i46.i500 ], [ %.082.i53.i33.i487, %.preheader.i72.i526 ], [ %.082.i53.i33.i487, %.preheader27.i59.i513 ], [ %.284.i.i78.i532, %bb.aau ], [ %i.fkc, %.loopexit.i43.i497.loopexit3206.unr-lcssa ], [ %i.fkc, %bb.aal ] ; 2 uses
  %.5.i.i45.i499 = phi i64 [ %i.fqu, %.loopexit.sink.split.i40.i494 ], [ %.081.i54.i32.i486, %bb.aac ], [ %i.fqp, %bb.abj ], [ %i.fre, %.lr.ph39.i54.i508.epil.preheader ], [ %.081.i54.i32.i486, %.preheader30.i46.i500 ], [ %.081.i54.i32.i486, %.preheader.i72.i526 ], [ %.081.i54.i32.i486, %.preheader27.i59.i513 ], [ %i.fog, %bb.aau ], [ %i.fla, %.loopexit.i43.i497.loopexit3206.unr-lcssa ], [ %i.fmn, %bb.aal ] ; 2 uses
  %i.frf = icmp slt i64 %.5.i.i45.i499, %i.fil
  br i1 %i.frf, label %bb.aaa, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !621

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i497, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482
  %.082.i.lcssa.i30.i484 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482 ], [ %.587.i.i44.i498, %.loopexit.i43.i497 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !614
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i478:                                  ; preds = %.lr.ph.i24.i478, %.lr.ph.i24.i478.preheader.new
  %.0.i1833.i25.i479 = phi i64 [ 0, %.lr.ph.i24.i478.preheader.new ], [ %i.frx, %.lr.ph.i24.i478 ] ; 4 uses
  %niter3457 = phi i64 [ 0, %.lr.ph.i24.i478.preheader.new ], [ %niter3457.next.1, %.lr.ph.i24.i478 ]
  %i.frg = shl nsw i64 %.0.i1833.i25.i479, 2
  %i.frh = getelementptr inbounds nuw i8, ptr %i.fij, i64 %i.frg
  %i.fri = getelementptr inbounds nuw [2 x i8], ptr %i.fir, i64 %.0.i1833.i25.i479
  %i.frj = load i16, ptr %i.fri, align 2, !tbaa !269, !noalias !614
  %i.frk = zext i16 %i.frj to i64
  %i.frl = shl nuw nsw i64 %i.frk, 2
  %i.frm = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.frl
  %i.frn = load i32, ptr %i.frm, align 1, !noalias !614
  store i32 %i.frn, ptr %i.frh, align 1, !noalias !614
  %i.fro = or disjoint i64 %.0.i1833.i25.i479, 1  ; 2 uses
  %i.frp = shl nsw i64 %i.fro, 2
  %i.frq = getelementptr inbounds nuw i8, ptr %i.fij, i64 %i.frp
  %i.frr = getelementptr inbounds nuw [2 x i8], ptr %i.fir, i64 %i.fro
  %i.frs = load i16, ptr %i.frr, align 2, !tbaa !269, !noalias !614
  %i.frt = zext i16 %i.frs to i64
  %i.fru = shl nuw nsw i64 %i.frt, 2
  %i.frv = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fru
  %i.frw = load i32, ptr %i.frv, align 1, !noalias !614
  store i32 %i.frw, ptr %i.frq, align 1, !noalias !614
  %i.frx = add nuw nsw i64 %.0.i1833.i25.i479, 2  ; 2 uses
  %niter3457.next.1 = add i64 %niter3457, 2       ; 2 uses
  %niter3457.ncmp.1 = icmp eq i64 %niter3457.next.1, %unroll_iter3456
  br i1 %niter3457.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa, label %.lr.ph.i24.i478, !llvm.loop !622

bb.abk:                                           ; preds = %bb.yf
  br i1 %i.eyb, label %bb.abm, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.fry = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.frz = load i64, ptr %i.fry, align 8, !tbaa !71, !noalias !623
  %.not.i19.i83.i414 = icmp ne i64 %i.frz, 0
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.fsb = load ptr, ptr %i.fsa, align 8, !noalias !623
  %i.fsc = icmp ne ptr %i.fsb, null
  %i.fsd = select i1 %.not.i19.i83.i414, i1 %i.fsc, i1 false
  br label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %i.fse = phi i1 [ true, %bb.abk ], [ %i.fsd, %bb.abl ]
  %i.fsf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !623
  %i.fsg = extractvalue { i32, ptr } %i.fsf, 1    ; 9 uses
  %i.fsh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !623 ; 13 uses
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fsj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !623 ; 11 uses
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.fsl = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.fsn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.fso = load ptr, ptr %i.fsn, align 8, !tbaa !66, !noalias !623
  %i.fsp = getelementptr inbounds [4 x i8], ptr %i.fso, i64 %i.fsl ; 9 uses
  br i1 %i.fse, label %bb.abn, label %.preheader32.i84.i415

.preheader32.i84.i415:                            ; preds = %bb.abm
  %i.fsq = icmp sgt i64 %i.fsj, 0
  br i1 %i.fsq, label %.lr.ph.i86.i417.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i417.preheader:                        ; preds = %.preheader32.i84.i415
  %xtraiter3442 = and i64 %i.fsj, 1
  %i.fsr = icmp eq i64 %i.fsj, 1
  br i1 %i.fsr, label %.lr.ph.i86.i417.epil.preheader, label %.lr.ph.i86.i417.preheader.new

.lr.ph.i86.i417.preheader.new:                    ; preds = %.lr.ph.i86.i417.preheader
  %unroll_iter3445 = and i64 %i.fsj, 9223372036854775806
  br label %.lr.ph.i86.i417

bb.abn:                                           ; preds = %bb.abm
  %i.fss = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.fst = load ptr, ptr %i.fss, align 8, !tbaa !171, !noalias !623
  %i.fsu = load ptr, ptr %i.fst, align 8, !tbaa !306, !noalias !623 ; 4 uses
  %.not.i.i.i89.i420 = icmp eq ptr %i.fsu, null
  br i1 %.not.i.i.i89.i420, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.fsw = load i64, ptr %i.fsv, align 8, !tbaa !438, !noalias !623
  %i.fsx = getelementptr inbounds nuw i8, ptr %i.fsu, i64 9
  %i.fsy = load i8, ptr %i.fsx, align 1, !tbaa !439, !range !127, !noalias !623, !noundef !128
  %i.fsz = trunc nuw i8 %i.fsy to i1
  %i.fta = getelementptr inbounds nuw i8, ptr %i.fsu, i64 8
  %i.ftb = load i8, ptr %i.fta, align 8, !range !127, !noalias !623
  %i.ftc = trunc nuw i8 %i.ftb to i1
  %i.ftd = select i1 %i.fsz, i1 %i.ftc, i1 false, !prof !117
  %i.fte = getelementptr inbounds nuw i8, ptr %i.fsu, i64 16
  %i.ftf = load ptr, ptr %i.fte, align 8, !noalias !623
  %i.ftg = select i1 %i.ftd, ptr %i.ftf, ptr null, !prof !117
  %i.fth = getelementptr inbounds i8, ptr %i.ftg, i64 %i.fsw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421: ; preds = %bb.abo, %bb.abn
  %.0.i.i.i91.i422 = phi ptr [ %i.fth, %bb.abo ], [ null, %bb.abn ] ; 5 uses
  %i.fti = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ftj = load i64, ptr %i.fti, align 8, !tbaa !178, !noalias !623 ; 2 uses
  %i.ftk = ashr i64 %i.ftj, 3
  %i.ftl = and i64 %i.ftj, 7
  %i.ftm = icmp ne i64 %i.ftl, 0
  %i.ftn = zext i1 %i.ftm to i64
  %i.fto = add nsw i64 %i.ftk, %i.ftn
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i422, i8 0, i64 %i.fto, i1 false), !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24, !noalias !623
  %i.ftp = load ptr, ptr %i.fsm, align 8, !tbaa !66, !noalias !623
  %i.ftq = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.ftp, i64 noundef %i.ftq, i64 noundef %i.fsj), !noalias !623
  %i.ftr = icmp sgt i64 %i.fsj, 0
  br i1 %i.ftr, label %.lr.ph55.i93.i424, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i424:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421
  %i.fts = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ftt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.abp

bb.abp:                                           ; preds = %.loopexit.i105.i436, %.lr.ph55.i93.i424
  %.081.i54.i94.i425 = phi i64 [ 0, %.lr.ph55.i93.i424 ], [ %.5.i.i107.i438, %.loopexit.i105.i436 ] ; 12 uses
  %.082.i53.i95.i426 = phi i64 [ 0, %.lr.ph55.i93.i424 ], [ %.587.i.i106.i437, %.loopexit.i105.i436 ] ; 6 uses
  %i.ftu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %21), !noalias !623 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i427 = trunc i32 %i.ftu to i16 ; 10 uses
  %i.ftv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !623
  %.not.i20.i97.i428 = icmp ne i64 %i.ftv, 0
  %i.ftw = load ptr, ptr %i.v, align 8, !noalias !623
  %i.ftx = icmp ne ptr %i.ftw, null
  %i.fty = select i1 %.not.i20.i97.i428, i1 %i.ftx, i1 false
  br i1 %i.fty, label %bb.acb, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %.sroa.14.0.extract.shift.i.i98.i429 = lshr i32 %i.ftu, 16
  %.sroa.14.0.extract.trunc.i.i99.i430 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i429 to i64
  %sext91.i.i100.i431 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i430, 48
  %i.ftz = ashr exact i64 %sext91.i.i100.i431, 48
  %i.fua = add nsw i64 %i.ftz, %.082.i53.i95.i426 ; 6 uses
  %i.fub = ashr i32 %i.ftu, 16                    ; 2 uses
  %sext.i.i101.i432 = shl i32 %i.ftu, 16
  %i.fuc = ashr exact i32 %sext.i.i101.i432, 16
  %i.fud = icmp eq i32 %i.fub, %i.fuc
  br i1 %i.fud, label %bb.abr, label %bb.abs

bb.abr:                                           ; preds = %bb.abq
  %i.fue = sext i16 %.sroa.0.0.extract.trunc.i.i96.i427 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i422, i64 noundef %.081.i54.i94.i425, i64 noundef %i.fue, i1 noundef zeroext true), !noalias !623
  %i.fuf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i427, 0
  br i1 %i.fuf, label %.lr.ph39.i116.i447.preheader, label %.loopexit.i105.i436

.lr.ph39.i116.i447.preheader:                     ; preds = %bb.abr
  %i.fug = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i427, 1
  br i1 %i.fug, label %.lr.ph39.i116.i447.epil.preheader, label %.lr.ph39.i116.i447.preheader.new

.lr.ph39.i116.i447.preheader.new:                 ; preds = %.lr.ph39.i116.i447.preheader
  %unroll_iter3451 = and i64 %i.fue, 32766
  br label %.lr.ph39.i116.i447

.lr.ph39.i116.i447:                               ; preds = %.lr.ph39.i116.i447, %.lr.ph39.i116.i447.preheader.new
  %.1.i37.i118.i449 = phi i64 [ %.081.i54.i94.i425, %.lr.ph39.i116.i447.preheader.new ], [ %i.fuy, %.lr.ph39.i116.i447 ] ; 4 uses
  %niter3452 = phi i64 [ 0, %.lr.ph39.i116.i447.preheader.new ], [ %niter3452.next.1, %.lr.ph39.i116.i447 ]
  %i.fuh = shl nsw i64 %.1.i37.i118.i449, 2
  %i.fui = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fuh
  %i.fuj = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %.1.i37.i118.i449
  %i.fuk = load i32, ptr %i.fuj, align 4, !tbaa !3, !noalias !623
  %i.ful = shl i32 %i.fuk, 2
  %i.fum = zext i32 %i.ful to i64
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.fum
  %i.fuo = load i32, ptr %i.fun, align 1, !noalias !623
  store i32 %i.fuo, ptr %i.fui, align 1, !noalias !623
  %i.fup = add nsw i64 %.1.i37.i118.i449, 1       ; 2 uses
  %i.fuq = shl nsw i64 %i.fup, 2
  %i.fur = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fuq
  %i.fus = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %i.fup
  %i.fut = load i32, ptr %i.fus, align 4, !tbaa !3, !noalias !623
  %i.fuu = shl i32 %i.fut, 2
  %i.fuv = zext i32 %i.fuu to i64
  %i.fuw = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.fuv
  %i.fux = load i32, ptr %i.fuw, align 1, !noalias !623
  store i32 %i.fux, ptr %i.fur, align 1, !noalias !623
  %i.fuy = add nsw i64 %.1.i37.i118.i449, 2       ; 3 uses
  %niter3452.next.1 = add i64 %niter3452, 2       ; 2 uses
  %niter3452.ncmp.1 = icmp eq i64 %niter3452.next.1, %unroll_iter3451
  br i1 %niter3452.ncmp.1, label %.loopexit.i105.i436.loopexit3214.unr-lcssa, label %.lr.ph39.i116.i447, !llvm.loop !626

bb.abs:                                           ; preds = %bb.abq
  %i.fuz = icmp sgt i32 %i.fub, 0
  %i.fva = sext i16 %.sroa.0.0.extract.trunc.i.i96.i427 to i64 ; 2 uses
  br i1 %i.fuz, label %.preheader30.i108.i439, label %.loopexit.sink.split.i102.i433

.preheader30.i108.i439:                           ; preds = %bb.abs
  %i.fvb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i427, 0
  br i1 %i.fvb, label %.lr.ph36.i109.i440, label %.loopexit.i105.i436

.lr.ph36.i109.i440:                               ; preds = %.preheader30.i108.i439, %bb.aca
  %.079.i35.i110.i441 = phi i64 [ %i.fwm, %bb.aca ], [ 0, %.preheader30.i108.i439 ]
  %.2.i34.i111.i442 = phi i64 [ %i.fwl, %bb.aca ], [ %.081.i54.i94.i425, %.preheader30.i108.i439 ] ; 10 uses
  %i.fvc = load ptr, ptr %i.fsm, align 8, !tbaa !66, !noalias !623 ; 2 uses
  %.not.i21.i112.i443 = icmp eq ptr %i.fvc, null
  br i1 %.not.i21.i112.i443, label %bb.abu, label %bb.abt

bb.abt:                                           ; preds = %.lr.ph36.i109.i440
  %i.fvd = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  %i.fve = add nsw i64 %i.fvd, %.2.i34.i111.i442  ; 2 uses
  %i.fvf = lshr i64 %i.fve, 3
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fvc, i64 %i.fvf
  %i.fvh = load i8, ptr %i.fvg, align 1, !tbaa !98, !noalias !623
  %i.fvi = trunc i64 %i.fve to i8
  %i.fvj = and i8 %i.fvi, 7
  %i.fvk = lshr i8 %i.fvh, %i.fvj
  %i.fvl = trunc i8 %i.fvk to i1
  br i1 %i.fvl, label %bb.aby, label %bb.abz

bb.abu:                                           ; preds = %.lr.ph36.i109.i440
  %i.fvm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !623
  %i.fvn = getelementptr inbounds nuw i8, ptr %i.fvm, i64 40
  %i.fvo = load i32, ptr %i.fvn, align 8, !tbaa !42, !noalias !623
  switch i32 %i.fvo, label %bb.abx [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i445
    i32 28, label %bb.abv
    i32 38, label %bb.abw
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i8 %i.fya, ptr %i.fxy, align 1, !tbaa !98, !noalias !623
  %i.fyb = add nsw i64 %.183.i47.i138.i469, 1
  br label %bb.acj

bb.aci:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i142.i473, %bb.acg, %bb.acf, %bb.ace, %bb.acc
  %i.fyc = shl nsw i64 %.3.i48.i137.i468, 2
  %i.fyd = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fyc
  store i32 0, ptr %i.fyd, align 1, !noalias !623
  br label %bb.acj

bb.acj:                                           ; preds = %bb.aci, %bb.ach
  %.284.i.i140.i471 = phi i64 [ %i.fyb, %bb.ach ], [ %.183.i47.i138.i469, %bb.aci ] ; 2 uses
  %i.fye = add nsw i64 %.3.i48.i137.i468, 1       ; 2 uses
  %i.fyf = add nuw nsw i64 %.078.i49.i136.i467, 1 ; 2 uses
  %exitcond66.not.i141.i472 = icmp eq i64 %i.fyf, %i.fwq
  br i1 %exitcond66.not.i141.i472, label %.loopexit.i105.i436, label %.lr.ph50.i135.i466, !llvm.loop !628

bb.ack:                                           ; preds = %bb.acb
  %i.fyg = icmp sgt i32 %i.fwn, 0
  %i.fyh = sext i16 %.sroa.0.0.extract.trunc.i.i96.i427 to i64 ; 2 uses
  br i1 %i.fyg, label %.preheader27.i121.i452, label %.loopexit.sink.split.i102.i433

.preheader27.i121.i452:                           ; preds = %bb.ack
  %i.fyi = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i427, 0
  br i1 %i.fyi, label %.lr.ph44.i122.i453, label %.loopexit.i105.i436

.lr.ph44.i122.i453:                               ; preds = %.preheader27.i121.i452, %bb.acy
  %.0.i43.i123.i454 = phi i64 [ %i.gao, %bb.acy ], [ 0, %.preheader27.i121.i452 ]
  %.4.i42.i124.i455 = phi i64 [ %i.gan, %bb.acy ], [ %.081.i54.i94.i425, %.preheader27.i121.i452 ] ; 10 uses
  %.385.i41.i125.i456 = phi i64 [ %.486.i.i127.i458, %bb.acy ], [ %.082.i53.i95.i426, %.preheader27.i121.i452 ] ; 2 uses
  %i.fyj = load ptr, ptr %i.fsm, align 8, !tbaa !66, !noalias !623 ; 2 uses
  %.not.i26.i126.i457 = icmp eq ptr %i.fyj, null
  br i1 %.not.i26.i126.i457, label %bb.acm, label %bb.acl

bb.acl:                                           ; preds = %.lr.ph44.i122.i453
  %i.fyk = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  %i.fyl = add nsw i64 %i.fyk, %.4.i42.i124.i455  ; 2 uses
  %i.fym = lshr i64 %i.fyl, 3
  %i.fyn = getelementptr inbounds nuw i8, ptr %i.fyj, i64 %i.fym
  %i.fyo = load i8, ptr %i.fyn, align 1, !tbaa !98, !noalias !623
  %i.fyp = trunc i64 %i.fyl to i8
  %i.fyq = and i8 %i.fyp, 7
  %i.fyr = lshr i8 %i.fyo, %i.fyq
  %i.fys = trunc i8 %i.fyr to i1
  br i1 %i.fys, label %bb.acq, label %bb.acx

bb.acm:                                           ; preds = %.lr.ph44.i122.i453
  %i.fyt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !623
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.fyt, i64 40
  %i.fyv = load i32, ptr %i.fyu, align 8, !tbaa !42, !noalias !623
  switch i32 %i.fyv, label %bb.acp [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463
    i32 28, label %bb.acn
    i32 38, label %bb.aco
  ]

bb.acn:                                           ; preds = %bb.acm
  %i.fyw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i455), !noalias !623
  br i1 %i.fyw, label %bb.acx, label %bb.acq

bb.aco:                                           ; preds = %bb.acm
  %i.fyx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i455), !noalias !623
  br i1 %i.fyx, label %bb.acx, label %bb.acq

bb.acp:                                           ; preds = %bb.acm
  %i.fyy = load i64, ptr %i.fts, align 8, !tbaa !71, !noalias !623
  %i.fyz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !623
  %.not24.i133.i464 = icmp eq i64 %i.fyy, %i.fyz
  br i1 %.not24.i133.i464, label %bb.acx, label %bb.acq

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463:  ; preds = %bb.acm
  %i.fza = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i455), !noalias !623
  br i1 %i.fza, label %bb.acx, label %bb.acq

bb.acq:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463, %bb.acp, %bb.aco, %bb.acn, %bb.acl
  %i.fzb = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %.4.i42.i124.i455 ; 2 uses
  %i.fzc = load i32, ptr %i.fzb, align 4, !tbaa !3, !noalias !623
  %i.fzd = zext i32 %i.fzc to i64                 ; 4 uses
  %i.fze = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !623 ; 2 uses
  %.not.i29.i129.i460 = icmp eq ptr %i.fze, null
  br i1 %.not.i29.i129.i460, label %bb.acs, label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.fzf = load i64, ptr %i.ftt, align 8, !tbaa !99, !noalias !623
  %i.fzg = add nsw i64 %i.fzf, %i.fzd             ; 2 uses
  %i.fzh = lshr i64 %i.fzg, 3
  %i.fzi = getelementptr inbounds nuw i8, ptr %i.fze, i64 %i.fzh
  %i.fzj = load i8, ptr %i.fzi, align 1, !tbaa !98, !noalias !623
  %i.fzk = trunc i64 %i.fzg to i8
  %i.fzl = and i8 %i.fzk, 7
  %i.fzm = lshr i8 %i.fzj, %i.fzl
  %i.fzn = trunc i8 %i.fzm to i1
  br i1 %i.fzn, label %bb.acw, label %bb.acx

bb.acs:                                           ; preds = %bb.acq
  %i.fzo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !623
  %i.fzp = getelementptr inbounds nuw i8, ptr %i.fzo, i64 40
  %i.fzq = load i32, ptr %i.fzp, align 8, !tbaa !42, !noalias !623
  switch i32 %i.fzq, label %bb.acv [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461
    i32 28, label %bb.act
    i32 38, label %bb.acu
  ]

bb.act:                                           ; preds = %bb.acs
  %i.fzr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fzd), !noalias !623
  br i1 %i.fzr, label %bb.acx, label %bb.acw

bb.acu:                                           ; preds = %bb.acs
  %i.fzs = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fzd), !noalias !623
  br i1 %i.fzs, label %bb.acx, label %bb.acw

bb.acv:                                           ; preds = %bb.acs
  %i.fzt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !623
  %i.fzu = load i64, ptr %i.fsi, align 8, !tbaa !62, !noalias !623
  %.not25.i131.i462 = icmp eq i64 %i.fzt, %i.fzu
  br i1 %.not25.i131.i462, label %bb.acx, label %bb.acw

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461:  ; preds = %bb.acs
  %i.fzv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fzd), !noalias !623
  br i1 %i.fzv, label %bb.acx, label %bb.acw

bb.acw:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461, %bb.acv, %bb.acu, %bb.act, %bb.acr
  %i.fzw = shl nsw i64 %.4.i42.i124.i455, 2
  %i.fzx = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fzw
  %i.fzy = load i32, ptr %i.fzb, align 4, !tbaa !3, !noalias !623
  %i.fzz = shl i32 %i.fzy, 2
  %i.gaa = zext i32 %i.fzz to i64
  %i.gab = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gaa
  %i.gac = load i32, ptr %i.gab, align 1, !noalias !623
  store i32 %i.gac, ptr %i.fzx, align 1, !noalias !623
  %i.gad = srem i64 %.4.i42.i124.i455, 8
  %i.gae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gad
  %i.gaf = load i8, ptr %i.gae, align 1, !tbaa !98, !noalias !623
  %i.gag = sdiv i64 %.4.i42.i124.i455, 8
  %i.gah = getelementptr inbounds i8, ptr %.0.i.i.i91.i422, i64 %i.gag ; 2 uses
  %i.gai = load i8, ptr %i.gah, align 1, !tbaa !98, !noalias !623
  %i.gaj = or i8 %i.gai, %i.gaf
  store i8 %i.gaj, ptr %i.gah, align 1, !tbaa !98, !noalias !623
  %i.gak = add nsw i64 %.385.i41.i125.i456, 1
  br label %bb.acy

bb.acx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461, %bb.acv, %bb.acu, %bb.act, %bb.acr, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463, %bb.acp, %bb.aco, %bb.acn, %bb.acl
  %i.gal = shl nsw i64 %.4.i42.i124.i455, 2
  %i.gam = getelementptr inbounds i8, ptr %i.fsh, i64 %i.gal
  store i32 0, ptr %i.gam, align 1, !noalias !623
  br label %bb.acy

bb.acy:                                           ; preds = %bb.acx, %bb.acw
  %.486.i.i127.i458 = phi i64 [ %i.gak, %bb.acw ], [ %.385.i41.i125.i456, %bb.acx ] ; 2 uses
  %i.gan = add nsw i64 %.4.i42.i124.i455, 1       ; 2 uses
  %i.gao = add nuw nsw i64 %.0.i43.i123.i454, 1   ; 2 uses
  %exitcond65.not.i128.i459 = icmp eq i64 %i.gao, %i.fyh
  br i1 %exitcond65.not.i128.i459, label %.loopexit.i105.i436, label %.lr.ph44.i122.i453, !llvm.loop !629

.loopexit.sink.split.i102.i433:                   ; preds = %bb.ack, %bb.abs
  %.sink86.i103.i434 = phi i64 [ %i.fva, %bb.abs ], [ %i.fyh, %bb.ack ] ; 2 uses
  %.587.i.ph.i104.i435 = phi i64 [ %i.fua, %bb.abs ], [ %.082.i53.i95.i426, %bb.ack ]
  %i.gap = shl nsw i64 %.081.i54.i94.i425, 2
  %i.gaq = getelementptr inbounds i8, ptr %i.fsh, i64 %i.gap
  %i.gar = shl nsw i64 %.sink86.i103.i434, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.gaq, i8 0, i64 %i.gar, i1 false), !noalias !623
  %i.gas = add nsw i64 %.sink86.i103.i434, %.081.i54.i94.i425
  br label %.loopexit.i105.i436

.loopexit.i105.i436.loopexit3214.unr-lcssa:       ; preds = %.lr.ph39.i116.i447
  %i.gat = and i16 %.sroa.0.0.extract.trunc.i.i96.i427, 1
  %lcmp.mod3448.not = icmp eq i16 %i.gat, 0
  br i1 %lcmp.mod3448.not, label %.loopexit.i105.i436, label %.lr.ph39.i116.i447.epil.preheader

.lr.ph39.i116.i447.epil.preheader:                ; preds = %.loopexit.i105.i436.loopexit3214.unr-lcssa, %.lr.ph39.i116.i447.preheader
  %.1.i37.i118.i449.epil.init = phi i64 [ %.081.i54.i94.i425, %.lr.ph39.i116.i447.preheader ], [ %i.fuy, %.loopexit.i105.i436.loopexit3214.unr-lcssa ] ; 3 uses
  %lcmp.mod3450 = trunc i32 %i.ftu to i1
  call void @llvm.assume(i1 %lcmp.mod3450)
  %i.gau = shl nsw i64 %.1.i37.i118.i449.epil.init, 2
  %i.gav = getelementptr inbounds i8, ptr %i.fsh, i64 %i.gau
  %i.gaw = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %.1.i37.i118.i449.epil.init
  %i.gax = load i32, ptr %i.gaw, align 4, !tbaa !3, !noalias !623
  %i.gay = shl i32 %i.gax, 2
  %i.gaz = zext i32 %i.gay to i64
  %i.gba = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gaz
  %i.gbb = load i32, ptr %i.gba, align 1, !noalias !623
  store i32 %i.gbb, ptr %i.gav, align 1, !noalias !623
  %i.gbc = add nsw i64 %.1.i37.i118.i449.epil.init, 1
  br label %.loopexit.i105.i436

.loopexit.i105.i436:                              ; preds = %bb.aca, %.lr.ph39.i116.i447.epil.preheader, %.loopexit.i105.i436.loopexit3214.unr-lcssa, %bb.acy, %bb.acj, %.loopexit.sink.split.i102.i433, %.preheader27.i121.i452, %.preheader.i134.i465, %.preheader30.i108.i439, %bb.abr
  %.587.i.i106.i437 = phi i64 [ %.587.i.ph.i104.i435, %.loopexit.sink.split.i102.i433 ], [ %i.fua, %bb.abr ], [ %.486.i.i127.i458, %bb.acy ], [ %i.fua, %.lr.ph39.i116.i447.epil.preheader ], [ %i.fua, %.preheader30.i108.i439 ], [ %.082.i53.i95.i426, %.preheader.i134.i465 ], [ %.082.i53.i95.i426, %.preheader27.i121.i452 ], [ %.284.i.i140.i471, %bb.acj ], [ %i.fua, %.loopexit.i105.i436.loopexit3214.unr-lcssa ], [ %i.fua, %bb.aca ] ; 2 uses
  %.5.i.i107.i438 = phi i64 [ %i.gas, %.loopexit.sink.split.i102.i433 ], [ %.081.i54.i94.i425, %bb.abr ], [ %i.gan, %bb.acy ], [ %i.gbc, %.lr.ph39.i116.i447.epil.preheader ], [ %.081.i54.i94.i425, %.preheader30.i108.i439 ], [ %.081.i54.i94.i425, %.preheader.i134.i465 ], [ %.081.i54.i94.i425, %.preheader27.i121.i452 ], [ %i.fye, %bb.acj ], [ %i.fuy, %.loopexit.i105.i436.loopexit3214.unr-lcssa ], [ %i.fwl, %bb.aca ] ; 2 uses
  %i.gbd = icmp slt i64 %.5.i.i107.i438, %i.fsj
  br i1 %i.gbd, label %bb.abp, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !630

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i436, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421
  %.082.i.lcssa.i92.i423 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421 ], [ %.587.i.i106.i437, %.loopexit.i105.i436 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !623
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i417:                                  ; preds = %.lr.ph.i86.i417, %.lr.ph.i86.i417.preheader.new
  %.0.i1833.i87.i418 = phi i64 [ 0, %.lr.ph.i86.i417.preheader.new ], [ %i.gbv, %.lr.ph.i86.i417 ] ; 4 uses
  %niter3446 = phi i64 [ 0, %.lr.ph.i86.i417.preheader.new ], [ %niter3446.next.1, %.lr.ph.i86.i417 ]
  %i.gbe = shl nsw i64 %.0.i1833.i87.i418, 2
  %i.gbf = getelementptr inbounds nuw i8, ptr %i.fsh, i64 %i.gbe
  %i.gbg = getelementptr inbounds nuw [4 x i8], ptr %i.fsp, i64 %.0.i1833.i87.i418
  %i.gbh = load i32, ptr %i.gbg, align 4, !tbaa !3, !noalias !623
  %i.gbi = shl i32 %i.gbh, 2
  %i.gbj = zext i32 %i.gbi to i64
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gbj
  %i.gbl = load i32, ptr %i.gbk, align 1, !noalias !623
  store i32 %i.gbl, ptr %i.gbf, align 1, !noalias !623
  %i.gbm = or disjoint i64 %.0.i1833.i87.i418, 1  ; 2 uses
  %i.gbn = shl nsw i64 %i.gbm, 2
  %i.gbo = getelementptr inbounds nuw i8, ptr %i.fsh, i64 %i.gbn
  %i.gbp = getelementptr inbounds nuw [4 x i8], ptr %i.fsp, i64 %i.gbm
  %i.gbq = load i32, ptr %i.gbp, align 4, !tbaa !3, !noalias !623
  %i.gbr = shl i32 %i.gbq, 2
  %i.gbs = zext i32 %i.gbr to i64
  %i.gbt = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gbs
  %i.gbu = load i32, ptr %i.gbt, align 1, !noalias !623
  store i32 %i.gbu, ptr %i.gbo, align 1, !noalias !623
  %i.gbv = add nuw nsw i64 %.0.i1833.i87.i418, 2  ; 2 uses
  %niter3446.next.1 = add i64 %niter3446, 2       ; 2 uses
  %niter3446.ncmp.1 = icmp eq i64 %niter3446.next.1, %unroll_iter3445
  br i1 %niter3446.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa, label %.lr.ph.i86.i417, !llvm.loop !631

bb.acz:                                           ; preds = %bb.yf
  br i1 %i.eyb, label %bb.adb, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  %i.gbw = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gbx = load i64, ptr %i.gbw, align 8, !tbaa !71, !noalias !632
  %.not.i19.i145.i598 = icmp ne i64 %i.gbx, 0
  %i.gby = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gbz = load ptr, ptr %i.gby, align 8, !noalias !632
  %i.gca = icmp ne ptr %i.gbz, null
  %i.gcb = select i1 %.not.i19.i145.i598, i1 %i.gca, i1 false
  br label %bb.adb

bb.adb:                                           ; preds = %bb.ada, %bb.acz
  %i.gcc = phi i1 [ true, %bb.acz ], [ %i.gcb, %bb.ada ]
  %i.gcd = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !632
  %i.gce = extractvalue { i32, ptr } %i.gcd, 1    ; 9 uses
  %i.gcf = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !632 ; 13 uses
  %i.gcg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gch = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !632 ; 11 uses
  %i.gci = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.gcj = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  %i.gck = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.gcl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.gcm = load ptr, ptr %i.gcl, align 8, !tbaa !66, !noalias !632
  %i.gcn = getelementptr inbounds [8 x i8], ptr %i.gcm, i64 %i.gcj ; 9 uses
  br i1 %i.gcc, label %bb.adc, label %.preheader32.i146.i599

.preheader32.i146.i599:                           ; preds = %bb.adb
  %i.gco = icmp sgt i64 %i.gch, 0
  br i1 %i.gco, label %.lr.ph.i148.i600.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i600.preheader:                       ; preds = %.preheader32.i146.i599
  %xtraiter3475 = and i64 %i.gch, 1
  %i.gcp = icmp eq i64 %i.gch, 1
  br i1 %i.gcp, label %.lr.ph.i148.i600.epil.preheader, label %.lr.ph.i148.i600.preheader.new

.lr.ph.i148.i600.preheader.new:                   ; preds = %.lr.ph.i148.i600.preheader
  %unroll_iter3478 = and i64 %i.gch, 9223372036854775806
  br label %.lr.ph.i148.i600

bb.adc:                                           ; preds = %bb.adb
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gcr = load ptr, ptr %i.gcq, align 8, !tbaa !171, !noalias !632
  %i.gcs = load ptr, ptr %i.gcr, align 8, !tbaa !306, !noalias !632 ; 4 uses
  %.not.i.i.i151.i603 = icmp eq ptr %i.gcs, null
  br i1 %.not.i.i.i151.i603, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604, label %bb.add

bb.add:                                           ; preds = %bb.adc
  %i.gct = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.gcu = load i64, ptr %i.gct, align 8, !tbaa !438, !noalias !632
  %i.gcv = getelementptr inbounds nuw i8, ptr %i.gcs, i64 9
  %i.gcw = load i8, ptr %i.gcv, align 1, !tbaa !439, !range !127, !noalias !632, !noundef !128
  %i.gcx = trunc nuw i8 %i.gcw to i1
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gcs, i64 8
  %i.gcz = load i8, ptr %i.gcy, align 8, !range !127, !noalias !632
  %i.gda = trunc nuw i8 %i.gcz to i1
  %i.gdb = select i1 %i.gcx, i1 %i.gda, i1 false, !prof !117
  %i.gdc = getelementptr inbounds nuw i8, ptr %i.gcs, i64 16
  %i.gdd = load ptr, ptr %i.gdc, align 8, !noalias !632
  %i.gde = select i1 %i.gdb, ptr %i.gdd, ptr null, !prof !117
  %i.gdf = getelementptr inbounds i8, ptr %i.gde, i64 %i.gcu
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604: ; preds = %bb.add, %bb.adc
  %.0.i.i.i153.i605 = phi ptr [ %i.gdf, %bb.add ], [ null, %bb.adc ] ; 5 uses
  %i.gdg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gdh = load i64, ptr %i.gdg, align 8, !tbaa !178, !noalias !632 ; 2 uses
  %i.gdi = ashr i64 %i.gdh, 3
  %i.gdj = and i64 %i.gdh, 7
  %i.gdk = icmp ne i64 %i.gdj, 0
  %i.gdl = zext i1 %i.gdk to i64
  %i.gdm = add nsw i64 %i.gdi, %i.gdl
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i605, i8 0, i64 %i.gdm, i1 false), !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24, !noalias !632
  %i.gdn = load ptr, ptr %i.gck, align 8, !tbaa !66, !noalias !632
  %i.gdo = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %i.gdn, i64 noundef %i.gdo, i64 noundef %i.gch), !noalias !632
  %i.gdp = icmp sgt i64 %i.gch, 0
  br i1 %i.gdp, label %.lr.ph55.i155.i607, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i607:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604
  %i.gdq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.gdr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ade

bb.ade:                                           ; preds = %.loopexit.i167.i619, %.lr.ph55.i155.i607
  %.081.i54.i156.i608 = phi i64 [ 0, %.lr.ph55.i155.i607 ], [ %.5.i.i169.i621, %.loopexit.i167.i619 ] ; 12 uses
  %.082.i53.i157.i609 = phi i64 [ 0, %.lr.ph55.i155.i607 ], [ %.587.i.i168.i620, %.loopexit.i167.i619 ] ; 6 uses
  %i.gds = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %20), !noalias !632 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i610 = trunc i32 %i.gds to i16 ; 10 uses
  %i.gdt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !632
  %.not.i20.i159.i611 = icmp ne i64 %i.gdt, 0
  %i.gdu = load ptr, ptr %i.v, align 8, !noalias !632
  %i.gdv = icmp ne ptr %i.gdu, null
  %i.gdw = select i1 %.not.i20.i159.i611, i1 %i.gdv, i1 false
  br i1 %i.gdw, label %bb.adq, label %bb.adf

bb.adf:                                           ; preds = %bb.ade
  %.sroa.14.0.extract.shift.i.i160.i612 = lshr i32 %i.gds, 16
  %.sroa.14.0.extract.trunc.i.i161.i613 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i612 to i64
  %sext91.i.i162.i614 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i613, 48
  %i.gdx = ashr exact i64 %sext91.i.i162.i614, 48
  %i.gdy = add nsw i64 %i.gdx, %.082.i53.i157.i609 ; 6 uses
  %i.gdz = ashr i32 %i.gds, 16                    ; 2 uses
  %sext.i.i163.i615 = shl i32 %i.gds, 16
  %i.gea = ashr exact i32 %sext.i.i163.i615, 16
  %i.geb = icmp eq i32 %i.gdz, %i.gea
  br i1 %i.geb, label %bb.adg, label %bb.adh

bb.adg:                                           ; preds = %bb.adf
  %i.gec = sext i16 %.sroa.0.0.extract.trunc.i.i158.i610 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i605, i64 noundef %.081.i54.i156.i608, i64 noundef %i.gec, i1 noundef zeroext true), !noalias !632
  %i.ged = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i610, 0
  br i1 %i.ged, label %.lr.ph39.i178.i630.preheader, label %.loopexit.i167.i619

.lr.ph39.i178.i630.preheader:                     ; preds = %bb.adg
  %i.gee = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i610, 1
  br i1 %i.gee, label %.lr.ph39.i178.i630.epil.preheader, label %.lr.ph39.i178.i630.preheader.new

.lr.ph39.i178.i630.preheader.new:                 ; preds = %.lr.ph39.i178.i630.preheader
  %unroll_iter3484 = and i64 %i.gec, 32766
  br label %.lr.ph39.i178.i630

.lr.ph39.i178.i630:                               ; preds = %.lr.ph39.i178.i630, %.lr.ph39.i178.i630.preheader.new
  %.1.i37.i180.i632 = phi i64 [ %.081.i54.i156.i608, %.lr.ph39.i178.i630.preheader.new ], [ %i.geu, %.lr.ph39.i178.i630 ] ; 4 uses
  %niter3485 = phi i64 [ 0, %.lr.ph39.i178.i630.preheader.new ], [ %niter3485.next.1, %.lr.ph39.i178.i630 ]
  %i.gef = shl nsw i64 %.1.i37.i180.i632, 2
  %i.geg = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gef
  %i.geh = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %.1.i37.i180.i632
  %i.gei = load i64, ptr %i.geh, align 8, !tbaa !130, !noalias !632
  %i.gej = shl i64 %i.gei, 2
  %i.gek = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gej
  %i.gel = load i32, ptr %i.gek, align 1, !noalias !632
  store i32 %i.gel, ptr %i.geg, align 1, !noalias !632
  %i.gem = add nsw i64 %.1.i37.i180.i632, 1       ; 2 uses
  %i.gen = shl nsw i64 %i.gem, 2
  %i.geo = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gen
  %i.gep = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %i.gem
  %i.geq = load i64, ptr %i.gep, align 8, !tbaa !130, !noalias !632
  %i.ger = shl i64 %i.geq, 2
  %i.ges = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.ger
  %i.get = load i32, ptr %i.ges, align 1, !noalias !632
  store i32 %i.get, ptr %i.geo, align 1, !noalias !632
  %i.geu = add nsw i64 %.1.i37.i180.i632, 2       ; 3 uses
  %niter3485.next.1 = add i64 %niter3485, 2       ; 2 uses
  %niter3485.ncmp.1 = icmp eq i64 %niter3485.next.1, %unroll_iter3484
  br i1 %niter3485.ncmp.1, label %.loopexit.i167.i619.loopexit3191.unr-lcssa, label %.lr.ph39.i178.i630, !llvm.loop !635

bb.adh:                                           ; preds = %bb.adf
  %i.gev = icmp sgt i32 %i.gdz, 0
  %i.gew = sext i16 %.sroa.0.0.extract.trunc.i.i158.i610 to i64 ; 2 uses
  br i1 %i.gev, label %.preheader30.i170.i622, label %.loopexit.sink.split.i164.i616

.preheader30.i170.i622:                           ; preds = %bb.adh
  %i.gex = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i610, 0
  br i1 %i.gex, label %.lr.ph36.i171.i623, label %.loopexit.i167.i619

.lr.ph36.i171.i623:                               ; preds = %.preheader30.i170.i622, %bb.adp
  %.079.i35.i172.i624 = phi i64 [ %i.ggh, %bb.adp ], [ 0, %.preheader30.i170.i622 ]
  %.2.i34.i173.i625 = phi i64 [ %i.ggg, %bb.adp ], [ %.081.i54.i156.i608, %.preheader30.i170.i622 ] ; 10 uses
  %i.gey = load ptr, ptr %i.gck, align 8, !tbaa !66, !noalias !632 ; 2 uses
  %.not.i21.i174.i626 = icmp eq ptr %i.gey, null
  br i1 %.not.i21.i174.i626, label %bb.adj, label %bb.adi

bb.adi:                                           ; preds = %.lr.ph36.i171.i623
  %i.gez = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  %i.gfa = add nsw i64 %i.gez, %.2.i34.i173.i625  ; 2 uses
  %i.gfb = lshr i64 %i.gfa, 3
  %i.gfc = getelementptr inbounds nuw i8, ptr %i.gey, i64 %i.gfb
  %i.gfd = load i8, ptr %i.gfc, align 1, !tbaa !98, !noalias !632
  %i.gfe = trunc i64 %i.gfa to i8
  %i.gff = and i8 %i.gfe, 7
  %i.gfg = lshr i8 %i.gfd, %i.gff
  %i.gfh = trunc i8 %i.gfg to i1
  br i1 %i.gfh, label %bb.adn, label %bb.ado

bb.adj:                                           ; preds = %.lr.ph36.i171.i623
  %i.gfi = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !632
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gfi, i64 40
  %i.gfk = load i32, ptr %i.gfj, align 8, !tbaa !42, !noalias !632
  switch i32 %i.gfk, label %bb.adm [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i628
    i32 28, label %bb.adk
    i32 38, label %bb.adl
  ]

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.ghr = getelementptr inbounds i8, ptr %.0.i.i.i153.i605, i64 %i.ghq ; 2 uses
  %i.ghs = load i8, ptr %i.ghr, align 1, !tbaa !98, !noalias !632
  %i.ght = or i8 %i.ghs, %i.ghp
  store i8 %i.ght, ptr %i.ghr, align 1, !tbaa !98, !noalias !632
  %i.ghu = add nsw i64 %.183.i47.i200.i652, 1
  br label %bb.ady

bb.adx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i204.i656, %bb.adv, %bb.adu, %bb.adt, %bb.adr
  %i.ghv = shl nsw i64 %.3.i48.i199.i651, 2
  %i.ghw = getelementptr inbounds i8, ptr %i.gcf, i64 %i.ghv
  store i32 0, ptr %i.ghw, align 1, !noalias !632
  br label %bb.ady

bb.ady:                                           ; preds = %bb.adx, %bb.adw
  %.284.i.i202.i654 = phi i64 [ %i.ghu, %bb.adw ], [ %.183.i47.i200.i652, %bb.adx ] ; 2 uses
  %i.ghx = add nsw i64 %.3.i48.i199.i651, 1       ; 2 uses
  %i.ghy = add nuw nsw i64 %.078.i49.i198.i650, 1 ; 2 uses
  %exitcond66.not.i203.i655 = icmp eq i64 %i.ghy, %i.ggl
  br i1 %exitcond66.not.i203.i655, label %.loopexit.i167.i619, label %.lr.ph50.i197.i649, !llvm.loop !637

bb.adz:                                           ; preds = %bb.adq
  %i.ghz = icmp sgt i32 %i.ggi, 0
  %i.gia = sext i16 %.sroa.0.0.extract.trunc.i.i158.i610 to i64 ; 2 uses
  br i1 %i.ghz, label %.preheader27.i183.i635, label %.loopexit.sink.split.i164.i616

.preheader27.i183.i635:                           ; preds = %bb.adz
  %i.gib = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i610, 0
  br i1 %i.gib, label %.lr.ph44.i184.i636, label %.loopexit.i167.i619

.lr.ph44.i184.i636:                               ; preds = %.preheader27.i183.i635, %bb.aen
  %.0.i43.i185.i637 = phi i64 [ %i.gkf, %bb.aen ], [ 0, %.preheader27.i183.i635 ]
  %.4.i42.i186.i638 = phi i64 [ %i.gke, %bb.aen ], [ %.081.i54.i156.i608, %.preheader27.i183.i635 ] ; 10 uses
  %.385.i41.i187.i639 = phi i64 [ %.486.i.i189.i641, %bb.aen ], [ %.082.i53.i157.i609, %.preheader27.i183.i635 ] ; 2 uses
  %i.gic = load ptr, ptr %i.gck, align 8, !tbaa !66, !noalias !632 ; 2 uses
  %.not.i26.i188.i640 = icmp eq ptr %i.gic, null
  br i1 %.not.i26.i188.i640, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %.lr.ph44.i184.i636
  %i.gid = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  %i.gie = add nsw i64 %i.gid, %.4.i42.i186.i638  ; 2 uses
  %i.gif = lshr i64 %i.gie, 3
  %i.gig = getelementptr inbounds nuw i8, ptr %i.gic, i64 %i.gif
  %i.gih = load i8, ptr %i.gig, align 1, !tbaa !98, !noalias !632
  %i.gii = trunc i64 %i.gie to i8
  %i.gij = and i8 %i.gii, 7
  %i.gik = lshr i8 %i.gih, %i.gij
  %i.gil = trunc i8 %i.gik to i1
  br i1 %i.gil, label %bb.aef, label %bb.aem

bb.aeb:                                           ; preds = %.lr.ph44.i184.i636
  %i.gim = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !632
  %i.gin = getelementptr inbounds nuw i8, ptr %i.gim, i64 40
  %i.gio = load i32, ptr %i.gin, align 8, !tbaa !42, !noalias !632
  switch i32 %i.gio, label %bb.aee [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646
    i32 28, label %bb.aec
    i32 38, label %bb.aed
  ]

bb.aec:                                           ; preds = %bb.aeb
  %i.gip = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i638), !noalias !632
  br i1 %i.gip, label %bb.aem, label %bb.aef

bb.aed:                                           ; preds = %bb.aeb
  %i.giq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i638), !noalias !632
  br i1 %i.giq, label %bb.aem, label %bb.aef

bb.aee:                                           ; preds = %bb.aeb
  %i.gir = load i64, ptr %i.gdq, align 8, !tbaa !71, !noalias !632
  %i.gis = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !632
  %.not24.i195.i647 = icmp eq i64 %i.gir, %i.gis
  br i1 %.not24.i195.i647, label %bb.aem, label %bb.aef

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646:  ; preds = %bb.aeb
  %i.git = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i638), !noalias !632
  br i1 %i.git, label %bb.aem, label %bb.aef

bb.aef:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646, %bb.aee, %bb.aed, %bb.aec, %bb.aea
  %i.giu = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %.4.i42.i186.i638 ; 2 uses
  %i.giv = load i64, ptr %i.giu, align 8, !tbaa !130, !noalias !632 ; 4 uses
  %i.giw = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !632 ; 2 uses
  %.not.i29.i191.i643 = icmp eq ptr %i.giw, null
  br i1 %.not.i29.i191.i643, label %bb.aeh, label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef
  %i.gix = load i64, ptr %i.gdr, align 8, !tbaa !99, !noalias !632
  %i.giy = add nsw i64 %i.gix, %i.giv             ; 2 uses
  %i.giz = lshr i64 %i.giy, 3
  %i.gja = getelementptr inbounds nuw i8, ptr %i.giw, i64 %i.giz
  %i.gjb = load i8, ptr %i.gja, align 1, !tbaa !98, !noalias !632
  %i.gjc = trunc i64 %i.giy to i8
  %i.gjd = and i8 %i.gjc, 7
  %i.gje = lshr i8 %i.gjb, %i.gjd
  %i.gjf = trunc i8 %i.gje to i1
  br i1 %i.gjf, label %bb.ael, label %bb.aem

bb.aeh:                                           ; preds = %bb.aef
  %i.gjg = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !632
  %i.gjh = getelementptr inbounds nuw i8, ptr %i.gjg, i64 40
  %i.gji = load i32, ptr %i.gjh, align 8, !tbaa !42, !noalias !632
  switch i32 %i.gji, label %bb.aek [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644
    i32 28, label %bb.aei
    i32 38, label %bb.aej
  ]

bb.aei:                                           ; preds = %bb.aeh
  %i.gjj = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.giv), !noalias !632
  br i1 %i.gjj, label %bb.aem, label %bb.ael

bb.aej:                                           ; preds = %bb.aeh
  %i.gjk = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.giv), !noalias !632
  br i1 %i.gjk, label %bb.aem, label %bb.ael

bb.aek:                                           ; preds = %bb.aeh
  %i.gjl = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !632
  %i.gjm = load i64, ptr %i.gcg, align 8, !tbaa !62, !noalias !632
  %.not25.i193.i645 = icmp eq i64 %i.gjl, %i.gjm
  br i1 %.not25.i193.i645, label %bb.aem, label %bb.ael

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644:  ; preds = %bb.aeh
  %i.gjn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.giv), !noalias !632
  br i1 %i.gjn, label %bb.aem, label %bb.ael

bb.ael:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644, %bb.aek, %bb.aej, %bb.aei, %bb.aeg
  %i.gjo = shl nsw i64 %.4.i42.i186.i638, 2
  %i.gjp = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gjo
  %i.gjq = load i64, ptr %i.giu, align 8, !tbaa !130, !noalias !632
  %i.gjr = shl i64 %i.gjq, 2
  %i.gjs = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gjr
  %i.gjt = load i32, ptr %i.gjs, align 1, !noalias !632
  store i32 %i.gjt, ptr %i.gjp, align 1, !noalias !632
  %i.gju = srem i64 %.4.i42.i186.i638, 8
  %i.gjv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gju
  %i.gjw = load i8, ptr %i.gjv, align 1, !tbaa !98, !noalias !632
  %i.gjx = sdiv i64 %.4.i42.i186.i638, 8
  %i.gjy = getelementptr inbounds i8, ptr %.0.i.i.i153.i605, i64 %i.gjx ; 2 uses
  %i.gjz = load i8, ptr %i.gjy, align 1, !tbaa !98, !noalias !632
  %i.gka = or i8 %i.gjz, %i.gjw
  store i8 %i.gka, ptr %i.gjy, align 1, !tbaa !98, !noalias !632
  %i.gkb = add nsw i64 %.385.i41.i187.i639, 1
  br label %bb.aen

bb.aem:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644, %bb.aek, %bb.aej, %bb.aei, %bb.aeg, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646, %bb.aee, %bb.aed, %bb.aec, %bb.aea
  %i.gkc = shl nsw i64 %.4.i42.i186.i638, 2
  %i.gkd = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gkc
  store i32 0, ptr %i.gkd, align 1, !noalias !632
  br label %bb.aen

bb.aen:                                           ; preds = %bb.aem, %bb.ael
  %.486.i.i189.i641 = phi i64 [ %i.gkb, %bb.ael ], [ %.385.i41.i187.i639, %bb.aem ] ; 2 uses
  %i.gke = add nsw i64 %.4.i42.i186.i638, 1       ; 2 uses
  %i.gkf = add nuw nsw i64 %.0.i43.i185.i637, 1   ; 2 uses
  %exitcond65.not.i190.i642 = icmp eq i64 %i.gkf, %i.gia
  br i1 %exitcond65.not.i190.i642, label %.loopexit.i167.i619, label %.lr.ph44.i184.i636, !llvm.loop !638

.loopexit.sink.split.i164.i616:                   ; preds = %bb.adz, %bb.adh
  %.sink86.i165.i617 = phi i64 [ %i.gew, %bb.adh ], [ %i.gia, %bb.adz ] ; 2 uses
  %.587.i.ph.i166.i618 = phi i64 [ %i.gdy, %bb.adh ], [ %.082.i53.i157.i609, %bb.adz ]
  %i.gkg = shl nsw i64 %.081.i54.i156.i608, 2
  %i.gkh = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gkg
  %i.gki = shl nsw i64 %.sink86.i165.i617, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.gkh, i8 0, i64 %i.gki, i1 false), !noalias !632
  %i.gkj = add nsw i64 %.sink86.i165.i617, %.081.i54.i156.i608
  br label %.loopexit.i167.i619

.loopexit.i167.i619.loopexit3191.unr-lcssa:       ; preds = %.lr.ph39.i178.i630
  %i.gkk = and i16 %.sroa.0.0.extract.trunc.i.i158.i610, 1
  %lcmp.mod3481.not = icmp eq i16 %i.gkk, 0
  br i1 %lcmp.mod3481.not, label %.loopexit.i167.i619, label %.lr.ph39.i178.i630.epil.preheader

.lr.ph39.i178.i630.epil.preheader:                ; preds = %.loopexit.i167.i619.loopexit3191.unr-lcssa, %.lr.ph39.i178.i630.preheader
  %.1.i37.i180.i632.epil.init = phi i64 [ %.081.i54.i156.i608, %.lr.ph39.i178.i630.preheader ], [ %i.geu, %.loopexit.i167.i619.loopexit3191.unr-lcssa ] ; 3 uses
  %lcmp.mod3483 = trunc i32 %i.gds to i1
  call void @llvm.assume(i1 %lcmp.mod3483)
  %i.gkl = shl nsw i64 %.1.i37.i180.i632.epil.init, 2
  %i.gkm = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gkl
  %i.gkn = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %.1.i37.i180.i632.epil.init
  %i.gko = load i64, ptr %i.gkn, align 8, !tbaa !130, !noalias !632
  %i.gkp = shl i64 %i.gko, 2
  %i.gkq = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gkp
  %i.gkr = load i32, ptr %i.gkq, align 1, !noalias !632
  store i32 %i.gkr, ptr %i.gkm, align 1, !noalias !632
  %i.gks = add nsw i64 %.1.i37.i180.i632.epil.init, 1
  br label %.loopexit.i167.i619

.loopexit.i167.i619:                              ; preds = %bb.adp, %.lr.ph39.i178.i630.epil.preheader, %.loopexit.i167.i619.loopexit3191.unr-lcssa, %bb.aen, %bb.ady, %.loopexit.sink.split.i164.i616, %.preheader27.i183.i635, %.preheader.i196.i648, %.preheader30.i170.i622, %bb.adg
  %.587.i.i168.i620 = phi i64 [ %.587.i.ph.i166.i618, %.loopexit.sink.split.i164.i616 ], [ %i.gdy, %bb.adg ], [ %.486.i.i189.i641, %bb.aen ], [ %i.gdy, %.lr.ph39.i178.i630.epil.preheader ], [ %i.gdy, %.preheader30.i170.i622 ], [ %.082.i53.i157.i609, %.preheader.i196.i648 ], [ %.082.i53.i157.i609, %.preheader27.i183.i635 ], [ %.284.i.i202.i654, %bb.ady ], [ %i.gdy, %.loopexit.i167.i619.loopexit3191.unr-lcssa ], [ %i.gdy, %bb.adp ] ; 2 uses
  %.5.i.i169.i621 = phi i64 [ %i.gkj, %.loopexit.sink.split.i164.i616 ], [ %.081.i54.i156.i608, %bb.adg ], [ %i.gke, %bb.aen ], [ %i.gks, %.lr.ph39.i178.i630.epil.preheader ], [ %.081.i54.i156.i608, %.preheader30.i170.i622 ], [ %.081.i54.i156.i608, %.preheader.i196.i648 ], [ %.081.i54.i156.i608, %.preheader27.i183.i635 ], [ %i.ghx, %bb.ady ], [ %i.geu, %.loopexit.i167.i619.loopexit3191.unr-lcssa ], [ %i.ggg, %bb.adp ] ; 2 uses
  %i.gkt = icmp slt i64 %.5.i.i169.i621, %i.gch
  br i1 %i.gkt, label %bb.ade, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !639

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i619, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604
  %.082.i.lcssa.i154.i606 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604 ], [ %.587.i.i168.i620, %.loopexit.i167.i619 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24, !noalias !632
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i600:                                 ; preds = %.lr.ph.i148.i600, %.lr.ph.i148.i600.preheader.new
  %.0.i1833.i149.i601 = phi i64 [ 0, %.lr.ph.i148.i600.preheader.new ], [ %i.glj, %.lr.ph.i148.i600 ] ; 4 uses
  %niter3479 = phi i64 [ 0, %.lr.ph.i148.i600.preheader.new ], [ %niter3479.next.1, %.lr.ph.i148.i600 ]
  %i.gku = shl nsw i64 %.0.i1833.i149.i601, 2
  %i.gkv = getelementptr inbounds nuw i8, ptr %i.gcf, i64 %i.gku
  %i.gkw = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %.0.i1833.i149.i601
  %i.gkx = load i64, ptr %i.gkw, align 8, !tbaa !130, !noalias !632
  %i.gky = shl i64 %i.gkx, 2
  %i.gkz = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gky
  %i.gla = load i32, ptr %i.gkz, align 1, !noalias !632
  store i32 %i.gla, ptr %i.gkv, align 1, !noalias !632
  %i.glb = or disjoint i64 %.0.i1833.i149.i601, 1 ; 2 uses
  %i.glc = shl nsw i64 %i.glb, 2
  %i.gld = getelementptr inbounds nuw i8, ptr %i.gcf, i64 %i.glc
  %i.gle = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.glb
  %i.glf = load i64, ptr %i.gle, align 8, !tbaa !130, !noalias !632
  %i.glg = shl i64 %i.glf, 2
  %i.glh = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.glg
  %i.gli = load i32, ptr %i.glh, align 1, !noalias !632
  store i32 %i.gli, ptr %i.gld, align 1, !noalias !632
  %i.glj = add nuw nsw i64 %.0.i1833.i149.i601, 2 ; 2 uses
  %niter3479.next.1 = add i64 %niter3479, 2       ; 2 uses
  %niter3479.ncmp.1 = icmp eq i64 %niter3479.next.1, %unroll_iter3478
  br i1 %niter3479.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i600, !llvm.loop !640

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i600
  %lcmp.mod3476.not = icmp eq i64 %xtraiter3475, 0
  br i1 %lcmp.mod3476.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i600.epil.preheader

.lr.ph.i148.i600.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i600.preheader
  %.0.i1833.i149.i601.epil.init = phi i64 [ 0, %.lr.ph.i148.i600.preheader ], [ %i.glj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3477 = trunc i64 %i.gch to i1
  call void @llvm.assume(i1 %lcmp.mod3477)
  %i.glk = shl nsw i64 %.0.i1833.i149.i601.epil.init, 2
  %i.gll = getelementptr inbounds nuw i8, ptr %i.gcf, i64 %i.glk
  %i.glm = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %.0.i1833.i149.i601.epil.init
  %i.gln = load i64, ptr %i.glm, align 8, !tbaa !130, !noalias !632
  %i.glo = shl i64 %i.gln, 2
  %i.glp = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.glo
  %i.glq = load i32, ptr %i.glp, align 1, !noalias !632
  store i32 %i.glq, ptr %i.gll, align 1, !noalias !632
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa: ; preds = %.lr.ph.i.i539
  %lcmp.mod3465.not = icmp eq i64 %xtraiter3464, 0
  br i1 %lcmp.mod3465.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i539.epil.preheader

.lr.ph.i.i539.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa, %.lr.ph.i.i539.preheader
  %.0.i1833.i.i540.epil.init = phi i64 [ 0, %.lr.ph.i.i539.preheader ], [ %i.fhz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa ] ; 2 uses
  %lcmp.mod3466 = trunc i64 %i.eyn to i1
  call void @llvm.assume(i1 %lcmp.mod3466)
  %i.glr = shl nsw i64 %.0.i1833.i.i540.epil.init, 2
  %i.gls = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.glr
  %i.glt = getelementptr inbounds nuw i8, ptr %i.eyt, i64 %.0.i1833.i.i540.epil.init
  %i.glu = load i8, ptr %i.glt, align 1, !tbaa !98, !noalias !605
  %i.glv = zext i8 %i.glu to i64
  %i.glw = shl nuw nsw i64 %i.glv, 2
  %i.glx = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.glw
  %i.gly = load i32, ptr %i.glx, align 1, !noalias !605
  store i32 %i.gly, ptr %i.gls, align 1, !noalias !605
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa: ; preds = %.lr.ph.i24.i478
  %lcmp.mod3454.not = icmp eq i64 %xtraiter3453, 0
  br i1 %lcmp.mod3454.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i478.epil.preheader

.lr.ph.i24.i478.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa, %.lr.ph.i24.i478.preheader
  %.0.i1833.i25.i479.epil.init = phi i64 [ 0, %.lr.ph.i24.i478.preheader ], [ %i.frx, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa ] ; 2 uses
  %lcmp.mod3455 = trunc i64 %i.fil to i1
  call void @llvm.assume(i1 %lcmp.mod3455)
  %i.glz = shl nsw i64 %.0.i1833.i25.i479.epil.init, 2
  %i.gma = getelementptr inbounds nuw i8, ptr %i.fij, i64 %i.glz
  %i.gmb = getelementptr inbounds nuw [2 x i8], ptr %i.fir, i64 %.0.i1833.i25.i479.epil.init
  %i.gmc = load i16, ptr %i.gmb, align 2, !tbaa !269, !noalias !614
  %i.gmd = zext i16 %i.gmc to i64
  %i.gme = shl nuw nsw i64 %i.gmd, 2
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.gme
  %i.gmg = load i32, ptr %i.gmf, align 1, !noalias !614
  store i32 %i.gmg, ptr %i.gma, align 1, !noalias !614
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa: ; preds = %.lr.ph.i86.i417
  %lcmp.mod3443.not = icmp eq i64 %xtraiter3442, 0
  br i1 %lcmp.mod3443.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i417.epil.preheader

.lr.ph.i86.i417.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa, %.lr.ph.i86.i417.preheader
  %.0.i1833.i87.i418.epil.init = phi i64 [ 0, %.lr.ph.i86.i417.preheader ], [ %i.gbv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa ] ; 2 uses
  %lcmp.mod3444 = trunc i64 %i.fsj to i1
  call void @llvm.assume(i1 %lcmp.mod3444)
  %i.gmh = shl nsw i64 %.0.i1833.i87.i418.epil.init, 2
  %i.gmi = getelementptr inbounds nuw i8, ptr %i.fsh, i64 %i.gmh
  %i.gmj = getelementptr inbounds nuw [4 x i8], ptr %i.fsp, i64 %.0.i1833.i87.i418.epil.init
  %i.gmk = load i32, ptr %i.gmj, align 4, !tbaa !3, !noalias !623
  %i.gml = shl i32 %i.gmk, 2
  %i.gmm = zext i32 %i.gml to i64
  %i.gmn = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gmm
  %i.gmo = load i32, ptr %i.gmn, align 1, !noalias !623
  store i32 %i.gmo, ptr %i.gmi, align 1, !noalias !623
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i417.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa, %.lr.ph.i24.i478.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa, %.lr.ph.i.i539.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa, %.lr.ph.i148.i600.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i538, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i477, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i415, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i599, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i416 = phi i64 [ %i.fil, %.lr.ph.i24.i478.epil.preheader ], [ %i.eyn, %.lr.ph.i.i539.epil.preheader ], [ %i.gch, %.lr.ph.i148.i600.epil.preheader ], [ %.082.i.lcssa.i.i545, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.eyn, %.preheader32.i.i538 ], [ %.082.i.lcssa.i30.i484, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.fil, %.preheader32.i22.i477 ], [ %.082.i.lcssa.i92.i423, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.fsj, %.preheader32.i84.i415 ], [ %.082.i.lcssa.i154.i606, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.gch, %.preheader32.i146.i599 ], [ %i.gch, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.eyn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa ], [ %i.fil, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa ], [ %i.fsj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa ], [ %i.fsj, %.lr.ph.i86.i417.epil.preheader ]
  %i.gmp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gmq = load i64, ptr %i.gmp, align 8, !tbaa !178, !noalias !601
  %i.gmr = sub nsw i64 %i.gmq, %.0.i147.sink.i416
  %i.gms = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.gmr, ptr %i.gms seq_cst, align 8, !noalias !601
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !601
  br label %.critedge69

bb.aeo:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.gmt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !641 ; 2 uses
  %i.gmu = load ptr, ptr %i.gmt, align 8, !tbaa !90, !noalias !641
  %i.gmv = getelementptr inbounds nuw i8, ptr %i.gmu, i64 64
  %i.gmw = load ptr, ptr %i.gmv, align 8, !noalias !641
  %i.gmx = call noundef i32 %i.gmw(ptr noundef nonnull align 8 dereferenceable(72) %i.gmt), !noalias !641, !inline_history !644
  %i.gmy = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !641
  %.not.i.i144.i842 = icmp ne i64 %i.gmy, 0
  %i.gmz = load ptr, ptr %i.v, align 8, !noalias !641
  %i.gna = icmp ne ptr %i.gmz, null
  %i.gnb = select i1 %.not.i.i144.i842, i1 %i.gna, i1 false ; 4 uses
  switch i32 %i.gmx, label %bb.aji [
    i32 1, label %bb.aep
    i32 2, label %bb.age
    i32 4, label %bb.aht
  ]

bb.aep:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.gnc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gnd = load i64, ptr %i.gnc, align 8, !tbaa !71, !noalias !645
  %.not.i19.i.i782 = icmp ne i64 %i.gnd, 0
  %i.gne = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gnf = load ptr, ptr %i.gne, align 8, !noalias !645
  %i.gng = icmp ne ptr %i.gnf, null
  %i.gnh = select i1 %.not.i19.i.i782, i1 %i.gng, i1 false
  br label %bb.aer

bb.aer:                                           ; preds = %bb.aeq, %bb.aep
  %i.gni = phi i1 [ true, %bb.aep ], [ %i.gnh, %bb.aeq ]
  %i.gnj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !645
  %i.gnk = extractvalue { i32, ptr } %i.gnj, 1    ; 9 uses
  %i.gnl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !645 ; 13 uses
  %i.gnm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gnn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !645 ; 11 uses
  %i.gno = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.gnp = load i64, ptr %i.gno, align 8, !tbaa !99, !noalias !645
  %i.gnq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.gns = load ptr, ptr %i.gnr, align 8, !tbaa !66, !noalias !645
  %i.gnt = getelementptr inbounds i8, ptr %i.gns, i64 %i.gnp ; 9 uses
  br i1 %i.gni, label %bb.aes, label %.preheader32.i.i783

.preheader32.i.i783:                              ; preds = %bb.aer
  %i.gnu = icmp sgt i64 %i.gnn, 0
  br i1 %i.gnu, label %.lr.ph.i.i784.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i784.preheader:                          ; preds = %.preheader32.i.i783
  %xtraiter3420 = and i64 %i.gnn, 1
  %i.gnv = icmp eq i64 %i.gnn, 1
  br i1 %i.gnv, label %.lr.ph.i.i784.epil.preheader, label %.lr.ph.i.i784.preheader.new

.lr.ph.i.i784.preheader.new:                      ; preds = %.lr.ph.i.i784.preheader
  %unroll_iter3423 = and i64 %i.gnn, 9223372036854775806
  br label %.lr.ph.i.i784

bb.aes:                                           ; preds = %bb.aer
  %i.gnw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gnx = load ptr, ptr %i.gnw, align 8, !tbaa !171, !noalias !645
  %i.gny = load ptr, ptr %i.gnx, align 8, !tbaa !306, !noalias !645 ; 4 uses
  %.not.i.i.i.i787 = icmp eq ptr %i.gny, null
  br i1 %.not.i.i.i.i787, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.gnz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.goa = load i64, ptr %i.gnz, align 8, !tbaa !438, !noalias !645
  %i.gob = getelementptr inbounds nuw i8, ptr %i.gny, i64 9
  %i.goc = load i8, ptr %i.gob, align 1, !tbaa !439, !range !127, !noalias !645, !noundef !128
  %i.god = trunc nuw i8 %i.goc to i1
  %i.goe = getelementptr inbounds nuw i8, ptr %i.gny, i64 8
  %i.gof = load i8, ptr %i.goe, align 8, !range !127, !noalias !645
  %i.gog = trunc nuw i8 %i.gof to i1
  %i.goh = select i1 %i.god, i1 %i.gog, i1 false, !prof !117
  %i.goi = getelementptr inbounds nuw i8, ptr %i.gny, i64 16
  %i.goj = load ptr, ptr %i.goi, align 8, !noalias !645
  %i.gok = select i1 %i.goh, ptr %i.goj, ptr null, !prof !117
  %i.gol = getelementptr inbounds i8, ptr %i.gok, i64 %i.goa
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788: ; preds = %bb.aet, %bb.aes
  %.0.i.i.i.i789 = phi ptr [ %i.gol, %bb.aet ], [ null, %bb.aes ] ; 5 uses
  %i.gom = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gon = load i64, ptr %i.gom, align 8, !tbaa !178, !noalias !645 ; 2 uses
  %i.goo = ashr i64 %i.gon, 3
  %i.gop = and i64 %i.gon, 7
  %i.goq = icmp ne i64 %i.gop, 0
  %i.gor = zext i1 %i.goq to i64
  %i.gos = add nsw i64 %i.goo, %i.gor
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i789, i8 0, i64 %i.gos, i1 false), !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !645
  %i.got = load ptr, ptr %i.gnq, align 8, !tbaa !66, !noalias !645
  %i.gou = load i64, ptr %i.gno, align 8, !tbaa !99, !noalias !645
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.got, i64 noundef %i.gou, i64 noundef %i.gnn), !noalias !645
  %i.gov = icmp sgt i64 %i.gnn, 0
  br i1 %i.gov, label %.lr.ph55.i.i791, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i791:                                  ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788
  %i.gow = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.gox = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.aeu

bb.aeu:                                           ; preds = %.loopexit.i.i803, %.lr.ph55.i.i791
  %.081.i54.i.i792 = phi i64 [ 0, %.lr.ph55.i.i791 ], [ %.5.i.i.i805, %.loopexit.i.i803 ] ; 12 uses
  %.082.i53.i.i793 = phi i64 [ 0, %.lr.ph55.i.i791 ], [ %.587.i.i.i804, %.loopexit.i.i803 ] ; 6 uses
  %i.goy = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %19), !noalias !645 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i794 = trunc i32 %i.goy to i16 ; 10 uses
  %i.goz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !645
  %.not.i20.i.i795 = icmp ne i64 %i.goz, 0
  %i.gpa = load ptr, ptr %i.v, align 8, !noalias !645
  %i.gpb = icmp ne ptr %i.gpa, null
  %i.gpc = select i1 %.not.i20.i.i795, i1 %i.gpb, i1 false
  br i1 %i.gpc, label %bb.afg, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  %.sroa.14.0.extract.shift.i.i.i796 = lshr i32 %i.goy, 16
  %.sroa.14.0.extract.trunc.i.i.i797 = zext nneg i32 %.sroa.14.0.extract.shift.i.i.i796 to i64
  %sext91.i.i.i798 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i.i797, 48
  %i.gpd = ashr exact i64 %sext91.i.i.i798, 48
  %i.gpe = add nsw i64 %i.gpd, %.082.i53.i.i793   ; 6 uses
  %i.gpf = ashr i32 %i.goy, 16                    ; 2 uses
  %sext.i.i.i799 = shl i32 %i.goy, 16
  %i.gpg = ashr exact i32 %sext.i.i.i799, 16
  %i.gph = icmp eq i32 %i.gpf, %i.gpg
  br i1 %i.gph, label %bb.aew, label %bb.aex

bb.aew:                                           ; preds = %bb.aev
  %i.gpi = sext i16 %.sroa.0.0.extract.trunc.i.i.i794 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i.i789, i64 noundef %.081.i54.i.i792, i64 noundef %i.gpi, i1 noundef zeroext true), !noalias !645
  %i.gpj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i794, 0
  br i1 %i.gpj, label %.lr.ph39.i.i814.preheader, label %.loopexit.i.i803

.lr.ph39.i.i814.preheader:                        ; preds = %bb.aew
  %i.gpk = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i794, 1
  br i1 %i.gpk, label %.lr.ph39.i.i814.epil.preheader, label %.lr.ph39.i.i814.preheader.new

.lr.ph39.i.i814.preheader.new:                    ; preds = %.lr.ph39.i.i814.preheader
  %unroll_iter3429 = and i64 %i.gpi, 32766
  br label %.lr.ph39.i.i814

.lr.ph39.i.i814:                                  ; preds = %.lr.ph39.i.i814, %.lr.ph39.i.i814.preheader.new
  %.1.i37.i.i816 = phi i64 [ %.081.i54.i.i792, %.lr.ph39.i.i814.preheader.new ], [ %i.gqc, %.lr.ph39.i.i814 ] ; 4 uses
  %niter3430 = phi i64 [ 0, %.lr.ph39.i.i814.preheader.new ], [ %niter3430.next.1, %.lr.ph39.i.i814 ]
  %i.gpl = shl nsw i64 %.1.i37.i.i816, 3
  %i.gpm = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gpl
  %i.gpn = getelementptr inbounds i8, ptr %i.gnt, i64 %.1.i37.i.i816
  %i.gpo = load i8, ptr %i.gpn, align 1, !tbaa !98, !noalias !645
  %i.gpp = zext i8 %i.gpo to i64
  %i.gpq = shl nuw nsw i64 %i.gpp, 3
  %i.gpr = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gpq
  %i.gps = load i64, ptr %i.gpr, align 1, !noalias !645
  store i64 %i.gps, ptr %i.gpm, align 1, !noalias !645
  %i.gpt = add nsw i64 %.1.i37.i.i816, 1          ; 2 uses
  %i.gpu = shl nsw i64 %i.gpt, 3
  %i.gpv = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gpu
  %i.gpw = getelementptr inbounds i8, ptr %i.gnt, i64 %i.gpt
  %i.gpx = load i8, ptr %i.gpw, align 1, !tbaa !98, !noalias !645
  %i.gpy = zext i8 %i.gpx to i64
  %i.gpz = shl nuw nsw i64 %i.gpy, 3
  %i.gqa = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gpz
  %i.gqb = load i64, ptr %i.gqa, align 1, !noalias !645
  store i64 %i.gqb, ptr %i.gpv, align 1, !noalias !645
  %i.gqc = add nsw i64 %.1.i37.i.i816, 2          ; 3 uses
  %niter3430.next.1 = add i64 %niter3430, 2       ; 2 uses
  %niter3430.ncmp.1 = icmp eq i64 %niter3430.next.1, %unroll_iter3429
  br i1 %niter3430.ncmp.1, label %.loopexit.i.i803.loopexit3229.unr-lcssa, label %.lr.ph39.i.i814, !llvm.loop !648

bb.aex:                                           ; preds = %bb.aev
  %i.gqd = icmp sgt i32 %i.gpf, 0
  %i.gqe = sext i16 %.sroa.0.0.extract.trunc.i.i.i794 to i64 ; 2 uses
  br i1 %i.gqd, label %.preheader30.i.i806, label %.loopexit.sink.split.i.i800

.preheader30.i.i806:                              ; preds = %bb.aex
  %i.gqf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i794, 0
  br i1 %i.gqf, label %.lr.ph36.i.i807, label %.loopexit.i.i803

.lr.ph36.i.i807:                                  ; preds = %.preheader30.i.i806, %bb.aff
  %.079.i35.i.i808 = phi i64 [ %i.grq, %bb.aff ], [ 0, %.preheader30.i.i806 ]
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i8 %i.gte, ptr %i.gtc, align 1, !tbaa !98, !noalias !645
  %i.gtf = add nsw i64 %.183.i47.i.i836, 1
  br label %bb.afo

bb.afn:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i.i840, %bb.afl, %bb.afk, %bb.afj, %bb.afh
  %i.gtg = shl nsw i64 %.3.i48.i.i835, 3
  %i.gth = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gtg
  store i64 0, ptr %i.gth, align 1, !noalias !645
  br label %bb.afo

bb.afo:                                           ; preds = %bb.afn, %bb.afm
  %.284.i.i.i838 = phi i64 [ %i.gtf, %bb.afm ], [ %.183.i47.i.i836, %bb.afn ] ; 2 uses
  %i.gti = add nsw i64 %.3.i48.i.i835, 1          ; 2 uses
  %i.gtj = add nuw nsw i64 %.078.i49.i.i834, 1    ; 2 uses
  %exitcond66.not.i.i839 = icmp eq i64 %i.gtj, %i.gru
  br i1 %exitcond66.not.i.i839, label %.loopexit.i.i803, label %.lr.ph50.i.i833, !llvm.loop !650

bb.afp:                                           ; preds = %bb.afg
  %i.gtk = icmp sgt i32 %i.grr, 0
  %i.gtl = sext i16 %.sroa.0.0.extract.trunc.i.i.i794 to i64 ; 2 uses
  br i1 %i.gtk, label %.preheader27.i.i819, label %.loopexit.sink.split.i.i800

.preheader27.i.i819:                              ; preds = %bb.afp
  %i.gtm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i794, 0
  br i1 %i.gtm, label %.lr.ph44.i.i820, label %.loopexit.i.i803

.lr.ph44.i.i820:                                  ; preds = %.preheader27.i.i819, %bb.agd
  %.0.i43.i.i821 = phi i64 [ %i.gvs, %bb.agd ], [ 0, %.preheader27.i.i819 ]
  %.4.i42.i.i822 = phi i64 [ %i.gvr, %bb.agd ], [ %.081.i54.i.i792, %.preheader27.i.i819 ] ; 10 uses
  %.385.i41.i.i823 = phi i64 [ %.486.i.i.i825, %bb.agd ], [ %.082.i53.i.i793, %.preheader27.i.i819 ] ; 2 uses
  %i.gtn = load ptr, ptr %i.gnq, align 8, !tbaa !66, !noalias !645 ; 2 uses
  %.not.i26.i.i824 = icmp eq ptr %i.gtn, null
  br i1 %.not.i26.i.i824, label %bb.afr, label %bb.afq

bb.afq:                                           ; preds = %.lr.ph44.i.i820
  %i.gto = load i64, ptr %i.gno, align 8, !tbaa !99, !noalias !645
  %i.gtp = add nsw i64 %i.gto, %.4.i42.i.i822     ; 2 uses
  %i.gtq = lshr i64 %i.gtp, 3
  %i.gtr = getelementptr inbounds nuw i8, ptr %i.gtn, i64 %i.gtq
  %i.gts = load i8, ptr %i.gtr, align 1, !tbaa !98, !noalias !645
  %i.gtt = trunc i64 %i.gtp to i8
  %i.gtu = and i8 %i.gtt, 7
  %i.gtv = lshr i8 %i.gts, %i.gtu
  %i.gtw = trunc i8 %i.gtv to i1
  br i1 %i.gtw, label %bb.afv, label %bb.agc

bb.afr:                                           ; preds = %.lr.ph44.i.i820
  %i.gtx = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !645
  %i.gty = getelementptr inbounds nuw i8, ptr %i.gtx, i64 40
  %i.gtz = load i32, ptr %i.gty, align 8, !tbaa !42, !noalias !645
  switch i32 %i.gtz, label %bb.afu [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830
    i32 28, label %bb.afs
    i32 38, label %bb.aft
  ]

bb.afs:                                           ; preds = %bb.afr
  %i.gua = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i822), !noalias !645
  br i1 %i.gua, label %bb.agc, label %bb.afv

bb.aft:                                           ; preds = %bb.afr
  %i.gub = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i822), !noalias !645
  br i1 %i.gub, label %bb.agc, label %bb.afv

bb.afu:                                           ; preds = %bb.afr
  %i.guc = load i64, ptr %i.gow, align 8, !tbaa !71, !noalias !645
  %i.gud = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !645
  %.not24.i.i831 = icmp eq i64 %i.guc, %i.gud
  br i1 %.not24.i.i831, label %bb.agc, label %bb.afv

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830:     ; preds = %bb.afr
  %i.gue = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i822), !noalias !645
  br i1 %i.gue, label %bb.agc, label %bb.afv

bb.afv:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830, %bb.afu, %bb.aft, %bb.afs, %bb.afq
  %i.guf = getelementptr inbounds i8, ptr %i.gnt, i64 %.4.i42.i.i822 ; 2 uses
  %i.gug = load i8, ptr %i.guf, align 1, !tbaa !98, !noalias !645
  %i.guh = zext i8 %i.gug to i64                  ; 4 uses
  %i.gui = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !645 ; 2 uses
  %.not.i29.i.i827 = icmp eq ptr %i.gui, null
  br i1 %.not.i29.i.i827, label %bb.afx, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  %i.guj = load i64, ptr %i.gox, align 8, !tbaa !99, !noalias !645
  %i.guk = add nsw i64 %i.guj, %i.guh             ; 2 uses
  %i.gul = lshr i64 %i.guk, 3
  %i.gum = getelementptr inbounds nuw i8, ptr %i.gui, i64 %i.gul
  %i.gun = load i8, ptr %i.gum, align 1, !tbaa !98, !noalias !645
  %i.guo = trunc i64 %i.guk to i8
  %i.gup = and i8 %i.guo, 7
  %i.guq = lshr i8 %i.gun, %i.gup
  %i.gur = trunc i8 %i.guq to i1
  br i1 %i.gur, label %bb.agb, label %bb.agc

bb.afx:                                           ; preds = %bb.afv
  %i.gus = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !645
  %i.gut = getelementptr inbounds nuw i8, ptr %i.gus, i64 40
  %i.guu = load i32, ptr %i.gut, align 8, !tbaa !42, !noalias !645
  switch i32 %i.guu, label %bb.aga [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828
    i32 28, label %bb.afy
    i32 38, label %bb.afz
  ]

bb.afy:                                           ; preds = %bb.afx
  %i.guv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.guh), !noalias !645
  br i1 %i.guv, label %bb.agc, label %bb.agb

bb.afz:                                           ; preds = %bb.afx
  %i.guw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.guh), !noalias !645
  br i1 %i.guw, label %bb.agc, label %bb.agb

bb.aga:                                           ; preds = %bb.afx
  %i.gux = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !645
  %i.guy = load i64, ptr %i.gnm, align 8, !tbaa !62, !noalias !645
  %.not25.i.i829 = icmp eq i64 %i.gux, %i.guy
  br i1 %.not25.i.i829, label %bb.agc, label %bb.agb

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828:     ; preds = %bb.afx
  %i.guz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.guh), !noalias !645
  br i1 %i.guz, label %bb.agc, label %bb.agb

bb.agb:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828, %bb.aga, %bb.afz, %bb.afy, %bb.afw
  %i.gva = shl nsw i64 %.4.i42.i.i822, 3
  %i.gvb = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gva
  %i.gvc = load i8, ptr %i.guf, align 1, !tbaa !98, !noalias !645
  %i.gvd = zext i8 %i.gvc to i64
  %i.gve = shl nuw nsw i64 %i.gvd, 3
  %i.gvf = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gve
  %i.gvg = load i64, ptr %i.gvf, align 1, !noalias !645
  store i64 %i.gvg, ptr %i.gvb, align 1, !noalias !645
  %i.gvh = srem i64 %.4.i42.i.i822, 8
  %i.gvi = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gvh
  %i.gvj = load i8, ptr %i.gvi, align 1, !tbaa !98, !noalias !645
  %i.gvk = sdiv i64 %.4.i42.i.i822, 8
  %i.gvl = getelementptr inbounds i8, ptr %.0.i.i.i.i789, i64 %i.gvk ; 2 uses
  %i.gvm = load i8, ptr %i.gvl, align 1, !tbaa !98, !noalias !645
  %i.gvn = or i8 %i.gvm, %i.gvj
  store i8 %i.gvn, ptr %i.gvl, align 1, !tbaa !98, !noalias !645
  %i.gvo = add nsw i64 %.385.i41.i.i823, 1
  br label %bb.agd

bb.agc:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828, %bb.aga, %bb.afz, %bb.afy, %bb.afw, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830, %bb.afu, %bb.aft, %bb.afs, %bb.afq
  %i.gvp = shl nsw i64 %.4.i42.i.i822, 3
  %i.gvq = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gvp
  store i64 0, ptr %i.gvq, align 1, !noalias !645
  br label %bb.agd

bb.agd:                                           ; preds = %bb.agc, %bb.agb
  %.486.i.i.i825 = phi i64 [ %i.gvo, %bb.agb ], [ %.385.i41.i.i823, %bb.agc ] ; 2 uses
  %i.gvr = add nsw i64 %.4.i42.i.i822, 1          ; 2 uses
  %i.gvs = add nuw nsw i64 %.0.i43.i.i821, 1      ; 2 uses
  %exitcond65.not.i.i826 = icmp eq i64 %i.gvs, %i.gtl
  br i1 %exitcond65.not.i.i826, label %.loopexit.i.i803, label %.lr.ph44.i.i820, !llvm.loop !651

.loopexit.sink.split.i.i800:                      ; preds = %bb.afp, %bb.aex
  %.sink86.i.i801 = phi i64 [ %i.gqe, %bb.aex ], [ %i.gtl, %bb.afp ] ; 2 uses
  %.587.i.ph.i.i802 = phi i64 [ %i.gpe, %bb.aex ], [ %.082.i53.i.i793, %bb.afp ]
  %i.gvt = shl nsw i64 %.081.i54.i.i792, 3
  %i.gvu = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gvt
  %i.gvv = shl nsw i64 %.sink86.i.i801, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.gvu, i8 0, i64 %i.gvv, i1 false), !noalias !645
  %i.gvw = add nsw i64 %.sink86.i.i801, %.081.i54.i.i792
  br label %.loopexit.i.i803

.loopexit.i.i803.loopexit3229.unr-lcssa:          ; preds = %.lr.ph39.i.i814
  %i.gvx = and i16 %.sroa.0.0.extract.trunc.i.i.i794, 1
  %lcmp.mod3426.not = icmp eq i16 %i.gvx, 0
  br i1 %lcmp.mod3426.not, label %.loopexit.i.i803, label %.lr.ph39.i.i814.epil.preheader

.lr.ph39.i.i814.epil.preheader:                   ; preds = %.loopexit.i.i803.loopexit3229.unr-lcssa, %.lr.ph39.i.i814.preheader
  %.1.i37.i.i816.epil.init = phi i64 [ %.081.i54.i.i792, %.lr.ph39.i.i814.preheader ], [ %i.gqc, %.loopexit.i.i803.loopexit3229.unr-lcssa ] ; 3 uses
  %lcmp.mod3428 = trunc i32 %i.goy to i1
  call void @llvm.assume(i1 %lcmp.mod3428)
  %i.gvy = shl nsw i64 %.1.i37.i.i816.epil.init, 3
  %i.gvz = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gvy
  %i.gwa = getelementptr inbounds i8, ptr %i.gnt, i64 %.1.i37.i.i816.epil.init
  %i.gwb = load i8, ptr %i.gwa, align 1, !tbaa !98, !noalias !645
  %i.gwc = zext i8 %i.gwb to i64
  %i.gwd = shl nuw nsw i64 %i.gwc, 3
  %i.gwe = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gwd
  %i.gwf = load i64, ptr %i.gwe, align 1, !noalias !645
  store i64 %i.gwf, ptr %i.gvz, align 1, !noalias !645
  %i.gwg = add nsw i64 %.1.i37.i.i816.epil.init, 1
  br label %.loopexit.i.i803

.loopexit.i.i803:                                 ; preds = %bb.aff, %.lr.ph39.i.i814.epil.preheader, %.loopexit.i.i803.loopexit3229.unr-lcssa, %bb.agd, %bb.afo, %.loopexit.sink.split.i.i800, %.preheader27.i.i819, %.preheader.i.i832, %.preheader30.i.i806, %bb.aew
  %.587.i.i.i804 = phi i64 [ %.587.i.ph.i.i802, %.loopexit.sink.split.i.i800 ], [ %i.gpe, %bb.aew ], [ %.486.i.i.i825, %bb.agd ], [ %i.gpe, %.lr.ph39.i.i814.epil.preheader ], [ %i.gpe, %.preheader30.i.i806 ], [ %.082.i53.i.i793, %.preheader.i.i832 ], [ %.082.i53.i.i793, %.preheader27.i.i819 ], [ %.284.i.i.i838, %bb.afo ], [ %i.gpe, %.loopexit.i.i803.loopexit3229.unr-lcssa ], [ %i.gpe, %bb.aff ] ; 2 uses
  %.5.i.i.i805 = phi i64 [ %i.gvw, %.loopexit.sink.split.i.i800 ], [ %.081.i54.i.i792, %bb.aew ], [ %i.gvr, %bb.agd ], [ %i.gwg, %.lr.ph39.i.i814.epil.preheader ], [ %.081.i54.i.i792, %.preheader30.i.i806 ], [ %.081.i54.i.i792, %.preheader.i.i832 ], [ %.081.i54.i.i792, %.preheader27.i.i819 ], [ %i.gti, %bb.afo ], [ %i.gqc, %.loopexit.i.i803.loopexit3229.unr-lcssa ], [ %i.grp, %bb.aff ] ; 2 uses
  %i.gwh = icmp slt i64 %.5.i.i.i805, %i.gnn
  br i1 %i.gwh, label %bb.aeu, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !652

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i803, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788
  %.082.i.lcssa.i.i790 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788 ], [ %.587.i.i.i804, %.loopexit.i.i803 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !645
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i784:                                    ; preds = %.lr.ph.i.i784, %.lr.ph.i.i784.preheader.new
  %.0.i1833.i.i785 = phi i64 [ 0, %.lr.ph.i.i784.preheader.new ], [ %i.gwz, %.lr.ph.i.i784 ] ; 4 uses
  %niter3424 = phi i64 [ 0, %.lr.ph.i.i784.preheader.new ], [ %niter3424.next.1, %.lr.ph.i.i784 ]
  %i.gwi = shl nsw i64 %.0.i1833.i.i785, 3
  %i.gwj = getelementptr inbounds nuw i8, ptr %i.gnl, i64 %i.gwi
  %i.gwk = getelementptr inbounds nuw i8, ptr %i.gnt, i64 %.0.i1833.i.i785
  %i.gwl = load i8, ptr %i.gwk, align 1, !tbaa !98, !noalias !645
  %i.gwm = zext i8 %i.gwl to i64
  %i.gwn = shl nuw nsw i64 %i.gwm, 3
  %i.gwo = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gwn
  %i.gwp = load i64, ptr %i.gwo, align 1, !noalias !645
  store i64 %i.gwp, ptr %i.gwj, align 1, !noalias !645
  %i.gwq = or disjoint i64 %.0.i1833.i.i785, 1    ; 2 uses
  %i.gwr = shl nsw i64 %i.gwq, 3
  %i.gws = getelementptr inbounds nuw i8, ptr %i.gnl, i64 %i.gwr
  %i.gwt = getelementptr inbounds nuw i8, ptr %i.gnt, i64 %i.gwq
  %i.gwu = load i8, ptr %i.gwt, align 1, !tbaa !98, !noalias !645
  %i.gwv = zext i8 %i.gwu to i64
  %i.gww = shl nuw nsw i64 %i.gwv, 3
  %i.gwx = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gww
  %i.gwy = load i64, ptr %i.gwx, align 1, !noalias !645
  store i64 %i.gwy, ptr %i.gws, align 1, !noalias !645
  %i.gwz = add nuw nsw i64 %.0.i1833.i.i785, 2    ; 2 uses
  %niter3424.next.1 = add i64 %niter3424, 2       ; 2 uses
  %niter3424.ncmp.1 = icmp eq i64 %niter3424.next.1, %unroll_iter3423
  br i1 %niter3424.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa, label %.lr.ph.i.i784, !llvm.loop !653

bb.age:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.agg, label %bb.agf

bb.agf:                                           ; preds = %bb.age
  %i.gxa = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gxb = load i64, ptr %i.gxa, align 8, !tbaa !71, !noalias !654
  %.not.i19.i21.i721 = icmp ne i64 %i.gxb, 0
  %i.gxc = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gxd = load ptr, ptr %i.gxc, align 8, !noalias !654
  %i.gxe = icmp ne ptr %i.gxd, null
  %i.gxf = select i1 %.not.i19.i21.i721, i1 %i.gxe, i1 false
  br label %bb.agg

bb.agg:                                           ; preds = %bb.agf, %bb.age
  %i.gxg = phi i1 [ true, %bb.age ], [ %i.gxf, %bb.agf ]
  %i.gxh = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !654
  %i.gxi = extractvalue { i32, ptr } %i.gxh, 1    ; 9 uses
  %i.gxj = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !654 ; 13 uses
  %i.gxk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gxl = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !654 ; 11 uses
  %i.gxm = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.gxn = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  %i.gxo = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.gxp = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.gxq = load ptr, ptr %i.gxp, align 8, !tbaa !66, !noalias !654
  %i.gxr = getelementptr inbounds [2 x i8], ptr %i.gxq, i64 %i.gxn ; 9 uses
  br i1 %i.gxg, label %bb.agh, label %.preheader32.i22.i722

.preheader32.i22.i722:                            ; preds = %bb.agg
  %i.gxs = icmp sgt i64 %i.gxl, 0
  br i1 %i.gxs, label %.lr.ph.i24.i723.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i723.preheader:                        ; preds = %.preheader32.i22.i722
  %xtraiter3409 = and i64 %i.gxl, 1
  %i.gxt = icmp eq i64 %i.gxl, 1
  br i1 %i.gxt, label %.lr.ph.i24.i723.epil.preheader, label %.lr.ph.i24.i723.preheader.new

.lr.ph.i24.i723.preheader.new:                    ; preds = %.lr.ph.i24.i723.preheader
  %unroll_iter3412 = and i64 %i.gxl, 9223372036854775806
  br label %.lr.ph.i24.i723

bb.agh:                                           ; preds = %bb.agg
  %i.gxu = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gxv = load ptr, ptr %i.gxu, align 8, !tbaa !171, !noalias !654
  %i.gxw = load ptr, ptr %i.gxv, align 8, !tbaa !306, !noalias !654 ; 4 uses
  %.not.i.i.i27.i726 = icmp eq ptr %i.gxw, null
  br i1 %.not.i.i.i27.i726, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.gxx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.gxy = load i64, ptr %i.gxx, align 8, !tbaa !438, !noalias !654
  %i.gxz = getelementptr inbounds nuw i8, ptr %i.gxw, i64 9
  %i.gya = load i8, ptr %i.gxz, align 1, !tbaa !439, !range !127, !noalias !654, !noundef !128
  %i.gyb = trunc nuw i8 %i.gya to i1
  %i.gyc = getelementptr inbounds nuw i8, ptr %i.gxw, i64 8
  %i.gyd = load i8, ptr %i.gyc, align 8, !range !127, !noalias !654
  %i.gye = trunc nuw i8 %i.gyd to i1
  %i.gyf = select i1 %i.gyb, i1 %i.gye, i1 false, !prof !117
  %i.gyg = getelementptr inbounds nuw i8, ptr %i.gxw, i64 16
  %i.gyh = load ptr, ptr %i.gyg, align 8, !noalias !654
  %i.gyi = select i1 %i.gyf, ptr %i.gyh, ptr null, !prof !117
  %i.gyj = getelementptr inbounds i8, ptr %i.gyi, i64 %i.gxy
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727: ; preds = %bb.agi, %bb.agh
  %.0.i.i.i29.i728 = phi ptr [ %i.gyj, %bb.agi ], [ null, %bb.agh ] ; 5 uses
  %i.gyk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gyl = load i64, ptr %i.gyk, align 8, !tbaa !178, !noalias !654 ; 2 uses
  %i.gym = ashr i64 %i.gyl, 3
  %i.gyn = and i64 %i.gyl, 7
  %i.gyo = icmp ne i64 %i.gyn, 0
  %i.gyp = zext i1 %i.gyo to i64
  %i.gyq = add nsw i64 %i.gym, %i.gyp
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i728, i8 0, i64 %i.gyq, i1 false), !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !654
  %i.gyr = load ptr, ptr %i.gxo, align 8, !tbaa !66, !noalias !654
  %i.gys = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %i.gyr, i64 noundef %i.gys, i64 noundef %i.gxl), !noalias !654
  %i.gyt = icmp sgt i64 %i.gxl, 0
  br i1 %i.gyt, label %.lr.ph55.i31.i730, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i730:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727
  %i.gyu = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.gyv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.agj

bb.agj:                                           ; preds = %.loopexit.i43.i742, %.lr.ph55.i31.i730
  %.081.i54.i32.i731 = phi i64 [ 0, %.lr.ph55.i31.i730 ], [ %.5.i.i45.i744, %.loopexit.i43.i742 ] ; 12 uses
  %.082.i53.i33.i732 = phi i64 [ 0, %.lr.ph55.i31.i730 ], [ %.587.i.i44.i743, %.loopexit.i43.i742 ] ; 6 uses
  %i.gyw = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %18), !noalias !654 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i733 = trunc i32 %i.gyw to i16 ; 10 uses
  %i.gyx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !654
  %.not.i20.i35.i734 = icmp ne i64 %i.gyx, 0
  %i.gyy = load ptr, ptr %i.v, align 8, !noalias !654
  %i.gyz = icmp ne ptr %i.gyy, null
  %i.gza = select i1 %.not.i20.i35.i734, i1 %i.gyz, i1 false
  br i1 %i.gza, label %bb.agv, label %bb.agk

bb.agk:                                           ; preds = %bb.agj
  %.sroa.14.0.extract.shift.i.i36.i735 = lshr i32 %i.gyw, 16
  %.sroa.14.0.extract.trunc.i.i37.i736 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i735 to i64
  %sext91.i.i38.i737 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i736, 48
  %i.gzb = ashr exact i64 %sext91.i.i38.i737, 48
  %i.gzc = add nsw i64 %i.gzb, %.082.i53.i33.i732 ; 6 uses
  %i.gzd = ashr i32 %i.gyw, 16                    ; 2 uses
  %sext.i.i39.i738 = shl i32 %i.gyw, 16
  %i.gze = ashr exact i32 %sext.i.i39.i738, 16
  %i.gzf = icmp eq i32 %i.gzd, %i.gze
  br i1 %i.gzf, label %bb.agl, label %bb.agm

bb.agl:                                           ; preds = %bb.agk
  %i.gzg = sext i16 %.sroa.0.0.extract.trunc.i.i34.i733 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i728, i64 noundef %.081.i54.i32.i731, i64 noundef %i.gzg, i1 noundef zeroext true), !noalias !654
  %i.gzh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i733, 0
  br i1 %i.gzh, label %.lr.ph39.i54.i753.preheader, label %.loopexit.i43.i742

.lr.ph39.i54.i753.preheader:                      ; preds = %bb.agl
  %i.gzi = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i733, 1
  br i1 %i.gzi, label %.lr.ph39.i54.i753.epil.preheader, label %.lr.ph39.i54.i753.preheader.new

.lr.ph39.i54.i753.preheader.new:                  ; preds = %.lr.ph39.i54.i753.preheader
  %unroll_iter3418 = and i64 %i.gzg, 32766
  br label %.lr.ph39.i54.i753

.lr.ph39.i54.i753:                                ; preds = %.lr.ph39.i54.i753, %.lr.ph39.i54.i753.preheader.new
  %.1.i37.i56.i755 = phi i64 [ %.081.i54.i32.i731, %.lr.ph39.i54.i753.preheader.new ], [ %i.haa, %.lr.ph39.i54.i753 ] ; 4 uses
  %niter3419 = phi i64 [ 0, %.lr.ph39.i54.i753.preheader.new ], [ %niter3419.next.1, %.lr.ph39.i54.i753 ]
  %i.gzj = shl nsw i64 %.1.i37.i56.i755, 3
  %i.gzk = getelementptr inbounds i8, ptr %i.gxj, i64 %i.gzj
  %i.gzl = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %.1.i37.i56.i755
  %i.gzm = load i16, ptr %i.gzl, align 2, !tbaa !269, !noalias !654
  %i.gzn = zext i16 %i.gzm to i64
  %i.gzo = shl nuw nsw i64 %i.gzn, 3
  %i.gzp = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.gzo
  %i.gzq = load i64, ptr %i.gzp, align 1, !noalias !654
  store i64 %i.gzq, ptr %i.gzk, align 1, !noalias !654
  %i.gzr = add nsw i64 %.1.i37.i56.i755, 1        ; 2 uses
  %i.gzs = shl nsw i64 %i.gzr, 3
  %i.gzt = getelementptr inbounds i8, ptr %i.gxj, i64 %i.gzs
  %i.gzu = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %i.gzr
  %i.gzv = load i16, ptr %i.gzu, align 2, !tbaa !269, !noalias !654
  %i.gzw = zext i16 %i.gzv to i64
  %i.gzx = shl nuw nsw i64 %i.gzw, 3
  %i.gzy = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.gzx
  %i.gzz = load i64, ptr %i.gzy, align 1, !noalias !654
  store i64 %i.gzz, ptr %i.gzt, align 1, !noalias !654
  %i.haa = add nsw i64 %.1.i37.i56.i755, 2        ; 3 uses
  %niter3419.next.1 = add i64 %niter3419, 2       ; 2 uses
  %niter3419.ncmp.1 = icmp eq i64 %niter3419.next.1, %unroll_iter3418
  br i1 %niter3419.ncmp.1, label %.loopexit.i43.i742.loopexit3237.unr-lcssa, label %.lr.ph39.i54.i753, !llvm.loop !657

bb.agm:                                           ; preds = %bb.agk
  %i.hab = icmp sgt i32 %i.gzd, 0
  %i.hac = sext i16 %.sroa.0.0.extract.trunc.i.i34.i733 to i64 ; 2 uses
  br i1 %i.hab, label %.preheader30.i46.i745, label %.loopexit.sink.split.i40.i739

.preheader30.i46.i745:                            ; preds = %bb.agm
  %i.had = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i733, 0
  br i1 %i.had, label %.lr.ph36.i47.i746, label %.loopexit.i43.i742

.lr.ph36.i47.i746:                                ; preds = %.preheader30.i46.i745, %bb.agu
  %.079.i35.i48.i747 = phi i64 [ %i.hbo, %bb.agu ], [ 0, %.preheader30.i46.i745 ]
  %.2.i34.i49.i748 = phi i64 [ %i.hbn, %bb.agu ], [ %.081.i54.i32.i731, %.preheader30.i46.i745 ] ; 10 uses
  %i.hae = load ptr, ptr %i.gxo, align 8, !tbaa !66, !noalias !654 ; 2 uses
  %.not.i21.i50.i749 = icmp eq ptr %i.hae, null
  br i1 %.not.i21.i50.i749, label %bb.ago, label %bb.agn

bb.agn:                                           ; preds = %.lr.ph36.i47.i746
  %i.haf = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  %i.hag = add nsw i64 %i.haf, %.2.i34.i49.i748   ; 2 uses
  %i.hah = lshr i64 %i.hag, 3
  %i.hai = getelementptr inbounds nuw i8, ptr %i.hae, i64 %i.hah
  %i.haj = load i8, ptr %i.hai, align 1, !tbaa !98, !noalias !654
  %i.hak = trunc i64 %i.hag to i8
  %i.hal = and i8 %i.hak, 7
  %i.ham = lshr i8 %i.haj, %i.hal
  %i.han = trunc i8 %i.ham to i1
  br i1 %i.han, label %bb.ags, label %bb.agt

bb.ago:                                           ; preds = %.lr.ph36.i47.i746
  %i.hao = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !654
  %i.hap = getelementptr inbounds nuw i8, ptr %i.hao, i64 40
  %i.haq = load i32, ptr %i.hap, align 8, !tbaa !42, !noalias !654
  switch i32 %i.haq, label %bb.agr [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i751
    i32 28, label %bb.agp
    i32 38, label %bb.agq
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i8 %i.hdc, ptr %i.hda, align 1, !tbaa !98, !noalias !654
  %i.hdd = add nsw i64 %.183.i47.i76.i775, 1
  br label %bb.ahd

bb.ahc:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i80.i779, %bb.aha, %bb.agz, %bb.agy, %bb.agw
  %i.hde = shl nsw i64 %.3.i48.i75.i774, 3
  %i.hdf = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hde
  store i64 0, ptr %i.hdf, align 1, !noalias !654
  br label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc, %bb.ahb
  %.284.i.i78.i777 = phi i64 [ %i.hdd, %bb.ahb ], [ %.183.i47.i76.i775, %bb.ahc ] ; 2 uses
  %i.hdg = add nsw i64 %.3.i48.i75.i774, 1        ; 2 uses
  %i.hdh = add nuw nsw i64 %.078.i49.i74.i773, 1  ; 2 uses
  %exitcond66.not.i79.i778 = icmp eq i64 %i.hdh, %i.hbs
  br i1 %exitcond66.not.i79.i778, label %.loopexit.i43.i742, label %.lr.ph50.i73.i772, !llvm.loop !659

bb.ahe:                                           ; preds = %bb.agv
  %i.hdi = icmp sgt i32 %i.hbp, 0
  %i.hdj = sext i16 %.sroa.0.0.extract.trunc.i.i34.i733 to i64 ; 2 uses
  br i1 %i.hdi, label %.preheader27.i59.i758, label %.loopexit.sink.split.i40.i739

.preheader27.i59.i758:                            ; preds = %bb.ahe
  %i.hdk = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i733, 0
  br i1 %i.hdk, label %.lr.ph44.i60.i759, label %.loopexit.i43.i742

.lr.ph44.i60.i759:                                ; preds = %.preheader27.i59.i758, %bb.ahs
  %.0.i43.i61.i760 = phi i64 [ %i.hfq, %bb.ahs ], [ 0, %.preheader27.i59.i758 ]
  %.4.i42.i62.i761 = phi i64 [ %i.hfp, %bb.ahs ], [ %.081.i54.i32.i731, %.preheader27.i59.i758 ] ; 10 uses
  %.385.i41.i63.i762 = phi i64 [ %.486.i.i65.i764, %bb.ahs ], [ %.082.i53.i33.i732, %.preheader27.i59.i758 ] ; 2 uses
  %i.hdl = load ptr, ptr %i.gxo, align 8, !tbaa !66, !noalias !654 ; 2 uses
  %.not.i26.i64.i763 = icmp eq ptr %i.hdl, null
  br i1 %.not.i26.i64.i763, label %bb.ahg, label %bb.ahf

bb.ahf:                                           ; preds = %.lr.ph44.i60.i759
  %i.hdm = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  %i.hdn = add nsw i64 %i.hdm, %.4.i42.i62.i761   ; 2 uses
  %i.hdo = lshr i64 %i.hdn, 3
  %i.hdp = getelementptr inbounds nuw i8, ptr %i.hdl, i64 %i.hdo
  %i.hdq = load i8, ptr %i.hdp, align 1, !tbaa !98, !noalias !654
  %i.hdr = trunc i64 %i.hdn to i8
  %i.hds = and i8 %i.hdr, 7
  %i.hdt = lshr i8 %i.hdq, %i.hds
  %i.hdu = trunc i8 %i.hdt to i1
  br i1 %i.hdu, label %bb.ahk, label %bb.ahr

bb.ahg:                                           ; preds = %.lr.ph44.i60.i759
  %i.hdv = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !654
  %i.hdw = getelementptr inbounds nuw i8, ptr %i.hdv, i64 40
  %i.hdx = load i32, ptr %i.hdw, align 8, !tbaa !42, !noalias !654
  switch i32 %i.hdx, label %bb.ahj [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769
    i32 28, label %bb.ahh
    i32 38, label %bb.ahi
  ]

bb.ahh:                                           ; preds = %bb.ahg
  %i.hdy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i761), !noalias !654
  br i1 %i.hdy, label %bb.ahr, label %bb.ahk

bb.ahi:                                           ; preds = %bb.ahg
  %i.hdz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i761), !noalias !654
  br i1 %i.hdz, label %bb.ahr, label %bb.ahk

bb.ahj:                                           ; preds = %bb.ahg
  %i.hea = load i64, ptr %i.gyu, align 8, !tbaa !71, !noalias !654
  %i.heb = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !654
  %.not24.i71.i770 = icmp eq i64 %i.hea, %i.heb
  br i1 %.not24.i71.i770, label %bb.ahr, label %bb.ahk

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769:   ; preds = %bb.ahg
  %i.hec = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i761), !noalias !654
  br i1 %i.hec, label %bb.ahr, label %bb.ahk

bb.ahk:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769, %bb.ahj, %bb.ahi, %bb.ahh, %bb.ahf
  %i.hed = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %.4.i42.i62.i761 ; 2 uses
  %i.hee = load i16, ptr %i.hed, align 2, !tbaa !269, !noalias !654
  %i.hef = zext i16 %i.hee to i64                 ; 4 uses
  %i.heg = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !654 ; 2 uses
  %.not.i29.i67.i766 = icmp eq ptr %i.heg, null
  br i1 %.not.i29.i67.i766, label %bb.ahm, label %bb.ahl

bb.ahl:                                           ; preds = %bb.ahk
  %i.heh = load i64, ptr %i.gyv, align 8, !tbaa !99, !noalias !654
  %i.hei = add nsw i64 %i.heh, %i.hef             ; 2 uses
  %i.hej = lshr i64 %i.hei, 3
  %i.hek = getelementptr inbounds nuw i8, ptr %i.heg, i64 %i.hej
  %i.hel = load i8, ptr %i.hek, align 1, !tbaa !98, !noalias !654
  %i.hem = trunc i64 %i.hei to i8
  %i.hen = and i8 %i.hem, 7
  %i.heo = lshr i8 %i.hel, %i.hen
  %i.hep = trunc i8 %i.heo to i1
  br i1 %i.hep, label %bb.ahq, label %bb.ahr

bb.ahm:                                           ; preds = %bb.ahk
  %i.heq = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !654
  %i.her = getelementptr inbounds nuw i8, ptr %i.heq, i64 40
  %i.hes = load i32, ptr %i.her, align 8, !tbaa !42, !noalias !654
  switch i32 %i.hes, label %bb.ahp [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767
    i32 28, label %bb.ahn
    i32 38, label %bb.aho
  ]

bb.ahn:                                           ; preds = %bb.ahm
  %i.het = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hef), !noalias !654
  br i1 %i.het, label %bb.ahr, label %bb.ahq

bb.aho:                                           ; preds = %bb.ahm
  %i.heu = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hef), !noalias !654
  br i1 %i.heu, label %bb.ahr, label %bb.ahq

bb.ahp:                                           ; preds = %bb.ahm
  %i.hev = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !654
  %i.hew = load i64, ptr %i.gxk, align 8, !tbaa !62, !noalias !654
  %.not25.i69.i768 = icmp eq i64 %i.hev, %i.hew
  br i1 %.not25.i69.i768, label %bb.ahr, label %bb.ahq

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767:   ; preds = %bb.ahm
  %i.hex = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hef), !noalias !654
  br i1 %i.hex, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767, %bb.ahp, %bb.aho, %bb.ahn, %bb.ahl
  %i.hey = shl nsw i64 %.4.i42.i62.i761, 3
  %i.hez = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hey
  %i.hfa = load i16, ptr %i.hed, align 2, !tbaa !269, !noalias !654
  %i.hfb = zext i16 %i.hfa to i64
  %i.hfc = shl nuw nsw i64 %i.hfb, 3
  %i.hfd = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hfc
  %i.hfe = load i64, ptr %i.hfd, align 1, !noalias !654
  store i64 %i.hfe, ptr %i.hez, align 1, !noalias !654
  %i.hff = srem i64 %.4.i42.i62.i761, 8
  %i.hfg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hff
  %i.hfh = load i8, ptr %i.hfg, align 1, !tbaa !98, !noalias !654
  %i.hfi = sdiv i64 %.4.i42.i62.i761, 8
  %i.hfj = getelementptr inbounds i8, ptr %.0.i.i.i29.i728, i64 %i.hfi ; 2 uses
  %i.hfk = load i8, ptr %i.hfj, align 1, !tbaa !98, !noalias !654
  %i.hfl = or i8 %i.hfk, %i.hfh
  store i8 %i.hfl, ptr %i.hfj, align 1, !tbaa !98, !noalias !654
  %i.hfm = add nsw i64 %.385.i41.i63.i762, 1
  br label %bb.ahs

bb.ahr:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767, %bb.ahp, %bb.aho, %bb.ahn, %bb.ahl, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769, %bb.ahj, %bb.ahi, %bb.ahh, %bb.ahf
  %i.hfn = shl nsw i64 %.4.i42.i62.i761, 3
  %i.hfo = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hfn
  store i64 0, ptr %i.hfo, align 1, !noalias !654
  br label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr, %bb.ahq
  %.486.i.i65.i764 = phi i64 [ %i.hfm, %bb.ahq ], [ %.385.i41.i63.i762, %bb.ahr ] ; 2 uses
  %i.hfp = add nsw i64 %.4.i42.i62.i761, 1        ; 2 uses
  %i.hfq = add nuw nsw i64 %.0.i43.i61.i760, 1    ; 2 uses
  %exitcond65.not.i66.i765 = icmp eq i64 %i.hfq, %i.hdj
  br i1 %exitcond65.not.i66.i765, label %.loopexit.i43.i742, label %.lr.ph44.i60.i759, !llvm.loop !660

.loopexit.sink.split.i40.i739:                    ; preds = %bb.ahe, %bb.agm
  %.sink86.i41.i740 = phi i64 [ %i.hac, %bb.agm ], [ %i.hdj, %bb.ahe ] ; 2 uses
  %.587.i.ph.i42.i741 = phi i64 [ %i.gzc, %bb.agm ], [ %.082.i53.i33.i732, %bb.ahe ]
  %i.hfr = shl nsw i64 %.081.i54.i32.i731, 3
  %i.hfs = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hfr
  %i.hft = shl nsw i64 %.sink86.i41.i740, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.hfs, i8 0, i64 %i.hft, i1 false), !noalias !654
  %i.hfu = add nsw i64 %.sink86.i41.i740, %.081.i54.i32.i731
  br label %.loopexit.i43.i742

.loopexit.i43.i742.loopexit3237.unr-lcssa:        ; preds = %.lr.ph39.i54.i753
  %i.hfv = and i16 %.sroa.0.0.extract.trunc.i.i34.i733, 1
  %lcmp.mod3415.not = icmp eq i16 %i.hfv, 0
  br i1 %lcmp.mod3415.not, label %.loopexit.i43.i742, label %.lr.ph39.i54.i753.epil.preheader

.lr.ph39.i54.i753.epil.preheader:                 ; preds = %.loopexit.i43.i742.loopexit3237.unr-lcssa, %.lr.ph39.i54.i753.preheader
  %.1.i37.i56.i755.epil.init = phi i64 [ %.081.i54.i32.i731, %.lr.ph39.i54.i753.preheader ], [ %i.haa, %.loopexit.i43.i742.loopexit3237.unr-lcssa ] ; 3 uses
  %lcmp.mod3417 = trunc i32 %i.gyw to i1
  call void @llvm.assume(i1 %lcmp.mod3417)
  %i.hfw = shl nsw i64 %.1.i37.i56.i755.epil.init, 3
  %i.hfx = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hfw
  %i.hfy = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %.1.i37.i56.i755.epil.init
  %i.hfz = load i16, ptr %i.hfy, align 2, !tbaa !269, !noalias !654
  %i.hga = zext i16 %i.hfz to i64
  %i.hgb = shl nuw nsw i64 %i.hga, 3
  %i.hgc = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hgb
  %i.hgd = load i64, ptr %i.hgc, align 1, !noalias !654
  store i64 %i.hgd, ptr %i.hfx, align 1, !noalias !654
  %i.hge = add nsw i64 %.1.i37.i56.i755.epil.init, 1
  br label %.loopexit.i43.i742

.loopexit.i43.i742:                               ; preds = %bb.agu, %.lr.ph39.i54.i753.epil.preheader, %.loopexit.i43.i742.loopexit3237.unr-lcssa, %bb.ahs, %bb.ahd, %.loopexit.sink.split.i40.i739, %.preheader27.i59.i758, %.preheader.i72.i771, %.preheader30.i46.i745, %bb.agl
  %.587.i.i44.i743 = phi i64 [ %.587.i.ph.i42.i741, %.loopexit.sink.split.i40.i739 ], [ %i.gzc, %bb.agl ], [ %.486.i.i65.i764, %bb.ahs ], [ %i.gzc, %.lr.ph39.i54.i753.epil.preheader ], [ %i.gzc, %.preheader30.i46.i745 ], [ %.082.i53.i33.i732, %.preheader.i72.i771 ], [ %.082.i53.i33.i732, %.preheader27.i59.i758 ], [ %.284.i.i78.i777, %bb.ahd ], [ %i.gzc, %.loopexit.i43.i742.loopexit3237.unr-lcssa ], [ %i.gzc, %bb.agu ] ; 2 uses
  %.5.i.i45.i744 = phi i64 [ %i.hfu, %.loopexit.sink.split.i40.i739 ], [ %.081.i54.i32.i731, %bb.agl ], [ %i.hfp, %bb.ahs ], [ %i.hge, %.lr.ph39.i54.i753.epil.preheader ], [ %.081.i54.i32.i731, %.preheader30.i46.i745 ], [ %.081.i54.i32.i731, %.preheader.i72.i771 ], [ %.081.i54.i32.i731, %.preheader27.i59.i758 ], [ %i.hdg, %bb.ahd ], [ %i.haa, %.loopexit.i43.i742.loopexit3237.unr-lcssa ], [ %i.hbn, %bb.agu ] ; 2 uses
  %i.hgf = icmp slt i64 %.5.i.i45.i744, %i.gxl
  br i1 %i.hgf, label %bb.agj, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !661

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i742, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727
  %.082.i.lcssa.i30.i729 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727 ], [ %.587.i.i44.i743, %.loopexit.i43.i742 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !654
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i723:                                  ; preds = %.lr.ph.i24.i723, %.lr.ph.i24.i723.preheader.new
  %.0.i1833.i25.i724 = phi i64 [ 0, %.lr.ph.i24.i723.preheader.new ], [ %i.hgx, %.lr.ph.i24.i723 ] ; 4 uses
  %niter3413 = phi i64 [ 0, %.lr.ph.i24.i723.preheader.new ], [ %niter3413.next.1, %.lr.ph.i24.i723 ]
  %i.hgg = shl nsw i64 %.0.i1833.i25.i724, 3
  %i.hgh = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.hgg
  %i.hgi = getelementptr inbounds nuw [2 x i8], ptr %i.gxr, i64 %.0.i1833.i25.i724
  %i.hgj = load i16, ptr %i.hgi, align 2, !tbaa !269, !noalias !654
  %i.hgk = zext i16 %i.hgj to i64
  %i.hgl = shl nuw nsw i64 %i.hgk, 3
  %i.hgm = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hgl
  %i.hgn = load i64, ptr %i.hgm, align 1, !noalias !654
  store i64 %i.hgn, ptr %i.hgh, align 1, !noalias !654
  %i.hgo = or disjoint i64 %.0.i1833.i25.i724, 1  ; 2 uses
  %i.hgp = shl nsw i64 %i.hgo, 3
  %i.hgq = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.hgp
  %i.hgr = getelementptr inbounds nuw [2 x i8], ptr %i.gxr, i64 %i.hgo
  %i.hgs = load i16, ptr %i.hgr, align 2, !tbaa !269, !noalias !654
  %i.hgt = zext i16 %i.hgs to i64
  %i.hgu = shl nuw nsw i64 %i.hgt, 3
  %i.hgv = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hgu
  %i.hgw = load i64, ptr %i.hgv, align 1, !noalias !654
  store i64 %i.hgw, ptr %i.hgq, align 1, !noalias !654
  %i.hgx = add nuw nsw i64 %.0.i1833.i25.i724, 2  ; 2 uses
  %niter3413.next.1 = add i64 %niter3413, 2       ; 2 uses
  %niter3413.ncmp.1 = icmp eq i64 %niter3413.next.1, %unroll_iter3412
  br i1 %niter3413.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa, label %.lr.ph.i24.i723, !llvm.loop !662

bb.aht:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.ahv, label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht
  %i.hgy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.hgz = load i64, ptr %i.hgy, align 8, !tbaa !71, !noalias !663
  %.not.i19.i83.i659 = icmp ne i64 %i.hgz, 0
  %i.hha = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hhb = load ptr, ptr %i.hha, align 8, !noalias !663
  %i.hhc = icmp ne ptr %i.hhb, null
  %i.hhd = select i1 %.not.i19.i83.i659, i1 %i.hhc, i1 false
  br label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu, %bb.aht
  %i.hhe = phi i1 [ true, %bb.aht ], [ %i.hhd, %bb.ahu ]
  %i.hhf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !663
  %i.hhg = extractvalue { i32, ptr } %i.hhf, 1    ; 9 uses
  %i.hhh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !663 ; 13 uses
  %i.hhi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.hhj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !663 ; 11 uses
  %i.hhk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.hhl = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  %i.hhm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.hhn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.hho = load ptr, ptr %i.hhn, align 8, !tbaa !66, !noalias !663
  %i.hhp = getelementptr inbounds [4 x i8], ptr %i.hho, i64 %i.hhl ; 9 uses
  br i1 %i.hhe, label %bb.ahw, label %.preheader32.i84.i660

.preheader32.i84.i660:                            ; preds = %bb.ahv
  %i.hhq = icmp sgt i64 %i.hhj, 0
  br i1 %i.hhq, label %.lr.ph.i86.i662.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i662.preheader:                        ; preds = %.preheader32.i84.i660
  %xtraiter3398 = and i64 %i.hhj, 1
  %i.hhr = icmp eq i64 %i.hhj, 1
  br i1 %i.hhr, label %.lr.ph.i86.i662.epil.preheader, label %.lr.ph.i86.i662.preheader.new

.lr.ph.i86.i662.preheader.new:                    ; preds = %.lr.ph.i86.i662.preheader
  %unroll_iter3401 = and i64 %i.hhj, 9223372036854775806
  br label %.lr.ph.i86.i662

bb.ahw:                                           ; preds = %bb.ahv
  %i.hhs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.hht = load ptr, ptr %i.hhs, align 8, !tbaa !171, !noalias !663
  %i.hhu = load ptr, ptr %i.hht, align 8, !tbaa !306, !noalias !663 ; 4 uses
  %.not.i.i.i89.i665 = icmp eq ptr %i.hhu, null
  br i1 %.not.i.i.i89.i665, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666, label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  %i.hhv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.hhw = load i64, ptr %i.hhv, align 8, !tbaa !438, !noalias !663
  %i.hhx = getelementptr inbounds nuw i8, ptr %i.hhu, i64 9
  %i.hhy = load i8, ptr %i.hhx, align 1, !tbaa !439, !range !127, !noalias !663, !noundef !128
  %i.hhz = trunc nuw i8 %i.hhy to i1
  %i.hia = getelementptr inbounds nuw i8, ptr %i.hhu, i64 8
  %i.hib = load i8, ptr %i.hia, align 8, !range !127, !noalias !663
  %i.hic = trunc nuw i8 %i.hib to i1
  %i.hid = select i1 %i.hhz, i1 %i.hic, i1 false, !prof !117
  %i.hie = getelementptr inbounds nuw i8, ptr %i.hhu, i64 16
  %i.hif = load ptr, ptr %i.hie, align 8, !noalias !663
  %i.hig = select i1 %i.hid, ptr %i.hif, ptr null, !prof !117
  %i.hih = getelementptr inbounds i8, ptr %i.hig, i64 %i.hhw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666: ; preds = %bb.ahx, %bb.ahw
  %.0.i.i.i91.i667 = phi ptr [ %i.hih, %bb.ahx ], [ null, %bb.ahw ] ; 5 uses
  %i.hii = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.hij = load i64, ptr %i.hii, align 8, !tbaa !178, !noalias !663 ; 2 uses
  %i.hik = ashr i64 %i.hij, 3
  %i.hil = and i64 %i.hij, 7
  %i.him = icmp ne i64 %i.hil, 0
  %i.hin = zext i1 %i.him to i64
  %i.hio = add nsw i64 %i.hik, %i.hin
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i667, i8 0, i64 %i.hio, i1 false), !noalias !663
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !663
  %i.hip = load ptr, ptr %i.hhm, align 8, !tbaa !66, !noalias !663
  %i.hiq = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.hip, i64 noundef %i.hiq, i64 noundef %i.hhj), !noalias !663
  %i.hir = icmp sgt i64 %i.hhj, 0
  br i1 %i.hir, label %.lr.ph55.i93.i669, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i669:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666
  %i.his = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.hit = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ahy

bb.ahy:                                           ; preds = %.loopexit.i105.i681, %.lr.ph55.i93.i669
  %.081.i54.i94.i670 = phi i64 [ 0, %.lr.ph55.i93.i669 ], [ %.5.i.i107.i683, %.loopexit.i105.i681 ] ; 12 uses
  %.082.i53.i95.i671 = phi i64 [ 0, %.lr.ph55.i93.i669 ], [ %.587.i.i106.i682, %.loopexit.i105.i681 ] ; 6 uses
  %i.hiu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %17), !noalias !663 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i672 = trunc i32 %i.hiu to i16 ; 10 uses
  %i.hiv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !663
  %.not.i20.i97.i673 = icmp ne i64 %i.hiv, 0
  %i.hiw = load ptr, ptr %i.v, align 8, !noalias !663
  %i.hix = icmp ne ptr %i.hiw, null
  %i.hiy = select i1 %.not.i20.i97.i673, i1 %i.hix, i1 false
  br i1 %i.hiy, label %bb.aik, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  %.sroa.14.0.extract.shift.i.i98.i674 = lshr i32 %i.hiu, 16
  %.sroa.14.0.extract.trunc.i.i99.i675 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i674 to i64
  %sext91.i.i100.i676 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i675, 48
  %i.hiz = ashr exact i64 %sext91.i.i100.i676, 48
  %i.hja = add nsw i64 %i.hiz, %.082.i53.i95.i671 ; 6 uses
  %i.hjb = ashr i32 %i.hiu, 16                    ; 2 uses
  %sext.i.i101.i677 = shl i32 %i.hiu, 16
  %i.hjc = ashr exact i32 %sext.i.i101.i677, 16
  %i.hjd = icmp eq i32 %i.hjb, %i.hjc
  br i1 %i.hjd, label %bb.aia, label %bb.aib

bb.aia:                                           ; preds = %bb.ahz
  %i.hje = sext i16 %.sroa.0.0.extract.trunc.i.i96.i672 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i667, i64 noundef %.081.i54.i94.i670, i64 noundef %i.hje, i1 noundef zeroext true), !noalias !663
  %i.hjf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i672, 0
  br i1 %i.hjf, label %.lr.ph39.i116.i692.preheader, label %.loopexit.i105.i681

.lr.ph39.i116.i692.preheader:                     ; preds = %bb.aia
  %i.hjg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i672, 1
  br i1 %i.hjg, label %.lr.ph39.i116.i692.epil.preheader, label %.lr.ph39.i116.i692.preheader.new

.lr.ph39.i116.i692.preheader.new:                 ; preds = %.lr.ph39.i116.i692.preheader
  %unroll_iter3407 = and i64 %i.hje, 32766
  br label %.lr.ph39.i116.i692

.lr.ph39.i116.i692:                               ; preds = %.lr.ph39.i116.i692, %.lr.ph39.i116.i692.preheader.new
  %.1.i37.i118.i694 = phi i64 [ %.081.i54.i94.i670, %.lr.ph39.i116.i692.preheader.new ], [ %i.hjy, %.lr.ph39.i116.i692 ] ; 4 uses
  %niter3408 = phi i64 [ 0, %.lr.ph39.i116.i692.preheader.new ], [ %niter3408.next.1, %.lr.ph39.i116.i692 ]
  %i.hjh = shl nsw i64 %.1.i37.i118.i694, 3
  %i.hji = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hjh
  %i.hjj = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %.1.i37.i118.i694
  %i.hjk = load i32, ptr %i.hjj, align 4, !tbaa !3, !noalias !663
  %i.hjl = shl i32 %i.hjk, 3
  %i.hjm = zext i32 %i.hjl to i64
  %i.hjn = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hjm
  %i.hjo = load i64, ptr %i.hjn, align 1, !noalias !663
  store i64 %i.hjo, ptr %i.hji, align 1, !noalias !663
  %i.hjp = add nsw i64 %.1.i37.i118.i694, 1       ; 2 uses
  %i.hjq = shl nsw i64 %i.hjp, 3
  %i.hjr = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hjq
  %i.hjs = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %i.hjp
  %i.hjt = load i32, ptr %i.hjs, align 4, !tbaa !3, !noalias !663
  %i.hju = shl i32 %i.hjt, 3
  %i.hjv = zext i32 %i.hju to i64
  %i.hjw = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hjv
  %i.hjx = load i64, ptr %i.hjw, align 1, !noalias !663
  store i64 %i.hjx, ptr %i.hjr, align 1, !noalias !663
  %i.hjy = add nsw i64 %.1.i37.i118.i694, 2       ; 3 uses
  %niter3408.next.1 = add i64 %niter3408, 2       ; 2 uses
  %niter3408.ncmp.1 = icmp eq i64 %niter3408.next.1, %unroll_iter3407
  br i1 %niter3408.ncmp.1, label %.loopexit.i105.i681.loopexit3245.unr-lcssa, label %.lr.ph39.i116.i692, !llvm.loop !666

bb.aib:                                           ; preds = %bb.ahz
  %i.hjz = icmp sgt i32 %i.hjb, 0
  %i.hka = sext i16 %.sroa.0.0.extract.trunc.i.i96.i672 to i64 ; 2 uses
  br i1 %i.hjz, label %.preheader30.i108.i684, label %.loopexit.sink.split.i102.i678

.preheader30.i108.i684:                           ; preds = %bb.aib
  %i.hkb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i672, 0
  br i1 %i.hkb, label %.lr.ph36.i109.i685, label %.loopexit.i105.i681

.lr.ph36.i109.i685:                               ; preds = %.preheader30.i108.i684, %bb.aij
  %.079.i35.i110.i686 = phi i64 [ %i.hlm, %bb.aij ], [ 0, %.preheader30.i108.i684 ]
  %.2.i34.i111.i687 = phi i64 [ %i.hll, %bb.aij ], [ %.081.i54.i94.i670, %.preheader30.i108.i684 ] ; 10 uses
  %i.hkc = load ptr, ptr %i.hhm, align 8, !tbaa !66, !noalias !663 ; 2 uses
  %.not.i21.i112.i688 = icmp eq ptr %i.hkc, null
  br i1 %.not.i21.i112.i688, label %bb.aid, label %bb.aic

bb.aic:                                           ; preds = %.lr.ph36.i109.i685
  %i.hkd = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  %i.hke = add nsw i64 %i.hkd, %.2.i34.i111.i687  ; 2 uses
  %i.hkf = lshr i64 %i.hke, 3
  %i.hkg = getelementptr inbounds nuw i8, ptr %i.hkc, i64 %i.hkf
  %i.hkh = load i8, ptr %i.hkg, align 1, !tbaa !98, !noalias !663
  %i.hki = trunc i64 %i.hke to i8
  %i.hkj = and i8 %i.hki, 7
  %i.hkk = lshr i8 %i.hkh, %i.hkj
  %i.hkl = trunc i8 %i.hkk to i1
  br i1 %i.hkl, label %bb.aih, label %bb.aii

bb.aid:                                           ; preds = %.lr.ph36.i109.i685
  %i.hkm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !663
  %i.hkn = getelementptr inbounds nuw i8, ptr %i.hkm, i64 40
  %i.hko = load i32, ptr %i.hkn, align 8, !tbaa !42, !noalias !663
  switch i32 %i.hko, label %bb.aig [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i690
    i32 28, label %bb.aie
    i32 38, label %bb.aif
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i8 %i.hna, ptr %i.hmy, align 1, !tbaa !98, !noalias !663
  %i.hnb = add nsw i64 %.183.i47.i138.i714, 1
  br label %bb.ais

bb.air:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i142.i718, %bb.aip, %bb.aio, %bb.ain, %bb.ail
  %i.hnc = shl nsw i64 %.3.i48.i137.i713, 3
  %i.hnd = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hnc
  store i64 0, ptr %i.hnd, align 1, !noalias !663
  br label %bb.ais

bb.ais:                                           ; preds = %bb.air, %bb.aiq
  %.284.i.i140.i716 = phi i64 [ %i.hnb, %bb.aiq ], [ %.183.i47.i138.i714, %bb.air ] ; 2 uses
  %i.hne = add nsw i64 %.3.i48.i137.i713, 1       ; 2 uses
  %i.hnf = add nuw nsw i64 %.078.i49.i136.i712, 1 ; 2 uses
  %exitcond66.not.i141.i717 = icmp eq i64 %i.hnf, %i.hlq
  br i1 %exitcond66.not.i141.i717, label %.loopexit.i105.i681, label %.lr.ph50.i135.i711, !llvm.loop !668

bb.ait:                                           ; preds = %bb.aik
  %i.hng = icmp sgt i32 %i.hln, 0
  %i.hnh = sext i16 %.sroa.0.0.extract.trunc.i.i96.i672 to i64 ; 2 uses
  br i1 %i.hng, label %.preheader27.i121.i697, label %.loopexit.sink.split.i102.i678

.preheader27.i121.i697:                           ; preds = %bb.ait
  %i.hni = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i672, 0
  br i1 %i.hni, label %.lr.ph44.i122.i698, label %.loopexit.i105.i681

.lr.ph44.i122.i698:                               ; preds = %.preheader27.i121.i697, %bb.ajh
  %.0.i43.i123.i699 = phi i64 [ %i.hpo, %bb.ajh ], [ 0, %.preheader27.i121.i697 ]
  %.4.i42.i124.i700 = phi i64 [ %i.hpn, %bb.ajh ], [ %.081.i54.i94.i670, %.preheader27.i121.i697 ] ; 10 uses
  %.385.i41.i125.i701 = phi i64 [ %.486.i.i127.i703, %bb.ajh ], [ %.082.i53.i95.i671, %.preheader27.i121.i697 ] ; 2 uses
  %i.hnj = load ptr, ptr %i.hhm, align 8, !tbaa !66, !noalias !663 ; 2 uses
  %.not.i26.i126.i702 = icmp eq ptr %i.hnj, null
  br i1 %.not.i26.i126.i702, label %bb.aiv, label %bb.aiu

bb.aiu:                                           ; preds = %.lr.ph44.i122.i698
  %i.hnk = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  %i.hnl = add nsw i64 %i.hnk, %.4.i42.i124.i700  ; 2 uses
  %i.hnm = lshr i64 %i.hnl, 3
  %i.hnn = getelementptr inbounds nuw i8, ptr %i.hnj, i64 %i.hnm
  %i.hno = load i8, ptr %i.hnn, align 1, !tbaa !98, !noalias !663
  %i.hnp = trunc i64 %i.hnl to i8
  %i.hnq = and i8 %i.hnp, 7
  %i.hnr = lshr i8 %i.hno, %i.hnq
  %i.hns = trunc i8 %i.hnr to i1
  br i1 %i.hns, label %bb.aiz, label %bb.ajg

bb.aiv:                                           ; preds = %.lr.ph44.i122.i698
  %i.hnt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !663
  %i.hnu = getelementptr inbounds nuw i8, ptr %i.hnt, i64 40
  %i.hnv = load i32, ptr %i.hnu, align 8, !tbaa !42, !noalias !663
  switch i32 %i.hnv, label %bb.aiy [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708
    i32 28, label %bb.aiw
    i32 38, label %bb.aix
  ]

bb.aiw:                                           ; preds = %bb.aiv
  %i.hnw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i700), !noalias !663
  br i1 %i.hnw, label %bb.ajg, label %bb.aiz

bb.aix:                                           ; preds = %bb.aiv
  %i.hnx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i700), !noalias !663
  br i1 %i.hnx, label %bb.ajg, label %bb.aiz

bb.aiy:                                           ; preds = %bb.aiv
  %i.hny = load i64, ptr %i.his, align 8, !tbaa !71, !noalias !663
  %i.hnz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !663
  %.not24.i133.i709 = icmp eq i64 %i.hny, %i.hnz
  br i1 %.not24.i133.i709, label %bb.ajg, label %bb.aiz

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708:  ; preds = %bb.aiv
  %i.hoa = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i700), !noalias !663
  br i1 %i.hoa, label %bb.ajg, label %bb.aiz

bb.aiz:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiu
  %i.hob = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %.4.i42.i124.i700 ; 2 uses
  %i.hoc = load i32, ptr %i.hob, align 4, !tbaa !3, !noalias !663
  %i.hod = zext i32 %i.hoc to i64                 ; 4 uses
  %i.hoe = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !663 ; 2 uses
  %.not.i29.i129.i705 = icmp eq ptr %i.hoe, null
  br i1 %.not.i29.i129.i705, label %bb.ajb, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.hof = load i64, ptr %i.hit, align 8, !tbaa !99, !noalias !663
  %i.hog = add nsw i64 %i.hof, %i.hod             ; 2 uses
  %i.hoh = lshr i64 %i.hog, 3
  %i.hoi = getelementptr inbounds nuw i8, ptr %i.hoe, i64 %i.hoh
  %i.hoj = load i8, ptr %i.hoi, align 1, !tbaa !98, !noalias !663
  %i.hok = trunc i64 %i.hog to i8
  %i.hol = and i8 %i.hok, 7
  %i.hom = lshr i8 %i.hoj, %i.hol
  %i.hon = trunc i8 %i.hom to i1
  br i1 %i.hon, label %bb.ajf, label %bb.ajg

bb.ajb:                                           ; preds = %bb.aiz
  %i.hoo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !663
  %i.hop = getelementptr inbounds nuw i8, ptr %i.hoo, i64 40
  %i.hoq = load i32, ptr %i.hop, align 8, !tbaa !42, !noalias !663
  switch i32 %i.hoq, label %bb.aje [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706
    i32 28, label %bb.ajc
    i32 38, label %bb.ajd
  ]

bb.ajc:                                           ; preds = %bb.ajb
  %i.hor = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hod), !noalias !663
  br i1 %i.hor, label %bb.ajg, label %bb.ajf

bb.ajd:                                           ; preds = %bb.ajb
  %i.hos = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hod), !noalias !663
  br i1 %i.hos, label %bb.ajg, label %bb.ajf

bb.aje:                                           ; preds = %bb.ajb
  %i.hot = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !663
  %i.hou = load i64, ptr %i.hhi, align 8, !tbaa !62, !noalias !663
  %.not25.i131.i707 = icmp eq i64 %i.hot, %i.hou
  br i1 %.not25.i131.i707, label %bb.ajg, label %bb.ajf

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706:  ; preds = %bb.ajb
  %i.hov = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hod), !noalias !663
  br i1 %i.hov, label %bb.ajg, label %bb.ajf

bb.ajf:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706, %bb.aje, %bb.ajd, %bb.ajc, %bb.aja
  %i.how = shl nsw i64 %.4.i42.i124.i700, 3
  %i.hox = getelementptr inbounds i8, ptr %i.hhh, i64 %i.how
  %i.hoy = load i32, ptr %i.hob, align 4, !tbaa !3, !noalias !663
  %i.hoz = shl i32 %i.hoy, 3
  %i.hpa = zext i32 %i.hoz to i64
  %i.hpb = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hpa
  %i.hpc = load i64, ptr %i.hpb, align 1, !noalias !663
  store i64 %i.hpc, ptr %i.hox, align 1, !noalias !663
  %i.hpd = srem i64 %.4.i42.i124.i700, 8
  %i.hpe = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hpd
  %i.hpf = load i8, ptr %i.hpe, align 1, !tbaa !98, !noalias !663
  %i.hpg = sdiv i64 %.4.i42.i124.i700, 8
  %i.hph = getelementptr inbounds i8, ptr %.0.i.i.i91.i667, i64 %i.hpg ; 2 uses
  %i.hpi = load i8, ptr %i.hph, align 1, !tbaa !98, !noalias !663
  %i.hpj = or i8 %i.hpi, %i.hpf
  store i8 %i.hpj, ptr %i.hph, align 1, !tbaa !98, !noalias !663
  %i.hpk = add nsw i64 %.385.i41.i125.i701, 1
  br label %bb.ajh

bb.ajg:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706, %bb.aje, %bb.ajd, %bb.ajc, %bb.aja, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiu
  %i.hpl = shl nsw i64 %.4.i42.i124.i700, 3
  %i.hpm = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hpl
  store i64 0, ptr %i.hpm, align 1, !noalias !663
  br label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg, %bb.ajf
  %.486.i.i127.i703 = phi i64 [ %i.hpk, %bb.ajf ], [ %.385.i41.i125.i701, %bb.ajg ] ; 2 uses
  %i.hpn = add nsw i64 %.4.i42.i124.i700, 1       ; 2 uses
  %i.hpo = add nuw nsw i64 %.0.i43.i123.i699, 1   ; 2 uses
  %exitcond65.not.i128.i704 = icmp eq i64 %i.hpo, %i.hnh
  br i1 %exitcond65.not.i128.i704, label %.loopexit.i105.i681, label %.lr.ph44.i122.i698, !llvm.loop !669

.loopexit.sink.split.i102.i678:                   ; preds = %bb.ait, %bb.aib
  %.sink86.i103.i679 = phi i64 [ %i.hka, %bb.aib ], [ %i.hnh, %bb.ait ] ; 2 uses
  %.587.i.ph.i104.i680 = phi i64 [ %i.hja, %bb.aib ], [ %.082.i53.i95.i671, %bb.ait ]
  %i.hpp = shl nsw i64 %.081.i54.i94.i670, 3
  %i.hpq = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hpp
  %i.hpr = shl nsw i64 %.sink86.i103.i679, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.hpq, i8 0, i64 %i.hpr, i1 false), !noalias !663
  %i.hps = add nsw i64 %.sink86.i103.i679, %.081.i54.i94.i670
  br label %.loopexit.i105.i681

.loopexit.i105.i681.loopexit3245.unr-lcssa:       ; preds = %.lr.ph39.i116.i692
  %i.hpt = and i16 %.sroa.0.0.extract.trunc.i.i96.i672, 1
  %lcmp.mod3404.not = icmp eq i16 %i.hpt, 0
  br i1 %lcmp.mod3404.not, label %.loopexit.i105.i681, label %.lr.ph39.i116.i692.epil.preheader

.lr.ph39.i116.i692.epil.preheader:                ; preds = %.loopexit.i105.i681.loopexit3245.unr-lcssa, %.lr.ph39.i116.i692.preheader
  %.1.i37.i118.i694.epil.init = phi i64 [ %.081.i54.i94.i670, %.lr.ph39.i116.i692.preheader ], [ %i.hjy, %.loopexit.i105.i681.loopexit3245.unr-lcssa ] ; 3 uses
  %lcmp.mod3406 = trunc i32 %i.hiu to i1
  call void @llvm.assume(i1 %lcmp.mod3406)
  %i.hpu = shl nsw i64 %.1.i37.i118.i694.epil.init, 3
  %i.hpv = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hpu
  %i.hpw = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %.1.i37.i118.i694.epil.init
  %i.hpx = load i32, ptr %i.hpw, align 4, !tbaa !3, !noalias !663
  %i.hpy = shl i32 %i.hpx, 3
  %i.hpz = zext i32 %i.hpy to i64
  %i.hqa = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hpz
  %i.hqb = load i64, ptr %i.hqa, align 1, !noalias !663
  store i64 %i.hqb, ptr %i.hpv, align 1, !noalias !663
  %i.hqc = add nsw i64 %.1.i37.i118.i694.epil.init, 1
  br label %.loopexit.i105.i681

.loopexit.i105.i681:                              ; preds = %bb.aij, %.lr.ph39.i116.i692.epil.preheader, %.loopexit.i105.i681.loopexit3245.unr-lcssa, %bb.ajh, %bb.ais, %.loopexit.sink.split.i102.i678, %.preheader27.i121.i697, %.preheader.i134.i710, %.preheader30.i108.i684, %bb.aia
  %.587.i.i106.i682 = phi i64 [ %.587.i.ph.i104.i680, %.loopexit.sink.split.i102.i678 ], [ %i.hja, %bb.aia ], [ %.486.i.i127.i703, %bb.ajh ], [ %i.hja, %.lr.ph39.i116.i692.epil.preheader ], [ %i.hja, %.preheader30.i108.i684 ], [ %.082.i53.i95.i671, %.preheader.i134.i710 ], [ %.082.i53.i95.i671, %.preheader27.i121.i697 ], [ %.284.i.i140.i716, %bb.ais ], [ %i.hja, %.loopexit.i105.i681.loopexit3245.unr-lcssa ], [ %i.hja, %bb.aij ] ; 2 uses
  %.5.i.i107.i683 = phi i64 [ %i.hps, %.loopexit.sink.split.i102.i678 ], [ %.081.i54.i94.i670, %bb.aia ], [ %i.hpn, %bb.ajh ], [ %i.hqc, %.lr.ph39.i116.i692.epil.preheader ], [ %.081.i54.i94.i670, %.preheader30.i108.i684 ], [ %.081.i54.i94.i670, %.preheader.i134.i710 ], [ %.081.i54.i94.i670, %.preheader27.i121.i697 ], [ %i.hne, %bb.ais ], [ %i.hjy, %.loopexit.i105.i681.loopexit3245.unr-lcssa ], [ %i.hll, %bb.aij ] ; 2 uses
  %i.hqd = icmp slt i64 %.5.i.i107.i683, %i.hhj
  br i1 %i.hqd, label %bb.ahy, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !670

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i681, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666
  %.082.i.lcssa.i92.i668 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666 ], [ %.587.i.i106.i682, %.loopexit.i105.i681 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !663
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i662:                                  ; preds = %.lr.ph.i86.i662, %.lr.ph.i86.i662.preheader.new
  %.0.i1833.i87.i663 = phi i64 [ 0, %.lr.ph.i86.i662.preheader.new ], [ %i.hqv, %.lr.ph.i86.i662 ] ; 4 uses
  %niter3402 = phi i64 [ 0, %.lr.ph.i86.i662.preheader.new ], [ %niter3402.next.1, %.lr.ph.i86.i662 ]
  %i.hqe = shl nsw i64 %.0.i1833.i87.i663, 3
  %i.hqf = getelementptr inbounds nuw i8, ptr %i.hhh, i64 %i.hqe
  %i.hqg = getelementptr inbounds nuw [4 x i8], ptr %i.hhp, i64 %.0.i1833.i87.i663
  %i.hqh = load i32, ptr %i.hqg, align 4, !tbaa !3, !noalias !663
  %i.hqi = shl i32 %i.hqh, 3
  %i.hqj = zext i32 %i.hqi to i64
  %i.hqk = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hqj
  %i.hql = load i64, ptr %i.hqk, align 1, !noalias !663
  store i64 %i.hql, ptr %i.hqf, align 1, !noalias !663
  %i.hqm = or disjoint i64 %.0.i1833.i87.i663, 1  ; 2 uses
  %i.hqn = shl nsw i64 %i.hqm, 3
  %i.hqo = getelementptr inbounds nuw i8, ptr %i.hhh, i64 %i.hqn
  %i.hqp = getelementptr inbounds nuw [4 x i8], ptr %i.hhp, i64 %i.hqm
  %i.hqq = load i32, ptr %i.hqp, align 4, !tbaa !3, !noalias !663
  %i.hqr = shl i32 %i.hqq, 3
  %i.hqs = zext i32 %i.hqr to i64
  %i.hqt = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hqs
  %i.hqu = load i64, ptr %i.hqt, align 1, !noalias !663
  store i64 %i.hqu, ptr %i.hqo, align 1, !noalias !663
  %i.hqv = add nuw nsw i64 %.0.i1833.i87.i663, 2  ; 2 uses
  %niter3402.next.1 = add i64 %niter3402, 2       ; 2 uses
  %niter3402.ncmp.1 = icmp eq i64 %niter3402.next.1, %unroll_iter3401
  br i1 %niter3402.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa, label %.lr.ph.i86.i662, !llvm.loop !671

bb.aji:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.ajk, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji
  %i.hqw = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.hqx = load i64, ptr %i.hqw, align 8, !tbaa !71, !noalias !672
  %.not.i19.i145.i843 = icmp ne i64 %i.hqx, 0
  %i.hqy = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hqz = load ptr, ptr %i.hqy, align 8, !noalias !672
  %i.hra = icmp ne ptr %i.hqz, null
  %i.hrb = select i1 %.not.i19.i145.i843, i1 %i.hra, i1 false
  br label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj, %bb.aji
  %i.hrc = phi i1 [ true, %bb.aji ], [ %i.hrb, %bb.ajj ]
  %i.hrd = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !672
  %i.hre = extractvalue { i32, ptr } %i.hrd, 1    ; 9 uses
  %i.hrf = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !672 ; 13 uses
  %i.hrg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.hrh = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !672 ; 11 uses
  %i.hri = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.hrj = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  %i.hrk = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.hrl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.hrm = load ptr, ptr %i.hrl, align 8, !tbaa !66, !noalias !672
  %i.hrn = getelementptr inbounds [8 x i8], ptr %i.hrm, i64 %i.hrj ; 9 uses
  br i1 %i.hrc, label %bb.ajl, label %.preheader32.i146.i844

.preheader32.i146.i844:                           ; preds = %bb.ajk
  %i.hro = icmp sgt i64 %i.hrh, 0
  br i1 %i.hro, label %.lr.ph.i148.i845.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i845.preheader:                       ; preds = %.preheader32.i146.i844
  %xtraiter3431 = and i64 %i.hrh, 1
  %i.hrp = icmp eq i64 %i.hrh, 1
  br i1 %i.hrp, label %.lr.ph.i148.i845.epil.preheader, label %.lr.ph.i148.i845.preheader.new

.lr.ph.i148.i845.preheader.new:                   ; preds = %.lr.ph.i148.i845.preheader
  %unroll_iter3434 = and i64 %i.hrh, 9223372036854775806
  br label %.lr.ph.i148.i845

bb.ajl:                                           ; preds = %bb.ajk
  %i.hrq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.hrr = load ptr, ptr %i.hrq, align 8, !tbaa !171, !noalias !672
  %i.hrs = load ptr, ptr %i.hrr, align 8, !tbaa !306, !noalias !672 ; 4 uses
  %.not.i.i.i151.i848 = icmp eq ptr %i.hrs, null
  br i1 %.not.i.i.i151.i848, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849, label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl
  %i.hrt = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.hru = load i64, ptr %i.hrt, align 8, !tbaa !438, !noalias !672
  %i.hrv = getelementptr inbounds nuw i8, ptr %i.hrs, i64 9
  %i.hrw = load i8, ptr %i.hrv, align 1, !tbaa !439, !range !127, !noalias !672, !noundef !128
  %i.hrx = trunc nuw i8 %i.hrw to i1
  %i.hry = getelementptr inbounds nuw i8, ptr %i.hrs, i64 8
  %i.hrz = load i8, ptr %i.hry, align 8, !range !127, !noalias !672
  %i.hsa = trunc nuw i8 %i.hrz to i1
  %i.hsb = select i1 %i.hrx, i1 %i.hsa, i1 false, !prof !117
  %i.hsc = getelementptr inbounds nuw i8, ptr %i.hrs, i64 16
  %i.hsd = load ptr, ptr %i.hsc, align 8, !noalias !672
  %i.hse = select i1 %i.hsb, ptr %i.hsd, ptr null, !prof !117
  %i.hsf = getelementptr inbounds i8, ptr %i.hse, i64 %i.hru
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849: ; preds = %bb.ajm, %bb.ajl
  %.0.i.i.i153.i850 = phi ptr [ %i.hsf, %bb.ajm ], [ null, %bb.ajl ] ; 5 uses
  %i.hsg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.hsh = load i64, ptr %i.hsg, align 8, !tbaa !178, !noalias !672 ; 2 uses
  %i.hsi = ashr i64 %i.hsh, 3
  %i.hsj = and i64 %i.hsh, 7
  %i.hsk = icmp ne i64 %i.hsj, 0
  %i.hsl = zext i1 %i.hsk to i64
  %i.hsm = add nsw i64 %i.hsi, %i.hsl
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i850, i8 0, i64 %i.hsm, i1 false), !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !672
  %i.hsn = load ptr, ptr %i.hrk, align 8, !tbaa !66, !noalias !672
  %i.hso = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.hsn, i64 noundef %i.hso, i64 noundef %i.hrh), !noalias !672
  %i.hsp = icmp sgt i64 %i.hrh, 0
  br i1 %i.hsp, label %.lr.ph55.i155.i852, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i852:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849
  %i.hsq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.hsr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ajn

bb.ajn:                                           ; preds = %.loopexit.i167.i864, %.lr.ph55.i155.i852
  %.081.i54.i156.i853 = phi i64 [ 0, %.lr.ph55.i155.i852 ], [ %.5.i.i169.i866, %.loopexit.i167.i864 ] ; 12 uses
  %.082.i53.i157.i854 = phi i64 [ 0, %.lr.ph55.i155.i852 ], [ %.587.i.i168.i865, %.loopexit.i167.i864 ] ; 6 uses
  %i.hss = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %16), !noalias !672 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i855 = trunc i32 %i.hss to i16 ; 10 uses
  %i.hst = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !672
  %.not.i20.i159.i856 = icmp ne i64 %i.hst, 0
  %i.hsu = load ptr, ptr %i.v, align 8, !noalias !672
  %i.hsv = icmp ne ptr %i.hsu, null
  %i.hsw = select i1 %.not.i20.i159.i856, i1 %i.hsv, i1 false
  br i1 %i.hsw, label %bb.ajz, label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn
  %.sroa.14.0.extract.shift.i.i160.i857 = lshr i32 %i.hss, 16
  %.sroa.14.0.extract.trunc.i.i161.i858 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i857 to i64
  %sext91.i.i162.i859 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i858, 48
  %i.hsx = ashr exact i64 %sext91.i.i162.i859, 48
  %i.hsy = add nsw i64 %i.hsx, %.082.i53.i157.i854 ; 6 uses
  %i.hsz = ashr i32 %i.hss, 16                    ; 2 uses
  %sext.i.i163.i860 = shl i32 %i.hss, 16
  %i.hta = ashr exact i32 %sext.i.i163.i860, 16
  %i.htb = icmp eq i32 %i.hsz, %i.hta
  br i1 %i.htb, label %bb.ajp, label %bb.ajq

bb.ajp:                                           ; preds = %bb.ajo
  %i.htc = sext i16 %.sroa.0.0.extract.trunc.i.i158.i855 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i850, i64 noundef %.081.i54.i156.i853, i64 noundef %i.htc, i1 noundef zeroext true), !noalias !672
  %i.htd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i855, 0
  br i1 %i.htd, label %.lr.ph39.i178.i875.preheader, label %.loopexit.i167.i864

.lr.ph39.i178.i875.preheader:                     ; preds = %bb.ajp
  %i.hte = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i855, 1
  br i1 %i.hte, label %.lr.ph39.i178.i875.epil.preheader, label %.lr.ph39.i178.i875.preheader.new

.lr.ph39.i178.i875.preheader.new:                 ; preds = %.lr.ph39.i178.i875.preheader
  %unroll_iter3440 = and i64 %i.htc, 32766
  br label %.lr.ph39.i178.i875

.lr.ph39.i178.i875:                               ; preds = %.lr.ph39.i178.i875, %.lr.ph39.i178.i875.preheader.new
  %.1.i37.i180.i877 = phi i64 [ %.081.i54.i156.i853, %.lr.ph39.i178.i875.preheader.new ], [ %i.htu, %.lr.ph39.i178.i875 ] ; 4 uses
  %niter3441 = phi i64 [ 0, %.lr.ph39.i178.i875.preheader.new ], [ %niter3441.next.1, %.lr.ph39.i178.i875 ]
  %i.htf = shl nsw i64 %.1.i37.i180.i877, 3
  %i.htg = getelementptr inbounds i8, ptr %i.hrf, i64 %i.htf
  %i.hth = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %.1.i37.i180.i877
  %i.hti = load i64, ptr %i.hth, align 8, !tbaa !130, !noalias !672
  %i.htj = shl i64 %i.hti, 3
  %i.htk = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.htj
  %i.htl = load i64, ptr %i.htk, align 1, !noalias !672
  store i64 %i.htl, ptr %i.htg, align 1, !noalias !672
  %i.htm = add nsw i64 %.1.i37.i180.i877, 1       ; 2 uses
  %i.htn = shl nsw i64 %i.htm, 3
  %i.hto = getelementptr inbounds i8, ptr %i.hrf, i64 %i.htn
  %i.htp = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %i.htm
  %i.htq = load i64, ptr %i.htp, align 8, !tbaa !130, !noalias !672
  %i.htr = shl i64 %i.htq, 3
  %i.hts = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.htr
  %i.htt = load i64, ptr %i.hts, align 1, !noalias !672
  store i64 %i.htt, ptr %i.hto, align 1, !noalias !672
  %i.htu = add nsw i64 %.1.i37.i180.i877, 2       ; 3 uses
  %niter3441.next.1 = add i64 %niter3441, 2       ; 2 uses
  %niter3441.ncmp.1 = icmp eq i64 %niter3441.next.1, %unroll_iter3440
  br i1 %niter3441.ncmp.1, label %.loopexit.i167.i864.loopexit3222.unr-lcssa, label %.lr.ph39.i178.i875, !llvm.loop !675

bb.ajq:                                           ; preds = %bb.ajo
  %i.htv = icmp sgt i32 %i.hsz, 0
  %i.htw = sext i16 %.sroa.0.0.extract.trunc.i.i158.i855 to i64 ; 2 uses
  br i1 %i.htv, label %.preheader30.i170.i867, label %.loopexit.sink.split.i164.i861

.preheader30.i170.i867:                           ; preds = %bb.ajq
  %i.htx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i855, 0
  br i1 %i.htx, label %.lr.ph36.i171.i868, label %.loopexit.i167.i864

.lr.ph36.i171.i868:                               ; preds = %.preheader30.i170.i867, %bb.ajy
  %.079.i35.i172.i869 = phi i64 [ %i.hvh, %bb.ajy ], [ 0, %.preheader30.i170.i867 ]
  %.2.i34.i173.i870 = phi i64 [ %i.hvg, %bb.ajy ], [ %.081.i54.i156.i853, %.preheader30.i170.i867 ] ; 10 uses
  %i.hty = load ptr, ptr %i.hrk, align 8, !tbaa !66, !noalias !672 ; 2 uses
  %.not.i21.i174.i871 = icmp eq ptr %i.hty, null
  br i1 %.not.i21.i174.i871, label %bb.ajs, label %bb.ajr

bb.ajr:                                           ; preds = %.lr.ph36.i171.i868
  %i.htz = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  %i.hua = add nsw i64 %i.htz, %.2.i34.i173.i870  ; 2 uses
  %i.hub = lshr i64 %i.hua, 3
  %i.huc = getelementptr inbounds nuw i8, ptr %i.hty, i64 %i.hub
  %i.hud = load i8, ptr %i.huc, align 1, !tbaa !98, !noalias !672
  %i.hue = trunc i64 %i.hua to i8
  %i.huf = and i8 %i.hue, 7
  %i.hug = lshr i8 %i.hud, %i.huf
  %i.huh = trunc i8 %i.hug to i1
  br i1 %i.huh, label %bb.ajw, label %bb.ajx

bb.ajs:                                           ; preds = %.lr.ph36.i171.i868
  %i.hui = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !672
  %i.huj = getelementptr inbounds nuw i8, ptr %i.hui, i64 40
  %i.huk = load i32, ptr %i.huj, align 8, !tbaa !42, !noalias !672
  switch i32 %i.huk, label %bb.ajv [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i873
    i32 28, label %bb.ajt
    i32 38, label %bb.aju
  ]

end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hwr = getelementptr inbounds i8, ptr %.0.i.i.i153.i850, i64 %i.hwq ; 2 uses
  %i.hws = load i8, ptr %i.hwr, align 1, !tbaa !98, !noalias !672
  %i.hwt = or i8 %i.hws, %i.hwp
  store i8 %i.hwt, ptr %i.hwr, align 1, !tbaa !98, !noalias !672
  %i.hwu = add nsw i64 %.183.i47.i200.i897, 1
  br label %bb.akh

bb.akg:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i204.i901, %bb.ake, %bb.akd, %bb.akc, %bb.aka
  %i.hwv = shl nsw i64 %.3.i48.i199.i896, 3
  %i.hww = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hwv
  store i64 0, ptr %i.hww, align 1, !noalias !672
  br label %bb.akh

bb.akh:                                           ; preds = %bb.akg, %bb.akf
  %.284.i.i202.i899 = phi i64 [ %i.hwu, %bb.akf ], [ %.183.i47.i200.i897, %bb.akg ] ; 2 uses
  %i.hwx = add nsw i64 %.3.i48.i199.i896, 1       ; 2 uses
  %i.hwy = add nuw nsw i64 %.078.i49.i198.i895, 1 ; 2 uses
  %exitcond66.not.i203.i900 = icmp eq i64 %i.hwy, %i.hvl
  br i1 %exitcond66.not.i203.i900, label %.loopexit.i167.i864, label %.lr.ph50.i197.i894, !llvm.loop !677

bb.aki:                                           ; preds = %bb.ajz
  %i.hwz = icmp sgt i32 %i.hvi, 0
  %i.hxa = sext i16 %.sroa.0.0.extract.trunc.i.i158.i855 to i64 ; 2 uses
  br i1 %i.hwz, label %.preheader27.i183.i880, label %.loopexit.sink.split.i164.i861

.preheader27.i183.i880:                           ; preds = %bb.aki
  %i.hxb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i855, 0
  br i1 %i.hxb, label %.lr.ph44.i184.i881, label %.loopexit.i167.i864

.lr.ph44.i184.i881:                               ; preds = %.preheader27.i183.i880, %bb.akw
  %.0.i43.i185.i882 = phi i64 [ %i.hzf, %bb.akw ], [ 0, %.preheader27.i183.i880 ]
  %.4.i42.i186.i883 = phi i64 [ %i.hze, %bb.akw ], [ %.081.i54.i156.i853, %.preheader27.i183.i880 ] ; 10 uses
  %.385.i41.i187.i884 = phi i64 [ %.486.i.i189.i886, %bb.akw ], [ %.082.i53.i157.i854, %.preheader27.i183.i880 ] ; 2 uses
  %i.hxc = load ptr, ptr %i.hrk, align 8, !tbaa !66, !noalias !672 ; 2 uses
  %.not.i26.i188.i885 = icmp eq ptr %i.hxc, null
  br i1 %.not.i26.i188.i885, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %.lr.ph44.i184.i881
  %i.hxd = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  %i.hxe = add nsw i64 %i.hxd, %.4.i42.i186.i883  ; 2 uses
  %i.hxf = lshr i64 %i.hxe, 3
  %i.hxg = getelementptr inbounds nuw i8, ptr %i.hxc, i64 %i.hxf
  %i.hxh = load i8, ptr %i.hxg, align 1, !tbaa !98, !noalias !672
  %i.hxi = trunc i64 %i.hxe to i8
  %i.hxj = and i8 %i.hxi, 7
  %i.hxk = lshr i8 %i.hxh, %i.hxj
  %i.hxl = trunc i8 %i.hxk to i1
  br i1 %i.hxl, label %bb.ako, label %bb.akv

bb.akk:                                           ; preds = %.lr.ph44.i184.i881
  %i.hxm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !672
  %i.hxn = getelementptr inbounds nuw i8, ptr %i.hxm, i64 40
  %i.hxo = load i32, ptr %i.hxn, align 8, !tbaa !42, !noalias !672
  switch i32 %i.hxo, label %bb.akn [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891
    i32 28, label %bb.akl
    i32 38, label %bb.akm
  ]

bb.akl:                                           ; preds = %bb.akk
  %i.hxp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i883), !noalias !672
  br i1 %i.hxp, label %bb.akv, label %bb.ako

bb.akm:                                           ; preds = %bb.akk
  %i.hxq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i883), !noalias !672
  br i1 %i.hxq, label %bb.akv, label %bb.ako

bb.akn:                                           ; preds = %bb.akk
  %i.hxr = load i64, ptr %i.hsq, align 8, !tbaa !71, !noalias !672
  %i.hxs = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !672
  %.not24.i195.i892 = icmp eq i64 %i.hxr, %i.hxs
  br i1 %.not24.i195.i892, label %bb.akv, label %bb.ako

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891:  ; preds = %bb.akk
  %i.hxt = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i883), !noalias !672
  br i1 %i.hxt, label %bb.akv, label %bb.ako

bb.ako:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891, %bb.akn, %bb.akm, %bb.akl, %bb.akj
  %i.hxu = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %.4.i42.i186.i883 ; 2 uses
  %i.hxv = load i64, ptr %i.hxu, align 8, !tbaa !130, !noalias !672 ; 4 uses
  %i.hxw = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !672 ; 2 uses
  %.not.i29.i191.i888 = icmp eq ptr %i.hxw, null
  br i1 %.not.i29.i191.i888, label %bb.akq, label %bb.akp

bb.akp:                                           ; preds = %bb.ako
  %i.hxx = load i64, ptr %i.hsr, align 8, !tbaa !99, !noalias !672
  %i.hxy = add nsw i64 %i.hxx, %i.hxv             ; 2 uses
  %i.hxz = lshr i64 %i.hxy, 3
  %i.hya = getelementptr inbounds nuw i8, ptr %i.hxw, i64 %i.hxz
  %i.hyb = load i8, ptr %i.hya, align 1, !tbaa !98, !noalias !672
  %i.hyc = trunc i64 %i.hxy to i8
  %i.hyd = and i8 %i.hyc, 7
  %i.hye = lshr i8 %i.hyb, %i.hyd
  %i.hyf = trunc i8 %i.hye to i1
  br i1 %i.hyf, label %bb.aku, label %bb.akv

bb.akq:                                           ; preds = %bb.ako
  %i.hyg = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !672
  %i.hyh = getelementptr inbounds nuw i8, ptr %i.hyg, i64 40
  %i.hyi = load i32, ptr %i.hyh, align 8, !tbaa !42, !noalias !672
  switch i32 %i.hyi, label %bb.akt [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889
    i32 28, label %bb.akr
    i32 38, label %bb.aks
  ]

bb.akr:                                           ; preds = %bb.akq
  %i.hyj = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hxv), !noalias !672
  br i1 %i.hyj, label %bb.akv, label %bb.aku

bb.aks:                                           ; preds = %bb.akq
  %i.hyk = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hxv), !noalias !672
  br i1 %i.hyk, label %bb.akv, label %bb.aku

bb.akt:                                           ; preds = %bb.akq
  %i.hyl = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !672
  %i.hym = load i64, ptr %i.hrg, align 8, !tbaa !62, !noalias !672
  %.not25.i193.i890 = icmp eq i64 %i.hyl, %i.hym
  br i1 %.not25.i193.i890, label %bb.akv, label %bb.aku

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889:  ; preds = %bb.akq
  %i.hyn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hxv), !noalias !672
  br i1 %i.hyn, label %bb.akv, label %bb.aku

bb.aku:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889, %bb.akt, %bb.aks, %bb.akr, %bb.akp
  %i.hyo = shl nsw i64 %.4.i42.i186.i883, 3
  %i.hyp = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hyo
  %i.hyq = load i64, ptr %i.hxu, align 8, !tbaa !130, !noalias !672
  %i.hyr = shl i64 %i.hyq, 3
  %i.hys = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.hyr
  %i.hyt = load i64, ptr %i.hys, align 1, !noalias !672
  store i64 %i.hyt, ptr %i.hyp, align 1, !noalias !672
  %i.hyu = srem i64 %.4.i42.i186.i883, 8
  %i.hyv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hyu
  %i.hyw = load i8, ptr %i.hyv, align 1, !tbaa !98, !noalias !672
  %i.hyx = sdiv i64 %.4.i42.i186.i883, 8
  %i.hyy = getelementptr inbounds i8, ptr %.0.i.i.i153.i850, i64 %i.hyx ; 2 uses
  %i.hyz = load i8, ptr %i.hyy, align 1, !tbaa !98, !noalias !672
  %i.hza = or i8 %i.hyz, %i.hyw
  store i8 %i.hza, ptr %i.hyy, align 1, !tbaa !98, !noalias !672
  %i.hzb = add nsw i64 %.385.i41.i187.i884, 1
  br label %bb.akw

bb.akv:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889, %bb.akt, %bb.aks, %bb.akr, %bb.akp, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891, %bb.akn, %bb.akm, %bb.akl, %bb.akj
  %i.hzc = shl nsw i64 %.4.i42.i186.i883, 3
  %i.hzd = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hzc
  store i64 0, ptr %i.hzd, align 1, !noalias !672
  br label %bb.akw

bb.akw:                                           ; preds = %bb.akv, %bb.aku
  %.486.i.i189.i886 = phi i64 [ %i.hzb, %bb.aku ], [ %.385.i41.i187.i884, %bb.akv ] ; 2 uses
  %i.hze = add nsw i64 %.4.i42.i186.i883, 1       ; 2 uses
  %i.hzf = add nuw nsw i64 %.0.i43.i185.i882, 1   ; 2 uses
  %exitcond65.not.i190.i887 = icmp eq i64 %i.hzf, %i.hxa
  br i1 %exitcond65.not.i190.i887, label %.loopexit.i167.i864, label %.lr.ph44.i184.i881, !llvm.loop !678

.loopexit.sink.split.i164.i861:                   ; preds = %bb.aki, %bb.ajq
  %.sink86.i165.i862 = phi i64 [ %i.htw, %bb.ajq ], [ %i.hxa, %bb.aki ] ; 2 uses
  %.587.i.ph.i166.i863 = phi i64 [ %i.hsy, %bb.ajq ], [ %.082.i53.i157.i854, %bb.aki ]
  %i.hzg = shl nsw i64 %.081.i54.i156.i853, 3
  %i.hzh = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hzg
  %i.hzi = shl nsw i64 %.sink86.i165.i862, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.hzh, i8 0, i64 %i.hzi, i1 false), !noalias !672
  %i.hzj = add nsw i64 %.sink86.i165.i862, %.081.i54.i156.i853
  br label %.loopexit.i167.i864

.loopexit.i167.i864.loopexit3222.unr-lcssa:       ; preds = %.lr.ph39.i178.i875
  %i.hzk = and i16 %.sroa.0.0.extract.trunc.i.i158.i855, 1
  %lcmp.mod3437.not = icmp eq i16 %i.hzk, 0
  br i1 %lcmp.mod3437.not, label %.loopexit.i167.i864, label %.lr.ph39.i178.i875.epil.preheader

.lr.ph39.i178.i875.epil.preheader:                ; preds = %.loopexit.i167.i864.loopexit3222.unr-lcssa, %.lr.ph39.i178.i875.preheader
  %.1.i37.i180.i877.epil.init = phi i64 [ %.081.i54.i156.i853, %.lr.ph39.i178.i875.preheader ], [ %i.htu, %.loopexit.i167.i864.loopexit3222.unr-lcssa ] ; 3 uses
  %lcmp.mod3439 = trunc i32 %i.hss to i1
  call void @llvm.assume(i1 %lcmp.mod3439)
  %i.hzl = shl nsw i64 %.1.i37.i180.i877.epil.init, 3
  %i.hzm = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hzl
  %i.hzn = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %.1.i37.i180.i877.epil.init
  %i.hzo = load i64, ptr %i.hzn, align 8, !tbaa !130, !noalias !672
  %i.hzp = shl i64 %i.hzo, 3
  %i.hzq = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.hzp
  %i.hzr = load i64, ptr %i.hzq, align 1, !noalias !672
  store i64 %i.hzr, ptr %i.hzm, align 1, !noalias !672
  %i.hzs = add nsw i64 %.1.i37.i180.i877.epil.init, 1
  br label %.loopexit.i167.i864

.loopexit.i167.i864:                              ; preds = %bb.ajy, %.lr.ph39.i178.i875.epil.preheader, %.loopexit.i167.i864.loopexit3222.unr-lcssa, %bb.akw, %bb.akh, %.loopexit.sink.split.i164.i861, %.preheader27.i183.i880, %.preheader.i196.i893, %.preheader30.i170.i867, %bb.ajp
  %.587.i.i168.i865 = phi i64 [ %.587.i.ph.i166.i863, %.loopexit.sink.split.i164.i861 ], [ %i.hsy, %bb.ajp ], [ %.486.i.i189.i886, %bb.akw ], [ %i.hsy, %.lr.ph39.i178.i875.epil.preheader ], [ %i.hsy, %.preheader30.i170.i867 ], [ %.082.i53.i157.i854, %.preheader.i196.i893 ], [ %.082.i53.i157.i854, %.preheader27.i183.i880 ], [ %.284.i.i202.i899, %bb.akh ], [ %i.hsy, %.loopexit.i167.i864.loopexit3222.unr-lcssa ], [ %i.hsy, %bb.ajy ] ; 2 uses
  %.5.i.i169.i866 = phi i64 [ %i.hzj, %.loopexit.sink.split.i164.i861 ], [ %.081.i54.i156.i853, %bb.ajp ], [ %i.hze, %bb.akw ], [ %i.hzs, %.lr.ph39.i178.i875.epil.preheader ], [ %.081.i54.i156.i853, %.preheader30.i170.i867 ], [ %.081.i54.i156.i853, %.preheader.i196.i893 ], [ %.081.i54.i156.i853, %.preheader27.i183.i880 ], [ %i.hwx, %bb.akh ], [ %i.htu, %.loopexit.i167.i864.loopexit3222.unr-lcssa ], [ %i.hvg, %bb.ajy ] ; 2 uses
  %i.hzt = icmp slt i64 %.5.i.i169.i866, %i.hrh
  br i1 %i.hzt, label %bb.ajn, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !679

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i864, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849
  %.082.i.lcssa.i154.i851 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849 ], [ %.587.i.i168.i865, %.loopexit.i167.i864 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !672
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i845:                                 ; preds = %.lr.ph.i148.i845, %.lr.ph.i148.i845.preheader.new
  %.0.i1833.i149.i846 = phi i64 [ 0, %.lr.ph.i148.i845.preheader.new ], [ %i.iaj, %.lr.ph.i148.i845 ] ; 4 uses
  %niter3435 = phi i64 [ 0, %.lr.ph.i148.i845.preheader.new ], [ %niter3435.next.1, %.lr.ph.i148.i845 ]
  %i.hzu = shl nsw i64 %.0.i1833.i149.i846, 3
  %i.hzv = getelementptr inbounds nuw i8, ptr %i.hrf, i64 %i.hzu
  %i.hzw = getelementptr inbounds nuw [8 x i8], ptr %i.hrn, i64 %.0.i1833.i149.i846
  %i.hzx = load i64, ptr %i.hzw, align 8, !tbaa !130, !noalias !672
  %i.hzy = shl i64 %i.hzx, 3
  %i.hzz = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.hzy
  %i.iaa = load i64, ptr %i.hzz, align 1, !noalias !672
  store i64 %i.iaa, ptr %i.hzv, align 1, !noalias !672
  %i.iab = or disjoint i64 %.0.i1833.i149.i846, 1 ; 2 uses
  %i.iac = shl nsw i64 %i.iab, 3
  %i.iad = getelementptr inbounds nuw i8, ptr %i.hrf, i64 %i.iac
  %i.iae = getelementptr inbounds nuw [8 x i8], ptr %i.hrn, i64 %i.iab
  %i.iaf = load i64, ptr %i.iae, align 8, !tbaa !130, !noalias !672
  %i.iag = shl i64 %i.iaf, 3
  %i.iah = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.iag
  %i.iai = load i64, ptr %i.iah, align 1, !noalias !672
  store i64 %i.iai, ptr %i.iad, align 1, !noalias !672
  %i.iaj = add nuw nsw i64 %.0.i1833.i149.i846, 2 ; 2 uses
  %niter3435.next.1 = add i64 %niter3435, 2       ; 2 uses
  %niter3435.ncmp.1 = icmp eq i64 %niter3435.next.1, %unroll_iter3434
  br i1 %niter3435.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i845, !llvm.loop !680

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i845
  %lcmp.mod3432.not = icmp eq i64 %xtraiter3431, 0
  br i1 %lcmp.mod3432.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i845.epil.preheader

.lr.ph.i148.i845.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i845.preheader
  %.0.i1833.i149.i846.epil.init = phi i64 [ 0, %.lr.ph.i148.i845.preheader ], [ %i.iaj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3433 = trunc i64 %i.hrh to i1
  call void @llvm.assume(i1 %lcmp.mod3433)
  %i.iak = shl nsw i64 %.0.i1833.i149.i846.epil.init, 3
  %i.ial = getelementptr inbounds nuw i8, ptr %i.hrf, i64 %i.iak
  %i.iam = getelementptr inbounds nuw [8 x i8], ptr %i.hrn, i64 %.0.i1833.i149.i846.epil.init
  %i.ian = load i64, ptr %i.iam, align 8, !tbaa !130, !noalias !672
  %i.iao = shl i64 %i.ian, 3
  %i.iap = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.iao
  %i.iaq = load i64, ptr %i.iap, align 1, !noalias !672
  store i64 %i.iaq, ptr %i.ial, align 1, !noalias !672
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa: ; preds = %.lr.ph.i.i784
  %lcmp.mod3421.not = icmp eq i64 %xtraiter3420, 0
  br i1 %lcmp.mod3421.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i784.epil.preheader

.lr.ph.i.i784.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa, %.lr.ph.i.i784.preheader
  %.0.i1833.i.i785.epil.init = phi i64 [ 0, %.lr.ph.i.i784.preheader ], [ %i.gwz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa ] ; 2 uses
  %lcmp.mod3422 = trunc i64 %i.gnn to i1
  call void @llvm.assume(i1 %lcmp.mod3422)
  %i.iar = shl nsw i64 %.0.i1833.i.i785.epil.init, 3
  %i.ias = getelementptr inbounds nuw i8, ptr %i.gnl, i64 %i.iar
  %i.iat = getelementptr inbounds nuw i8, ptr %i.gnt, i64 %.0.i1833.i.i785.epil.init
  %i.iau = load i8, ptr %i.iat, align 1, !tbaa !98, !noalias !645
  %i.iav = zext i8 %i.iau to i64
  %i.iaw = shl nuw nsw i64 %i.iav, 3
  %i.iax = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.iaw
  %i.iay = load i64, ptr %i.iax, align 1, !noalias !645
  store i64 %i.iay, ptr %i.ias, align 1, !noalias !645
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa: ; preds = %.lr.ph.i24.i723
  %lcmp.mod3410.not = icmp eq i64 %xtraiter3409, 0
  br i1 %lcmp.mod3410.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i723.epil.preheader

.lr.ph.i24.i723.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa, %.lr.ph.i24.i723.preheader
  %.0.i1833.i25.i724.epil.init = phi i64 [ 0, %.lr.ph.i24.i723.preheader ], [ %i.hgx, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa ] ; 2 uses
  %lcmp.mod3411 = trunc i64 %i.gxl to i1
  call void @llvm.assume(i1 %lcmp.mod3411)
  %i.iaz = shl nsw i64 %.0.i1833.i25.i724.epil.init, 3
  %i.iba = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.iaz
  %i.ibb = getelementptr inbounds nuw [2 x i8], ptr %i.gxr, i64 %.0.i1833.i25.i724.epil.init
  %i.ibc = load i16, ptr %i.ibb, align 2, !tbaa !269, !noalias !654
  %i.ibd = zext i16 %i.ibc to i64
  %i.ibe = shl nuw nsw i64 %i.ibd, 3
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.ibe
  %i.ibg = load i64, ptr %i.ibf, align 1, !noalias !654
  store i64 %i.ibg, ptr %i.iba, align 1, !noalias !654
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa: ; preds = %.lr.ph.i86.i662
  %lcmp.mod3399.not = icmp eq i64 %xtraiter3398, 0
  br i1 %lcmp.mod3399.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i662.epil.preheader

.lr.ph.i86.i662.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa, %.lr.ph.i86.i662.preheader
  %.0.i1833.i87.i663.epil.init = phi i64 [ 0, %.lr.ph.i86.i662.preheader ], [ %i.hqv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa ] ; 2 uses
  %lcmp.mod3400 = trunc i64 %i.hhj to i1
  call void @llvm.assume(i1 %lcmp.mod3400)
  %i.ibh = shl nsw i64 %.0.i1833.i87.i663.epil.init, 3
  %i.ibi = getelementptr inbounds nuw i8, ptr %i.hhh, i64 %i.ibh
  %i.ibj = getelementptr inbounds nuw [4 x i8], ptr %i.hhp, i64 %.0.i1833.i87.i663.epil.init
  %i.ibk = load i32, ptr %i.ibj, align 4, !tbaa !3, !noalias !663
  %i.ibl = shl i32 %i.ibk, 3
  %i.ibm = zext i32 %i.ibl to i64
  %i.ibn = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.ibm
  %i.ibo = load i64, ptr %i.ibn, align 1, !noalias !663
  store i64 %i.ibo, ptr %i.ibi, align 1, !noalias !663
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i662.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa, %.lr.ph.i24.i723.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa, %.lr.ph.i.i784.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa, %.lr.ph.i148.i845.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i783, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i722, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i660, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i844, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i661 = phi i64 [ %i.gxl, %.lr.ph.i24.i723.epil.preheader ], [ %i.gnn, %.lr.ph.i.i784.epil.preheader ], [ %i.hrh, %.lr.ph.i148.i845.epil.preheader ], [ %.082.i.lcssa.i.i790, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.gnn, %.preheader32.i.i783 ], [ %.082.i.lcssa.i30.i729, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.gxl, %.preheader32.i22.i722 ], [ %.082.i.lcssa.i92.i668, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.hhj, %.preheader32.i84.i660 ], [ %.082.i.lcssa.i154.i851, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.hrh, %.preheader32.i146.i844 ], [ %i.hrh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.gnn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa ], [ %i.gxl, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa ], [ %i.hhj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa ], [ %i.hhj, %.lr.ph.i86.i662.epil.preheader ]
  %i.ibp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ibq = load i64, ptr %i.ibp, align 8, !tbaa !178, !noalias !641
  %i.ibr = sub nsw i64 %i.ibq, %.0.i147.sink.i661
  %i.ibs = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.ibr, ptr %i.ibs seq_cst, align 8, !noalias !641
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !641
  br label %.critedge69

bb.akx:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.ibt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !681 ; 2 uses
  %i.ibu = load ptr, ptr %i.ibt, align 8, !tbaa !90, !noalias !681
  %i.ibv = getelementptr inbounds nuw i8, ptr %i.ibu, i64 64
  %i.ibw = load ptr, ptr %i.ibv, align 8, !noalias !681
  %i.ibx = call noundef i32 %i.ibw(ptr noundef nonnull align 8 dereferenceable(72) %i.ibt), !noalias !681, !inline_history !684
  %i.iby = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !681
  %.not.i.i144.i1087 = icmp ne i64 %i.iby, 0
  %i.ibz = load ptr, ptr %i.v, align 8, !noalias !681
  %i.ica = icmp ne ptr %i.ibz, null
  %i.icb = select i1 %.not.i.i144.i1087, i1 %i.ica, i1 false ; 4 uses
  switch i32 %i.ibx, label %bb.apr [
    i32 1, label %bb.aky
    i32 2, label %bb.amn
    i32 4, label %bb.aoc
  ]

bb.aky:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.ala, label %bb.akz

bb.akz:                                           ; preds = %bb.aky
  %i.icc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.icd = load i64, ptr %i.icc, align 8, !tbaa !71, !noalias !685
  %.not.i19.i.i1027 = icmp ne i64 %i.icd, 0
  %i.ice = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.icf = load ptr, ptr %i.ice, align 8, !noalias !685
  %i.icg = icmp ne ptr %i.icf, null
  %i.ich = select i1 %.not.i19.i.i1027, i1 %i.icg, i1 false
  br label %bb.ala

bb.ala:                                           ; preds = %bb.akz, %bb.aky
  %i.ici = phi i1 [ true, %bb.aky ], [ %i.ich, %bb.akz ]
  %i.icj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !685
  %i.ick = extractvalue { i32, ptr } %i.icj, 1    ; 9 uses
  %i.icl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !685 ; 13 uses
  %i.icm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.icn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !685 ; 11 uses
  %i.ico = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.icp = load i64, ptr %i.ico, align 8, !tbaa !99, !noalias !685
  %i.icq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.icr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ics = load ptr, ptr %i.icr, align 8, !tbaa !66, !noalias !685
  %i.ict = getelementptr inbounds i8, ptr %i.ics, i64 %i.icp ; 9 uses
  br i1 %i.ici, label %bb.alb, label %.preheader32.i.i1028

.preheader32.i.i1028:                             ; preds = %bb.ala
  %i.icu = icmp sgt i64 %i.icn, 0
  br i1 %i.icu, label %.lr.ph.i.i1029.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1029.preheader:                         ; preds = %.preheader32.i.i1028
  %xtraiter3376 = and i64 %i.icn, 1
  %i.icv = icmp eq i64 %i.icn, 1
  br i1 %i.icv, label %.lr.ph.i.i1029.epil.preheader, label %.lr.ph.i.i1029.preheader.new

.lr.ph.i.i1029.preheader.new:                     ; preds = %.lr.ph.i.i1029.preheader
  %unroll_iter3379 = and i64 %i.icn, 9223372036854775806
  br label %.lr.ph.i.i1029

bb.alb:                                           ; preds = %bb.ala
  %i.icw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.icx = load ptr, ptr %i.icw, align 8, !tbaa !171, !noalias !685
  %i.icy = load ptr, ptr %i.icx, align 8, !tbaa !306, !noalias !685 ; 4 uses
  %.not.i.i.i.i1032 = icmp eq ptr %i.icy, null
  br i1 %.not.i.i.i.i1032, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  %i.icz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ida = load i64, ptr %i.icz, align 8, !tbaa !438, !noalias !685
  %i.idb = getelementptr inbounds nuw i8, ptr %i.icy, i64 9
  %i.idc = load i8, ptr %i.idb, align 1, !tbaa !439, !range !127, !noalias !685, !noundef !128
  %i.idd = trunc nuw i8 %i.idc to i1
  %i.ide = getelementptr inbounds nuw i8, ptr %i.icy, i64 8
  %i.idf = load i8, ptr %i.ide, align 8, !range !127, !noalias !685
  %i.idg = trunc nuw i8 %i.idf to i1
  %i.idh = select i1 %i.idd, i1 %i.idg, i1 false, !prof !117
  %i.idi = getelementptr inbounds nuw i8, ptr %i.icy, i64 16
  %i.idj = load ptr, ptr %i.idi, align 8, !noalias !685
  %i.idk = select i1 %i.idh, ptr %i.idj, ptr null, !prof !117
  %i.idl = getelementptr inbounds i8, ptr %i.idk, i64 %i.ida
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033: ; preds = %bb.alc, %bb.alb
  %.0.i.i.i.i1034 = phi ptr [ %i.idl, %bb.alc ], [ null, %bb.alb ] ; 5 uses
  %i.idm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.idn = load i64, ptr %i.idm, align 8, !tbaa !178, !noalias !685 ; 2 uses
  %i.ido = ashr i64 %i.idn, 3
  %i.idp = and i64 %i.idn, 7
  %i.idq = icmp ne i64 %i.idp, 0
  %i.idr = zext i1 %i.idq to i64
  %i.ids = add nsw i64 %i.ido, %i.idr
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i1034, i8 0, i64 %i.ids, i1 false), !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !685
  %i.idt = load ptr, ptr %i.icq, align 8, !tbaa !66, !noalias !685
  %i.idu = load i64, ptr %i.ico, align 8, !tbaa !99, !noalias !685
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.idt, i64 noundef %i.idu, i64 noundef %i.icn), !noalias !685
  %i.idv = icmp sgt i64 %i.icn, 0
  br i1 %i.idv, label %.lr.ph55.i.i1036, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i1036:                                 ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033
  %i.idw = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ald

bb.ald:                                           ; preds = %.loopexit.i.i1048, %.lr.ph55.i.i1036
  %.081.i54.i.i1037 = phi i64 [ 0, %.lr.ph55.i.i1036 ], [ %.5.i.i.i1050, %.loopexit.i.i1048 ] ; 12 uses
  %.082.i53.i.i1038 = phi i64 [ 0, %.lr.ph55.i.i1036 ], [ %.587.i.i.i1049, %.loopexit.i.i1048 ] ; 6 uses
  %i.idy = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15), !noalias !685 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i1039 = trunc i32 %i.idy to i16 ; 10 uses
  %i.idz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !685
  %.not.i20.i.i1040 = icmp ne i64 %i.idz, 0
  %i.iea = load ptr, ptr %i.v, align 8, !noalias !685
  %i.ieb = icmp ne ptr %i.iea, null
  %i.iec = select i1 %.not.i20.i.i1040, i1 %i.ieb, i1 false
  br i1 %i.iec, label %bb.alp, label %bb.ale

bb.ale:                                           ; preds = %bb.ald
  %.sroa.14.0.extract.shift.i.i.i1041 = lshr i32 %i.idy, 16
  %.sroa.14.0.extract.trunc.i.i.i1042 = zext nneg i32 %.sroa.14.0.extract.shift.i.i.i1041 to i64
  %sext91.i.i.i1043 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i.i1042, 48
  %i.ied = ashr exact i64 %sext91.i.i.i1043, 48
  %i.iee = add nsw i64 %i.ied, %.082.i53.i.i1038  ; 6 uses
  %i.ief = ashr i32 %i.idy, 16                    ; 2 uses
  %sext.i.i.i1044 = shl i32 %i.idy, 16
  %i.ieg = ashr exact i32 %sext.i.i.i1044, 16
  %i.ieh = icmp eq i32 %i.ief, %i.ieg
  br i1 %i.ieh, label %bb.alf, label %bb.alg

bb.alf:                                           ; preds = %bb.ale
  %i.iei = sext i16 %.sroa.0.0.extract.trunc.i.i.i1039 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i.i1034, i64 noundef %.081.i54.i.i1037, i64 noundef %i.iei, i1 noundef zeroext true), !noalias !685
  %i.iej = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1039, 0
  br i1 %i.iej, label %.lr.ph39.i.i1059.preheader, label %.loopexit.i.i1048

.lr.ph39.i.i1059.preheader:                       ; preds = %bb.alf
  %i.iek = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i1039, 1
  br i1 %i.iek, label %.lr.ph39.i.i1059.epil.preheader, label %.lr.ph39.i.i1059.preheader.new

.lr.ph39.i.i1059.preheader.new:                   ; preds = %.lr.ph39.i.i1059.preheader
  %unroll_iter3385 = and i64 %i.iei, 32766
  br label %.lr.ph39.i.i1059

.lr.ph39.i.i1059:                                 ; preds = %.lr.ph39.i.i1059, %.lr.ph39.i.i1059.preheader.new
  %.1.i37.i.i1061 = phi i64 [ %.081.i54.i.i1037, %.lr.ph39.i.i1059.preheader.new ], [ %i.ifa, %.lr.ph39.i.i1059 ] ; 4 uses
  %niter3386 = phi i64 [ 0, %.lr.ph39.i.i1059.preheader.new ], [ %niter3386.next.1, %.lr.ph39.i.i1059 ]
  %i.iel = shl nsw i64 %.1.i37.i.i1061, 4
  %i.iem = getelementptr inbounds i8, ptr %i.icl, i64 %i.iel
  %i.ien = getelementptr inbounds i8, ptr %i.ict, i64 %.1.i37.i.i1061
  %i.ieo = load i8, ptr %i.ien, align 1, !tbaa !98, !noalias !685
  %i.iep = zext i8 %i.ieo to i64
  %i.ieq = shl nuw nsw i64 %i.iep, 4
  %i.ier = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ieq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iem, ptr noundef nonnull align 1 dereferenceable(16) %i.ier, i64 16, i1 false), !noalias !685
  %i.ies = add nsw i64 %.1.i37.i.i1061, 1         ; 2 uses
  %i.iet = shl nsw i64 %i.ies, 4
  %i.ieu = getelementptr inbounds i8, ptr %i.icl, i64 %i.iet
  %i.iev = getelementptr inbounds i8, ptr %i.ict, i64 %i.ies
  %i.iew = load i8, ptr %i.iev, align 1, !tbaa !98, !noalias !685
  %i.iex = zext i8 %i.iew to i64
  %i.iey = shl nuw nsw i64 %i.iex, 4
  %i.iez = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.iey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ieu, ptr noundef nonnull align 1 dereferenceable(16) %i.iez, i64 16, i1 false), !noalias !685
  %i.ifa = add nsw i64 %.1.i37.i.i1061, 2         ; 3 uses
  %niter3386.next.1 = add i64 %niter3386, 2       ; 2 uses
  %niter3386.ncmp.1 = icmp eq i64 %niter3386.next.1, %unroll_iter3385
  br i1 %niter3386.ncmp.1, label %.loopexit.i.i1048.loopexit3260.unr-lcssa, label %.lr.ph39.i.i1059, !llvm.loop !688

bb.alg:                                           ; preds = %bb.ale
  %i.ifb = icmp sgt i32 %i.ief, 0
  %i.ifc = sext i16 %.sroa.0.0.extract.trunc.i.i.i1039 to i64 ; 2 uses
  br i1 %i.ifb, label %.preheader30.i.i1051, label %.loopexit.sink.split.i.i1045

.preheader30.i.i1051:                             ; preds = %bb.alg
  %i.ifd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1039, 0
  br i1 %i.ifd, label %.lr.ph36.i.i1052, label %.loopexit.i.i1048

.lr.ph36.i.i1052:                                 ; preds = %.preheader30.i.i1051, %bb.alo
  %.079.i35.i.i1053 = phi i64 [ %i.ign, %bb.alo ], [ 0, %.preheader30.i.i1051 ]
  %.2.i34.i.i1054 = phi i64 [ %i.igm, %bb.alo ], [ %.081.i54.i.i1037, %.preheader30.i.i1051 ] ; 10 uses
  %i.ife = load ptr, ptr %i.icq, align 8, !tbaa !66, !noalias !685 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.ihz = load i8, ptr %i.ihy, align 1, !tbaa !98, !noalias !685
  %i.iia = or i8 %i.ihz, %i.ihw
  store i8 %i.iia, ptr %i.ihy, align 1, !tbaa !98, !noalias !685
  %i.iib = add nsw i64 %.183.i47.i.i1081, 1
  br label %bb.alx

bb.alw:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i.i1085, %bb.alu, %bb.alt, %bb.als, %bb.alq
  %i.iic = shl nsw i64 %.3.i48.i.i1080, 4
  %i.iid = getelementptr inbounds i8, ptr %i.icl, i64 %i.iic
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iid, i8 0, i64 16, i1 false), !noalias !685
  br label %bb.alx

bb.alx:                                           ; preds = %bb.alw, %bb.alv
  %.284.i.i.i1083 = phi i64 [ %i.iib, %bb.alv ], [ %.183.i47.i.i1081, %bb.alw ] ; 2 uses
  %i.iie = add nsw i64 %.3.i48.i.i1080, 1         ; 2 uses
  %i.iif = add nuw nsw i64 %.078.i49.i.i1079, 1   ; 2 uses
  %exitcond66.not.i.i1084 = icmp eq i64 %i.iif, %i.igr
  br i1 %exitcond66.not.i.i1084, label %.loopexit.i.i1048, label %.lr.ph50.i.i1078, !llvm.loop !690

bb.aly:                                           ; preds = %bb.alp
  %i.iig = icmp sgt i32 %i.igo, 0
  %i.iih = sext i16 %.sroa.0.0.extract.trunc.i.i.i1039 to i64 ; 2 uses
  br i1 %i.iig, label %.preheader27.i.i1064, label %.loopexit.sink.split.i.i1045

.preheader27.i.i1064:                             ; preds = %bb.aly
  %i.iii = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1039, 0
  br i1 %i.iii, label %.lr.ph44.i.i1065, label %.loopexit.i.i1048

.lr.ph44.i.i1065:                                 ; preds = %.preheader27.i.i1064, %bb.amm
  %.0.i43.i.i1066 = phi i64 [ %i.ikn, %bb.amm ], [ 0, %.preheader27.i.i1064 ]
  %.4.i42.i.i1067 = phi i64 [ %i.ikm, %bb.amm ], [ %.081.i54.i.i1037, %.preheader27.i.i1064 ] ; 10 uses
  %.385.i41.i.i1068 = phi i64 [ %.486.i.i.i1070, %bb.amm ], [ %.082.i53.i.i1038, %.preheader27.i.i1064 ] ; 2 uses
  %i.iij = load ptr, ptr %i.icq, align 8, !tbaa !66, !noalias !685 ; 2 uses
  %.not.i26.i.i1069 = icmp eq ptr %i.iij, null
  br i1 %.not.i26.i.i1069, label %bb.ama, label %bb.alz

bb.alz:                                           ; preds = %.lr.ph44.i.i1065
  %i.iik = load i64, ptr %i.ico, align 8, !tbaa !99, !noalias !685
  %i.iil = add nsw i64 %i.iik, %.4.i42.i.i1067    ; 2 uses
  %i.iim = lshr i64 %i.iil, 3
  %i.iin = getelementptr inbounds nuw i8, ptr %i.iij, i64 %i.iim
  %i.iio = load i8, ptr %i.iin, align 1, !tbaa !98, !noalias !685
  %i.iip = trunc i64 %i.iil to i8
  %i.iiq = and i8 %i.iip, 7
  %i.iir = lshr i8 %i.iio, %i.iiq
  %i.iis = trunc i8 %i.iir to i1
  br i1 %i.iis, label %bb.ame, label %bb.aml

bb.ama:                                           ; preds = %.lr.ph44.i.i1065
  %i.iit = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !685
  %i.iiu = getelementptr inbounds nuw i8, ptr %i.iit, i64 40
  %i.iiv = load i32, ptr %i.iiu, align 8, !tbaa !42, !noalias !685
  switch i32 %i.iiv, label %bb.amd [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075
    i32 28, label %bb.amb
    i32 38, label %bb.amc
  ]

bb.amb:                                           ; preds = %bb.ama
  %i.iiw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1067), !noalias !685
  br i1 %i.iiw, label %bb.aml, label %bb.ame

bb.amc:                                           ; preds = %bb.ama
  %i.iix = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1067), !noalias !685
  br i1 %i.iix, label %bb.aml, label %bb.ame

bb.amd:                                           ; preds = %bb.ama
  %i.iiy = load i64, ptr %i.idw, align 8, !tbaa !71, !noalias !685
  %i.iiz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !685
  %.not24.i.i1076 = icmp eq i64 %i.iiy, %i.iiz
  br i1 %.not24.i.i1076, label %bb.aml, label %bb.ame

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075:    ; preds = %bb.ama
  %i.ija = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1067), !noalias !685
  br i1 %i.ija, label %bb.aml, label %bb.ame

bb.ame:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075, %bb.amd, %bb.amc, %bb.amb, %bb.alz
  %i.ijb = getelementptr inbounds i8, ptr %i.ict, i64 %.4.i42.i.i1067 ; 2 uses
  %i.ijc = load i8, ptr %i.ijb, align 1, !tbaa !98, !noalias !685
  %i.ijd = zext i8 %i.ijc to i64                  ; 4 uses
  %i.ije = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !685 ; 2 uses
  %.not.i29.i.i1072 = icmp eq ptr %i.ije, null
  br i1 %.not.i29.i.i1072, label %bb.amg, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.ijf = load i64, ptr %i.idx, align 8, !tbaa !99, !noalias !685
  %i.ijg = add nsw i64 %i.ijf, %i.ijd             ; 2 uses
  %i.ijh = lshr i64 %i.ijg, 3
  %i.iji = getelementptr inbounds nuw i8, ptr %i.ije, i64 %i.ijh
  %i.ijj = load i8, ptr %i.iji, align 1, !tbaa !98, !noalias !685
  %i.ijk = trunc i64 %i.ijg to i8
  %i.ijl = and i8 %i.ijk, 7
  %i.ijm = lshr i8 %i.ijj, %i.ijl
  %i.ijn = trunc i8 %i.ijm to i1
  br i1 %i.ijn, label %bb.amk, label %bb.aml

bb.amg:                                           ; preds = %bb.ame
  %i.ijo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !685
  %i.ijp = getelementptr inbounds nuw i8, ptr %i.ijo, i64 40
  %i.ijq = load i32, ptr %i.ijp, align 8, !tbaa !42, !noalias !685
  switch i32 %i.ijq, label %bb.amj [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073
    i32 28, label %bb.amh
    i32 38, label %bb.ami
  ]

bb.amh:                                           ; preds = %bb.amg
  %i.ijr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ijd), !noalias !685
  br i1 %i.ijr, label %bb.aml, label %bb.amk

bb.ami:                                           ; preds = %bb.amg
  %i.ijs = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ijd), !noalias !685
  br i1 %i.ijs, label %bb.aml, label %bb.amk

bb.amj:                                           ; preds = %bb.amg
  %i.ijt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !685
  %i.iju = load i64, ptr %i.icm, align 8, !tbaa !62, !noalias !685
  %.not25.i.i1074 = icmp eq i64 %i.ijt, %i.iju
  br i1 %.not25.i.i1074, label %bb.aml, label %bb.amk

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073:    ; preds = %bb.amg
  %i.ijv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ijd), !noalias !685
  br i1 %i.ijv, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073, %bb.amj, %bb.ami, %bb.amh, %bb.amf
  %i.ijw = shl nsw i64 %.4.i42.i.i1067, 4
  %i.ijx = getelementptr inbounds i8, ptr %i.icl, i64 %i.ijw
  %i.ijy = load i8, ptr %i.ijb, align 1, !tbaa !98, !noalias !685
  %i.ijz = zext i8 %i.ijy to i64
  %i.ika = shl nuw nsw i64 %i.ijz, 4
  %i.ikb = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ika
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ijx, ptr noundef nonnull align 1 dereferenceable(16) %i.ikb, i64 16, i1 false), !noalias !685
  %i.ikc = srem i64 %.4.i42.i.i1067, 8
  %i.ikd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ikc
  %i.ike = load i8, ptr %i.ikd, align 1, !tbaa !98, !noalias !685
  %i.ikf = sdiv i64 %.4.i42.i.i1067, 8
  %i.ikg = getelementptr inbounds i8, ptr %.0.i.i.i.i1034, i64 %i.ikf ; 2 uses
  %i.ikh = load i8, ptr %i.ikg, align 1, !tbaa !98, !noalias !685
  %i.iki = or i8 %i.ikh, %i.ike
  store i8 %i.iki, ptr %i.ikg, align 1, !tbaa !98, !noalias !685
  %i.ikj = add nsw i64 %.385.i41.i.i1068, 1
  br label %bb.amm

bb.aml:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073, %bb.amj, %bb.ami, %bb.amh, %bb.amf, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075, %bb.amd, %bb.amc, %bb.amb, %bb.alz
  %i.ikk = shl nsw i64 %.4.i42.i.i1067, 4
  %i.ikl = getelementptr inbounds i8, ptr %i.icl, i64 %i.ikk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ikl, i8 0, i64 16, i1 false), !noalias !685
  br label %bb.amm

bb.amm:                                           ; preds = %bb.aml, %bb.amk
  %.486.i.i.i1070 = phi i64 [ %i.ikj, %bb.amk ], [ %.385.i41.i.i1068, %bb.aml ] ; 2 uses
  %i.ikm = add nsw i64 %.4.i42.i.i1067, 1         ; 2 uses
  %i.ikn = add nuw nsw i64 %.0.i43.i.i1066, 1     ; 2 uses
  %exitcond65.not.i.i1071 = icmp eq i64 %i.ikn, %i.iih
  br i1 %exitcond65.not.i.i1071, label %.loopexit.i.i1048, label %.lr.ph44.i.i1065, !llvm.loop !691

.loopexit.sink.split.i.i1045:                     ; preds = %bb.aly, %bb.alg
  %.sink86.i.i1046 = phi i64 [ %i.ifc, %bb.alg ], [ %i.iih, %bb.aly ] ; 2 uses
  %.587.i.ph.i.i1047 = phi i64 [ %i.iee, %bb.alg ], [ %.082.i53.i.i1038, %bb.aly ]
  %i.iko = shl nsw i64 %.081.i54.i.i1037, 4
  %i.ikp = getelementptr inbounds i8, ptr %i.icl, i64 %i.iko
  %i.ikq = shl nsw i64 %.sink86.i.i1046, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.ikp, i8 0, i64 %i.ikq, i1 false), !noalias !685
  %i.ikr = add nsw i64 %.sink86.i.i1046, %.081.i54.i.i1037
  br label %.loopexit.i.i1048

.loopexit.i.i1048.loopexit3260.unr-lcssa:         ; preds = %.lr.ph39.i.i1059
  %i.iks = and i16 %.sroa.0.0.extract.trunc.i.i.i1039, 1
  %lcmp.mod3382.not = icmp eq i16 %i.iks, 0
  br i1 %lcmp.mod3382.not, label %.loopexit.i.i1048, label %.lr.ph39.i.i1059.epil.preheader

.lr.ph39.i.i1059.epil.preheader:                  ; preds = %.loopexit.i.i1048.loopexit3260.unr-lcssa, %.lr.ph39.i.i1059.preheader
  %.1.i37.i.i1061.epil.init = phi i64 [ %.081.i54.i.i1037, %.lr.ph39.i.i1059.preheader ], [ %i.ifa, %.loopexit.i.i1048.loopexit3260.unr-lcssa ] ; 3 uses
  %lcmp.mod3384 = trunc i32 %i.idy to i1
  call void @llvm.assume(i1 %lcmp.mod3384)
  %i.ikt = shl nsw i64 %.1.i37.i.i1061.epil.init, 4
  %i.iku = getelementptr inbounds i8, ptr %i.icl, i64 %i.ikt
  %i.ikv = getelementptr inbounds i8, ptr %i.ict, i64 %.1.i37.i.i1061.epil.init
  %i.ikw = load i8, ptr %i.ikv, align 1, !tbaa !98, !noalias !685
  %i.ikx = zext i8 %i.ikw to i64
  %i.iky = shl nuw nsw i64 %i.ikx, 4
  %i.ikz = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.iky
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iku, ptr noundef nonnull align 1 dereferenceable(16) %i.ikz, i64 16, i1 false), !noalias !685
  %i.ila = add nsw i64 %.1.i37.i.i1061.epil.init, 1
  br label %.loopexit.i.i1048

.loopexit.i.i1048:                                ; preds = %bb.alo, %.lr.ph39.i.i1059.epil.preheader, %.loopexit.i.i1048.loopexit3260.unr-lcssa, %bb.amm, %bb.alx, %.loopexit.sink.split.i.i1045, %.preheader27.i.i1064, %.preheader.i.i1077, %.preheader30.i.i1051, %bb.alf
  %.587.i.i.i1049 = phi i64 [ %.587.i.ph.i.i1047, %.loopexit.sink.split.i.i1045 ], [ %i.iee, %bb.alf ], [ %.486.i.i.i1070, %bb.amm ], [ %i.iee, %.lr.ph39.i.i1059.epil.preheader ], [ %i.iee, %.preheader30.i.i1051 ], [ %.082.i53.i.i1038, %.preheader.i.i1077 ], [ %.082.i53.i.i1038, %.preheader27.i.i1064 ], [ %.284.i.i.i1083, %bb.alx ], [ %i.iee, %.loopexit.i.i1048.loopexit3260.unr-lcssa ], [ %i.iee, %bb.alo ] ; 2 uses
  %.5.i.i.i1050 = phi i64 [ %i.ikr, %.loopexit.sink.split.i.i1045 ], [ %.081.i54.i.i1037, %bb.alf ], [ %i.ikm, %bb.amm ], [ %i.ila, %.lr.ph39.i.i1059.epil.preheader ], [ %.081.i54.i.i1037, %.preheader30.i.i1051 ], [ %.081.i54.i.i1037, %.preheader.i.i1077 ], [ %.081.i54.i.i1037, %.preheader27.i.i1064 ], [ %i.iie, %bb.alx ], [ %i.ifa, %.loopexit.i.i1048.loopexit3260.unr-lcssa ], [ %i.igm, %bb.alo ] ; 2 uses
  %i.ilb = icmp slt i64 %.5.i.i.i1050, %i.icn
  br i1 %i.ilb, label %bb.ald, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !692

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i1048, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033
  %.082.i.lcssa.i.i1035 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033 ], [ %.587.i.i.i1049, %.loopexit.i.i1048 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !685
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1029:                                   ; preds = %.lr.ph.i.i1029, %.lr.ph.i.i1029.preheader.new
  %.0.i1833.i.i1030 = phi i64 [ 0, %.lr.ph.i.i1029.preheader.new ], [ %i.ilr, %.lr.ph.i.i1029 ] ; 4 uses
  %niter3380 = phi i64 [ 0, %.lr.ph.i.i1029.preheader.new ], [ %niter3380.next.1, %.lr.ph.i.i1029 ]
  %i.ilc = shl nsw i64 %.0.i1833.i.i1030, 4
  %i.ild = getelementptr inbounds nuw i8, ptr %i.icl, i64 %i.ilc
  %i.ile = getelementptr inbounds nuw i8, ptr %i.ict, i64 %.0.i1833.i.i1030
  %i.ilf = load i8, ptr %i.ile, align 1, !tbaa !98, !noalias !685
  %i.ilg = zext i8 %i.ilf to i64
  %i.ilh = shl nuw nsw i64 %i.ilg, 4
  %i.ili = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ilh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ild, ptr noundef nonnull align 1 dereferenceable(16) %i.ili, i64 16, i1 false), !noalias !685
  %i.ilj = or disjoint i64 %.0.i1833.i.i1030, 1   ; 2 uses
  %i.ilk = shl nsw i64 %i.ilj, 4
  %i.ill = getelementptr inbounds nuw i8, ptr %i.icl, i64 %i.ilk
  %i.ilm = getelementptr inbounds nuw i8, ptr %i.ict, i64 %i.ilj
  %i.iln = load i8, ptr %i.ilm, align 1, !tbaa !98, !noalias !685
  %i.ilo = zext i8 %i.iln to i64
  %i.ilp = shl nuw nsw i64 %i.ilo, 4
  %i.ilq = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ilp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ill, ptr noundef nonnull align 1 dereferenceable(16) %i.ilq, i64 16, i1 false), !noalias !685
  %i.ilr = add nuw nsw i64 %.0.i1833.i.i1030, 2   ; 2 uses
  %niter3380.next.1 = add i64 %niter3380, 2       ; 2 uses
  %niter3380.ncmp.1 = icmp eq i64 %niter3380.next.1, %unroll_iter3379
  br i1 %niter3380.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa, label %.lr.ph.i.i1029, !llvm.loop !693

bb.amn:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.amp, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  %i.ils = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ilt = load i64, ptr %i.ils, align 8, !tbaa !71, !noalias !694
  %.not.i19.i21.i966 = icmp ne i64 %i.ilt, 0
  %i.ilu = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ilv = load ptr, ptr %i.ilu, align 8, !noalias !694
  %i.ilw = icmp ne ptr %i.ilv, null
  %i.ilx = select i1 %.not.i19.i21.i966, i1 %i.ilw, i1 false
  br label %bb.amp

bb.amp:                                           ; preds = %bb.amo, %bb.amn
  %i.ily = phi i1 [ true, %bb.amn ], [ %i.ilx, %bb.amo ]
  %i.ilz = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !694
  %i.ima = extractvalue { i32, ptr } %i.ilz, 1    ; 9 uses
  %i.imb = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !694 ; 13 uses
  %i.imc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.imd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !694 ; 11 uses
  %i.ime = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.imf = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  %i.img = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.imh = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.imi = load ptr, ptr %i.imh, align 8, !tbaa !66, !noalias !694
  %i.imj = getelementptr inbounds [2 x i8], ptr %i.imi, i64 %i.imf ; 9 uses
  br i1 %i.ily, label %bb.amq, label %.preheader32.i22.i967

.preheader32.i22.i967:                            ; preds = %bb.amp
  %i.imk = icmp sgt i64 %i.imd, 0
  br i1 %i.imk, label %.lr.ph.i24.i968.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i968.preheader:                        ; preds = %.preheader32.i22.i967
  %xtraiter3365 = and i64 %i.imd, 1
  %i.iml = icmp eq i64 %i.imd, 1
  br i1 %i.iml, label %.lr.ph.i24.i968.epil.preheader, label %.lr.ph.i24.i968.preheader.new

.lr.ph.i24.i968.preheader.new:                    ; preds = %.lr.ph.i24.i968.preheader
  %unroll_iter3368 = and i64 %i.imd, 9223372036854775806
  br label %.lr.ph.i24.i968

bb.amq:                                           ; preds = %bb.amp
  %i.imm = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.imn = load ptr, ptr %i.imm, align 8, !tbaa !171, !noalias !694
  %i.imo = load ptr, ptr %i.imn, align 8, !tbaa !306, !noalias !694 ; 4 uses
  %.not.i.i.i27.i971 = icmp eq ptr %i.imo, null
  br i1 %.not.i.i.i27.i971, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972, label %bb.amr

bb.amr:                                           ; preds = %bb.amq
  %i.imp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.imq = load i64, ptr %i.imp, align 8, !tbaa !438, !noalias !694
  %i.imr = getelementptr inbounds nuw i8, ptr %i.imo, i64 9
  %i.ims = load i8, ptr %i.imr, align 1, !tbaa !439, !range !127, !noalias !694, !noundef !128
  %i.imt = trunc nuw i8 %i.ims to i1
  %i.imu = getelementptr inbounds nuw i8, ptr %i.imo, i64 8
  %i.imv = load i8, ptr %i.imu, align 8, !range !127, !noalias !694
  %i.imw = trunc nuw i8 %i.imv to i1
  %i.imx = select i1 %i.imt, i1 %i.imw, i1 false, !prof !117
  %i.imy = getelementptr inbounds nuw i8, ptr %i.imo, i64 16
  %i.imz = load ptr, ptr %i.imy, align 8, !noalias !694
  %i.ina = select i1 %i.imx, ptr %i.imz, ptr null, !prof !117
  %i.inb = getelementptr inbounds i8, ptr %i.ina, i64 %i.imq
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972: ; preds = %bb.amr, %bb.amq
  %.0.i.i.i29.i973 = phi ptr [ %i.inb, %bb.amr ], [ null, %bb.amq ] ; 5 uses
  %i.inc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ind = load i64, ptr %i.inc, align 8, !tbaa !178, !noalias !694 ; 2 uses
  %i.ine = ashr i64 %i.ind, 3
  %i.inf = and i64 %i.ind, 7
  %i.ing = icmp ne i64 %i.inf, 0
  %i.inh = zext i1 %i.ing to i64
  %i.ini = add nsw i64 %i.ine, %i.inh
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i973, i8 0, i64 %i.ini, i1 false), !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !694
  %i.inj = load ptr, ptr %i.img, align 8, !tbaa !66, !noalias !694
  %i.ink = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.inj, i64 noundef %i.ink, i64 noundef %i.imd), !noalias !694
  %i.inl = icmp sgt i64 %i.imd, 0
  br i1 %i.inl, label %.lr.ph55.i31.i975, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i975:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972
  %i.inm = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.inn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ams

bb.ams:                                           ; preds = %.loopexit.i43.i987, %.lr.ph55.i31.i975
  %.081.i54.i32.i976 = phi i64 [ 0, %.lr.ph55.i31.i975 ], [ %.5.i.i45.i989, %.loopexit.i43.i987 ] ; 12 uses
  %.082.i53.i33.i977 = phi i64 [ 0, %.lr.ph55.i31.i975 ], [ %.587.i.i44.i988, %.loopexit.i43.i987 ] ; 6 uses
  %i.ino = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14), !noalias !694 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i978 = trunc i32 %i.ino to i16 ; 10 uses
  %i.inp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !694
  %.not.i20.i35.i979 = icmp ne i64 %i.inp, 0
  %i.inq = load ptr, ptr %i.v, align 8, !noalias !694
  %i.inr = icmp ne ptr %i.inq, null
  %i.ins = select i1 %.not.i20.i35.i979, i1 %i.inr, i1 false
  br i1 %i.ins, label %bb.ane, label %bb.amt

bb.amt:                                           ; preds = %bb.ams
  %.sroa.14.0.extract.shift.i.i36.i980 = lshr i32 %i.ino, 16
  %.sroa.14.0.extract.trunc.i.i37.i981 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i980 to i64
  %sext91.i.i38.i982 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i981, 48
  %i.int = ashr exact i64 %sext91.i.i38.i982, 48
  %i.inu = add nsw i64 %i.int, %.082.i53.i33.i977 ; 6 uses
  %i.inv = ashr i32 %i.ino, 16                    ; 2 uses
  %sext.i.i39.i983 = shl i32 %i.ino, 16
  %i.inw = ashr exact i32 %sext.i.i39.i983, 16
  %i.inx = icmp eq i32 %i.inv, %i.inw
  br i1 %i.inx, label %bb.amu, label %bb.amv

bb.amu:                                           ; preds = %bb.amt
  %i.iny = sext i16 %.sroa.0.0.extract.trunc.i.i34.i978 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i973, i64 noundef %.081.i54.i32.i976, i64 noundef %i.iny, i1 noundef zeroext true), !noalias !694
  %i.inz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i978, 0
  br i1 %i.inz, label %.lr.ph39.i54.i998.preheader, label %.loopexit.i43.i987

.lr.ph39.i54.i998.preheader:                      ; preds = %bb.amu
  %i.ioa = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i978, 1
  br i1 %i.ioa, label %.lr.ph39.i54.i998.epil.preheader, label %.lr.ph39.i54.i998.preheader.new

.lr.ph39.i54.i998.preheader.new:                  ; preds = %.lr.ph39.i54.i998.preheader
  %unroll_iter3374 = and i64 %i.iny, 32766
  br label %.lr.ph39.i54.i998

.lr.ph39.i54.i998:                                ; preds = %.lr.ph39.i54.i998, %.lr.ph39.i54.i998.preheader.new
  %.1.i37.i56.i1000 = phi i64 [ %.081.i54.i32.i976, %.lr.ph39.i54.i998.preheader.new ], [ %i.ioq, %.lr.ph39.i54.i998 ] ; 4 uses
  %niter3375 = phi i64 [ 0, %.lr.ph39.i54.i998.preheader.new ], [ %niter3375.next.1, %.lr.ph39.i54.i998 ]
  %i.iob = shl nsw i64 %.1.i37.i56.i1000, 4
  %i.ioc = getelementptr inbounds i8, ptr %i.imb, i64 %i.iob
  %i.iod = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %.1.i37.i56.i1000
  %i.ioe = load i16, ptr %i.iod, align 2, !tbaa !269, !noalias !694
  %i.iof = zext i16 %i.ioe to i64
  %i.iog = shl nuw nsw i64 %i.iof, 4
  %i.ioh = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.iog
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ioc, ptr noundef nonnull align 1 dereferenceable(16) %i.ioh, i64 16, i1 false), !noalias !694
  %i.ioi = add nsw i64 %.1.i37.i56.i1000, 1       ; 2 uses
  %i.ioj = shl nsw i64 %i.ioi, 4
  %i.iok = getelementptr inbounds i8, ptr %i.imb, i64 %i.ioj
  %i.iol = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %i.ioi
  %i.iom = load i16, ptr %i.iol, align 2, !tbaa !269, !noalias !694
  %i.ion = zext i16 %i.iom to i64
  %i.ioo = shl nuw nsw i64 %i.ion, 4
  %i.iop = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.ioo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iok, ptr noundef nonnull align 1 dereferenceable(16) %i.iop, i64 16, i1 false), !noalias !694
  %i.ioq = add nsw i64 %.1.i37.i56.i1000, 2       ; 3 uses
  %niter3375.next.1 = add i64 %niter3375, 2       ; 2 uses
  %niter3375.ncmp.1 = icmp eq i64 %niter3375.next.1, %unroll_iter3374
  br i1 %niter3375.ncmp.1, label %.loopexit.i43.i987.loopexit3268.unr-lcssa, label %.lr.ph39.i54.i998, !llvm.loop !697

bb.amv:                                           ; preds = %bb.amt
  %i.ior = icmp sgt i32 %i.inv, 0
  %i.ios = sext i16 %.sroa.0.0.extract.trunc.i.i34.i978 to i64 ; 2 uses
  br i1 %i.ior, label %.preheader30.i46.i990, label %.loopexit.sink.split.i40.i984

.preheader30.i46.i990:                            ; preds = %bb.amv
  %i.iot = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i978, 0
  br i1 %i.iot, label %.lr.ph36.i47.i991, label %.loopexit.i43.i987

.lr.ph36.i47.i991:                                ; preds = %.preheader30.i46.i990, %bb.and
  %.079.i35.i48.i992 = phi i64 [ %i.iqd, %bb.and ], [ 0, %.preheader30.i46.i990 ]
  %.2.i34.i49.i993 = phi i64 [ %i.iqc, %bb.and ], [ %.081.i54.i32.i976, %.preheader30.i46.i990 ] ; 10 uses
  %i.iou = load ptr, ptr %i.img, align 8, !tbaa !66, !noalias !694 ; 2 uses
  %.not.i21.i50.i994 = icmp eq ptr %i.iou, null
  br i1 %.not.i21.i50.i994, label %bb.amx, label %bb.amw

bb.amw:                                           ; preds = %.lr.ph36.i47.i991
  %i.iov = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  %i.iow = add nsw i64 %i.iov, %.2.i34.i49.i993   ; 2 uses
  %i.iox = lshr i64 %i.iow, 3
  %i.ioy = getelementptr inbounds nuw i8, ptr %i.iou, i64 %i.iox
  %i.ioz = load i8, ptr %i.ioy, align 1, !tbaa !98, !noalias !694
  %i.ipa = trunc i64 %i.iow to i8
  %i.ipb = and i8 %i.ipa, 7
  %i.ipc = lshr i8 %i.ioz, %i.ipb
  %i.ipd = trunc i8 %i.ipc to i1
  br i1 %i.ipd, label %bb.anb, label %bb.anc

bb.amx:                                           ; preds = %.lr.ph36.i47.i991
  %i.ipe = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !694
  %i.ipf = getelementptr inbounds nuw i8, ptr %i.ipe, i64 40
  %i.ipg = load i32, ptr %i.ipf, align 8, !tbaa !42, !noalias !694
  switch i32 %i.ipg, label %bb.ana [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i996
    i32 28, label %bb.amy
    i32 38, label %bb.amz
  ]

bb.amy:                                           ; preds = %bb.amx
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.irp = load i8, ptr %i.iro, align 1, !tbaa !98, !noalias !694
  %i.irq = or i8 %i.irp, %i.irm
  store i8 %i.irq, ptr %i.iro, align 1, !tbaa !98, !noalias !694
  %i.irr = add nsw i64 %.183.i47.i76.i1020, 1
  br label %bb.anm

bb.anl:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i80.i1024, %bb.anj, %bb.ani, %bb.anh, %bb.anf
  %i.irs = shl nsw i64 %.3.i48.i75.i1019, 4
  %i.irt = getelementptr inbounds i8, ptr %i.imb, i64 %i.irs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.irt, i8 0, i64 16, i1 false), !noalias !694
  br label %bb.anm

bb.anm:                                           ; preds = %bb.anl, %bb.ank
  %.284.i.i78.i1022 = phi i64 [ %i.irr, %bb.ank ], [ %.183.i47.i76.i1020, %bb.anl ] ; 2 uses
  %i.iru = add nsw i64 %.3.i48.i75.i1019, 1       ; 2 uses
  %i.irv = add nuw nsw i64 %.078.i49.i74.i1018, 1 ; 2 uses
  %exitcond66.not.i79.i1023 = icmp eq i64 %i.irv, %i.iqh
  br i1 %exitcond66.not.i79.i1023, label %.loopexit.i43.i987, label %.lr.ph50.i73.i1017, !llvm.loop !699

bb.ann:                                           ; preds = %bb.ane
  %i.irw = icmp sgt i32 %i.iqe, 0
  %i.irx = sext i16 %.sroa.0.0.extract.trunc.i.i34.i978 to i64 ; 2 uses
  br i1 %i.irw, label %.preheader27.i59.i1003, label %.loopexit.sink.split.i40.i984

.preheader27.i59.i1003:                           ; preds = %bb.ann
  %i.iry = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i978, 0
  br i1 %i.iry, label %.lr.ph44.i60.i1004, label %.loopexit.i43.i987

.lr.ph44.i60.i1004:                               ; preds = %.preheader27.i59.i1003, %bb.aob
  %.0.i43.i61.i1005 = phi i64 [ %i.iud, %bb.aob ], [ 0, %.preheader27.i59.i1003 ]
  %.4.i42.i62.i1006 = phi i64 [ %i.iuc, %bb.aob ], [ %.081.i54.i32.i976, %.preheader27.i59.i1003 ] ; 10 uses
  %.385.i41.i63.i1007 = phi i64 [ %.486.i.i65.i1009, %bb.aob ], [ %.082.i53.i33.i977, %.preheader27.i59.i1003 ] ; 2 uses
  %i.irz = load ptr, ptr %i.img, align 8, !tbaa !66, !noalias !694 ; 2 uses
  %.not.i26.i64.i1008 = icmp eq ptr %i.irz, null
  br i1 %.not.i26.i64.i1008, label %bb.anp, label %bb.ano

bb.ano:                                           ; preds = %.lr.ph44.i60.i1004
  %i.isa = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  %i.isb = add nsw i64 %i.isa, %.4.i42.i62.i1006  ; 2 uses
  %i.isc = lshr i64 %i.isb, 3
  %i.isd = getelementptr inbounds nuw i8, ptr %i.irz, i64 %i.isc
  %i.ise = load i8, ptr %i.isd, align 1, !tbaa !98, !noalias !694
  %i.isf = trunc i64 %i.isb to i8
  %i.isg = and i8 %i.isf, 7
  %i.ish = lshr i8 %i.ise, %i.isg
  %i.isi = trunc i8 %i.ish to i1
  br i1 %i.isi, label %bb.ant, label %bb.aoa

bb.anp:                                           ; preds = %.lr.ph44.i60.i1004
  %i.isj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !694
  %i.isk = getelementptr inbounds nuw i8, ptr %i.isj, i64 40
  %i.isl = load i32, ptr %i.isk, align 8, !tbaa !42, !noalias !694
  switch i32 %i.isl, label %bb.ans [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014
    i32 28, label %bb.anq
    i32 38, label %bb.anr
  ]

bb.anq:                                           ; preds = %bb.anp
  %i.ism = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1006), !noalias !694
  br i1 %i.ism, label %bb.aoa, label %bb.ant

bb.anr:                                           ; preds = %bb.anp
  %i.isn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1006), !noalias !694
  br i1 %i.isn, label %bb.aoa, label %bb.ant

bb.ans:                                           ; preds = %bb.anp
  %i.iso = load i64, ptr %i.inm, align 8, !tbaa !71, !noalias !694
  %i.isp = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !694
  %.not24.i71.i1015 = icmp eq i64 %i.iso, %i.isp
  br i1 %.not24.i71.i1015, label %bb.aoa, label %bb.ant

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014:  ; preds = %bb.anp
  %i.isq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1006), !noalias !694
  br i1 %i.isq, label %bb.aoa, label %bb.ant

bb.ant:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014, %bb.ans, %bb.anr, %bb.anq, %bb.ano
  %i.isr = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %.4.i42.i62.i1006 ; 2 uses
  %i.iss = load i16, ptr %i.isr, align 2, !tbaa !269, !noalias !694
  %i.ist = zext i16 %i.iss to i64                 ; 4 uses
  %i.isu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !694 ; 2 uses
  %.not.i29.i67.i1011 = icmp eq ptr %i.isu, null
  br i1 %.not.i29.i67.i1011, label %bb.anv, label %bb.anu

bb.anu:                                           ; preds = %bb.ant
  %i.isv = load i64, ptr %i.inn, align 8, !tbaa !99, !noalias !694
  %i.isw = add nsw i64 %i.isv, %i.ist             ; 2 uses
  %i.isx = lshr i64 %i.isw, 3
  %i.isy = getelementptr inbounds nuw i8, ptr %i.isu, i64 %i.isx
  %i.isz = load i8, ptr %i.isy, align 1, !tbaa !98, !noalias !694
  %i.ita = trunc i64 %i.isw to i8
  %i.itb = and i8 %i.ita, 7
  %i.itc = lshr i8 %i.isz, %i.itb
  %i.itd = trunc i8 %i.itc to i1
  br i1 %i.itd, label %bb.anz, label %bb.aoa

bb.anv:                                           ; preds = %bb.ant
  %i.ite = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !694
  %i.itf = getelementptr inbounds nuw i8, ptr %i.ite, i64 40
  %i.itg = load i32, ptr %i.itf, align 8, !tbaa !42, !noalias !694
  switch i32 %i.itg, label %bb.any [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012
    i32 28, label %bb.anw
    i32 38, label %bb.anx
  ]

bb.anw:                                           ; preds = %bb.anv
  %i.ith = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ist), !noalias !694
  br i1 %i.ith, label %bb.aoa, label %bb.anz

bb.anx:                                           ; preds = %bb.anv
  %i.iti = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ist), !noalias !694
  br i1 %i.iti, label %bb.aoa, label %bb.anz

bb.any:                                           ; preds = %bb.anv
  %i.itj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !694
  %i.itk = load i64, ptr %i.imc, align 8, !tbaa !62, !noalias !694
  %.not25.i69.i1013 = icmp eq i64 %i.itj, %i.itk
  br i1 %.not25.i69.i1013, label %bb.aoa, label %bb.anz

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012:  ; preds = %bb.anv
  %i.itl = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ist), !noalias !694
  br i1 %i.itl, label %bb.aoa, label %bb.anz

bb.anz:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012, %bb.any, %bb.anx, %bb.anw, %bb.anu
  %i.itm = shl nsw i64 %.4.i42.i62.i1006, 4
  %i.itn = getelementptr inbounds i8, ptr %i.imb, i64 %i.itm
  %i.ito = load i16, ptr %i.isr, align 2, !tbaa !269, !noalias !694
  %i.itp = zext i16 %i.ito to i64
  %i.itq = shl nuw nsw i64 %i.itp, 4
  %i.itr = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.itq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.itn, ptr noundef nonnull align 1 dereferenceable(16) %i.itr, i64 16, i1 false), !noalias !694
  %i.its = srem i64 %.4.i42.i62.i1006, 8
  %i.itt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.its
  %i.itu = load i8, ptr %i.itt, align 1, !tbaa !98, !noalias !694
  %i.itv = sdiv i64 %.4.i42.i62.i1006, 8
  %i.itw = getelementptr inbounds i8, ptr %.0.i.i.i29.i973, i64 %i.itv ; 2 uses
  %i.itx = load i8, ptr %i.itw, align 1, !tbaa !98, !noalias !694
  %i.ity = or i8 %i.itx, %i.itu
  store i8 %i.ity, ptr %i.itw, align 1, !tbaa !98, !noalias !694
  %i.itz = add nsw i64 %.385.i41.i63.i1007, 1
  br label %bb.aob

bb.aoa:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012, %bb.any, %bb.anx, %bb.anw, %bb.anu, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014, %bb.ans, %bb.anr, %bb.anq, %bb.ano
  %i.iua = shl nsw i64 %.4.i42.i62.i1006, 4
  %i.iub = getelementptr inbounds i8, ptr %i.imb, i64 %i.iua
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iub, i8 0, i64 16, i1 false), !noalias !694
  br label %bb.aob

bb.aob:                                           ; preds = %bb.aoa, %bb.anz
  %.486.i.i65.i1009 = phi i64 [ %i.itz, %bb.anz ], [ %.385.i41.i63.i1007, %bb.aoa ] ; 2 uses
  %i.iuc = add nsw i64 %.4.i42.i62.i1006, 1       ; 2 uses
  %i.iud = add nuw nsw i64 %.0.i43.i61.i1005, 1   ; 2 uses
  %exitcond65.not.i66.i1010 = icmp eq i64 %i.iud, %i.irx
  br i1 %exitcond65.not.i66.i1010, label %.loopexit.i43.i987, label %.lr.ph44.i60.i1004, !llvm.loop !700

.loopexit.sink.split.i40.i984:                    ; preds = %bb.ann, %bb.amv
  %.sink86.i41.i985 = phi i64 [ %i.ios, %bb.amv ], [ %i.irx, %bb.ann ] ; 2 uses
  %.587.i.ph.i42.i986 = phi i64 [ %i.inu, %bb.amv ], [ %.082.i53.i33.i977, %bb.ann ]
  %i.iue = shl nsw i64 %.081.i54.i32.i976, 4
  %i.iuf = getelementptr inbounds i8, ptr %i.imb, i64 %i.iue
  %i.iug = shl nsw i64 %.sink86.i41.i985, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.iuf, i8 0, i64 %i.iug, i1 false), !noalias !694
  %i.iuh = add nsw i64 %.sink86.i41.i985, %.081.i54.i32.i976
  br label %.loopexit.i43.i987

.loopexit.i43.i987.loopexit3268.unr-lcssa:        ; preds = %.lr.ph39.i54.i998
  %i.iui = and i16 %.sroa.0.0.extract.trunc.i.i34.i978, 1
  %lcmp.mod3371.not = icmp eq i16 %i.iui, 0
  br i1 %lcmp.mod3371.not, label %.loopexit.i43.i987, label %.lr.ph39.i54.i998.epil.preheader

.lr.ph39.i54.i998.epil.preheader:                 ; preds = %.loopexit.i43.i987.loopexit3268.unr-lcssa, %.lr.ph39.i54.i998.preheader
  %.1.i37.i56.i1000.epil.init = phi i64 [ %.081.i54.i32.i976, %.lr.ph39.i54.i998.preheader ], [ %i.ioq, %.loopexit.i43.i987.loopexit3268.unr-lcssa ] ; 3 uses
  %lcmp.mod3373 = trunc i32 %i.ino to i1
  call void @llvm.assume(i1 %lcmp.mod3373)
  %i.iuj = shl nsw i64 %.1.i37.i56.i1000.epil.init, 4
  %i.iuk = getelementptr inbounds i8, ptr %i.imb, i64 %i.iuj
  %i.iul = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %.1.i37.i56.i1000.epil.init
  %i.ium = load i16, ptr %i.iul, align 2, !tbaa !269, !noalias !694
  %i.iun = zext i16 %i.ium to i64
  %i.iuo = shl nuw nsw i64 %i.iun, 4
  %i.iup = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.iuo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iuk, ptr noundef nonnull align 1 dereferenceable(16) %i.iup, i64 16, i1 false), !noalias !694
  %i.iuq = add nsw i64 %.1.i37.i56.i1000.epil.init, 1
  br label %.loopexit.i43.i987

.loopexit.i43.i987:                               ; preds = %bb.and, %.lr.ph39.i54.i998.epil.preheader, %.loopexit.i43.i987.loopexit3268.unr-lcssa, %bb.aob, %bb.anm, %.loopexit.sink.split.i40.i984, %.preheader27.i59.i1003, %.preheader.i72.i1016, %.preheader30.i46.i990, %bb.amu
  %.587.i.i44.i988 = phi i64 [ %.587.i.ph.i42.i986, %.loopexit.sink.split.i40.i984 ], [ %i.inu, %bb.amu ], [ %.486.i.i65.i1009, %bb.aob ], [ %i.inu, %.lr.ph39.i54.i998.epil.preheader ], [ %i.inu, %.preheader30.i46.i990 ], [ %.082.i53.i33.i977, %.preheader.i72.i1016 ], [ %.082.i53.i33.i977, %.preheader27.i59.i1003 ], [ %.284.i.i78.i1022, %bb.anm ], [ %i.inu, %.loopexit.i43.i987.loopexit3268.unr-lcssa ], [ %i.inu, %bb.and ] ; 2 uses
  %.5.i.i45.i989 = phi i64 [ %i.iuh, %.loopexit.sink.split.i40.i984 ], [ %.081.i54.i32.i976, %bb.amu ], [ %i.iuc, %bb.aob ], [ %i.iuq, %.lr.ph39.i54.i998.epil.preheader ], [ %.081.i54.i32.i976, %.preheader30.i46.i990 ], [ %.081.i54.i32.i976, %.preheader.i72.i1016 ], [ %.081.i54.i32.i976, %.preheader27.i59.i1003 ], [ %i.iru, %bb.anm ], [ %i.ioq, %.loopexit.i43.i987.loopexit3268.unr-lcssa ], [ %i.iqc, %bb.and ] ; 2 uses
  %i.iur = icmp slt i64 %.5.i.i45.i989, %i.imd
  br i1 %i.iur, label %bb.ams, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !701

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i987, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972
  %.082.i.lcssa.i30.i974 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972 ], [ %.587.i.i44.i988, %.loopexit.i43.i987 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !694
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i968:                                  ; preds = %.lr.ph.i24.i968, %.lr.ph.i24.i968.preheader.new
  %.0.i1833.i25.i969 = phi i64 [ 0, %.lr.ph.i24.i968.preheader.new ], [ %i.ivh, %.lr.ph.i24.i968 ] ; 4 uses
  %niter3369 = phi i64 [ 0, %.lr.ph.i24.i968.preheader.new ], [ %niter3369.next.1, %.lr.ph.i24.i968 ]
  %i.ius = shl nsw i64 %.0.i1833.i25.i969, 4
  %i.iut = getelementptr inbounds nuw i8, ptr %i.imb, i64 %i.ius
  %i.iuu = getelementptr inbounds nuw [2 x i8], ptr %i.imj, i64 %.0.i1833.i25.i969
  %i.iuv = load i16, ptr %i.iuu, align 2, !tbaa !269, !noalias !694
  %i.iuw = zext i16 %i.iuv to i64
  %i.iux = shl nuw nsw i64 %i.iuw, 4
  %i.iuy = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.iux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iut, ptr noundef nonnull align 1 dereferenceable(16) %i.iuy, i64 16, i1 false), !noalias !694
  %i.iuz = or disjoint i64 %.0.i1833.i25.i969, 1  ; 2 uses
  %i.iva = shl nsw i64 %i.iuz, 4
  %i.ivb = getelementptr inbounds nuw i8, ptr %i.imb, i64 %i.iva
  %i.ivc = getelementptr inbounds nuw [2 x i8], ptr %i.imj, i64 %i.iuz
  %i.ivd = load i16, ptr %i.ivc, align 2, !tbaa !269, !noalias !694
  %i.ive = zext i16 %i.ivd to i64
  %i.ivf = shl nuw nsw i64 %i.ive, 4
  %i.ivg = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.ivf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ivb, ptr noundef nonnull align 1 dereferenceable(16) %i.ivg, i64 16, i1 false), !noalias !694
  %i.ivh = add nuw nsw i64 %.0.i1833.i25.i969, 2  ; 2 uses
  %niter3369.next.1 = add i64 %niter3369, 2       ; 2 uses
  %niter3369.ncmp.1 = icmp eq i64 %niter3369.next.1, %unroll_iter3368
  br i1 %niter3369.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa, label %.lr.ph.i24.i968, !llvm.loop !702

bb.aoc:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.aoe, label %bb.aod

bb.aod:                                           ; preds = %bb.aoc
  %i.ivi = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ivj = load i64, ptr %i.ivi, align 8, !tbaa !71, !noalias !703
  %.not.i19.i83.i904 = icmp ne i64 %i.ivj, 0
  %i.ivk = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ivl = load ptr, ptr %i.ivk, align 8, !noalias !703
  %i.ivm = icmp ne ptr %i.ivl, null
  %i.ivn = select i1 %.not.i19.i83.i904, i1 %i.ivm, i1 false
  br label %bb.aoe

bb.aoe:                                           ; preds = %bb.aod, %bb.aoc
  %i.ivo = phi i1 [ true, %bb.aoc ], [ %i.ivn, %bb.aod ]
  %i.ivp = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !703
  %i.ivq = extractvalue { i32, ptr } %i.ivp, 1    ; 9 uses
  %i.ivr = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !703 ; 13 uses
  %i.ivs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ivt = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !703 ; 11 uses
  %i.ivu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.ivv = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  %i.ivw = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.ivx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ivy = load ptr, ptr %i.ivx, align 8, !tbaa !66, !noalias !703
  %i.ivz = getelementptr inbounds [4 x i8], ptr %i.ivy, i64 %i.ivv ; 9 uses
  br i1 %i.ivo, label %bb.aof, label %.preheader32.i84.i905

.preheader32.i84.i905:                            ; preds = %bb.aoe
  %i.iwa = icmp sgt i64 %i.ivt, 0
  br i1 %i.iwa, label %.lr.ph.i86.i907.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i907.preheader:                        ; preds = %.preheader32.i84.i905
  %xtraiter3354 = and i64 %i.ivt, 1
  %i.iwb = icmp eq i64 %i.ivt, 1
  br i1 %i.iwb, label %.lr.ph.i86.i907.epil.preheader, label %.lr.ph.i86.i907.preheader.new

.lr.ph.i86.i907.preheader.new:                    ; preds = %.lr.ph.i86.i907.preheader
  %unroll_iter3357 = and i64 %i.ivt, 9223372036854775806
  br label %.lr.ph.i86.i907

bb.aof:                                           ; preds = %bb.aoe
  %i.iwc = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.iwd = load ptr, ptr %i.iwc, align 8, !tbaa !171, !noalias !703
  %i.iwe = load ptr, ptr %i.iwd, align 8, !tbaa !306, !noalias !703 ; 4 uses
  %.not.i.i.i89.i910 = icmp eq ptr %i.iwe, null
  br i1 %.not.i.i.i89.i910, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  %i.iwf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.iwg = load i64, ptr %i.iwf, align 8, !tbaa !438, !noalias !703
  %i.iwh = getelementptr inbounds nuw i8, ptr %i.iwe, i64 9
  %i.iwi = load i8, ptr %i.iwh, align 1, !tbaa !439, !range !127, !noalias !703, !noundef !128
  %i.iwj = trunc nuw i8 %i.iwi to i1
  %i.iwk = getelementptr inbounds nuw i8, ptr %i.iwe, i64 8
  %i.iwl = load i8, ptr %i.iwk, align 8, !range !127, !noalias !703
  %i.iwm = trunc nuw i8 %i.iwl to i1
  %i.iwn = select i1 %i.iwj, i1 %i.iwm, i1 false, !prof !117
  %i.iwo = getelementptr inbounds nuw i8, ptr %i.iwe, i64 16
  %i.iwp = load ptr, ptr %i.iwo, align 8, !noalias !703
  %i.iwq = select i1 %i.iwn, ptr %i.iwp, ptr null, !prof !117
  %i.iwr = getelementptr inbounds i8, ptr %i.iwq, i64 %i.iwg
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911: ; preds = %bb.aog, %bb.aof
  %.0.i.i.i91.i912 = phi ptr [ %i.iwr, %bb.aog ], [ null, %bb.aof ] ; 5 uses
  %i.iws = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.iwt = load i64, ptr %i.iws, align 8, !tbaa !178, !noalias !703 ; 2 uses
  %i.iwu = ashr i64 %i.iwt, 3
  %i.iwv = and i64 %i.iwt, 7
  %i.iww = icmp ne i64 %i.iwv, 0
  %i.iwx = zext i1 %i.iww to i64
  %i.iwy = add nsw i64 %i.iwu, %i.iwx
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i912, i8 0, i64 %i.iwy, i1 false), !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !703
  %i.iwz = load ptr, ptr %i.ivw, align 8, !tbaa !66, !noalias !703
  %i.ixa = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.iwz, i64 noundef %i.ixa, i64 noundef %i.ivt), !noalias !703
  %i.ixb = icmp sgt i64 %i.ivt, 0
  br i1 %i.ixb, label %.lr.ph55.i93.i914, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i914:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911
  %i.ixc = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ixd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.aoh

bb.aoh:                                           ; preds = %.loopexit.i105.i926, %.lr.ph55.i93.i914
  %.081.i54.i94.i915 = phi i64 [ 0, %.lr.ph55.i93.i914 ], [ %.5.i.i107.i928, %.loopexit.i105.i926 ] ; 12 uses
  %.082.i53.i95.i916 = phi i64 [ 0, %.lr.ph55.i93.i914 ], [ %.587.i.i106.i927, %.loopexit.i105.i926 ] ; 6 uses
  %i.ixe = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %13), !noalias !703 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i917 = trunc i32 %i.ixe to i16 ; 10 uses
  %i.ixf = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !703
  %.not.i20.i97.i918 = icmp ne i64 %i.ixf, 0
  %i.ixg = load ptr, ptr %i.v, align 8, !noalias !703
  %i.ixh = icmp ne ptr %i.ixg, null
  %i.ixi = select i1 %.not.i20.i97.i918, i1 %i.ixh, i1 false
  br i1 %i.ixi, label %bb.aot, label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh
  %.sroa.14.0.extract.shift.i.i98.i919 = lshr i32 %i.ixe, 16
  %.sroa.14.0.extract.trunc.i.i99.i920 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i919 to i64
  %sext91.i.i100.i921 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i920, 48
  %i.ixj = ashr exact i64 %sext91.i.i100.i921, 48
  %i.ixk = add nsw i64 %i.ixj, %.082.i53.i95.i916 ; 6 uses
  %i.ixl = ashr i32 %i.ixe, 16                    ; 2 uses
  %sext.i.i101.i922 = shl i32 %i.ixe, 16
  %i.ixm = ashr exact i32 %sext.i.i101.i922, 16
  %i.ixn = icmp eq i32 %i.ixl, %i.ixm
  br i1 %i.ixn, label %bb.aoj, label %bb.aok

bb.aoj:                                           ; preds = %bb.aoi
  %i.ixo = sext i16 %.sroa.0.0.extract.trunc.i.i96.i917 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i912, i64 noundef %.081.i54.i94.i915, i64 noundef %i.ixo, i1 noundef zeroext true), !noalias !703
  %i.ixp = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i917, 0
  br i1 %i.ixp, label %.lr.ph39.i116.i937.preheader, label %.loopexit.i105.i926

.lr.ph39.i116.i937.preheader:                     ; preds = %bb.aoj
  %i.ixq = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i917, 1
  br i1 %i.ixq, label %.lr.ph39.i116.i937.epil.preheader, label %.lr.ph39.i116.i937.preheader.new

.lr.ph39.i116.i937.preheader.new:                 ; preds = %.lr.ph39.i116.i937.preheader
  %unroll_iter3363 = and i64 %i.ixo, 32766
  br label %.lr.ph39.i116.i937

.lr.ph39.i116.i937:                               ; preds = %.lr.ph39.i116.i937, %.lr.ph39.i116.i937.preheader.new
  %.1.i37.i118.i939 = phi i64 [ %.081.i54.i94.i915, %.lr.ph39.i116.i937.preheader.new ], [ %i.iyg, %.lr.ph39.i116.i937 ] ; 4 uses
  %niter3364 = phi i64 [ 0, %.lr.ph39.i116.i937.preheader.new ], [ %niter3364.next.1, %.lr.ph39.i116.i937 ]
  %i.ixr = shl nsw i64 %.1.i37.i118.i939, 4
  %i.ixs = getelementptr inbounds i8, ptr %i.ivr, i64 %i.ixr
  %i.ixt = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %.1.i37.i118.i939
  %i.ixu = load i32, ptr %i.ixt, align 4, !tbaa !3, !noalias !703
  %i.ixv = shl i32 %i.ixu, 4
  %i.ixw = zext i32 %i.ixv to i64
  %i.ixx = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.ixw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ixs, ptr noundef nonnull align 1 dereferenceable(16) %i.ixx, i64 16, i1 false), !noalias !703
  %i.ixy = add nsw i64 %.1.i37.i118.i939, 1       ; 2 uses
  %i.ixz = shl nsw i64 %i.ixy, 4
  %i.iya = getelementptr inbounds i8, ptr %i.ivr, i64 %i.ixz
  %i.iyb = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %i.ixy
  %i.iyc = load i32, ptr %i.iyb, align 4, !tbaa !3, !noalias !703
  %i.iyd = shl i32 %i.iyc, 4
  %i.iye = zext i32 %i.iyd to i64
  %i.iyf = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.iye
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iya, ptr noundef nonnull align 1 dereferenceable(16) %i.iyf, i64 16, i1 false), !noalias !703
  %i.iyg = add nsw i64 %.1.i37.i118.i939, 2       ; 3 uses
  %niter3364.next.1 = add i64 %niter3364, 2       ; 2 uses
  %niter3364.ncmp.1 = icmp eq i64 %niter3364.next.1, %unroll_iter3363
  br i1 %niter3364.ncmp.1, label %.loopexit.i105.i926.loopexit3276.unr-lcssa, label %.lr.ph39.i116.i937, !llvm.loop !706

bb.aok:                                           ; preds = %bb.aoi
  %i.iyh = icmp sgt i32 %i.ixl, 0
  %i.iyi = sext i16 %.sroa.0.0.extract.trunc.i.i96.i917 to i64 ; 2 uses
  br i1 %i.iyh, label %.preheader30.i108.i929, label %.loopexit.sink.split.i102.i923

.preheader30.i108.i929:                           ; preds = %bb.aok
  %i.iyj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i917, 0
  br i1 %i.iyj, label %.lr.ph36.i109.i930, label %.loopexit.i105.i926

.lr.ph36.i109.i930:                               ; preds = %.preheader30.i108.i929, %bb.aos
  %.079.i35.i110.i931 = phi i64 [ %i.izt, %bb.aos ], [ 0, %.preheader30.i108.i929 ]
  %.2.i34.i111.i932 = phi i64 [ %i.izs, %bb.aos ], [ %.081.i54.i94.i915, %.preheader30.i108.i929 ] ; 10 uses
  %i.iyk = load ptr, ptr %i.ivw, align 8, !tbaa !66, !noalias !703 ; 2 uses
  %.not.i21.i112.i933 = icmp eq ptr %i.iyk, null
  br i1 %.not.i21.i112.i933, label %bb.aom, label %bb.aol

bb.aol:                                           ; preds = %.lr.ph36.i109.i930
  %i.iyl = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  %i.iym = add nsw i64 %i.iyl, %.2.i34.i111.i932  ; 2 uses
  %i.iyn = lshr i64 %i.iym, 3
  %i.iyo = getelementptr inbounds nuw i8, ptr %i.iyk, i64 %i.iyn
  %i.iyp = load i8, ptr %i.iyo, align 1, !tbaa !98, !noalias !703
  %i.iyq = trunc i64 %i.iym to i8
  %i.iyr = and i8 %i.iyq, 7
  %i.iys = lshr i8 %i.iyp, %i.iyr
  %i.iyt = trunc i8 %i.iys to i1
  br i1 %i.iyt, label %bb.aoq, label %bb.aor

bb.aom:                                           ; preds = %.lr.ph36.i109.i930
  %i.iyu = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !703
  %i.iyv = getelementptr inbounds nuw i8, ptr %i.iyu, i64 40
  %i.iyw = load i32, ptr %i.iyv, align 8, !tbaa !42, !noalias !703
  switch i32 %i.iyw, label %bb.aop [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i935
    i32 28, label %bb.aon
    i32 38, label %bb.aoo
  ]

bb.aon:                                           ; preds = %bb.aom
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.jbf = load i8, ptr %i.jbe, align 1, !tbaa !98, !noalias !703
  %i.jbg = or i8 %i.jbf, %i.jbc
  store i8 %i.jbg, ptr %i.jbe, align 1, !tbaa !98, !noalias !703
  %i.jbh = add nsw i64 %.183.i47.i138.i959, 1
  br label %bb.apb

bb.apa:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i142.i963, %bb.aoy, %bb.aox, %bb.aow, %bb.aou
  %i.jbi = shl nsw i64 %.3.i48.i137.i958, 4
  %i.jbj = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jbi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jbj, i8 0, i64 16, i1 false), !noalias !703
  br label %bb.apb

bb.apb:                                           ; preds = %bb.apa, %bb.aoz
  %.284.i.i140.i961 = phi i64 [ %i.jbh, %bb.aoz ], [ %.183.i47.i138.i959, %bb.apa ] ; 2 uses
  %i.jbk = add nsw i64 %.3.i48.i137.i958, 1       ; 2 uses
  %i.jbl = add nuw nsw i64 %.078.i49.i136.i957, 1 ; 2 uses
  %exitcond66.not.i141.i962 = icmp eq i64 %i.jbl, %i.izx
  br i1 %exitcond66.not.i141.i962, label %.loopexit.i105.i926, label %.lr.ph50.i135.i956, !llvm.loop !708

bb.apc:                                           ; preds = %bb.aot
  %i.jbm = icmp sgt i32 %i.izu, 0
  %i.jbn = sext i16 %.sroa.0.0.extract.trunc.i.i96.i917 to i64 ; 2 uses
  br i1 %i.jbm, label %.preheader27.i121.i942, label %.loopexit.sink.split.i102.i923

.preheader27.i121.i942:                           ; preds = %bb.apc
  %i.jbo = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i917, 0
  br i1 %i.jbo, label %.lr.ph44.i122.i943, label %.loopexit.i105.i926

.lr.ph44.i122.i943:                               ; preds = %.preheader27.i121.i942, %bb.apq
  %.0.i43.i123.i944 = phi i64 [ %i.jdt, %bb.apq ], [ 0, %.preheader27.i121.i942 ]
  %.4.i42.i124.i945 = phi i64 [ %i.jds, %bb.apq ], [ %.081.i54.i94.i915, %.preheader27.i121.i942 ] ; 10 uses
  %.385.i41.i125.i946 = phi i64 [ %.486.i.i127.i948, %bb.apq ], [ %.082.i53.i95.i916, %.preheader27.i121.i942 ] ; 2 uses
  %i.jbp = load ptr, ptr %i.ivw, align 8, !tbaa !66, !noalias !703 ; 2 uses
  %.not.i26.i126.i947 = icmp eq ptr %i.jbp, null
  br i1 %.not.i26.i126.i947, label %bb.ape, label %bb.apd

bb.apd:                                           ; preds = %.lr.ph44.i122.i943
  %i.jbq = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  %i.jbr = add nsw i64 %i.jbq, %.4.i42.i124.i945  ; 2 uses
  %i.jbs = lshr i64 %i.jbr, 3
  %i.jbt = getelementptr inbounds nuw i8, ptr %i.jbp, i64 %i.jbs
  %i.jbu = load i8, ptr %i.jbt, align 1, !tbaa !98, !noalias !703
  %i.jbv = trunc i64 %i.jbr to i8
  %i.jbw = and i8 %i.jbv, 7
  %i.jbx = lshr i8 %i.jbu, %i.jbw
  %i.jby = trunc i8 %i.jbx to i1
  br i1 %i.jby, label %bb.api, label %bb.app

bb.ape:                                           ; preds = %.lr.ph44.i122.i943
  %i.jbz = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !703
  %i.jca = getelementptr inbounds nuw i8, ptr %i.jbz, i64 40
  %i.jcb = load i32, ptr %i.jca, align 8, !tbaa !42, !noalias !703
  switch i32 %i.jcb, label %bb.aph [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953
    i32 28, label %bb.apf
    i32 38, label %bb.apg
  ]

bb.apf:                                           ; preds = %bb.ape
  %i.jcc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i945), !noalias !703
  br i1 %i.jcc, label %bb.app, label %bb.api

bb.apg:                                           ; preds = %bb.ape
  %i.jcd = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i945), !noalias !703
  br i1 %i.jcd, label %bb.app, label %bb.api

bb.aph:                                           ; preds = %bb.ape
  %i.jce = load i64, ptr %i.ixc, align 8, !tbaa !71, !noalias !703
  %i.jcf = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !703
  %.not24.i133.i954 = icmp eq i64 %i.jce, %i.jcf
  br i1 %.not24.i133.i954, label %bb.app, label %bb.api

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953:  ; preds = %bb.ape
  %i.jcg = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i945), !noalias !703
  br i1 %i.jcg, label %bb.app, label %bb.api

bb.api:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953, %bb.aph, %bb.apg, %bb.apf, %bb.apd
  %i.jch = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %.4.i42.i124.i945 ; 2 uses
  %i.jci = load i32, ptr %i.jch, align 4, !tbaa !3, !noalias !703
  %i.jcj = zext i32 %i.jci to i64                 ; 4 uses
  %i.jck = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !703 ; 2 uses
  %.not.i29.i129.i950 = icmp eq ptr %i.jck, null
  br i1 %.not.i29.i129.i950, label %bb.apk, label %bb.apj

bb.apj:                                           ; preds = %bb.api
  %i.jcl = load i64, ptr %i.ixd, align 8, !tbaa !99, !noalias !703
  %i.jcm = add nsw i64 %i.jcl, %i.jcj             ; 2 uses
  %i.jcn = lshr i64 %i.jcm, 3
  %i.jco = getelementptr inbounds nuw i8, ptr %i.jck, i64 %i.jcn
  %i.jcp = load i8, ptr %i.jco, align 1, !tbaa !98, !noalias !703
  %i.jcq = trunc i64 %i.jcm to i8
  %i.jcr = and i8 %i.jcq, 7
  %i.jcs = lshr i8 %i.jcp, %i.jcr
  %i.jct = trunc i8 %i.jcs to i1
  br i1 %i.jct, label %bb.apo, label %bb.app

bb.apk:                                           ; preds = %bb.api
  %i.jcu = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !703
  %i.jcv = getelementptr inbounds nuw i8, ptr %i.jcu, i64 40
  %i.jcw = load i32, ptr %i.jcv, align 8, !tbaa !42, !noalias !703
  switch i32 %i.jcw, label %bb.apn [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951
    i32 28, label %bb.apl
    i32 38, label %bb.apm
  ]

bb.apl:                                           ; preds = %bb.apk
  %i.jcx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jcj), !noalias !703
  br i1 %i.jcx, label %bb.app, label %bb.apo

bb.apm:                                           ; preds = %bb.apk
  %i.jcy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jcj), !noalias !703
  br i1 %i.jcy, label %bb.app, label %bb.apo

bb.apn:                                           ; preds = %bb.apk
  %i.jcz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !703
  %i.jda = load i64, ptr %i.ivs, align 8, !tbaa !62, !noalias !703
  %.not25.i131.i952 = icmp eq i64 %i.jcz, %i.jda
  br i1 %.not25.i131.i952, label %bb.app, label %bb.apo

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951:  ; preds = %bb.apk
  %i.jdb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jcj), !noalias !703
  br i1 %i.jdb, label %bb.app, label %bb.apo

bb.apo:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951, %bb.apn, %bb.apm, %bb.apl, %bb.apj
  %i.jdc = shl nsw i64 %.4.i42.i124.i945, 4
  %i.jdd = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdc
  %i.jde = load i32, ptr %i.jch, align 4, !tbaa !3, !noalias !703
  %i.jdf = shl i32 %i.jde, 4
  %i.jdg = zext i32 %i.jdf to i64
  %i.jdh = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jdg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jdd, ptr noundef nonnull align 1 dereferenceable(16) %i.jdh, i64 16, i1 false), !noalias !703
  %i.jdi = srem i64 %.4.i42.i124.i945, 8
  %i.jdj = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jdi
  %i.jdk = load i8, ptr %i.jdj, align 1, !tbaa !98, !noalias !703
  %i.jdl = sdiv i64 %.4.i42.i124.i945, 8
  %i.jdm = getelementptr inbounds i8, ptr %.0.i.i.i91.i912, i64 %i.jdl ; 2 uses
  %i.jdn = load i8, ptr %i.jdm, align 1, !tbaa !98, !noalias !703
  %i.jdo = or i8 %i.jdn, %i.jdk
  store i8 %i.jdo, ptr %i.jdm, align 1, !tbaa !98, !noalias !703
  %i.jdp = add nsw i64 %.385.i41.i125.i946, 1
  br label %bb.apq

bb.app:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951, %bb.apn, %bb.apm, %bb.apl, %bb.apj, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953, %bb.aph, %bb.apg, %bb.apf, %bb.apd
  %i.jdq = shl nsw i64 %.4.i42.i124.i945, 4
  %i.jdr = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jdr, i8 0, i64 16, i1 false), !noalias !703
  br label %bb.apq

bb.apq:                                           ; preds = %bb.app, %bb.apo
  %.486.i.i127.i948 = phi i64 [ %i.jdp, %bb.apo ], [ %.385.i41.i125.i946, %bb.app ] ; 2 uses
  %i.jds = add nsw i64 %.4.i42.i124.i945, 1       ; 2 uses
  %i.jdt = add nuw nsw i64 %.0.i43.i123.i944, 1   ; 2 uses
  %exitcond65.not.i128.i949 = icmp eq i64 %i.jdt, %i.jbn
  br i1 %exitcond65.not.i128.i949, label %.loopexit.i105.i926, label %.lr.ph44.i122.i943, !llvm.loop !709

.loopexit.sink.split.i102.i923:                   ; preds = %bb.apc, %bb.aok
  %.sink86.i103.i924 = phi i64 [ %i.iyi, %bb.aok ], [ %i.jbn, %bb.apc ] ; 2 uses
  %.587.i.ph.i104.i925 = phi i64 [ %i.ixk, %bb.aok ], [ %.082.i53.i95.i916, %bb.apc ]
  %i.jdu = shl nsw i64 %.081.i54.i94.i915, 4
  %i.jdv = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdu
  %i.jdw = shl nsw i64 %.sink86.i103.i924, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.jdv, i8 0, i64 %i.jdw, i1 false), !noalias !703
  %i.jdx = add nsw i64 %.sink86.i103.i924, %.081.i54.i94.i915
  br label %.loopexit.i105.i926

.loopexit.i105.i926.loopexit3276.unr-lcssa:       ; preds = %.lr.ph39.i116.i937
  %i.jdy = and i16 %.sroa.0.0.extract.trunc.i.i96.i917, 1
  %lcmp.mod3360.not = icmp eq i16 %i.jdy, 0
  br i1 %lcmp.mod3360.not, label %.loopexit.i105.i926, label %.lr.ph39.i116.i937.epil.preheader

.lr.ph39.i116.i937.epil.preheader:                ; preds = %.loopexit.i105.i926.loopexit3276.unr-lcssa, %.lr.ph39.i116.i937.preheader
  %.1.i37.i118.i939.epil.init = phi i64 [ %.081.i54.i94.i915, %.lr.ph39.i116.i937.preheader ], [ %i.iyg, %.loopexit.i105.i926.loopexit3276.unr-lcssa ] ; 3 uses
  %lcmp.mod3362 = trunc i32 %i.ixe to i1
  call void @llvm.assume(i1 %lcmp.mod3362)
  %i.jdz = shl nsw i64 %.1.i37.i118.i939.epil.init, 4
  %i.jea = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdz
  %i.jeb = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %.1.i37.i118.i939.epil.init
  %i.jec = load i32, ptr %i.jeb, align 4, !tbaa !3, !noalias !703
  %i.jed = shl i32 %i.jec, 4
  %i.jee = zext i32 %i.jed to i64
  %i.jef = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jea, ptr noundef nonnull align 1 dereferenceable(16) %i.jef, i64 16, i1 false), !noalias !703
  %i.jeg = add nsw i64 %.1.i37.i118.i939.epil.init, 1
  br label %.loopexit.i105.i926

.loopexit.i105.i926:                              ; preds = %bb.aos, %.lr.ph39.i116.i937.epil.preheader, %.loopexit.i105.i926.loopexit3276.unr-lcssa, %bb.apq, %bb.apb, %.loopexit.sink.split.i102.i923, %.preheader27.i121.i942, %.preheader.i134.i955, %.preheader30.i108.i929, %bb.aoj
  %.587.i.i106.i927 = phi i64 [ %.587.i.ph.i104.i925, %.loopexit.sink.split.i102.i923 ], [ %i.ixk, %bb.aoj ], [ %.486.i.i127.i948, %bb.apq ], [ %i.ixk, %.lr.ph39.i116.i937.epil.preheader ], [ %i.ixk, %.preheader30.i108.i929 ], [ %.082.i53.i95.i916, %.preheader.i134.i955 ], [ %.082.i53.i95.i916, %.preheader27.i121.i942 ], [ %.284.i.i140.i961, %bb.apb ], [ %i.ixk, %.loopexit.i105.i926.loopexit3276.unr-lcssa ], [ %i.ixk, %bb.aos ] ; 2 uses
  %.5.i.i107.i928 = phi i64 [ %i.jdx, %.loopexit.sink.split.i102.i923 ], [ %.081.i54.i94.i915, %bb.aoj ], [ %i.jds, %bb.apq ], [ %i.jeg, %.lr.ph39.i116.i937.epil.preheader ], [ %.081.i54.i94.i915, %.preheader30.i108.i929 ], [ %.081.i54.i94.i915, %.preheader.i134.i955 ], [ %.081.i54.i94.i915, %.preheader27.i121.i942 ], [ %i.jbk, %bb.apb ], [ %i.iyg, %.loopexit.i105.i926.loopexit3276.unr-lcssa ], [ %i.izs, %bb.aos ] ; 2 uses
  %i.jeh = icmp slt i64 %.5.i.i107.i928, %i.ivt
  br i1 %i.jeh, label %bb.aoh, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !710

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i926, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911
  %.082.i.lcssa.i92.i913 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911 ], [ %.587.i.i106.i927, %.loopexit.i105.i926 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !703
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i907:                                  ; preds = %.lr.ph.i86.i907, %.lr.ph.i86.i907.preheader.new
  %.0.i1833.i87.i908 = phi i64 [ 0, %.lr.ph.i86.i907.preheader.new ], [ %i.jex, %.lr.ph.i86.i907 ] ; 4 uses
  %niter3358 = phi i64 [ 0, %.lr.ph.i86.i907.preheader.new ], [ %niter3358.next.1, %.lr.ph.i86.i907 ]
  %i.jei = shl nsw i64 %.0.i1833.i87.i908, 4
  %i.jej = getelementptr inbounds nuw i8, ptr %i.ivr, i64 %i.jei
  %i.jek = getelementptr inbounds nuw [4 x i8], ptr %i.ivz, i64 %.0.i1833.i87.i908
  %i.jel = load i32, ptr %i.jek, align 4, !tbaa !3, !noalias !703
  %i.jem = shl i32 %i.jel, 4
  %i.jen = zext i32 %i.jem to i64
  %i.jeo = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jej, ptr noundef nonnull align 1 dereferenceable(16) %i.jeo, i64 16, i1 false), !noalias !703
  %i.jep = or disjoint i64 %.0.i1833.i87.i908, 1  ; 2 uses
  %i.jeq = shl nsw i64 %i.jep, 4
  %i.jer = getelementptr inbounds nuw i8, ptr %i.ivr, i64 %i.jeq
  %i.jes = getelementptr inbounds nuw [4 x i8], ptr %i.ivz, i64 %i.jep
  %i.jet = load i32, ptr %i.jes, align 4, !tbaa !3, !noalias !703
  %i.jeu = shl i32 %i.jet, 4
  %i.jev = zext i32 %i.jeu to i64
  %i.jew = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jer, ptr noundef nonnull align 1 dereferenceable(16) %i.jew, i64 16, i1 false), !noalias !703
  %i.jex = add nuw nsw i64 %.0.i1833.i87.i908, 2  ; 2 uses
  %niter3358.next.1 = add i64 %niter3358, 2       ; 2 uses
  %niter3358.ncmp.1 = icmp eq i64 %niter3358.next.1, %unroll_iter3357
  br i1 %niter3358.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa, label %.lr.ph.i86.i907, !llvm.loop !711

bb.apr:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.apt, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.jey = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.jez = load i64, ptr %i.jey, align 8, !tbaa !71, !noalias !712
  %.not.i19.i145.i1088 = icmp ne i64 %i.jez, 0
  %i.jfa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jfb = load ptr, ptr %i.jfa, align 8, !noalias !712
  %i.jfc = icmp ne ptr %i.jfb, null
  %i.jfd = select i1 %.not.i19.i145.i1088, i1 %i.jfc, i1 false
  br label %bb.apt

bb.apt:                                           ; preds = %bb.aps, %bb.apr
  %i.jfe = phi i1 [ true, %bb.apr ], [ %i.jfd, %bb.aps ]
  %i.jff = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !712
  %i.jfg = extractvalue { i32, ptr } %i.jff, 1    ; 9 uses
  %i.jfh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !712 ; 13 uses
  %i.jfi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jfj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !712 ; 11 uses
  %i.jfk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.jfl = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  %i.jfm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.jfn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jfo = load ptr, ptr %i.jfn, align 8, !tbaa !66, !noalias !712
  %i.jfp = getelementptr inbounds [8 x i8], ptr %i.jfo, i64 %i.jfl ; 9 uses
  br i1 %i.jfe, label %bb.apu, label %.preheader32.i146.i1089

.preheader32.i146.i1089:                          ; preds = %bb.apt
  %i.jfq = icmp sgt i64 %i.jfj, 0
  br i1 %i.jfq, label %.lr.ph.i148.i1090.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1090.preheader:                      ; preds = %.preheader32.i146.i1089
  %xtraiter3387 = and i64 %i.jfj, 1
  %i.jfr = icmp eq i64 %i.jfj, 1
  br i1 %i.jfr, label %.lr.ph.i148.i1090.epil.preheader, label %.lr.ph.i148.i1090.preheader.new

.lr.ph.i148.i1090.preheader.new:                  ; preds = %.lr.ph.i148.i1090.preheader
  %unroll_iter3390 = and i64 %i.jfj, 9223372036854775806
  br label %.lr.ph.i148.i1090

bb.apu:                                           ; preds = %bb.apt
  %i.jfs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.jft = load ptr, ptr %i.jfs, align 8, !tbaa !171, !noalias !712
  %i.jfu = load ptr, ptr %i.jft, align 8, !tbaa !306, !noalias !712 ; 4 uses
  %.not.i.i.i151.i1093 = icmp eq ptr %i.jfu, null
  br i1 %.not.i.i.i151.i1093, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094, label %bb.apv

bb.apv:                                           ; preds = %bb.apu
  %i.jfv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.jfw = load i64, ptr %i.jfv, align 8, !tbaa !438, !noalias !712
  %i.jfx = getelementptr inbounds nuw i8, ptr %i.jfu, i64 9
  %i.jfy = load i8, ptr %i.jfx, align 1, !tbaa !439, !range !127, !noalias !712, !noundef !128
  %i.jfz = trunc nuw i8 %i.jfy to i1
  %i.jga = getelementptr inbounds nuw i8, ptr %i.jfu, i64 8
  %i.jgb = load i8, ptr %i.jga, align 8, !range !127, !noalias !712
  %i.jgc = trunc nuw i8 %i.jgb to i1
  %i.jgd = select i1 %i.jfz, i1 %i.jgc, i1 false, !prof !117
  %i.jge = getelementptr inbounds nuw i8, ptr %i.jfu, i64 16
  %i.jgf = load ptr, ptr %i.jge, align 8, !noalias !712
  %i.jgg = select i1 %i.jgd, ptr %i.jgf, ptr null, !prof !117
  %i.jgh = getelementptr inbounds i8, ptr %i.jgg, i64 %i.jfw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094: ; preds = %bb.apv, %bb.apu
  %.0.i.i.i153.i1095 = phi ptr [ %i.jgh, %bb.apv ], [ null, %bb.apu ] ; 5 uses
  %i.jgi = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.jgj = load i64, ptr %i.jgi, align 8, !tbaa !178, !noalias !712 ; 2 uses
  %i.jgk = ashr i64 %i.jgj, 3
  %i.jgl = and i64 %i.jgj, 7
  %i.jgm = icmp ne i64 %i.jgl, 0
  %i.jgn = zext i1 %i.jgm to i64
  %i.jgo = add nsw i64 %i.jgk, %i.jgn
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i1095, i8 0, i64 %i.jgo, i1 false), !noalias !712
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !712
  %i.jgp = load ptr, ptr %i.jfm, align 8, !tbaa !66, !noalias !712
  %i.jgq = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.jgp, i64 noundef %i.jgq, i64 noundef %i.jfj), !noalias !712
  %i.jgr = icmp sgt i64 %i.jfj, 0
  br i1 %i.jgr, label %.lr.ph55.i155.i1097, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i1097:                              ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094
  %i.jgs = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.jgt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.apw

bb.apw:                                           ; preds = %.loopexit.i167.i1109, %.lr.ph55.i155.i1097
  %.081.i54.i156.i1098 = phi i64 [ 0, %.lr.ph55.i155.i1097 ], [ %.5.i.i169.i1111, %.loopexit.i167.i1109 ] ; 12 uses
  %.082.i53.i157.i1099 = phi i64 [ 0, %.lr.ph55.i155.i1097 ], [ %.587.i.i168.i1110, %.loopexit.i167.i1109 ] ; 6 uses
  %i.jgu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %12), !noalias !712 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i1100 = trunc i32 %i.jgu to i16 ; 10 uses
  %i.jgv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !712
  %.not.i20.i159.i1101 = icmp ne i64 %i.jgv, 0
  %i.jgw = load ptr, ptr %i.v, align 8, !noalias !712
  %i.jgx = icmp ne ptr %i.jgw, null
  %i.jgy = select i1 %.not.i20.i159.i1101, i1 %i.jgx, i1 false
  br i1 %i.jgy, label %bb.aqi, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %.sroa.14.0.extract.shift.i.i160.i1102 = lshr i32 %i.jgu, 16
  %.sroa.14.0.extract.trunc.i.i161.i1103 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i1102 to i64
  %sext91.i.i162.i1104 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i1103, 48
  %i.jgz = ashr exact i64 %sext91.i.i162.i1104, 48
  %i.jha = add nsw i64 %i.jgz, %.082.i53.i157.i1099 ; 6 uses
  %i.jhb = ashr i32 %i.jgu, 16                    ; 2 uses
  %sext.i.i163.i1105 = shl i32 %i.jgu, 16
  %i.jhc = ashr exact i32 %sext.i.i163.i1105, 16
  %i.jhd = icmp eq i32 %i.jhb, %i.jhc
  br i1 %i.jhd, label %bb.apy, label %bb.apz

bb.apy:                                           ; preds = %bb.apx
  %i.jhe = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1100 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i1095, i64 noundef %.081.i54.i156.i1098, i64 noundef %i.jhe, i1 noundef zeroext true), !noalias !712
  %i.jhf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 0
  br i1 %i.jhf, label %.lr.ph39.i178.i1120.preheader, label %.loopexit.i167.i1109

.lr.ph39.i178.i1120.preheader:                    ; preds = %bb.apy
  %i.jhg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 1
  br i1 %i.jhg, label %.lr.ph39.i178.i1120.epil.preheader, label %.lr.ph39.i178.i1120.preheader.new

.lr.ph39.i178.i1120.preheader.new:                ; preds = %.lr.ph39.i178.i1120.preheader
  %unroll_iter3396 = and i64 %i.jhe, 32766
  br label %.lr.ph39.i178.i1120

.lr.ph39.i178.i1120:                              ; preds = %.lr.ph39.i178.i1120, %.lr.ph39.i178.i1120.preheader.new
  %.1.i37.i180.i1122 = phi i64 [ %.081.i54.i156.i1098, %.lr.ph39.i178.i1120.preheader.new ], [ %i.jhu, %.lr.ph39.i178.i1120 ] ; 4 uses
  %niter3397 = phi i64 [ 0, %.lr.ph39.i178.i1120.preheader.new ], [ %niter3397.next.1, %.lr.ph39.i178.i1120 ]
  %i.jhh = shl nsw i64 %.1.i37.i180.i1122, 4
  %i.jhi = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jhh
  %i.jhj = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %.1.i37.i180.i1122
  %i.jhk = load i64, ptr %i.jhj, align 8, !tbaa !130, !noalias !712
  %i.jhl = shl i64 %i.jhk, 4
  %i.jhm = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jhl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jhi, ptr noundef nonnull align 1 dereferenceable(16) %i.jhm, i64 16, i1 false), !noalias !712
  %i.jhn = add nsw i64 %.1.i37.i180.i1122, 1      ; 2 uses
  %i.jho = shl nsw i64 %i.jhn, 4
  %i.jhp = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jho
  %i.jhq = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %i.jhn
  %i.jhr = load i64, ptr %i.jhq, align 8, !tbaa !130, !noalias !712
  %i.jhs = shl i64 %i.jhr, 4
  %i.jht = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jhs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jhp, ptr noundef nonnull align 1 dereferenceable(16) %i.jht, i64 16, i1 false), !noalias !712
  %i.jhu = add nsw i64 %.1.i37.i180.i1122, 2      ; 3 uses
  %niter3397.next.1 = add i64 %niter3397, 2       ; 2 uses
  %niter3397.ncmp.1 = icmp eq i64 %niter3397.next.1, %unroll_iter3396
  br i1 %niter3397.ncmp.1, label %.loopexit.i167.i1109.loopexit3253.unr-lcssa, label %.lr.ph39.i178.i1120, !llvm.loop !715

bb.apz:                                           ; preds = %bb.apx
  %i.jhv = icmp sgt i32 %i.jhb, 0
  %i.jhw = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1100 to i64 ; 2 uses
  br i1 %i.jhv, label %.preheader30.i170.i1112, label %.loopexit.sink.split.i164.i1106

.preheader30.i170.i1112:                          ; preds = %bb.apz
  %i.jhx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 0
  br i1 %i.jhx, label %.lr.ph36.i171.i1113, label %.loopexit.i167.i1109

.lr.ph36.i171.i1113:                              ; preds = %.preheader30.i170.i1112, %bb.aqh
  %.079.i35.i172.i1114 = phi i64 [ %i.jjg, %bb.aqh ], [ 0, %.preheader30.i170.i1112 ]
  %.2.i34.i173.i1115 = phi i64 [ %i.jjf, %bb.aqh ], [ %.081.i54.i156.i1098, %.preheader30.i170.i1112 ] ; 10 uses
  %i.jhy = load ptr, ptr %i.jfm, align 8, !tbaa !66, !noalias !712 ; 2 uses
  %.not.i21.i174.i1116 = icmp eq ptr %i.jhy, null
  br i1 %.not.i21.i174.i1116, label %bb.aqb, label %bb.aqa

bb.aqa:                                           ; preds = %.lr.ph36.i171.i1113
  %i.jhz = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  %i.jia = add nsw i64 %i.jhz, %.2.i34.i173.i1115 ; 2 uses
  %i.jib = lshr i64 %i.jia, 3
  %i.jic = getelementptr inbounds nuw i8, ptr %i.jhy, i64 %i.jib
  %i.jid = load i8, ptr %i.jic, align 1, !tbaa !98, !noalias !712
  %i.jie = trunc i64 %i.jia to i8
  %i.jif = and i8 %i.jie, 7
  %i.jig = lshr i8 %i.jid, %i.jif
  %i.jih = trunc i8 %i.jig to i1
  br i1 %i.jih, label %bb.aqf, label %bb.aqg

bb.aqb:                                           ; preds = %.lr.ph36.i171.i1113
  %i.jii = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !712
  %i.jij = getelementptr inbounds nuw i8, ptr %i.jii, i64 40
  %i.jik = load i32, ptr %i.jij, align 8, !tbaa !42, !noalias !712
  switch i32 %i.jik, label %bb.aqe [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i1118
    i32 28, label %bb.aqc
    i32 38, label %bb.aqd
  ]

bb.aqc:                                           ; preds = %bb.aqb
  %i.jil = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i1115), !noalias !712
  br i1 %i.jil, label %bb.aqg, label %bb.aqf
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.jkn = load i8, ptr %i.jkm, align 1, !tbaa !98, !noalias !712
  %i.jko = sdiv i64 %.3.i48.i199.i1141, 8
  %i.jkp = getelementptr inbounds i8, ptr %.0.i.i.i153.i1095, i64 %i.jko ; 2 uses
  %i.jkq = load i8, ptr %i.jkp, align 1, !tbaa !98, !noalias !712
  %i.jkr = or i8 %i.jkq, %i.jkn
  store i8 %i.jkr, ptr %i.jkp, align 1, !tbaa !98, !noalias !712
  %i.jks = add nsw i64 %.183.i47.i200.i1142, 1
  br label %bb.aqq

bb.aqp:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i204.i1146, %bb.aqn, %bb.aqm, %bb.aql, %bb.aqj
  %i.jkt = shl nsw i64 %.3.i48.i199.i1141, 4
  %i.jku = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jkt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jku, i8 0, i64 16, i1 false), !noalias !712
  br label %bb.aqq

bb.aqq:                                           ; preds = %bb.aqp, %bb.aqo
  %.284.i.i202.i1144 = phi i64 [ %i.jks, %bb.aqo ], [ %.183.i47.i200.i1142, %bb.aqp ] ; 2 uses
  %i.jkv = add nsw i64 %.3.i48.i199.i1141, 1      ; 2 uses
  %i.jkw = add nuw nsw i64 %.078.i49.i198.i1140, 1 ; 2 uses
  %exitcond66.not.i203.i1145 = icmp eq i64 %i.jkw, %i.jjk
  br i1 %exitcond66.not.i203.i1145, label %.loopexit.i167.i1109, label %.lr.ph50.i197.i1139, !llvm.loop !717

bb.aqr:                                           ; preds = %bb.aqi
  %i.jkx = icmp sgt i32 %i.jjh, 0
  %i.jky = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1100 to i64 ; 2 uses
  br i1 %i.jkx, label %.preheader27.i183.i1125, label %.loopexit.sink.split.i164.i1106

.preheader27.i183.i1125:                          ; preds = %bb.aqr
  %i.jkz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 0
  br i1 %i.jkz, label %.lr.ph44.i184.i1126, label %.loopexit.i167.i1109

.lr.ph44.i184.i1126:                              ; preds = %.preheader27.i183.i1125, %bb.arf
  %.0.i43.i185.i1127 = phi i64 [ %i.jnc, %bb.arf ], [ 0, %.preheader27.i183.i1125 ]
  %.4.i42.i186.i1128 = phi i64 [ %i.jnb, %bb.arf ], [ %.081.i54.i156.i1098, %.preheader27.i183.i1125 ] ; 10 uses
  %.385.i41.i187.i1129 = phi i64 [ %.486.i.i189.i1131, %bb.arf ], [ %.082.i53.i157.i1099, %.preheader27.i183.i1125 ] ; 2 uses
  %i.jla = load ptr, ptr %i.jfm, align 8, !tbaa !66, !noalias !712 ; 2 uses
  %.not.i26.i188.i1130 = icmp eq ptr %i.jla, null
  br i1 %.not.i26.i188.i1130, label %bb.aqt, label %bb.aqs

bb.aqs:                                           ; preds = %.lr.ph44.i184.i1126
  %i.jlb = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  %i.jlc = add nsw i64 %i.jlb, %.4.i42.i186.i1128 ; 2 uses
  %i.jld = lshr i64 %i.jlc, 3
  %i.jle = getelementptr inbounds nuw i8, ptr %i.jla, i64 %i.jld
  %i.jlf = load i8, ptr %i.jle, align 1, !tbaa !98, !noalias !712
  %i.jlg = trunc i64 %i.jlc to i8
  %i.jlh = and i8 %i.jlg, 7
  %i.jli = lshr i8 %i.jlf, %i.jlh
  %i.jlj = trunc i8 %i.jli to i1
  br i1 %i.jlj, label %bb.aqx, label %bb.are

bb.aqt:                                           ; preds = %.lr.ph44.i184.i1126
  %i.jlk = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !712
  %i.jll = getelementptr inbounds nuw i8, ptr %i.jlk, i64 40
  %i.jlm = load i32, ptr %i.jll, align 8, !tbaa !42, !noalias !712
  switch i32 %i.jlm, label %bb.aqw [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136
    i32 28, label %bb.aqu
    i32 38, label %bb.aqv
  ]

bb.aqu:                                           ; preds = %bb.aqt
  %i.jln = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1128), !noalias !712
  br i1 %i.jln, label %bb.are, label %bb.aqx

bb.aqv:                                           ; preds = %bb.aqt
  %i.jlo = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1128), !noalias !712
  br i1 %i.jlo, label %bb.are, label %bb.aqx

bb.aqw:                                           ; preds = %bb.aqt
  %i.jlp = load i64, ptr %i.jgs, align 8, !tbaa !71, !noalias !712
  %i.jlq = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !712
  %.not24.i195.i1137 = icmp eq i64 %i.jlp, %i.jlq
  br i1 %.not24.i195.i1137, label %bb.are, label %bb.aqx

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136: ; preds = %bb.aqt
  %i.jlr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1128), !noalias !712
  br i1 %i.jlr, label %bb.are, label %bb.aqx

bb.aqx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136, %bb.aqw, %bb.aqv, %bb.aqu, %bb.aqs
  %i.jls = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %.4.i42.i186.i1128 ; 2 uses
  %i.jlt = load i64, ptr %i.jls, align 8, !tbaa !130, !noalias !712 ; 4 uses
  %i.jlu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !712 ; 2 uses
  %.not.i29.i191.i1133 = icmp eq ptr %i.jlu, null
  br i1 %.not.i29.i191.i1133, label %bb.aqz, label %bb.aqy

bb.aqy:                                           ; preds = %bb.aqx
  %i.jlv = load i64, ptr %i.jgt, align 8, !tbaa !99, !noalias !712
  %i.jlw = add nsw i64 %i.jlv, %i.jlt             ; 2 uses
  %i.jlx = lshr i64 %i.jlw, 3
  %i.jly = getelementptr inbounds nuw i8, ptr %i.jlu, i64 %i.jlx
  %i.jlz = load i8, ptr %i.jly, align 1, !tbaa !98, !noalias !712
  %i.jma = trunc i64 %i.jlw to i8
  %i.jmb = and i8 %i.jma, 7
  %i.jmc = lshr i8 %i.jlz, %i.jmb
  %i.jmd = trunc i8 %i.jmc to i1
  br i1 %i.jmd, label %bb.ard, label %bb.are

bb.aqz:                                           ; preds = %bb.aqx
  %i.jme = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !712
  %i.jmf = getelementptr inbounds nuw i8, ptr %i.jme, i64 40
  %i.jmg = load i32, ptr %i.jmf, align 8, !tbaa !42, !noalias !712
  switch i32 %i.jmg, label %bb.arc [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134
    i32 28, label %bb.ara
    i32 38, label %bb.arb
  ]

bb.ara:                                           ; preds = %bb.aqz
  %i.jmh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jlt), !noalias !712
  br i1 %i.jmh, label %bb.are, label %bb.ard

bb.arb:                                           ; preds = %bb.aqz
  %i.jmi = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jlt), !noalias !712
  br i1 %i.jmi, label %bb.are, label %bb.ard

bb.arc:                                           ; preds = %bb.aqz
  %i.jmj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !712
  %i.jmk = load i64, ptr %i.jfi, align 8, !tbaa !62, !noalias !712
  %.not25.i193.i1135 = icmp eq i64 %i.jmj, %i.jmk
  br i1 %.not25.i193.i1135, label %bb.are, label %bb.ard

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134: ; preds = %bb.aqz
  %i.jml = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jlt), !noalias !712
  br i1 %i.jml, label %bb.are, label %bb.ard

bb.ard:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134, %bb.arc, %bb.arb, %bb.ara, %bb.aqy
  %i.jmm = shl nsw i64 %.4.i42.i186.i1128, 4
  %i.jmn = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jmm
  %i.jmo = load i64, ptr %i.jls, align 8, !tbaa !130, !noalias !712
  %i.jmp = shl i64 %i.jmo, 4
  %i.jmq = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jmp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jmn, ptr noundef nonnull align 1 dereferenceable(16) %i.jmq, i64 16, i1 false), !noalias !712
  %i.jmr = srem i64 %.4.i42.i186.i1128, 8
  %i.jms = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jmr
  %i.jmt = load i8, ptr %i.jms, align 1, !tbaa !98, !noalias !712
  %i.jmu = sdiv i64 %.4.i42.i186.i1128, 8
  %i.jmv = getelementptr inbounds i8, ptr %.0.i.i.i153.i1095, i64 %i.jmu ; 2 uses
  %i.jmw = load i8, ptr %i.jmv, align 1, !tbaa !98, !noalias !712
  %i.jmx = or i8 %i.jmw, %i.jmt
  store i8 %i.jmx, ptr %i.jmv, align 1, !tbaa !98, !noalias !712
  %i.jmy = add nsw i64 %.385.i41.i187.i1129, 1
  br label %bb.arf

bb.are:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134, %bb.arc, %bb.arb, %bb.ara, %bb.aqy, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136, %bb.aqw, %bb.aqv, %bb.aqu, %bb.aqs
  %i.jmz = shl nsw i64 %.4.i42.i186.i1128, 4
  %i.jna = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jmz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jna, i8 0, i64 16, i1 false), !noalias !712
  br label %bb.arf

bb.arf:                                           ; preds = %bb.are, %bb.ard
  %.486.i.i189.i1131 = phi i64 [ %i.jmy, %bb.ard ], [ %.385.i41.i187.i1129, %bb.are ] ; 2 uses
  %i.jnb = add nsw i64 %.4.i42.i186.i1128, 1      ; 2 uses
  %i.jnc = add nuw nsw i64 %.0.i43.i185.i1127, 1  ; 2 uses
  %exitcond65.not.i190.i1132 = icmp eq i64 %i.jnc, %i.jky
  br i1 %exitcond65.not.i190.i1132, label %.loopexit.i167.i1109, label %.lr.ph44.i184.i1126, !llvm.loop !718

.loopexit.sink.split.i164.i1106:                  ; preds = %bb.aqr, %bb.apz
  %.sink86.i165.i1107 = phi i64 [ %i.jhw, %bb.apz ], [ %i.jky, %bb.aqr ] ; 2 uses
  %.587.i.ph.i166.i1108 = phi i64 [ %i.jha, %bb.apz ], [ %.082.i53.i157.i1099, %bb.aqr ]
  %i.jnd = shl nsw i64 %.081.i54.i156.i1098, 4
  %i.jne = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jnd
  %i.jnf = shl nsw i64 %.sink86.i165.i1107, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.jne, i8 0, i64 %i.jnf, i1 false), !noalias !712
  %i.jng = add nsw i64 %.sink86.i165.i1107, %.081.i54.i156.i1098
  br label %.loopexit.i167.i1109

.loopexit.i167.i1109.loopexit3253.unr-lcssa:      ; preds = %.lr.ph39.i178.i1120
  %i.jnh = and i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 1
  %lcmp.mod3393.not = icmp eq i16 %i.jnh, 0
  br i1 %lcmp.mod3393.not, label %.loopexit.i167.i1109, label %.lr.ph39.i178.i1120.epil.preheader

.lr.ph39.i178.i1120.epil.preheader:               ; preds = %.loopexit.i167.i1109.loopexit3253.unr-lcssa, %.lr.ph39.i178.i1120.preheader
  %.1.i37.i180.i1122.epil.init = phi i64 [ %.081.i54.i156.i1098, %.lr.ph39.i178.i1120.preheader ], [ %i.jhu, %.loopexit.i167.i1109.loopexit3253.unr-lcssa ] ; 3 uses
  %lcmp.mod3395 = trunc i32 %i.jgu to i1
  call void @llvm.assume(i1 %lcmp.mod3395)
  %i.jni = shl nsw i64 %.1.i37.i180.i1122.epil.init, 4
  %i.jnj = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jni
  %i.jnk = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %.1.i37.i180.i1122.epil.init
  %i.jnl = load i64, ptr %i.jnk, align 8, !tbaa !130, !noalias !712
  %i.jnm = shl i64 %i.jnl, 4
  %i.jnn = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jnm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jnj, ptr noundef nonnull align 1 dereferenceable(16) %i.jnn, i64 16, i1 false), !noalias !712
  %i.jno = add nsw i64 %.1.i37.i180.i1122.epil.init, 1
  br label %.loopexit.i167.i1109

.loopexit.i167.i1109:                             ; preds = %bb.aqh, %.lr.ph39.i178.i1120.epil.preheader, %.loopexit.i167.i1109.loopexit3253.unr-lcssa, %bb.arf, %bb.aqq, %.loopexit.sink.split.i164.i1106, %.preheader27.i183.i1125, %.preheader.i196.i1138, %.preheader30.i170.i1112, %bb.apy
  %.587.i.i168.i1110 = phi i64 [ %.587.i.ph.i166.i1108, %.loopexit.sink.split.i164.i1106 ], [ %i.jha, %bb.apy ], [ %.486.i.i189.i1131, %bb.arf ], [ %i.jha, %.lr.ph39.i178.i1120.epil.preheader ], [ %i.jha, %.preheader30.i170.i1112 ], [ %.082.i53.i157.i1099, %.preheader.i196.i1138 ], [ %.082.i53.i157.i1099, %.preheader27.i183.i1125 ], [ %.284.i.i202.i1144, %bb.aqq ], [ %i.jha, %.loopexit.i167.i1109.loopexit3253.unr-lcssa ], [ %i.jha, %bb.aqh ] ; 2 uses
  %.5.i.i169.i1111 = phi i64 [ %i.jng, %.loopexit.sink.split.i164.i1106 ], [ %.081.i54.i156.i1098, %bb.apy ], [ %i.jnb, %bb.arf ], [ %i.jno, %.lr.ph39.i178.i1120.epil.preheader ], [ %.081.i54.i156.i1098, %.preheader30.i170.i1112 ], [ %.081.i54.i156.i1098, %.preheader.i196.i1138 ], [ %.081.i54.i156.i1098, %.preheader27.i183.i1125 ], [ %i.jkv, %bb.aqq ], [ %i.jhu, %.loopexit.i167.i1109.loopexit3253.unr-lcssa ], [ %i.jjf, %bb.aqh ] ; 2 uses
  %i.jnp = icmp slt i64 %.5.i.i169.i1111, %i.jfj
  br i1 %i.jnp, label %bb.apw, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !719

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i1109, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094
  %.082.i.lcssa.i154.i1096 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094 ], [ %.587.i.i168.i1110, %.loopexit.i167.i1109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !712
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1090:                                ; preds = %.lr.ph.i148.i1090, %.lr.ph.i148.i1090.preheader.new
  %.0.i1833.i149.i1091 = phi i64 [ 0, %.lr.ph.i148.i1090.preheader.new ], [ %i.jod, %.lr.ph.i148.i1090 ] ; 4 uses
  %niter3391 = phi i64 [ 0, %.lr.ph.i148.i1090.preheader.new ], [ %niter3391.next.1, %.lr.ph.i148.i1090 ]
  %i.jnq = shl nsw i64 %.0.i1833.i149.i1091, 4
  %i.jnr = getelementptr inbounds nuw i8, ptr %i.jfh, i64 %i.jnq
  %i.jns = getelementptr inbounds nuw [8 x i8], ptr %i.jfp, i64 %.0.i1833.i149.i1091
  %i.jnt = load i64, ptr %i.jns, align 8, !tbaa !130, !noalias !712
  %i.jnu = shl i64 %i.jnt, 4
  %i.jnv = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jnu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jnr, ptr noundef nonnull align 1 dereferenceable(16) %i.jnv, i64 16, i1 false), !noalias !712
  %i.jnw = or disjoint i64 %.0.i1833.i149.i1091, 1 ; 2 uses
  %i.jnx = shl nsw i64 %i.jnw, 4
  %i.jny = getelementptr inbounds nuw i8, ptr %i.jfh, i64 %i.jnx
  %i.jnz = getelementptr inbounds nuw [8 x i8], ptr %i.jfp, i64 %i.jnw
  %i.joa = load i64, ptr %i.jnz, align 8, !tbaa !130, !noalias !712
  %i.job = shl i64 %i.joa, 4
  %i.joc = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.job
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jny, ptr noundef nonnull align 1 dereferenceable(16) %i.joc, i64 16, i1 false), !noalias !712
  %i.jod = add nuw nsw i64 %.0.i1833.i149.i1091, 2 ; 2 uses
  %niter3391.next.1 = add i64 %niter3391, 2       ; 2 uses
  %niter3391.ncmp.1 = icmp eq i64 %niter3391.next.1, %unroll_iter3390
  br i1 %niter3391.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i1090, !llvm.loop !720

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i1090
  %lcmp.mod3388.not = icmp eq i64 %xtraiter3387, 0
  br i1 %lcmp.mod3388.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i1090.epil.preheader

.lr.ph.i148.i1090.epil.preheader:                 ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i1090.preheader
  %.0.i1833.i149.i1091.epil.init = phi i64 [ 0, %.lr.ph.i148.i1090.preheader ], [ %i.jod, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3389 = trunc i64 %i.jfj to i1
  call void @llvm.assume(i1 %lcmp.mod3389)
  %i.joe = shl nsw i64 %.0.i1833.i149.i1091.epil.init, 4
  %i.jof = getelementptr inbounds nuw i8, ptr %i.jfh, i64 %i.joe
  %i.jog = getelementptr inbounds nuw [8 x i8], ptr %i.jfp, i64 %.0.i1833.i149.i1091.epil.init
  %i.joh = load i64, ptr %i.jog, align 8, !tbaa !130, !noalias !712
  %i.joi = shl i64 %i.joh, 4
  %i.joj = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.joi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jof, ptr noundef nonnull align 1 dereferenceable(16) %i.joj, i64 16, i1 false), !noalias !712
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa: ; preds = %.lr.ph.i.i1029
  %lcmp.mod3377.not = icmp eq i64 %xtraiter3376, 0
  br i1 %lcmp.mod3377.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i1029.epil.preheader

.lr.ph.i.i1029.epil.preheader:                    ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa, %.lr.ph.i.i1029.preheader
  %.0.i1833.i.i1030.epil.init = phi i64 [ 0, %.lr.ph.i.i1029.preheader ], [ %i.ilr, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa ] ; 2 uses
  %lcmp.mod3378 = trunc i64 %i.icn to i1
  call void @llvm.assume(i1 %lcmp.mod3378)
  %i.jok = shl nsw i64 %.0.i1833.i.i1030.epil.init, 4
  %i.jol = getelementptr inbounds nuw i8, ptr %i.icl, i64 %i.jok
  %i.jom = getelementptr inbounds nuw i8, ptr %i.ict, i64 %.0.i1833.i.i1030.epil.init
  %i.jon = load i8, ptr %i.jom, align 1, !tbaa !98, !noalias !685
  %i.joo = zext i8 %i.jon to i64
  %i.jop = shl nuw nsw i64 %i.joo, 4
  %i.joq = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.jop
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jol, ptr noundef nonnull align 1 dereferenceable(16) %i.joq, i64 16, i1 false), !noalias !685
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa: ; preds = %.lr.ph.i24.i968
  %lcmp.mod3366.not = icmp eq i64 %xtraiter3365, 0
  br i1 %lcmp.mod3366.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i968.epil.preheader

.lr.ph.i24.i968.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa, %.lr.ph.i24.i968.preheader
  %.0.i1833.i25.i969.epil.init = phi i64 [ 0, %.lr.ph.i24.i968.preheader ], [ %i.ivh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa ] ; 2 uses
  %lcmp.mod3367 = trunc i64 %i.imd to i1
  call void @llvm.assume(i1 %lcmp.mod3367)
  %i.jor = shl nsw i64 %.0.i1833.i25.i969.epil.init, 4
  %i.jos = getelementptr inbounds nuw i8, ptr %i.imb, i64 %i.jor
  %i.jot = getelementptr inbounds nuw [2 x i8], ptr %i.imj, i64 %.0.i1833.i25.i969.epil.init
  %i.jou = load i16, ptr %i.jot, align 2, !tbaa !269, !noalias !694
  %i.jov = zext i16 %i.jou to i64
  %i.jow = shl nuw nsw i64 %i.jov, 4
  %i.jox = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.jow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jos, ptr noundef nonnull align 1 dereferenceable(16) %i.jox, i64 16, i1 false), !noalias !694
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa: ; preds = %.lr.ph.i86.i907
  %lcmp.mod3355.not = icmp eq i64 %xtraiter3354, 0
  br i1 %lcmp.mod3355.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i907.epil.preheader

.lr.ph.i86.i907.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa, %.lr.ph.i86.i907.preheader
  %.0.i1833.i87.i908.epil.init = phi i64 [ 0, %.lr.ph.i86.i907.preheader ], [ %i.jex, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa ] ; 2 uses
  %lcmp.mod3356 = trunc i64 %i.ivt to i1
  call void @llvm.assume(i1 %lcmp.mod3356)
  %i.joy = shl nsw i64 %.0.i1833.i87.i908.epil.init, 4
  %i.joz = getelementptr inbounds nuw i8, ptr %i.ivr, i64 %i.joy
  %i.jpa = getelementptr inbounds nuw [4 x i8], ptr %i.ivz, i64 %.0.i1833.i87.i908.epil.init
  %i.jpb = load i32, ptr %i.jpa, align 4, !tbaa !3, !noalias !703
  %i.jpc = shl i32 %i.jpb, 4
  %i.jpd = zext i32 %i.jpc to i64
  %i.jpe = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jpd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.joz, ptr noundef nonnull align 1 dereferenceable(16) %i.jpe, i64 16, i1 false), !noalias !703
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i907.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa, %.lr.ph.i24.i968.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa, %.lr.ph.i.i1029.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa, %.lr.ph.i148.i1090.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i1028, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i967, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i905, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i1089, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i906 = phi i64 [ %i.imd, %.lr.ph.i24.i968.epil.preheader ], [ %i.icn, %.lr.ph.i.i1029.epil.preheader ], [ %i.jfj, %.lr.ph.i148.i1090.epil.preheader ], [ %.082.i.lcssa.i.i1035, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.icn, %.preheader32.i.i1028 ], [ %.082.i.lcssa.i30.i974, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.imd, %.preheader32.i22.i967 ], [ %.082.i.lcssa.i92.i913, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.ivt, %.preheader32.i84.i905 ], [ %.082.i.lcssa.i154.i1096, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.jfj, %.preheader32.i146.i1089 ], [ %i.jfj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.icn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa ], [ %i.imd, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa ], [ %i.ivt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa ], [ %i.ivt, %.lr.ph.i86.i907.epil.preheader ]
  %i.jpf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.jpg = load i64, ptr %i.jpf, align 8, !tbaa !178, !noalias !681
  %i.jph = sub nsw i64 %i.jpg, %.0.i147.sink.i906
  %i.jpi = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.jph, ptr %i.jpi seq_cst, align 8, !noalias !681
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !681
  br label %.critedge69

bb.arg:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.jpj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !721 ; 2 uses
  %i.jpk = load ptr, ptr %i.jpj, align 8, !tbaa !90, !noalias !721
  %i.jpl = getelementptr inbounds nuw i8, ptr %i.jpk, i64 64
  %i.jpm = load ptr, ptr %i.jpl, align 8, !noalias !721
  %i.jpn = call noundef i32 %i.jpm(ptr noundef nonnull align 8 dereferenceable(72) %i.jpj), !noalias !721, !inline_history !724
  %i.jpo = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !721
  %.not.i.i144.i1332 = icmp ne i64 %i.jpo, 0
  %i.jpp = load ptr, ptr %i.v, align 8, !noalias !721
  %i.jpq = icmp ne ptr %i.jpp, null
  %i.jpr = select i1 %.not.i.i144.i1332, i1 %i.jpq, i1 false ; 4 uses
  switch i32 %i.jpn, label %bb.awa [
    i32 1, label %bb.arh
    i32 2, label %bb.asw
    i32 4, label %bb.aul
  ]

bb.arh:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.arj, label %bb.ari

bb.ari:                                           ; preds = %bb.arh
  %i.jps = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.jpt = load i64, ptr %i.jps, align 8, !tbaa !71, !noalias !725
  %.not.i19.i.i1272 = icmp ne i64 %i.jpt, 0
  %i.jpu = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jpv = load ptr, ptr %i.jpu, align 8, !noalias !725
  %i.jpw = icmp ne ptr %i.jpv, null
  %i.jpx = select i1 %.not.i19.i.i1272, i1 %i.jpw, i1 false
  br label %bb.arj

bb.arj:                                           ; preds = %bb.ari, %bb.arh
  %i.jpy = phi i1 [ true, %bb.arh ], [ %i.jpx, %bb.ari ]
  %i.jpz = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !725
  %i.jqa = extractvalue { i32, ptr } %i.jpz, 1    ; 9 uses
  %i.jqb = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !725 ; 13 uses
  %i.jqc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jqd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !725 ; 11 uses
  %i.jqe = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.jqf = load i64, ptr %i.jqe, align 8, !tbaa !99, !noalias !725
  %i.jqg = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.jqh = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jqi = load ptr, ptr %i.jqh, align 8, !tbaa !66, !noalias !725
  %i.jqj = getelementptr inbounds i8, ptr %i.jqi, i64 %i.jqf ; 9 uses
  br i1 %i.jpy, label %bb.ark, label %.preheader32.i.i1273

.preheader32.i.i1273:                             ; preds = %bb.arj
  %i.jqk = icmp sgt i64 %i.jqd, 0
  br i1 %i.jqk, label %.lr.ph.i.i1274.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1274.preheader:                         ; preds = %.preheader32.i.i1273
  %xtraiter3332 = and i64 %i.jqd, 1
  %i.jql = icmp eq i64 %i.jqd, 1
  br i1 %i.jql, label %.lr.ph.i.i1274.epil.preheader, label %.lr.ph.i.i1274.preheader.new

.lr.ph.i.i1274.preheader.new:                     ; preds = %.lr.ph.i.i1274.preheader
  %unroll_iter3335 = and i64 %i.jqd, 9223372036854775806
  br label %.lr.ph.i.i1274

bb.ark:                                           ; preds = %bb.arj
  %i.jqm = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.jqn = load ptr, ptr %i.jqm, align 8, !tbaa !171, !noalias !725
  %i.jqo = load ptr, ptr %i.jqn, align 8, !tbaa !306, !noalias !725 ; 4 uses
  %.not.i.i.i.i1277 = icmp eq ptr %i.jqo, null
  br i1 %.not.i.i.i.i1277, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278, label %bb.arl

bb.arl:                                           ; preds = %bb.ark
  %i.jqp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.jqq = load i64, ptr %i.jqp, align 8, !tbaa !438, !noalias !725
  %i.jqr = getelementptr inbounds nuw i8, ptr %i.jqo, i64 9
  %i.jqs = load i8, ptr %i.jqr, align 1, !tbaa !439, !range !127, !noalias !725, !noundef !128
  %i.jqt = trunc nuw i8 %i.jqs to i1
  %i.jqu = getelementptr inbounds nuw i8, ptr %i.jqo, i64 8
  %i.jqv = load i8, ptr %i.jqu, align 8, !range !127, !noalias !725
  %i.jqw = trunc nuw i8 %i.jqv to i1
  %i.jqx = select i1 %i.jqt, i1 %i.jqw, i1 false, !prof !117
  %i.jqy = getelementptr inbounds nuw i8, ptr %i.jqo, i64 16
  %i.jqz = load ptr, ptr %i.jqy, align 8, !noalias !725
  %i.jra = select i1 %i.jqx, ptr %i.jqz, ptr null, !prof !117
  %i.jrb = getelementptr inbounds i8, ptr %i.jra, i64 %i.jqq
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278: ; preds = %bb.arl, %bb.ark
  %.0.i.i.i.i1279 = phi ptr [ %i.jrb, %bb.arl ], [ null, %bb.ark ] ; 5 uses
  %i.jrc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.jrd = load i64, ptr %i.jrc, align 8, !tbaa !178, !noalias !725 ; 2 uses
  %i.jre = ashr i64 %i.jrd, 3
  %i.jrf = and i64 %i.jrd, 7
  %i.jrg = icmp ne i64 %i.jrf, 0
  %i.jrh = zext i1 %i.jrg to i64
  %i.jri = add nsw i64 %i.jre, %i.jrh
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i1279, i8 0, i64 %i.jri, i1 false), !noalias !725
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !725
  %i.jrj = load ptr, ptr %i.jqg, align 8, !tbaa !66, !noalias !725
  %i.jrk = load i64, ptr %i.jqe, align 8, !tbaa !99, !noalias !725
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.jrj, i64 noundef %i.jrk, i64 noundef %i.jqd), !noalias !725
  %i.jrl = icmp sgt i64 %i.jqd, 0
  br i1 %i.jrl, label %.lr.ph55.i.i1281, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i1281:                                 ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278
  %i.jrm = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.jrn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.arm

bb.arm:                                           ; preds = %.loopexit.i.i1293, %.lr.ph55.i.i1281
  %.081.i54.i.i1282 = phi i64 [ 0, %.lr.ph55.i.i1281 ], [ %.5.i.i.i1295, %.loopexit.i.i1293 ] ; 12 uses
  %.082.i53.i.i1283 = phi i64 [ 0, %.lr.ph55.i.i1281 ], [ %.587.i.i.i1294, %.loopexit.i.i1293 ] ; 6 uses
  %i.jro = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %11), !noalias !725 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i1284 = trunc i32 %i.jro to i16 ; 10 uses
  %i.jrp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !725
  %.not.i20.i.i1285 = icmp ne i64 %i.jrp, 0
  %i.jrq = load ptr, ptr %i.v, align 8, !noalias !725
  %i.jrr = icmp ne ptr %i.jrq, null
  %i.jrs = select i1 %.not.i20.i.i1285, i1 %i.jrr, i1 false
  br i1 %i.jrs, label %bb.ary, label %bb.arn

bb.arn:                                           ; preds = %bb.arm
  %.sroa.14.0.extract.shift.i.i.i1286 = lshr i32 %i.jro, 16
  %.sroa.14.0.extract.trunc.i.i.i1287 = zext nneg i32 %.sroa.14.0.extract.shift.i.i.i1286 to i64
  %sext91.i.i.i1288 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i.i1287, 48
  %i.jrt = ashr exact i64 %sext91.i.i.i1288, 48
  %i.jru = add nsw i64 %i.jrt, %.082.i53.i.i1283  ; 6 uses
  %i.jrv = ashr i32 %i.jro, 16                    ; 2 uses
  %sext.i.i.i1289 = shl i32 %i.jro, 16
  %i.jrw = ashr exact i32 %sext.i.i.i1289, 16
  %i.jrx = icmp eq i32 %i.jrv, %i.jrw
  br i1 %i.jrx, label %bb.aro, label %bb.arp

bb.aro:                                           ; preds = %bb.arn
  %i.jry = sext i16 %.sroa.0.0.extract.trunc.i.i.i1284 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i.i1279, i64 noundef %.081.i54.i.i1282, i64 noundef %i.jry, i1 noundef zeroext true), !noalias !725
  %i.jrz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1284, 0
  br i1 %i.jrz, label %.lr.ph39.i.i1304.preheader, label %.loopexit.i.i1293

.lr.ph39.i.i1304.preheader:                       ; preds = %bb.aro
  %i.jsa = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i1284, 1
  br i1 %i.jsa, label %.lr.ph39.i.i1304.epil.preheader, label %.lr.ph39.i.i1304.preheader.new

.lr.ph39.i.i1304.preheader.new:                   ; preds = %.lr.ph39.i.i1304.preheader
  %unroll_iter3341 = and i64 %i.jry, 32766
  br label %.lr.ph39.i.i1304

.lr.ph39.i.i1304:                                 ; preds = %.lr.ph39.i.i1304, %.lr.ph39.i.i1304.preheader.new
  %.1.i37.i.i1306 = phi i64 [ %.081.i54.i.i1282, %.lr.ph39.i.i1304.preheader.new ], [ %i.jsq, %.lr.ph39.i.i1304 ] ; 4 uses
  %niter3342 = phi i64 [ 0, %.lr.ph39.i.i1304.preheader.new ], [ %niter3342.next.1, %.lr.ph39.i.i1304 ]
  %i.jsb = shl nsw i64 %.1.i37.i.i1306, 5
  %i.jsc = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jsb
  %i.jsd = getelementptr inbounds i8, ptr %i.jqj, i64 %.1.i37.i.i1306
  %i.jse = load i8, ptr %i.jsd, align 1, !tbaa !98, !noalias !725
  %i.jsf = zext i8 %i.jse to i64
  %i.jsg = shl nuw nsw i64 %i.jsf, 5
  %i.jsh = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jsg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jsc, ptr noundef nonnull align 1 dereferenceable(32) %i.jsh, i64 32, i1 false), !noalias !725
  %i.jsi = add nsw i64 %.1.i37.i.i1306, 1         ; 2 uses
  %i.jsj = shl nsw i64 %i.jsi, 5
  %i.jsk = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jsj
  %i.jsl = getelementptr inbounds i8, ptr %i.jqj, i64 %i.jsi
  %i.jsm = load i8, ptr %i.jsl, align 1, !tbaa !98, !noalias !725
  %i.jsn = zext i8 %i.jsm to i64
  %i.jso = shl nuw nsw i64 %i.jsn, 5
  %i.jsp = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jso
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jsk, ptr noundef nonnull align 1 dereferenceable(32) %i.jsp, i64 32, i1 false), !noalias !725
  %i.jsq = add nsw i64 %.1.i37.i.i1306, 2         ; 3 uses
  %niter3342.next.1 = add i64 %niter3342, 2       ; 2 uses
  %niter3342.ncmp.1 = icmp eq i64 %niter3342.next.1, %unroll_iter3341
  br i1 %niter3342.ncmp.1, label %.loopexit.i.i1293.loopexit3291.unr-lcssa, label %.lr.ph39.i.i1304, !llvm.loop !728

bb.arp:                                           ; preds = %bb.arn
  %i.jsr = icmp sgt i32 %i.jrv, 0
  %i.jss = sext i16 %.sroa.0.0.extract.trunc.i.i.i1284 to i64 ; 2 uses
  br i1 %i.jsr, label %.preheader30.i.i1296, label %.loopexit.sink.split.i.i1290

.preheader30.i.i1296:                             ; preds = %bb.arp
  %i.jst = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1284, 0
  br i1 %i.jst, label %.lr.ph36.i.i1297, label %.loopexit.i.i1293

.lr.ph36.i.i1297:                                 ; preds = %.preheader30.i.i1296, %bb.arx
  %.079.i35.i.i1298 = phi i64 [ %i.jud, %bb.arx ], [ 0, %.preheader30.i.i1296 ]
  %.2.i34.i.i1299 = phi i64 [ %i.juc, %bb.arx ], [ %.081.i54.i.i1282, %.preheader30.i.i1296 ] ; 10 uses
  %i.jsu = load ptr, ptr %i.jqg, align 8, !tbaa !66, !noalias !725 ; 2 uses
  %.not.i21.i.i1300 = icmp eq ptr %i.jsu, null
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.jvp = load i8, ptr %i.jvo, align 1, !tbaa !98, !noalias !725
  %i.jvq = or i8 %i.jvp, %i.jvm
  store i8 %i.jvq, ptr %i.jvo, align 1, !tbaa !98, !noalias !725
  %i.jvr = add nsw i64 %.183.i47.i.i1326, 1
  br label %bb.asg

bb.asf:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i.i1330, %bb.asd, %bb.asc, %bb.asb, %bb.arz
  %i.jvs = shl nsw i64 %.3.i48.i.i1325, 5
  %i.jvt = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jvs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jvt, i8 0, i64 32, i1 false), !noalias !725
  br label %bb.asg

bb.asg:                                           ; preds = %bb.asf, %bb.ase
  %.284.i.i.i1328 = phi i64 [ %i.jvr, %bb.ase ], [ %.183.i47.i.i1326, %bb.asf ] ; 2 uses
  %i.jvu = add nsw i64 %.3.i48.i.i1325, 1         ; 2 uses
  %i.jvv = add nuw nsw i64 %.078.i49.i.i1324, 1   ; 2 uses
  %exitcond66.not.i.i1329 = icmp eq i64 %i.jvv, %i.juh
  br i1 %exitcond66.not.i.i1329, label %.loopexit.i.i1293, label %.lr.ph50.i.i1323, !llvm.loop !730

bb.ash:                                           ; preds = %bb.ary
  %i.jvw = icmp sgt i32 %i.jue, 0
  %i.jvx = sext i16 %.sroa.0.0.extract.trunc.i.i.i1284 to i64 ; 2 uses
  br i1 %i.jvw, label %.preheader27.i.i1309, label %.loopexit.sink.split.i.i1290

.preheader27.i.i1309:                             ; preds = %bb.ash
  %i.jvy = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1284, 0
  br i1 %i.jvy, label %.lr.ph44.i.i1310, label %.loopexit.i.i1293

.lr.ph44.i.i1310:                                 ; preds = %.preheader27.i.i1309, %bb.asv
  %.0.i43.i.i1311 = phi i64 [ %i.jyd, %bb.asv ], [ 0, %.preheader27.i.i1309 ]
  %.4.i42.i.i1312 = phi i64 [ %i.jyc, %bb.asv ], [ %.081.i54.i.i1282, %.preheader27.i.i1309 ] ; 10 uses
  %.385.i41.i.i1313 = phi i64 [ %.486.i.i.i1315, %bb.asv ], [ %.082.i53.i.i1283, %.preheader27.i.i1309 ] ; 2 uses
  %i.jvz = load ptr, ptr %i.jqg, align 8, !tbaa !66, !noalias !725 ; 2 uses
  %.not.i26.i.i1314 = icmp eq ptr %i.jvz, null
  br i1 %.not.i26.i.i1314, label %bb.asj, label %bb.asi

bb.asi:                                           ; preds = %.lr.ph44.i.i1310
  %i.jwa = load i64, ptr %i.jqe, align 8, !tbaa !99, !noalias !725
  %i.jwb = add nsw i64 %i.jwa, %.4.i42.i.i1312    ; 2 uses
  %i.jwc = lshr i64 %i.jwb, 3
  %i.jwd = getelementptr inbounds nuw i8, ptr %i.jvz, i64 %i.jwc
  %i.jwe = load i8, ptr %i.jwd, align 1, !tbaa !98, !noalias !725
  %i.jwf = trunc i64 %i.jwb to i8
  %i.jwg = and i8 %i.jwf, 7
  %i.jwh = lshr i8 %i.jwe, %i.jwg
  %i.jwi = trunc i8 %i.jwh to i1
  br i1 %i.jwi, label %bb.asn, label %bb.asu

bb.asj:                                           ; preds = %.lr.ph44.i.i1310
  %i.jwj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !725
  %i.jwk = getelementptr inbounds nuw i8, ptr %i.jwj, i64 40
  %i.jwl = load i32, ptr %i.jwk, align 8, !tbaa !42, !noalias !725
  switch i32 %i.jwl, label %bb.asm [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320
    i32 28, label %bb.ask
    i32 38, label %bb.asl
  ]

bb.ask:                                           ; preds = %bb.asj
  %i.jwm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1312), !noalias !725
  br i1 %i.jwm, label %bb.asu, label %bb.asn

bb.asl:                                           ; preds = %bb.asj
  %i.jwn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1312), !noalias !725
  br i1 %i.jwn, label %bb.asu, label %bb.asn

bb.asm:                                           ; preds = %bb.asj
  %i.jwo = load i64, ptr %i.jrm, align 8, !tbaa !71, !noalias !725
  %i.jwp = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !725
  %.not24.i.i1321 = icmp eq i64 %i.jwo, %i.jwp
  br i1 %.not24.i.i1321, label %bb.asu, label %bb.asn

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320:    ; preds = %bb.asj
  %i.jwq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1312), !noalias !725
  br i1 %i.jwq, label %bb.asu, label %bb.asn

bb.asn:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320, %bb.asm, %bb.asl, %bb.ask, %bb.asi
  %i.jwr = getelementptr inbounds i8, ptr %i.jqj, i64 %.4.i42.i.i1312 ; 2 uses
  %i.jws = load i8, ptr %i.jwr, align 1, !tbaa !98, !noalias !725
  %i.jwt = zext i8 %i.jws to i64                  ; 4 uses
  %i.jwu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !725 ; 2 uses
  %.not.i29.i.i1317 = icmp eq ptr %i.jwu, null
  br i1 %.not.i29.i.i1317, label %bb.asp, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  %i.jwv = load i64, ptr %i.jrn, align 8, !tbaa !99, !noalias !725
  %i.jww = add nsw i64 %i.jwv, %i.jwt             ; 2 uses
  %i.jwx = lshr i64 %i.jww, 3
  %i.jwy = getelementptr inbounds nuw i8, ptr %i.jwu, i64 %i.jwx
  %i.jwz = load i8, ptr %i.jwy, align 1, !tbaa !98, !noalias !725
  %i.jxa = trunc i64 %i.jww to i8
  %i.jxb = and i8 %i.jxa, 7
  %i.jxc = lshr i8 %i.jwz, %i.jxb
  %i.jxd = trunc i8 %i.jxc to i1
  br i1 %i.jxd, label %bb.ast, label %bb.asu

bb.asp:                                           ; preds = %bb.asn
  %i.jxe = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !725
  %i.jxf = getelementptr inbounds nuw i8, ptr %i.jxe, i64 40
  %i.jxg = load i32, ptr %i.jxf, align 8, !tbaa !42, !noalias !725
  switch i32 %i.jxg, label %bb.ass [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318
    i32 28, label %bb.asq
    i32 38, label %bb.asr
  ]

bb.asq:                                           ; preds = %bb.asp
  %i.jxh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jwt), !noalias !725
  br i1 %i.jxh, label %bb.asu, label %bb.ast

bb.asr:                                           ; preds = %bb.asp
  %i.jxi = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jwt), !noalias !725
  br i1 %i.jxi, label %bb.asu, label %bb.ast

bb.ass:                                           ; preds = %bb.asp
  %i.jxj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !725
  %i.jxk = load i64, ptr %i.jqc, align 8, !tbaa !62, !noalias !725
  %.not25.i.i1319 = icmp eq i64 %i.jxj, %i.jxk
  br i1 %.not25.i.i1319, label %bb.asu, label %bb.ast

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318:    ; preds = %bb.asp
  %i.jxl = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jwt), !noalias !725
  br i1 %i.jxl, label %bb.asu, label %bb.ast

bb.ast:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318, %bb.ass, %bb.asr, %bb.asq, %bb.aso
  %i.jxm = shl nsw i64 %.4.i42.i.i1312, 5
  %i.jxn = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jxm
  %i.jxo = load i8, ptr %i.jwr, align 1, !tbaa !98, !noalias !725
  %i.jxp = zext i8 %i.jxo to i64
  %i.jxq = shl nuw nsw i64 %i.jxp, 5
  %i.jxr = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jxq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jxn, ptr noundef nonnull align 1 dereferenceable(32) %i.jxr, i64 32, i1 false), !noalias !725
  %i.jxs = srem i64 %.4.i42.i.i1312, 8
  %i.jxt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jxs
  %i.jxu = load i8, ptr %i.jxt, align 1, !tbaa !98, !noalias !725
  %i.jxv = sdiv i64 %.4.i42.i.i1312, 8
  %i.jxw = getelementptr inbounds i8, ptr %.0.i.i.i.i1279, i64 %i.jxv ; 2 uses
  %i.jxx = load i8, ptr %i.jxw, align 1, !tbaa !98, !noalias !725
  %i.jxy = or i8 %i.jxx, %i.jxu
  store i8 %i.jxy, ptr %i.jxw, align 1, !tbaa !98, !noalias !725
  %i.jxz = add nsw i64 %.385.i41.i.i1313, 1
  br label %bb.asv

bb.asu:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318, %bb.ass, %bb.asr, %bb.asq, %bb.aso, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320, %bb.asm, %bb.asl, %bb.ask, %bb.asi
  %i.jya = shl nsw i64 %.4.i42.i.i1312, 5
  %i.jyb = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jya
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jyb, i8 0, i64 32, i1 false), !noalias !725
  br label %bb.asv

bb.asv:                                           ; preds = %bb.asu, %bb.ast
  %.486.i.i.i1315 = phi i64 [ %i.jxz, %bb.ast ], [ %.385.i41.i.i1313, %bb.asu ] ; 2 uses
  %i.jyc = add nsw i64 %.4.i42.i.i1312, 1         ; 2 uses
  %i.jyd = add nuw nsw i64 %.0.i43.i.i1311, 1     ; 2 uses
  %exitcond65.not.i.i1316 = icmp eq i64 %i.jyd, %i.jvx
  br i1 %exitcond65.not.i.i1316, label %.loopexit.i.i1293, label %.lr.ph44.i.i1310, !llvm.loop !731

.loopexit.sink.split.i.i1290:                     ; preds = %bb.ash, %bb.arp
  %.sink86.i.i1291 = phi i64 [ %i.jss, %bb.arp ], [ %i.jvx, %bb.ash ] ; 2 uses
  %.587.i.ph.i.i1292 = phi i64 [ %i.jru, %bb.arp ], [ %.082.i53.i.i1283, %bb.ash ]
  %i.jye = shl nsw i64 %.081.i54.i.i1282, 5
  %i.jyf = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jye
  %i.jyg = shl nsw i64 %.sink86.i.i1291, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.jyf, i8 0, i64 %i.jyg, i1 false), !noalias !725
  %i.jyh = add nsw i64 %.sink86.i.i1291, %.081.i54.i.i1282
  br label %.loopexit.i.i1293

.loopexit.i.i1293.loopexit3291.unr-lcssa:         ; preds = %.lr.ph39.i.i1304
  %i.jyi = and i16 %.sroa.0.0.extract.trunc.i.i.i1284, 1
  %lcmp.mod3338.not = icmp eq i16 %i.jyi, 0
  br i1 %lcmp.mod3338.not, label %.loopexit.i.i1293, label %.lr.ph39.i.i1304.epil.preheader

.lr.ph39.i.i1304.epil.preheader:                  ; preds = %.loopexit.i.i1293.loopexit3291.unr-lcssa, %.lr.ph39.i.i1304.preheader
  %.1.i37.i.i1306.epil.init = phi i64 [ %.081.i54.i.i1282, %.lr.ph39.i.i1304.preheader ], [ %i.jsq, %.loopexit.i.i1293.loopexit3291.unr-lcssa ] ; 3 uses
  %lcmp.mod3340 = trunc i32 %i.jro to i1
  call void @llvm.assume(i1 %lcmp.mod3340)
  %i.jyj = shl nsw i64 %.1.i37.i.i1306.epil.init, 5
  %i.jyk = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jyj
  %i.jyl = getelementptr inbounds i8, ptr %i.jqj, i64 %.1.i37.i.i1306.epil.init
  %i.jym = load i8, ptr %i.jyl, align 1, !tbaa !98, !noalias !725
  %i.jyn = zext i8 %i.jym to i64
  %i.jyo = shl nuw nsw i64 %i.jyn, 5
  %i.jyp = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jyo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jyk, ptr noundef nonnull align 1 dereferenceable(32) %i.jyp, i64 32, i1 false), !noalias !725
  %i.jyq = add nsw i64 %.1.i37.i.i1306.epil.init, 1
  br label %.loopexit.i.i1293

.loopexit.i.i1293:                                ; preds = %bb.arx, %.lr.ph39.i.i1304.epil.preheader, %.loopexit.i.i1293.loopexit3291.unr-lcssa, %bb.asv, %bb.asg, %.loopexit.sink.split.i.i1290, %.preheader27.i.i1309, %.preheader.i.i1322, %.preheader30.i.i1296, %bb.aro
  %.587.i.i.i1294 = phi i64 [ %.587.i.ph.i.i1292, %.loopexit.sink.split.i.i1290 ], [ %i.jru, %bb.aro ], [ %.486.i.i.i1315, %bb.asv ], [ %i.jru, %.lr.ph39.i.i1304.epil.preheader ], [ %i.jru, %.preheader30.i.i1296 ], [ %.082.i53.i.i1283, %.preheader.i.i1322 ], [ %.082.i53.i.i1283, %.preheader27.i.i1309 ], [ %.284.i.i.i1328, %bb.asg ], [ %i.jru, %.loopexit.i.i1293.loopexit3291.unr-lcssa ], [ %i.jru, %bb.arx ] ; 2 uses
  %.5.i.i.i1295 = phi i64 [ %i.jyh, %.loopexit.sink.split.i.i1290 ], [ %.081.i54.i.i1282, %bb.aro ], [ %i.jyc, %bb.asv ], [ %i.jyq, %.lr.ph39.i.i1304.epil.preheader ], [ %.081.i54.i.i1282, %.preheader30.i.i1296 ], [ %.081.i54.i.i1282, %.preheader.i.i1322 ], [ %.081.i54.i.i1282, %.preheader27.i.i1309 ], [ %i.jvu, %bb.asg ], [ %i.jsq, %.loopexit.i.i1293.loopexit3291.unr-lcssa ], [ %i.juc, %bb.arx ] ; 2 uses
  %i.jyr = icmp slt i64 %.5.i.i.i1295, %i.jqd
  br i1 %i.jyr, label %bb.arm, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !732

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i1293, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278
  %.082.i.lcssa.i.i1280 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278 ], [ %.587.i.i.i1294, %.loopexit.i.i1293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !725
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1274:                                   ; preds = %.lr.ph.i.i1274, %.lr.ph.i.i1274.preheader.new
  %.0.i1833.i.i1275 = phi i64 [ 0, %.lr.ph.i.i1274.preheader.new ], [ %i.jzh, %.lr.ph.i.i1274 ] ; 4 uses
  %niter3336 = phi i64 [ 0, %.lr.ph.i.i1274.preheader.new ], [ %niter3336.next.1, %.lr.ph.i.i1274 ]
  %i.jys = shl nsw i64 %.0.i1833.i.i1275, 5
  %i.jyt = getelementptr inbounds nuw i8, ptr %i.jqb, i64 %i.jys
  %i.jyu = getelementptr inbounds nuw i8, ptr %i.jqj, i64 %.0.i1833.i.i1275
  %i.jyv = load i8, ptr %i.jyu, align 1, !tbaa !98, !noalias !725
  %i.jyw = zext i8 %i.jyv to i64
  %i.jyx = shl nuw nsw i64 %i.jyw, 5
  %i.jyy = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jyx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jyt, ptr noundef nonnull align 1 dereferenceable(32) %i.jyy, i64 32, i1 false), !noalias !725
  %i.jyz = or disjoint i64 %.0.i1833.i.i1275, 1   ; 2 uses
  %i.jza = shl nsw i64 %i.jyz, 5
  %i.jzb = getelementptr inbounds nuw i8, ptr %i.jqb, i64 %i.jza
  %i.jzc = getelementptr inbounds nuw i8, ptr %i.jqj, i64 %i.jyz
  %i.jzd = load i8, ptr %i.jzc, align 1, !tbaa !98, !noalias !725
  %i.jze = zext i8 %i.jzd to i64
  %i.jzf = shl nuw nsw i64 %i.jze, 5
  %i.jzg = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jzf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jzb, ptr noundef nonnull align 1 dereferenceable(32) %i.jzg, i64 32, i1 false), !noalias !725
  %i.jzh = add nuw nsw i64 %.0.i1833.i.i1275, 2   ; 2 uses
  %niter3336.next.1 = add i64 %niter3336, 2       ; 2 uses
  %niter3336.ncmp.1 = icmp eq i64 %niter3336.next.1, %unroll_iter3335
  br i1 %niter3336.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa, label %.lr.ph.i.i1274, !llvm.loop !733

bb.asw:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.asy, label %bb.asx

bb.asx:                                           ; preds = %bb.asw
  %i.jzi = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.jzj = load i64, ptr %i.jzi, align 8, !tbaa !71, !noalias !734
  %.not.i19.i21.i1211 = icmp ne i64 %i.jzj, 0
  %i.jzk = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jzl = load ptr, ptr %i.jzk, align 8, !noalias !734
  %i.jzm = icmp ne ptr %i.jzl, null
  %i.jzn = select i1 %.not.i19.i21.i1211, i1 %i.jzm, i1 false
  br label %bb.asy

bb.asy:                                           ; preds = %bb.asx, %bb.asw
  %i.jzo = phi i1 [ true, %bb.asw ], [ %i.jzn, %bb.asx ]
  %i.jzp = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !734
  %i.jzq = extractvalue { i32, ptr } %i.jzp, 1    ; 9 uses
  %i.jzr = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !734 ; 13 uses
  %i.jzs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jzt = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !734 ; 11 uses
  %i.jzu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.jzv = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  %i.jzw = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.jzx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jzy = load ptr, ptr %i.jzx, align 8, !tbaa !66, !noalias !734
  %i.jzz = getelementptr inbounds [2 x i8], ptr %i.jzy, i64 %i.jzv ; 9 uses
  br i1 %i.jzo, label %bb.asz, label %.preheader32.i22.i1212

.preheader32.i22.i1212:                           ; preds = %bb.asy
  %i.kaa = icmp sgt i64 %i.jzt, 0
  br i1 %i.kaa, label %.lr.ph.i24.i1213.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i1213.preheader:                       ; preds = %.preheader32.i22.i1212
  %xtraiter3321 = and i64 %i.jzt, 1
  %i.kab = icmp eq i64 %i.jzt, 1
  br i1 %i.kab, label %.lr.ph.i24.i1213.epil.preheader, label %.lr.ph.i24.i1213.preheader.new

.lr.ph.i24.i1213.preheader.new:                   ; preds = %.lr.ph.i24.i1213.preheader
  %unroll_iter3324 = and i64 %i.jzt, 9223372036854775806
  br label %.lr.ph.i24.i1213

bb.asz:                                           ; preds = %bb.asy
  %i.kac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.kad = load ptr, ptr %i.kac, align 8, !tbaa !171, !noalias !734
  %i.kae = load ptr, ptr %i.kad, align 8, !tbaa !306, !noalias !734 ; 4 uses
  %.not.i.i.i27.i1216 = icmp eq ptr %i.kae, null
  br i1 %.not.i.i.i27.i1216, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217, label %bb.ata

bb.ata:                                           ; preds = %bb.asz
  %i.kaf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.kag = load i64, ptr %i.kaf, align 8, !tbaa !438, !noalias !734
  %i.kah = getelementptr inbounds nuw i8, ptr %i.kae, i64 9
  %i.kai = load i8, ptr %i.kah, align 1, !tbaa !439, !range !127, !noalias !734, !noundef !128
  %i.kaj = trunc nuw i8 %i.kai to i1
  %i.kak = getelementptr inbounds nuw i8, ptr %i.kae, i64 8
  %i.kal = load i8, ptr %i.kak, align 8, !range !127, !noalias !734
  %i.kam = trunc nuw i8 %i.kal to i1
  %i.kan = select i1 %i.kaj, i1 %i.kam, i1 false, !prof !117
  %i.kao = getelementptr inbounds nuw i8, ptr %i.kae, i64 16
  %i.kap = load ptr, ptr %i.kao, align 8, !noalias !734
  %i.kaq = select i1 %i.kan, ptr %i.kap, ptr null, !prof !117
  %i.kar = getelementptr inbounds i8, ptr %i.kaq, i64 %i.kag
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217: ; preds = %bb.ata, %bb.asz
  %.0.i.i.i29.i1218 = phi ptr [ %i.kar, %bb.ata ], [ null, %bb.asz ] ; 5 uses
  %i.kas = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.kat = load i64, ptr %i.kas, align 8, !tbaa !178, !noalias !734 ; 2 uses
  %i.kau = ashr i64 %i.kat, 3
  %i.kav = and i64 %i.kat, 7
  %i.kaw = icmp ne i64 %i.kav, 0
  %i.kax = zext i1 %i.kaw to i64
  %i.kay = add nsw i64 %i.kau, %i.kax
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i1218, i8 0, i64 %i.kay, i1 false), !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !734
  %i.kaz = load ptr, ptr %i.jzw, align 8, !tbaa !66, !noalias !734
  %i.kba = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.kaz, i64 noundef %i.kba, i64 noundef %i.jzt), !noalias !734
  %i.kbb = icmp sgt i64 %i.jzt, 0
  br i1 %i.kbb, label %.lr.ph55.i31.i1220, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i1220:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217
  %i.kbc = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.kbd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.atb

bb.atb:                                           ; preds = %.loopexit.i43.i1232, %.lr.ph55.i31.i1220
  %.081.i54.i32.i1221 = phi i64 [ 0, %.lr.ph55.i31.i1220 ], [ %.5.i.i45.i1234, %.loopexit.i43.i1232 ] ; 12 uses
  %.082.i53.i33.i1222 = phi i64 [ 0, %.lr.ph55.i31.i1220 ], [ %.587.i.i44.i1233, %.loopexit.i43.i1232 ] ; 6 uses
  %i.kbe = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %10), !noalias !734 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i1223 = trunc i32 %i.kbe to i16 ; 10 uses
  %i.kbf = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !734
  %.not.i20.i35.i1224 = icmp ne i64 %i.kbf, 0
  %i.kbg = load ptr, ptr %i.v, align 8, !noalias !734
  %i.kbh = icmp ne ptr %i.kbg, null
  %i.kbi = select i1 %.not.i20.i35.i1224, i1 %i.kbh, i1 false
  br i1 %i.kbi, label %bb.atn, label %bb.atc

bb.atc:                                           ; preds = %bb.atb
  %.sroa.14.0.extract.shift.i.i36.i1225 = lshr i32 %i.kbe, 16
  %.sroa.14.0.extract.trunc.i.i37.i1226 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i1225 to i64
  %sext91.i.i38.i1227 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i1226, 48
  %i.kbj = ashr exact i64 %sext91.i.i38.i1227, 48
  %i.kbk = add nsw i64 %i.kbj, %.082.i53.i33.i1222 ; 6 uses
  %i.kbl = ashr i32 %i.kbe, 16                    ; 2 uses
  %sext.i.i39.i1228 = shl i32 %i.kbe, 16
  %i.kbm = ashr exact i32 %sext.i.i39.i1228, 16
  %i.kbn = icmp eq i32 %i.kbl, %i.kbm
  br i1 %i.kbn, label %bb.atd, label %bb.ate

bb.atd:                                           ; preds = %bb.atc
  %i.kbo = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1223 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i1218, i64 noundef %.081.i54.i32.i1221, i64 noundef %i.kbo, i1 noundef zeroext true), !noalias !734
  %i.kbp = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 0
  br i1 %i.kbp, label %.lr.ph39.i54.i1243.preheader, label %.loopexit.i43.i1232

.lr.ph39.i54.i1243.preheader:                     ; preds = %bb.atd
  %i.kbq = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 1
  br i1 %i.kbq, label %.lr.ph39.i54.i1243.epil.preheader, label %.lr.ph39.i54.i1243.preheader.new

.lr.ph39.i54.i1243.preheader.new:                 ; preds = %.lr.ph39.i54.i1243.preheader
  %unroll_iter3330 = and i64 %i.kbo, 32766
  br label %.lr.ph39.i54.i1243

.lr.ph39.i54.i1243:                               ; preds = %.lr.ph39.i54.i1243, %.lr.ph39.i54.i1243.preheader.new
  %.1.i37.i56.i1245 = phi i64 [ %.081.i54.i32.i1221, %.lr.ph39.i54.i1243.preheader.new ], [ %i.kcg, %.lr.ph39.i54.i1243 ] ; 4 uses
  %niter3331 = phi i64 [ 0, %.lr.ph39.i54.i1243.preheader.new ], [ %niter3331.next.1, %.lr.ph39.i54.i1243 ]
  %i.kbr = shl nsw i64 %.1.i37.i56.i1245, 5
  %i.kbs = getelementptr inbounds i8, ptr %i.jzr, i64 %i.kbr
  %i.kbt = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %.1.i37.i56.i1245
  %i.kbu = load i16, ptr %i.kbt, align 2, !tbaa !269, !noalias !734
  %i.kbv = zext i16 %i.kbu to i64
  %i.kbw = shl nuw nsw i64 %i.kbv, 5
  %i.kbx = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kbw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kbs, ptr noundef nonnull align 1 dereferenceable(32) %i.kbx, i64 32, i1 false), !noalias !734
  %i.kby = add nsw i64 %.1.i37.i56.i1245, 1       ; 2 uses
  %i.kbz = shl nsw i64 %i.kby, 5
  %i.kca = getelementptr inbounds i8, ptr %i.jzr, i64 %i.kbz
  %i.kcb = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %i.kby
  %i.kcc = load i16, ptr %i.kcb, align 2, !tbaa !269, !noalias !734
  %i.kcd = zext i16 %i.kcc to i64
  %i.kce = shl nuw nsw i64 %i.kcd, 5
  %i.kcf = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kca, ptr noundef nonnull align 1 dereferenceable(32) %i.kcf, i64 32, i1 false), !noalias !734
  %i.kcg = add nsw i64 %.1.i37.i56.i1245, 2       ; 3 uses
  %niter3331.next.1 = add i64 %niter3331, 2       ; 2 uses
  %niter3331.ncmp.1 = icmp eq i64 %niter3331.next.1, %unroll_iter3330
  br i1 %niter3331.ncmp.1, label %.loopexit.i43.i1232.loopexit3299.unr-lcssa, label %.lr.ph39.i54.i1243, !llvm.loop !737

bb.ate:                                           ; preds = %bb.atc
  %i.kch = icmp sgt i32 %i.kbl, 0
  %i.kci = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1223 to i64 ; 2 uses
  br i1 %i.kch, label %.preheader30.i46.i1235, label %.loopexit.sink.split.i40.i1229

.preheader30.i46.i1235:                           ; preds = %bb.ate
  %i.kcj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 0
  br i1 %i.kcj, label %.lr.ph36.i47.i1236, label %.loopexit.i43.i1232

.lr.ph36.i47.i1236:                               ; preds = %.preheader30.i46.i1235, %bb.atm
  %.079.i35.i48.i1237 = phi i64 [ %i.kdt, %bb.atm ], [ 0, %.preheader30.i46.i1235 ]
  %.2.i34.i49.i1238 = phi i64 [ %i.kds, %bb.atm ], [ %.081.i54.i32.i1221, %.preheader30.i46.i1235 ] ; 10 uses
  %i.kck = load ptr, ptr %i.jzw, align 8, !tbaa !66, !noalias !734 ; 2 uses
  %.not.i21.i50.i1239 = icmp eq ptr %i.kck, null
  br i1 %.not.i21.i50.i1239, label %bb.atg, label %bb.atf

bb.atf:                                           ; preds = %.lr.ph36.i47.i1236
  %i.kcl = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  %i.kcm = add nsw i64 %i.kcl, %.2.i34.i49.i1238  ; 2 uses
  %i.kcn = lshr i64 %i.kcm, 3
  %i.kco = getelementptr inbounds nuw i8, ptr %i.kck, i64 %i.kcn
  %i.kcp = load i8, ptr %i.kco, align 1, !tbaa !98, !noalias !734
  %i.kcq = trunc i64 %i.kcm to i8
  %i.kcr = and i8 %i.kcq, 7
  %i.kcs = lshr i8 %i.kcp, %i.kcr
  %i.kct = trunc i8 %i.kcs to i1
  br i1 %i.kct, label %bb.atk, label %bb.atl

bb.atg:                                           ; preds = %.lr.ph36.i47.i1236
  %i.kcu = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !734
  %i.kcv = getelementptr inbounds nuw i8, ptr %i.kcu, i64 40
  %i.kcw = load i32, ptr %i.kcv, align 8, !tbaa !42, !noalias !734
  switch i32 %i.kcw, label %bb.atj [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i1241
    i32 28, label %bb.ath
    i32 38, label %bb.ati
  ]

bb.ath:                                           ; preds = %bb.atg
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.kff = load i8, ptr %i.kfe, align 1, !tbaa !98, !noalias !734
  %i.kfg = or i8 %i.kff, %i.kfc
  store i8 %i.kfg, ptr %i.kfe, align 1, !tbaa !98, !noalias !734
  %i.kfh = add nsw i64 %.183.i47.i76.i1265, 1
  br label %bb.atv

bb.atu:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i80.i1269, %bb.ats, %bb.atr, %bb.atq, %bb.ato
  %i.kfi = shl nsw i64 %.3.i48.i75.i1264, 5
  %i.kfj = getelementptr inbounds i8, ptr %i.jzr, i64 %i.kfi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kfj, i8 0, i64 32, i1 false), !noalias !734
  br label %bb.atv

bb.atv:                                           ; preds = %bb.atu, %bb.att
  %.284.i.i78.i1267 = phi i64 [ %i.kfh, %bb.att ], [ %.183.i47.i76.i1265, %bb.atu ] ; 2 uses
  %i.kfk = add nsw i64 %.3.i48.i75.i1264, 1       ; 2 uses
  %i.kfl = add nuw nsw i64 %.078.i49.i74.i1263, 1 ; 2 uses
  %exitcond66.not.i79.i1268 = icmp eq i64 %i.kfl, %i.kdx
  br i1 %exitcond66.not.i79.i1268, label %.loopexit.i43.i1232, label %.lr.ph50.i73.i1262, !llvm.loop !739

bb.atw:                                           ; preds = %bb.atn
  %i.kfm = icmp sgt i32 %i.kdu, 0
  %i.kfn = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1223 to i64 ; 2 uses
  br i1 %i.kfm, label %.preheader27.i59.i1248, label %.loopexit.sink.split.i40.i1229

.preheader27.i59.i1248:                           ; preds = %bb.atw
  %i.kfo = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 0
  br i1 %i.kfo, label %.lr.ph44.i60.i1249, label %.loopexit.i43.i1232

.lr.ph44.i60.i1249:                               ; preds = %.preheader27.i59.i1248, %bb.auk
  %.0.i43.i61.i1250 = phi i64 [ %i.kht, %bb.auk ], [ 0, %.preheader27.i59.i1248 ]
  %.4.i42.i62.i1251 = phi i64 [ %i.khs, %bb.auk ], [ %.081.i54.i32.i1221, %.preheader27.i59.i1248 ] ; 10 uses
  %.385.i41.i63.i1252 = phi i64 [ %.486.i.i65.i1254, %bb.auk ], [ %.082.i53.i33.i1222, %.preheader27.i59.i1248 ] ; 2 uses
  %i.kfp = load ptr, ptr %i.jzw, align 8, !tbaa !66, !noalias !734 ; 2 uses
  %.not.i26.i64.i1253 = icmp eq ptr %i.kfp, null
  br i1 %.not.i26.i64.i1253, label %bb.aty, label %bb.atx

bb.atx:                                           ; preds = %.lr.ph44.i60.i1249
  %i.kfq = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  %i.kfr = add nsw i64 %i.kfq, %.4.i42.i62.i1251  ; 2 uses
  %i.kfs = lshr i64 %i.kfr, 3
  %i.kft = getelementptr inbounds nuw i8, ptr %i.kfp, i64 %i.kfs
  %i.kfu = load i8, ptr %i.kft, align 1, !tbaa !98, !noalias !734
  %i.kfv = trunc i64 %i.kfr to i8
  %i.kfw = and i8 %i.kfv, 7
  %i.kfx = lshr i8 %i.kfu, %i.kfw
  %i.kfy = trunc i8 %i.kfx to i1
  br i1 %i.kfy, label %bb.auc, label %bb.auj

bb.aty:                                           ; preds = %.lr.ph44.i60.i1249
  %i.kfz = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !734
  %i.kga = getelementptr inbounds nuw i8, ptr %i.kfz, i64 40
  %i.kgb = load i32, ptr %i.kga, align 8, !tbaa !42, !noalias !734
  switch i32 %i.kgb, label %bb.aub [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259
    i32 28, label %bb.atz
    i32 38, label %bb.aua
  ]

bb.atz:                                           ; preds = %bb.aty
  %i.kgc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1251), !noalias !734
  br i1 %i.kgc, label %bb.auj, label %bb.auc

bb.aua:                                           ; preds = %bb.aty
  %i.kgd = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1251), !noalias !734
  br i1 %i.kgd, label %bb.auj, label %bb.auc

bb.aub:                                           ; preds = %bb.aty
  %i.kge = load i64, ptr %i.kbc, align 8, !tbaa !71, !noalias !734
  %i.kgf = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !734
  %.not24.i71.i1260 = icmp eq i64 %i.kge, %i.kgf
  br i1 %.not24.i71.i1260, label %bb.auj, label %bb.auc

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259:  ; preds = %bb.aty
  %i.kgg = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1251), !noalias !734
  br i1 %i.kgg, label %bb.auj, label %bb.auc

bb.auc:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259, %bb.aub, %bb.aua, %bb.atz, %bb.atx
  %i.kgh = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %.4.i42.i62.i1251 ; 2 uses
  %i.kgi = load i16, ptr %i.kgh, align 2, !tbaa !269, !noalias !734
  %i.kgj = zext i16 %i.kgi to i64                 ; 4 uses
  %i.kgk = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !734 ; 2 uses
  %.not.i29.i67.i1256 = icmp eq ptr %i.kgk, null
  br i1 %.not.i29.i67.i1256, label %bb.aue, label %bb.aud

bb.aud:                                           ; preds = %bb.auc
  %i.kgl = load i64, ptr %i.kbd, align 8, !tbaa !99, !noalias !734
  %i.kgm = add nsw i64 %i.kgl, %i.kgj             ; 2 uses
  %i.kgn = lshr i64 %i.kgm, 3
  %i.kgo = getelementptr inbounds nuw i8, ptr %i.kgk, i64 %i.kgn
  %i.kgp = load i8, ptr %i.kgo, align 1, !tbaa !98, !noalias !734
  %i.kgq = trunc i64 %i.kgm to i8
  %i.kgr = and i8 %i.kgq, 7
  %i.kgs = lshr i8 %i.kgp, %i.kgr
  %i.kgt = trunc i8 %i.kgs to i1
  br i1 %i.kgt, label %bb.aui, label %bb.auj

bb.aue:                                           ; preds = %bb.auc
  %i.kgu = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !734
  %i.kgv = getelementptr inbounds nuw i8, ptr %i.kgu, i64 40
  %i.kgw = load i32, ptr %i.kgv, align 8, !tbaa !42, !noalias !734
  switch i32 %i.kgw, label %bb.auh [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257
    i32 28, label %bb.auf
    i32 38, label %bb.aug
  ]

bb.auf:                                           ; preds = %bb.aue
  %i.kgx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kgj), !noalias !734
  br i1 %i.kgx, label %bb.auj, label %bb.aui

bb.aug:                                           ; preds = %bb.aue
  %i.kgy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kgj), !noalias !734
  br i1 %i.kgy, label %bb.auj, label %bb.aui

bb.auh:                                           ; preds = %bb.aue
  %i.kgz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !734
  %i.kha = load i64, ptr %i.jzs, align 8, !tbaa !62, !noalias !734
  %.not25.i69.i1258 = icmp eq i64 %i.kgz, %i.kha
  br i1 %.not25.i69.i1258, label %bb.auj, label %bb.aui

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257:  ; preds = %bb.aue
  %i.khb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kgj), !noalias !734
  br i1 %i.khb, label %bb.auj, label %bb.aui

bb.aui:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257, %bb.auh, %bb.aug, %bb.auf, %bb.aud
  %i.khc = shl nsw i64 %.4.i42.i62.i1251, 5
  %i.khd = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khc
  %i.khe = load i16, ptr %i.kgh, align 2, !tbaa !269, !noalias !734
  %i.khf = zext i16 %i.khe to i64
  %i.khg = shl nuw nsw i64 %i.khf, 5
  %i.khh = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.khg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.khd, ptr noundef nonnull align 1 dereferenceable(32) %i.khh, i64 32, i1 false), !noalias !734
  %i.khi = srem i64 %.4.i42.i62.i1251, 8
  %i.khj = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.khi
  %i.khk = load i8, ptr %i.khj, align 1, !tbaa !98, !noalias !734
  %i.khl = sdiv i64 %.4.i42.i62.i1251, 8
  %i.khm = getelementptr inbounds i8, ptr %.0.i.i.i29.i1218, i64 %i.khl ; 2 uses
  %i.khn = load i8, ptr %i.khm, align 1, !tbaa !98, !noalias !734
  %i.kho = or i8 %i.khn, %i.khk
  store i8 %i.kho, ptr %i.khm, align 1, !tbaa !98, !noalias !734
  %i.khp = add nsw i64 %.385.i41.i63.i1252, 1
  br label %bb.auk

bb.auj:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257, %bb.auh, %bb.aug, %bb.auf, %bb.aud, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259, %bb.aub, %bb.aua, %bb.atz, %bb.atx
  %i.khq = shl nsw i64 %.4.i42.i62.i1251, 5
  %i.khr = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.khr, i8 0, i64 32, i1 false), !noalias !734
  br label %bb.auk

bb.auk:                                           ; preds = %bb.auj, %bb.aui
  %.486.i.i65.i1254 = phi i64 [ %i.khp, %bb.aui ], [ %.385.i41.i63.i1252, %bb.auj ] ; 2 uses
  %i.khs = add nsw i64 %.4.i42.i62.i1251, 1       ; 2 uses
  %i.kht = add nuw nsw i64 %.0.i43.i61.i1250, 1   ; 2 uses
  %exitcond65.not.i66.i1255 = icmp eq i64 %i.kht, %i.kfn
  br i1 %exitcond65.not.i66.i1255, label %.loopexit.i43.i1232, label %.lr.ph44.i60.i1249, !llvm.loop !740

.loopexit.sink.split.i40.i1229:                   ; preds = %bb.atw, %bb.ate
  %.sink86.i41.i1230 = phi i64 [ %i.kci, %bb.ate ], [ %i.kfn, %bb.atw ] ; 2 uses
  %.587.i.ph.i42.i1231 = phi i64 [ %i.kbk, %bb.ate ], [ %.082.i53.i33.i1222, %bb.atw ]
  %i.khu = shl nsw i64 %.081.i54.i32.i1221, 5
  %i.khv = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khu
  %i.khw = shl nsw i64 %.sink86.i41.i1230, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.khv, i8 0, i64 %i.khw, i1 false), !noalias !734
  %i.khx = add nsw i64 %.sink86.i41.i1230, %.081.i54.i32.i1221
  br label %.loopexit.i43.i1232

.loopexit.i43.i1232.loopexit3299.unr-lcssa:       ; preds = %.lr.ph39.i54.i1243
  %i.khy = and i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 1
  %lcmp.mod3327.not = icmp eq i16 %i.khy, 0
  br i1 %lcmp.mod3327.not, label %.loopexit.i43.i1232, label %.lr.ph39.i54.i1243.epil.preheader

.lr.ph39.i54.i1243.epil.preheader:                ; preds = %.loopexit.i43.i1232.loopexit3299.unr-lcssa, %.lr.ph39.i54.i1243.preheader
  %.1.i37.i56.i1245.epil.init = phi i64 [ %.081.i54.i32.i1221, %.lr.ph39.i54.i1243.preheader ], [ %i.kcg, %.loopexit.i43.i1232.loopexit3299.unr-lcssa ] ; 3 uses
  %lcmp.mod3329 = trunc i32 %i.kbe to i1
  call void @llvm.assume(i1 %lcmp.mod3329)
  %i.khz = shl nsw i64 %.1.i37.i56.i1245.epil.init, 5
  %i.kia = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khz
  %i.kib = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %.1.i37.i56.i1245.epil.init
  %i.kic = load i16, ptr %i.kib, align 2, !tbaa !269, !noalias !734
  %i.kid = zext i16 %i.kic to i64
  %i.kie = shl nuw nsw i64 %i.kid, 5
  %i.kif = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kia, ptr noundef nonnull align 1 dereferenceable(32) %i.kif, i64 32, i1 false), !noalias !734
  %i.kig = add nsw i64 %.1.i37.i56.i1245.epil.init, 1
  br label %.loopexit.i43.i1232

.loopexit.i43.i1232:                              ; preds = %bb.atm, %.lr.ph39.i54.i1243.epil.preheader, %.loopexit.i43.i1232.loopexit3299.unr-lcssa, %bb.auk, %bb.atv, %.loopexit.sink.split.i40.i1229, %.preheader27.i59.i1248, %.preheader.i72.i1261, %.preheader30.i46.i1235, %bb.atd
  %.587.i.i44.i1233 = phi i64 [ %.587.i.ph.i42.i1231, %.loopexit.sink.split.i40.i1229 ], [ %i.kbk, %bb.atd ], [ %.486.i.i65.i1254, %bb.auk ], [ %i.kbk, %.lr.ph39.i54.i1243.epil.preheader ], [ %i.kbk, %.preheader30.i46.i1235 ], [ %.082.i53.i33.i1222, %.preheader.i72.i1261 ], [ %.082.i53.i33.i1222, %.preheader27.i59.i1248 ], [ %.284.i.i78.i1267, %bb.atv ], [ %i.kbk, %.loopexit.i43.i1232.loopexit3299.unr-lcssa ], [ %i.kbk, %bb.atm ] ; 2 uses
  %.5.i.i45.i1234 = phi i64 [ %i.khx, %.loopexit.sink.split.i40.i1229 ], [ %.081.i54.i32.i1221, %bb.atd ], [ %i.khs, %bb.auk ], [ %i.kig, %.lr.ph39.i54.i1243.epil.preheader ], [ %.081.i54.i32.i1221, %.preheader30.i46.i1235 ], [ %.081.i54.i32.i1221, %.preheader.i72.i1261 ], [ %.081.i54.i32.i1221, %.preheader27.i59.i1248 ], [ %i.kfk, %bb.atv ], [ %i.kcg, %.loopexit.i43.i1232.loopexit3299.unr-lcssa ], [ %i.kds, %bb.atm ] ; 2 uses
  %i.kih = icmp slt i64 %.5.i.i45.i1234, %i.jzt
  br i1 %i.kih, label %bb.atb, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !741

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i1232, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217
  %.082.i.lcssa.i30.i1219 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217 ], [ %.587.i.i44.i1233, %.loopexit.i43.i1232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !734
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i1213:                                 ; preds = %.lr.ph.i24.i1213, %.lr.ph.i24.i1213.preheader.new
  %.0.i1833.i25.i1214 = phi i64 [ 0, %.lr.ph.i24.i1213.preheader.new ], [ %i.kix, %.lr.ph.i24.i1213 ] ; 4 uses
  %niter3325 = phi i64 [ 0, %.lr.ph.i24.i1213.preheader.new ], [ %niter3325.next.1, %.lr.ph.i24.i1213 ]
  %i.kii = shl nsw i64 %.0.i1833.i25.i1214, 5
  %i.kij = getelementptr inbounds nuw i8, ptr %i.jzr, i64 %i.kii
  %i.kik = getelementptr inbounds nuw [2 x i8], ptr %i.jzz, i64 %.0.i1833.i25.i1214
  %i.kil = load i16, ptr %i.kik, align 2, !tbaa !269, !noalias !734
  %i.kim = zext i16 %i.kil to i64
  %i.kin = shl nuw nsw i64 %i.kim, 5
  %i.kio = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kin
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kij, ptr noundef nonnull align 1 dereferenceable(32) %i.kio, i64 32, i1 false), !noalias !734
  %i.kip = or disjoint i64 %.0.i1833.i25.i1214, 1 ; 2 uses
  %i.kiq = shl nsw i64 %i.kip, 5
  %i.kir = getelementptr inbounds nuw i8, ptr %i.jzr, i64 %i.kiq
  %i.kis = getelementptr inbounds nuw [2 x i8], ptr %i.jzz, i64 %i.kip
  %i.kit = load i16, ptr %i.kis, align 2, !tbaa !269, !noalias !734
  %i.kiu = zext i16 %i.kit to i64
  %i.kiv = shl nuw nsw i64 %i.kiu, 5
  %i.kiw = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kiv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kir, ptr noundef nonnull align 1 dereferenceable(32) %i.kiw, i64 32, i1 false), !noalias !734
  %i.kix = add nuw nsw i64 %.0.i1833.i25.i1214, 2 ; 2 uses
  %niter3325.next.1 = add i64 %niter3325, 2       ; 2 uses
  %niter3325.ncmp.1 = icmp eq i64 %niter3325.next.1, %unroll_iter3324
  br i1 %niter3325.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa, label %.lr.ph.i24.i1213, !llvm.loop !742

bb.aul:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.aun, label %bb.aum

bb.aum:                                           ; preds = %bb.aul
  %i.kiy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.kiz = load i64, ptr %i.kiy, align 8, !tbaa !71, !noalias !743
  %.not.i19.i83.i1149 = icmp ne i64 %i.kiz, 0
  %i.kja = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.kjb = load ptr, ptr %i.kja, align 8, !noalias !743
  %i.kjc = icmp ne ptr %i.kjb, null
  %i.kjd = select i1 %.not.i19.i83.i1149, i1 %i.kjc, i1 false
  br label %bb.aun

bb.aun:                                           ; preds = %bb.aum, %bb.aul
  %i.kje = phi i1 [ true, %bb.aul ], [ %i.kjd, %bb.aum ]
  %i.kjf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !743
  %i.kjg = extractvalue { i32, ptr } %i.kjf, 1    ; 9 uses
  %i.kjh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !743 ; 13 uses
  %i.kji = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.kjj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !743 ; 11 uses
  %i.kjk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.kjl = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  %i.kjm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.kjn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.kjo = load ptr, ptr %i.kjn, align 8, !tbaa !66, !noalias !743
  %i.kjp = getelementptr inbounds [4 x i8], ptr %i.kjo, i64 %i.kjl ; 9 uses
  br i1 %i.kje, label %bb.auo, label %.preheader32.i84.i1150

.preheader32.i84.i1150:                           ; preds = %bb.aun
  %i.kjq = icmp sgt i64 %i.kjj, 0
  br i1 %i.kjq, label %.lr.ph.i86.i1152.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i1152.preheader:                       ; preds = %.preheader32.i84.i1150
  %xtraiter = and i64 %i.kjj, 1
  %i.kjr = icmp eq i64 %i.kjj, 1
  br i1 %i.kjr, label %.lr.ph.i86.i1152.epil.preheader, label %.lr.ph.i86.i1152.preheader.new

.lr.ph.i86.i1152.preheader.new:                   ; preds = %.lr.ph.i86.i1152.preheader
  %unroll_iter = and i64 %i.kjj, 9223372036854775806
  br label %.lr.ph.i86.i1152

bb.auo:                                           ; preds = %bb.aun
  %i.kjs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.kjt = load ptr, ptr %i.kjs, align 8, !tbaa !171, !noalias !743
  %i.kju = load ptr, ptr %i.kjt, align 8, !tbaa !306, !noalias !743 ; 4 uses
  %.not.i.i.i89.i1155 = icmp eq ptr %i.kju, null
  br i1 %.not.i.i.i89.i1155, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156, label %bb.aup

bb.aup:                                           ; preds = %bb.auo
  %i.kjv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.kjw = load i64, ptr %i.kjv, align 8, !tbaa !438, !noalias !743
  %i.kjx = getelementptr inbounds nuw i8, ptr %i.kju, i64 9
  %i.kjy = load i8, ptr %i.kjx, align 1, !tbaa !439, !range !127, !noalias !743, !noundef !128
  %i.kjz = trunc nuw i8 %i.kjy to i1
  %i.kka = getelementptr inbounds nuw i8, ptr %i.kju, i64 8
  %i.kkb = load i8, ptr %i.kka, align 8, !range !127, !noalias !743
  %i.kkc = trunc nuw i8 %i.kkb to i1
  %i.kkd = select i1 %i.kjz, i1 %i.kkc, i1 false, !prof !117
  %i.kke = getelementptr inbounds nuw i8, ptr %i.kju, i64 16
  %i.kkf = load ptr, ptr %i.kke, align 8, !noalias !743
  %i.kkg = select i1 %i.kkd, ptr %i.kkf, ptr null, !prof !117
  %i.kkh = getelementptr inbounds i8, ptr %i.kkg, i64 %i.kjw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156: ; preds = %bb.aup, %bb.auo
  %.0.i.i.i91.i1157 = phi ptr [ %i.kkh, %bb.aup ], [ null, %bb.auo ] ; 5 uses
  %i.kki = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.kkj = load i64, ptr %i.kki, align 8, !tbaa !178, !noalias !743 ; 2 uses
  %i.kkk = ashr i64 %i.kkj, 3
  %i.kkl = and i64 %i.kkj, 7
  %i.kkm = icmp ne i64 %i.kkl, 0
  %i.kkn = zext i1 %i.kkm to i64
  %i.kko = add nsw i64 %i.kkk, %i.kkn
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i1157, i8 0, i64 %i.kko, i1 false), !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !743
  %i.kkp = load ptr, ptr %i.kjm, align 8, !tbaa !66, !noalias !743
  %i.kkq = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.kkp, i64 noundef %i.kkq, i64 noundef %i.kjj), !noalias !743
  %i.kkr = icmp sgt i64 %i.kjj, 0
  br i1 %i.kkr, label %.lr.ph55.i93.i1159, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i1159:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156
  %i.kks = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.kkt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.auq

bb.auq:                                           ; preds = %.loopexit.i105.i1171, %.lr.ph55.i93.i1159
  %.081.i54.i94.i1160 = phi i64 [ 0, %.lr.ph55.i93.i1159 ], [ %.5.i.i107.i1173, %.loopexit.i105.i1171 ] ; 12 uses
  %.082.i53.i95.i1161 = phi i64 [ 0, %.lr.ph55.i93.i1159 ], [ %.587.i.i106.i1172, %.loopexit.i105.i1171 ] ; 6 uses
  %i.kku = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %9), !noalias !743 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i1162 = trunc i32 %i.kku to i16 ; 10 uses
  %i.kkv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !743
  %.not.i20.i97.i1163 = icmp ne i64 %i.kkv, 0
  %i.kkw = load ptr, ptr %i.v, align 8, !noalias !743
  %i.kkx = icmp ne ptr %i.kkw, null
  %i.kky = select i1 %.not.i20.i97.i1163, i1 %i.kkx, i1 false
  br i1 %i.kky, label %bb.avc, label %bb.aur

bb.aur:                                           ; preds = %bb.auq
  %.sroa.14.0.extract.shift.i.i98.i1164 = lshr i32 %i.kku, 16
  %.sroa.14.0.extract.trunc.i.i99.i1165 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i1164 to i64
  %sext91.i.i100.i1166 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i1165, 48
  %i.kkz = ashr exact i64 %sext91.i.i100.i1166, 48
  %i.kla = add nsw i64 %i.kkz, %.082.i53.i95.i1161 ; 6 uses
  %i.klb = ashr i32 %i.kku, 16                    ; 2 uses
  %sext.i.i101.i1167 = shl i32 %i.kku, 16
  %i.klc = ashr exact i32 %sext.i.i101.i1167, 16
  %i.kld = icmp eq i32 %i.klb, %i.klc
  br i1 %i.kld, label %bb.aus, label %bb.aut

bb.aus:                                           ; preds = %bb.aur
  %i.kle = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1162 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i1157, i64 noundef %.081.i54.i94.i1160, i64 noundef %i.kle, i1 noundef zeroext true), !noalias !743
  %i.klf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 0
  br i1 %i.klf, label %.lr.ph39.i116.i1182.preheader, label %.loopexit.i105.i1171

.lr.ph39.i116.i1182.preheader:                    ; preds = %bb.aus
  %i.klg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 1
  br i1 %i.klg, label %.lr.ph39.i116.i1182.epil.preheader, label %.lr.ph39.i116.i1182.preheader.new

.lr.ph39.i116.i1182.preheader.new:                ; preds = %.lr.ph39.i116.i1182.preheader
  %unroll_iter3319 = and i64 %i.kle, 32766
  br label %.lr.ph39.i116.i1182

.lr.ph39.i116.i1182:                              ; preds = %.lr.ph39.i116.i1182, %.lr.ph39.i116.i1182.preheader.new
  %.1.i37.i118.i1184 = phi i64 [ %.081.i54.i94.i1160, %.lr.ph39.i116.i1182.preheader.new ], [ %i.klw, %.lr.ph39.i116.i1182 ] ; 4 uses
  %niter3320 = phi i64 [ 0, %.lr.ph39.i116.i1182.preheader.new ], [ %niter3320.next.1, %.lr.ph39.i116.i1182 ]
  %i.klh = shl nsw i64 %.1.i37.i118.i1184, 5
  %i.kli = getelementptr inbounds i8, ptr %i.kjh, i64 %i.klh
  %i.klj = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %.1.i37.i118.i1184
  %i.klk = load i32, ptr %i.klj, align 4, !tbaa !3, !noalias !743
  %i.kll = shl i32 %i.klk, 5
  %i.klm = zext i32 %i.kll to i64
  %i.kln = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.klm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kli, ptr noundef nonnull align 1 dereferenceable(32) %i.kln, i64 32, i1 false), !noalias !743
  %i.klo = add nsw i64 %.1.i37.i118.i1184, 1      ; 2 uses
  %i.klp = shl nsw i64 %i.klo, 5
  %i.klq = getelementptr inbounds i8, ptr %i.kjh, i64 %i.klp
  %i.klr = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %i.klo
  %i.kls = load i32, ptr %i.klr, align 4, !tbaa !3, !noalias !743
  %i.klt = shl i32 %i.kls, 5
  %i.klu = zext i32 %i.klt to i64
  %i.klv = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.klu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.klq, ptr noundef nonnull align 1 dereferenceable(32) %i.klv, i64 32, i1 false), !noalias !743
  %i.klw = add nsw i64 %.1.i37.i118.i1184, 2      ; 3 uses
  %niter3320.next.1 = add i64 %niter3320, 2       ; 2 uses
  %niter3320.ncmp.1 = icmp eq i64 %niter3320.next.1, %unroll_iter3319
  br i1 %niter3320.ncmp.1, label %.loopexit.i105.i1171.loopexit3307.unr-lcssa, label %.lr.ph39.i116.i1182, !llvm.loop !746

bb.aut:                                           ; preds = %bb.aur
  %i.klx = icmp sgt i32 %i.klb, 0
  %i.kly = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1162 to i64 ; 2 uses
  br i1 %i.klx, label %.preheader30.i108.i1174, label %.loopexit.sink.split.i102.i1168

.preheader30.i108.i1174:                          ; preds = %bb.aut
  %i.klz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 0
  br i1 %i.klz, label %.lr.ph36.i109.i1175, label %.loopexit.i105.i1171

.lr.ph36.i109.i1175:                              ; preds = %.preheader30.i108.i1174, %bb.avb
  %.079.i35.i110.i1176 = phi i64 [ %i.knj, %bb.avb ], [ 0, %.preheader30.i108.i1174 ]
  %.2.i34.i111.i1177 = phi i64 [ %i.kni, %bb.avb ], [ %.081.i54.i94.i1160, %.preheader30.i108.i1174 ] ; 10 uses
  %i.kma = load ptr, ptr %i.kjm, align 8, !tbaa !66, !noalias !743 ; 2 uses
  %.not.i21.i112.i1178 = icmp eq ptr %i.kma, null
  br i1 %.not.i21.i112.i1178, label %bb.auv, label %bb.auu

bb.auu:                                           ; preds = %.lr.ph36.i109.i1175
  %i.kmb = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  %i.kmc = add nsw i64 %i.kmb, %.2.i34.i111.i1177 ; 2 uses
  %i.kmd = lshr i64 %i.kmc, 3
  %i.kme = getelementptr inbounds nuw i8, ptr %i.kma, i64 %i.kmd
  %i.kmf = load i8, ptr %i.kme, align 1, !tbaa !98, !noalias !743
  %i.kmg = trunc i64 %i.kmc to i8
  %i.kmh = and i8 %i.kmg, 7
  %i.kmi = lshr i8 %i.kmf, %i.kmh
  %i.kmj = trunc i8 %i.kmi to i1
  br i1 %i.kmj, label %bb.auz, label %bb.ava

bb.auv:                                           ; preds = %.lr.ph36.i109.i1175
  %i.kmk = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !743
  %i.kml = getelementptr inbounds nuw i8, ptr %i.kmk, i64 40
  %i.kmm = load i32, ptr %i.kml, align 8, !tbaa !42, !noalias !743
  switch i32 %i.kmm, label %bb.auy [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i1180
    i32 28, label %bb.auw
    i32 38, label %bb.aux
  ]

bb.auw:                                           ; preds = %bb.auv
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.kov = load i8, ptr %i.kou, align 1, !tbaa !98, !noalias !743
  %i.kow = or i8 %i.kov, %i.kos
  store i8 %i.kow, ptr %i.kou, align 1, !tbaa !98, !noalias !743
  %i.kox = add nsw i64 %.183.i47.i138.i1204, 1
  br label %bb.avk

bb.avj:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i142.i1208, %bb.avh, %bb.avg, %bb.avf, %bb.avd
  %i.koy = shl nsw i64 %.3.i48.i137.i1203, 5
  %i.koz = getelementptr inbounds i8, ptr %i.kjh, i64 %i.koy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.koz, i8 0, i64 32, i1 false), !noalias !743
  br label %bb.avk

bb.avk:                                           ; preds = %bb.avj, %bb.avi
  %.284.i.i140.i1206 = phi i64 [ %i.kox, %bb.avi ], [ %.183.i47.i138.i1204, %bb.avj ] ; 2 uses
  %i.kpa = add nsw i64 %.3.i48.i137.i1203, 1      ; 2 uses
  %i.kpb = add nuw nsw i64 %.078.i49.i136.i1202, 1 ; 2 uses
  %exitcond66.not.i141.i1207 = icmp eq i64 %i.kpb, %i.knn
  br i1 %exitcond66.not.i141.i1207, label %.loopexit.i105.i1171, label %.lr.ph50.i135.i1201, !llvm.loop !748

bb.avl:                                           ; preds = %bb.avc
  %i.kpc = icmp sgt i32 %i.knk, 0
  %i.kpd = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1162 to i64 ; 2 uses
  br i1 %i.kpc, label %.preheader27.i121.i1187, label %.loopexit.sink.split.i102.i1168

.preheader27.i121.i1187:                          ; preds = %bb.avl
  %i.kpe = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 0
  br i1 %i.kpe, label %.lr.ph44.i122.i1188, label %.loopexit.i105.i1171

.lr.ph44.i122.i1188:                              ; preds = %.preheader27.i121.i1187, %bb.avz
  %.0.i43.i123.i1189 = phi i64 [ %i.krj, %bb.avz ], [ 0, %.preheader27.i121.i1187 ]
  %.4.i42.i124.i1190 = phi i64 [ %i.kri, %bb.avz ], [ %.081.i54.i94.i1160, %.preheader27.i121.i1187 ] ; 10 uses
  %.385.i41.i125.i1191 = phi i64 [ %.486.i.i127.i1193, %bb.avz ], [ %.082.i53.i95.i1161, %.preheader27.i121.i1187 ] ; 2 uses
  %i.kpf = load ptr, ptr %i.kjm, align 8, !tbaa !66, !noalias !743 ; 2 uses
  %.not.i26.i126.i1192 = icmp eq ptr %i.kpf, null
  br i1 %.not.i26.i126.i1192, label %bb.avn, label %bb.avm

bb.avm:                                           ; preds = %.lr.ph44.i122.i1188
  %i.kpg = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  %i.kph = add nsw i64 %i.kpg, %.4.i42.i124.i1190 ; 2 uses
  %i.kpi = lshr i64 %i.kph, 3
  %i.kpj = getelementptr inbounds nuw i8, ptr %i.kpf, i64 %i.kpi
  %i.kpk = load i8, ptr %i.kpj, align 1, !tbaa !98, !noalias !743
  %i.kpl = trunc i64 %i.kph to i8
  %i.kpm = and i8 %i.kpl, 7
  %i.kpn = lshr i8 %i.kpk, %i.kpm
  %i.kpo = trunc i8 %i.kpn to i1
  br i1 %i.kpo, label %bb.avr, label %bb.avy

bb.avn:                                           ; preds = %.lr.ph44.i122.i1188
  %i.kpp = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !743
  %i.kpq = getelementptr inbounds nuw i8, ptr %i.kpp, i64 40
  %i.kpr = load i32, ptr %i.kpq, align 8, !tbaa !42, !noalias !743
  switch i32 %i.kpr, label %bb.avq [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198
    i32 28, label %bb.avo
    i32 38, label %bb.avp
  ]

bb.avo:                                           ; preds = %bb.avn
  %i.kps = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i1190), !noalias !743
  br i1 %i.kps, label %bb.avy, label %bb.avr

bb.avp:                                           ; preds = %bb.avn
  %i.kpt = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i1190), !noalias !743
  br i1 %i.kpt, label %bb.avy, label %bb.avr

bb.avq:                                           ; preds = %bb.avn
  %i.kpu = load i64, ptr %i.kks, align 8, !tbaa !71, !noalias !743
  %i.kpv = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !743
  %.not24.i133.i1199 = icmp eq i64 %i.kpu, %i.kpv
  br i1 %.not24.i133.i1199, label %bb.avy, label %bb.avr

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198: ; preds = %bb.avn
  %i.kpw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i1190), !noalias !743
  br i1 %i.kpw, label %bb.avy, label %bb.avr

bb.avr:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198, %bb.avq, %bb.avp, %bb.avo, %bb.avm
  %i.kpx = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %.4.i42.i124.i1190 ; 2 uses
  %i.kpy = load i32, ptr %i.kpx, align 4, !tbaa !3, !noalias !743
  %i.kpz = zext i32 %i.kpy to i64                 ; 4 uses
  %i.kqa = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !743 ; 2 uses
  %.not.i29.i129.i1195 = icmp eq ptr %i.kqa, null
  br i1 %.not.i29.i129.i1195, label %bb.avt, label %bb.avs

bb.avs:                                           ; preds = %bb.avr
  %i.kqb = load i64, ptr %i.kkt, align 8, !tbaa !99, !noalias !743
  %i.kqc = add nsw i64 %i.kqb, %i.kpz             ; 2 uses
  %i.kqd = lshr i64 %i.kqc, 3
  %i.kqe = getelementptr inbounds nuw i8, ptr %i.kqa, i64 %i.kqd
  %i.kqf = load i8, ptr %i.kqe, align 1, !tbaa !98, !noalias !743
  %i.kqg = trunc i64 %i.kqc to i8
  %i.kqh = and i8 %i.kqg, 7
  %i.kqi = lshr i8 %i.kqf, %i.kqh
  %i.kqj = trunc i8 %i.kqi to i1
  br i1 %i.kqj, label %bb.avx, label %bb.avy

bb.avt:                                           ; preds = %bb.avr
  %i.kqk = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !743
  %i.kql = getelementptr inbounds nuw i8, ptr %i.kqk, i64 40
  %i.kqm = load i32, ptr %i.kql, align 8, !tbaa !42, !noalias !743
  switch i32 %i.kqm, label %bb.avw [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196
    i32 28, label %bb.avu
    i32 38, label %bb.avv
  ]

bb.avu:                                           ; preds = %bb.avt
  %i.kqn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kpz), !noalias !743
  br i1 %i.kqn, label %bb.avy, label %bb.avx

bb.avv:                                           ; preds = %bb.avt
  %i.kqo = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kpz), !noalias !743
  br i1 %i.kqo, label %bb.avy, label %bb.avx

bb.avw:                                           ; preds = %bb.avt
  %i.kqp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !743
  %i.kqq = load i64, ptr %i.kji, align 8, !tbaa !62, !noalias !743
  %.not25.i131.i1197 = icmp eq i64 %i.kqp, %i.kqq
  br i1 %.not25.i131.i1197, label %bb.avy, label %bb.avx

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196: ; preds = %bb.avt
  %i.kqr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kpz), !noalias !743
  br i1 %i.kqr, label %bb.avy, label %bb.avx

bb.avx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196, %bb.avw, %bb.avv, %bb.avu, %bb.avs
  %i.kqs = shl nsw i64 %.4.i42.i124.i1190, 5
  %i.kqt = getelementptr inbounds i8, ptr %i.kjh, i64 %i.kqs
  %i.kqu = load i32, ptr %i.kpx, align 4, !tbaa !3, !noalias !743
  %i.kqv = shl i32 %i.kqu, 5
  %i.kqw = zext i32 %i.kqv to i64
  %i.kqx = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.kqw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kqt, ptr noundef nonnull align 1 dereferenceable(32) %i.kqx, i64 32, i1 false), !noalias !743
  %i.kqy = srem i64 %.4.i42.i124.i1190, 8
  %i.kqz = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.kqy
  %i.kra = load i8, ptr %i.kqz, align 1, !tbaa !98, !noalias !743
  %i.krb = sdiv i64 %.4.i42.i124.i1190, 8
  %i.krc = getelementptr inbounds i8, ptr %.0.i.i.i91.i1157, i64 %i.krb ; 2 uses
  %i.krd = load i8, ptr %i.krc, align 1, !tbaa !98, !noalias !743
  %i.kre = or i8 %i.krd, %i.kra
  store i8 %i.kre, ptr %i.krc, align 1, !tbaa !98, !noalias !743
  %i.krf = add nsw i64 %.385.i41.i125.i1191, 1
  br label %bb.avz

bb.avy:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196, %bb.avw, %bb.avv, %bb.avu, %bb.avs, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198, %bb.avq, %bb.avp, %bb.avo, %bb.avm
  %i.krg = shl nsw i64 %.4.i42.i124.i1190, 5
  %i.krh = getelementptr inbounds i8, ptr %i.kjh, i64 %i.krg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.krh, i8 0, i64 32, i1 false), !noalias !743
  br label %bb.avz

bb.avz:                                           ; preds = %bb.avy, %bb.avx
  %.486.i.i127.i1193 = phi i64 [ %i.krf, %bb.avx ], [ %.385.i41.i125.i1191, %bb.avy ] ; 2 uses
  %i.kri = add nsw i64 %.4.i42.i124.i1190, 1      ; 2 uses
  %i.krj = add nuw nsw i64 %.0.i43.i123.i1189, 1  ; 2 uses
  %exitcond65.not.i128.i1194 = icmp eq i64 %i.krj, %i.kpd
  br i1 %exitcond65.not.i128.i1194, label %.loopexit.i105.i1171, label %.lr.ph44.i122.i1188, !llvm.loop !749

.loopexit.sink.split.i102.i1168:                  ; preds = %bb.avl, %bb.aut
  %.sink86.i103.i1169 = phi i64 [ %i.kly, %bb.aut ], [ %i.kpd, %bb.avl ] ; 2 uses
  %.587.i.ph.i104.i1170 = phi i64 [ %i.kla, %bb.aut ], [ %.082.i53.i95.i1161, %bb.avl ]
  %i.krk = shl nsw i64 %.081.i54.i94.i1160, 5
  %i.krl = getelementptr inbounds i8, ptr %i.kjh, i64 %i.krk
  %i.krm = shl nsw i64 %.sink86.i103.i1169, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.krl, i8 0, i64 %i.krm, i1 false), !noalias !743
  %i.krn = add nsw i64 %.sink86.i103.i1169, %.081.i54.i94.i1160
  br label %.loopexit.i105.i1171

.loopexit.i105.i1171.loopexit3307.unr-lcssa:      ; preds = %.lr.ph39.i116.i1182
  %i.kro = and i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 1
  %lcmp.mod3316.not = icmp eq i16 %i.kro, 0
  br i1 %lcmp.mod3316.not, label %.loopexit.i105.i1171, label %.lr.ph39.i116.i1182.epil.preheader

.lr.ph39.i116.i1182.epil.preheader:               ; preds = %.loopexit.i105.i1171.loopexit3307.unr-lcssa, %.lr.ph39.i116.i1182.preheader
  %.1.i37.i118.i1184.epil.init = phi i64 [ %.081.i54.i94.i1160, %.lr.ph39.i116.i1182.preheader ], [ %i.klw, %.loopexit.i105.i1171.loopexit3307.unr-lcssa ] ; 3 uses
  %lcmp.mod3318 = trunc i32 %i.kku to i1
  call void @llvm.assume(i1 %lcmp.mod3318)
  %i.krp = shl nsw i64 %.1.i37.i118.i1184.epil.init, 5
  %i.krq = getelementptr inbounds i8, ptr %i.kjh, i64 %i.krp
  %i.krr = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %.1.i37.i118.i1184.epil.init
  %i.krs = load i32, ptr %i.krr, align 4, !tbaa !3, !noalias !743
  %i.krt = shl i32 %i.krs, 5
  %i.kru = zext i32 %i.krt to i64
  %i.krv = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.kru
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.krq, ptr noundef nonnull align 1 dereferenceable(32) %i.krv, i64 32, i1 false), !noalias !743
  %i.krw = add nsw i64 %.1.i37.i118.i1184.epil.init, 1
  br label %.loopexit.i105.i1171

.loopexit.i105.i1171:                             ; preds = %bb.avb, %.lr.ph39.i116.i1182.epil.preheader, %.loopexit.i105.i1171.loopexit3307.unr-lcssa, %bb.avz, %bb.avk, %.loopexit.sink.split.i102.i1168, %.preheader27.i121.i1187, %.preheader.i134.i1200, %.preheader30.i108.i1174, %bb.aus
  %.587.i.i106.i1172 = phi i64 [ %.587.i.ph.i104.i1170, %.loopexit.sink.split.i102.i1168 ], [ %i.kla, %bb.aus ], [ %.486.i.i127.i1193, %bb.avz ], [ %i.kla, %.lr.ph39.i116.i1182.epil.preheader ], [ %i.kla, %.preheader30.i108.i1174 ], [ %.082.i53.i95.i1161, %.preheader.i134.i1200 ], [ %.082.i53.i95.i1161, %.preheader27.i121.i1187 ], [ %.284.i.i140.i1206, %bb.avk ], [ %i.kla, %.loopexit.i105.i1171.loopexit3307.unr-lcssa ], [ %i.kla, %bb.avb ] ; 2 uses
  %.5.i.i107.i1173 = phi i64 [ %i.krn, %.loopexit.sink.split.i102.i1168 ], [ %.081.i54.i94.i1160, %bb.aus ], [ %i.kri, %bb.avz ], [ %i.krw, %.lr.ph39.i116.i1182.epil.preheader ], [ %.081.i54.i94.i1160, %.preheader30.i108.i1174 ], [ %.081.i54.i94.i1160, %.preheader.i134.i1200 ], [ %.081.i54.i94.i1160, %.preheader27.i121.i1187 ], [ %i.kpa, %bb.avk ], [ %i.klw, %.loopexit.i105.i1171.loopexit3307.unr-lcssa ], [ %i.kni, %bb.avb ] ; 2 uses
  %i.krx = icmp slt i64 %.5.i.i107.i1173, %i.kjj
  br i1 %i.krx, label %bb.auq, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !750

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i1171, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156
  %.082.i.lcssa.i92.i1158 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156 ], [ %.587.i.i106.i1172, %.loopexit.i105.i1171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !743
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i1152:                                 ; preds = %.lr.ph.i86.i1152, %.lr.ph.i86.i1152.preheader.new
  %.0.i1833.i87.i1153 = phi i64 [ 0, %.lr.ph.i86.i1152.preheader.new ], [ %i.ksn, %.lr.ph.i86.i1152 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i86.i1152.preheader.new ], [ %niter.next.1, %.lr.ph.i86.i1152 ]
  %i.kry = shl nsw i64 %.0.i1833.i87.i1153, 5
  %i.krz = getelementptr inbounds nuw i8, ptr %i.kjh, i64 %i.kry
  %i.ksa = getelementptr inbounds nuw [4 x i8], ptr %i.kjp, i64 %.0.i1833.i87.i1153
  %i.ksb = load i32, ptr %i.ksa, align 4, !tbaa !3, !noalias !743
  %i.ksc = shl i32 %i.ksb, 5
  %i.ksd = zext i32 %i.ksc to i64
  %i.kse = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.ksd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.krz, ptr noundef nonnull align 1 dereferenceable(32) %i.kse, i64 32, i1 false), !noalias !743
  %i.ksf = or disjoint i64 %.0.i1833.i87.i1153, 1 ; 2 uses
  %i.ksg = shl nsw i64 %i.ksf, 5
  %i.ksh = getelementptr inbounds nuw i8, ptr %i.kjh, i64 %i.ksg
  %i.ksi = getelementptr inbounds nuw [4 x i8], ptr %i.kjp, i64 %i.ksf
  %i.ksj = load i32, ptr %i.ksi, align 4, !tbaa !3, !noalias !743
  %i.ksk = shl i32 %i.ksj, 5
  %i.ksl = zext i32 %i.ksk to i64
  %i.ksm = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.ksl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ksh, ptr noundef nonnull align 1 dereferenceable(32) %i.ksm, i64 32, i1 false), !noalias !743
  %i.ksn = add nuw nsw i64 %.0.i1833.i87.i1153, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa, label %.lr.ph.i86.i1152, !llvm.loop !751

bb.awa:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.awc, label %bb.awb

bb.awb:                                           ; preds = %bb.awa
  %i.kso = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ksp = load i64, ptr %i.kso, align 8, !tbaa !71, !noalias !752
  %.not.i19.i145.i1333 = icmp ne i64 %i.ksp, 0
  %i.ksq = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ksr = load ptr, ptr %i.ksq, align 8, !noalias !752
  %i.kss = icmp ne ptr %i.ksr, null
  %i.kst = select i1 %.not.i19.i145.i1333, i1 %i.kss, i1 false
  br label %bb.awc

bb.awc:                                           ; preds = %bb.awb, %bb.awa
  %i.ksu = phi i1 [ true, %bb.awa ], [ %i.kst, %bb.awb ]
  %i.ksv = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !752
  %i.ksw = extractvalue { i32, ptr } %i.ksv, 1    ; 9 uses
  %i.ksx = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !752 ; 13 uses
  %i.ksy = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ksz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !752 ; 11 uses
  %i.kta = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.ktb = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  %i.ktc = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.ktd = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.kte = load ptr, ptr %i.ktd, align 8, !tbaa !66, !noalias !752
  %i.ktf = getelementptr inbounds [8 x i8], ptr %i.kte, i64 %i.ktb ; 9 uses
  br i1 %i.ksu, label %bb.awd, label %.preheader32.i146.i1334

.preheader32.i146.i1334:                          ; preds = %bb.awc
  %i.ktg = icmp sgt i64 %i.ksz, 0
  br i1 %i.ktg, label %.lr.ph.i148.i1335.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1335.preheader:                      ; preds = %.preheader32.i146.i1334
  %xtraiter3343 = and i64 %i.ksz, 1
  %i.kth = icmp eq i64 %i.ksz, 1
  br i1 %i.kth, label %.lr.ph.i148.i1335.epil.preheader, label %.lr.ph.i148.i1335.preheader.new

.lr.ph.i148.i1335.preheader.new:                  ; preds = %.lr.ph.i148.i1335.preheader
  %unroll_iter3346 = and i64 %i.ksz, 9223372036854775806
  br label %.lr.ph.i148.i1335

bb.awd:                                           ; preds = %bb.awc
  %i.kti = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ktj = load ptr, ptr %i.kti, align 8, !tbaa !171, !noalias !752
  %i.ktk = load ptr, ptr %i.ktj, align 8, !tbaa !306, !noalias !752 ; 4 uses
  %.not.i.i.i151.i1338 = icmp eq ptr %i.ktk, null
  br i1 %.not.i.i.i151.i1338, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339, label %bb.awe

bb.awe:                                           ; preds = %bb.awd
  %i.ktl = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ktm = load i64, ptr %i.ktl, align 8, !tbaa !438, !noalias !752
  %i.ktn = getelementptr inbounds nuw i8, ptr %i.ktk, i64 9
  %i.kto = load i8, ptr %i.ktn, align 1, !tbaa !439, !range !127, !noalias !752, !noundef !128
  %i.ktp = trunc nuw i8 %i.kto to i1
  %i.ktq = getelementptr inbounds nuw i8, ptr %i.ktk, i64 8
  %i.ktr = load i8, ptr %i.ktq, align 8, !range !127, !noalias !752
  %i.kts = trunc nuw i8 %i.ktr to i1
  %i.ktt = select i1 %i.ktp, i1 %i.kts, i1 false, !prof !117
  %i.ktu = getelementptr inbounds nuw i8, ptr %i.ktk, i64 16
  %i.ktv = load ptr, ptr %i.ktu, align 8, !noalias !752
  %i.ktw = select i1 %i.ktt, ptr %i.ktv, ptr null, !prof !117
  %i.ktx = getelementptr inbounds i8, ptr %i.ktw, i64 %i.ktm
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339: ; preds = %bb.awe, %bb.awd
  %.0.i.i.i153.i1340 = phi ptr [ %i.ktx, %bb.awe ], [ null, %bb.awd ] ; 5 uses
  %i.kty = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ktz = load i64, ptr %i.kty, align 8, !tbaa !178, !noalias !752 ; 2 uses
  %i.kua = ashr i64 %i.ktz, 3
  %i.kub = and i64 %i.ktz, 7
  %i.kuc = icmp ne i64 %i.kub, 0
  %i.kud = zext i1 %i.kuc to i64
  %i.kue = add nsw i64 %i.kua, %i.kud
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i1340, i8 0, i64 %i.kue, i1 false), !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !752
  %i.kuf = load ptr, ptr %i.ktc, align 8, !tbaa !66, !noalias !752
  %i.kug = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.kuf, i64 noundef %i.kug, i64 noundef %i.ksz), !noalias !752
  %i.kuh = icmp sgt i64 %i.ksz, 0
  br i1 %i.kuh, label %.lr.ph55.i155.i1342, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i1342:                              ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339
  %i.kui = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.kuj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.awf

bb.awf:                                           ; preds = %.loopexit.i167.i1354, %.lr.ph55.i155.i1342
  %.081.i54.i156.i1343 = phi i64 [ 0, %.lr.ph55.i155.i1342 ], [ %.5.i.i169.i1356, %.loopexit.i167.i1354 ] ; 12 uses
  %.082.i53.i157.i1344 = phi i64 [ 0, %.lr.ph55.i155.i1342 ], [ %.587.i.i168.i1355, %.loopexit.i167.i1354 ] ; 6 uses
  %i.kuk = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %8), !noalias !752 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i1345 = trunc i32 %i.kuk to i16 ; 10 uses
  %i.kul = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !752
  %.not.i20.i159.i1346 = icmp ne i64 %i.kul, 0
  %i.kum = load ptr, ptr %i.v, align 8, !noalias !752
  %i.kun = icmp ne ptr %i.kum, null
  %i.kuo = select i1 %.not.i20.i159.i1346, i1 %i.kun, i1 false
  br i1 %i.kuo, label %bb.awr, label %bb.awg

bb.awg:                                           ; preds = %bb.awf
  %.sroa.14.0.extract.shift.i.i160.i1347 = lshr i32 %i.kuk, 16
  %.sroa.14.0.extract.trunc.i.i161.i1348 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i1347 to i64
  %sext91.i.i162.i1349 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i1348, 48
  %i.kup = ashr exact i64 %sext91.i.i162.i1349, 48
  %i.kuq = add nsw i64 %i.kup, %.082.i53.i157.i1344 ; 6 uses
  %i.kur = ashr i32 %i.kuk, 16                    ; 2 uses
  %sext.i.i163.i1350 = shl i32 %i.kuk, 16
  %i.kus = ashr exact i32 %sext.i.i163.i1350, 16
  %i.kut = icmp eq i32 %i.kur, %i.kus
  br i1 %i.kut, label %bb.awh, label %bb.awi

bb.awh:                                           ; preds = %bb.awg
  %i.kuu = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1345 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i1340, i64 noundef %.081.i54.i156.i1343, i64 noundef %i.kuu, i1 noundef zeroext true), !noalias !752
  %i.kuv = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 0
  br i1 %i.kuv, label %.lr.ph39.i178.i1365.preheader, label %.loopexit.i167.i1354

.lr.ph39.i178.i1365.preheader:                    ; preds = %bb.awh
  %i.kuw = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 1
  br i1 %i.kuw, label %.lr.ph39.i178.i1365.epil.preheader, label %.lr.ph39.i178.i1365.preheader.new

.lr.ph39.i178.i1365.preheader.new:                ; preds = %.lr.ph39.i178.i1365.preheader
  %unroll_iter3352 = and i64 %i.kuu, 32766
  br label %.lr.ph39.i178.i1365

.lr.ph39.i178.i1365:                              ; preds = %.lr.ph39.i178.i1365, %.lr.ph39.i178.i1365.preheader.new
  %.1.i37.i180.i1367 = phi i64 [ %.081.i54.i156.i1343, %.lr.ph39.i178.i1365.preheader.new ], [ %i.kvk, %.lr.ph39.i178.i1365 ] ; 4 uses
  %niter3353 = phi i64 [ 0, %.lr.ph39.i178.i1365.preheader.new ], [ %niter3353.next.1, %.lr.ph39.i178.i1365 ]
  %i.kux = shl nsw i64 %.1.i37.i180.i1367, 5
  %i.kuy = getelementptr inbounds i8, ptr %i.ksx, i64 %i.kux
  %i.kuz = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %.1.i37.i180.i1367
  %i.kva = load i64, ptr %i.kuz, align 8, !tbaa !130, !noalias !752
  %i.kvb = shl i64 %i.kva, 5
  %i.kvc = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.kvb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kuy, ptr noundef nonnull align 1 dereferenceable(32) %i.kvc, i64 32, i1 false), !noalias !752
  %i.kvd = add nsw i64 %.1.i37.i180.i1367, 1      ; 2 uses
  %i.kve = shl nsw i64 %i.kvd, 5
  %i.kvf = getelementptr inbounds i8, ptr %i.ksx, i64 %i.kve
  %i.kvg = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %i.kvd
  %i.kvh = load i64, ptr %i.kvg, align 8, !tbaa !130, !noalias !752
  %i.kvi = shl i64 %i.kvh, 5
  %i.kvj = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.kvi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kvf, ptr noundef nonnull align 1 dereferenceable(32) %i.kvj, i64 32, i1 false), !noalias !752
  %i.kvk = add nsw i64 %.1.i37.i180.i1367, 2      ; 3 uses
  %niter3353.next.1 = add i64 %niter3353, 2       ; 2 uses
  %niter3353.ncmp.1 = icmp eq i64 %niter3353.next.1, %unroll_iter3352
  br i1 %niter3353.ncmp.1, label %.loopexit.i167.i1354.loopexit3284.unr-lcssa, label %.lr.ph39.i178.i1365, !llvm.loop !755

bb.awi:                                           ; preds = %bb.awg
  %i.kvl = icmp sgt i32 %i.kur, 0
  %i.kvm = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1345 to i64 ; 2 uses
  br i1 %i.kvl, label %.preheader30.i170.i1357, label %.loopexit.sink.split.i164.i1351

.preheader30.i170.i1357:                          ; preds = %bb.awi
  %i.kvn = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 0
  br i1 %i.kvn, label %.lr.ph36.i171.i1358, label %.loopexit.i167.i1354

.lr.ph36.i171.i1358:                              ; preds = %.preheader30.i170.i1357, %bb.awq
  %.079.i35.i172.i1359 = phi i64 [ %i.kww, %bb.awq ], [ 0, %.preheader30.i170.i1357 ]
  %.2.i34.i173.i1360 = phi i64 [ %i.kwv, %bb.awq ], [ %.081.i54.i156.i1343, %.preheader30.i170.i1357 ] ; 10 uses
  %i.kvo = load ptr, ptr %i.ktc, align 8, !tbaa !66, !noalias !752 ; 2 uses
  %.not.i21.i174.i1361 = icmp eq ptr %i.kvo, null
  br i1 %.not.i21.i174.i1361, label %bb.awk, label %bb.awj

bb.awj:                                           ; preds = %.lr.ph36.i171.i1358
  %i.kvp = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  %i.kvq = add nsw i64 %i.kvp, %.2.i34.i173.i1360 ; 2 uses
  %i.kvr = lshr i64 %i.kvq, 3
  %i.kvs = getelementptr inbounds nuw i8, ptr %i.kvo, i64 %i.kvr
  %i.kvt = load i8, ptr %i.kvs, align 1, !tbaa !98, !noalias !752
  %i.kvu = trunc i64 %i.kvq to i8
  %i.kvv = and i8 %i.kvu, 7
  %i.kvw = lshr i8 %i.kvt, %i.kvv
  %i.kvx = trunc i8 %i.kvw to i1
  br i1 %i.kvx, label %bb.awo, label %bb.awp

bb.awk:                                           ; preds = %.lr.ph36.i171.i1358
  %i.kvy = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !752
  %i.kvz = getelementptr inbounds nuw i8, ptr %i.kvy, i64 40
  %i.kwa = load i32, ptr %i.kvz, align 8, !tbaa !42, !noalias !752
  switch i32 %i.kwa, label %bb.awn [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i1363
    i32 28, label %bb.awl
    i32 38, label %bb.awm
  ]

bb.awl:                                           ; preds = %bb.awk
  %i.kwb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i1360), !noalias !752
  br i1 %i.kwb, label %bb.awp, label %bb.awo
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.kyd = load i8, ptr %i.kyc, align 1, !tbaa !98, !noalias !752
  %i.kye = sdiv i64 %.3.i48.i199.i1386, 8
  %i.kyf = getelementptr inbounds i8, ptr %.0.i.i.i153.i1340, i64 %i.kye ; 2 uses
  %i.kyg = load i8, ptr %i.kyf, align 1, !tbaa !98, !noalias !752
  %i.kyh = or i8 %i.kyg, %i.kyd
  store i8 %i.kyh, ptr %i.kyf, align 1, !tbaa !98, !noalias !752
  %i.kyi = add nsw i64 %.183.i47.i200.i1387, 1
  br label %bb.awz

bb.awy:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit25.i204.i1391, %bb.aww, %bb.awv, %bb.awu, %bb.aws
  %i.kyj = shl nsw i64 %.3.i48.i199.i1386, 5
  %i.kyk = getelementptr inbounds i8, ptr %i.ksx, i64 %i.kyj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kyk, i8 0, i64 32, i1 false), !noalias !752
  br label %bb.awz

bb.awz:                                           ; preds = %bb.awy, %bb.awx
  %.284.i.i202.i1389 = phi i64 [ %i.kyi, %bb.awx ], [ %.183.i47.i200.i1387, %bb.awy ] ; 2 uses
  %i.kyl = add nsw i64 %.3.i48.i199.i1386, 1      ; 2 uses
  %i.kym = add nuw nsw i64 %.078.i49.i198.i1385, 1 ; 2 uses
  %exitcond66.not.i203.i1390 = icmp eq i64 %i.kym, %i.kxa
  br i1 %exitcond66.not.i203.i1390, label %.loopexit.i167.i1354, label %.lr.ph50.i197.i1384, !llvm.loop !757

bb.axa:                                           ; preds = %bb.awr
  %i.kyn = icmp sgt i32 %i.kwx, 0
  %i.kyo = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1345 to i64 ; 2 uses
  br i1 %i.kyn, label %.preheader27.i183.i1370, label %.loopexit.sink.split.i164.i1351

.preheader27.i183.i1370:                          ; preds = %bb.axa
  %i.kyp = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 0
  br i1 %i.kyp, label %.lr.ph44.i184.i1371, label %.loopexit.i167.i1354

.lr.ph44.i184.i1371:                              ; preds = %.preheader27.i183.i1370, %bb.axo
  %.0.i43.i185.i1372 = phi i64 [ %i.las, %bb.axo ], [ 0, %.preheader27.i183.i1370 ]
  %.4.i42.i186.i1373 = phi i64 [ %i.lar, %bb.axo ], [ %.081.i54.i156.i1343, %.preheader27.i183.i1370 ] ; 10 uses
  %.385.i41.i187.i1374 = phi i64 [ %.486.i.i189.i1376, %bb.axo ], [ %.082.i53.i157.i1344, %.preheader27.i183.i1370 ] ; 2 uses
  %i.kyq = load ptr, ptr %i.ktc, align 8, !tbaa !66, !noalias !752 ; 2 uses
  %.not.i26.i188.i1375 = icmp eq ptr %i.kyq, null
  br i1 %.not.i26.i188.i1375, label %bb.axc, label %bb.axb

bb.axb:                                           ; preds = %.lr.ph44.i184.i1371
  %i.kyr = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  %i.kys = add nsw i64 %i.kyr, %.4.i42.i186.i1373 ; 2 uses
  %i.kyt = lshr i64 %i.kys, 3
  %i.kyu = getelementptr inbounds nuw i8, ptr %i.kyq, i64 %i.kyt
  %i.kyv = load i8, ptr %i.kyu, align 1, !tbaa !98, !noalias !752
  %i.kyw = trunc i64 %i.kys to i8
  %i.kyx = and i8 %i.kyw, 7
  %i.kyy = lshr i8 %i.kyv, %i.kyx
  %i.kyz = trunc i8 %i.kyy to i1
  br i1 %i.kyz, label %bb.axg, label %bb.axn

bb.axc:                                           ; preds = %.lr.ph44.i184.i1371
  %i.kza = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !752
  %i.kzb = getelementptr inbounds nuw i8, ptr %i.kza, i64 40
  %i.kzc = load i32, ptr %i.kzb, align 8, !tbaa !42, !noalias !752
  switch i32 %i.kzc, label %bb.axf [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381
    i32 28, label %bb.axd
    i32 38, label %bb.axe
  ]

bb.axd:                                           ; preds = %bb.axc
  %i.kzd = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1373), !noalias !752
  br i1 %i.kzd, label %bb.axn, label %bb.axg

bb.axe:                                           ; preds = %bb.axc
  %i.kze = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1373), !noalias !752
  br i1 %i.kze, label %bb.axn, label %bb.axg

bb.axf:                                           ; preds = %bb.axc
  %i.kzf = load i64, ptr %i.kui, align 8, !tbaa !71, !noalias !752
  %i.kzg = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !752
  %.not24.i195.i1382 = icmp eq i64 %i.kzf, %i.kzg
  br i1 %.not24.i195.i1382, label %bb.axn, label %bb.axg

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381: ; preds = %bb.axc
  %i.kzh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1373), !noalias !752
  br i1 %i.kzh, label %bb.axn, label %bb.axg

bb.axg:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381, %bb.axf, %bb.axe, %bb.axd, %bb.axb
  %i.kzi = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %.4.i42.i186.i1373 ; 2 uses
  %i.kzj = load i64, ptr %i.kzi, align 8, !tbaa !130, !noalias !752 ; 4 uses
  %i.kzk = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !752 ; 2 uses
  %.not.i29.i191.i1378 = icmp eq ptr %i.kzk, null
  br i1 %.not.i29.i191.i1378, label %bb.axi, label %bb.axh

bb.axh:                                           ; preds = %bb.axg
  %i.kzl = load i64, ptr %i.kuj, align 8, !tbaa !99, !noalias !752
  %i.kzm = add nsw i64 %i.kzl, %i.kzj             ; 2 uses
  %i.kzn = lshr i64 %i.kzm, 3
  %i.kzo = getelementptr inbounds nuw i8, ptr %i.kzk, i64 %i.kzn
  %i.kzp = load i8, ptr %i.kzo, align 1, !tbaa !98, !noalias !752
  %i.kzq = trunc i64 %i.kzm to i8
  %i.kzr = and i8 %i.kzq, 7
  %i.kzs = lshr i8 %i.kzp, %i.kzr
  %i.kzt = trunc i8 %i.kzs to i1
  br i1 %i.kzt, label %bb.axm, label %bb.axn

bb.axi:                                           ; preds = %bb.axg
  %i.kzu = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !752
  %i.kzv = getelementptr inbounds nuw i8, ptr %i.kzu, i64 40
  %i.kzw = load i32, ptr %i.kzv, align 8, !tbaa !42, !noalias !752
  switch i32 %i.kzw, label %bb.axl [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379
    i32 28, label %bb.axj
    i32 38, label %bb.axk
  ]

bb.axj:                                           ; preds = %bb.axi
  %i.kzx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kzj), !noalias !752
  br i1 %i.kzx, label %bb.axn, label %bb.axm

bb.axk:                                           ; preds = %bb.axi
  %i.kzy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kzj), !noalias !752
  br i1 %i.kzy, label %bb.axn, label %bb.axm

bb.axl:                                           ; preds = %bb.axi
  %i.kzz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !752
  %i.laa = load i64, ptr %i.ksy, align 8, !tbaa !62, !noalias !752
  %.not25.i193.i1380 = icmp eq i64 %i.kzz, %i.laa
  br i1 %.not25.i193.i1380, label %bb.axn, label %bb.axm

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379: ; preds = %bb.axi
  %i.lab = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kzj), !noalias !752
  br i1 %i.lab, label %bb.axn, label %bb.axm

bb.axm:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379, %bb.axl, %bb.axk, %bb.axj, %bb.axh
  %i.lac = shl nsw i64 %.4.i42.i186.i1373, 5
  %i.lad = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lac
  %i.lae = load i64, ptr %i.kzi, align 8, !tbaa !130, !noalias !752
  %i.laf = shl i64 %i.lae, 5
  %i.lag = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.laf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lad, ptr noundef nonnull align 1 dereferenceable(32) %i.lag, i64 32, i1 false), !noalias !752
  %i.lah = srem i64 %.4.i42.i186.i1373, 8
  %i.lai = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.lah
  %i.laj = load i8, ptr %i.lai, align 1, !tbaa !98, !noalias !752
  %i.lak = sdiv i64 %.4.i42.i186.i1373, 8
  %i.lal = getelementptr inbounds i8, ptr %.0.i.i.i153.i1340, i64 %i.lak ; 2 uses
  %i.lam = load i8, ptr %i.lal, align 1, !tbaa !98, !noalias !752
  %i.lan = or i8 %i.lam, %i.laj
  store i8 %i.lan, ptr %i.lal, align 1, !tbaa !98, !noalias !752
  %i.lao = add nsw i64 %.385.i41.i187.i1374, 1
  br label %bb.axo

bb.axn:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379, %bb.axl, %bb.axk, %bb.axj, %bb.axh, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381, %bb.axf, %bb.axe, %bb.axd, %bb.axb
  %i.lap = shl nsw i64 %.4.i42.i186.i1373, 5
  %i.laq = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.laq, i8 0, i64 32, i1 false), !noalias !752
  br label %bb.axo

bb.axo:                                           ; preds = %bb.axn, %bb.axm
  %.486.i.i189.i1376 = phi i64 [ %i.lao, %bb.axm ], [ %.385.i41.i187.i1374, %bb.axn ] ; 2 uses
  %i.lar = add nsw i64 %.4.i42.i186.i1373, 1      ; 2 uses
  %i.las = add nuw nsw i64 %.0.i43.i185.i1372, 1  ; 2 uses
  %exitcond65.not.i190.i1377 = icmp eq i64 %i.las, %i.kyo
  br i1 %exitcond65.not.i190.i1377, label %.loopexit.i167.i1354, label %.lr.ph44.i184.i1371, !llvm.loop !758

.loopexit.sink.split.i164.i1351:                  ; preds = %bb.axa, %bb.awi
  %.sink86.i165.i1352 = phi i64 [ %i.kvm, %bb.awi ], [ %i.kyo, %bb.axa ] ; 2 uses
  %.587.i.ph.i166.i1353 = phi i64 [ %i.kuq, %bb.awi ], [ %.082.i53.i157.i1344, %bb.axa ]
  %i.lat = shl nsw i64 %.081.i54.i156.i1343, 5
  %i.lau = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lat
  %i.lav = shl nsw i64 %.sink86.i165.i1352, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.lau, i8 0, i64 %i.lav, i1 false), !noalias !752
  %i.law = add nsw i64 %.sink86.i165.i1352, %.081.i54.i156.i1343
  br label %.loopexit.i167.i1354

.loopexit.i167.i1354.loopexit3284.unr-lcssa:      ; preds = %.lr.ph39.i178.i1365
  %i.lax = and i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 1
  %lcmp.mod3349.not = icmp eq i16 %i.lax, 0
  br i1 %lcmp.mod3349.not, label %.loopexit.i167.i1354, label %.lr.ph39.i178.i1365.epil.preheader

.lr.ph39.i178.i1365.epil.preheader:               ; preds = %.loopexit.i167.i1354.loopexit3284.unr-lcssa, %.lr.ph39.i178.i1365.preheader
  %.1.i37.i180.i1367.epil.init = phi i64 [ %.081.i54.i156.i1343, %.lr.ph39.i178.i1365.preheader ], [ %i.kvk, %.loopexit.i167.i1354.loopexit3284.unr-lcssa ] ; 3 uses
  %lcmp.mod3351 = trunc i32 %i.kuk to i1
  call void @llvm.assume(i1 %lcmp.mod3351)
  %i.lay = shl nsw i64 %.1.i37.i180.i1367.epil.init, 5
  %i.laz = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lay
  %i.lba = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %.1.i37.i180.i1367.epil.init
  %i.lbb = load i64, ptr %i.lba, align 8, !tbaa !130, !noalias !752
  %i.lbc = shl i64 %i.lbb, 5
  %i.lbd = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lbc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.laz, ptr noundef nonnull align 1 dereferenceable(32) %i.lbd, i64 32, i1 false), !noalias !752
  %i.lbe = add nsw i64 %.1.i37.i180.i1367.epil.init, 1
  br label %.loopexit.i167.i1354

.loopexit.i167.i1354:                             ; preds = %bb.awq, %.lr.ph39.i178.i1365.epil.preheader, %.loopexit.i167.i1354.loopexit3284.unr-lcssa, %bb.axo, %bb.awz, %.loopexit.sink.split.i164.i1351, %.preheader27.i183.i1370, %.preheader.i196.i1383, %.preheader30.i170.i1357, %bb.awh
  %.587.i.i168.i1355 = phi i64 [ %.587.i.ph.i166.i1353, %.loopexit.sink.split.i164.i1351 ], [ %i.kuq, %bb.awh ], [ %.486.i.i189.i1376, %bb.axo ], [ %i.kuq, %.lr.ph39.i178.i1365.epil.preheader ], [ %i.kuq, %.preheader30.i170.i1357 ], [ %.082.i53.i157.i1344, %.preheader.i196.i1383 ], [ %.082.i53.i157.i1344, %.preheader27.i183.i1370 ], [ %.284.i.i202.i1389, %bb.awz ], [ %i.kuq, %.loopexit.i167.i1354.loopexit3284.unr-lcssa ], [ %i.kuq, %bb.awq ] ; 2 uses
  %.5.i.i169.i1356 = phi i64 [ %i.law, %.loopexit.sink.split.i164.i1351 ], [ %.081.i54.i156.i1343, %bb.awh ], [ %i.lar, %bb.axo ], [ %i.lbe, %.lr.ph39.i178.i1365.epil.preheader ], [ %.081.i54.i156.i1343, %.preheader30.i170.i1357 ], [ %.081.i54.i156.i1343, %.preheader.i196.i1383 ], [ %.081.i54.i156.i1343, %.preheader27.i183.i1370 ], [ %i.kyl, %bb.awz ], [ %i.kvk, %.loopexit.i167.i1354.loopexit3284.unr-lcssa ], [ %i.kwv, %bb.awq ] ; 2 uses
  %i.lbf = icmp slt i64 %.5.i.i169.i1356, %i.ksz
  br i1 %i.lbf, label %bb.awf, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !759

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i1354, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339
  %.082.i.lcssa.i154.i1341 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339 ], [ %.587.i.i168.i1355, %.loopexit.i167.i1354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !752
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1335:                                ; preds = %.lr.ph.i148.i1335, %.lr.ph.i148.i1335.preheader.new
  %.0.i1833.i149.i1336 = phi i64 [ 0, %.lr.ph.i148.i1335.preheader.new ], [ %i.lbt, %.lr.ph.i148.i1335 ] ; 4 uses
  %niter3347 = phi i64 [ 0, %.lr.ph.i148.i1335.preheader.new ], [ %niter3347.next.1, %.lr.ph.i148.i1335 ]
  %i.lbg = shl nsw i64 %.0.i1833.i149.i1336, 5
  %i.lbh = getelementptr inbounds nuw i8, ptr %i.ksx, i64 %i.lbg
  %i.lbi = getelementptr inbounds nuw [8 x i8], ptr %i.ktf, i64 %.0.i1833.i149.i1336
  %i.lbj = load i64, ptr %i.lbi, align 8, !tbaa !130, !noalias !752
  %i.lbk = shl i64 %i.lbj, 5
  %i.lbl = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lbk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lbh, ptr noundef nonnull align 1 dereferenceable(32) %i.lbl, i64 32, i1 false), !noalias !752
  %i.lbm = or disjoint i64 %.0.i1833.i149.i1336, 1 ; 2 uses
  %i.lbn = shl nsw i64 %i.lbm, 5
  %i.lbo = getelementptr inbounds nuw i8, ptr %i.ksx, i64 %i.lbn
  %i.lbp = getelementptr inbounds nuw [8 x i8], ptr %i.ktf, i64 %i.lbm
  %i.lbq = load i64, ptr %i.lbp, align 8, !tbaa !130, !noalias !752
  %i.lbr = shl i64 %i.lbq, 5
  %i.lbs = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lbr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lbo, ptr noundef nonnull align 1 dereferenceable(32) %i.lbs, i64 32, i1 false), !noalias !752
  %i.lbt = add nuw nsw i64 %.0.i1833.i149.i1336, 2 ; 2 uses
  %niter3347.next.1 = add i64 %niter3347, 2       ; 2 uses
  %niter3347.ncmp.1 = icmp eq i64 %niter3347.next.1, %unroll_iter3346
  br i1 %niter3347.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i1335, !llvm.loop !760

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i1335
  %lcmp.mod3344.not = icmp eq i64 %xtraiter3343, 0
  br i1 %lcmp.mod3344.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i1335.epil.preheader

.lr.ph.i148.i1335.epil.preheader:                 ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i1335.preheader
  %.0.i1833.i149.i1336.epil.init = phi i64 [ 0, %.lr.ph.i148.i1335.preheader ], [ %i.lbt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3345 = trunc i64 %i.ksz to i1
  call void @llvm.assume(i1 %lcmp.mod3345)
  %i.lbu = shl nsw i64 %.0.i1833.i149.i1336.epil.init, 5
  %i.lbv = getelementptr inbounds nuw i8, ptr %i.ksx, i64 %i.lbu
  %i.lbw = getelementptr inbounds nuw [8 x i8], ptr %i.ktf, i64 %.0.i1833.i149.i1336.epil.init
  %i.lbx = load i64, ptr %i.lbw, align 8, !tbaa !130, !noalias !752
  %i.lby = shl i64 %i.lbx, 5
  %i.lbz = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lby
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lbv, ptr noundef nonnull align 1 dereferenceable(32) %i.lbz, i64 32, i1 false), !noalias !752
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa: ; preds = %.lr.ph.i.i1274
  %lcmp.mod3333.not = icmp eq i64 %xtraiter3332, 0
  br i1 %lcmp.mod3333.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i1274.epil.preheader

.lr.ph.i.i1274.epil.preheader:                    ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa, %.lr.ph.i.i1274.preheader
  %.0.i1833.i.i1275.epil.init = phi i64 [ 0, %.lr.ph.i.i1274.preheader ], [ %i.jzh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa ] ; 2 uses
  %lcmp.mod3334 = trunc i64 %i.jqd to i1
  call void @llvm.assume(i1 %lcmp.mod3334)
  %i.lca = shl nsw i64 %.0.i1833.i.i1275.epil.init, 5
  %i.lcb = getelementptr inbounds nuw i8, ptr %i.jqb, i64 %i.lca
  %i.lcc = getelementptr inbounds nuw i8, ptr %i.jqj, i64 %.0.i1833.i.i1275.epil.init
  %i.lcd = load i8, ptr %i.lcc, align 1, !tbaa !98, !noalias !725
  %i.lce = zext i8 %i.lcd to i64
  %i.lcf = shl nuw nsw i64 %i.lce, 5
  %i.lcg = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.lcf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lcb, ptr noundef nonnull align 1 dereferenceable(32) %i.lcg, i64 32, i1 false), !noalias !725
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa: ; preds = %.lr.ph.i24.i1213
  %lcmp.mod3322.not = icmp eq i64 %xtraiter3321, 0
  br i1 %lcmp.mod3322.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i1213.epil.preheader

.lr.ph.i24.i1213.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa, %.lr.ph.i24.i1213.preheader
  %.0.i1833.i25.i1214.epil.init = phi i64 [ 0, %.lr.ph.i24.i1213.preheader ], [ %i.kix, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa ] ; 2 uses
  %lcmp.mod3323 = trunc i64 %i.jzt to i1
  call void @llvm.assume(i1 %lcmp.mod3323)
  %i.lch = shl nsw i64 %.0.i1833.i25.i1214.epil.init, 5
  %i.lci = getelementptr inbounds nuw i8, ptr %i.jzr, i64 %i.lch
  %i.lcj = getelementptr inbounds nuw [2 x i8], ptr %i.jzz, i64 %.0.i1833.i25.i1214.epil.init
  %i.lck = load i16, ptr %i.lcj, align 2, !tbaa !269, !noalias !734
  %i.lcl = zext i16 %i.lck to i64
  %i.lcm = shl nuw nsw i64 %i.lcl, 5
  %i.lcn = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.lcm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lci, ptr noundef nonnull align 1 dereferenceable(32) %i.lcn, i64 32, i1 false), !noalias !734
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa: ; preds = %.lr.ph.i86.i1152
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i1152.epil.preheader

.lr.ph.i86.i1152.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa, %.lr.ph.i86.i1152.preheader
  %.0.i1833.i87.i1153.epil.init = phi i64 [ 0, %.lr.ph.i86.i1152.preheader ], [ %i.ksn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa ] ; 2 uses
  %lcmp.mod3314 = trunc i64 %i.kjj to i1
  call void @llvm.assume(i1 %lcmp.mod3314)
  %i.lco = shl nsw i64 %.0.i1833.i87.i1153.epil.init, 5
  %i.lcp = getelementptr inbounds nuw i8, ptr %i.kjh, i64 %i.lco
  %i.lcq = getelementptr inbounds nuw [4 x i8], ptr %i.kjp, i64 %.0.i1833.i87.i1153.epil.init
  %i.lcr = load i32, ptr %i.lcq, align 4, !tbaa !3, !noalias !743
  %i.lcs = shl i32 %i.lcr, 5
  %i.lct = zext i32 %i.lcs to i64
  %i.lcu = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.lct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lcp, ptr noundef nonnull align 1 dereferenceable(32) %i.lcu, i64 32, i1 false), !noalias !743
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i1152.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa, %.lr.ph.i24.i1213.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa, %.lr.ph.i.i1274.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa, %.lr.ph.i148.i1335.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i1273, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i1212, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i1150, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i1334, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i1151 = phi i64 [ %i.jzt, %.lr.ph.i24.i1213.epil.preheader ], [ %i.jqd, %.lr.ph.i.i1274.epil.preheader ], [ %i.ksz, %.lr.ph.i148.i1335.epil.preheader ], [ %.082.i.lcssa.i.i1280, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.jqd, %.preheader32.i.i1273 ], [ %.082.i.lcssa.i30.i1219, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.jzt, %.preheader32.i22.i1212 ], [ %.082.i.lcssa.i92.i1158, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.kjj, %.preheader32.i84.i1150 ], [ %.082.i.lcssa.i154.i1341, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.ksz, %.preheader32.i146.i1334 ], [ %i.ksz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.jqd, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa ], [ %i.jzt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa ], [ %i.kjj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa ], [ %i.kjj, %.lr.ph.i86.i1152.epil.preheader ]
  %i.lcv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lcw = load i64, ptr %i.lcv, align 8, !tbaa !178, !noalias !721
  %i.lcx = sub nsw i64 %i.lcw, %.0.i147.sink.i1151
  %i.lcy = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.lcx, ptr %i.lcy seq_cst, align 8, !noalias !721
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !721
  br label %.critedge69

bb.axp:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  %i.lcz = load ptr, ptr %i.b, align 8, !tbaa !33 ; 3 uses
  %i.lda = getelementptr inbounds nuw i8, ptr %i.lcz, i64 40
  %i.ldb = load i32, ptr %i.lda, align 8, !tbaa !42
  switch i32 %i.ldb, label %bb.bdy [
    i32 15, label %.critedge71
    i32 32, label %.critedge71
  ], !prof !761

.critedge71:                                      ; preds = %bb.axp, %bb.axp
  %i.ldc = call noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.lcz) ; 140 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.ldd = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !762 ; 2 uses
  %i.lde = load ptr, ptr %i.ldd, align 8, !tbaa !90, !noalias !762
  %i.ldf = getelementptr inbounds nuw i8, ptr %i.lde, i64 64
  %i.ldg = load ptr, ptr %i.ldf, align 8, !noalias !762
  %i.ldh = call noundef i32 %i.ldg(ptr noundef nonnull align 8 dereferenceable(72) %i.ldd), !noalias !762, !inline_history !765
  %i.ldi = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !762
  %.not.i.i144.i1490 = icmp ne i64 %i.ldi, 0
  %i.ldj = load ptr, ptr %i.v, align 8, !noalias !762
  %i.ldk = icmp ne ptr %i.ldj, null
  %i.ldl = select i1 %.not.i.i144.i1490, i1 %i.ldk, i1 false ; 4 uses
  switch i32 %i.ldh, label %bb.bcj [
    i32 1, label %bb.axq
    i32 2, label %bb.azf
    i32 4, label %bb.bau
  ]

bb.axq:                                           ; preds = %.critedge71
  br i1 %i.ldl, label %bb.axs, label %bb.axr

bb.axr:                                           ; preds = %bb.axq
  %i.ldm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ldn = load i64, ptr %i.ldm, align 8, !tbaa !71, !noalias !766
  %.not.i19.i.i1459 = icmp ne i64 %i.ldn, 0
  %i.ldo = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ldp = load ptr, ptr %i.ldo, align 8, !noalias !766
  %i.ldq = icmp ne ptr %i.ldp, null
  %i.ldr = select i1 %.not.i19.i.i1459, i1 %i.ldq, i1 false
  br label %bb.axs

bb.axs:                                           ; preds = %bb.axr, %bb.axq
  %i.lds = phi i1 [ true, %bb.axq ], [ %i.ldr, %bb.axr ]
  %i.ldt = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !766
  %i.ldu = extractvalue { i32, ptr } %i.ldt, 1    ; 9 uses
  %i.ldv = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !766 ; 13 uses
  %i.ldw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ldx = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !766 ; 11 uses
  %i.ldy = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.ldz = load i64, ptr %i.ldy, align 8, !tbaa !99, !noalias !766
  %i.lea = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.leb = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.lec = load ptr, ptr %i.leb, align 8, !tbaa !66, !noalias !766
  %i.led = getelementptr inbounds i8, ptr %i.lec, i64 %i.ldz ; 9 uses
  br i1 %i.lds, label %bb.axt, label %.preheader41.i.i

.preheader41.i.i:                                 ; preds = %bb.axs
  %i.lee = icmp sgt i64 %i.ldx, 0
  br i1 %i.lee, label %.lr.ph.i.i1460.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i.i1460.preheader:                         ; preds = %.preheader41.i.i
  %xtraiter3607 = and i64 %i.ldx, 1
  %i.lef = icmp eq i64 %i.ldx, 1
  br i1 %i.lef, label %.lr.ph.i.i1460.epil.preheader, label %.lr.ph.i.i1460.preheader.new

.lr.ph.i.i1460.preheader.new:                     ; preds = %.lr.ph.i.i1460.preheader
  %unroll_iter3611 = and i64 %i.ldx, 9223372036854775806
  br label %.lr.ph.i.i1460

bb.axt:                                           ; preds = %bb.axs
  %i.leg = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.leh = load ptr, ptr %i.leg, align 8, !tbaa !171, !noalias !766
  %i.lei = load ptr, ptr %i.leh, align 8, !tbaa !306, !noalias !766 ; 4 uses
  %.not.i.i.i.i1462 = icmp eq ptr %i.lei, null
  br i1 %.not.i.i.i.i1462, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463, label %bb.axu

bb.axu:                                           ; preds = %bb.axt
  %i.lej = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.lek = load i64, ptr %i.lej, align 8, !tbaa !438, !noalias !766
  %i.lel = getelementptr inbounds nuw i8, ptr %i.lei, i64 9
  %i.lem = load i8, ptr %i.lel, align 1, !tbaa !439, !range !127, !noalias !766, !noundef !128
  %i.len = trunc nuw i8 %i.lem to i1
  %i.leo = getelementptr inbounds nuw i8, ptr %i.lei, i64 8
  %i.lep = load i8, ptr %i.leo, align 8, !range !127, !noalias !766
  %i.leq = trunc nuw i8 %i.lep to i1
  %i.ler = select i1 %i.len, i1 %i.leq, i1 false, !prof !117
  %i.les = getelementptr inbounds nuw i8, ptr %i.lei, i64 16
  %i.let = load ptr, ptr %i.les, align 8, !noalias !766
  %i.leu = select i1 %i.ler, ptr %i.let, ptr null, !prof !117
  %i.lev = getelementptr inbounds i8, ptr %i.leu, i64 %i.lek
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463: ; preds = %bb.axu, %bb.axt
  %.0.i.i.i.i1464 = phi ptr [ %i.lev, %bb.axu ], [ null, %bb.axt ] ; 5 uses
  %i.lew = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lex = load i64, ptr %i.lew, align 8, !tbaa !178, !noalias !766 ; 2 uses
  %i.ley = ashr i64 %i.lex, 3
  %i.lez = and i64 %i.lex, 7
  %i.lfa = icmp ne i64 %i.lez, 0
  %i.lfb = zext i1 %i.lfa to i64
  %i.lfc = add nsw i64 %i.ley, %i.lfb
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i1464, i8 0, i64 %i.lfc, i1 false), !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !766
  %i.lfd = load ptr, ptr %i.lea, align 8, !tbaa !66, !noalias !766
  %i.lfe = load i64, ptr %i.ldy, align 8, !tbaa !99, !noalias !766
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lfd, i64 noundef %i.lfe, i64 noundef %i.ldx), !noalias !766
  %i.lff = icmp sgt i64 %i.ldx, 0
  br i1 %i.lff, label %.lr.ph64.i.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb1EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph64.i.i:                                     ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463
  %i.lfg = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.lfh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.axv

bb.axv:                                           ; preds = %.loopexit.i.i1474, %.lr.ph64.i.i
  %.081.i63.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %.5.i.i.i1476, %.loopexit.i.i1474 ] ; 12 uses
  %.082.i62.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %.587.i.i.i1475, %.loopexit.i.i1474 ] ; 6 uses
  %i.lfi = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %7), !noalias !766 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i1466 = trunc i32 %i.lfi to i16 ; 10 uses
  %i.lfj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !766
  %.not.i20.i.i1467 = icmp ne i64 %i.lfj, 0
  %i.lfk = load ptr, ptr %i.v, align 8, !noalias !766
  %i.lfl = icmp ne ptr %i.lfk, null
  %i.lfm = select i1 %.not.i20.i.i1467, i1 %i.lfl, i1 false
  br i1 %i.lfm, label %bb.ayh, label %bb.axw

bb.axw:                                           ; preds = %bb.axv
  %.sroa.14.0.extract.shift.i.i.i1468 = lshr i32 %i.lfi, 16
  %.sroa.14.0.extract.trunc.i.i.i1469 = zext nneg i32 %.sroa.14.0.extract.shift.i.i.i1468 to i64
  %sext91.i.i.i1470 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i.i1469, 48
  %i.lfn = ashr exact i64 %sext91.i.i.i1470, 48
  %i.lfo = add nsw i64 %i.lfn, %.082.i62.i.i      ; 6 uses
  %i.lfp = ashr i32 %i.lfi, 16                    ; 2 uses
  %sext.i.i.i1471 = shl i32 %i.lfi, 16
  %i.lfq = ashr exact i32 %sext.i.i.i1471, 16
  %i.lfr = icmp eq i32 %i.lfp, %i.lfq
  br i1 %i.lfr, label %bb.axx, label %bb.axy

bb.axx:                                           ; preds = %bb.axw
  %i.lfs = sext i16 %.sroa.0.0.extract.trunc.i.i.i1466 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i.i1464, i64 noundef %.081.i63.i.i, i64 noundef %i.lfs, i1 noundef zeroext true), !noalias !766
  %i.lft = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1466, 0
  br i1 %i.lft, label %.lr.ph48.i.i.preheader, label %.loopexit.i.i1474

.lr.ph48.i.i.preheader:                           ; preds = %bb.axx
  %i.lfu = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i1466, 1
  br i1 %i.lfu, label %.lr.ph48.i.i.epil.preheader, label %.lr.ph48.i.i.preheader.new

.lr.ph48.i.i.preheader.new:                       ; preds = %.lr.ph48.i.i.preheader
  %unroll_iter3618 = and i64 %i.lfs, 32766
  br label %.lr.ph48.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i, %.lr.ph48.i.i.preheader.new
  %.1.i46.i.i = phi i64 [ %.081.i63.i.i, %.lr.ph48.i.i.preheader.new ], [ %i.lgk, %.lr.ph48.i.i ] ; 4 uses
  %niter3619 = phi i64 [ 0, %.lr.ph48.i.i.preheader.new ], [ %niter3619.next.1, %.lr.ph48.i.i ]
  %i.lfv = mul nsw i64 %.1.i46.i.i, %i.ldc
  %i.lfw = getelementptr inbounds i8, ptr %i.ldv, i64 %i.lfv
  %i.lfx = getelementptr inbounds i8, ptr %i.led, i64 %.1.i46.i.i
  %i.lfy = load i8, ptr %i.lfx, align 1, !tbaa !98, !noalias !766
  %i.lfz = zext i8 %i.lfy to i64
  %i.lga = mul nsw i64 %i.ldc, %i.lfz
  %i.lgb = getelementptr inbounds i8, ptr %i.ldu, i64 %i.lga
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lfw, ptr align 1 %i.lgb, i64 %i.ldc, i1 false), !noalias !766
  %i.lgc = add nsw i64 %.1.i46.i.i, 1             ; 2 uses
  %i.lgd = mul nsw i64 %i.lgc, %i.ldc
  %i.lge = getelementptr inbounds i8, ptr %i.ldv, i64 %i.lgd
  %i.lgf = getelementptr inbounds i8, ptr %i.led, i64 %i.lgc
  %i.lgg = load i8, ptr %i.lgf, align 1, !tbaa !98, !noalias !766
  %i.lgh = zext i8 %i.lgg to i64
  %i.lgi = mul nsw i64 %i.ldc, %i.lgh
  %i.lgj = getelementptr inbounds i8, ptr %i.ldu, i64 %i.lgi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lge, ptr align 1 %i.lgj, i64 %i.ldc, i1 false), !noalias !766
  %i.lgk = add nsw i64 %.1.i46.i.i, 2             ; 3 uses
  %niter3619.next.1 = add i64 %niter3619, 2       ; 2 uses
  %niter3619.ncmp.1 = icmp eq i64 %niter3619.next.1, %unroll_iter3618
  br i1 %niter3619.ncmp.1, label %.loopexit.i.i1474.loopexit3054.unr-lcssa, label %.lr.ph48.i.i, !llvm.loop !769

bb.axy:                                           ; preds = %bb.axw
  %i.lgl = icmp sgt i32 %i.lfp, 0
  %i.lgm = sext i16 %.sroa.0.0.extract.trunc.i.i.i1466 to i64 ; 2 uses
  br i1 %i.lgl, label %.preheader39.i.i, label %.loopexit.sink.split.i.i1472
end_hunk_15
