Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/R600ISelLowering?download=true
inline.NumInlined: 2776
inline.NumDeleted: 1019
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK4llvm18R600TargetLowering15OptimizeSwizzleENS_7SDValueEPS1_RNS_12SelectionDAGERKNS_5SDLocE:bb.a
  %i.up = lshr i32 %i.un, %i.uo
  %i.uq = trunc i32 %i.up to i1
  br i1 %i.uq, label %.lr.ph.i.i.i.i72.2, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2.thread, !prof !608

.lr.ph.i.i.i.i72.2:                               ; preds = %bb.bb, %bb.bc
  %i.ur = phi i64 [ %i.uw, %bb.bc ], [ %i.uk, %bb.bb ] ; 3 uses
  %.020.i.i.i.i73.2 = phi i32 [ %.0.i.i.i.i74.2, %bb.bc ], [ %.019.i.i.i.i68.2, %bb.bb ]
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !141, !noalias !612
  %i.uu = icmp eq i32 %i.ut, %i.ug
  br i1 %i.uu, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2, label %bb.bc, !prof !542

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i72.2
  %i.uv = add nuw i32 %.020.i.i.i.i73.2, 1
  %.0.i.i.i.i74.2 = and i32 %i.uv, %i.ui          ; 3 uses
  %i.uw = zext i32 %.0.i.i.i.i74.2 to i64         ; 2 uses
  %i.ux = lshr i64 %i.uw, 5
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !141, !noalias !612
  %i.va = and i32 %.0.i.i.i.i74.2, 31
  %i.vb = lshr i32 %i.uz, %i.va
  %i.vc = trunc i32 %i.vb to i1
  br i1 %i.vc, label %.lr.ph.i.i.i.i72.2, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2.thread, !prof !609

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2: ; preds = %.lr.ph.i.i.i.i72.2
  %.pre139 = zext i32 %i.tv to i64
  %i.vd = icmp samesign eq i64 %i.ur, %.pre139
  br i1 %i.vd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2.thread, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2
  %.sink15.i.i70.2 = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.ur
  %i.ve = getelementptr inbounds nuw i8, ptr %.sink15.i.i70.2, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !610
  %i.vg = zext i32 %i.vf to i64
  %i.vh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.vg, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract.2 = extractvalue { ptr, i32 } %i.vh, 0
  %.fca.1.extract.2 = extractvalue { ptr, i32 } %i.vh, 1
  store ptr %.fca.0.extract.2, ptr %i.ny, align 8, !tbaa !461
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.fca.1.extract.2, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !141
  %.pre124 = load ptr, ptr %24, align 8, !tbaa !583, !noalias !598
  %.pre125 = load ptr, ptr %i.dd, align 8, !tbaa !593, !noalias !598
  %.pre126 = load i32, ptr %i.de, align 4, !tbaa !594, !noalias !598
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2.thread

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2.thread: ; preds = %bb.bc, %bb.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.1.thread, %bb.bd, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2
  %i.vi = phi i32 [ %.pre126, %bb.bd ], [ %i.tv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2 ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.1.thread ], [ %i.tv, %bb.bb ], [ %i.tv, %bb.bc ] ; 6 uses
  %i.vj = phi ptr [ %.pre125, %bb.bd ], [ %i.tw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2 ], [ %i.tw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.1.thread ], [ %i.tw, %bb.bb ], [ %i.tw, %bb.bc ] ; 2 uses
  %i.vk = phi ptr [ %.pre124, %bb.bd ], [ %i.tx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2 ], [ %i.tx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.1.thread ], [ %i.tx, %bb.bb ], [ %i.tx, %bb.bc ] ; 2 uses
  %i.vl = load ptr, ptr %i.pm, align 8, !tbaa !467
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 88
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !478 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 24 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 32
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !331
  %i.vr = icmp ult i32 %i.vq, 65
  %i.vs = load ptr, ptr %i.vo, align 8
  %spec.select.i.i.i.i66.3 = select i1 %i.vr, ptr %i.vo, ptr %i.vs
  %.0.i.i.i.i67.3 = load i64, ptr %spec.select.i.i.i.i66.3, align 8, !tbaa !147
  %i.vt = trunc i64 %.0.i.i.i.i67.3 to i32        ; 2 uses
  %i.vu = icmp eq i32 %i.vi, 0
  br i1 %i.vu, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.2.thread
  %i.vv = add i32 %i.vi, -1                       ; 2 uses
  %i.vw = mul i32 %i.vt, 37
  %.019.i.i.i.i68.3 = and i32 %i.vv, %i.vw        ; 3 uses
  %i.vx = zext i32 %.019.i.i.i.i68.3 to i64       ; 2 uses
  %i.vy = lshr i64 %i.vx, 5
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vy
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !141, !noalias !612
  %i.wb = and i32 %.019.i.i.i.i68.3, 31
  %i.wc = lshr i32 %i.wa, %i.wb
  %i.wd = trunc i32 %i.wc to i1
  br i1 %i.wd, label %.lr.ph.i.i.i.i72.3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3.thread.thread174, !prof !608

