Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset?download=true
inline.NumInlined: 7658
inline.NumDeleted: 3375
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 31
begin_hunk_0_@hb_subset_plan_execute_or_fail:bb.a
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 2388
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 7 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.adi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.adj = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %5, i64 100 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %5, i64 114 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ads = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.adt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.adu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.adv = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 4 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 4 uses
  %i.adx = load i64, ptr @_hb_NullPool, align 16  ; 4 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aec = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aed = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aee = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %2, i64 114 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aen = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aeo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aep = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aeq = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aeu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.mo, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 -1, ptr %i.o, align 4, !tbaa !128
  %i.aew = load i8, ptr %i.at, align 8, !tbaa !177, !range !126, !noundef !127
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %bb.fi, label %bb.fh, !prof !149

bb.fh:                                            ; preds = %bb.fg
  %i.aey = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.ad, ptr noundef nonnull %i.o) ; 0 uses
  %.pre.i.i = load i32, ptr %i.o, align 4, !tbaa !128
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i32 -1, ptr %i.m, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i32 -1, ptr %i.n, align 4, !tbaa !128
  %i.aez = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.ad, ptr noundef nonnull %i.n) ; 0 uses
  %i.afa = load i32, ptr %i.n, align 4, !tbaa !128
  %.not.i.i = icmp eq i32 %i.afa, 0
  br i1 %.not.i.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  store i32 -1, ptr %i.n, align 4, !tbaa !128
  %i.afb = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.ad, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) ; 0 uses
  %i.afc = load i32, ptr %i.n, align 4, !tbaa !128
  %i.afd = add i32 %i.afc, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sink.i.i.i = phi i32 [ %i.afd, %bb.fj ], [ 0, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit: ; preds = %bb.fh, %bb.fk
  %i.afe = phi i32 [ %.pre.i.i, %bb.fh ], [ %.sink.i.i.i, %bb.fk ]
  %.not768.a = icmp eq i32 %i.afe, -1             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  br i1 %.not768.a, label %.thread738, label %bb.fl

bb.fl:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit
  %i.aff = load i8, ptr %i.x, align 8, !tbaa !167, !range !126, !noundef !127
  %i.afg = trunc nuw i8 %i.aff to i1
  %i.afh = load i8, ptr %i.ad, align 8, !range !126
  %i.afi = trunc nuw i8 %i.afh to i1
  %i.afj = select i1 %i.afg, i1 %i.afi, i1 false
  br i1 %i.afj, label %bb.fm, label %.thread738

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(49) %i.ad, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %9, align 8  ; 9 uses
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(49) %i.ad, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.afk = getelementptr inbounds nuw i8, ptr %.fca.0.load.i.i.i, i64 48
  %i.afl = getelementptr inbounds nuw i8, ptr %.fca.0.load.i.i.i, i64 24
  %i.afm = getelementptr inbounds nuw i8, ptr %.fca.0.load.i.i.i, i64 8 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.fca.0.load.i.i.i, i64 20
  %i.afo = getelementptr inbounds nuw i8, ptr %.fca.0.load.i.i.i, i64 40 ; 2 uses
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.fm
  %.sroa.4.0 = phi i64 [ %.fca.1.load.i.i.i, %bb.fm ], [ %.sroa.4.3, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i ] ; 17 uses
  %.0 = phi i1 [ false, %bb.fm ], [ %.1.ph, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i ] ; 2 uses
  %.sroa.4.8.extract.trunc = trunc i64 %.sroa.4.0 to i32 ; 24 uses
  switch i32 %.sroa.4.8.extract.trunc, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread [
    i32 -1, label %bb.mo
    i32 1752003704, label %bb.fo
    i32 1986884728, label %bb.fo
    i32 1835104368, label %bb.fo
    i32 1330851634, label %bb.fo
    i32 1196445523, label %bb.fw
    i32 1735811442, label %bb.ge
    i32 1668702578, label %bb.ge
    i32 1213612370, label %bb.ge
    i32 1448493394, label %bb.ge
    i32 1297498450, label %bb.ge
    i32 1195656518, label %bb.ge
    i32 1128678962, label %bb.ge
  ]

bb.fo:                                            ; preds = %bb.fn, %bb.fn, %bb.fn, %bb.fn
  %i.afp = load i32, ptr %i.acw, align 4, !tbaa !223
  %.not2.i = icmp eq i32 %i.afp, 0
  br i1 %.not2.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.afq = load atomic i32, ptr %i.af monotonic, align 8 ; 2 uses
  %i.afr = load i32, ptr %i.au, align 4, !tbaa !169 ; 3 uses
  %i.afs = icmp ult i32 %i.afq, %i.afr
  %i.aft = load ptr, ptr %i.av, align 8, !tbaa !170 ; 3 uses
  br i1 %i.afs, label %bb.fq, label %._crit_edge.i.i.i.i.i.i.i57, !prof !131

bb.fq:                                            ; preds = %bb.fp
  %i.afu = zext i32 %i.afq to i64                 ; 2 uses
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.afu
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !172
  %.not.i.i.i.i.i.i.i72 = icmp eq i32 %i.afw, 3388988
  br i1 %.not.i.i.i.i.i.i.i72, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i68, label %._crit_edge.i.i.i.i.i.i.i57

._crit_edge.i.i.i.i.i.i.i57:                      ; preds = %bb.fq, %bb.fp
  %.not1.i.i.i.i.i.i.i.i.i.i.i58 = icmp sgt i32 %i.afr, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i58, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i59, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i59:         ; preds = %._crit_edge.i.i.i.i.i.i.i57
  %i.afx = add nsw i32 %i.afr, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i60:                   ; preds = %bb.fu, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i59
  %.0203.i.i.i.i.i.i.i.i.i.i.i61 = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i65, %bb.fu ], [ %i.afx, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i59 ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i62 = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i64, %bb.fu ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i59 ] ; 2 uses
  %i.afy = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i62, %.0203.i.i.i.i.i.i.i.i.i.i.i61
  %i.afz = lshr i32 %i.afy, 1                     ; 4 uses
  %i.aga = zext nneg i32 %i.afz to i64            ; 2 uses
  %i.agb = shl nuw nsw i64 %i.aga, 3
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !172 ; 2 uses
  %i.age = icmp sgt i32 %i.agd, 3388988
  br i1 %i.age, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i60
  %i.agf = add nsw i32 %i.afz, -1
  br label %bb.fu

