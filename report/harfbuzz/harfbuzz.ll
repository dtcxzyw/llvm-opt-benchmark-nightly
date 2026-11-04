Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 470
begin_hunk_0_@_ZN20hb_aat_map_builder_t7compileER12hb_aat_map_t:bb.a
  %i.gi = getelementptr inbounds i8, ptr %.021.i.i.i.i.i, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !569
  %i.gk = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !569
  %i.gm = icmp ugt i32 %i.gj, %i.gl
  br i1 %i.gm, label %_ZZN10hb_array_tIN20hb_aat_map_builder_t14feature_info_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread.i.i.i.i.i, label %.critedge.i.loopexit.i.i.i.i

.critedge.i.loopexit.i.i.i.i:                     ; preds = %_ZZN10hb_array_tIN20hb_aat_map_builder_t14feature_info_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread.i.i.i.i.i, %_ZZN10hb_array_tIN20hb_aat_map_builder_t14feature_info_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i, %bb.av, %bb.as
  %.015.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01525.i.i.i.i.i, i64 16 ; 2 uses
  %i.gn = icmp ult ptr %.015.i.i.i.i.i, %i.fu
  br i1 %i.gn, label %.preheader.i.i.i.i.i, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5qsortEv.exit, !llvm.loop !2183

_ZZN10hb_array_tIN20hb_aat_map_builder_t14feature_info_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread.i.i.i.i.i: ; preds = %_ZZN10hb_array_tIN20hb_aat_map_builder_t14feature_info_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i, %bb.av, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !573
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fv, ptr noundef nonnull align 4 dereferenceable(16) %.021.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.021.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !573
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.go = icmp ugt ptr %i.fv, %i.ft
  br i1 %i.go, label %.lr.ph.i.i.i.i.i, label %.critedge.i.loopexit.i.i.i.i, !llvm.loop !2184

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5qsortEv.exit: ; preds = %.critedge.i.loopexit.i.i.i.i, %bb.ar
  %i.gp = load i32, ptr %i.bx, align 4, !tbaa !2200 ; 2 uses
  %i.gq = icmp ugt i32 %i.gp, 1
  br i1 %i.gq, label %.lr.ph285.preheader, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit

.lr.ph285.preheader:                              ; preds = %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5qsortEv.exit
  %.pre318 = load ptr, ptr %i.by, align 8, !tbaa !2203
  br label %.lr.ph285

._crit_edge286:                                   ; preds = %bb.bb
  %i.gr = add i32 %.1, 1
  %i.gs = tail call i32 @llvm.smax.i32(i32 %i.gr, i32 0) ; 3 uses
  %i.gt = icmp ult i32 %i.gs, %i.hp
  br i1 %i.gt, label %bb.aw, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit

bb.aw:                                            ; preds = %._crit_edge286
  store i32 %i.gs, ptr %i.bx, align 4, !tbaa !536
  %i.gu = load i32, ptr %i.bw, align 8, !tbaa !535
  %i.gv = add i32 %i.gu, -1
  %spec.select.i.i = icmp ult i32 %i.gv, -2
  br i1 %spec.select.i.i, label %bb.ax, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit

bb.ax:                                            ; preds = %bb.aw
  %i.gw = tail call noundef zeroext i1 @_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %i.gs, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %bb.bb
  %i.gx = phi i32 [ %i.gp, %.lr.ph285.preheader ], [ %i.hp, %bb.bb ] ; 2 uses
  %i.gy = phi ptr [ %.pre318, %.lr.ph285.preheader ], [ %i.hq, %bb.bb ] ; 5 uses
  %indvars.iv308 = phi i64 [ 1, %.lr.ph285.preheader ], [ %indvars.iv.next309, %bb.bb ] ; 2 uses
  %.053283 = phi i32 [ 0, %.lr.ph285.preheader ], [ %.1, %bb.bb ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %indvars.iv308 ; 4 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !566
  %i.hb = zext i32 %.053283 to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !566
  %.not62 = icmp eq i32 %i.ha, %i.hd
  br i1 %.not62, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.lr.ph285
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !567, !range !380, !noundef !293
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !568
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !568
  %i.hl = xor i32 %i.hk, %i.hi
  %.not63 = icmp ult i32 %i.hl, 2
  br i1 %.not63, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph285
  %i.hm = add i32 %.053283, 1                     ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.hn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ho, ptr noundef nonnull align 4 dereferenceable(16) %i.gz, i64 16, i1 false), !tbaa.struct !573
  %.pre317 = load ptr, ptr %i.by, align 8, !tbaa !2203
  %.pre319 = load i32, ptr %i.bx, align 4, !tbaa !2200
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ba
  %i.hp = phi i32 [ %.pre319, %bb.ba ], [ %i.gx, %bb.ay ], [ %i.gx, %bb.az ] ; 3 uses
  %i.hq = phi ptr [ %.pre317, %bb.ba ], [ %i.gy, %bb.ay ], [ %i.gy, %bb.az ]
  %.1 = phi i32 [ %i.hm, %bb.ba ], [ %.053283, %bb.ay ], [ %.053283, %bb.az ] ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.hr = zext i32 %i.hp to i64
  %i.hs = icmp samesign ult i64 %indvars.iv.next309, %i.hr
  br i1 %i.hs, label %.lr.ph285, label %._crit_edge286, !llvm.loop !2185

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit: ; preds = %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5qsortEv.exit, %bb.ax, %bb.aw, %._crit_edge286, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EEaSERKS2_.exit
  tail call void @_Z25hb_aat_layout_compile_mapPK20hb_aat_map_builder_tP12hb_aat_map_t(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.ht = load i32, ptr %i.fd, align 4, !tbaa !564
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit, %_ZN11hb_vector_tIN20hb_aat_map_builder_t15feature_event_tELb0EEixEi.exit
  %.156 = phi i32 [ %i.ht, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE6shrinkEib.exit ], [ %.055291, %_ZN11hb_vector_tIN20hb_aat_map_builder_t15feature_event_tELb0EEixEi.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.hv = load i8, ptr %i.hu, align 4, !tbaa !565, !range !380, !noundef !293
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.not.i74 = icmp slt i32 %.sroa.8.0289, %.sroa.0.0288
  %.pre324 = add i32 %.sroa.8.0289, 1             ; 6 uses
  br i1 %.not.i74, label %.critedge.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = icmp slt i32 %.sroa.0.0288, 0
  br i1 %i.hy, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit, label %bb.bf, !prof !267

bb.bf:                                            ; preds = %bb.be
  %.not.i146 = icmp ugt i32 %.pre324, %.sroa.0.0288
  br i1 %.not.i146, label %.preheader.i148, label %.critedge.i, !prof !267

.preheader.i148:                                  ; preds = %bb.bf, %.preheader.i148
  %.043.i149 = phi i32 [ %i.ib, %.preheader.i148 ], [ %.sroa.0.0288, %bb.bf ] ; 2 uses
  %i.hz = lshr i32 %.043.i149, 1
  %i.ia = add i32 %.043.i149, 8
  %i.ib = add i32 %i.ia, %i.hz                    ; 8 uses
  %i.ic = icmp ugt i32 %.pre324, %i.ib
  br i1 %i.ic, label %.preheader.i148, label %.thread.i150, !llvm.loop !15

.thread.i150:                                     ; preds = %.preheader.i148
  %i.id = icmp ugt i32 %i.ib, 268435455
  br i1 %i.id, label %.critedge.i162, label %bb.bg, !prof !267

.critedge.i162:                                   ; preds = %.thread.i150
  %i.ie = xor i32 %.sroa.0.0288, -1
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit

bb.bg:                                            ; preds = %.thread.i150
  %.not50.i152 = icmp eq i32 %.sroa.0.0288, 0
  br i1 %.not50.i152, label %bb.bh, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i

bb.bh:                                            ; preds = %bb.bg
  %.not9.i.i.i159 = icmp eq ptr %.sroa.19.0290, null
  br i1 %.not9.i.i.i159, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = shl nuw i32 %i.ib, 4
  %i.ig = zext i32 %i.if to i64
  %i.ih = tail call noalias noundef ptr @malloc(i64 noundef %i.ig) #61 ; 4 uses
  %.not10.i.i.i160 = icmp eq ptr %i.ih, null
  br i1 %.not10.i.i.i160, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i, label %bb.bj, !prof !267

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i.i.i161 = icmp eq i32 %.sroa.8.0289, 0
  br i1 %.not.i.i.i.i161, label %.critedge.i, label %bb.bk, !prof !267

bb.bk:                                            ; preds = %bb.bj
  %i.ii = zext i32 %.sroa.8.0289 to i64
  %i.ij = shl nuw nsw i64 %i.ii, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 1 %.sroa.19.0290, i64 %i.ij, i1 false), !alias.scope !2204
  br label %.critedge.i

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %bb.bh, %bb.bg
  %i.ik = phi ptr [ null, %bb.bh ], [ %.sroa.19.0290, %bb.bg ]
  %i.il = shl nuw i32 %i.ib, 4
  %i.im = zext i32 %i.il to i64
  %i.in = tail call noalias noundef ptr @realloc(ptr noundef %i.ik, i64 noundef %i.im) #62 ; 2 uses
  %.not22.i153 = icmp eq ptr %i.in, null
  br i1 %.not22.i153, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i, label %.critedge.i, !prof !319

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i: ; preds = %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.bi
  %i.io = xor i32 %.sroa.0.0288, -1
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit: ; preds = %bb.be, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i, %.critedge.i162
  %.sroa.0.4 = phi i32 [ %.sroa.0.0288, %bb.be ], [ %i.io, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i ], [ %i.ie, %.critedge.i162 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, i8 0, i64 16, i1 false)
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE4pushIJRS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %bb.bd, %bb.bj, %bb.bk, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.bf
  %.pre-phi325 = phi i32 [ %.pre324, %bb.bf ], [ 1, %bb.bj ], [ %.pre324, %bb.bk ], [ %.pre324, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.pre324, %bb.bd ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.0288, %bb.bf ], [ %i.ib, %bb.bj ], [ %i.ib, %bb.bk ], [ %i.ib, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0.0288, %bb.bd ]
  %.sroa.19.2 = phi ptr [ %.sroa.19.0290, %bb.bf ], [ %i.ih, %bb.bj ], [ %i.ih, %bb.bk ], [ %i.in, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.sroa.19.0290, %bb.bd ] ; 2 uses
  %i.ip = zext i32 %.sroa.8.0289 to i64
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.2, i64 %i.ip
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iq, ptr noundef nonnull align 4 dereferenceable(16) %i.hx, i64 16, i1 false), !tbaa.struct !573
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE4pushIJRS1_EEEPS1_DpOT_.exit