.lr.ph.i.i.i.i72.3:                               ; preds = %bb.be, %bb.bf
  %i.we = phi i64 [ %i.wj, %bb.bf ], [ %i.vx, %bb.be ] ; 3 uses
  %.020.i.i.i.i73.3 = phi i32 [ %.0.i.i.i.i74.3, %bb.bf ], [ %.019.i.i.i.i68.3, %bb.be ]
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !141, !noalias !612
  %i.wh = icmp eq i32 %i.wg, %i.vt
  br i1 %i.wh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3, label %bb.bf, !prof !542

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i72.3
  %i.wi = add nuw i32 %.020.i.i.i.i73.3, 1
  %.0.i.i.i.i74.3 = and i32 %i.wi, %i.vv          ; 3 uses
  %i.wj = zext i32 %.0.i.i.i.i74.3 to i64         ; 2 uses
  %i.wk = lshr i64 %i.wj, 5
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !141, !noalias !612
  %i.wn = and i32 %.0.i.i.i.i74.3, 31
  %i.wo = lshr i32 %i.wm, %i.wn
  %i.wp = trunc i32 %i.wo to i1
  br i1 %i.wp, label %.lr.ph.i.i.i.i72.3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3.thread, !prof !609

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3: ; preds = %.lr.ph.i.i.i.i72.3
  %.pre141 = zext i32 %i.vi to i64
  %i.wq = icmp samesign eq i64 %i.we, %.pre141
  br i1 %i.wq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3.thread, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3
  %.sink15.i.i70.3 = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.we
  %i.wr = getelementptr inbounds nuw i8, ptr %.sink15.i.i70.3, i64 4
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !610
  %i.wt = zext i32 %i.ws to i64
  %i.wu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.wt, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract.3 = extractvalue { ptr, i32 } %i.wu, 0
  %.fca.1.extract.3 = extractvalue { ptr, i32 } %i.wu, 1
  store ptr %.fca.0.extract.3, ptr %i.pm, align 8, !tbaa !461
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %.fca.1.extract.3, ptr %.sroa.4.0..sroa_idx.3, align 8, !tbaa !141
  %.pre127 = load i32, ptr %i.de, align 4, !tbaa !594
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3.thread

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3.thread: ; preds = %bb.bf, %bb.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3
  %i.wv = phi i32 [ %.pre127, %bb.bg ], [ %i.vi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3 ], [ %i.vi, %bb.bf ] ; 2 uses
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit75.3.thread.thread174
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm18R600TargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518464) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.366", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 17 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %11 = alloca %"class.llvm::SmallVector.370", align 8 ; 11 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %17 = alloca [8 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %18 = alloca %"class.llvm::ArrayRef.366", align 8 ; 3 uses
  %19 = alloca [19 x %"class.llvm::SDValue"], align 16 ; 23 uses
  %20 = alloca %"class.llvm::ArrayRef.366", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !613, !nonnull !144, !align !578 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !326
  store i64 %i.d, ptr %5, align 8, !tbaa !326
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !457
  store i32 %i.g, ptr %i.e, align 8, !tbaa !458
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !456
  switch i32 %i.i, label %.critedge [
    i32 244, label %bb.b
    i32 240, label %bb.d
    i32 163, label %bb.k
    i32 164, label %bb.ab
    i32 221, label %bb.ag
    i32 684, label %bb.ao
    i32 683, label %bb.aq
    i32 316, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !460  ; 2 uses
  %.sroa.0426.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !461 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0426.0.copyload, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !456
  %i.n = icmp eq i32 %i.m, 235
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0426.0.copyload, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !462
  %i.q = zext i32 %.sroa.7.0.copyload to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.r, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !465
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 15
  %i.s = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %.not4.i, label %.critedge241, label %.critedge

.critedge241:                                     ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !462  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.u, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !465
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0426.0.copyload, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !460
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 235, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.w) #19 ; 2 uses
  %.fca.0.extract149 = extractvalue { ptr, i32 } %i.x, 0
  %.fca.1.extract150 = extractvalue { ptr, i32 } %i.x, 1
  %.sroa.33.8.insert.ext464 = zext i32 %.fca.1.extract150 to i64
  br label %.critedge9

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !460
  %.sroa.0418.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !461 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0418.0.copyload, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !456
  %.not238 = icmp eq i32 %i.ab, 260
  br i1 %.not238, label %bb.e, label %.critedge9

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0418.0.copyload, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !460
  %.sroa.0409.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !461 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0409.0.copyload, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !456
  %.not239 = icmp eq i32 %i.af, 221
  br i1 %.not239, label %bb.f, label %.critedge9

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0409.0.copyload, i64 40 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !460 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !467
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !468
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !462
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %.sroa.0.0.copyload.i.i256 = load i16, ptr %i.ao, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i257 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.0.copyload.i.i258 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i257, align 8, !tbaa !465
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i256, 14
  %i.ap = icmp ne ptr %.sroa.21.0.copyload.i.i258, null
  %i.aq = select i1 %.not.i, i1 true, i1 %i.ap
  br i1 %i.aq, label %.critedge9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !467 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.au = load i32, ptr %i.at, align 8, !tbaa !468 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !462
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i261 = load i16, ptr %i.ay, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i262 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.21.0.copyload.i.i263 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i262, align 8, !tbaa !465
  %.not.i266 = icmp ne i16 %.sroa.0.0.copyload.i.i261, 14
  %i.az = icmp ne ptr %.sroa.21.0.copyload.i.i263, null
  %i.ba = select i1 %.not.i266, i1 true, i1 %i.az
  br i1 %i.ba, label %.critedge9, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = tail call noundef zeroext i1 @_ZNK4llvm18R600TargetLowering13isHWTrueValueENS_7SDValueE(ptr nonnull align 8 poison, ptr nonnull %i.as, i32 %i.au)
  br i1 %i.bb, label %bb.i, label %.critedge9

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !460 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %.sroa.0135.0.copyload = load ptr, ptr %i.bd, align 8, !tbaa !461
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %.sroa.2136.0.copyload = load i32, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !141
  %i.be = tail call noundef zeroext i1 @_ZNK4llvm18R600TargetLowering14isHWFalseValueENS_7SDValueE(ptr nonnull align 8 poison, ptr %.sroa.0135.0.copyload, i32 %.sroa.2136.0.copyload)
  br i1 %i.be, label %bb.j, label %.critedge9

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !462 ; 2 uses
  %.sroa.0.0.copyload.i267 = load i16, ptr %i.bg, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.21.0.copyload.i269 = load ptr, ptr %.sroa.21.0..sroa_idx.i268, align 8, !tbaa !465
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !460 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !469
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !469
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract129 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract130 = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract129, ptr %8, align 8
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract130, ptr %.sroa.2132.0..sroa_idx, align 8
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract125 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract126 = extractvalue { ptr, i32 } %i.bk, 1
  store ptr %.fca.0.extract125, ptr %9, align 8
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract126, ptr %.sroa.2128.0..sroa_idx, align 8
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !460
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 221, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i267, ptr %.sroa.21.0.copyload.i269, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bm) #19 ; 2 uses
  %.fca.0.extract121 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract122 = extractvalue { ptr, i32 } %i.bn, 1
  %.sroa.33.8.insert.ext460 = zext i32 %.fca.1.extract122 to i64
  br label %.critedge9

bb.k:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !460 ; 6 uses
  %.sroa.0386.0.copyload = load ptr, ptr %i.bp, align 8, !tbaa !461 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %.sroa.0366.0.copyload = load ptr, ptr %i.bq, align 8, !tbaa !461 ; 6 uses
  %.sroa.11373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.11373.0.copyload = load i32, ptr %.sroa.11373.0..sroa_idx, align 8, !tbaa !141 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %.sroa.0363.0.copyload = load ptr, ptr %i.br, align 8, !tbaa !461 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0366.0.copyload, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !456
  %i.bu = add i32 %i.bt, -53
  %spec.select.i.i = icmp ult i32 %i.bu, 2
  br i1 %spec.select.i.i, label %21, label %bb.l

