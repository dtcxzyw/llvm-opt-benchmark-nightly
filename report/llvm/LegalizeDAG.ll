Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeDAG?download=true
inline.NumInlined: 5337
inline.NumDeleted: 1400
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_120SelectionDAGLegalize10ExpandNodeEPN4llvm6SDNodeE:bb.a
  %.sroa.21.0.copyload.i3255 = load ptr, ptr %.sroa.21.0..sroa_idx.i3254, align 8, !tbaa !162
  store ptr %i.ew, ptr %28, align 8, !tbaa !196
  %.sroa.42639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %i.ex, ptr %.sroa.42639.0..sroa_idx, align 8, !tbaa !172
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !167 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store ptr %.fca.0.extract2641, ptr %29, align 8, !tbaa !184
  %.sroa.52649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract2642, ptr %.sroa.52649.0..sroa_idx, align 8, !tbaa !172
  store ptr %.fca.0.extract2641, ptr %30, align 8, !tbaa !184
  %.sroa.52649.0..sroa_idx2650 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract2642, ptr %.sroa.52649.0..sroa_idx2650, align 8, !tbaa !172
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fd, align 8
  %i.fe = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAtomicCmpSwapEjRKNS_5SDLocENS_3EVTENS_8SDVTListENS_7SDValueES6_S6_S6_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.ey, i32 noundef 358, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3253, ptr %.sroa.21.0.copyload.i3255, ptr noundef nonnull byval(%"struct.llvm::SDVTList") align 8 %28, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fb, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fc, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef %i.ff) #18
  %.fca.0.extract2624 = extractvalue { ptr, i32 } %i.fg, 0 ; 2 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2624, i32 0)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2624, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.aa:                                            ; preds = %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i3262 = load i16, ptr %i.fj, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3263 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i3264 = load ptr, ptr %.sroa.21.0..sroa_idx.i3263, align 8, !tbaa !162
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !167 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i3267 = load i64, ptr %i.fo, align 8
  %i.fp = and i64 %.0.copyload.i.i.i.i.i.i3267, -5
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getAtomicEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.fi, i32 noundef 360, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3262, ptr %.sroa.21.0.copyload.i3264, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fl, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fm, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fn, ptr noundef %i.fq) #18
  %.fca.0.extract2606 = extractvalue { ptr, i32 } %i.fr, 0
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2606, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.ab:                                            ; preds = %bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3270 = load i16, ptr %i.fv, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3271 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.21.0.copyload.i3272 = load ptr, ptr %.sroa.21.0..sroa_idx.i3271, align 8, !tbaa !162
  %i.fw = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ft, i16 %.sroa.0.0.copyload.i3270, ptr %.sroa.21.0.copyload.i3272, i16 1, ptr null) #18 ; 2 uses
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  %i.fy = extractvalue { ptr, i32 } %i.fw, 1
  %i.fz = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i3275 = load i16, ptr %i.ga, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3276 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.21.0.copyload.i3277 = load ptr, ptr %.sroa.21.0..sroa_idx.i3276, align 8, !tbaa !162
  store ptr %i.fx, ptr %31, align 8, !tbaa !196
  %.sroa.42604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %i.fy, ptr %.sroa.42604.0..sroa_idx, align 8, !tbaa !172
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !167 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i3280 = load i64, ptr %i.gg, align 8
  %i.gh = and i64 %.0.copyload.i.i.i.i.i.i3280, -5
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAtomicCmpSwapEjRKNS_5SDLocENS_3EVTENS_8SDVTListENS_7SDValueES6_S6_S6_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.fz, i32 noundef 358, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3275, ptr %.sroa.21.0.copyload.i3277, ptr noundef nonnull byval(%"struct.llvm::SDVTList") align 8 %31, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gc, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gd, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ge, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gf, ptr noundef %i.gi) #18 ; 2 uses
  %.fca.0.extract2595 = extractvalue { ptr, i32 } %i.gj, 0 ; 5 uses
  %.fca.1.extract2596 = extractvalue { ptr, i32 } %i.gj, 1 ; 3 uses
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !167
  %.sroa.102584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %.sroa.102584.0.copyload = load i32, ptr %.sroa.102584.0..sroa_idx, align 4
  %.sroa.0.0.copyload.i3281 = load i16, ptr %i.ga, align 8, !tbaa !160 ; 6 uses
  %.sroa.21.0.copyload.i3283 = load ptr, ptr %.sroa.21.0..sroa_idx.i3276, align 8, !tbaa !162 ; 6 uses
  %i.gl = load ptr, ptr %i.fu, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3286 = load i16, ptr %i.gl, align 8, !tbaa !160 ; 3 uses
  %.sroa.21.0..sroa_idx.i3287 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.21.0.copyload.i3288 = load ptr, ptr %.sroa.21.0..sroa_idx.i3287, align 8, !tbaa !162 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !164, !nonnull !132, !align !133 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !124
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1216
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = call noundef i32 %i.gq(ptr noundef nonnull align 8 dereferenceable(518435) %i.gn) #18
  %i.gs = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133 ; 5 uses
  switch i32 %i.gr, label %bb.af [
    i32 227, label %bb.ac
    i32 228, label %bb.ad
    i32 229, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  store ptr %.fca.0.extract2595, ptr %32, align 8, !tbaa !184
  %.sroa.84542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract2596, ptr %.sroa.84542.0..sroa_idx, align 8, !tbaa !172
  %i.gt = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gs, i16 %.sroa.0.0.copyload.i3281, ptr %.sroa.21.0.copyload.i3283) #18 ; 2 uses
  %.fca.0.extract2553 = extractvalue { ptr, i32 } %i.gt, 0
  %.fca.1.extract2554 = extractvalue { ptr, i32 } %i.gt, 1
  store ptr %.fca.0.extract2553, ptr %33, align 8
  %.sroa.22556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract2554, ptr %.sroa.22556.0..sroa_idx, align 8
  %i.gu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.gs, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3286, ptr %.sroa.21.0.copyload.i3288, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #18 ; 2 uses
  %.fca.0.extract2549 = extractvalue { ptr, i32 } %i.gu, 0 ; 2 uses
  %i.gv = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133 ; 2 uses
  %i.gw = load ptr, ptr %i.gb, align 8, !tbaa !167
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !tbaa.struct !197
  %i.gy = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gv, i16 %.sroa.0.0.copyload.i3281, ptr %.sroa.21.0.copyload.i3283) #18 ; 2 uses
  %.fca.0.extract2536 = extractvalue { ptr, i32 } %i.gy, 0
  %.fca.1.extract2537 = extractvalue { ptr, i32 } %i.gy, 1
  store ptr %.fca.0.extract2536, ptr %35, align 8
  %.sroa.22539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract2537, ptr %.sroa.22539.0..sroa_idx, align 8
  %i.gz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.gv, i32 noundef 236, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3286, ptr %.sroa.21.0.copyload.i3288, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35) #18
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  store ptr %.fca.0.extract2595, ptr %36, align 8, !tbaa !184
  %.sroa.84542.0..sroa_idx4543 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract2596, ptr %.sroa.84542.0..sroa_idx4543, align 8, !tbaa !172
  %i.ha = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gs, i16 %.sroa.0.0.copyload.i3281, ptr %.sroa.21.0.copyload.i3283) #18 ; 2 uses
  %.fca.0.extract2519 = extractvalue { ptr, i32 } %i.ha, 0
  %.fca.1.extract2520 = extractvalue { ptr, i32 } %i.ha, 1
  store ptr %.fca.0.extract2519, ptr %37, align 8
  %.sroa.22522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.fca.1.extract2520, ptr %.sroa.22522.0..sroa_idx, align 8
  %i.hb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.gs, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3286, ptr %.sroa.21.0.copyload.i3288, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37) #18 ; 2 uses
  %.fca.0.extract2515 = extractvalue { ptr, i32 } %i.hb, 0 ; 2 uses
  %i.hc = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.hd = load ptr, ptr %i.gb, align 8, !tbaa !167 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %.sroa.02509.0.copyload = load ptr, ptr %i.he, align 8, !tbaa !184
  %.sroa.22510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %.sroa.22510.0.copyload = load i32, ptr %.sroa.22510.0..sroa_idx, align 8, !tbaa !172
  %i.hf = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.hc, ptr %.sroa.02509.0.copyload, i32 %.sroa.22510.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3281, ptr %.sroa.21.0.copyload.i3283) #18
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.hg = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gs, ptr %.fca.0.extract2595, i32 %.fca.1.extract2596, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3281, ptr %.sroa.21.0.copyload.i3283) #18 ; 2 uses
  %.fca.0.extract2489 = extractvalue { ptr, i32 } %i.hg, 0
  %i.hh = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.hi = load ptr, ptr %i.gb, align 8, !tbaa !167 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %.sroa.02483.0.copyload = load ptr, ptr %i.hj, align 8, !tbaa !184
  %.sroa.22484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 88
  %.sroa.22484.0.copyload = load i32, ptr %.sroa.22484.0..sroa_idx, align 8, !tbaa !172
  %i.hk = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.hh, ptr %.sroa.02483.0.copyload, i32 %.sroa.22484.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3281, ptr %.sroa.21.0.copyload.i3283) #18
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.04537.0 = phi ptr [ %.fca.0.extract2549, %bb.ac ], [ %.fca.0.extract2515, %bb.ad ], [ %.fca.0.extract2595, %bb.ae ]
  %.pn3207 = phi { ptr, i32 } [ %i.gz, %bb.ac ], [ %i.hf, %bb.ad ], [ %i.hk, %bb.ae ] ; 2 uses
  %.sroa.02587.0 = phi ptr [ %.fca.0.extract2549, %bb.ac ], [ %.fca.0.extract2515, %bb.ad ], [ %.fca.0.extract2489, %bb.ae ]
  %.pn4741 = phi { ptr, i32 } [ %i.gu, %bb.ac ], [ %i.hb, %bb.ad ], [ %i.hg, %bb.ae ]
  %.sroa.92590.0 = extractvalue { ptr, i32 } %.pn4741, 1
  %.sroa.72581.0 = extractvalue { ptr, i32 } %.pn3207, 1
  %.sroa.02579.0 = extractvalue { ptr, i32 } %.pn3207, 0
  %i.hl = load ptr, ptr %i.fs, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.hm = load ptr, ptr %i.fu, align 8, !tbaa !159 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %.sroa.0.0.copyload.i3291 = load i16, ptr %i.hn, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3292 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %.sroa.21.0.copyload.i3293 = load ptr, ptr %.sroa.21.0..sroa_idx.i3292, align 8, !tbaa !162
  store ptr %.sroa.02579.0, ptr %38, align 8, !tbaa !184
  %.sroa.72581.0..sroa_idx2582 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.sroa.72581.0, ptr %.sroa.72581.0..sroa_idx2582, align 8, !tbaa !172
  %.sroa.102584.0..sroa_idx2585 = getelementptr inbounds nuw i8, ptr %38, i64 12
  store i32 %.sroa.102584.0.copyload, ptr %.sroa.102584.0..sroa_idx2585, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %i.ho = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.hl, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i3291, ptr %.sroa.21.0.copyload.i3293, ptr %.sroa.02587.0, i32 %.sroa.92590.0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, i32 noundef 17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract2464 = extractvalue { ptr, i32 } %i.ho, 0
  %.fca.1.extract2465 = extractvalue { ptr, i32 } %i.ho, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.sroa.04537.0, i32 0)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2464, i32 %.fca.1.extract2465)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2595, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  store i64 %i.f, ptr %40, align 8, !tbaa !173
  %i.hp = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %i.i, ptr %i.hp, align 8, !tbaa !175
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3300 = load i16, ptr %i.hr, align 8, !tbaa !160 ; 2 uses
  %.sroa.21.0..sroa_idx.i3301 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.sroa.21.0.copyload.i3302 = load ptr, ptr %.sroa.21.0..sroa_idx.i3301, align 8, !tbaa !162 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !167 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  %.sroa.04528.0.copyload = load ptr, ptr %i.hu, align 8, !tbaa !184 ; 4 uses
  %.sroa.84533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.hv = load i64, ptr %.sroa.84533.0..sroa_idx, align 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.04528.0.copyload, i64 24
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !157
  %i.hy = icmp eq i32 %i.hx, 236
  br i1 %i.hy, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.04528.0.copyload, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !167 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !147 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 88
  %.sroa.0.0.copyload.i3305 = load i16, ptr %i.id, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3306 = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %.sroa.21.0.copyload.i3307 = load ptr, ptr %.sroa.21.0..sroa_idx.i3306, align 8, !tbaa !162
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i3310 = load i16, ptr %i.ie, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3311 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i3312 = load ptr, ptr %.sroa.21.0..sroa_idx.i3311, align 8, !tbaa !162
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i3305, %.sroa.0.0.copyload.i3310
  %i.if = icmp eq ptr %.sroa.21.0.copyload.i3307, %.sroa.21.0.copyload.i3312
  %.not4.i = select i1 %.not.i.i, i1 %i.if, i1 false
  br i1 %.not4.i, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %.sroa.04528.0.copyload4532 = load ptr, ptr %i.ia, align 8, !tbaa !184
  %.sroa.84533.0..sroa_idx4535 = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ig = load i32, ptr %.sroa.84533.0..sroa_idx4535, align 8, !tbaa !172
  %.sroa.84533.0.insert.ext = zext i32 %i.ig to i64
  %.sroa.84533.0.insert.mask = and i64 %i.hv, -4294967296
  %.sroa.84533.0.insert.insert = or disjoint i64 %.sroa.84533.0.insert.mask, %.sroa.84533.0.insert.ext
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.aj, %bb.ai
  %.sroa.04528.0 = phi ptr [ %.sroa.04528.0.copyload4532, %bb.aj ], [ %.sroa.04528.0.copyload, %bb.ai ], [ %.sroa.04528.0.copyload, %bb.ah ]
  %.sroa.84533.0 = phi i64 [ %.sroa.84533.0.insert.insert, %bb.aj ], [ %i.hv, %bb.ai ], [ %i.hv, %bb.ah ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !158, !nonnull !132, !align !133 ; 2 uses
  %i.ij = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %40, i16 %.sroa.0.0.copyload.i3300, ptr %.sroa.21.0.copyload.i3302, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 2 uses
  %.fca.0.extract2427 = extractvalue { ptr, i32 } %i.ij, 0
  %.fca.1.extract2428 = extractvalue { ptr, i32 } %i.ij, 1
  store ptr %.fca.0.extract2427, ptr %41, align 8
  %.sroa.22430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract2428, ptr %.sroa.22430.0..sroa_idx, align 8
  store ptr %.sroa.04528.0, ptr %42, align 8, !tbaa !184
  %.sroa.84533.0..sroa_idx4534 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %.sroa.84533.0, ptr %.sroa.84533.0..sroa_idx4534, align 8
  %i.ik = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %40, i16 %.sroa.0.0.copyload.i3300, ptr %.sroa.21.0.copyload.i3302, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #18 ; 2 uses
  %.fca.0.extract2423 = extractvalue { ptr, i32 } %i.ik, 0
  %.fca.1.extract2424 = extractvalue { ptr, i32 } %i.ik, 1
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i3315 = load i16, ptr %i.im, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3316 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i3317 = load ptr, ptr %.sroa.21.0..sroa_idx.i3316, align 8, !tbaa !162
  %i.in = load ptr, ptr %i.hs, align 8, !tbaa !167 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  store ptr %.fca.0.extract2423, ptr %43, align 8, !tbaa !184
  %.sroa.42438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract2424, ptr %.sroa.42438.0..sroa_idx, align 8, !tbaa !172
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i3320 = load i64, ptr %i.ip, align 8
  %i.iq = and i64 %.0.copyload.i.i.i.i.i.i3320, -5
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getAtomicEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.il, i32 noundef 361, ptr noundef nonnull align 8 dereferenceable(12) %40, i16 %.sroa.0.0.copyload.i3315, ptr %.sroa.21.0.copyload.i3317, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.in, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.io, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43, ptr noundef %i.ir) #18 ; 2 uses
  %.fca.0.extract2417 = extractvalue { ptr, i32 } %i.is, 0 ; 2 uses
  %.fca.1.extract2418 = extractvalue { ptr, i32 } %i.is, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2417, i32 %.fca.1.extract2418)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2417, i32 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.ak:                                            ; preds = %bb.a
  call fastcc void @_ZN12_GLOBAL__N_120SelectionDAGLegalize24ExpandDYNAMIC_STACKALLOCEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %17)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.al:                                            ; preds = %.lr.ph4773, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3325
  %indvars.iv4801 = phi i64 [ 0, %.lr.ph4773 ], [ %indvars.iv.next4802, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3325 ] ; 2 uses
  %i.it = load ptr, ptr %i.r, align 8, !tbaa !167
  %i.iu = getelementptr inbounds nuw [40 x i8], ptr %i.it, i64 %indvars.iv4801 ; 2 uses
  %.sroa.02402.0.copyload = load ptr, ptr %i.iu, align 8, !tbaa !184 ; 2 uses
  %.sroa.22403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %.sroa.22403.0.copyload = load i32, ptr %.sroa.22403.0..sroa_idx, align 8, !tbaa !172 ; 2 uses
  %i.iv = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.iw = load i32, ptr %i.d, align 4, !tbaa !187
  %.not.i3323 = icmp ult i32 %i.iv, %i.iw
  br i1 %.not.i3323, label %bb.an, label %bb.am, !prof !188

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.sroa.02402.0.copyload, i32 %.sroa.22403.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3325