bb.bl:                                            ; preds = %bb.bc
  %.sroa.2.8.insert.ext.i.i.i77 = zext i32 %.sroa.8.0289 to i64 ; 4 uses
  %.not28.i.i.i = icmp eq i32 %.sroa.8.0289, 0
  br i1 %.not28.i.i.i, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE4pushIJRS1_EEEPS1_DpOT_.exit, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %bb.bl
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.is = load <2 x i32>, ptr %i.ir, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %.lr.ph.i.i.i78
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i78 ], [ %indvars.iv.next.i.i.i, %bb.bn ] ; 5 uses
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %indvars.iv.i.i.i
  %i.iu = load <2 x i32>, ptr %i.it, align 4
  %i.iv = icmp eq <2 x i32> %i.is, %i.iu
  %4 = freeze <2 x i1> %i.iv
  %5 = bitcast <2 x i1> %4 to i2
  %6 = icmp eq i2 %5, -1
  br i1 %6, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE7lsearchIS1_EEPS1_RKT_S4_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %.sroa.2.8.insert.ext.i.i.i77
  br i1 %exitcond.not.i.i.i, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE4pushIJRS1_EEEPS1_DpOT_.exit, label %bb.bm, !llvm.loop !2189

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE7lsearchIS1_EEPS1_RKT_S4_.exit: ; preds = %bb.bm
  %i.iw = trunc i64 %indvars.iv.i.i.i to i32
  %i.ix = add nuw i32 %i.iw, 1                    ; 2 uses
  %i.iy = icmp ult i32 %i.ix, %.sroa.8.0289
  br i1 %i.iy, label %.lr.ph.i.i, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE7lsearchIS1_EEPS1_RKT_S4_.exit
  %i.iz = zext i32 %i.ix to i64                   ; 4 uses
  %i.ja = add nsw i64 %.sroa.2.8.insert.ext.i.i.i77, -2
  %i.jb = sub nsw i64 %indvars.iv.i.i.i, %.sroa.2.8.insert.ext.i.i.i77
  %i.jc = and i64 %i.jb, 1
  %lcmp.mod.not.not = icmp eq i64 %i.jc, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %i.iz
  %i.je = add nuw nsw i64 %i.iz, 4294967295
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.jd, i64 16, i1 false), !tbaa.struct !573
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %i.iz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.iz, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.jh = icmp eq i64 %i.ja, %indvars.iv.i.i.i
  br i1 %i.jh, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %indvars.iv.i.i
  %i.jj = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.jk = and i64 %i.jj, 4294967295
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %i.jk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jl, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !573
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %indvars.iv.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = and i64 %indvars.iv.i.i, 4294967295
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.19.0290, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jp, ptr noundef nonnull align 4 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !573
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i.i.1, %.sroa.2.8.insert.ext.i.i.i77
  br i1 %exitcond.not.1, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i, label %.lr.ph.i.i.new, !llvm.loop !2190

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i: ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE7lsearchIS1_EEPS1_RKT_S4_.exit
  %i.jq = add i32 %.sroa.8.0289, -1
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE4pushIJRS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE4pushIJRS1_EEEPS1_DpOT_.exit: ; preds = %bb.bn, %bb.bl, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i, %.critedge.i, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit
  %.sroa.0.1 = phi i32 [ %.sroa.0.4, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit ], [ %.sroa.0.0288, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i ], [ %.sroa.0.2, %.critedge.i ], [ %.sroa.0.0288, %bb.bl ], [ %.sroa.0.0288, %bb.bn ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.0289, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit ], [ %i.jq, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i ], [ %.pre-phi325, %.critedge.i ], [ 0, %bb.bl ], [ %.sroa.8.0289, %bb.bn ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.0290, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE5allocEjb.exit ], [ %.sroa.19.0290, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EE17shift_down_vectorEj.exit.i ], [ %.sroa.19.2, %.critedge.i ], [ %.sroa.19.0290, %bb.bl ], [ %.sroa.19.0290, %bb.bn ] ; 2 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count
  br i1 %exitcond314.not, label %._crit_edge293.loopexit, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t15feature_event_tELb0EEixEi.exit, !llvm.loop !2191

._crit_edge300:                                   ; preds = %.lr.ph299.prol.loopexit, %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit.1, %._crit_edge293
  br i1 %.sroa.0.0.lcssa, label %bb.bo, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EED2Ev.exit