21:                                               ; preds = %bb.k
  %.sroa.33.8.insert.ext495 = zext i32 %.sroa.9.0.copyload to i64
  br label %.critedge9

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0386.0.copyload, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !462
  %i.bx = zext i32 %.sroa.9.0.copyload to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.sroa.0.0.copyload.i.i272 = load i16, ptr %i.by, align 8, !tbaa !463 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i273 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.21.0.copyload.i.i274 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i273, align 8, !tbaa !465 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i272, ptr %10, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i274, ptr %i.bz, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i272, 1
  %i.ca = icmp eq ptr %.sroa.21.0.copyload.i.i274, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.ca, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i277 = icmp eq i16 %.sroa.0.0.copyload.i.i272, 0
  br i1 %.not.i.i277, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cc = zext i16 %.sroa.0.0.copyload.i.i272 to i64 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !134
  %.not.i278.not = icmp eq ptr %i.ce, null
  br i1 %.not.i278.not, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.l
  %.pre-phi.i = phi i64 [ %i.cc, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.l ]
  %i.cf = getelementptr inbounds nuw [537 x i8], ptr %0, i64 %.pre-phi.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6346
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !138
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.n, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0363.0.copyload, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !456
  switch i32 %i.ck, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread [
    i32 37, label %bb.o
    i32 12, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0363.0.copyload, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !478 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !331
  %i.cq = icmp ult i32 %i.cp, 65
  %i.cr = load ptr, ptr %i.cn, align 8
  %spec.select.i.i.i.i = select i1 %i.cq, ptr %i.cn, ptr %i.cr
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cs, ptr %11, align 8, !tbaa !501
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !502
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 8, ptr %i.cu, align 4, !tbaa !503
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0386.0.copyload, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !456 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 162
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0386.0.copyload, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !460 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0386.0.copyload, i64 64
  %i.db = load i16, ptr %i.da, align 8, !tbaa !500
  %i.dc = zext i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.cz, i64 %i.dc
  call void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPNS_5SDUseEvEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.cz, ptr noundef %i.dd)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.de = add i32 %i.cw, -53
  %spec.select.i.i279 = icmp ult i32 %i.de, 2
  br i1 %spec.select.i.i279, label %bb.r, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.df = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0366.0.copyload, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !462
  %i.dj = zext i32 %.sroa.11373.0.copyload to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  %.sroa.0.0.copyload.i.i280 = load i16, ptr %i.dk, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i281 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.21.0.copyload.i.i282 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i281, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i280, ptr %.sroa.21.0.copyload.i.i282) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.dl, 1
  call void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.dg, ptr %.fca.0.extract107, i32 %.fca.1.extract108)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.dm = and i64 %.0.i.i.i.i, 4294967295         ; 2 uses
  %i.dn = load i32, ptr %i.ct, align 8, !tbaa !502
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = icmp samesign ult i64 %i.dm, %i.do
  %.pre437 = load ptr, ptr %11, align 8, !tbaa !501 ; 4 uses
  br i1 %i.dp, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.dq = load ptr, ptr %.pre437, align 8, !tbaa !467
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre437, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !468
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !462
  %i.dv = zext i32 %i.ds to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i.i285 = load i16, ptr %i.dw, align 8, !tbaa !463 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i286 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.21.0.copyload.i.i287 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i286, align 8, !tbaa !465 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i285, ptr %12, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i287, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0366.0.copyload, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !462
  %i.ea = zext i32 %.sroa.11373.0.copyload to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i290 = load i16, ptr %i.eb, align 8, !tbaa !463 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i291 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.21.0.copyload.i.i292 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i291, align 8, !tbaa !465 ; 2 uses
  %.not.i295 = icmp ne i16 %.sroa.0.0.copyload.i.i290, %.sroa.0.0.copyload.i.i285
  %i.ec = icmp ne ptr %.sroa.21.0.copyload.i.i292, %.sroa.21.0.copyload.i.i287
  %i.ed = select i1 %.not.i295, i1 true, i1 %i.ec
  br i1 %i.ed, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ee = call noundef zeroext i1 @_ZNK4llvm3EVT6bitsGTES0_(ptr noundef nonnull align 8 dereferenceable(16) %12, i16 %.sroa.0.0.copyload.i.i290, ptr %.sroa.21.0.copyload.i.i292)
  %.sroa.097.0.copyload = load i16, ptr %12, align 8, !tbaa !463 ; 2 uses
  %.sroa.299.0.copyload = load ptr, ptr %i.dx, align 8, !tbaa !465 ; 2 uses
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.sroa.0366.0.copyload, ptr %13, align 8, !tbaa !461
  %.sroa.11373.0..sroa_idx374 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.11373.0.copyload, ptr %.sroa.11373.0..sroa_idx374, align 8, !tbaa !141
  %.sroa.15.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx382, align 4
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.097.0.copyload, ptr %.sroa.299.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #19
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store ptr %.sroa.0366.0.copyload, ptr %14, align 8, !tbaa !461
  %.sroa.11373.0..sroa_idx376 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.11373.0.copyload, ptr %.sroa.11373.0..sroa_idx376, align 8, !tbaa !141
  %.sroa.15.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx384, align 4
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.097.0.copyload, ptr %.sroa.299.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.v ], [ %i.eg, %bb.w ] ; 2 uses
  %.sroa.5103.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0102.0 = extractvalue { ptr, i32 } %.pn, 0
  %.pre436 = load ptr, ptr %11, align 8, !tbaa !501
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  %i.eh = phi ptr [ %.pre436, %bb.x ], [ %.pre437, %bb.t ] ; 2 uses
  %.sroa.11373.0 = phi i32 [ %.sroa.5103.0, %bb.x ], [ %.sroa.11373.0.copyload, %bb.t ]
  %.sroa.0366.0 = phi ptr [ %.sroa.0102.0, %bb.x ], [ %.sroa.0366.0.copyload, %bb.t ]
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.dm ; 2 uses
  store ptr %.sroa.0366.0, ptr %i.ei, align 8, !tbaa !461
  %.sroa.11373.0..sroa_idx378 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %.sroa.11373.0, ptr %.sroa.11373.0..sroa_idx378, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %.pre438 = load i32, ptr %i.ct, align 8, !tbaa !502
  %.pre440 = zext i32 %.pre438 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %bb.y
  %.pre-phi = phi i64 [ %.pre440, %bb.y ], [ %i.do, %bb.s ]
  %i.ej = phi ptr [ %i.eh, %bb.y ], [ %.pre437, %bb.s ]
  %.sroa.083.0.copyload = load i16, ptr %10, align 8, !tbaa !463
  %.sroa.285.0.copyload = load ptr, ptr %i.bz, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ej, ptr %3, align 8, !tbaa !510
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.pre-phi, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !511
  %i.ek = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.083.0.copyload, ptr %.sroa.285.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.366") align 8 %3) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.fca.0.extract79 = extractvalue { ptr, i32 } %i.ek, 0 ; 2 uses
  %.fca.1.extract80 = extractvalue { ptr, i32 } %i.ek, 1 ; 2 uses
  %.pre439 = load ptr, ptr %11, align 8, !tbaa !501 ; 2 uses
  %i.el = icmp eq ptr %.pre439, %i.cs
  br i1 %i.el, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %.pre439) #19
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %bb.q, %bb.z, %bb.aa
  %.sroa.0429.2448 = phi ptr [ %.fca.0.extract79, %bb.aa ], [ %.fca.0.extract79, %bb.z ], [ null, %bb.q ]
  %.sroa.33.2447 = phi i32 [ %.fca.1.extract80, %bb.aa ], [ %.fca.1.extract80, %bb.z ], [ 0, %bb.q ]
  %.sroa.33.2515 = zext i32 %.sroa.33.2447 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread: ; preds = %bb.n, %bb.m, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.sroa.33.3 = phi i64 [ %.sroa.33.2515, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ 0, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ 0, %bb.n ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 0, %bb.m ]
  %.sroa.0429.3 = phi ptr [ %.sroa.0429.2448, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ null, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ null, %bb.n ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.critedge9

bb.ab:                                            ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !460 ; 3 uses
  %.sroa.0352.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !461 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !141
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0352.0.copyload, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !456 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 162
  br i1 %i.eq, label %bb.ac, label %.critedge243

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !467 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !456
  switch i32 %i.eu, label %.critedge243.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

.critedge243.thread:                              ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  br label %.critedge11

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.ac, %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !478 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !331
  %i.fa = icmp ult i32 %i.ez, 65
  %i.fb = load ptr, ptr %i.ex, align 8
  %spec.select.i.i.i = select i1 %i.fa, ptr %i.ex, ptr %i.fb
  %.0.i.i.i301 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !147
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0352.0.copyload, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !460
  %i.fe = and i64 %.0.i.i.i301, 4294967295
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %.sroa.0429.0.copyload = load ptr, ptr %i.ff, align 8, !tbaa !461
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8
  br label %.critedge9

.critedge243:                                     ; preds = %bb.ab
  %i.fg = icmp eq i32 %i.ep, 248
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  br i1 %i.fg, label %bb.ad, label %.critedge11

bb.ad:                                            ; preds = %.critedge243
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0352.0.copyload, i64 40 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !460 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !467 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !456
  %i.fm = icmp eq i32 %i.fl, 162
  br i1 %i.fm, label %bb.ae, label %.critedge11

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !468
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !462
  %i.fr = zext i32 %i.fo to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %.sroa.0.0.copyload.i.i302 = load i16, ptr %i.fs, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i303 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.21.0.copyload.i.i304 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i303, align 8, !tbaa !465
  store i16 %.sroa.0.0.copyload.i.i302, ptr %15, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.21.0.copyload.i.i304, ptr %i.ft, align 8
  %i.fu = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0352.0.copyload, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !462
  %i.fx = zext i32 %.sroa.11.0.copyload to i64
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.fx ; 2 uses
  %.sroa.0.0.copyload.i.i307 = load i16, ptr %i.fy, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i308 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.21.0.copyload.i.i309 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i308, align 8, !tbaa !465
  store i16 %.sroa.0.0.copyload.i.i307, ptr %16, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.21.0.copyload.i.i309, ptr %i.fz, align 8
  %i.ga = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
  %i.gb = icmp eq i32 %i.fu, %i.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br i1 %i.gb, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.gc = load ptr, ptr %i.em, align 8, !tbaa !460
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !467 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !456
  switch i32 %i.gg, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit313
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit313
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit313: ; preds = %bb.af, %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !478 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !331
  %i.gm = icmp ult i32 %i.gl, 65
  %i.gn = load ptr, ptr %i.gj, align 8
  %spec.select.i.i.i314 = select i1 %i.gm, ptr %i.gj, ptr %i.gn
  %.0.i.i.i315 = load i64, ptr %spec.select.i.i.i314, align 8, !tbaa !147
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !462
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !512
  %i.gs = zext i16 %i.gr to i32
  %i.gt = load ptr, ptr %i.fh, align 8, !tbaa !460
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !467
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !460
  %i.gx = and i64 %.0.i.i.i315, 4294967295
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.gp, i32 %i.gs, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gy) #19 ; 2 uses
  %.fca.0.extract67 = extractvalue { ptr, i32 } %i.gz, 0
  %.fca.1.extract68 = extractvalue { ptr, i32 } %i.gz, 1
  %.sroa.33.8.insert.ext452 = zext i32 %.fca.1.extract68 to i64
  br label %.critedge9

