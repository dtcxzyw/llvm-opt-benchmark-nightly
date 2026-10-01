Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ControlHeightReduction?download=true
inline.NumInlined: 6152
inline.NumDeleted: 3072
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm26ControlHeightReductionPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.po = load ptr, ptr %.val.i356.i.i.i.i, align 8, !tbaa !170
  %i.pp = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.po) #25
  %i.pq = icmp ult i32 %i.pn, %i.pp
  br i1 %i.pq, label %.lr.ph.i.i.4.i.i77.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i, !llvm.loop !3

bb.az:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.3.i.i57.i.i.i.i
  %i.pr = ptrtoint ptr %.022.i.ptr.4.i.i59.i.i.i.i to i64
  %i.ps = sub i64 %i.pr, %i.ld                    ; 3 uses
  %i.pt = ashr exact i64 %i.ps, 3                 ; 2 uses
  %i.pu = icmp sgt i64 %i.pt, 1
  br i1 %i.pu, label %bb.bc, label %bb.ba, !prof !103

bb.ba:                                            ; preds = %bb.az
  %i.pv = icmp eq i64 %i.ps, 8
  br i1 %i.pv, label %bb.bb, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %.val.i.i.i.i.i.i.4.i.i82.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.4.i.i82.i.i.i.i, ptr %.022.i.ptr.4.i.i59.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.pw = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 48
  %i.px = sub nsw i64 0, %i.pt
  %i.py = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.py, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.ps, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i: ; preds = %.lr.ph.i.i.4.i.i77.i.i.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.sink.i.4.i.i64.i.i.i.i = phi ptr [ %.029.i.i34.i.i.i.i, %bb.bb ], [ %.029.i.i34.i.i.i.i, %bb.bc ], [ %.029.i.i34.i.i.i.i, %bb.ba ], [ %.022.i.ptr.4.i.i59.i.i.i.i, %bb.ay ], [ %.014.i.i.4.i.i78.i.i.i.i, %.lr.ph.i.i.4.i.i77.i.i.i.i ]
  store ptr %i.pf, ptr %.sink.i.4.i.i64.i.i.i.i, align 8, !tbaa !122
  %.022.i.ptr.5.i.i65.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 48 ; 6 uses
  %.0.val.i.5.i.i66.i.i.i.i = load ptr, ptr %.022.i.ptr.5.i.i65.i.i.i.i, align 8, !tbaa !122
  %.val18.i.5.i.i67.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  %.val2.i353.i.i.i.i = load ptr, ptr %.0.val.i.5.i.i66.i.i.i.i, align 8, !tbaa !66
  %i.pz = load ptr, ptr %.val2.i353.i.i.i.i, align 8, !tbaa !170
  %i.qa = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.pz) #25
  %.val.i354.i.i.i.i = load ptr, ptr %.val18.i.5.i.i67.i.i.i.i, align 8, !tbaa !66
  %i.qb = load ptr, ptr %.val.i354.i.i.i.i, align 8, !tbaa !170
  %i.qc = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qb) #25
  %i.qd = icmp ult i32 %i.qa, %i.qc
  %i.qe = load ptr, ptr %.022.i.ptr.5.i.i65.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.qd, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i
  %.0.val12.i.i.5.i.i68.i.i.i.i = load ptr, ptr %.022.i.ptr.4.i.i59.i.i.i.i, align 8, !tbaa !122
  %.val2.i351.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !66
  %i.qf = load ptr, ptr %.val2.i351.i.i.i.i, align 8, !tbaa !170
  %i.qg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qf) #25
  %.val.i352.i.i.i.i = load ptr, ptr %.0.val12.i.i.5.i.i68.i.i.i.i, align 8, !tbaa !66
  %i.qh = load ptr, ptr %.val.i352.i.i.i.i, align 8, !tbaa !170
  %i.qi = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qh) #25
  %i.qj = icmp ult i32 %i.qg, %i.qi
  br i1 %i.qj, label %.lr.ph.i.i.5.i.i71.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

.lr.ph.i.i.5.i.i71.i.i.i.i:                       ; preds = %bb.bd, %.lr.ph.i.i.5.i.i71.i.i.i.i
  %.014.i.i.5.i.i72.i.i.i.i = phi ptr [ %.0.i.i.5.i.i74.i.i.i.i, %.lr.ph.i.i.5.i.i71.i.i.i.i ], [ %.022.i.ptr.4.i.i59.i.i.i.i, %bb.bd ] ; 4 uses
  %.0913.i.i.5.i.i73.i.i.i.i = phi ptr [ %.014.i.i.5.i.i72.i.i.i.i, %.lr.ph.i.i.5.i.i71.i.i.i.i ], [ %.022.i.ptr.5.i.i65.i.i.i.i, %bb.bd ]
  %i.qk = load ptr, ptr %.014.i.i.5.i.i72.i.i.i.i, align 8, !tbaa !122
  store ptr %i.qk, ptr %.0913.i.i.5.i.i73.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.5.i.i74.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.5.i.i72.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.5.i.i75.i.i.i.i = load ptr, ptr %.0.i.i.5.i.i74.i.i.i.i, align 8, !tbaa !122
  %.val2.i349.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !66
  %i.ql = load ptr, ptr %.val2.i349.i.i.i.i, align 8, !tbaa !170
  %i.qm = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ql) #25
  %.val.i350.i.i.i.i = load ptr, ptr %.0.val.i.i.5.i.i75.i.i.i.i, align 8, !tbaa !66
  %i.qn = load ptr, ptr %.val.i350.i.i.i.i, align 8, !tbaa !170
  %i.qo = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qn) #25
  %i.qp = icmp ult i32 %i.qm, %i.qo
  br i1 %i.qp, label %.lr.ph.i.i.5.i.i71.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i, !llvm.loop !3

bb.be:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i
  %i.qq = ptrtoint ptr %.022.i.ptr.5.i.i65.i.i.i.i to i64
  %i.qr = sub i64 %i.qq, %i.ld                    ; 3 uses
  %i.qs = ashr exact i64 %i.qr, 3                 ; 2 uses
  %i.qt = icmp sgt i64 %i.qs, 1
  br i1 %i.qt, label %bb.bh, label %bb.bf, !prof !103

bb.bf:                                            ; preds = %bb.be
  %i.qu = icmp eq i64 %i.qr, 8
  br i1 %i.qu, label %bb.bg, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i.i.i.i.i.5.i.i76.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.5.i.i76.i.i.i.i, ptr %.022.i.ptr.5.i.i65.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

bb.bh:                                            ; preds = %bb.be
  %i.qv = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 56
  %i.qw = sub nsw i64 0, %i.qs
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.qw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qx, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.qr, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i: ; preds = %.lr.ph.i.i.5.i.i71.i.i.i.i, %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %.sink.i.5.i.i70.i.i.i.i = phi ptr [ %.029.i.i34.i.i.i.i, %bb.bg ], [ %.029.i.i34.i.i.i.i, %bb.bh ], [ %.029.i.i34.i.i.i.i, %bb.bf ], [ %.022.i.ptr.5.i.i65.i.i.i.i, %bb.bd ], [ %.014.i.i.5.i.i72.i.i.i.i, %.lr.ph.i.i.5.i.i71.i.i.i.i ]
  store ptr %i.qe, ptr %.sink.i.5.i.i70.i.i.i.i, align 8, !tbaa !122
  %i.qy = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 56 ; 3 uses
  %i.qz = ptrtoint ptr %i.qy to i64               ; 3 uses
  %i.ra = sub i64 %i.la, %i.qz
  %i.rb = icmp sgt i64 %i.ra, 48
  br i1 %i.rb, label %.lr.ph.i.i33.i.i.i.i, label %._crit_edge.i.i8.i.i.i.i, !llvm.loop !4

._crit_edge.i.i8.i.i.i.i:                         ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i, %bb.ad
  %.0.lcssa.i.i9.i.i.i.i = phi ptr [ %.val7.i86.i, %bb.ad ], [ %i.qy, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i ] ; 9 uses
  %.lcssa.i.i10.i.i.i.i = phi i64 [ %i.kp, %bb.ad ], [ %i.qz, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i ]
  %i.rc = icmp eq ptr %.0.lcssa.i.i9.i.i.i.i, %i.kz
  %.019.i12.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i9.i.i.i.i, i64 8 ; 2 uses
  %.not20.i.i.i12.i.i.i.i = icmp eq ptr %.019.i12.i.i11.i.i.i.i, %i.kz
  %or.cond.i.i13.i.i.i.i = select i1 %i.rc, i1 true, i1 %.not20.i.i.i12.i.i.i.i
  br i1 %or.cond.i.i13.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i

.lr.ph.i.i.i14.i.i.i.i:                           ; preds = %._crit_edge.i.i8.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i
  %.022.i13.i.i15.i.i.i.i = phi ptr [ %.0.i20.i.i22.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i ], [ %.019.i12.i.i11.i.i.i.i, %._crit_edge.i.i8.i.i.i.i ] ; 7 uses
  %.pn21.i14.i.i16.i.i.i.i = phi ptr [ %.022.i13.i.i15.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i ], [ %.0.lcssa.i.i9.i.i.i.i, %._crit_edge.i.i8.i.i.i.i ] ; 4 uses
  %.0.val.i15.i.i17.i.i.i.i = load ptr, ptr %.022.i13.i.i15.i.i.i.i, align 8, !tbaa !122
  %.val18.i16.i.i18.i.i.i.i = load ptr, ptr %.0.lcssa.i.i9.i.i.i.i, align 8, !tbaa !122
  %.val2.i347.i.i.i.i = load ptr, ptr %.0.val.i15.i.i17.i.i.i.i, align 8, !tbaa !66
  %i.rd = load ptr, ptr %.val2.i347.i.i.i.i, align 8, !tbaa !170
  %i.re = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.rd) #25
  %.val.i348.i.i.i.i = load ptr, ptr %.val18.i16.i.i18.i.i.i.i, align 8, !tbaa !66
  %i.rf = load ptr, ptr %.val.i348.i.i.i.i, align 8, !tbaa !170
  %i.rg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.rf) #25
  %i.rh = icmp ult i32 %i.re, %i.rg
  %i.ri = load ptr, ptr %.022.i13.i.i15.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.rh, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.lr.ph.i.i.i14.i.i.i.i
  %i.rj = ptrtoint ptr %.022.i13.i.i15.i.i.i.i to i64
  %i.rk = sub i64 %i.rj, %.lcssa.i.i10.i.i.i.i    ; 3 uses
  %i.rl = ashr exact i64 %i.rk, 3                 ; 2 uses
  %i.rm = icmp sgt i64 %i.rl, 1
  br i1 %i.rm, label %bb.bj, label %bb.bk, !prof !103