bb.bo:                                            ; preds = %._crit_edge300
  tail call void @free(ptr noundef %.sroa.19.0.lcssa) #59
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EED2Ev.exit

_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EED2Ev.exit: ; preds = %._crit_edge300, %bb.bo
  %i.jr = add i32 %.sroa.0189.3, -1
  %spec.select.i.i.i81 = icmp ult i32 %i.jr, -2
  br i1 %spec.select.i.i.i81, label %bb.bp, label %_ZN11hb_vector_tIN20hb_aat_map_builder_t15feature_event_tELb0EED2Ev.exit

bb.bp:                                            ; preds = %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EED2Ev.exit
  tail call void @free(ptr noundef %.sroa.34.3) #59
  br label %_ZN11hb_vector_tIN20hb_aat_map_builder_t15feature_event_tELb0EED2Ev.exit

.lr.ph299:                                        ; preds = %.lr.ph299.prol.loopexit, %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit.1
  %.051297 = phi ptr [ %i.ki, %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit.1 ], [ %.051297.unr, %.lr.ph299.prol.loopexit ] ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.051297, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !532 ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i.not.i, label %bb.bq, label %bb.br, !prof !267

bb.bq:                                            ; preds = %.lr.ph299
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit

bb.br:                                            ; preds = %.lr.ph299
  %i.ju = add i32 %i.jt, -1
  %i.jv = getelementptr inbounds nuw i8, ptr %.051297, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !533
  %i.jx = zext i32 %i.ju to i64
  %i.jy = getelementptr inbounds nuw [12 x i8], ptr %i.jw, i64 %i.jx
  br label %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit

_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit: ; preds = %bb.bq, %bb.br
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.bq ], [ %i.jy, %bb.br ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 -1, ptr %i.jz, align 4, !tbaa !575
  %i.ka = getelementptr inbounds nuw i8, ptr %.051297, i64 20
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !532 ; 2 uses
  %.not.i.not.i.1 = icmp eq i32 %i.kb, 0
  br i1 %.not.i.not.i.1, label %bb.bt, label %bb.bs, !prof !267

bb.bs:                                            ; preds = %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit
  %i.kc = add i32 %i.kb, -1
  %i.kd = getelementptr inbounds nuw i8, ptr %.051297, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !533
  %i.kf = zext i32 %i.kc to i64
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kf
  br label %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit.1

bb.bt:                                            ; preds = %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit.1

_ZN11hb_vector_tIN12hb_aat_map_t13range_flags_tELb1EE4tailEv.exit.1: ; preds = %bb.bt, %bb.bs
  %.0.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.bt ], [ %i.kg, %bb.bs ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 8
  store i32 -1, ptr %i.kh, align 4, !tbaa !575
  %i.ki = getelementptr inbounds nuw i8, ptr %.051297, i64 32 ; 2 uses
  %.not58.1 = icmp eq ptr %i.ki, %i.eq
  br i1 %.not58.1, label %._crit_edge300, label %.lr.ph299

_ZN11hb_vector_tIN20hb_aat_map_builder_t15feature_event_tELb0EED2Ev.exit: ; preds = %bb.bp, %_ZN11hb_vector_tIN20hb_aat_map_builder_t14feature_info_tELb1EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = call noundef zeroext i1 @_ZN11hb_buffer_t12message_implEP9hb_font_tPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT8mortmorxINS_4morxENS_13ExtendedTypesELj1836020344EE5applyEPNS_22hb_aat_apply_context_tERK12hb_aat_map_tRKNS3_13accelerator_tE(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i8, ptr %i.c, align 8, !tbaa !586, !range !380, !noundef !293
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.critedge, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !587
  %i.h = and i32 %i.g, 64
  %i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !324 ; 5 uses
  br i1 %i.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 141
  store i8 0, ptr %i.j, align 1, !tbaa !588
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589  ; 5 uses
  %wide.trip.count.i = zext i32 %.pre to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.m = icmp ult i32 %.pre, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !591
  %i.q = or i32 %i.p, 2
end_hunk_0
begin_hunk_1_@hb_draw_close_path:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.e, %bb.f
  %i.w = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ]
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef %i.w) #59, !inline_history !36
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_draw_line(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %6, i64 0
  %i.b = insertelement <2 x float> %i.a, float %7, i64 1 ; 3 uses
  %i.c = insertelement <2 x float> poison, float %3, i64 0
  %i.d = insertelement <2 x float> %i.c, float %4, i64 1 ; 3 uses
  %i.e = fsub <2 x float> %i.b, %i.d              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f) ; 2 uses
  %i.i = fcmp une float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.h)
  %i.j = fcmp uno float %8, 0.000000e+00
  %.081 = select i1 %i.j, float %5, float %8
  %i.k = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x float> %i.e, %i.l              ; 4 uses
  %i.n = fmul float %5, 5.000000e-01              ; 2 uses
  %i.o = fmul float %.081, 5.000000e-01           ; 2 uses
  %i.p = icmp eq i32 %9, 1
  %i.q = fneg <2 x float> %i.m                    ; 3 uses
  br i1 %i.p, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.d)
  %i.u = insertelement <2 x float> poison, float %i.o, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.v, <2 x float> %i.b)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.x = phi <2 x float> [ %i.t, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.y = phi <2 x float> [ %i.w, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.z = shufflevector <2 x float> %i.q, <2 x float> %i.m, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.x)
  %i.ad = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ae, <2 x float> %i.y) ; 3 uses
  %i.ag = shufflevector <2 x float> %i.m, <2 x float> %i.q, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ae, <2 x float> %i.y) ; 3 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ab, <2 x float> %i.x) ; 4 uses
  %i.aj = load i32, ptr %2, align 4, !tbaa !358
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i, label %bb.d, !prof !268

bb.d:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !359 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !360
  %i.ao = fcmp une float %i.al, %i.an
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !361 ; 2 uses
  br i1 %i.ao, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !730
  %i.ar = fcmp une float %.pre.i, %i.aq
  br i1 %i.ar, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !364
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !365 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.av, null
  br i1 %.not.i6.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %bb.f, %._crit_edge.i
  %i.ay = phi ptr [ %i.ax, %bb.f ], [ null, %._crit_edge.i ]
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.al, float noundef %.pre.i, ptr noundef %i.ay) #59, !inline_history !38
  br label %bb.g

bb.g:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !368
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !365 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.bc, null
  br i1 %.not.i7.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %i.be, %bb.h ], [ null, %bb.g ]
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef %i.bf) #59, !inline_history !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %._crit_edge, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store <2 x float> %i.ac, ptr %i.bg, align 4, !tbaa !304
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !364
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !365 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i, label %hb_draw_line_to.exit, label %bb.i

bb.i:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !367
  br label %hb_draw_line_to.exit

hb_draw_line_to.exit:                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i, %bb.i
  %i.bn = phi ptr [ %i.bm, %bb.i ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i ]
  %i.bo = extractelement <2 x float> %i.af, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 1
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.bo, float noundef %i.bp, ptr noundef %i.bn) #59, !inline_history !40
  store <2 x float> %i.af, ptr %i.bg, align 4, !tbaa !304
  %i.bq = load i32, ptr %2, align 4, !tbaa !358
  %.not.i.i85 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i85, label %bb.j, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i86, !prof !267