bb.an:                                            ; preds = %bb.al
  %i.ix = zext i32 %i.iv to i64
  %i.iy = load ptr, ptr %17, align 8, !tbaa !185
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.ix ; 2 uses
  store ptr %.sroa.02402.0.copyload, ptr %i.iz, align 1
  %.sroa.32.0..sroa_idx.i3324 = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 %.sroa.22403.0.copyload, ptr %.sroa.32.0..sroa_idx.i3324, align 1
  %i.ja = load i32, ptr %i.c, align 8, !tbaa !186
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.c, align 8, !tbaa !186
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3325

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3325: ; preds = %bb.am, %bb.an
  %indvars.iv.next4802 = add nuw nsw i64 %indvars.iv4801, 1 ; 2 uses
  %i.jc = load i16, ptr %i.p, align 2, !tbaa !177
  %i.jd = zext i16 %i.jc to i64
  %i.je = icmp samesign ult i64 %indvars.iv.next4802, %i.jd
  br i1 %i.je, label %bb.al, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624, !llvm.loop !198

bb.ao:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3326 = load i16, ptr %i.jg, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3327 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.sroa.21.0.copyload.i3328 = load ptr, ptr %.sroa.21.0..sroa_idx.i3327, align 8, !tbaa !162
  store i16 %.sroa.0.0.copyload.i3326, ptr %44, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i3328, ptr %i.jh, align 8
  %i.ji = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %44)
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !158, !nonnull !132, !align !133 ; 2 uses
  %.sroa.02397.0.copyload = load i16, ptr %44, align 8, !tbaa !160 ; 2 uses
  %.sroa.22399.0.copyload = load ptr, ptr %i.jh, align 8, !tbaa !162 ; 2 uses
  br i1 %i.ji, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.jk, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.02397.0.copyload, ptr %.sroa.22399.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #18
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.jm = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.jk, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.02397.0.copyload, ptr %.sroa.22399.0.copyload, i1 noundef zeroext false) #18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink4902 = phi { ptr, i32 } [ %i.jm, %bb.aq ], [ %i.jl, %bb.ap ] ; 2 uses
  %.fca.0.extract2384 = extractvalue { ptr, i32 } %.sink4902, 0
  %.fca.1.extract2385 = extractvalue { ptr, i32 } %.sink4902, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract2384, i32 %.fca.1.extract2385)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.as:                                            ; preds = %bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !164, !nonnull !132, !align !133 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 518434
  %i.jq = load i8, ptr %i.jp, align 2, !tbaa !199, !range !150, !noundef !132
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3331 = load i16, ptr %i.jt, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i3332 = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.sroa.21.0.copyload.i3333 = load ptr, ptr %.sroa.21.0..sroa_idx.i3332, align 8, !tbaa !162
  %i.ju = call noundef zeroext i8 @_ZNK4llvm18TargetLoweringBase26getStrictFPOperationActionEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %i.jo, i32 noundef 150, i16 %.sroa.0.0.copyload.i3331, ptr %.sroa.21.0.copyload.i3333)
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !167 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %.sroa.02376.0.copyload = load ptr, ptr %i.jy, align 8, !tbaa !184
  %.sroa.22377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  %.sroa.22377.0.copyload = load i32, ptr %.sroa.22377.0..sroa_idx, align 8, !tbaa !172
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3336 = load i16, ptr %i.jz, align 8, !tbaa !160 ; 2 uses
  %.sroa.21.0..sroa_idx.i3337 = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.sroa.21.0.copyload.i3338 = load ptr, ptr %.sroa.21.0..sroa_idx.i3337, align 8, !tbaa !162 ; 2 uses
  store i16 %.sroa.0.0.copyload.i3336, ptr %45, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %.sroa.21.0.copyload.i3338, ptr %i.ka, align 8
  %.sroa.04519.0.copyload = load ptr, ptr %i.jx, align 8, !tbaa !184
  %.sroa.24520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %.sroa.24520.0.copyload = load i32, ptr %.sroa.24520.0..sroa_idx, align 8, !tbaa !172
  %i.kb = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_120SelectionDAGLegalize16EmitStackConvertEN4llvm7SDValueENS1_3EVTES3_RKNS1_5SDLocES2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %.sroa.02376.0.copyload, i32 %.sroa.22377.0.copyload, i16 %.sroa.0.0.copyload.i3336, ptr %.sroa.21.0.copyload.i3338, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %45, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr %.sroa.04519.0.copyload, i32 %.sroa.24520.0.copyload) ; 2 uses
  %.fca.0.extract2370 = extractvalue { ptr, i32 } %i.kb, 0 ; 3 uses
  %.fca.1.extract2371 = extractvalue { ptr, i32 } %i.kb, 1
  store ptr %.fca.0.extract2370, ptr %19, align 8, !tbaa !184
  store i32 %.fca.1.extract2371, ptr %i.j, align 8, !tbaa !172
  %.not4740.a = icmp eq ptr %.fca.0.extract2370, null
  br i1 %.not4740.a, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624, label %bb.av