bb.fs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i60
  %.not28.i.i.i.i.i.i.i.i.i.i.i63 = icmp eq i32 %i.agd, 3388988
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i63, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i67, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.agg = add nuw nsw i32 %i.afz, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fr
  %.223.i.i.i.i.i.i.i.i.i.i.i64 = phi i32 [ %i.agg, %bb.ft ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i62, %bb.fr ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i65 = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i61, %bb.ft ], [ %i.agf, %bb.fr ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i66 = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i64, %.2.i.i.i.i.i.i.i.i.i.i.i65
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i66, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i60, !llvm.loop !1

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i67: ; preds = %bb.fs
  store atomic i32 %i.afz, ptr %i.af monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i68

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i68: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i67, %bb.fq
  %i.agh = phi i64 [ %i.aga, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i67 ], [ %i.afu, %bb.fq ]
  %.sink.i.i.i.i.i.i.i70 = load ptr, ptr %i.ay, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i.i.i.i71 = icmp eq ptr %.sink.i.i.i.i.i.i.i70, null
  br i1 %.not.i.i.i.i.i.i71, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i68
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.agh
  %14 = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !174
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i70, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 48
  %19 = load i64, ptr %18, align 8, !tbaa !176
  %20 = lshr i64 %19, 38
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  br label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit

bb.fw:                                            ; preds = %bb.fn
  %i.agj = load i8, ptr %i.ar, align 4, !tbaa !656, !range !126, !noundef !127
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agl = load atomic i32, ptr %i.af monotonic, align 8 ; 2 uses
  %i.agm = load i32, ptr %i.au, align 4, !tbaa !169 ; 3 uses
  %i.agn = icmp ult i32 %i.agl, %i.agm
  %i.ago = load ptr, ptr %i.av, align 8, !tbaa !170 ; 3 uses
  br i1 %i.agn, label %bb.fy, label %._crit_edge.i.i.i.i.i.i7.i, !prof !131

bb.fy:                                            ; preds = %bb.fx
  %i.agp = zext i32 %i.agl to i64                 ; 2 uses
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %i.agp
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !172
  %.not.i.i.i.i.i.i23.i = icmp eq i32 %i.agr, 2335266
  br i1 %.not.i.i.i.i.i.i23.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i19.i, label %._crit_edge.i.i.i.i.i.i7.i

._crit_edge.i.i.i.i.i.i7.i:                       ; preds = %bb.fy, %bb.fx
  %.not1.i.i.i.i.i.i.i.i.i.i8.i = icmp sgt i32 %i.agm, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i8.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i10.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i10.i:         ; preds = %._crit_edge.i.i.i.i.i.i7.i
  %i.ags = add nsw i32 %i.agm, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i11.i

.lr.ph.i.i.i.i.i.i.i.i.i.i11.i:                   ; preds = %bb.gc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i10.i
  %.0203.i.i.i.i.i.i.i.i.i.i12.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i16.i, %bb.gc ], [ %i.ags, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i10.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i13.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i15.i, %bb.gc ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i10.i ] ; 2 uses
  %i.agt = add i32 %.0212.i.i.i.i.i.i.i.i.i.i13.i, %.0203.i.i.i.i.i.i.i.i.i.i12.i
  %i.agu = lshr i32 %i.agt, 1                     ; 4 uses
  %i.agv = zext nneg i32 %i.agu to i64            ; 2 uses
  %i.agw = shl nuw nsw i64 %i.agv, 3
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ago, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !172 ; 2 uses
  %i.agz = icmp sgt i32 %i.agy, 2335266
  br i1 %i.agz, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i11.i
  %i.aha = add nsw i32 %i.agu, -1
  br label %bb.gc