bb.bj:                                            ; preds = %bb.bi
  %i.rn = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i16.i.i.i.i, i64 16
  %i.ro = sub nsw i64 0, %i.rl
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.ro
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rp, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa.i.i9.i.i.i.i, i64 %i.rk, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.rq = icmp eq i64 %i.rk, 8
  br i1 %i.rq, label %bb.bl, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.rr = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i16.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i27.i.i32.i.i.i.i = load ptr, ptr %.0.lcssa.i.i9.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i27.i.i32.i.i.i.i, ptr %i.rr, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i14.i.i.i.i
  %.0.val12.i.i17.i.i19.i.i.i.i = load ptr, ptr %.pn21.i14.i.i16.i.i.i.i, align 8, !tbaa !122
  %.val2.i345.i.i.i.i = load ptr, ptr %i.ri, align 8, !tbaa !66
  %i.rs = load ptr, ptr %.val2.i345.i.i.i.i, align 8, !tbaa !170
  %i.rt = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.rs) #25
  %.val.i346.i.i.i.i = load ptr, ptr %.0.val12.i.i17.i.i19.i.i.i.i, align 8, !tbaa !66
  %i.ru = load ptr, ptr %.val.i346.i.i.i.i, align 8, !tbaa !170
  %i.rv = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ru) #25
  %i.rw = icmp ult i32 %i.rt, %i.rv
  br i1 %i.rw, label %.lr.ph.i.i22.i.i27.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

.lr.ph.i.i22.i.i27.i.i.i.i:                       ; preds = %bb.bm, %.lr.ph.i.i22.i.i27.i.i.i.i
  %.014.i.i23.i.i28.i.i.i.i = phi ptr [ %.0.i.i25.i.i30.i.i.i.i, %.lr.ph.i.i22.i.i27.i.i.i.i ], [ %.pn21.i14.i.i16.i.i.i.i, %bb.bm ] ; 4 uses
  %.0913.i.i24.i.i29.i.i.i.i = phi ptr [ %.014.i.i23.i.i28.i.i.i.i, %.lr.ph.i.i22.i.i27.i.i.i.i ], [ %.022.i13.i.i15.i.i.i.i, %bb.bm ]
  %i.rx = load ptr, ptr %.014.i.i23.i.i28.i.i.i.i, align 8, !tbaa !122
  store ptr %i.rx, ptr %.0913.i.i24.i.i29.i.i.i.i, align 8, !tbaa !122
  %.0.i.i25.i.i30.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i23.i.i28.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i26.i.i31.i.i.i.i = load ptr, ptr %.0.i.i25.i.i30.i.i.i.i, align 8, !tbaa !122
  %.val2.i343.i.i.i.i = load ptr, ptr %i.ri, align 8, !tbaa !66
  %i.ry = load ptr, ptr %.val2.i343.i.i.i.i, align 8, !tbaa !170
  %i.rz = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ry) #25
  %.val.i344.i.i.i.i = load ptr, ptr %.0.val.i.i26.i.i31.i.i.i.i, align 8, !tbaa !66
  %i.sa = load ptr, ptr %.val.i344.i.i.i.i, align 8, !tbaa !170
  %i.sb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.sa) #25
  %i.sc = icmp ult i32 %i.rz, %i.sb
  br i1 %i.sc, label %.lr.ph.i.i22.i.i27.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i, !llvm.loop !3

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i: ; preds = %.lr.ph.i.i22.i.i27.i.i.i.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.sink.i19.i.i21.i.i.i.i = phi ptr [ %.0.lcssa.i.i9.i.i.i.i, %bb.bl ], [ %.0.lcssa.i.i9.i.i.i.i, %bb.bj ], [ %.0.lcssa.i.i9.i.i.i.i, %bb.bk ], [ %.022.i13.i.i15.i.i.i.i, %bb.bm ], [ %.014.i.i23.i.i28.i.i.i.i, %.lr.ph.i.i22.i.i27.i.i.i.i ]
  store ptr %i.ri, ptr %.sink.i19.i.i21.i.i.i.i, align 8, !tbaa !122
  %.0.i20.i.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %.022.i13.i.i15.i.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i23.i.i.i.i = icmp eq ptr %.0.i20.i.i22.i.i.i.i, %i.kz
  br i1 %.not.i21.i.i23.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i, !llvm.loop !5

_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i: ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i, %._crit_edge.i.i8.i.i.i.i
  %i.sd = icmp ugt i32 %.val8.i85.i, 14
  br i1 %i.sd, label %.lr.ph.i25.preheader.i.i.i.i, label %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i

.lr.ph.i25.preheader.i.i.i.i:                     ; preds = %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i
  %i.se = ptrtoint ptr %i.lb to i64               ; 3 uses
  br label %.lr.ph.i25.i.i.i.i

.lr.ph.i25.i.i.i.i:                               ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit282.i.i.i.i, %.lr.ph.i25.preheader.i.i.i.i
  %.022.i26.i.i.i.i = phi i64 [ %i.vc, %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit282.i.i.i.i ], [ 7, %.lr.ph.i25.preheader.i.i.i.i ] ; 9 uses
  %i.sf = shl nsw i64 %.022.i26.i.i.i.i, 1        ; 7 uses
  %.not52.i283.i.i.i.i = icmp slt i64 %i.kr, %i.sf
  br i1 %.not52.i283.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %.lr.ph.i284.i.i.i.i

.lr.ph.i284.i.i.i.i:                              ; preds = %.lr.ph.i25.i.i.i.i
  %.idx.i285.i.i.i.i = shl i64 %.022.i26.i.i.i.i, 3 ; 15 uses
  %.idx46.i286.i.i.i.i = shl i64 %.022.i26.i.i.i.i, 4 ; 2 uses
  %.not47.i287.i.i.i.i = icmp eq i64 %.idx.i285.i.i.i.i, %.idx46.i286.i.i.i.i
  br i1 %.not47.i287.i.i.i.i, label %._crit_edge.i.us.preheader.i334.i.i.i.i, label %.lr.ph.i.preheader.i288.i.i.i.i

._crit_edge.i.us.preheader.i334.i.i.i.i:          ; preds = %.lr.ph.i284.i.i.i.i
  %i.sg = icmp sgt i64 %.idx.i285.i.i.i.i, 8
  br i1 %i.sg, label %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i, label %._crit_edge.i.us.i335.i.preheader.i.i.i, !prof !193

._crit_edge.i.us.i335.i.preheader.i.i.i:          ; preds = %._crit_edge.i.us.preheader.i334.i.i.i.i
  %i.sh = icmp eq i64 %.idx.i285.i.i.i.i, 8
  br i1 %i.sh, label %._crit_edge.i.us.i335.i.us.i.i.i, label %._crit_edge.i.us.i335.i.i.i.i

._crit_edge.i.us.i335.i.us.i.i.i:                 ; preds = %._crit_edge.i.us.i335.i.preheader.i.i.i, %._crit_edge.i.us.i335.i.us.i.i.i
  %.054.us.i336.i.us.i.i.i = phi ptr [ %i.si, %._crit_edge.i.us.i335.i.us.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.i335.i.preheader.i.i.i ]
  %.01953.us.i337.i.us.i.i.i = phi ptr [ %i.sk, %._crit_edge.i.us.i335.i.us.i.i.i ], [ %i.kt, %._crit_edge.i.us.i335.i.preheader.i.i.i ] ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.054.us.i336.i.us.i.i.i, i64 8 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.01953.us.i337.i.us.i.i.i, i64 8
  %.val.i.i.i.i.i21.i.us.i341.i.us.i.i.i = load ptr, ptr %i.si, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.us.i341.i.us.i.i.i, ptr %i.sj, align 8, !tbaa !122
  %i.sk = getelementptr inbounds nuw i8, ptr %.01953.us.i337.i.us.i.i.i, i64 16 ; 2 uses
  %i.sl = ptrtoint ptr %i.si to i64
  %i.sm = sub i64 %i.la, %i.sl
  %i.sn = ashr exact i64 %i.sm, 3                 ; 2 uses
  %.not.us.i340.i.us.i.i.i = icmp slt i64 %i.sn, %i.sf
  br i1 %.not.us.i340.i.us.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.i.us.i.i.i, !llvm.loop !6

._crit_edge.i.us.preheader.i334.split.us.i.i.i.i: ; preds = %._crit_edge.i.us.preheader.i334.i.i.i.i
  %i.so = icmp sgt i64 %.022.i26.i.i.i.i, 1
  br i1 %i.so, label %._crit_edge.i.us.i335.us.us.i.i.i.i, label %._crit_edge.i.us.i335.us.i.i.i.i, !prof !103