bb.av:                                            ; preds = %bb.au
  call fastcc void @_ZN12_GLOBAL__N_120SelectionDAGLegalize11ReplaceNodeEPN4llvm6SDNodeES3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %.fca.0.extract2370)
  br label %bb.no

bb.aw:                                            ; preds = %bb.a
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !164, !nonnull !132, !align !133
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.kg = call { ptr, i32 } @_ZNK4llvm14TargetLowering14expandFP_ROUNDEPNS_6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %i.kd, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.kf) #18 ; 2 uses
  %.fca.0.extract2363 = extractvalue { ptr, i32 } %i.kg, 0 ; 3 uses
  %.fca.1.extract2364 = extractvalue { ptr, i32 } %i.kg, 1 ; 2 uses
  store ptr %.fca.0.extract2363, ptr %19, align 8, !tbaa !184
  store i32 %.fca.1.extract2364, ptr %i.j, align 8, !tbaa !172
  %.not4738.a = icmp eq ptr %.fca.0.extract2363, null
  br i1 %.not4738.a, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr nonnull %.fca.0.extract2363, i32 %.fca.1.extract2364)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.ay:                                            ; preds = %bb.aw, %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !167 ; 2 uses
  %.sroa.02354.0.copyload = load ptr, ptr %i.ki, align 8, !tbaa !184
  %.sroa.22355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.22355.0.copyload = load i32, ptr %.sroa.22355.0..sroa_idx, align 8, !tbaa !172
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i3346 = load i16, ptr %i.kk, align 8, !tbaa !160 ; 2 uses
  %.sroa.21.0..sroa_idx.i3347 = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.21.0.copyload.i3348 = load ptr, ptr %.sroa.21.0..sroa_idx.i3347, align 8, !tbaa !162 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i16 %.sroa.0.0.copyload.i3346, ptr %16, align 8
  %.sroa.24518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.21.0.copyload.i3348, ptr %.sroa.24518.0..sroa_idx, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 288
  %i.ko = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_120SelectionDAGLegalize16EmitStackConvertEN4llvm7SDValueENS1_3EVTES3_RKNS1_5SDLocES2_(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, ptr %.sroa.02354.0.copyload, i32 %.sroa.22355.0.copyload, i16 %.sroa.0.0.copyload.i3346, ptr %.sroa.21.0.copyload.i3348, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %16, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr nonnull %i.kn, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %.fca.0.extract2348 = extractvalue { ptr, i32 } %i.ko, 0 ; 3 uses
  %.fca.1.extract2349 = extractvalue { ptr, i32 } %i.ko, 1 ; 2 uses
  store ptr %.fca.0.extract2348, ptr %19, align 8, !tbaa !184
  store i32 %.fca.1.extract2349, ptr %i.j, align 8, !tbaa !172
  %.not4739.a = icmp eq ptr %.fca.0.extract2348, null
  br i1 %.not4739.a, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr nonnull %.fca.0.extract2348, i32 %.fca.1.extract2349)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624