bb.j:                                             ; preds = %hb_draw_line_to.exit
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i86

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i86: ; preds = %bb.j, %hb_draw_line_to.exit
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !364
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !365 ; 2 uses
  %.not.i5.i87 = icmp eq ptr %i.bs, null
  br i1 %.not.i5.i87, label %hb_draw_line_to.exit89, label %bb.k

bb.k:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i86
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !367
  br label %hb_draw_line_to.exit89

hb_draw_line_to.exit89:                           ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i86, %bb.k
  %i.bv = phi ptr [ %i.bu, %bb.k ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i86 ]
  %i.bw = extractelement <2 x float> %i.ah, i64 0
  %i.bx = extractelement <2 x float> %i.ah, i64 1
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.bw, float noundef %i.bx, ptr noundef %i.bv) #59, !inline_history !40
  store <2 x float> %i.ah, ptr %i.bg, align 4, !tbaa !304
  %i.by = load i32, ptr %2, align 4, !tbaa !358
  %.not.i.i90 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i90, label %bb.l, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i91, !prof !267

bb.l:                                             ; preds = %hb_draw_line_to.exit89
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i91

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i91: ; preds = %bb.l, %hb_draw_line_to.exit89
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !364
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !365 ; 2 uses
  %.not.i5.i92 = icmp eq ptr %i.ca, null
  br i1 %.not.i5.i92, label %hb_draw_line_to.exit94, label %bb.m

bb.m:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i91
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !367
  br label %hb_draw_line_to.exit94

hb_draw_line_to.exit94:                           ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i91, %bb.m
  %i.cd = phi ptr [ %i.cc, %bb.m ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i91 ]
  %i.ce = extractelement <2 x float> %i.ai, i64 0
  %i.cf = extractelement <2 x float> %i.ai, i64 1
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.ce, float noundef %i.cf, ptr noundef %i.cd) #59, !inline_history !40
  store <2 x float> %i.ai, ptr %i.bg, align 4, !tbaa !304
  %i.cg = load i32, ptr %2, align 4, !tbaa !358
  %.not.i.i95 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i95, label %hb_draw_close_path.exit, label %bb.n, !prof !267

bb.n:                                             ; preds = %hb_draw_line_to.exit94
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !304 ; 3 uses
  %i.cj = fcmp une <2 x float> %i.ci, %i.ai
  %10 = freeze <2 x i1> %i.cj
  %11 = bitcast <2 x i1> %10 to i2
  %or.cond.not = icmp eq i2 %11, 0
  br i1 %or.cond.not, label %bb.p, label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %bb.n
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !364
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !365 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.cl, null
  br i1 %.not.i3.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i100, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i99
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i100

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i100: ; preds = %bb.o, %._crit_edge.i99
  %i.co = phi ptr [ %i.cn, %bb.o ], [ null, %._crit_edge.i99 ]
  %i.cp = extractelement <2 x float> %i.ci, i64 0
  %i.cq = extractelement <2 x float> %i.ci, i64 1
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.cp, float noundef %i.cq, ptr noundef %i.co) #59, !inline_history !41
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i100
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !368
  %i.ct = load ptr, ptr %i.bj, align 8, !tbaa !365 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ct, null
  br i1 %.not.i4.i, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.q, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ null, %bb.p ]
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef %i.cw) #59, !inline_history !42
  br label %hb_draw_close_path.exit

hb_draw_close_path.exit:                          ; preds = %hb_draw_line_to.exit94, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %hb_draw_close_path.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #29

; Function Attrs: mustprogress nounwind uwtable
define void @hb_draw_rectangle(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp uno float %7, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq float %5, 0.000000e+00
  %i.c = fcmp oeq float %6, 0.000000e+00
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL21_hb_draw_rect_contourP15hb_draw_funcs_tPvP15hb_draw_state_tffffb(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i1 noundef zeroext true)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %or.cond61 = tail call i1 @llvm.is.fpclass.f32(float %7, /* (psub pnorm) */ i32 384)
  br i1 %or.cond61, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = fcmp olt float %5, 0.000000e+00          ; 2 uses
  %i.e = fadd float %3, %5
  %i.f = fneg float %5
  %.051 = select i1 %i.d, float %i.f, float %5    ; 2 uses
  %.0 = select i1 %i.d, float %i.e, float %3      ; 2 uses
  %i.g = fcmp olt float %6, 0.000000e+00          ; 2 uses
  %i.h = fadd float %4, %6
  %i.i = fneg float %6
  %.052 = select i1 %i.g, float %i.h, float %4    ; 2 uses
  %.050 = select i1 %i.g, float %i.i, float %6    ; 2 uses
  %i.j = fmul nnan float %7, 5.000000e-01         ; 4 uses
  %i.k = fsub float %.0, %i.j
  %i.l = fsub float %.052, %i.j
  %i.m = fadd float %.051, %7
  %i.n = fadd float %7, %.050
  tail call fastcc void @_ZL21_hb_draw_rect_contourP15hb_draw_funcs_tPvP15hb_draw_state_tffffb(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %i.k, float noundef %i.l, float noundef %i.m, float noundef %i.n, i1 noundef zeroext true)
  %i.o = fsub float %.051, %7                     ; 2 uses
  %i.p = fsub float %.050, %7                     ; 2 uses
  %i.q = fcmp ogt float %i.o, 0.000000e+00
  %i.r = fcmp ogt float %i.p, 0.000000e+00
  %or.cond3 = and i1 %i.q, %i.r
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = fadd float %.0, %i.j
  %i.t = fadd float %.052, %i.j
  tail call fastcc void @_ZL21_hb_draw_rect_contourP15hb_draw_funcs_tPvP15hb_draw_state_tffffb(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %i.s, float noundef %i.t, float noundef %i.o, float noundef %i.p, i1 noundef zeroext false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21_hb_draw_rect_contourP15hb_draw_funcs_tPvP15hb_draw_state_tffffb(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !358
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %hb_draw_move_to.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !359 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !360
  %i.f = fcmp une float %i.c, %i.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !361 ; 2 uses
  br i1 %i.f, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !730
  %i.i = fcmp une float %.pre.i, %i.h
  br i1 %i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365  ; 2 uses
  %.not.i6.i = icmp eq ptr %i.m, null
  br i1 %.not.i6.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %bb.d, %._crit_edge.i
  %i.p = phi ptr [ %i.o, %bb.d ], [ null, %._crit_edge.i ]
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.c, float noundef %.pre.i, ptr noundef %i.p) #59, !inline_history !38
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !368
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !365  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.t, null
  br i1 %.not.i7.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ]
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef %i.w) #59, !inline_history !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  br label %hb_draw_move_to.exit

hb_draw_move_to.exit:                             ; preds = %bb.a, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  store float %3, ptr %i.x, align 4, !tbaa !360
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store float %4, ptr %i.y, align 4, !tbaa !730
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !364 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !365 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.ac, null            ; 2 uses
  br i1 %7, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i59

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %hb_draw_move_to.exit
  %i.ad = fadd float %3, %5                       ; 4 uses
  br i1 %.not.i5.i, label %hb_draw_line_to.exit, label %bb.g

bb.g:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !367
  br label %hb_draw_line_to.exit

hb_draw_line_to.exit:                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i, %bb.g
  %i.ag = phi ptr [ %i.af, %bb.g ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i ]
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.ad, float noundef %4, ptr noundef %i.ag) #59, !inline_history !40
  store float %i.ad, ptr %i.x, align 4, !tbaa !360
  store float %4, ptr %i.y, align 4, !tbaa !730
  %i.ah = fadd float %4, %6                       ; 4 uses
  %i.ai = load i32, ptr %2, align 4, !tbaa !358
  %.not.i.i48 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i48, label %bb.h, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i49, !prof !267