._crit_edge.i.us.i335.us.us.i.i.i.i:              ; preds = %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i, %._crit_edge.i.us.i335.us.us.i.i.i.i
  %.054.us.i336.us.us.i.i.i.i = phi ptr [ %i.sp, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ] ; 2 uses
  %.01953.us.i337.us.us.i.i.i.i = phi ptr [ %i.sr, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.054.us.i336.us.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i337.us.us.i.i.i.i, ptr align 8 %.054.us.i336.us.us.i.i.i.i, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.sq = getelementptr inbounds nuw i8, ptr %.01953.us.i337.us.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sq, ptr nonnull align 8 %i.sp, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.idx.i285.i.i.i.i ; 2 uses
  %i.ss = ptrtoint ptr %i.sp to i64
  %i.st = sub i64 %i.la, %i.ss
  %i.su = ashr exact i64 %i.st, 3                 ; 2 uses
  %.not.us.i340.us.us.i.i.i.i = icmp slt i64 %i.su, %i.sf
  br i1 %.not.us.i340.us.us.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.us.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.i335.us.i.i.i.i:                 ; preds = %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i, %._crit_edge.i.us.i335.us.i.i.i.i
  %.054.us.i336.us.i.i.i.i = phi ptr [ %i.sv, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ]
  %.01953.us.i337.us.i.i.i.i = phi ptr [ %i.sx, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ]
  %i.sv = getelementptr inbounds nuw i8, ptr %.054.us.i336.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.01953.us.i337.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sw, ptr nonnull align 8 %i.sv, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.idx.i285.i.i.i.i ; 2 uses
  %i.sy = ptrtoint ptr %i.sv to i64
  %i.sz = sub i64 %i.la, %i.sy
  %i.ta = ashr exact i64 %i.sz, 3                 ; 2 uses
  %.not.us.i340.us.i.i.i.i = icmp slt i64 %i.ta, %i.sf
  br i1 %.not.us.i340.us.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.i335.i.i.i.i:                    ; preds = %._crit_edge.i.us.i335.i.preheader.i.i.i, %._crit_edge.i.us.i335.i.i.i.i
  %.054.us.i336.i.i.i.i = phi ptr [ %i.tb, %._crit_edge.i.us.i335.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.i335.i.preheader.i.i.i ]
  %.01953.us.i337.i.i.i.i = phi ptr [ %i.tc, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.i335.i.preheader.i.i.i ]
  %i.tb = getelementptr inbounds i8, ptr %.054.us.i336.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 3 uses
  %i.tc = getelementptr inbounds i8, ptr %.01953.us.i337.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 2 uses
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.la, %i.td
  %i.tf = ashr exact i64 %i.te, 3                 ; 2 uses
  %.not.us.i340.i.i.i.i = icmp slt i64 %i.tf, %i.sf
  br i1 %.not.us.i340.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i288.i.i.i.i:                  ; preds = %.lr.ph.i284.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i
  %.054.i289.i.i.i.i = phi ptr [ %i.th, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ], [ %.val7.i86.i, %.lr.ph.i284.i.i.i.i ] ; 3 uses
  %.01953.i290.i.i.i.i = phi ptr [ %i.uc, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ], [ %i.kt, %.lr.ph.i284.i.i.i.i ]
  %i.tg = getelementptr inbounds i8, ptr %.054.i289.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 3 uses
  %i.th = getelementptr inbounds i8, ptr %.054.i289.i.i.i.i, i64 %.idx46.i286.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i291.i.i.i.i

.lr.ph.i.i291.i.i.i.i:                            ; preds = %.lr.ph.i.i291.i.i.i.i, %.lr.ph.i.preheader.i288.i.i.i.i
  %.025.i.i292.i.i.i.i = phi ptr [ %i.tn, %.lr.ph.i.i291.i.i.i.i ], [ %.01953.i290.i.i.i.i, %.lr.ph.i.preheader.i288.i.i.i.i ] ; 2 uses
  %.01824.i.i293.i.i.i.i = phi ptr [ %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i291.i.i.i.i ], [ %.054.i289.i.i.i.i, %.lr.ph.i.preheader.i288.i.i.i.i ] ; 3 uses
  %.01923.i.i294.i.i.i.i = phi ptr [ %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i291.i.i.i.i ], [ %i.tg, %.lr.ph.i.preheader.i288.i.i.i.i ] ; 3 uses
  %.019.val.i.i295.i.i.i.i = load ptr, ptr %.01923.i.i294.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i296.i.i.i.i = load ptr, ptr %.01824.i.i293.i.i.i.i, align 8, !tbaa !122
  %.val2.i399.i.i.i.i = load ptr, ptr %.019.val.i.i295.i.i.i.i, align 8, !tbaa !66
  %i.ti = load ptr, ptr %.val2.i399.i.i.i.i, align 8, !tbaa !170
  %i.tj = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ti) #25
  %.val.i400.i.i.i.i = load ptr, ptr %.018.val.i.i296.i.i.i.i, align 8, !tbaa !66
  %i.tk = load ptr, ptr %.val.i400.i.i.i.i, align 8, !tbaa !170
  %i.tl = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.tk) #25
  %i.tm = icmp ult i32 %i.tj, %i.tl               ; 3 uses
  %.sink.in.i.i297.i.i.i.i = select i1 %i.tm, ptr %.01923.i.i294.i.i.i.i, ptr %.01824.i.i293.i.i.i.i
  %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.tm, i64 8, i64 0
  %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i.i294.i.i.i.i, i64 %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.tm, i64 0, i64 8
  %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i.i293.i.i.i.i, i64 %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.sink.i.i302.i.i.i.i = load ptr, ptr %.sink.in.i.i297.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i302.i.i.i.i, ptr %.025.i.i292.i.i.i.i, align 8, !tbaa !122
  %i.tn = getelementptr inbounds nuw i8, ptr %.025.i.i292.i.i.i.i, i64 8 ; 4 uses
  %i.to = icmp ne ptr %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.tg
  %i.tp = icmp ne ptr %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.th
  %i.tq = select i1 %i.to, i1 %i.tp, i1 false
  br i1 %i.tq, label %.lr.ph.i.i291.i.i.i.i, label %._crit_edge.i.loopexit.i303.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i303.i.i.i.i:              ; preds = %.lr.ph.i.i291.i.i.i.i
  %i.tr = ptrtoint ptr %i.tg to i64
  %i.ts = ptrtoint ptr %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.tt = sub i64 %i.tr, %i.ts                    ; 4 uses
  %i.tu = icmp sgt i64 %i.tt, 8
  br i1 %i.tu, label %bb.bn, label %bb.bo, !prof !103

bb.bn:                                            ; preds = %._crit_edge.i.loopexit.i303.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tn, ptr nonnull align 8 %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.tt, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.loopexit.i303.i.i.i.i
  %i.tv = icmp eq i64 %i.tt, 8
  br i1 %i.tv, label %bb.bp, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i.i.i.i.i.i333.i.i.i.i = load ptr, ptr %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i333.i.i.i.i, ptr %i.tn, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.tw = getelementptr inbounds i8, ptr %i.tn, i64 %i.tt ; 3 uses
  %i.tx = ptrtoint ptr %i.th to i64               ; 2 uses
  %i.ty = ptrtoint ptr %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.tz = sub i64 %i.tx, %i.ty                    ; 4 uses
  %i.ua = icmp sgt i64 %i.tz, 8
  br i1 %i.ua, label %bb.bq, label %bb.br, !prof !103

bb.bq:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tw, ptr nonnull align 8 %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.tz, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i

bb.br:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i
  %i.ub = icmp eq i64 %i.tz, 8
  br i1 %i.ub, label %bb.bs, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %.val.i.i.i.i.i21.i.i332.i.i.i.i = load ptr, ptr %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i332.i.i.i.i, ptr %i.tw, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.uc = getelementptr inbounds i8, ptr %i.tw, i64 %i.tz ; 2 uses
  %i.ud = sub i64 %i.la, %i.tx
  %i.ue = ashr exact i64 %i.ud, 3                 ; 2 uses
  %.not.i306.i.i.i.i = icmp slt i64 %i.ue, %i.sf
  br i1 %.not.i306.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %.lr.ph.i.preheader.i288.i.i.i.i, !llvm.loop !6

._crit_edge.i307.i.i.i.i:                         ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i, %._crit_edge.i.us.i335.i.i.i.i, %._crit_edge.i.us.i335.i.us.i.i.i, %._crit_edge.i.us.i335.us.i.i.i.i, %._crit_edge.i.us.i335.us.us.i.i.i.i, %.lr.ph.i25.i.i.i.i
  %.019.lcssa.i308.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i25.i.i.i.i ], [ %i.sx, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.tc, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.sk, %._crit_edge.i.us.i335.i.us.i.i.i ], [ %i.sr, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.uc, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ] ; 2 uses
  %.0.lcssa.i309.i.i.i.i = phi ptr [ %.val7.i86.i, %.lr.ph.i25.i.i.i.i ], [ %i.sv, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.tb, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.si, %._crit_edge.i.us.i335.i.us.i.i.i ], [ %i.sp, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.th, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ] ; 3 uses
  %.lcssa50.i310.i.i.i.i = phi i64 [ %i.kr, %.lr.ph.i25.i.i.i.i ], [ %i.ta, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.tf, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.sn, %._crit_edge.i.us.i335.i.us.i.i.i ], [ %i.su, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.ue, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ]
  %.sroa.speculated.i311.i.i.i.i = call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %.022.i26.i.i.i.i, i64 %.lcssa50.i310.i.i.i.i) ; 2 uses
  %.idx48.i312.i.i.i.i = shl nsw i64 %.sroa.speculated.i311.i.i.i.i, 3
  %i.uf = getelementptr inbounds i8, ptr %.0.lcssa.i309.i.i.i.i, i64 %.idx48.i312.i.i.i.i ; 5 uses
  %i.ug = icmp ne i64 %.sroa.speculated.i311.i.i.i.i, 0
  %i.uh = icmp ne ptr %i.uf, %i.kz
  %i.ui = and i1 %i.ug, %i.uh
  br i1 %i.ui, label %.lr.ph.i29.i320.i.i.i.i, label %._crit_edge.i22.i313.i.i.i.i

.lr.ph.i29.i320.i.i.i.i:                          ; preds = %._crit_edge.i307.i.i.i.i, %.lr.ph.i29.i320.i.i.i.i
  %.025.i30.i321.i.i.i.i = phi ptr [ %i.uo, %.lr.ph.i29.i320.i.i.i.i ], [ %.019.lcssa.i308.i.i.i.i, %._crit_edge.i307.i.i.i.i ] ; 2 uses
  %.01824.i31.i322.i.i.i.i = phi ptr [ %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ], [ %.0.lcssa.i309.i.i.i.i, %._crit_edge.i307.i.i.i.i ] ; 3 uses
  %.01923.i32.i323.i.i.i.i = phi ptr [ %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ], [ %i.uf, %._crit_edge.i307.i.i.i.i ] ; 3 uses
  %.019.val.i33.i324.i.i.i.i = load ptr, ptr %.01923.i32.i323.i.i.i.i, align 8, !tbaa !122
  %.018.val.i34.i325.i.i.i.i = load ptr, ptr %.01824.i31.i322.i.i.i.i, align 8, !tbaa !122
  %.val2.i397.i.i.i.i = load ptr, ptr %.019.val.i33.i324.i.i.i.i, align 8, !tbaa !66
  %i.uj = load ptr, ptr %.val2.i397.i.i.i.i, align 8, !tbaa !170
  %i.uk = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.uj) #25
  %.val.i398.i.i.i.i = load ptr, ptr %.018.val.i34.i325.i.i.i.i, align 8, !tbaa !66
  %i.ul = load ptr, ptr %.val.i398.i.i.i.i, align 8, !tbaa !170
  %i.um = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ul) #25
  %i.un = icmp ult i32 %i.uk, %i.um               ; 3 uses
  %.sink.in.i35.i326.i.i.i.i = select i1 %i.un, ptr %.01923.i32.i323.i.i.i.i, ptr %.01824.i31.i322.i.i.i.i
  %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.un, i64 8, i64 0
  %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i32.i323.i.i.i.i, i64 %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.un, i64 0, i64 8
  %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i31.i322.i.i.i.i, i64 %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.sink.i40.i331.i.i.i.i = load ptr, ptr %.sink.in.i35.i326.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i40.i331.i.i.i.i, ptr %.025.i30.i321.i.i.i.i, align 8, !tbaa !122
  %i.uo = getelementptr inbounds nuw i8, ptr %.025.i30.i321.i.i.i.i, i64 8 ; 2 uses
  %i.up = icmp ne ptr %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.uf
  %i.uq = icmp ne ptr %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.kz
  %i.ur = select i1 %i.up, i1 %i.uq, i1 false
  br i1 %i.ur, label %.lr.ph.i29.i320.i.i.i.i, label %._crit_edge.i22.i313.i.i.i.i, !llvm.loop !7