bb.ba:                                            ; preds = %bb.a
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !164, !nonnull !132, !align !133 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 518434
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !199, !range !150, !noundef !132
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit3624, label %bb.bb

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120SelectionDAGLegalize11PromoteNodeEPN4llvm6SDNodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  br i1 %i.np, label %.critedge, label %bb.bl

bb.bk:                                            ; preds = %.split
  %i.nq = zext i16 %.sroa.0.0.copyload.i2081 to i64
  %i.nr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.nq ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 -16
  %.sroa.0.0.copyload.i.i2092 = load i64, ptr %i.ns, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.nr, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i2092, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.bl:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  store i16 %.sroa.0.0.copyload.i2081, ptr %42, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.nt, align 8
  %i.nu = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %42) #19
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.bk, %bb.bl
  %.pn.i2093 = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.bk ], [ %i.nu, %bb.bl ] ; 2 uses
  %.fca.0.extract1385 = extractvalue { i64, i8 } %.pn.i2093, 0
  %.fca.1.extract1386 = extractvalue { i64, i8 } %.pn.i2093, 1
  %i.nv = zext i16 %i.aw to i64
  %i.nw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.nv ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 -16
  %.sroa.0.0.copyload.i2094 = load i64, ptr %i.nx, align 16
  %.sroa.2.0..sroa_idx.i2095 = getelementptr i8, ptr %i.nw, i64 -8
  %.sroa.2.0.copyload.i2096 = load i8, ptr %.sroa.2.0..sroa_idx.i2095, align 8
  %i.ny = icmp eq i64 %.fca.0.extract1385, %.sroa.0.0.copyload.i2094
  %i.nz = icmp eq i8 %.fca.1.extract1386, %.sroa.2.0.copyload.i2096
  %i.oa = select i1 %i.ny, i1 %i.nz, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br i1 %i.oa, label %bb.bn, label %bb.bm