bb.h:                                             ; preds = %hb_draw_line_to.exit
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i49

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i49: ; preds = %bb.h, %hb_draw_line_to.exit
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !364
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !365 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL27hb_paint_extents_push_groupP16hb_paint_funcs_tPvS1_:bb.a
_ZN26hb_paint_extents_context_t10push_groupEv.exit: ; preds = %bb.c, %.critedge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL26hb_paint_extents_pop_groupP16hb_paint_funcs_tPv25hb_paint_composite_mode_tS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t9pop_groupE25hb_paint_composite_mode_t(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_paint_extents_paint_colorP16hb_paint_funcs_tPvijS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL28hb_paint_extents_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4, i32 %5, float %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8) #30 {
bb.a:
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load <2 x i32>, ptr %7, align 4, !tbaa !324
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 3 uses
  %i.d = load <2 x i32>, ptr %i.a, align 4, !tbaa !324
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fadd <2 x float> %i.c, %i.e              ; 2 uses
  %i.g = shufflevector <2 x float> %i.c, <2 x float> %i.f, <2 x i32> <i32 0, i32 3>
  %i.h = shufflevector <2 x float> %i.f, <2 x float> %i.c, <2 x i32> <i32 0, i32 3>
  tail call void @_ZN26hb_paint_extents_context_t9push_clipE12hb_extents_tIfE(ptr noundef nonnull align 8 dereferenceable(56) %1, <2 x float> %i.g, <2 x float> %i.h)
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1026, !noalias !6126 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !1026, !noalias !6126
  br label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit

_ZN26hb_paint_extents_context_t8pop_clipEv.exit:  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL38hb_paint_extents_paint_linear_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, float %3, float %4, float %5, float %6, float %7, float %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL38hb_paint_extents_paint_radial_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, float %3, float %4, float %5, float %6, float %7, float %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL37hb_paint_extents_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, float %3, float %4, float %5, float %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL31free_static_paint_extents_funcsv() #15 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL26static_paint_extents_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL26static_paint_extents_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !268

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_hb_Null_hb_paint_funcs_t
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_paint_funcs_destroy(ptr noundef nonnull %i.a)
  br label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26hb_paint_extents_context_t9push_clipE12hb_extents_tIfE(ptr noundef nonnull align 8 dereferenceable(56) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #30 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1033 ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, i8 0, i64 24, i1 false)
  br label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1034
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.h = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !304
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !304
  %i.j = load <2 x float>, ptr %.phi.trans.insert46, align 4, !tbaa !304
  br label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit

_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %i.l = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.m = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.sroa.09.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.11.12.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.n = extractelement <2 x float> %i.l, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %.sroa.09.0.vec.extract, float %i.o) ; 2 uses
  %i.q = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %.sroa.09.4.vec.extract, float %i.p) ; 4 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float %.sroa.11.12.vec.extract, float %i.p) ; 4 uses
  %i.t = fcmp ole float %i.r, %i.s
  %.sroa.speculated12.i.1.i = select i1 %i.t, float %i.r, float %i.s ; 2 uses
  %i.u = fcmp oge float %i.r, %i.s
  %.sroa.speculated9.i.1.i = select i1 %i.u, float %i.r, float %i.s ; 2 uses
  %i.v = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.v, <2 x float> %i.m) ; 3 uses
  %i.x = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.x, <2 x float> %i.w) ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.aa = fcmp ogt float %.sroa.speculated12.i.1.i, %.sroa.speculated9.i.1.i
  br i1 %i.aa, label %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread, label %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i, !prof !267

_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread: ; preds = %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit
  %i.ab = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.ad = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>
  %i.ae = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float poison>, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.af = shufflevector <2 x float> %i.y, <2 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ae, <4 x float> %i.af) ; 2 uses
  br label %bb.d

_ZN12hb_extents_tIfE9add_pointEff.exit.2.i:       ; preds = %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit
  %i.ah = extractelement <2 x float> %i.l, i64 1
  %i.ai = extractelement <2 x float> %i.m, i64 1
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.09.0.vec.extract, float %i.ai) ; 2 uses
  %i.ak = extractelement <2 x float> %i.k, i64 1  ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %.sroa.09.4.vec.extract, float %i.aj) ; 4 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ak, float %.sroa.11.12.vec.extract, float %i.aj) ; 4 uses
  %i.an = fcmp oge float %i.al, %i.am
  %.sroa.speculated.i.1.i = select i1 %i.an, float %i.al, float %i.am
  %i.ao = fcmp ole float %i.al, %i.am
  %.sroa.speculated5.i.1.i = select i1 %i.ao, float %i.al, float %i.am
  %i.ap = insertelement <4 x float> poison, float %.sroa.speculated12.i.1.i, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %.sroa.speculated5.i.1.i, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %.sroa.speculated9.i.1.i, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %.sroa.speculated.i.1.i, i64 3 ; 3 uses
  %i.at = fcmp ole <4 x float> %i.as, %i.z
  %i.au = fcmp oge <4 x float> %i.as, %i.z
  %i.av = shufflevector <4 x i1> %i.at, <4 x i1> %i.au, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.as, <4 x float> %i.z ; 5 uses
  %i.ax = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.ax, <2 x float> %i.w)
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ba = extractelement <4 x float> %i.aw, i64 0
  %i.bb = extractelement <4 x float> %i.aw, i64 2
  %i.bc = fcmp ogt float %i.ba, %i.bb
  %i.bd = shufflevector <4 x float> %i.aw, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.be = shufflevector <4 x float> %i.aw, <4 x float> %i.az, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  br i1 %i.bc, label %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit, label %bb.d, !prof !2051

bb.d:                                             ; preds = %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i
  %i.bf = phi <4 x float> [ %i.ag, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread ], [ %i.bd, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ] ; 2 uses
  %i.bg = phi <4 x float> [ %i.ag, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread ], [ %i.be, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ]
  %i.bh = phi <4 x float> [ %i.z, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread ], [ %i.aw, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ]
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bj = fcmp ole <4 x float> %i.bf, %i.bi
  %i.bk = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bl = select <4 x i1> %i.bj, <4 x float> %i.bh, <4 x float> %i.bk
  br label %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit

_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit: ; preds = %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i, %bb.d
  %i.bm = phi <4 x float> [ %i.bl, %bb.d ], [ %i.az, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ] ; 9 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bp = fcmp ult <2 x float> %i.bn, %i.bo
  %3 = freeze <2 x i1> %i.bp
  %4 = bitcast <2 x i1> %3 to i2
  %.not44 = icmp eq i2 %4, -1                     ; 2 uses
  %i.bq = select i1 %.not44, i32 1, i32 2         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1026 ; 5 uses
  %.not.i.not.i2 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.not.i2, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, !prof !267

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread: ; preds = %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit: ; preds = %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit
  %i.bu = add i32 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1027
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.pr = load i32, ptr %i.by, align 4, !tbaa !2091
  switch i32 %.pr, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit [
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  br i1 %.not44, label %bb.g, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load <4 x float>, ptr %i.bz, align 4    ; 5 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cd = fcmp oge <2 x float> %i.cb, %i.cc
  %5 = freeze <2 x i1> %i.cd
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

_ZN12hb_extents_tIfE9intersectERKS0_.exit.i:      ; preds = %bb.g
  %i.ce = fcmp oge <4 x float> %i.bm, %i.ca
  %i.cf = fcmp ole <4 x float> %i.bm, %i.ca
  %i.cg = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ch = select <4 x i1> %i.cg, <4 x float> %i.bm, <4 x float> %i.ca ; 3 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cj = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ck = fcmp oge <2 x float> %i.ci, %i.cj
  %7 = freeze <2 x i1> %i.ck
  %8 = bitcast <2 x i1> %7 to i2
  %.not59 = icmp eq i2 %8, 0
  %spec.select = select i1 %.not59, i32 1, i32 2
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

_ZN11hb_bounds_tIfE9intersectERKS0_.exit:         ; preds = %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i, %bb.f, %bb.g, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, %bb.e
  %.sroa.0.0 = phi i32 [ %i.bq, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.g ], [ %i.bq, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread ], [ %spec.select, %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i ]
  %i.cl = phi <4 x float> [ %i.bm, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit ], [ %i.bm, %bb.e ], [ %i.bm, %bb.f ], [ <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float -1.000000e+00>, %bb.g ], [ %i.bm, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread ], [ %i.ch, %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i ]
  %i.cm = load i32, ptr %i.br, align 8, !tbaa !1031
  %.not.i = icmp slt i32 %i.bt, %i.cm
  br i1 %.not.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN11hb_bounds_tIfE9intersectERKS0_.exit
  %i.cn = add i32 %i.bt, 1
  %i.co = tail call noundef zeroext i1 @_ZN11hb_vector_tI11hb_bounds_tIfELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i32 noundef %i.cn, i1 noundef zeroext false)
  br i1 %i.co, label %..critedge_crit_edge.i, label %bb.i, !prof !268

..critedge_crit_edge.i:                           ; preds = %bb.h
  %.pre.i = load i32, ptr %i.bs, align 4, !tbaa !1026
  br label %.critedge.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZN11hb_bounds_tIfE9intersectERKS0_.exit
  %i.cp = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.bt, %_ZN11hb_bounds_tIfE9intersectERKS0_.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1027
  %i.cs = add i32 %i.cp, 1
  store i32 %i.cs, ptr %i.bs, align 4, !tbaa !1026
  %i.ct = zext i32 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [20 x i8], ptr %i.cr, i64 %i.ct ; 2 uses
  store i32 %.sroa.0.0, ptr %i.cu, align 4, !tbaa !1612
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store <4 x float> %i.cl, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !304
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4pushIJRS1_EEEPS1_DpOT_.exit: ; preds = %bb.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN41hb_paint_extents_draw_funcs_lazy_loader_t6createEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #60 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %hb_draw_funcs_create.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store atomic i32 1, ptr %i.a monotonic, align 4
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.d = load atomic i32, ptr %i.a monotonic, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_hb_Null_hb_draw_funcs_t, i64 16), i64 40, i1 false), !tbaa.struct !729
  br label %hb_draw_funcs_create.exit

hb_draw_funcs_create.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.a, %bb.b ], [ @_hb_Null_hb_draw_funcs_t, %bb.a ] ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 6 uses
  %i.g = load atomic i8, ptr %i.f monotonic, align 1, !range !380, !noundef !293
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %hb_draw_funcs_set_move_to_func.exit

bb.c:                                             ; preds = %hb_draw_funcs_create.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !716  ; 2 uses
  %.not21.i = icmp eq ptr %i.j, null
  br i1 %.not21.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !718  ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365  ; 2 uses
  %.not23.i = icmp eq ptr %i.m, null
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !719
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.n, %bb.f ], [ null, %bb.e ]
  tail call void %i.k(ptr noundef %i.o) #59, !inline_history !1520
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr @_ZL30hb_paint_extents_count_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr %i.p, align 8, !tbaa !720
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !365  ; 2 uses
  %.not24.i = icmp eq ptr %i.r, null
  br i1 %.not24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.r, align 8, !tbaa !719
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !716  ; 2 uses
  %.not25.i = icmp eq ptr %i.s, null
  br i1 %.not25.i, label %hb_draw_funcs_set_move_to_func.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.s, align 8, !tbaa !718
  br label %hb_draw_funcs_set_move_to_func.exit

hb_draw_funcs_set_move_to_func.exit:              ; preds = %hb_draw_funcs_create.exit, %bb.j, %bb.k
  %i.t = load atomic i8, ptr %i.f monotonic, align 1, !range !380, !noundef !293
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %hb_draw_funcs_set_line_to_func.exit

bb.l:                                             ; preds = %hb_draw_funcs_set_move_to_func.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !716  ; 2 uses
  %.not21.i6 = icmp eq ptr %i.w, null
  br i1 %.not21.i6, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !721  ; 2 uses
  %.not22.i7 = icmp eq ptr %i.y, null
  br i1 %.not22.i7, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !365 ; 2 uses
  %.not23.i8 = icmp eq ptr %i.aa, null
  br i1 %.not23.i8, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !367
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = phi ptr [ %i.ac, %bb.o ], [ null, %bb.n ]
  tail call void %i.y(ptr noundef %i.ad) #59, !inline_history !1521
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr @_ZL30hb_paint_extents_count_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr %i.ae, align 8, !tbaa !364
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !365 ; 2 uses
  %.not24.i9 = icmp eq ptr %i.ag, null
  br i1 %.not24.i9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !367
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !716 ; 2 uses
  %.not25.i10 = icmp eq ptr %i.ai, null
  br i1 %.not25.i10, label %hb_draw_funcs_set_line_to_func.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !721
  br label %hb_draw_funcs_set_line_to_func.exit

hb_draw_funcs_set_line_to_func.exit:              ; preds = %hb_draw_funcs_set_move_to_func.exit, %bb.s, %bb.t
  %i.ak = load atomic i8, ptr %i.f monotonic, align 1, !range !380, !noundef !293
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.u, label %hb_draw_funcs_set_quadratic_to_func.exit

bb.u:                                             ; preds = %hb_draw_funcs_set_line_to_func.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !716 ; 2 uses
  %.not21.i11 = icmp eq ptr %i.an, null
  br i1 %.not21.i11, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !722 ; 2 uses
  %.not22.i12 = icmp eq ptr %i.ap, null
  br i1 %.not22.i12, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !365 ; 2 uses
  %.not23.i13 = icmp eq ptr %i.ar, null
  br i1 %.not23.i13, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !723
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.au = phi ptr [ %i.at, %bb.x ], [ null, %bb.w ]
  tail call void %i.ap(ptr noundef %i.au) #59, !inline_history !1522
  br label %bb.z

end_hunk_2
begin_hunk_3_@_ZL35hb_paint_extents_count_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %6, ptr %i.t, align 4, !tbaa !2050
  br label %_ZN12hb_extents_tIfE9add_pointEff.exit12

_ZN12hb_extents_tIfE9add_pointEff.exit.thread:    ; preds = %bb.a, %_ZN12hb_extents_tIfE9add_pointEff.exit
  %i.u = phi <4 x float> [ %i.o, %_ZN12hb_extents_tIfE9add_pointEff.exit ], [ %i.j, %bb.a ] ; 3 uses
  %i.v = insertelement <4 x float> poison, float %5, i64 0
  %i.w = insertelement <4 x float> %i.v, float %6, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.y = fcmp ole <4 x float> %i.u, %i.x
  %i.z = fcmp oge <4 x float> %i.u, %i.x
  %i.aa = shufflevector <4 x i1> %i.y, <4 x i1> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ab = select <4 x i1> %i.aa, <4 x float> %i.u, <4 x float> %i.x
  store <4 x float> %i.ab, ptr %1, align 8, !tbaa !304
  br label %_ZN12hb_extents_tIfE9add_pointEff.exit12