._crit_edge.i22.i313.i.i.i.i:                     ; preds = %.lr.ph.i29.i320.i.i.i.i, %._crit_edge.i307.i.i.i.i
  %.019.lcssa.i23.i314.i.i.i.i = phi ptr [ %i.uf, %._crit_edge.i307.i.i.i.i ], [ %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ] ; 3 uses
  %.018.lcssa.i24.i315.i.i.i.i = phi ptr [ %.0.lcssa.i309.i.i.i.i, %._crit_edge.i307.i.i.i.i ], [ %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ] ; 3 uses
  %.0.lcssa.i25.i316.i.i.i.i = phi ptr [ %.019.lcssa.i308.i.i.i.i, %._crit_edge.i307.i.i.i.i ], [ %i.uo, %.lr.ph.i29.i320.i.i.i.i ] ; 3 uses
  %i.us = ptrtoint ptr %i.uf to i64
  %i.ut = ptrtoint ptr %.018.lcssa.i24.i315.i.i.i.i to i64
  %i.uu = sub i64 %i.us, %i.ut                    ; 4 uses
  %i.uv = icmp sgt i64 %i.uu, 8
  br i1 %i.uv, label %bb.bt, label %bb.bu, !prof !103

bb.bt:                                            ; preds = %._crit_edge.i22.i313.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.lcssa.i25.i316.i.i.i.i, ptr align 8 %.018.lcssa.i24.i315.i.i.i.i, i64 %i.uu, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i

bb.bu:                                            ; preds = %._crit_edge.i22.i313.i.i.i.i
  %i.uw = icmp eq i64 %i.uu, 8
  br i1 %i.uw, label %bb.bv, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i.i.i.i.i28.i319.i.i.i.i = load ptr, ptr %.018.lcssa.i24.i315.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i28.i319.i.i.i.i, ptr %.0.lcssa.i25.i316.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i: ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.ux = getelementptr inbounds i8, ptr %.0.lcssa.i25.i316.i.i.i.i, i64 %i.uu ; 2 uses
  %i.uy = ptrtoint ptr %.019.lcssa.i23.i314.i.i.i.i to i64
  %i.uz = sub i64 %i.la, %i.uy                    ; 3 uses
  %i.va = icmp sgt i64 %i.uz, 8
  br i1 %i.va, label %bb.bw, label %bb.bx, !prof !103

bb.bw:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ux, ptr align 8 %.019.lcssa.i23.i314.i.i.i.i, i64 %i.uz, i1 false)
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i

bb.bx:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i
  %i.vb = icmp eq i64 %i.uz, 8
  br i1 %i.vb, label %bb.by, label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %.val.i.i.i.i.i21.i27.i318.i.i.i.i = load ptr, ptr %.019.lcssa.i23.i314.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i27.i318.i.i.i.i, ptr %i.ux, align 8, !tbaa !122
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i

_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i: ; preds = %bb.by, %bb.bx, %bb.bw
  %i.vc = shl nsw i64 %.022.i26.i.i.i.i, 2        ; 5 uses
  %.not52.i223.i.i.i.i = icmp slt i64 %i.kr, %i.vc
  br i1 %.not52.i223.i.i.i.i, label %._crit_edge.i247.i.i.i.i, label %.lr.ph.i224.i.i.i.i

.lr.ph.i224.i.i.i.i:                              ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i
  %.idx.i225.i.i.i.i = shl i64 %.022.i26.i.i.i.i, 4 ; 8 uses
  %.idx46.i226.i.i.i.i = shl nsw i64 %.022.i26.i.i.i.i, 5 ; 2 uses
  %.not47.i227.i.i.i.i = icmp eq i64 %.idx.i225.i.i.i.i, %.idx46.i226.i.i.i.i
  br i1 %.not47.i227.i.i.i.i, label %._crit_edge.i.us.preheader.i274.i.i.i.i, label %.lr.ph.i.preheader.i228.i.i.i.i

._crit_edge.i.us.preheader.i274.i.i.i.i:          ; preds = %.lr.ph.i224.i.i.i.i
  %i.vd = icmp sgt i64 %.022.i26.i.i.i.i, 0
  %i.ve = icmp sgt i64 %.idx.i225.i.i.i.i, 8
  br label %._crit_edge.i.us.i275.i.i.i.i

._crit_edge.i.us.i275.i.i.i.i:                    ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i, %._crit_edge.i.us.preheader.i274.i.i.i.i
  %.054.us.i276.i.i.i.i = phi ptr [ %i.vf, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i274.i.i.i.i ] ; 2 uses
  %.01953.us.i277.i.i.i.i = phi ptr [ %i.vh, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i274.i.i.i.i ] ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %.054.us.i276.i.i.i.i, i64 %.idx.i225.i.i.i.i ; 4 uses
  br i1 %i.vd, label %bb.bz, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i, !prof !103

bb.bz:                                            ; preds = %._crit_edge.i.us.i275.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i277.i.i.i.i, ptr align 8 %.054.us.i276.i.i.i.i, i64 %.idx.i225.i.i.i.i, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i: ; preds = %bb.bz, %._crit_edge.i.us.i275.i.i.i.i
  %i.vg = getelementptr inbounds i8, ptr %.01953.us.i277.i.i.i.i, i64 %.idx.i225.i.i.i.i ; 2 uses
  br i1 %i.ve, label %bb.ca, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i, !prof !193

bb.ca:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vg, ptr nonnull align 8 %i.vf, i64 %.idx.i225.i.i.i.i, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i: ; preds = %bb.ca, %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 %.idx.i225.i.i.i.i ; 2 uses
  %i.vi = ptrtoint ptr %i.vf to i64
  %i.vj = sub i64 %i.se, %i.vi
  %i.vk = ashr exact i64 %i.vj, 3                 ; 2 uses
  %.not.us.i280.i.i.i.i = icmp slt i64 %i.vk, %i.vc
  br i1 %.not.us.i280.i.i.i.i, label %._crit_edge.i247.i.i.i.i, label %._crit_edge.i.us.i275.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i228.i.i.i.i:                  ; preds = %.lr.ph.i224.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i
  %.054.i229.i.i.i.i = phi ptr [ %i.vm, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i ], [ %i.kt, %.lr.ph.i224.i.i.i.i ] ; 3 uses
  %.01953.i230.i.i.i.i = phi ptr [ %i.wh, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i ], [ %.val7.i86.i, %.lr.ph.i224.i.i.i.i ]
  %i.vl = getelementptr inbounds i8, ptr %.054.i229.i.i.i.i, i64 %.idx.i225.i.i.i.i ; 3 uses
  %i.vm = getelementptr inbounds i8, ptr %.054.i229.i.i.i.i, i64 %.idx46.i226.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i231.i.i.i.i

.lr.ph.i.i231.i.i.i.i:                            ; preds = %.lr.ph.i.i231.i.i.i.i, %.lr.ph.i.preheader.i228.i.i.i.i
  %.025.i.i232.i.i.i.i = phi ptr [ %i.vs, %.lr.ph.i.i231.i.i.i.i ], [ %.01953.i230.i.i.i.i, %.lr.ph.i.preheader.i228.i.i.i.i ] ; 2 uses
  %.01824.i.i233.i.i.i.i = phi ptr [ %.1.i.i241.i.i.i.i, %.lr.ph.i.i231.i.i.i.i ], [ %.054.i229.i.i.i.i, %.lr.ph.i.preheader.i228.i.i.i.i ] ; 3 uses
  %.01923.i.i234.i.i.i.i = phi ptr [ %.120.i.i239.i.i.i.i, %.lr.ph.i.i231.i.i.i.i ], [ %i.vl, %.lr.ph.i.preheader.i228.i.i.i.i ] ; 3 uses
  %.019.val.i.i235.i.i.i.i = load ptr, ptr %.01923.i.i234.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i236.i.i.i.i = load ptr, ptr %.01824.i.i233.i.i.i.i, align 8, !tbaa !122
  %.val2.i395.i.i.i.i = load ptr, ptr %.019.val.i.i235.i.i.i.i, align 8, !tbaa !66
  %i.vn = load ptr, ptr %.val2.i395.i.i.i.i, align 8, !tbaa !170
  %i.vo = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.vn) #25
  %.val.i396.i.i.i.i = load ptr, ptr %.018.val.i.i236.i.i.i.i, align 8, !tbaa !66
  %i.vp = load ptr, ptr %.val.i396.i.i.i.i, align 8, !tbaa !170
  %i.vq = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.vp) #25
  %i.vr = icmp ult i32 %i.vo, %i.vq               ; 3 uses
  %.sink.in.i.i237.i.i.i.i = select i1 %i.vr, ptr %.01923.i.i234.i.i.i.i, ptr %.01824.i.i233.i.i.i.i
  %.120.idx.i.i238.i.i.i.i = select i1 %i.vr, i64 8, i64 0
  %.120.i.i239.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01923.i.i234.i.i.i.i, i64 %.120.idx.i.i238.i.i.i.i ; 5 uses
  %.1.idx.i.i240.i.i.i.i = select i1 %i.vr, i64 0, i64 8
  %.1.i.i241.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01824.i.i233.i.i.i.i, i64 %.1.idx.i.i240.i.i.i.i ; 5 uses
  %.sink.i.i242.i.i.i.i = load ptr, ptr %.sink.in.i.i237.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i242.i.i.i.i, ptr %.025.i.i232.i.i.i.i, align 8, !tbaa !122
  %i.vs = getelementptr inbounds nuw i8, ptr %.025.i.i232.i.i.i.i, i64 8 ; 4 uses
  %i.vt = icmp ne ptr %.1.i.i241.i.i.i.i, %i.vl
  %i.vu = icmp ne ptr %.120.i.i239.i.i.i.i, %i.vm
  %i.vv = select i1 %i.vt, i1 %i.vu, i1 false
  br i1 %i.vv, label %.lr.ph.i.i231.i.i.i.i, label %._crit_edge.i.loopexit.i243.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i243.i.i.i.i:              ; preds = %.lr.ph.i.i231.i.i.i.i
  %i.vw = ptrtoint ptr %i.vl to i64
  %i.vx = ptrtoint ptr %.1.i.i241.i.i.i.i to i64
  %i.vy = sub i64 %i.vw, %i.vx                    ; 4 uses
  %i.vz = icmp sgt i64 %i.vy, 8
  br i1 %i.vz, label %bb.cb, label %bb.cc, !prof !103

bb.cb:                                            ; preds = %._crit_edge.i.loopexit.i243.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vs, ptr nonnull align 8 %.1.i.i241.i.i.i.i, i64 %i.vy, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i