.critedge11:                                      ; preds = %.critedge243.thread, %.critedge243, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.critedge

bb.ag:                                            ; preds = %bb.a
  %i.ha = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #19 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.ha, 0 ; 2 uses
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.ha, 1
  %.sroa.33.8.insert.ext444 = zext i32 %.fca.1.extract64 to i64
  %.not434 = icmp eq ptr %.fca.0.extract63, null
  br i1 %.not434, label %bb.ah, label %.critedge9

bb.ah:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !460 ; 6 uses
  %.sroa.0340.0.copyload = load ptr, ptr %i.hc, align 8, !tbaa !461 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0340.0.copyload, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !456
  %.not = icmp eq i32 %i.he, 221
  br i1 %.not, label %bb.ai, label %.critedge9

bb.ai:                                            ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %.sroa.0336.0.copyload = load ptr, ptr %i.hf, align 8, !tbaa !461
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 160
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !467
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !497
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0340.0.copyload, i64 40 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !460 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !467
  %.not232 = icmp eq ptr %i.hn, %.sroa.0336.0.copyload
  br i1 %.not232, label %bb.aj, label %.critedge9

bb.aj:                                            ; preds = %bb.ai
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 120
  %.sroa.0333.0.copyload = load ptr, ptr %i.ho, align 8, !tbaa !461 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %.sroa.0338.0.copyload = load ptr, ptr %i.hp, align 8, !tbaa !461
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 120
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !467
  %.not233 = icmp eq ptr %i.hr, %.sroa.0333.0.copyload
  %.not234 = icmp eq ptr %.sroa.0338.0.copyload, %.sroa.0333.0.copyload
  %or.cond = select i1 %.not233, i1 %.not234, i1 false
  br i1 %or.cond, label %bb.ak, label %.critedge9

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.hj, label %.critedge9 [
    i32 22, label %bb.al
    i32 17, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  br label %.critedge9

bb.am:                                            ; preds = %bb.ak
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 160
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !467
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !497
  %i.hw = load ptr, ptr %i.hl, align 8, !tbaa !467
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !468
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !462
  %i.ib = zext i32 %i.hy to i64
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.ib ; 2 uses
  %.sroa.0.0.copyload.i.i318 = load i16, ptr %i.ic, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i319 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.sroa.21.0.copyload.i.i320 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i319, align 8, !tbaa !465
  %i.id = tail call noundef i32 @_ZN4llvm3ISD15getSetCCInverseENS0_8CondCodeENS_3EVTE(i32 noundef %i.hv, i16 %.sroa.0.0.copyload.i.i318, ptr %.sroa.21.0.copyload.i.i320) #19 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !491
  %i.ig = icmp slt i32 %i.if, 2
  %.pre = load ptr, ptr %i.hk, align 8, !tbaa !460 ; 6 uses
  %.sroa.054.0.copyload.pre = load ptr, ptr %.pre, align 8, !tbaa !461 ; 2 uses
  %.sroa.255.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.255.0.copyload.pre = load i32, ptr %.sroa.255.0..sroa_idx.phi.trans.insert, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ig, label %.critedge249, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.pre, i64 48
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !462
  %i.ij = zext i32 %.sroa.255.0.copyload.pre to i64
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.ij
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ik, align 8, !tbaa !463
  %i.il = zext i16 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.im = shl nuw nsw i32 %i.il, 2
  %i.in = and i32 %i.im, 28
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 499072
  %i.ip = zext i32 %i.id to i64
  %i.iq = getelementptr inbounds nuw [132 x i8], ptr %i.io, i64 %i.ip
  %i.ir = lshr i32 %i.il, 3
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !141
  %i.iv = shl nuw i32 15, %i.in
  %i.iw = and i32 %i.iv, %i.iu
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.critedge249, label %.critedge9

.critedge249:                                     ; preds = %bb.am, %bb.an
  %i.iy = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.sroa.051.0.copyload = load ptr, ptr %i.iy, align 8, !tbaa !461
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.sroa.252.0.copyload = load i32, ptr %.sroa.252.0..sroa_idx, align 8, !tbaa !141
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %i.ja = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %i.jb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getSelectCCERKNS_5SDLocENS_7SDValueES4_S4_S4_NS_3ISD8CondCodeENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.sroa.054.0.copyload.pre, i32 %.sroa.255.0.copyload.pre, ptr %.sroa.051.0.copyload, i32 %.sroa.252.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.iz, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ja, i32 noundef %i.id, i32 0) ; 2 uses
  %.fca.0.extract47 = extractvalue { ptr, i32 } %i.jb, 0
  %.fca.1.extract48 = extractvalue { ptr, i32 } %i.jb, 1
  %.sroa.33.8.insert.ext448 = zext i32 %.fca.1.extract48 to i64
  br label %.critedge9

bb.ao:                                            ; preds = %bb.a
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !460 ; 9 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %.sroa.0330.0.copyload = load ptr, ptr %i.je, align 8, !tbaa !461 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0330.0.copyload, i64 24
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !456
  %.not.not231 = icmp eq i32 %i.jg, 162
  br i1 %.not.not231, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %i.jd, i64 12, i1 false), !tbaa.struct !469
  %i.jh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.jj, ptr noundef nonnull align 8 dereferenceable(12) %i.jk, i64 12, i1 false), !tbaa.struct !469
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.jl, ptr noundef nonnull align 8 dereferenceable(12) %i.jm, i64 12, i1 false), !tbaa.struct !469
  %i.jn = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.jn, ptr noundef nonnull align 8 dereferenceable(12) %i.jo, i64 12, i1 false), !tbaa.struct !469
  %i.jp = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.jp, ptr noundef nonnull align 8 dereferenceable(12) %i.jq, i64 12, i1 false), !tbaa.struct !469
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.jr, ptr noundef nonnull align 8 dereferenceable(12) %i.js, i64 12, i1 false), !tbaa.struct !469
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jd, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.jt, ptr noundef nonnull align 8 dereferenceable(12) %i.ju, i64 12, i1 false), !tbaa.struct !469
  %.sroa.242.0.copyload = load i32, ptr %.sroa.5331.0..sroa_idx, align 8, !tbaa !141
  %i.jv = call { ptr, i32 } @_ZNK4llvm18R600TargetLowering15OptimizeSwizzleENS_7SDValueEPS1_RNS_12SelectionDAGERKNS_5SDLocE(ptr nonnull align 8 poison, ptr nonnull %.sroa.0330.0.copyload, i32 %.sroa.242.0.copyload, ptr noundef nonnull %i.jn, ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.jv, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.jv, 1
  store ptr %.fca.0.extract37, ptr %i.jh, align 16, !tbaa !461
  store i32 %.fca.1.extract38, ptr %i.ji, align 8, !tbaa !141
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !462
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !512
  %i.ka = zext i16 %i.jz to i32
  store ptr %17, ptr %18, align 8, !tbaa !481
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.kb, align 8, !tbaa !484
  %i.kc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 684, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.jx, i32 %i.ka, ptr noundef nonnull byval(%"class.llvm::ArrayRef.366") align 8 %18) #19 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.kc, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.kc, 1
  %.sroa.33.8.insert.ext440 = zext i32 %.fca.1.extract32 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %.critedge9