_ZN12hb_extents_tIfE9add_pointEff.exit12:         ; preds = %bb.b, %_ZN12hb_extents_tIfE9add_pointEff.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL31hb_paint_extents_count_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2089
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !2089
  %i.d = load float, ptr %1, align 8, !tbaa !2049
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !377
  %i.g = fcmp ogt float %i.d, %i.f
  %i.h = insertelement <4 x float> poison, float %3, i64 0
  %i.i = insertelement <4 x float> %i.h, float %4, i64 1
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  br i1 %i.g, label %_ZN12hb_extents_tIfE9add_pointEff.exit15, label %_ZN12hb_extents_tIfE9add_pointEff.exit, !prof !267

_ZN12hb_extents_tIfE9add_pointEff.exit:           ; preds = %bb.a
  %i.k = load <4 x float>, ptr %1, align 8, !tbaa !304 ; 3 uses
  %i.l = fcmp ole <4 x float> %i.k, %i.j
  %i.m = fcmp oge <4 x float> %i.k, %i.j
  %i.n = shufflevector <4 x i1> %i.l, <4 x i1> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = select <4 x i1> %i.n, <4 x float> %i.k, <4 x float> %i.j ; 3 uses
  %i.p = extractelement <4 x float> %i.o, i64 0
  %i.q = extractelement <4 x float> %i.o, i64 2
  %i.r = fcmp ogt float %i.p, %i.q
  %i.s = insertelement <4 x float> poison, float %5, i64 0
  %i.t = insertelement <4 x float> %i.s, float %6, i64 1
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br i1 %i.r, label %_ZN12hb_extents_tIfE9add_pointEff.exit15.thread, label %_ZN12hb_extents_tIfE9add_pointEff.exit15, !prof !2051

_ZN12hb_extents_tIfE9add_pointEff.exit15:         ; preds = %bb.a, %_ZN12hb_extents_tIfE9add_pointEff.exit
  %i.v = phi <4 x float> [ %i.o, %_ZN12hb_extents_tIfE9add_pointEff.exit ], [ %i.j, %bb.a ] ; 3 uses
  %i.w = insertelement <4 x float> poison, float %5, i64 0
  %i.x = insertelement <4 x float> %i.w, float %6, i64 1
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.z = fcmp ole <4 x float> %i.v, %i.y
  %i.aa = fcmp oge <4 x float> %i.v, %i.y
  %i.ab = shufflevector <4 x i1> %i.z, <4 x i1> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ac = select <4 x i1> %i.ab, <4 x float> %i.v, <4 x float> %i.y ; 3 uses
  %i.ad = extractelement <4 x float> %i.ac, i64 0
  %i.ae = extractelement <4 x float> %i.ac, i64 2
  %i.af = fcmp ogt float %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %_ZN12hb_extents_tIfE9add_pointEff.exit15.thread, !prof !2051

bb.b:                                             ; preds = %_ZN12hb_extents_tIfE9add_pointEff.exit15
  store float %7, ptr %i.e, align 8, !tbaa !377
  store float %7, ptr %1, align 8, !tbaa !2049
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %8, ptr %i.ag, align 4, !tbaa !1030
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %8, ptr %i.ah, align 4, !tbaa !2050
  br label %_ZN12hb_extents_tIfE9add_pointEff.exit20

_ZN12hb_extents_tIfE9add_pointEff.exit15.thread:  ; preds = %_ZN12hb_extents_tIfE9add_pointEff.exit, %_ZN12hb_extents_tIfE9add_pointEff.exit15
  %i.ai = phi <4 x float> [ %i.ac, %_ZN12hb_extents_tIfE9add_pointEff.exit15 ], [ %i.u, %_ZN12hb_extents_tIfE9add_pointEff.exit ] ; 3 uses
  %i.aj = insertelement <4 x float> poison, float %7, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %8, i64 1
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.am = fcmp ole <4 x float> %i.ai, %i.al
  %i.an = fcmp oge <4 x float> %i.ai, %i.al
  %i.ao = shufflevector <4 x i1> %i.am, <4 x i1> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = select <4 x i1> %i.ao, <4 x float> %i.ai, <4 x float> %i.al
  store <4 x float> %i.ap, ptr %1, align 8, !tbaa !304
  br label %_ZN12hb_extents_tIfE9add_pointEff.exit20