bb.cc:                                            ; preds = %._crit_edge.i.loopexit.i243.i.i.i.i
  %i.wa = icmp eq i64 %i.vy, 8
  br i1 %i.wa, label %bb.cd, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %.val.i.i.i.i.i.i.i273.i.i.i.i = load ptr, ptr %.1.i.i241.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i273.i.i.i.i, ptr %i.vs, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.wb = getelementptr inbounds i8, ptr %i.vs, i64 %i.vy ; 3 uses
  %i.wc = ptrtoint ptr %i.vm to i64               ; 2 uses
  %i.wd = ptrtoint ptr %.120.i.i239.i.i.i.i to i64
  %i.we = sub i64 %i.wc, %i.wd                    ; 4 uses
  %i.wf = icmp sgt i64 %i.we, 8
  br i1 %i.wf, label %bb.ce, label %bb.cf, !prof !103

bb.ce:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.wb, ptr nonnull align 8 %.120.i.i239.i.i.i.i, i64 %i.we, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i

bb.cf:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i
  %i.wg = icmp eq i64 %i.we, 8
  br i1 %i.wg, label %bb.cg, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %.val.i.i.i.i.i21.i.i272.i.i.i.i = load ptr, ptr %.120.i.i239.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i272.i.i.i.i, ptr %i.wb, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.wh = getelementptr inbounds i8, ptr %i.wb, i64 %i.we ; 2 uses
  %i.wi = sub i64 %i.se, %i.wc
  %i.wj = ashr exact i64 %i.wi, 3                 ; 2 uses
  %.not.i246.i.i.i.i = icmp slt i64 %i.wj, %i.vc
  br i1 %.not.i246.i.i.i.i, label %._crit_edge.i247.i.i.i.i, label %.lr.ph.i.preheader.i228.i.i.i.i, !llvm.loop !6
end_hunk_0
begin_hunk_1_@_ZN4llvm26ControlHeightReductionPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.abw = load ptr, ptr %.val.i194.i.i.i.i, align 8, !tbaa !170
  %i.abx = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.abw) #25
  %i.aby = icmp ult i32 %i.abv, %i.abx
  br i1 %i.aby, label %.lr.ph.i.i.4.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i, !llvm.loop !3

bb.di:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.3.i.i.i.i.i.i
  %i.abz = ptrtoint ptr %.022.i.ptr.4.i.i.i.i.i.i to i64
  %i.aca = sub i64 %i.abz, %i.xl                  ; 3 uses
  %i.acb = ashr exact i64 %i.aca, 3               ; 2 uses
  %i.acc = icmp sgt i64 %i.acb, 1
  br i1 %i.acc, label %bb.dl, label %bb.dj, !prof !103

bb.dj:                                            ; preds = %bb.di
  %i.acd = icmp eq i64 %i.aca, 8
  br i1 %i.acd, label %bb.dk, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i.i.i.i.i.4.i.i.i.i.i.i = load ptr, ptr %.029.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.4.i.i.i.i.i.i, ptr %.022.i.ptr.4.i.i.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.di
  %i.ace = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 48
  %i.acf = sub nsw i64 0, %i.acb
  %i.acg = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %i.acf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acg, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i.i.i.i.i, i64 %i.aca, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.4.i.i.i.i.i.i, %bb.dl, %bb.dk, %bb.dj, %bb.dh
  %.sink.i.4.i.i.i.i.i.i = phi ptr [ %.029.i.i.i.i.i.i, %bb.dk ], [ %.029.i.i.i.i.i.i, %bb.dl ], [ %.029.i.i.i.i.i.i, %bb.dj ], [ %.022.i.ptr.4.i.i.i.i.i.i, %bb.dh ], [ %.014.i.i.4.i.i.i.i.i.i, %.lr.ph.i.i.4.i.i.i.i.i.i ]
  store ptr %i.abn, ptr %.sink.i.4.i.i.i.i.i.i, align 8, !tbaa !122
  %.022.i.ptr.5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 48 ; 6 uses
  %.0.val.i.5.i.i.i.i.i.i = load ptr, ptr %.022.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !122
  %.val18.i.5.i.i.i.i.i.i = load ptr, ptr %.029.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i191.i.i.i.i = load ptr, ptr %.0.val.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.ach = load ptr, ptr %.val2.i191.i.i.i.i, align 8, !tbaa !170
  %i.aci = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ach) #25
  %.val.i192.i.i.i.i = load ptr, ptr %.val18.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.acj = load ptr, ptr %.val.i192.i.i.i.i, align 8, !tbaa !170
  %i.ack = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acj) #25
  %i.acl = icmp ult i32 %i.aci, %i.ack
  %i.acm = load ptr, ptr %.022.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.acl, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i
  %.0.val12.i.i.5.i.i.i.i.i.i = load ptr, ptr %.022.i.ptr.4.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i189.i.i.i.i = load ptr, ptr %i.acm, align 8, !tbaa !66
  %i.acn = load ptr, ptr %.val2.i189.i.i.i.i, align 8, !tbaa !170
  %i.aco = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acn) #25
  %.val.i190.i.i.i.i = load ptr, ptr %.0.val12.i.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.acp = load ptr, ptr %.val.i190.i.i.i.i, align 8, !tbaa !170
  %i.acq = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acp) #25
  %i.acr = icmp ult i32 %i.aco, %i.acq
  br i1 %i.acr, label %.lr.ph.i.i.5.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

.lr.ph.i.i.5.i.i.i.i.i.i:                         ; preds = %bb.dm, %.lr.ph.i.i.5.i.i.i.i.i.i
  %.014.i.i.5.i.i.i.i.i.i = phi ptr [ %.0.i.i.5.i.i.i.i.i.i, %.lr.ph.i.i.5.i.i.i.i.i.i ], [ %.022.i.ptr.4.i.i.i.i.i.i, %bb.dm ] ; 4 uses
  %.0913.i.i.5.i.i.i.i.i.i = phi ptr [ %.014.i.i.5.i.i.i.i.i.i, %.lr.ph.i.i.5.i.i.i.i.i.i ], [ %.022.i.ptr.5.i.i.i.i.i.i, %bb.dm ]
  %i.acs = load ptr, ptr %.014.i.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.acs, ptr %.0913.i.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.5.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.5.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.5.i.i.i.i.i.i = load ptr, ptr %.0.i.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i187.i.i.i.i = load ptr, ptr %i.acm, align 8, !tbaa !66
  %i.act = load ptr, ptr %.val2.i187.i.i.i.i, align 8, !tbaa !170
  %i.acu = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.act) #25
  %.val.i188.i.i.i.i = load ptr, ptr %.0.val.i.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.acv = load ptr, ptr %.val.i188.i.i.i.i, align 8, !tbaa !170
  %i.acw = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acv) #25
  %i.acx = icmp ult i32 %i.acu, %i.acw
  br i1 %i.acx, label %.lr.ph.i.i.5.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i, !llvm.loop !3

bb.dn:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i
  %i.acy = ptrtoint ptr %.022.i.ptr.5.i.i.i.i.i.i to i64
  %i.acz = sub i64 %i.acy, %i.xl                  ; 3 uses
  %i.ada = ashr exact i64 %i.acz, 3               ; 2 uses
  %i.adb = icmp sgt i64 %i.ada, 1
  br i1 %i.adb, label %bb.dq, label %bb.do, !prof !103

bb.do:                                            ; preds = %bb.dn
  %i.adc = icmp eq i64 %i.acz, 8
  br i1 %i.adc, label %bb.dp, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  %.val.i.i.i.i.i.i.5.i.i.i.i.i.i = load ptr, ptr %.029.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.5.i.i.i.i.i.i, ptr %.022.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.dn
  %i.add = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 56
  %i.ade = sub nsw i64 0, %i.ada
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.add, i64 %i.ade
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adf, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i.i.i.i.i, i64 %i.acz, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.5.i.i.i.i.i.i, %bb.dq, %bb.dp, %bb.do, %bb.dm
  %.sink.i.5.i.i.i.i.i.i = phi ptr [ %.029.i.i.i.i.i.i, %bb.dp ], [ %.029.i.i.i.i.i.i, %bb.dq ], [ %.029.i.i.i.i.i.i, %bb.do ], [ %.022.i.ptr.5.i.i.i.i.i.i, %bb.dm ], [ %.014.i.i.5.i.i.i.i.i.i, %.lr.ph.i.i.5.i.i.i.i.i.i ]
  store ptr %i.acm, ptr %.sink.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  %i.adg = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.adh = ptrtoint ptr %i.adg to i64             ; 3 uses
  %i.adi = sub i64 %i.ko, %i.adh
  %i.adj = icmp sgt i64 %i.adi, 48
  br i1 %i.adj, label %.lr.ph.i.i7.i.i.i.i, label %._crit_edge.i.i3.i.i.i.i, !llvm.loop !4

._crit_edge.i.i3.i.i.i.i:                         ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i, %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i
  %.0.lcssa.i.i4.i.i.i.i = phi ptr [ %i.kz, %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i ], [ %i.adg, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i ] ; 9 uses
  %.lcssa.i.i5.i.i.i.i = phi i64 [ %i.la, %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i ], [ %i.adh, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i ]
  %i.adk = icmp eq ptr %.0.lcssa.i.i4.i.i.i.i, %i.kn
  %.019.i12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i4.i.i.i.i, i64 8 ; 2 uses
  %.not20.i.i.i.i.i.i.i = icmp eq ptr %.019.i12.i.i.i.i.i.i, %i.kn
  %or.cond.i.i.i.i.i.i = select i1 %i.adk, i1 true, i1 %.not20.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i6.i.i.i.i

.lr.ph.i.i.i6.i.i.i.i:                            ; preds = %._crit_edge.i.i3.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i
  %.022.i13.i.i.i.i.i.i = phi ptr [ %.0.i20.i.i.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i ], [ %.019.i12.i.i.i.i.i.i, %._crit_edge.i.i3.i.i.i.i ] ; 7 uses
  %.pn21.i14.i.i.i.i.i.i = phi ptr [ %.022.i13.i.i.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i ], [ %.0.lcssa.i.i4.i.i.i.i, %._crit_edge.i.i3.i.i.i.i ] ; 4 uses
  %.0.val.i15.i.i.i.i.i.i = load ptr, ptr %.022.i13.i.i.i.i.i.i, align 8, !tbaa !122
  %.val18.i16.i.i.i.i.i.i = load ptr, ptr %.0.lcssa.i.i4.i.i.i.i, align 8, !tbaa !122
  %.val2.i185.i.i.i.i = load ptr, ptr %.0.val.i15.i.i.i.i.i.i, align 8, !tbaa !66
  %i.adl = load ptr, ptr %.val2.i185.i.i.i.i, align 8, !tbaa !170
  %i.adm = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.adl) #25
  %.val.i186.i.i.i.i = load ptr, ptr %.val18.i16.i.i.i.i.i.i, align 8, !tbaa !66
  %i.adn = load ptr, ptr %.val.i186.i.i.i.i, align 8, !tbaa !170
  %i.ado = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.adn) #25
  %i.adp = icmp ult i32 %i.adm, %i.ado
  %i.adq = load ptr, ptr %.022.i13.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.adp, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %.lr.ph.i.i.i6.i.i.i.i
  %i.adr = ptrtoint ptr %.022.i13.i.i.i.i.i.i to i64
  %i.ads = sub i64 %i.adr, %.lcssa.i.i5.i.i.i.i   ; 3 uses
  %i.adt = ashr exact i64 %i.ads, 3               ; 2 uses
  %i.adu = icmp sgt i64 %i.adt, 1
  br i1 %i.adu, label %bb.ds, label %bb.dt, !prof !103