bb.aq:                                            ; preds = %bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !460 ; 20 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 2 uses
  %.sroa.0328.0.copyload = load ptr, ptr %i.kf, align 8, !tbaa !461 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0328.0.copyload, i64 24
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !456
  %.not.not = icmp eq i32 %i.kh, 162
  br i1 %.not.not, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(12) %i.ke, i64 12, i1 false), !tbaa.struct !469
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ki, ptr noundef nonnull align 8 dereferenceable(12) %i.kf, i64 12, i1 false), !tbaa.struct !469
  %i.kj = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kj, ptr noundef nonnull align 8 dereferenceable(12) %i.kk, i64 12, i1 false), !tbaa.struct !469
  %i.kl = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kl, ptr noundef nonnull align 8 dereferenceable(12) %i.km, i64 12, i1 false), !tbaa.struct !469
  %i.kn = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kn, ptr noundef nonnull align 8 dereferenceable(12) %i.ko, i64 12, i1 false), !tbaa.struct !469
  %i.kp = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ke, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kp, ptr noundef nonnull align 8 dereferenceable(12) %i.kq, i64 12, i1 false), !tbaa.struct !469
  %i.kr = getelementptr inbounds nuw i8, ptr %19, i64 96
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kr, ptr noundef nonnull align 8 dereferenceable(12) %i.ks, i64 12, i1 false), !tbaa.struct !469
  %i.kt = getelementptr inbounds nuw i8, ptr %19, i64 112
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kt, ptr noundef nonnull align 8 dereferenceable(12) %i.ku, i64 12, i1 false), !tbaa.struct !469
  %i.kv = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ke, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kv, ptr noundef nonnull align 8 dereferenceable(12) %i.kw, i64 12, i1 false), !tbaa.struct !469
  %i.kx = getelementptr inbounds nuw i8, ptr %19, i64 144
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ke, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kx, ptr noundef nonnull align 8 dereferenceable(12) %i.ky, i64 12, i1 false), !tbaa.struct !469
  %i.kz = getelementptr inbounds nuw i8, ptr %19, i64 160
  %i.la = getelementptr inbounds nuw i8, ptr %i.ke, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.kz, ptr noundef nonnull align 8 dereferenceable(12) %i.la, i64 12, i1 false), !tbaa.struct !469
  %i.lb = getelementptr inbounds nuw i8, ptr %19, i64 176
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ke, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lb, ptr noundef nonnull align 8 dereferenceable(12) %i.lc, i64 12, i1 false), !tbaa.struct !469
  %i.ld = getelementptr inbounds nuw i8, ptr %19, i64 192
  %i.le = getelementptr inbounds nuw i8, ptr %i.ke, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ld, ptr noundef nonnull align 8 dereferenceable(12) %i.le, i64 12, i1 false), !tbaa.struct !469
  %i.lf = getelementptr inbounds nuw i8, ptr %19, i64 208
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ke, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lf, ptr noundef nonnull align 8 dereferenceable(12) %i.lg, i64 12, i1 false), !tbaa.struct !469
  %i.lh = getelementptr inbounds nuw i8, ptr %19, i64 224
  %i.li = getelementptr inbounds nuw i8, ptr %i.ke, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lh, ptr noundef nonnull align 8 dereferenceable(12) %i.li, i64 12, i1 false), !tbaa.struct !469
  %i.lj = getelementptr inbounds nuw i8, ptr %19, i64 240
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ke, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lj, ptr noundef nonnull align 8 dereferenceable(12) %i.lk, i64 12, i1 false), !tbaa.struct !469
  %i.ll = getelementptr inbounds nuw i8, ptr %19, i64 256
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ke, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ll, ptr noundef nonnull align 8 dereferenceable(12) %i.lm, i64 12, i1 false), !tbaa.struct !469
  %i.ln = getelementptr inbounds nuw i8, ptr %19, i64 272
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ke, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ln, ptr noundef nonnull align 8 dereferenceable(12) %i.lo, i64 12, i1 false), !tbaa.struct !469
  %i.lp = getelementptr inbounds nuw i8, ptr %19, i64 288
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ke, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lp, ptr noundef nonnull align 8 dereferenceable(12) %i.lq, i64 12, i1 false), !tbaa.struct !469
  %.sroa.229.0.copyload = load i32, ptr %.sroa.5329.0..sroa_idx, align 8, !tbaa !141
  %i.lr = call { ptr, i32 } @_ZNK4llvm18R600TargetLowering15OptimizeSwizzleENS_7SDValueEPS1_RNS_12SelectionDAGERKNS_5SDLocE(ptr nonnull align 8 poison, ptr nonnull %.sroa.0328.0.copyload, i32 %.sroa.229.0.copyload, ptr noundef nonnull %i.kj, ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.lr, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.lr, 1
  store ptr %.fca.0.extract24, ptr %i.ki, align 16, !tbaa !461
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 %.fca.1.extract25, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !141
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !462
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !512
  %i.lw = zext i16 %i.lv to i32
  store ptr %19, ptr %20, align 8, !tbaa !481
  %i.lx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 19, ptr %i.lx, align 8, !tbaa !484
  %i.ly = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 683, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.lt, i32 %i.lw, ptr noundef nonnull byval(%"class.llvm::ArrayRef.366") align 8 %20) #19 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.ly, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.ly, 1
  %.sroa.33.8.insert.ext436 = zext i32 %.fca.1.extract19 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.critedge9

bb.as:                                            ; preds = %bb.a
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !460
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.mb, align 8, !tbaa !461
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.mc, align 8
  %i.md = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.me) #19
  %i.mg = icmp eq i32 %i.mf, 7
  br i1 %i.mg, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !456
  switch i32 %i.mi, label %.critedge [
    i32 37, label %.critedge255
    i32 12, label %.critedge255
  ]

.critedge255:                                     ; preds = %bb.at, %bb.at
  %i.mj = tail call { ptr, i32 } @_ZNK4llvm18R600TargetLowering15constBufferLoadEPNS_10LoadSDNodeEiRNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(920) %i.b) ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.mj, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.mj, 1
  %.sroa.33.8.insert.ext432 = zext i32 %.fca.1.extract13 to i64
  br label %.critedge9

.critedge:                                        ; preds = %bb.at, %bb.af, %bb.aq, %bb.ao, %bb.as, %bb.ae, %.critedge11, %bb.c, %bb.b, %bb.a
  %i.mk = call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #19 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.mk, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.mk, 1
  %.sroa.33.8.insert.ext = zext i32 %.fca.1.extract to i64
  br label %.critedge9