bb.ga:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i11.i
  %.not28.i.i.i.i.i.i.i.i.i.i14.i = icmp eq i32 %i.agy, 2335266
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i14.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i18.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ahb = add nuw nsw i32 %i.agu, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.223.i.i.i.i.i.i.i.i.i.i15.i = phi i32 [ %i.ahb, %bb.gb ], [ %.0212.i.i.i.i.i.i.i.i.i.i13.i, %bb.fz ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i16.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i12.i, %bb.gb ], [ %i.aha, %bb.fz ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i17.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i15.i, %.2.i.i.i.i.i.i.i.i.i.i16.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i17.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i11.i, !llvm.loop !1

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i18.i: ; preds = %bb.ga
  store atomic i32 %i.agu, ptr %i.af monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i19.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i19.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i18.i, %bb.fy
  %i.ahc = phi i64 [ %i.agv, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i18.i ], [ %i.agp, %bb.fy ]
  %.sink.i.i.i.i.i.i21.i = load ptr, ptr %i.ay, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i.i.i22.i = icmp eq ptr %.sink.i.i.i.i.i.i21.i, null
  br i1 %.not.i.i.i.i.i22.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit, label %bb.gd

bb.gd:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i19.i
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %i.ahc
  %23 = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !174
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i21.i, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %28 = load i64, ptr %27, align 8, !tbaa !176
  %29 = trunc i64 %28 to i8
  %30 = lshr i8 %29, 6
  %31 = and i8 %30, 1
  br label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit

bb.ge:                                            ; preds = %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn
  %i.ahe = load i8, ptr %i.acv, align 2, !tbaa !664, !range !126, !noundef !127
  %i.ahf = trunc nuw i8 %i.ahe to i1
  br i1 %i.ahf, label %bb.gf, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread

bb.gf:                                            ; preds = %bb.ge
  %i.ahg = load atomic i32, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ahh = load i32, ptr %i.au, align 4, !tbaa !169 ; 3 uses
  %i.ahi = icmp ult i32 %i.ahg, %i.ahh
  %i.ahj = load ptr, ptr %i.av, align 8, !tbaa !170 ; 3 uses
  br i1 %i.ahi, label %bb.gg, label %._crit_edge.i.i.i.i.i.i25.i, !prof !131

bb.gg:                                            ; preds = %bb.gf
  %i.ahk = zext i32 %i.ahg to i64                 ; 2 uses
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.ahj, i64 %i.ahk
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !172
  %.not.i.i.i.i.i.i41.i = icmp eq i32 %i.ahm, 3193648
  br i1 %.not.i.i.i.i.i.i41.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i37.i, label %._crit_edge.i.i.i.i.i.i25.i

._crit_edge.i.i.i.i.i.i25.i:                      ; preds = %bb.gg, %bb.gf
  %.not1.i.i.i.i.i.i.i.i.i.i26.i = icmp sgt i32 %i.ahh, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i26.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i28.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i28.i:         ; preds = %._crit_edge.i.i.i.i.i.i25.i
  %i.ahn = add nsw i32 %i.ahh, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.i

.lr.ph.i.i.i.i.i.i.i.i.i.i29.i:                   ; preds = %bb.gk, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i28.i
  %.0203.i.i.i.i.i.i.i.i.i.i30.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i34.i, %bb.gk ], [ %i.ahn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i28.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i31.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i33.i, %bb.gk ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i28.i ] ; 2 uses
  %i.aho = add i32 %.0212.i.i.i.i.i.i.i.i.i.i31.i, %.0203.i.i.i.i.i.i.i.i.i.i30.i
  %i.ahp = lshr i32 %i.aho, 1                     ; 4 uses
  %i.ahq = zext nneg i32 %i.ahp to i64            ; 2 uses
  %i.ahr = shl nuw nsw i64 %i.ahq, 3
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %i.ahr
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !172 ; 2 uses
  %i.ahu = icmp sgt i32 %i.aht, 3193648
  br i1 %i.ahu, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29.i
  %i.ahv = add nsw i32 %i.ahp, -1
  br label %bb.gk