bb.ds:                                            ; preds = %bb.dr
  %i.adv = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i.i.i.i.i, i64 16
  %i.adw = sub nsw i64 0, %i.adt
  %i.adx = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adx, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa.i.i4.i.i.i.i, i64 %i.ads, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.ady = icmp eq i64 %i.ads, 8
  br i1 %i.ady, label %bb.du, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.adz = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i27.i.i.i.i.i.i = load ptr, ptr %.0.lcssa.i.i4.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i27.i.i.i.i.i.i, ptr %i.adz, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

bb.dv:                                            ; preds = %.lr.ph.i.i.i6.i.i.i.i
  %.0.val12.i.i17.i.i.i.i.i.i = load ptr, ptr %.pn21.i14.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i183.i.i.i.i = load ptr, ptr %i.adq, align 8, !tbaa !66
  %i.aea = load ptr, ptr %.val2.i183.i.i.i.i, align 8, !tbaa !170
  %i.aeb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aea) #25
  %.val.i184.i.i.i.i = load ptr, ptr %.0.val12.i.i17.i.i.i.i.i.i, align 8, !tbaa !66
  %i.aec = load ptr, ptr %.val.i184.i.i.i.i, align 8, !tbaa !170
  %i.aed = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aec) #25
  %i.aee = icmp ult i32 %i.aeb, %i.aed
  br i1 %i.aee, label %.lr.ph.i.i22.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

.lr.ph.i.i22.i.i.i.i.i.i:                         ; preds = %bb.dv, %.lr.ph.i.i22.i.i.i.i.i.i
  %.014.i.i23.i.i.i.i.i.i = phi ptr [ %.0.i.i25.i.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i.i ], [ %.pn21.i14.i.i.i.i.i.i, %bb.dv ] ; 4 uses
  %.0913.i.i24.i.i.i.i.i.i = phi ptr [ %.014.i.i23.i.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i.i ], [ %.022.i13.i.i.i.i.i.i, %bb.dv ]
  %i.aef = load ptr, ptr %.014.i.i23.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.aef, ptr %.0913.i.i24.i.i.i.i.i.i, align 8, !tbaa !122
  %.0.i.i25.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i23.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i26.i.i.i.i.i.i = load ptr, ptr %.0.i.i25.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i181.i.i.i.i = load ptr, ptr %i.adq, align 8, !tbaa !66
  %i.aeg = load ptr, ptr %.val2.i181.i.i.i.i, align 8, !tbaa !170
  %i.aeh = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aeg) #25
  %.val.i182.i.i.i.i = load ptr, ptr %.0.val.i.i26.i.i.i.i.i.i, align 8, !tbaa !66
  %i.aei = load ptr, ptr %.val.i182.i.i.i.i, align 8, !tbaa !170
  %i.aej = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aei) #25
  %i.aek = icmp ult i32 %i.aeh, %i.aej
  br i1 %i.aek, label %.lr.ph.i.i22.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i, !llvm.loop !3

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i: ; preds = %.lr.ph.i.i22.i.i.i.i.i.i, %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.sink.i19.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i4.i.i.i.i, %bb.du ], [ %.0.lcssa.i.i4.i.i.i.i, %bb.ds ], [ %.0.lcssa.i.i4.i.i.i.i, %bb.dt ], [ %.022.i13.i.i.i.i.i.i, %bb.dv ], [ %.014.i.i23.i.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i.i ]
  store ptr %i.adq, ptr %.sink.i19.i.i.i.i.i.i, align 8, !tbaa !122
  %.0.i20.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.022.i13.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %.0.i20.i.i.i.i.i.i, %i.kn
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i6.i.i.i.i, !llvm.loop !5

_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i, %._crit_edge.i.i3.i.i.i.i
  %i.ael = icmp sgt i64 %i.xi, 7
  br i1 %i.ael, label %.lr.ph.i.preheader.i.i.i.i, label %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i
  %i.aem = ptrtoint ptr %i.xj to i64              ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.022.i.i.i.i.i = phi i64 [ %i.ahk, %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit.i.i.i.i ], [ 7, %.lr.ph.i.preheader.i.i.i.i ] ; 9 uses
  %i.aen = shl nsw i64 %.022.i.i.i.i.i, 1         ; 7 uses
  %.not52.i122.i.i.i.i = icmp slt i64 %i.xi, %i.aen
  br i1 %.not52.i122.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %.lr.ph.i123.i.i.i.i

.lr.ph.i123.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %.idx.i124.i.i.i.i = shl i64 %.022.i.i.i.i.i, 3 ; 15 uses
  %.idx46.i125.i.i.i.i = shl i64 %.022.i.i.i.i.i, 4 ; 2 uses
  %.not47.i126.i.i.i.i = icmp eq i64 %.idx.i124.i.i.i.i, %.idx46.i125.i.i.i.i
  br i1 %.not47.i126.i.i.i.i, label %._crit_edge.i.us.preheader.i173.i.i.i.i, label %.lr.ph.i.preheader.i127.i.i.i.i

._crit_edge.i.us.preheader.i173.i.i.i.i:          ; preds = %.lr.ph.i123.i.i.i.i
  %i.aeo = icmp sgt i64 %.idx.i124.i.i.i.i, 8
  br i1 %i.aeo, label %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i, label %._crit_edge.i.us.i174.i.preheader.i.i.i, !prof !193

._crit_edge.i.us.i174.i.preheader.i.i.i:          ; preds = %._crit_edge.i.us.preheader.i173.i.i.i.i
  %i.aep = icmp eq i64 %.idx.i124.i.i.i.i, 8
  br i1 %i.aep, label %._crit_edge.i.us.i174.i.us.i.i.i, label %._crit_edge.i.us.i174.i.i.i.i

._crit_edge.i.us.i174.i.us.i.i.i:                 ; preds = %._crit_edge.i.us.i174.i.preheader.i.i.i, %._crit_edge.i.us.i174.i.us.i.i.i
  %.054.us.i175.i.us.i.i.i = phi ptr [ %i.aeq, %._crit_edge.i.us.i174.i.us.i.i.i ], [ %i.kz, %._crit_edge.i.us.i174.i.preheader.i.i.i ]
  %.01953.us.i176.i.us.i.i.i = phi ptr [ %i.aes, %._crit_edge.i.us.i174.i.us.i.i.i ], [ %i.kt, %._crit_edge.i.us.i174.i.preheader.i.i.i ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.054.us.i175.i.us.i.i.i, i64 8 ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.01953.us.i176.i.us.i.i.i, i64 8
  %.val.i.i.i.i.i21.i.us.i.i.us.i.i.i = load ptr, ptr %i.aeq, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.us.i.i.us.i.i.i, ptr %i.aer, align 8, !tbaa !122
  %i.aes = getelementptr inbounds nuw i8, ptr %.01953.us.i176.i.us.i.i.i, i64 16 ; 2 uses
  %i.aet = ptrtoint ptr %i.aeq to i64
  %i.aeu = sub i64 %i.ko, %i.aet
  %i.aev = ashr exact i64 %i.aeu, 3               ; 2 uses
  %.not.us.i179.i.us.i.i.i = icmp slt i64 %i.aev, %i.aen
  br i1 %.not.us.i179.i.us.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.i.us.i.i.i, !llvm.loop !6

._crit_edge.i.us.preheader.i173.split.us.i.i.i.i: ; preds = %._crit_edge.i.us.preheader.i173.i.i.i.i
  %i.aew = icmp sgt i64 %.022.i.i.i.i.i, 1
  br i1 %i.aew, label %._crit_edge.i.us.i174.us.us.i.i.i.i, label %._crit_edge.i.us.i174.us.i.i.i.i, !prof !103

._crit_edge.i.us.i174.us.us.i.i.i.i:              ; preds = %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i, %._crit_edge.i.us.i174.us.us.i.i.i.i
  %.054.us.i175.us.us.i.i.i.i = phi ptr [ %i.aex, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ] ; 2 uses
  %.01953.us.i176.us.us.i.i.i.i = phi ptr [ %i.aez, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.054.us.i175.us.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i176.us.us.i.i.i.i, ptr align 8 %.054.us.i175.us.us.i.i.i.i, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aey = getelementptr inbounds nuw i8, ptr %.01953.us.i176.us.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aey, ptr nonnull align 8 %i.aex, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 %.idx.i124.i.i.i.i ; 2 uses
  %i.afa = ptrtoint ptr %i.aex to i64
  %i.afb = sub i64 %i.ko, %i.afa
  %i.afc = ashr exact i64 %i.afb, 3               ; 2 uses
  %.not.us.i179.us.us.i.i.i.i = icmp slt i64 %i.afc, %i.aen
  br i1 %.not.us.i179.us.us.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.us.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.i174.us.i.i.i.i:                 ; preds = %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i, %._crit_edge.i.us.i174.us.i.i.i.i
  %.054.us.i175.us.i.i.i.i = phi ptr [ %i.afd, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ]
  %.01953.us.i176.us.i.i.i.i = phi ptr [ %i.aff, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ]
  %i.afd = getelementptr inbounds nuw i8, ptr %.054.us.i175.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.01953.us.i176.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.afe, ptr nonnull align 8 %i.afd, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %.idx.i124.i.i.i.i ; 2 uses
  %i.afg = ptrtoint ptr %i.afd to i64
  %i.afh = sub i64 %i.ko, %i.afg
  %i.afi = ashr exact i64 %i.afh, 3               ; 2 uses
  %.not.us.i179.us.i.i.i.i = icmp slt i64 %i.afi, %i.aen
  br i1 %.not.us.i179.us.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.i174.i.i.i.i:                    ; preds = %._crit_edge.i.us.i174.i.preheader.i.i.i, %._crit_edge.i.us.i174.i.i.i.i
  %.054.us.i175.i.i.i.i = phi ptr [ %i.afj, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.i174.i.preheader.i.i.i ]
  %.01953.us.i176.i.i.i.i = phi ptr [ %i.afk, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.i174.i.preheader.i.i.i ]
  %i.afj = getelementptr inbounds i8, ptr %.054.us.i175.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 3 uses
  %i.afk = getelementptr inbounds i8, ptr %.01953.us.i176.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 2 uses
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = sub i64 %i.ko, %i.afl
  %i.afn = ashr exact i64 %i.afm, 3               ; 2 uses
  %.not.us.i179.i.i.i.i = icmp slt i64 %i.afn, %i.aen
  br i1 %.not.us.i179.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i127.i.i.i.i:                  ; preds = %.lr.ph.i123.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i
  %.054.i128.i.i.i.i = phi ptr [ %i.afp, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ], [ %i.kz, %.lr.ph.i123.i.i.i.i ] ; 3 uses
  %.01953.i129.i.i.i.i = phi ptr [ %i.agk, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ], [ %i.kt, %.lr.ph.i123.i.i.i.i ]
  %i.afo = getelementptr inbounds i8, ptr %.054.i128.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 3 uses
  %i.afp = getelementptr inbounds i8, ptr %.054.i128.i.i.i.i, i64 %.idx46.i125.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i130.i.i.i.i

.lr.ph.i.i130.i.i.i.i:                            ; preds = %.lr.ph.i.i130.i.i.i.i, %.lr.ph.i.preheader.i127.i.i.i.i
  %.025.i.i131.i.i.i.i = phi ptr [ %i.afv, %.lr.ph.i.i130.i.i.i.i ], [ %.01953.i129.i.i.i.i, %.lr.ph.i.preheader.i127.i.i.i.i ] ; 2 uses
  %.01824.i.i132.i.i.i.i = phi ptr [ %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i130.i.i.i.i ], [ %.054.i128.i.i.i.i, %.lr.ph.i.preheader.i127.i.i.i.i ] ; 3 uses
  %.01923.i.i133.i.i.i.i = phi ptr [ %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i130.i.i.i.i ], [ %i.afo, %.lr.ph.i.preheader.i127.i.i.i.i ] ; 3 uses
  %.019.val.i.i134.i.i.i.i = load ptr, ptr %.01923.i.i133.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i135.i.i.i.i = load ptr, ptr %.01824.i.i132.i.i.i.i, align 8, !tbaa !122
  %.val2.i391.i.i.i.i = load ptr, ptr %.019.val.i.i134.i.i.i.i, align 8, !tbaa !66
  %i.afq = load ptr, ptr %.val2.i391.i.i.i.i, align 8, !tbaa !170
  %i.afr = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.afq) #25
  %.val.i392.i.i.i.i = load ptr, ptr %.018.val.i.i135.i.i.i.i, align 8, !tbaa !66
  %i.afs = load ptr, ptr %.val.i392.i.i.i.i, align 8, !tbaa !170
  %i.aft = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.afs) #25
  %i.afu = icmp ult i32 %i.afr, %i.aft            ; 3 uses
  %.sink.in.i.i136.i.i.i.i = select i1 %i.afu, ptr %.01923.i.i133.i.i.i.i, ptr %.01824.i.i132.i.i.i.i
  %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.afu, i64 8, i64 0
  %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i.i133.i.i.i.i, i64 %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.afu, i64 0, i64 8
  %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i.i132.i.i.i.i, i64 %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.sink.i.i141.i.i.i.i = load ptr, ptr %.sink.in.i.i136.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i141.i.i.i.i, ptr %.025.i.i131.i.i.i.i, align 8, !tbaa !122
  %i.afv = getelementptr inbounds nuw i8, ptr %.025.i.i131.i.i.i.i, i64 8 ; 4 uses
  %i.afw = icmp ne ptr %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.afo
  %i.afx = icmp ne ptr %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.afp
  %i.afy = select i1 %i.afw, i1 %i.afx, i1 false
  br i1 %i.afy, label %.lr.ph.i.i130.i.i.i.i, label %._crit_edge.i.loopexit.i142.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i142.i.i.i.i:              ; preds = %.lr.ph.i.i130.i.i.i.i
  %i.afz = ptrtoint ptr %i.afo to i64
  %i.aga = ptrtoint ptr %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.agb = sub i64 %i.afz, %i.aga                 ; 4 uses
  %i.agc = icmp sgt i64 %i.agb, 8
  br i1 %i.agc, label %bb.dw, label %bb.dx, !prof !103