.critedge9:                                       ; preds = %bb.ah, %bb.an, %bb.ak, %bb.ai, %bb.aj, %.critedge249, %bb.al, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit313, %21, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, %bb.d, %bb.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.ar, %bb.ap, %.critedge255, %bb.ag, %.critedge241, %.critedge
  %.sroa.33.8 = phi i64 [ %.sroa.33.8.insert.ext, %.critedge ], [ %.sroa.33.8.insert.ext464, %.critedge241 ], [ %.sroa.33.8.insert.ext432, %.critedge255 ], [ 0, %bb.i ], [ %.sroa.33.3, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread ], [ %.sroa.33.8.insert.ext444, %bb.ag ], [ %.sroa.33.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %.sroa.33.8.insert.ext440, %bb.ap ], [ %.sroa.33.8.insert.ext436, %bb.ar ], [ 0, %bb.d ], [ %.sroa.33.8.insert.ext460, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ %.sroa.33.8.insert.ext495, %21 ], [ %.sroa.33.8.insert.ext452, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit313 ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.14.0.copyload, %bb.al ], [ %.sroa.33.8.insert.ext448, %.critedge249 ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.aj ]
  %.sroa.0429.8 = phi ptr [ %.fca.0.extract, %.critedge ], [ %.fca.0.extract149, %.critedge241 ], [ %.fca.0.extract12, %.critedge255 ], [ null, %bb.i ], [ %.sroa.0429.3, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread ], [ %.fca.0.extract63, %bb.ag ], [ %.sroa.0429.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %.fca.0.extract31, %bb.ap ], [ %.fca.0.extract18, %bb.ar ], [ null, %bb.d ], [ %.fca.0.extract121, %bb.j ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ %.sroa.0386.0.copyload, %21 ], [ %.fca.0.extract67, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit313 ], [ null, %bb.ah ], [ null, %bb.ai ], [ %.sroa.0340.0.copyload, %bb.al ], [ %.fca.0.extract47, %.critedge249 ], [ null, %bb.ak ], [ null, %bb.an ], [ null, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0429.8, 0
  %.sroa.33.8.extract.trunc = trunc i64 %.sroa.33.8 to i32
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.33.8.extract.trunc, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPNS_5SDUseEvEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 40                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !502  ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add nsw i64 %i.d, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !503
  %i.k = zext i32 %i.j to i64
  %i.l = icmp ugt i64 %i.h, %i.k
  br i1 %i.l, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef 16) #19
  %.pre = load i32, ptr %i.e, align 8, !tbaa !502 ; 2 uses
  %.pre9 = zext i32 %.pre to i64
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.g, %bb.a ], [ %.pre9, %bb.b ]
  %i.n = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %.not9.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !501
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !469
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.q, %2
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !614

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre8 = load i32, ptr %i.e, align 8, !tbaa !502
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit
  %i.s = phi i32 [ %.pre8, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit ], [ %i.n, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit ]
  %i.t = trunc i64 %i.d to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.e, align 8, !tbaa !502
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !502  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add i64 %1, %i.c                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !503
  %i.g = zext i32 %i.f to i64
  %.not.i.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit, !prof !615

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i64 noundef %i.d, i64 noundef 16) #19
  %.pre = load i32, ptr %i.a, align 8, !tbaa !502 ; 2 uses
  %.pre5 = zext i32 %.pre to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit: ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre5, %bb.b ]
  %i.i = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %.not7.i.i.i = icmp eq i64 %1, 0
  br i1 %.not7.i.i.i, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !501
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.pre-phi ; 2 uses
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store ptr %2, ptr %.09.i.i.i.prol, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 8
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.prol, align 8, !tbaa !141
  %i.l = add i64 %.068.i.i.i.prol, -1             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !616

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 8
  br i1 %i.n, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store ptr %2, ptr %.09.i.i.i, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  store ptr %2, ptr %i.o, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.1, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  store ptr %2, ptr %i.p, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 40
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.2, align 8, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 48
  store ptr %2, ptr %i.q, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 56
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.3, align 8, !tbaa !141
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 64
  store ptr %2, ptr %i.r, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 72
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.4, align 8, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 80
  store ptr %2, ptr %i.s, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 88
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.5, align 8, !tbaa !141
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 96
  store ptr %2, ptr %i.t, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 104
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.6, align 8, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 112
  store ptr %2, ptr %i.u, align 8, !tbaa !461
  %.sroa.2.0..09.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 120
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.7, align 8, !tbaa !141
  %i.v = add i64 %.068.i.i.i, -8                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 128
  %.not.i.i.i.7 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.7, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !617

_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre4 = load i32, ptr %i.a, align 8, !tbaa !502
  br label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit

_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit: ; preds = %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit
  %i.x = phi i32 [ %.pre4, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit ], [ %i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit ]
  %i.y = trunc i64 %1 to i32
  %i.z = add i32 %i.x, %i.y
  store i32 %i.z, ptr %i.a, align 8, !tbaa !502
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #1

declare { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518448), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG11getSelectCCERKNS_5SDLocENS_7SDValueES4_S4_S4_NS_3ISD8CondCodeENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %2, i32 %3, ptr %4, i32 %5, ptr noundef byval(%"class.llvm::SDValue") align 8 %6, ptr noundef byval(%"class.llvm::SDValue") align 8 %7, i32 noundef %8, i32 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !467
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !468
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !462
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !463
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !465
  store ptr %2, ptr %10, align 8, !tbaa !461
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %3, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !141
  store ptr %4, ptr %11, align 8, !tbaa !461
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %5, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !141
  %i.h = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %8) #19 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.h, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.h, 1
  store ptr %.fca.0.extract2, ptr %12, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.25.0..sroa_idx, align 8
  %i.i = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 221, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, i32 %9) #19
  ret { ptr, i32 } %i.i
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.366") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18R600TargetLowering11FoldOperandEPNS_6SDNodeEjRNS_7SDValueES4_S4_S4_S4_RNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518464) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(920) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %i.a = alloca [11 x i32], align 16              ; 14 uses
  %12 = alloca %"class.std::vector.212", align 8  ; 9 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 400 ; 14 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !467    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !456  ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  switch i32 %i.g, label %.critedge [
    i32 -363, label %bb.c
    i32 -362, label %bb.e
    i32 -342, label %bb.g
    i32 -376, label %bb.ab
    i32 -375, label %bb.ad
    i32 -377, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !467
  %.not158 = icmp eq ptr %i.i, null
  br i1 %.not158, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !460
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !469
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !326
  store i64 %i.m, ptr %9, align 8, !tbaa !326
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !457
  store i32 %i.p, ptr %i.n, align 8, !tbaa !458
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.q, 1
  store ptr %.fca.0.extract72, ptr %4, align 8, !tbaa !461
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract73, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %5, align 8, !tbaa !467
  %.not157 = icmp eq ptr %i.r, null
  br i1 %.not157, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !460
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !469
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !326
  store i64 %i.v, ptr %10, align 8, !tbaa !326
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !457
  store i32 %i.y, ptr %i.w, align 8, !tbaa !458
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract65, ptr %5, align 8, !tbaa !461
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract66, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !456
  %i.ac = xor i32 %i.ab, -1                       ; 13 uses
  %i.ad = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 0) #19
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = load ptr, ptr %6, align 8, !tbaa !467
  %.not154 = icmp eq ptr %i.af, null
  br i1 %.not154, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %3, align 8, !tbaa !467
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !460 ; 2 uses
  %.sroa.0185.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !461 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aj = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !462 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.al, align 8, !tbaa !463 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !465
  store i16 %.sroa.0.0.copyload.i, ptr %11, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.am, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split192

.split192:                                        ; preds = %bb.h
  %i.an = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.an, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %spec.select.i.i, label %.critedge, label %bb.i

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.h
  %i.ao = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.split192, %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ap = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 1) #19
  store i32 %i.ap, ptr %i.a, align 16, !tbaa !141
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ar = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 85) #19
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 94) #19
  store i32 %i.at, ptr %i.as, align 8, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.av = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 8) #19
  store i32 %i.av, ptr %i.au, align 4, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 25) #19
  store i32 %i.ax, ptr %i.aw, align 16, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.az = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 42) #19
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !141
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 59) #19
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !141
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bd = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 13) #19
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !141
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 30) #19
  store i32 %i.bf, ptr %i.be, align 16, !tbaa !141
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bh = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 47) #19
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !141
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bj = call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i8 noundef zeroext 64) #19
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.bk = sext i1 %i.ae to i32                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0185.0.copyload, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !478 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !331
  %i.bt = icmp ult i32 %i.bs, 65
  %i.bu = load ptr, ptr %i.bq, align 8
  %spec.select.i.i.i = select i1 %i.bt, ptr %i.bq, ptr %i.bu
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !147
  %i.bv = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %.not.i.i = icmp eq ptr %i.ef, %i.ee
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.bv, ptr %i.ef, align 4, !tbaa !141
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store ptr %i.bw, ptr %i.bm, align 8, !tbaa !618
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.l:                                             ; preds = %bb.j
  %i.bx = ptrtoint ptr %i.ee to i64
  %i.by = ptrtoint ptr %i.ed to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775804
  br i1 %i.ca, label %bb.m, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cb = ashr exact i64 %i.bz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 2305843009213693951)
  %i.cf = select i1 %i.cd, i64 2305843009213693951, i64 %i.ce ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #23 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store i32 %i.bv, ptr %i.ci, align 4, !tbaa !141
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.n, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %i.ed, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.bz) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ch, ptr %12, align 8, !tbaa !619
  store ptr %i.ck, ptr %i.bm, align 8, !tbaa !618
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cl, ptr %i.bn, align 8, !tbaa !620
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.cm = call noundef zeroext i1 @_ZNK4llvm13R600InstrInfo24fitsConstReadLimitationsERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(440) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %12) #19 ; 2 uses
  br i1 %i.cm, label %bb.y, label %bb.z