bb.gi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29.i
  %.not28.i.i.i.i.i.i.i.i.i.i32.i = icmp eq i32 %i.aht, 3193648
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i32.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i36.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ahw = add nuw nsw i32 %i.ahp, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  %.223.i.i.i.i.i.i.i.i.i.i33.i = phi i32 [ %i.ahw, %bb.gj ], [ %.0212.i.i.i.i.i.i.i.i.i.i31.i, %bb.gh ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i34.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i30.i, %bb.gj ], [ %i.ahv, %bb.gh ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i35.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i33.i, %.2.i.i.i.i.i.i.i.i.i.i34.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i35.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.i, !llvm.loop !1

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i36.i: ; preds = %bb.gi
  store atomic i32 %i.ahp, ptr %i.af monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i37.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i37.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i36.i, %bb.gg
  %i.ahx = phi i64 [ %i.ahq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i36.i ], [ %i.ahk, %bb.gg ]
  %.sink.i.i.i.i.i.i39.i = load ptr, ptr %i.ay, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i.i.i40.i = icmp eq ptr %.sink.i.i.i.i.i.i39.i, null
  br i1 %.not.i.i.i.i.i40.i, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i37.i
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.ahj, i64 %i.ahx
  %i.ahy = getelementptr inbounds nuw i8, ptr %32, i64 4
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !174
  %i.aia = zext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i39.i, i64 %i.aia
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 48
  %i.aid = load i64, ptr %i.aic, align 8, !tbaa !176
  %i.aie = lshr i64 %i.aid, 50
  %i.aif = trunc i64 %i.aie to i8
  %i.aig = and i8 %i.aif, 1
  br label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit

_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit: ; preds = %bb.gk, %bb.gc, %bb.fu, %._crit_edge.i.i.i.i.i.i.i57, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i68, %bb.fv, %._crit_edge.i.i.i.i.i.i7.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i19.i, %bb.gd, %._crit_edge.i.i.i.i.i.i25.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i37.i, %bb.gl
  %.0.i.i.i.i.i27.sink.i = phi i8 [ 0, %bb.gc ], [ 0, %bb.fu ], [ %22, %bb.fv ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i68 ], [ 0, %._crit_edge.i.i.i.i.i.i.i57 ], [ %31, %bb.gd ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i19.i ], [ 0, %._crit_edge.i.i.i.i.i.i7.i ], [ %i.aig, %bb.gl ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i37.i ], [ 0, %._crit_edge.i.i.i.i.i.i25.i ], [ 0, %bb.gk ]
  %i.aih = load i8, ptr %i.at, align 8, !tbaa !177, !range !126, !noundef !127
  %.not.i56 = icmp eq i8 %i.aih, %.0.i.i.i.i.i27.sink.i
  br i1 %.not.i56, label %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread, label %select.unfold

_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread: ; preds = %bb.fn, %bb.fo, %bb.ge, %bb.fw, %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit
  %i.aii = load i8, ptr %i.at, align 8, !tbaa !177, !range !126, !noundef !127
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %bb.gm, label %bb.gn, !prof !149

bb.gm:                                            ; preds = %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ad, i32 noundef %.sroa.4.8.extract.trunc)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit

bb.gn:                                            ; preds = %_ZL23_dependencies_satisfiedP16hb_subset_plan_tjRK8hb_set_tS3_.exit.thread
  %i.aik = load i8, ptr %i.ad, align 8, !tbaa !167, !range !126, !noundef !127
  %i.ail = trunc nuw i8 %i.aik to i1
  br i1 %i.ail, label %bb.go, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit, !prof !131