bb.dw:                                            ; preds = %._crit_edge.i.loopexit.i142.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.afv, ptr nonnull align 8 %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.agb, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i

bb.dx:                                            ; preds = %._crit_edge.i.loopexit.i142.i.i.i.i
  %i.agd = icmp eq i64 %i.agb, 8
  br i1 %i.agd, label %bb.dy, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %.val.i.i.i.i.i.i.i172.i.i.i.i = load ptr, ptr %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i172.i.i.i.i, ptr %i.afv, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i: ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.age = getelementptr inbounds i8, ptr %i.afv, i64 %i.agb ; 3 uses
  %i.agf = ptrtoint ptr %i.afp to i64             ; 2 uses
  %i.agg = ptrtoint ptr %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.agh = sub i64 %i.agf, %i.agg                 ; 4 uses
  %i.agi = icmp sgt i64 %i.agh, 8
  br i1 %i.agi, label %bb.dz, label %bb.ea, !prof !103

bb.dz:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.age, ptr nonnull align 8 %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.agh, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i

bb.ea:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i
  %i.agj = icmp eq i64 %i.agh, 8
  br i1 %i.agj, label %bb.eb, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %.val.i.i.i.i.i21.i.i171.i.i.i.i = load ptr, ptr %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i171.i.i.i.i, ptr %i.age, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.agk = getelementptr inbounds i8, ptr %i.age, i64 %i.agh ; 2 uses
  %i.agl = sub i64 %i.ko, %i.agf
  %i.agm = ashr exact i64 %i.agl, 3               ; 2 uses
  %.not.i145.i.i.i.i = icmp slt i64 %i.agm, %i.aen
  br i1 %.not.i145.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %.lr.ph.i.preheader.i127.i.i.i.i, !llvm.loop !6

._crit_edge.i146.i.i.i.i:                         ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i, %._crit_edge.i.us.i174.i.i.i.i, %._crit_edge.i.us.i174.i.us.i.i.i, %._crit_edge.i.us.i174.us.i.i.i.i, %._crit_edge.i.us.i174.us.us.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.019.lcssa.i147.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i ], [ %i.aff, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.afk, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.aes, %._crit_edge.i.us.i174.i.us.i.i.i ], [ %i.aez, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.agk, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ] ; 2 uses
  %.0.lcssa.i148.i.i.i.i = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i ], [ %i.afd, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.afj, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.aeq, %._crit_edge.i.us.i174.i.us.i.i.i ], [ %i.aex, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.afp, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ] ; 3 uses
  %.lcssa50.i149.i.i.i.i = phi i64 [ %i.xi, %.lr.ph.i.i.i.i.i ], [ %i.afi, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.afn, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.aev, %._crit_edge.i.us.i174.i.us.i.i.i ], [ %i.afc, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.agm, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ]
  %.sroa.speculated.i150.i.i.i.i = call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %.022.i.i.i.i.i, i64 %.lcssa50.i149.i.i.i.i) ; 2 uses
  %.idx48.i151.i.i.i.i = shl nsw i64 %.sroa.speculated.i150.i.i.i.i, 3
  %i.agn = getelementptr inbounds i8, ptr %.0.lcssa.i148.i.i.i.i, i64 %.idx48.i151.i.i.i.i ; 5 uses
  %i.ago = icmp ne i64 %.sroa.speculated.i150.i.i.i.i, 0
  %i.agp = icmp ne ptr %i.agn, %i.kn
  %i.agq = and i1 %i.ago, %i.agp
  br i1 %i.agq, label %.lr.ph.i29.i159.i.i.i.i, label %._crit_edge.i22.i152.i.i.i.i

.lr.ph.i29.i159.i.i.i.i:                          ; preds = %._crit_edge.i146.i.i.i.i, %.lr.ph.i29.i159.i.i.i.i
  %.025.i30.i160.i.i.i.i = phi ptr [ %i.agw, %.lr.ph.i29.i159.i.i.i.i ], [ %.019.lcssa.i147.i.i.i.i, %._crit_edge.i146.i.i.i.i ] ; 2 uses
  %.01824.i31.i161.i.i.i.i = phi ptr [ %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ], [ %.0.lcssa.i148.i.i.i.i, %._crit_edge.i146.i.i.i.i ] ; 3 uses
  %.01923.i32.i162.i.i.i.i = phi ptr [ %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ], [ %i.agn, %._crit_edge.i146.i.i.i.i ] ; 3 uses
  %.019.val.i33.i163.i.i.i.i = load ptr, ptr %.01923.i32.i162.i.i.i.i, align 8, !tbaa !122
  %.018.val.i34.i164.i.i.i.i = load ptr, ptr %.01824.i31.i161.i.i.i.i, align 8, !tbaa !122
  %.val2.i389.i.i.i.i = load ptr, ptr %.019.val.i33.i163.i.i.i.i, align 8, !tbaa !66
  %i.agr = load ptr, ptr %.val2.i389.i.i.i.i, align 8, !tbaa !170
  %i.ags = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.agr) #25
  %.val.i390.i.i.i.i = load ptr, ptr %.018.val.i34.i164.i.i.i.i, align 8, !tbaa !66
  %i.agt = load ptr, ptr %.val.i390.i.i.i.i, align 8, !tbaa !170
  %i.agu = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.agt) #25
  %i.agv = icmp ult i32 %i.ags, %i.agu            ; 3 uses
  %.sink.in.i35.i165.i.i.i.i = select i1 %i.agv, ptr %.01923.i32.i162.i.i.i.i, ptr %.01824.i31.i161.i.i.i.i
  %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.agv, i64 8, i64 0
  %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i32.i162.i.i.i.i, i64 %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.agv, i64 0, i64 8
  %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i31.i161.i.i.i.i, i64 %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.sink.i40.i170.i.i.i.i = load ptr, ptr %.sink.in.i35.i165.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i40.i170.i.i.i.i, ptr %.025.i30.i160.i.i.i.i, align 8, !tbaa !122
  %i.agw = getelementptr inbounds nuw i8, ptr %.025.i30.i160.i.i.i.i, i64 8 ; 2 uses
  %i.agx = icmp ne ptr %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.agn
  %i.agy = icmp ne ptr %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.kn
  %i.agz = select i1 %i.agx, i1 %i.agy, i1 false
  br i1 %i.agz, label %.lr.ph.i29.i159.i.i.i.i, label %._crit_edge.i22.i152.i.i.i.i, !llvm.loop !7