_ZN12hb_extents_tIfE9add_pointEff.exit20:         ; preds = %bb.b, %_ZN12hb_extents_tIfE9add_pointEff.exit15.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL36free_static_paint_extents_draw_funcsv() #15 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL31static_paint_extents_draw_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL31static_paint_extents_draw_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !268

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_hb_Null_hb_draw_funcs_t
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a)
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t41hb_paint_extents_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26hb_paint_extents_context_t9pop_groupE25hb_paint_composite_mode_t(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1026 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1027, !noalias !6129 ; 2 uses
  %i.e = add i32 %i.b, -1                         ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload6 = load i32, ptr %i.g, align 4, !tbaa !1612 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.h = load <4 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !304 ; 2 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !1026, !noalias !6129
  %.not.i.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.not.i, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread, label %bb.b, !prof !318

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread: ; preds = %bb.a, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit
  %.sroa.0.050 = phi i32 [ %.sroa.0.0.copyload6, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit ], [ 0, %bb.a ]
  %i.i = phi <4 x float> [ %i.h, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit ], [ zeroinitializer, %bb.a ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit

bb.b:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit
  %i.j = add i32 %i.b, -2
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.k
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit: ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread, %bb.b
  %.sroa.0.049 = phi i32 [ %.sroa.0.050, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread ], [ %.sroa.0.0.copyload6, %bb.b ] ; 3 uses
  %.0.i.i = phi ptr [ @_hb_CrapPool, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread ], [ %i.l, %bb.b ] ; 14 uses
  %i.m = phi <4 x float> [ %i.i, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE3popEv.exit.thread ], [ %i.h, %bb.b ] ; 14 uses
  switch i32 %1, label %bb.l [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 7, label %bb.d
    i32 2, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit
    i32 8, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit
    i32 5, label %bb.e
    i32 6, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  store i32 2, ptr %.0.i.i, align 4, !tbaa !2091
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.d:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  store i32 %.sroa.0.049, ptr %.0.i.i, align 4, !tbaa !1612
  %.sroa.9.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store <4 x float> %i.m, ptr %.sroa.9.0..0.i.i.sroa_idx, align 4, !tbaa !304
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  switch i32 %.sroa.0.049, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit [
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %.0.i.i, align 4, !tbaa !2091
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.g:                                             ; preds = %bb.e
  %i.n = load i32, ptr %.0.i.i, align 4, !tbaa !2091
  switch i32 %i.n, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %.0.i.i, align 4, !tbaa !1612
  %.sroa.9.0..0.i.i.sroa_idx10 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store <4 x float> %i.m, ptr %.sroa.9.0..0.i.i.sroa_idx10, align 4, !tbaa !304
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.p = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.r = fcmp oge <2 x float> %i.p, %i.q
  %2 = freeze <2 x i1> %i.r
  %3 = bitcast <2 x i1> %2 to i2
  %.not = icmp eq i2 %3, 0
  br i1 %.not, label %bb.j, label %_ZN12hb_extents_tIfE9intersectERKS0_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.s = load <4 x float>, ptr %i.o, align 4      ; 5 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.v = fcmp oge <2 x float> %i.t, %i.u
  %4 = freeze <2 x i1> %i.v
  %5 = bitcast <2 x i1> %4 to i2
  %.not67 = icmp eq i2 %5, 0
  br i1 %.not67, label %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i, label %_ZN12hb_extents_tIfE9intersectERKS0_.exit.thread.i

_ZN12hb_extents_tIfE9intersectERKS0_.exit.thread.i: ; preds = %bb.j, %bb.i
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %i.o, align 4, !tbaa !304
  br label %bb.k

_ZN12hb_extents_tIfE9intersectERKS0_.exit.i:      ; preds = %bb.j
  %i.w = fcmp oge <4 x float> %i.s, %i.m
  %i.x = fcmp ole <4 x float> %i.s, %i.m
  %i.y = shufflevector <4 x i1> %i.w, <4 x i1> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.z = select <4 x i1> %i.y, <4 x float> %i.s, <4 x float> %i.m ; 3 uses
  store <4 x float> %i.z, ptr %i.o, align 4, !tbaa !304
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ac = fcmp oge <2 x float> %i.aa, %i.ab
  %6 = freeze <2 x i1> %i.ac
  %7 = bitcast <2 x i1> %6 to i2
  %.not68 = icmp eq i2 %7, 0
  br i1 %.not68, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i, %_ZN12hb_extents_tIfE9intersectERKS0_.exit.thread.i
  store i32 2, ptr %.0.i.i, align 4, !tbaa !2091
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.l:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  switch i32 %.sroa.0.049, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.0.i.i, align 4, !tbaa !2091
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = load i32, ptr %.0.i.i, align 4, !tbaa !2091
  switch i32 %i.ad, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit [
    i32 2, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %.0.i.i, align 4, !tbaa !1612
  %.sroa.9.0..0.i.i.sroa_idx12 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store <4 x float> %i.m, ptr %.sroa.9.0..0.i.i.sroa_idx12, align 4, !tbaa !304
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.p:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.af = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ag = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ah = fcmp oge <2 x float> %i.af, %i.ag
  %8 = freeze <2 x i1> %i.ah
  %9 = bitcast <2 x i1> %8 to i2
  %.not69 = icmp eq i2 %9, 0
  br i1 %.not69, label %bb.q, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.q:                                             ; preds = %bb.p
  %i.ai = load <4 x float>, ptr %i.ae, align 4    ; 5 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ak = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.al = fcmp oge <2 x float> %i.aj, %i.ak
  %10 = freeze <2 x i1> %i.al
  %11 = bitcast <2 x i1> %10 to i2
  %.not70 = icmp eq i2 %11, 0
  br i1 %.not70, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store <4 x float> %i.m, ptr %i.ae, align 4, !tbaa !304
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.s:                                             ; preds = %bb.q
  %i.am = fcmp ole <4 x float> %i.ai, %i.m
  %i.an = fcmp oge <4 x float> %i.ai, %i.m
  %i.ao = shufflevector <4 x i1> %i.am, <4 x i1> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = select <4 x i1> %i.ao, <4 x float> %i.ai, <4 x float> %i.m
  store <4 x float> %i.ap, ptr %i.ae, align 4, !tbaa !304
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

_ZN11hb_bounds_tIfE9intersectERKS0_.exit:         ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1026 ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1027
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.f
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.b ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1026 ; 2 uses
  %.not.i.not.i3 = icmp eq i32 %i.i, 0
  br i1 %.not.i.not.i3, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit5

bb.e:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  %i.j = add i32 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1027
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %i.m
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit5

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit5: ; preds = %bb.d, %bb.e
  %.0.i.i4 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.n, %bb.e ] ; 7 uses
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !2091
  switch i32 %i.o, label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit5
  store i32 0, ptr %.0.i.i4, align 4, !tbaa !2091
  br label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit5
  %i.p = load i32, ptr %.0.i.i4, align 4, !tbaa !2091
  switch i32 %i.p, label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit [
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.0.i.i4, ptr noundef nonnull align 4 dereferenceable(20) %.0.i.i, i64 20, i1 false), !tbaa.struct !6130
  br label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !2049 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !377
  %i.v = fcmp oge float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fcmp oge float %i.x, %i.z
  %i.ab = select i1 %i.v, i1 true, i1 %i.aa
  br i1 %i.ab, label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load float, ptr %i.q, align 4, !tbaa !2049 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 12 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !377 ; 3 uses
  %i.af = fcmp oge float %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4          ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 16 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4          ; 3 uses
  %i.ak = fcmp oge float %i.ah, %i.aj
  %i.al = select i1 %i.af, i1 true, i1 %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !6131
  br label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = fcmp ole float %i.ac, %i.s
  %i.an = select i1 %i.am, float %i.ac, float %i.s
  store float %i.an, ptr %i.q, align 4, !tbaa !2049
  %i.ao = load float, ptr %i.w, align 4, !tbaa !304 ; 2 uses
  %i.ap = fcmp ole float %i.ah, %i.ao
  %i.aq = select i1 %i.ap, float %i.ah, float %i.ao
  store float %i.aq, ptr %i.ag, align 4, !tbaa !2050
  %i.ar = load float, ptr %i.t, align 4, !tbaa !304 ; 2 uses
  %i.as = fcmp oge float %i.ae, %i.ar
  %i.at = select i1 %i.as, float %i.ae, float %i.ar
  store float %i.at, ptr %i.ad, align 4, !tbaa !377
  %i.au = load float, ptr %i.y, align 4, !tbaa !304 ; 2 uses
  %i.av = fcmp oge float %i.aj, %i.au
  %i.aw = select i1 %i.av, float %i.aj, float %i.au
  store float %i.aw, ptr %i.ai, align 4, !tbaa !1030
  br label %_ZN11hb_bounds_tIfE6union_ERKS0_.exit

_ZN11hb_bounds_tIfE6union_ERKS0_.exit:            ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit5, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZ29hb_paint_normalize_color_lineE3$_0EvPT_mT0_"(ptr noundef %0, i64 noundef %1) unnamed_addr #43 {
bb.a:
  %2 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %3 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %4 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %6 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %7 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %i.a = icmp ugt i64 %1, 24
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.04671 = phi i64 [ %.147, %bb.n ], [ %1, %bb.a ] ; 3 uses
  %.04870 = phi ptr [ %.149, %bb.n ], [ %0, %bb.a ] ; 12 uses
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %.04870, i64 %.04671 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12 ; 3 uses
  %i.d = lshr i64 %.04671, 1
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.04870, i64 %i.d ; 11 uses
  %.048.val63 = load float, ptr %.04870, align 4, !tbaa !1501
  %.val64 = load float, ptr %i.e, align 4, !tbaa !1501 ; 2 uses
  %i.f = fcmp ogt float %.048.val63, %.val64
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.04870, i64 12, i1 false), !tbaa.struct !1502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.04870, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.val61.pre = load float, ptr %i.e, align 4, !tbaa !1501
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.val61 = phi float [ %.val61.pre, %bb.b ], [ %.val64, %.lr.ph ]
  %.val62 = load float, ptr %i.c, align 4, !tbaa !1501
  %i.g = fcmp ogt float %.val61, %.val62
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !1502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.048.val = load float, ptr %.04870, align 4, !tbaa !1501
  %.val60 = load float, ptr %i.e, align 4, !tbaa !1501
  %i.h = fcmp ogt float %.048.val, %.val60
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %.04870, i64 12, i1 false), !tbaa.struct !1502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.04870, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !1502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

end_hunk_3