.critedge:                                        ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  store i16 %.sroa.0.0.copyload.i2081, ptr %43, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.ob, align 8
  %i.oc = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %43) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  %not. = xor i1 %i.oc, true
  %.1984 = select i1 %i.oc, i32 230, i32 244
  %.1985 = select i1 %i.oc, i32 229, i32 247
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %.critedge
  %.not1976 = phi i1 [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ %not., %bb.bm ], [ false, %.critedge ]
  %.01959 = phi i32 [ 248, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ %.1984, %bb.bm ], [ 248, %.critedge ]
  %.01958 = phi i32 [ 248, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ %.1985, %bb.bm ], [ 248, %.critedge ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !167 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %i.oe, i64 12, i1 false), !tbaa.struct !197
  %i.of = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.oh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.of, i32 noundef %.01958, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.og) #18 ; 2 uses
  %.fca.0.extract1373 = extractvalue { ptr, i32 } %i.oh, 0
  %.fca.1.extract1374 = extractvalue { ptr, i32 } %i.oh, 1
  %i.oi = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.oj = load ptr, ptr %i.od, align 8, !tbaa !167
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %i.ol = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.oi, i32 noundef %.01958, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ok) #18 ; 2 uses
  %.fca.0.extract1365 = extractvalue { ptr, i32 } %i.ol, 0
  %.fca.1.extract1366 = extractvalue { ptr, i32 } %i.ol, 1
  %i.om = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %.sroa.01358.0.copyload = load ptr, ptr %22, align 8, !tbaa !184
  %.sroa.21359.0.copyload = load i32, ptr %i.bc, align 8, !tbaa !172
  store ptr %.fca.0.extract1373, ptr %44, align 8, !tbaa !184
  %.sroa.68.0..sroa_idx3024 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract1374, ptr %.sroa.68.0..sroa_idx3024, align 8, !tbaa !172
  store ptr %.fca.0.extract1365, ptr %45, align 8, !tbaa !184
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract1366, ptr %.sroa.31.0..sroa_idx, align 8, !tbaa !172
  %i.on = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.om, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr %.sroa.01358.0.copyload, i32 %.sroa.21359.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45, i32 0) ; 2 uses
  %.fca.0.extract1354 = extractvalue { ptr, i32 } %i.on, 0
  %.fca.1.extract1355 = extractvalue { ptr, i32 } %i.on, 1
  store ptr %.fca.0.extract1354, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1355, ptr %i.bc, align 8, !tbaa !172
  %i.oo = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133 ; 3 uses
  %i.op = load ptr, ptr %i.f, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i2109 = load i16, ptr %i.op, align 8, !tbaa !160 ; 2 uses
  %.sroa.21.0..sroa_idx.i2110 = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.21.0.copyload.i2111 = load ptr, ptr %.sroa.21.0..sroa_idx.i2110, align 8, !tbaa !162 ; 2 uses
  br i1 %.not1976, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.oo, i32 noundef %.01959, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.0.0.copyload.i2109, ptr %.sroa.21.0.copyload.i2111, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #18
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !197
  %i.or = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.oo, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %21, i1 noundef zeroext true) #18 ; 2 uses
  %.fca.0.extract1336 = extractvalue { ptr, i32 } %i.or, 0
  %.fca.1.extract1337 = extractvalue { ptr, i32 } %i.or, 1
  store ptr %.fca.0.extract1336, ptr %47, align 8
  %.sroa.21339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract1337, ptr %.sroa.21339.0..sroa_idx, align 8
  %i.os = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.oo, i32 noundef 244, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.0.0.copyload.i2109, ptr %.sroa.21.0.copyload.i2111, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #18
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn1978 = phi { ptr, i32 } [ %i.os, %bb.bp ], [ %i.oq, %bb.bo ] ; 2 uses
  %storemerge1979 = extractvalue { ptr, i32 } %.pn1978, 0 ; 2 uses
  store ptr %storemerge1979, ptr %22, align 8, !tbaa !184
  %storemerge1977 = extractvalue { ptr, i32 } %.pn1978, 1 ; 2 uses
  store i32 %storemerge1977, ptr %i.bc, align 8, !tbaa !172
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %storemerge1979, i32 %storemerge1977)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exitthread-pre-split

bb.br:                                            ; preds = %bb.g
  %i.ot = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 2 uses
  %i.ou = extractvalue { ptr, i64 } %i.ot, 0
  %i.ov = extractvalue { ptr, i64 } %i.ot, 1
  %i.ow = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !167
  %i.oz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ow, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.oy) #18 ; 2 uses
  %.fca.0.extract1319 = extractvalue { ptr, i32 } %i.oz, 0
  %.fca.1.extract1320 = extractvalue { ptr, i32 } %i.oz, 1
  store ptr %.fca.0.extract1319, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1320, ptr %i.bc, align 8, !tbaa !172
  %i.pa = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.pb = load ptr, ptr %i.ox, align 8, !tbaa !167
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.pa, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.pc) #18 ; 2 uses
  %.fca.0.extract1311 = extractvalue { ptr, i32 } %i.pd, 0
  %.fca.1.extract1312 = extractvalue { ptr, i32 } %i.pd, 1
  %.sroa.02618.0.copyload = load ptr, ptr %22, align 8, !tbaa !184
  %.sroa.22619.0.copyload = load i32, ptr %i.bc, align 8, !tbaa !172
  store ptr %.fca.0.extract1311, ptr %48, align 8, !tbaa !184
  %.sroa.68.0..sroa_idx3026 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.fca.1.extract1312, ptr %.sroa.68.0..sroa_idx3026, align 8, !tbaa !172
  store ptr %i.ou, ptr %49, align 8, !tbaa !464
  %.sroa.41328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %i.ov, ptr %.sroa.41328.0..sroa_idx, align 8, !tbaa !233
  %i.pe = call fastcc { ptr, i32 } @_ZNK12_GLOBAL__N_120SelectionDAGLegalize26ShuffleWithNarrowerEltTypeEN4llvm3EVTES2_RKNS1_5SDLocENS1_7SDValueES6_NS1_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 %i.aw, ptr null, i16 %.sroa.02930.2, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr %.sroa.02618.0.copyload, i32 %.sroa.22619.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %49) ; 2 uses
  %.fca.0.extract1302 = extractvalue { ptr, i32 } %i.pe, 0
  %.fca.1.extract1303 = extractvalue { ptr, i32 } %i.pe, 1
  store ptr %.fca.0.extract1302, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1303, ptr %i.bc, align 8, !tbaa !172
  %i.pf = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.pg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.pf, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.02930.2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #18 ; 2 uses
  %.fca.0.extract1294 = extractvalue { ptr, i32 } %i.pg, 0 ; 2 uses
  %.fca.1.extract1295 = extractvalue { ptr, i32 } %i.pg, 1 ; 2 uses
  store ptr %.fca.0.extract1294, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1295, ptr %i.bc, align 8, !tbaa !172
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %.fca.0.extract1294, i32 %.fca.1.extract1295)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exitthread-pre-split