._crit_edge.i22.i152.i.i.i.i:                     ; preds = %.lr.ph.i29.i159.i.i.i.i, %._crit_edge.i146.i.i.i.i
  %.019.lcssa.i23.i153.i.i.i.i = phi ptr [ %i.agn, %._crit_edge.i146.i.i.i.i ], [ %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ] ; 3 uses
  %.018.lcssa.i24.i154.i.i.i.i = phi ptr [ %.0.lcssa.i148.i.i.i.i, %._crit_edge.i146.i.i.i.i ], [ %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ] ; 3 uses
  %.0.lcssa.i25.i155.i.i.i.i = phi ptr [ %.019.lcssa.i147.i.i.i.i, %._crit_edge.i146.i.i.i.i ], [ %i.agw, %.lr.ph.i29.i159.i.i.i.i ] ; 3 uses
  %i.aha = ptrtoint ptr %i.agn to i64
  %i.ahb = ptrtoint ptr %.018.lcssa.i24.i154.i.i.i.i to i64
  %i.ahc = sub i64 %i.aha, %i.ahb                 ; 4 uses
  %i.ahd = icmp sgt i64 %i.ahc, 8
  br i1 %i.ahd, label %bb.ec, label %bb.ed, !prof !103

bb.ec:                                            ; preds = %._crit_edge.i22.i152.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.lcssa.i25.i155.i.i.i.i, ptr align 8 %.018.lcssa.i24.i154.i.i.i.i, i64 %i.ahc, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i

bb.ed:                                            ; preds = %._crit_edge.i22.i152.i.i.i.i
  %i.ahe = icmp eq i64 %i.ahc, 8
  br i1 %i.ahe, label %bb.ee, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %.val.i.i.i.i.i.i28.i158.i.i.i.i = load ptr, ptr %.018.lcssa.i24.i154.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i28.i158.i.i.i.i, ptr %.0.lcssa.i25.i155.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.ahf = getelementptr inbounds i8, ptr %.0.lcssa.i25.i155.i.i.i.i, i64 %i.ahc ; 2 uses
  %i.ahg = ptrtoint ptr %.019.lcssa.i23.i153.i.i.i.i to i64
  %i.ahh = sub i64 %i.ko, %i.ahg                  ; 3 uses
  %i.ahi = icmp sgt i64 %i.ahh, 8
  br i1 %i.ahi, label %bb.ef, label %bb.eg, !prof !103

bb.ef:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ahf, ptr align 8 %.019.lcssa.i23.i153.i.i.i.i, i64 %i.ahh, i1 false)
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i

bb.eg:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i
  %i.ahj = icmp eq i64 %i.ahh, 8
  br i1 %i.ahj, label %bb.eh, label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %.val.i.i.i.i.i21.i27.i157.i.i.i.i = load ptr, ptr %.019.lcssa.i23.i153.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i27.i157.i.i.i.i, ptr %i.ahf, align 8, !tbaa !122
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i

_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i: ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.ahk = shl nsw i64 %.022.i.i.i.i.i, 2         ; 5 uses
  %.not52.i.i.i.i.i = icmp slt i64 %i.xi, %i.ahk
  br i1 %.not52.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i110.i.i.i.i

.lr.ph.i110.i.i.i.i:                              ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i
  %.idx.i.i.i.i37.i = shl i64 %.022.i.i.i.i.i, 4  ; 8 uses
  %.idx46.i.i.i.i.i = shl nsw i64 %.022.i.i.i.i.i, 5 ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i37.i, %.idx46.i.i.i.i.i
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.us.preheader.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i38.i

._crit_edge.i.us.preheader.i.i.i.i.i:             ; preds = %.lr.ph.i110.i.i.i.i
  %i.ahl = icmp sgt i64 %.022.i.i.i.i.i, 0
  %i.ahm = icmp sgt i64 %.idx.i.i.i.i37.i, 8
  br label %._crit_edge.i.us.i.i.i.i.i

._crit_edge.i.us.i.i.i.i.i:                       ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i, %._crit_edge.i.us.preheader.i.i.i.i.i
  %.054.us.i.i.i.i.i = phi ptr [ %i.ahn, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %.01953.us.i.i.i.i.i = phi ptr [ %i.ahp, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %i.ahn = getelementptr inbounds i8, ptr %.054.us.i.i.i.i.i, i64 %.idx.i.i.i.i37.i ; 4 uses
  br i1 %i.ahl, label %bb.ei, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i, !prof !103

bb.ei:                                            ; preds = %._crit_edge.i.us.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i.i.i.i.i, ptr align 8 %.054.us.i.i.i.i.i, i64 %.idx.i.i.i.i37.i, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i: ; preds = %bb.ei, %._crit_edge.i.us.i.i.i.i.i
  %i.aho = getelementptr inbounds i8, ptr %.01953.us.i.i.i.i.i, i64 %.idx.i.i.i.i37.i ; 2 uses
  br i1 %i.ahm, label %bb.ej, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i, !prof !193

bb.ej:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aho, ptr nonnull align 8 %i.ahn, i64 %.idx.i.i.i.i37.i, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i: ; preds = %bb.ej, %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i
  %i.ahp = getelementptr inbounds i8, ptr %i.aho, i64 %.idx.i.i.i.i37.i ; 2 uses
  %i.ahq = ptrtoint ptr %i.ahn to i64
  %i.ahr = sub i64 %i.aem, %i.ahq
  %i.ahs = ashr exact i64 %i.ahr, 3               ; 2 uses
  %.not.us.i.i.i.i.i = icmp slt i64 %i.ahs, %i.ahk
  br i1 %.not.us.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i.i.i.i38.i:                   ; preds = %.lr.ph.i110.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i
  %.054.i.i.i.i.i = phi ptr [ %i.ahu, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i ], [ %i.kt, %.lr.ph.i110.i.i.i.i ] ; 3 uses
  %.01953.i.i.i.i.i = phi ptr [ %i.aip, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i ], [ %i.kz, %.lr.ph.i110.i.i.i.i ]
  %i.aht = getelementptr inbounds i8, ptr %.054.i.i.i.i.i, i64 %.idx.i.i.i.i37.i ; 3 uses
  %i.ahu = getelementptr inbounds i8, ptr %.054.i.i.i.i.i, i64 %.idx46.i.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i111.i.i.i.i

.lr.ph.i.i111.i.i.i.i:                            ; preds = %.lr.ph.i.i111.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i38.i
  %.025.i.i.i.i.i.i = phi ptr [ %i.aia, %.lr.ph.i.i111.i.i.i.i ], [ %.01953.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i38.i ] ; 2 uses
  %.01824.i.i.i.i.i.i = phi ptr [ %.1.i.i118.i.i.i.i, %.lr.ph.i.i111.i.i.i.i ], [ %.054.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i38.i ] ; 3 uses
  %.01923.i.i.i.i.i.i = phi ptr [ %.120.i.i116.i.i.i.i, %.lr.ph.i.i111.i.i.i.i ], [ %i.aht, %.lr.ph.i.preheader.i.i.i.i38.i ] ; 3 uses
  %.019.val.i.i112.i.i.i.i = load ptr, ptr %.01923.i.i.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i113.i.i.i.i = load ptr, ptr %.01824.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i387.i.i.i.i = load ptr, ptr %.019.val.i.i112.i.i.i.i, align 8, !tbaa !66
  %i.ahv = load ptr, ptr %.val2.i387.i.i.i.i, align 8, !tbaa !170
  %i.ahw = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ahv) #25
  %.val.i388.i.i.i.i = load ptr, ptr %.018.val.i.i113.i.i.i.i, align 8, !tbaa !66
  %i.ahx = load ptr, ptr %.val.i388.i.i.i.i, align 8, !tbaa !170
  %i.ahy = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ahx) #25
  %i.ahz = icmp ult i32 %i.ahw, %i.ahy            ; 3 uses
  %.sink.in.i.i114.i.i.i.i = select i1 %i.ahz, ptr %.01923.i.i.i.i.i.i, ptr %.01824.i.i.i.i.i.i
  %.120.idx.i.i115.i.i.i.i = select i1 %i.ahz, i64 8, i64 0
  %.120.i.i116.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01923.i.i.i.i.i.i, i64 %.120.idx.i.i115.i.i.i.i ; 5 uses
  %.1.idx.i.i117.i.i.i.i = select i1 %i.ahz, i64 0, i64 8
  %.1.i.i118.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01824.i.i.i.i.i.i, i64 %.1.idx.i.i117.i.i.i.i ; 5 uses
  %.sink.i.i119.i.i.i.i = load ptr, ptr %.sink.in.i.i114.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i119.i.i.i.i, ptr %.025.i.i.i.i.i.i, align 8, !tbaa !122
  %i.aia = getelementptr inbounds nuw i8, ptr %.025.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.aib = icmp ne ptr %.1.i.i118.i.i.i.i, %i.aht
  %i.aic = icmp ne ptr %.120.i.i116.i.i.i.i, %i.ahu
  %i.aid = select i1 %i.aib, i1 %i.aic, i1 false
  br i1 %i.aid, label %.lr.ph.i.i111.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph.i.i111.i.i.i.i
  %i.aie = ptrtoint ptr %i.aht to i64
  %i.aif = ptrtoint ptr %.1.i.i118.i.i.i.i to i64
  %i.aig = sub i64 %i.aie, %i.aif                 ; 4 uses
  %i.aih = icmp sgt i64 %i.aig, 8
  br i1 %i.aih, label %bb.ek, label %bb.el, !prof !103

bb.ek:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aia, ptr nonnull align 8 %.1.i.i118.i.i.i.i, i64 %i.aig, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

bb.el:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  %i.aii = icmp eq i64 %i.aig, 8
  br i1 %i.aii, label %bb.em, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %.val.i.i.i.i.i.i.i121.i.i.i.i = load ptr, ptr %.1.i.i118.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i121.i.i.i.i, ptr %i.aia, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i: ; preds = %bb.em, %bb.el, %bb.ek
  %i.aij = getelementptr inbounds i8, ptr %i.aia, i64 %i.aig ; 3 uses
  %i.aik = ptrtoint ptr %i.ahu to i64             ; 2 uses
  %i.ail = ptrtoint ptr %.120.i.i116.i.i.i.i to i64
  %i.aim = sub i64 %i.aik, %i.ail                 ; 4 uses
  %i.ain = icmp sgt i64 %i.aim, 8
  br i1 %i.ain, label %bb.en, label %bb.eo, !prof !103

bb.en:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aij, ptr nonnull align 8 %.120.i.i116.i.i.i.i, i64 %i.aim, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i

bb.eo:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i
  %i.aio = icmp eq i64 %i.aim, 8
  br i1 %i.aio, label %bb.ep, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %.val.i.i.i.i.i21.i.i.i.i.i.i = load ptr, ptr %.120.i.i116.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i.i.i.i.i, ptr %i.aij, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i: ; preds = %bb.ep, %bb.eo, %bb.en
  %i.aip = getelementptr inbounds i8, ptr %i.aij, i64 %i.aim ; 2 uses
  %i.aiq = sub i64 %i.aem, %i.aik
  %i.air = ashr exact i64 %i.aiq, 3               ; 2 uses
  %.not.i120.i.i.i.i = icmp slt i64 %i.air, %i.ahk
  br i1 %.not.i120.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i38.i, !llvm.loop !6
end_hunk_1