bb.p:                                             ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168
  %i.cn = phi ptr [ null, %bb.i ], [ %i.ed, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168 ] ; 8 uses
  %i.co = phi ptr [ null, %bb.i ], [ %i.ee, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168 ] ; 6 uses
  %i.cp = phi ptr [ null, %bb.i ], [ %i.ef, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168 ] ; 6 uses
  %.0137.idx197 = phi i64 [ 0, %bb.i ], [ %.0137.add, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168 ] ; 2 uses
  %.0137.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0137.idx197
  %i.cq = load i32, ptr %.0137.ptr, align 4, !tbaa !141 ; 3 uses
  %i.cr = call noundef i32 @_ZNK4llvm13R600InstrInfo9getSelIdxEjj(ptr noundef nonnull align 8 dereferenceable(440) %i.d, i32 noundef %i.ac, i32 noundef %i.cq) #19 ; 2 uses
  %i.cs = or i32 %i.cr, %i.cq
  %or.cond.not = icmp sgt i32 %i.cs, -1
  br i1 %or.cond.not, label %bb.q, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168

bb.q:                                             ; preds = %bb.p
  %.0139 = add nsw i32 %i.cr, %i.bk
  %.0138 = add nsw i32 %i.cq, %i.bk
  %i.ct = load ptr, ptr %i.bl, align 8, !tbaa !460 ; 2 uses
  %i.cu = zext i32 %.0138 to i64
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !467 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !456
  %i.cz = icmp ne i32 %i.cy, 10
  %.not156196 = icmp eq ptr %i.cw, null
  %.not156 = or i1 %.not156196, %i.cz
  br i1 %.not156, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %.sroa.0.0.copyload.i160 = load i32, ptr %i.da, align 8, !tbaa !141
  %i.db = icmp eq i32 %.sroa.0.0.copyload.i160, 1
  br i1 %i.db, label %bb.s, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168

bb.s:                                             ; preds = %bb.r
  %i.dc = zext i32 %.0139 to i64
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.ct, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !467
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !478 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !331
  %i.dk = icmp ult i32 %i.dj, 65
  %i.dl = load ptr, ptr %i.dh, align 8
  %spec.select.i.i.i.i = select i1 %i.dk, ptr %i.dh, ptr %i.dl
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !147
  %i.dm = trunc i64 %.0.i.i.i.i to i32            ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i161, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.dm, ptr %i.cp, align 4, !tbaa !141
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  store ptr %i.dn, ptr %i.bm, align 8, !tbaa !618
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168

bb.u:                                             ; preds = %bb.s
  %i.do = ptrtoint ptr %i.co to i64
  %i.dp = ptrtoint ptr %i.cn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 6 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775804
  br i1 %i.dr, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i162

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i162: ; preds = %bb.u
  %i.ds = ashr exact i64 %i.dq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i163 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i163, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 2305843009213693951)
  %i.dw = select i1 %i.du, i64 2305843009213693951, i64 %i.dv ; 3 uses
  %.not.i.i.i.i164 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164)
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #23 ; 5 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store i32 %i.dm, ptr %i.dz, align 4, !tbaa !141
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i165

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i162
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %i.cn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i165

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i165: ; preds = %bb.w, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i162
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %.not.i17.i.i.i166 = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i.i166, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i165
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dq) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i165
  store ptr %i.dy, ptr %12, align 8, !tbaa !619
  store ptr %i.eb, ptr %i.bm, align 8, !tbaa !618
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dw ; 2 uses
  store ptr %i.ec, ptr %i.bn, align 8, !tbaa !620
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit168

_ZNSt6vectorIjSaIjEE9push_backEOj.exit168:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167, %bb.t, %bb.q, %bb.r, %bb.p
  %i.ed = phi ptr [ %i.dy, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167 ], [ %i.cn, %bb.t ], [ %i.cn, %bb.q ], [ %i.cn, %bb.r ], [ %i.cn, %bb.p ] ; 5 uses
  %i.ee = phi ptr [ %i.ec, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167 ], [ %i.co, %bb.t ], [ %i.co, %bb.q ], [ %i.co, %bb.r ], [ %i.co, %bb.p ] ; 3 uses
  %i.ef = phi ptr [ %i.eb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i167 ], [ %i.dn, %bb.t ], [ %i.cp, %bb.q ], [ %i.cp, %bb.r ], [ %i.cp, %bb.p ] ; 4 uses
  %.0137.add = add nuw nsw i64 %.0137.idx197, 4   ; 2 uses
  %.not155 = icmp eq i64 %.0137.add, 44
  br i1 %.not155, label %bb.j, label %bb.p

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store ptr %.sroa.0185.0.copyload, ptr %6, align 8, !tbaa !461
  %.sroa.5.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0.extract.trunc = trunc i64 %i.aj to i32
  store i32 %.sroa.5.0.extract.trunc, ptr %.sroa.5.0..sroa_idx187, align 8, !tbaa !141
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 1, i16 14, ptr null) #19 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.eg, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.eg, 1
  store ptr %.fca.0.extract28, ptr %3, align 8, !tbaa !461
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !141
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.y
  %i.eh = load ptr, ptr %12, align 8, !tbaa !619  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = load ptr, ptr %i.bn, align 8, !tbaa !620
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.critedge

bb.ab:                                            ; preds = %bb.b
  %i.em = load ptr, ptr %7, align 8, !tbaa !467
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !478 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !331
  %i.es = icmp ult i32 %i.er, 65
  %i.et = load ptr, ptr %i.ep, align 8
  %spec.select.i.i.i.i169 = select i1 %i.es, ptr %i.ep, ptr %i.et
  %.0.i.i.i.i170 = load i64, ptr %spec.select.i.i.i.i169, align 8, !tbaa !147
  %.not153 = icmp eq i64 %.0.i.i.i.i170, 0
  br i1 %.not153, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !460
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.ev, i64 12, i1 false), !tbaa.struct !469
  %i.ew = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 3, i16 7, ptr null) #19 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.ew, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.ew, 1
  store ptr %.fca.0.extract21, ptr %3, align 8, !tbaa !461
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !141
  br label %.critedge

bb.ad:                                            ; preds = %bb.b
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !460
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !467
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !494
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = tail call noundef float @_ZNK4llvm7APFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fc) #19 ; 3 uses
  %i.fe = fcmp oeq float %i.fd, 0.000000e+00
  br i1 %i.fe, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = fcmp oeq float %i.fd, 5.000000e-01
  br i1 %i.ff, label %.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = fcmp oeq float %i.fd, 1.000000e+00
  br i1 %i.fg, label %.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.fh = load ptr, ptr %i.fa, align 8, !tbaa !494
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  call void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !331
  %i.fl = icmp ult i32 %i.fk, 65                  ; 2 uses
  %i.fm = load ptr, ptr %13, align 8              ; 3 uses
  %spec.select.i = select i1 %i.fl, ptr %13, ptr %i.fm
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !147
  %i.fn = icmp eq ptr %i.fm, null
  %or.cond = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.fm) #20
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ak