bb.bs:                                            ; preds = %bb.g, %bb.g
  %i.ph = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !167
  %i.pk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ph, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.pj) #18 ; 2 uses
  %.fca.0.extract1283 = extractvalue { ptr, i32 } %i.pk, 0
  %.fca.1.extract1284 = extractvalue { ptr, i32 } %i.pk, 1
  store ptr %.fca.0.extract1283, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1284, ptr %i.bc, align 8, !tbaa !172
  %i.pl = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.pm = load ptr, ptr %i.pi, align 8, !tbaa !167
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.po = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.pl, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.pn) #18 ; 2 uses
  %.fca.0.extract1275 = extractvalue { ptr, i32 } %i.po, 0
  %.fca.1.extract1276 = extractvalue { ptr, i32 } %i.po, 1
  %i.pp = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.pq = load i32, ptr %i.h, align 8, !tbaa !157
  store ptr %.fca.0.extract1275, ptr %50, align 8, !tbaa !184
  %.sroa.68.0..sroa_idx3028 = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.fca.1.extract1276, ptr %.sroa.68.0..sroa_idx3028, align 8, !tbaa !172
  %i.pr = load ptr, ptr %i.pi, align 8, !tbaa !167
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 80
  %i.pt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.pp, i32 noundef %i.pq, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ps) #18 ; 2 uses
  %.fca.0.extract1267 = extractvalue { ptr, i32 } %i.pt, 0
  %.fca.1.extract1268 = extractvalue { ptr, i32 } %i.pt, 1
  %i.pu = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  store ptr %.fca.0.extract1267, ptr %51, align 8, !tbaa !184
  %.sroa.31.0..sroa_idx2788 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.fca.1.extract1268, ptr %.sroa.31.0..sroa_idx2788, align 8, !tbaa !172
  %i.pv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.pu, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.02930.2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %51) #18 ; 2 uses
  %.fca.0.extract1260 = extractvalue { ptr, i32 } %i.pv, 0
  %.fca.1.extract1261 = extractvalue { ptr, i32 } %i.pv, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %.fca.0.extract1260, i32 %.fca.1.extract1261)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exitthread-pre-split