bb.go:                                            ; preds = %bb.gn
  %i.aim = lshr i32 %.sroa.4.8.extract.trunc, 9   ; 3 uses
  %i.ain = load atomic i32, ptr %i.af monotonic, align 8 ; 2 uses
  %i.aio = load i32, ptr %i.au, align 4, !tbaa !169 ; 3 uses
  %i.aip = icmp ult i32 %i.ain, %i.aio
  %i.aiq = load ptr, ptr %i.av, align 8, !tbaa !170 ; 3 uses
  br i1 %i.aip, label %bb.gp, label %._crit_edge.i.i.i.i, !prof !131

bb.gp:                                            ; preds = %bb.go
  %i.air = zext i32 %i.ain to i64                 ; 2 uses
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %i.air
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !172
  %.not.i.i.i.i74 = icmp eq i32 %i.ait, %i.aim
  br i1 %.not.i.i.i.i74, label %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.gp, %bb.go
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aio, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.aiu = add nsw i32 %i.aio, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gt, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.gt ], [ %i.aiu, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.gt ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aiv = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.aiw = lshr i32 %i.aiv, 1                     ; 4 uses
  %i.aix = zext nneg i32 %i.aiw to i64            ; 2 uses
  %i.aiy = shl nuw nsw i64 %i.aix, 3
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %i.aiy
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !172 ; 2 uses
  %i.ajb = icmp slt i32 %i.aim, %i.aja
  br i1 %i.ajb, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ajc = add nsw i32 %i.aiw, -1
  br label %bb.gt

bb.gr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.aim, %i.aja
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajd = add nuw nsw i32 %i.aiw, 1
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gq
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.ajd, %bb.gs ], [ %.0212.i.i.i.i.i.i.i.i, %bb.gq ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.gs ], [ %i.ajc, %bb.gq ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.gr
  store atomic i32 %i.aiw, ptr %i.af monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i

_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.gp
  %i.aje = phi i64 [ %i.aix, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.air, %bb.gp ]
  %.sink.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i73, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit, label %bb.gu

bb.gu:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %i.aje
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !174
  %i.aji = zext i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.aji ; 2 uses
  store i32 -1, ptr %i.ae, align 4, !tbaa !168
  %i.ajk = and i64 %.sroa.4.0, 63
  %i.ajl = shl nuw i64 1, %i.ajk
  %i.ajm = xor i64 %i.ajl, -1
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.ajo = lshr i64 %.sroa.4.0, 6
  %i.ajp = and i64 %i.ajo, 7
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ajp ; 2 uses
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !176
  %i.ajs = and i64 %i.ajr, %i.ajm
  store i64 %i.ajs, ptr %i.ajq, align 8, !tbaa !176
  store i32 -1, ptr %i.ajj, align 8, !tbaa !209
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit: ; preds = %bb.gt, %bb.gm, %bb.gn, %._crit_edge.i.i.i.i, %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i, %bb.gu
  %i.ajt = load i8, ptr %i.acx, align 8, !tbaa !177, !range !126, !noundef !127
  %i.aju = trunc nuw i8 %i.ajt to i1
  %i.ajv = load i8, ptr %i.x, align 8, !tbaa !167, !range !126, !noundef !127
  %i.ajw = trunc nuw i8 %i.ajv to i1              ; 2 uses
  br i1 %i.aju, label %bb.gv, label %bb.hd, !prof !149

bb.gv:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit
  br i1 %i.ajw, label %bb.gw, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit75, !prof !131

bb.gw:                                            ; preds = %bb.gv
  %i.ajx = lshr i32 %.sroa.4.8.extract.trunc, 9   ; 3 uses
  %i.ajy = load atomic i32, ptr %i.z monotonic, align 8 ; 2 uses
  %i.ajz = load i32, ptr %i.acy, align 4, !tbaa !169 ; 3 uses
  %i.aka = icmp ult i32 %i.ajy, %i.ajz
  %i.akb = load ptr, ptr %i.acz, align 8, !tbaa !170 ; 3 uses
  br i1 %i.aka, label %bb.gx, label %._crit_edge.i.i182, !prof !131

bb.gx:                                            ; preds = %bb.gw
  %i.akc = zext i32 %i.ajy to i64                 ; 2 uses
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.akb, i64 %i.akc
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !172
  %.not.i.i197 = icmp eq i32 %i.ake, %i.ajx
  br i1 %.not.i.i197, label %_ZN12hb_bit_set_t8page_forEjb.exit.i193, label %._crit_edge.i.i182

._crit_edge.i.i182:                               ; preds = %bb.gx, %bb.gw
  %.not1.i.i.i.i.i.i183 = icmp sgt i32 %i.ajz, 0
  br i1 %.not1.i.i.i.i.i.i183, label %.lr.ph.preheader.i.i.i.i.i.i184, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit75

.lr.ph.preheader.i.i.i.i.i.i184:                  ; preds = %._crit_edge.i.i182
  %i.akf = add nsw i32 %i.ajz, -1
  br label %.lr.ph.i.i.i.i.i.i185

.lr.ph.i.i.i.i.i.i185:                            ; preds = %bb.hb, %.lr.ph.preheader.i.i.i.i.i.i184
  %.0203.i.i.i.i.i.i186 = phi i32 [ %.2.i.i.i.i.i.i190, %bb.hb ], [ %i.akf, %.lr.ph.preheader.i.i.i.i.i.i184 ] ; 2 uses
  %.0212.i.i.i.i.i.i187 = phi i32 [ %.223.i.i.i.i.i.i189, %bb.hb ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i184 ] ; 2 uses
  %i.akg = add i32 %.0212.i.i.i.i.i.i187, %.0203.i.i.i.i.i.i186
  %i.akh = lshr i32 %i.akg, 1                     ; 4 uses
  %i.aki = zext nneg i32 %i.akh to i64            ; 2 uses
  %i.akj = shl nuw nsw i64 %i.aki, 3
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.akj
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !172 ; 2 uses
  %i.akm = icmp slt i32 %i.ajx, %i.akl
  br i1 %i.akm, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i.i.i185
  %i.akn = add nsw i32 %i.akh, -1
  br label %bb.hb

bb.gz:                                            ; preds = %.lr.ph.i.i.i.i.i.i185
  %.not28.i.i.i.i.i.i188 = icmp eq i32 %i.ajx, %i.akl
  br i1 %.not28.i.i.i.i.i.i188, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i192, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ako = add nuw nsw i32 %i.akh, 1
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.223.i.i.i.i.i.i189 = phi i32 [ %i.ako, %bb.ha ], [ %.0212.i.i.i.i.i.i187, %bb.gy ] ; 2 uses
  %.2.i.i.i.i.i.i190 = phi i32 [ %.0203.i.i.i.i.i.i186, %bb.ha ], [ %i.akn, %bb.gy ] ; 2 uses
  %.not.not.i.i.i.i.i.i191 = icmp sgt i32 %.223.i.i.i.i.i.i189, %.2.i.i.i.i.i.i190
  br i1 %.not.not.i.i.i.i.i.i191, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit75, label %.lr.ph.i.i.i.i.i.i185, !llvm.loop !1

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i192: ; preds = %bb.gz
  store atomic i32 %i.akh, ptr %i.z monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i193

_ZN12hb_bit_set_t8page_forEjb.exit.i193:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i192, %bb.gx
  %i.akp = phi i64 [ %i.aki, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i192 ], [ %i.akc, %bb.gx ]
  %.sink.i.i195 = load ptr, ptr %i.adb, align 8, !tbaa !173 ; 2 uses
  %.not.i196 = icmp eq ptr %.sink.i.i195, null
  br i1 %.not.i196, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit75, label %bb.hc

bb.hc:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i193
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.akb, i64 %i.akp
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !174
  %i.akt = zext i32 %i.aks to i64
  %i.aku = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i195, i64 %i.akt ; 2 uses
  store i32 -1, ptr %i.y, align 4, !tbaa !168
  %i.akv = and i64 %.sroa.4.0, 63
  %i.akw = shl nuw i64 1, %i.akv
  %i.akx = xor i64 %i.akw, -1
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.akz = lshr i64 %.sroa.4.0, 6
  %i.ala = and i64 %i.akz, 7
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.aky, i64 %i.ala ; 2 uses
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !176
  %i.ald = and i64 %i.alc, %i.akx
  store i64 %i.ald, ptr %i.alb, align 8, !tbaa !176
  store i32 -1, ptr %i.aku, align 8, !tbaa !209
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit75

bb.hd:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit
  br i1 %i.ajw, label %bb.he, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit75, !prof !210

bb.he:                                            ; preds = %bb.hd
  store i32 -1, ptr %i.y, align 4, !tbaa !168
  %i.ale = lshr i32 %.sroa.4.8.extract.trunc, 9   ; 4 uses
end_hunk_0