bb.ai:                                            ; preds = %bb.b
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !460
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !467
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !478 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !331
  %i.fw = icmp ult i32 %i.fv, 65
  %i.fx = load ptr, ptr %i.ft, align 8
  %spec.select.i.i.i.i.i = select i1 %i.fw, ptr %i.ft, ptr %i.fx
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  switch i64 %.0.i.i.i.i.i, label %bb.ak [
    i64 0, label %.split
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %.split

bb.ak:                                            ; preds = %bb.ai, %_ZN4llvm5APIntD2Ev.exit
  %.2142 = phi i64 [ %.0.i, %_ZN4llvm5APIntD2Ev.exit ], [ %.0.i.i.i.i.i, %bb.ai ]
  %i.fy = load ptr, ptr %7, align 8, !tbaa !467   ; 2 uses
  %.not = icmp eq ptr %i.fy, null
  br i1 %.not, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 88
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !478 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !331
  %i.ge = icmp ult i32 %i.gd, 65
  %i.gf = load ptr, ptr %i.gb, align 8
  %spec.select.i.i.i171 = select i1 %i.ge, ptr %i.gb, ptr %i.gf
  %.0.i.i.i172 = load i64, ptr %spec.select.i.i.i171, align 8, !tbaa !147
  %.not152 = icmp eq i64 %.0.i.i.i172, 0
  br i1 %.not152, label %.split146, label %.critedge

.split146:                                        ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !326
  store i64 %i.gh, ptr %14, align 8, !tbaa !326
  %i.gi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !457
  store i32 %i.gk, ptr %i.gi, align 8, !tbaa !458
  %i.gl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %.2142, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.gl, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.gl, 1
  store ptr %.fca.0.extract4, ptr %7, align 8, !tbaa !461
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.split

.split:                                           ; preds = %bb.ai, %bb.aj, %bb.ae, %bb.ad, %bb.af, %.split146
  %.sroa.0173.0 = phi i32 [ 3, %.split146 ], [ 29, %bb.ai ], [ 15, %bb.aj ], [ 8, %bb.ae ], [ 29, %bb.ad ], [ 14, %bb.af ]
  %i.gm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 %.sroa.0173.0, i16 7, ptr null) #19 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gm, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.gm, 1
  store ptr %.fca.0.extract, ptr %3, align 8, !tbaa !461
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !141
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNK4llvm3EVT8isVectorEv.exit, %.split192, %.split, %bb.ak, %bb.al, %bb.ab, %bb.g, %bb.e, %bb.c, %bb.a, %bb.ac, %bb.f, %bb.d
  %.5 = phi i1 [ false, %bb.al ], [ true, %bb.d ], [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ true, %bb.ac ], [ false, %bb.ab ], [ false, %bb.ak ], [ true, %.split ], [ false, %bb.b ], [ %i.cm, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit ], [ false, %.split192 ]
  ret i1 %.5
}

declare noundef i32 @_ZNK4llvm13R600InstrInfo9getSelIdxEjj(ptr noundef nonnull align 8 dereferenceable(440), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm13R600InstrInfo24fitsConstReadLimitationsERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i32, i16, ptr) local_unnamed_addr #1

declare noundef float @_ZNK4llvm7APFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm18R600TargetLowering15PostISelFoldingEPNS_13MachineSDNodeERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518464) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 27 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.366", align 8 ; 3 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.366", align 8 ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 13 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::ArrayRef.366", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 58 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !456  ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, label %bb.ab

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.a
  %i.g = xor i32 %i.e, -1                         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !467
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !468
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !460  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !500  ; 2 uses
  %i.m = zext i16 %i.l to i64                     ; 4 uses
  %.idx = mul nuw nsw i64 %i.m, 40                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.m
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 4 uses
  %i.r = add nsw i64 %.idx, -40                   ; 2 uses
  %i.s = udiv i64 %i.r, 40
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !469
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.prol, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !621

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %.011.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.r, 120
  br i1 %i.w, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !469
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 16, i1 false), !tbaa.struct !469
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 16, i1 false), !tbaa.struct !469
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 16, i1 false), !tbaa.struct !469
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.ad, %i.n
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !614

_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m
  %i.ag = ptrtoint ptr %.lcssa to i64
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit: ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit, %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.22.0 = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %i.af, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit ]
  %.sroa.0191.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %i.q, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit ] ; 56 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %i.ag, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit.loopexit ] ; 3 uses
  switch i32 %i.g, label %bb.t [
    i32 352, label %bb.b
    i32 19, label %bb.r
  ]

bb.b:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EEC2IPNS0_5SDUseEvEET_S7_RKS2_.exit
  %i.ah = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 8) #19 ; 3 uses
  %i.ai = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 25) #19 ; 3 uses
  %i.aj = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 42) #19 ; 3 uses
  %i.ak = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 59) #19 ; 3 uses
  %i.al = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 13) #19 ; 3 uses
  %i.am = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 30) #19 ; 3 uses
  %i.an = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 47) #19 ; 3 uses
  %i.ao = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 64) #19 ; 3 uses
  %i.ap = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 9) #19
  %i.aq = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 26) #19
  %i.ar = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 43) #19
  %i.as = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 60) #19
  %i.at = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 14) #19
  %i.au = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 31) #19
  %i.av = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 48) #19
  %i.aw = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 65) #19
  %i.ax = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 11) #19
  %i.ay = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 28) #19
  %i.az = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 45) #19
  %i.ba = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 62) #19
  %i.bb = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 16) #19
  %i.bc = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 33) #19
  %i.bd = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 50) #19
  %i.be = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 67) #19
  %i.bf = icmp slt i32 %i.ah, 0
  br i1 %i.bf, label %.loopexit, label %bb.q

bb.c:                                             ; preds = %bb.q
  %i.bg = icmp slt i32 %i.ai, 0
  br i1 %i.bg, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = zext nneg i32 %i.ai to i64
  %i.bi = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -16
  %i.bk = sext i32 %i.aq to i64
  %i.bl = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16
  %i.bn = sext i32 %i.ay to i64
  %i.bo = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -16
  %i.bq = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 0) #19
  %i.br = tail call noundef i32 @_ZNK4llvm13R600InstrInfo9getSelIdxEjj(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i32 noundef %i.ai) #19
  %i.bs = icmp sgt i32 %i.bq, -1
  %i.bt = sext i1 %i.bs to i32
  %spec.select.1 = add nsw i32 %i.br, %i.bt       ; 2 uses
  %i.bu = zext nneg i32 %spec.select.1 to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %i.bu
  %i.bw = icmp slt i32 %spec.select.1, 0
  %i.bx = select i1 %i.bw, ptr %3, ptr %i.bv
  %i.by = call noundef zeroext i1 @_ZNK4llvm18R600TargetLowering11FoldOperandEPNS_6SDNodeEjRNS_7SDValueES4_S4_S4_S4_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518464) %0, ptr noundef nonnull %1, i32 poison, ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull align 8 dereferenceable(12) %i.bm, ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %2)
  br i1 %i.by, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bz = icmp slt i32 %i.aj, 0
  br i1 %i.bz, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = zext nneg i32 %i.aj to i64
  %i.cb = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -16
  %i.cd = sext i32 %i.ar to i64
  %i.ce = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %i.cg = sext i32 %i.az to i64
  %i.ch = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -16
  %i.cj = tail call noundef i32 @_ZNK4llvm13R600InstrInfo13getOperandIdxEjNS_4R6006OpNameE(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i8 noundef zeroext 0) #19
  %i.ck = tail call noundef i32 @_ZNK4llvm13R600InstrInfo9getSelIdxEjj(ptr noundef nonnull align 8 dereferenceable(440) %i.c, i32 noundef 352, i32 noundef %i.aj) #19
  %i.cl = icmp sgt i32 %i.cj, -1
  %i.cm = sext i1 %i.cl to i32
  %spec.select.2 = add nsw i32 %i.ck, %i.cm       ; 2 uses
  %i.cn = zext nneg i32 %spec.select.2 to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %i.cn
  %i.cp = icmp slt i32 %spec.select.2, 0
  %i.cq = select i1 %i.cp, ptr %3, ptr %i.co
  %i.cr = call noundef zeroext i1 @_ZNK4llvm18R600TargetLowering11FoldOperandEPNS_6SDNodeEjRNS_7SDValueES4_S4_S4_S4_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518464) %0, ptr noundef nonnull %1, i32 poison, ptr noundef nonnull align 8 dereferenceable(12) %i.cc, ptr noundef nonnull align 8 dereferenceable(12) %i.cf, ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 8 dereferenceable(12) %i.cq, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %2)
  br i1 %i.cr, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = icmp slt i32 %i.ak, 0
  br i1 %i.cs, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = zext nneg i32 %i.ak to i64
  %i.cu = getelementptr [16 x i8], ptr %.sroa.0191.0, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -16
end_hunk_0