bb.bt:                                            ; preds = %bb.g
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !167 ; 7 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 160
  %.sroa.02604.0.copyload = load ptr, ptr %i.py, align 8, !tbaa !184 ; 2 uses
  %.sroa.52606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.px, i64 168
  %i.pz = load i64, ptr %.sroa.52606.0..sroa_idx, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.02604.0.copyload, i64 88
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !169 ; 2 uses
  %i.qc = load ptr, ptr %i.f, align 8, !tbaa !159
  %.sroa.0.0.copyload.i.i2114 = load i16, ptr %i.qc, align 8, !tbaa !160
  %i.qd = add i16 %i.aw, -12
  %or.cond.i = icmp ult i16 %i.qd, -10
  %i.qe = add i16 %i.aw, -105
  %or.cond3.i = icmp ult i16 %i.qe, -86
  %or.cond4.i.not3114 = and i1 %or.cond.i, %or.cond3.i
  %i.qf = add i16 %i.aw, -195
  %spec.select.i2115 = icmp ult i16 %i.qf, -32
  %.not3113 = and i1 %spec.select.i2115, %or.cond4.i.not3114 ; 2 uses
  %i.qg = add i32 %i.qb, -18
  %spec.select.i2116 = icmp ult i32 %i.qg, 4
  %i.qh = select i1 %spec.select.i2116, i32 227, i32 228
  %.01960 = select i1 %.not3113, i32 247, i32 %i.qh ; 4 uses
  %i.qi = load ptr, ptr %i.au, align 8, !tbaa !164, !nonnull !132, !align !133
  %i.qj = zext i16 %.sroa.0.0.copyload.i.i2114 to i32 ; 2 uses
  %i.qk = shl nuw nsw i32 %i.qj, 2
  %i.ql = and i32 %i.qk, 28
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 499072
  %i.qn = zext i32 %i.qb to i64
  %i.qo = getelementptr inbounds nuw [132 x i8], ptr %i.qm, i64 %i.qn
  %i.qp = lshr i32 %i.qj, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !172
  %i.qt = shl nuw i32 15, %i.ql
  %i.qu = and i32 %i.qt, %i.qs
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %i.px, i64 12, i1 false), !tbaa.struct !197
  %i.qw = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  %.sroa.0.0.copyload3004 = load ptr, ptr %i.qw, align 8, !tbaa !184
  %.sroa.68.0..sroa_idx3048 = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  %.sroa.68.0.copyload3049 = load i32, ptr %.sroa.68.0..sroa_idx3048, align 8, !tbaa !172
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.qx = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.qy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.qx, i32 noundef %.01960, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.px) #18 ; 2 uses
  %.fca.0.extract1243 = extractvalue { ptr, i32 } %i.qy, 0
  %.fca.1.extract1244 = extractvalue { ptr, i32 } %i.qy, 1
  store ptr %.fca.0.extract1243, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1244, ptr %i.bc, align 8, !tbaa !172
  %i.qz = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ra = load ptr, ptr %i.pw, align 8, !tbaa !167
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.rc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.qz, i32 noundef %.01960, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.rb) #18 ; 2 uses
  %.fca.0.extract1235 = extractvalue { ptr, i32 } %i.rc, 0
  %.fca.1.extract1236 = extractvalue { ptr, i32 } %i.rc, 1
  %.pre3165 = load ptr, ptr %i.pw, align 8, !tbaa !167
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.rd = phi ptr [ %i.px, %bb.bu ], [ %.pre3165, %bb.bv ]
  %.sroa.68.0 = phi i32 [ %.sroa.68.0.copyload3049, %bb.bu ], [ %.fca.1.extract1236, %bb.bv ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload3004, %bb.bu ], [ %.fca.0.extract1235, %bb.bv ]
  %i.re = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 80
  %i.rg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.re, i32 noundef %.01960, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.rf) #18 ; 2 uses
  %.fca.0.extract1227 = extractvalue { ptr, i32 } %i.rg, 0
  %.fca.1.extract1228 = extractvalue { ptr, i32 } %i.rg, 1
  %i.rh = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ri = load ptr, ptr %i.pw, align 8, !tbaa !167
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 120
  %i.rk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.rh, i32 noundef %.01960, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.rj) #18 ; 2 uses
  %.fca.0.extract1219 = extractvalue { ptr, i32 } %i.rk, 0
  %.fca.1.extract1220 = extractvalue { ptr, i32 } %i.rk, 1
  %i.rl = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %53, ptr noundef nonnull align 8 dereferenceable(12) %22, i64 12, i1 false), !tbaa.struct !197
  %i.rm = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %.sroa.0.0, ptr %i.rm, align 8, !tbaa !184
  %.sroa.68.0..sroa_idx3050 = getelementptr inbounds nuw i8, ptr %53, i64 24
  store i32 %.sroa.68.0, ptr %.sroa.68.0..sroa_idx3050, align 8, !tbaa !172
  %i.rn = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %.fca.0.extract1227, ptr %i.rn, align 8, !tbaa !184
  %.sroa.31.0..sroa_idx2800 = getelementptr inbounds nuw i8, ptr %53, i64 40
  store i32 %.fca.1.extract1228, ptr %.sroa.31.0..sroa_idx2800, align 8, !tbaa !172
  %i.ro = getelementptr inbounds nuw i8, ptr %53, i64 48
  store ptr %.fca.0.extract1219, ptr %i.ro, align 8, !tbaa !184
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 56
  store i32 %.fca.1.extract1220, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !172
  %i.rp = getelementptr inbounds nuw i8, ptr %53, i64 64
  store ptr %.sroa.02604.0.copyload, ptr %i.rp, align 8, !tbaa !184
  %.sroa.52606.0..sroa_idx2607 = getelementptr inbounds nuw i8, ptr %53, i64 72
  %.sroa.52606.0.extract.trunc = trunc i64 %i.pz to i32
  store i32 %.sroa.52606.0.extract.trunc, ptr %.sroa.52606.0..sroa_idx2607, align 8, !tbaa !172
  store ptr %53, ptr %52, align 8, !tbaa !236
  %i.rq = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 5, ptr %i.rq, align 8, !tbaa !238
  %.sroa.0.0.copyload.i2118 = load i32, ptr %i.am, align 4, !tbaa !172
  %i.rr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.rl, i32 noundef 221, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.154") align 8 %52, i32 %.sroa.0.0.copyload.i2118) #18 ; 2 uses
  %.fca.0.extract1208 = extractvalue { ptr, i32 } %i.rr, 0
  %.fca.1.extract1209 = extractvalue { ptr, i32 } %i.rr, 1
  store ptr %.fca.0.extract1208, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1209, ptr %i.bc, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  %i.rs = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133 ; 3 uses
  br i1 %.not3113, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.rs, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.02930.2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #18
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !197
  %i.ru = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.rs, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %21, i1 noundef zeroext true) #18 ; 2 uses
  %.fca.0.extract1192 = extractvalue { ptr, i32 } %i.ru, 0
  %.fca.1.extract1193 = extractvalue { ptr, i32 } %i.ru, 1
  store ptr %.fca.0.extract1192, ptr %55, align 8
  %.sroa.21195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %.fca.1.extract1193, ptr %.sroa.21195.0..sroa_idx, align 8
  %i.rv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.rs, i32 noundef 244, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.02930.2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn1973 = phi { ptr, i32 } [ %i.rv, %bb.by ], [ %i.rt, %bb.bx ] ; 2 uses
  %storemerge1974 = extractvalue { ptr, i32 } %.pn1973, 0 ; 2 uses
  store ptr %storemerge1974, ptr %22, align 8, !tbaa !184
  %storemerge = extractvalue { ptr, i32 } %.pn1973, 1 ; 2 uses
  store i32 %storemerge, ptr %i.bc, align 8, !tbaa !172
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %storemerge1974, i32 %storemerge)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exitthread-pre-split

bb.ca:                                            ; preds = %bb.g, %bb.g, %bb.g
  %i.rw = add i16 %i.aw, -2
  %or.cond.i2119 = icmp ult i16 %i.rw, 10
  %i.rx = add i16 %i.aw, -19
  %or.cond3.i2120 = icmp ult i16 %i.rx, 86
  %or.cond4.i2121 = or i1 %or.cond.i2119, %or.cond3.i2120
  %i.ry = add i16 %i.aw, -163
  %spec.select.i2122 = icmp ult i16 %i.ry, 32
  %i.rz = or i1 %spec.select.i2122, %or.cond4.i2121
  br i1 %i.rz, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !167 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 80
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !147
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 88
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !169
  %i.sg = add i32 %i.sf, -18
  %spec.select.i2123 = icmp ult i32 %i.sg, 4
  br i1 %spec.select.i2123, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sh = load ptr, ptr %i.au, align 8, !tbaa !164, !nonnull !132, !align !133 ; 2 uses
  %i.si = load ptr, ptr %i.sb, align 8, !tbaa !147
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !168
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !159
  %i.sn = zext i32 %i.sk to i64
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.sn ; 2 uses
  %.sroa.0.0.copyload.i.i2124 = load i16, ptr %i.so, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i.i2125 = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %.sroa.21.0.copyload.i.i2126 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2125, align 8, !tbaa !162
  %i.sp = load ptr, ptr %i.sh, align 8, !tbaa !124
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 1472
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = call noundef zeroext i1 %i.sr(ptr noundef nonnull align 8 dereferenceable(518435) %i.sh, i16 %.sroa.0.0.copyload.i.i2124, ptr %.sroa.21.0.copyload.i.i2126, i16 %i.aw, ptr null) #18
  %spec.select = select i1 %i.ss, i32 227, i32 228
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %.11962 = phi i32 [ 247, %bb.ca ], [ 227, %bb.cb ], [ %spec.select, %bb.cc ] ; 2 uses
  %i.st = call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.st, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !167 ; 4 uses
  %.sroa.01175.0.copyload = load ptr, ptr %i.sv, align 8, !tbaa !184 ; 2 uses
  %.sroa.51176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.51176.0.copyload = load i32, ptr %.sroa.51176.0..sroa_idx, align 8, !tbaa !172 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  %i.sw = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %.sroa.01172.0.copyload = load ptr, ptr %i.sx, align 8, !tbaa !184
  %.sroa.21173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  %.sroa.21173.0.copyload = load i32, ptr %.sroa.21173.0..sroa_idx, align 8, !tbaa !172
  store i16 %i.aw, ptr %57, align 8, !tbaa !160
  %i.sy = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr null, ptr %i.sy, align 8, !tbaa !361
  call void @_ZN4llvm12SelectionDAG24getStrictFPExtendOrRoundENS_7SDValueES1_RKNS_5SDLocENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.284") align 8 %56, ptr noundef nonnull align 8 dereferenceable(920) %i.sw, ptr %.sroa.01172.0.copyload, i32 %.sroa.21173.0.copyload, ptr %.sroa.01175.0.copyload, i32 %.sroa.51176.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %57) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(32) %56, i64 12, i1 false), !tbaa.struct !197
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  %i.sz = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ta = load ptr, ptr %i.su, align 8, !tbaa !167 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 80
  %.sroa.01165.0.copyload = load ptr, ptr %i.tb, align 8, !tbaa !184
  %.sroa.21166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ta, i64 88
  %.sroa.21166.0.copyload = load i32, ptr %.sroa.21166.0..sroa_idx, align 8, !tbaa !172
  store i16 %i.aw, ptr %59, align 8, !tbaa !160
  %i.tc = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr null, ptr %i.tc, align 8, !tbaa !361
  call void @_ZN4llvm12SelectionDAG24getStrictFPExtendOrRoundENS_7SDValueES1_RKNS_5SDLocENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.284") align 8 %58, ptr noundef nonnull align 8 dereferenceable(920) %i.sz, ptr %.sroa.01165.0.copyload, i32 %.sroa.21166.0.copyload, ptr %.sroa.01175.0.copyload, i32 %.sroa.51176.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %59) #18
  %.sroa.0.0.copyload3015 = load ptr, ptr %58, align 8, !tbaa !184 ; 2 uses
  %.sroa.68.0..sroa_idx3070 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %.sroa.68.0.copyload3071 = load i32, ptr %.sroa.68.0..sroa_idx3070, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #18
  %i.td = load ptr, ptr %22, align 8, !tbaa !147
  %i.te = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  store ptr %i.te, ptr %60, align 8, !tbaa !185
  %i.tf = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %60, i64 12
  store i32 2, ptr %i.tg, align 4, !tbaa !187
  store ptr %i.td, ptr %i.te, align 8
  %.sroa.42580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 24
  store i32 1, ptr %.sroa.42580.0..sroa_idx, align 8
  %.sroa.52582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 32
  store ptr %.sroa.0.0.copyload3015, ptr %.sroa.52582.0..sroa_idx, align 8
  %.sroa.62583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i32 1, ptr %.sroa.62583.0..sroa_idx, align 8
  store i32 2, ptr %i.tf, align 8, !tbaa !186
  %i.th = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ti = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getTokenFactorERKNS_5SDLocERNS_15SmallVectorImplINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.th, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(16) %60) #18 ; 2 uses
  %.fca.0.extract1144 = extractvalue { ptr, i32 } %i.ti, 0
  %.fca.1.extract1145 = extractvalue { ptr, i32 } %i.ti, 1
  %i.tj = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.tk = load ptr, ptr %i.f, align 8, !tbaa !159 ; 2 uses
  %.sroa.0.0.copyload.i2133 = load i16, ptr %i.tk, align 8, !tbaa !160
  %.sroa.21.0..sroa_idx.i2134 = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %.sroa.21.0.copyload.i2135 = load ptr, ptr %.sroa.21.0..sroa_idx.i2134, align 8, !tbaa !162
  %i.tl = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.tj, i16 %.sroa.0.0.copyload.i2133, ptr %.sroa.21.0.copyload.i2135, i16 1, ptr null) #18 ; 2 uses
  %i.tm = extractvalue { ptr, i32 } %i.tl, 0
  %i.tn = extractvalue { ptr, i32 } %i.tl, 1
  %i.to = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.tp = load i32, ptr %i.h, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #18
  store ptr %.fca.0.extract1144, ptr %62, align 8, !tbaa !184
  %.sroa.41149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 %.fca.1.extract1145, ptr %.sroa.41149.0..sroa_idx, align 8, !tbaa !172
  %i.tq = getelementptr inbounds nuw i8, ptr %62, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.tq, ptr noundef nonnull align 8 dereferenceable(12) %22, i64 12, i1 false), !tbaa.struct !197
  %i.tr = getelementptr inbounds nuw i8, ptr %62, i64 32
  store ptr %.sroa.0.0.copyload3015, ptr %i.tr, align 8, !tbaa !184
  %.sroa.68.0..sroa_idx3052 = getelementptr inbounds nuw i8, ptr %62, i64 40
  store i32 %.sroa.68.0.copyload3071, ptr %.sroa.68.0..sroa_idx3052, align 8, !tbaa !172
  %i.ts = getelementptr inbounds nuw i8, ptr %62, i64 48
  %i.tt = load ptr, ptr %i.su, align 8, !tbaa !167
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ts, ptr noundef nonnull align 8 dereferenceable(12) %i.tu, i64 12, i1 false), !tbaa.struct !197
  store ptr %62, ptr %61, align 8, !tbaa !236
  %i.tv = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 4, ptr %i.tv, align 8, !tbaa !238
  %.sroa.0.0.copyload.i2139 = load i32, ptr %i.am, align 4, !tbaa !172
  %i.tw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.to, i32 noundef %i.tp, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr %i.tm, i32 %i.tn, ptr noundef nonnull byval(%"class.llvm::ArrayRef.154") align 8 %61, i32 %.sroa.0.0.copyload.i2139) #18 ; 2 uses
  %.fca.0.extract1127 = extractvalue { ptr, i32 } %i.tw, 0
  %.fca.1.extract1128 = extractvalue { ptr, i32 } %i.tw, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %.fca.0.extract1127, i32 %.fca.1.extract1128)
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  %i.tx = load ptr, ptr %19, align 8, !tbaa !185
  %i.ty = load i32, ptr %i.d, align 8, !tbaa !186
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !147
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.uc, i32 1)
  %i.ud = load ptr, ptr %60, align 8, !tbaa !185  ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.te
  br i1 %i.ue, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @free(ptr noundef %i.ud) #18
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exitthread-pre-split

bb.cg:                                            ; preds = %bb.cd
  %i.uf = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !167
  %i.ui = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.uf, i32 noundef %.11962, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.uh) #18 ; 2 uses
  %.fca.0.extract1113 = extractvalue { ptr, i32 } %i.ui, 0
  %.fca.1.extract1114 = extractvalue { ptr, i32 } %i.ui, 1
  store ptr %.fca.0.extract1113, ptr %22, align 8, !tbaa !184
  store i32 %.fca.1.extract1114, ptr %i.bc, align 8, !tbaa !172
  %i.uj = load ptr, ptr %i.ao, align 8, !tbaa !158, !nonnull !132, !align !133
  %i.uk = load ptr, ptr %i.ug, align 8, !tbaa !167
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 40
  %i.um = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.uj, i32 noundef %.11962, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.aw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ul) #18 ; 2 uses
end_hunk_1
