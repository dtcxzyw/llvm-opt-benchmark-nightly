Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.zc = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.zb ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 4
  %i.ze = load i32, ptr %i.zd, align 4
  %.fr = freeze i32 %i.ze                         ; 2 uses
  %i.zf = and i32 %.fr, 2
  %.not.i.i.i61.i = icmp eq i32 %i.zf, 0
  br i1 %.not.i.i.i61.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i, label %bb.cx, !llvm.loop !655

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i: ; preds = %.lr.ph.i.i60.i, %._crit_edge.i.i.i247, %._crit_edge.i.i.i247.thread
  %.0.i62.i = phi ptr [ %i.ys, %._crit_edge.i.i.i247.thread ], [ %spec.select, %._crit_edge.i.i.i247 ], [ @_hb_NullPool, %.lr.ph.i.i60.i ]
  %i.zg = load i32, ptr %.0.i62.i, align 4, !tbaa !762
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i: ; preds = %.lr.ph.i.i.i229, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread473.i, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i, %bb.cv, %bb.cu
  %.040.i = phi i32 [ %i.zg, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit.i ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.i ], [ 0, %bb.cu ], [ 0, %bb.cv ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread473.i ], [ 0, %.lr.ph.i.i.i229 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %.not.i63.i = icmp samesign ult i64 %indvars.iv328.i, %i.xk ; 4 uses
  br i1 %.not.i63.i, label %bb.cz, label %bb.cy, !prof !97

bb.cy:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i

bb.cz:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread.i
  %i.zh = getelementptr inbounds nuw [16 x i8], ptr %i.wx, i64 %indvars.iv328.i
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i

_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i:       ; preds = %bb.cz, %bb.cy
  %.0.i64.i = phi ptr [ @_hb_CrapPool, %bb.cy ], [ %i.zh, %bb.cz ]
  store ptr %.0.i64.i, ptr %6, align 8, !tbaa !119
  %.not.i230 = icmp eq i32 %.040.i, %i.wk
  br i1 %.not.i230, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i
  %i.zi = sub nsw i32 %.040.i, %i.wl
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.zi)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit.i
  %i.zj = load i8, ptr %i.xc, align 8, !tbaa !120, !range !121, !noundef !122
  %i.zk = trunc nuw i8 %i.zj to i1
  br i1 %i.zk, label %bb.dc, label %bb.hz

bb.dc:                                            ; preds = %bb.db
  %i.zl = load i32, ptr %i.xd, align 4, !tbaa !763
  %i.zm = zext i32 %i.zl to i64
  %i.zn = icmp samesign ult i64 %indvars.iv328.i, %i.zm
  br i1 %i.zn, label %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit.i, label %bb.hz

_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit.i: ; preds = %bb.dc
  %i.zo = load ptr, ptr %i.xe, align 8, !tbaa !123
  %i.zp = getelementptr inbounds nuw [16 x i8], ptr %i.zo, i64 %indvars.iv328.i ; 13 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 4 ; 13 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !126 ; 2 uses
  %.not45.i = icmp eq i32 %i.zr, 0
  br i1 %.not45.i, label %bb.hz, label %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i

_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i: ; preds = %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.zs = shl i32 %i.zr, 1                        ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.zs, 0
  br i1 %.not.i.not.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.lr.ph.i.i.i, label %.preheader.i.i.i.i, !prof !97

.preheader.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i, %.preheader.i.i.i.i
  %.039.i.i.i.i = phi i32 [ %i.zv, %.preheader.i.i.i.i ], [ 0, %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i ] ; 2 uses
  %i.zt = lshr i32 %.039.i.i.i.i, 1
  %i.zu = add i32 %.039.i.i.i.i, 8
  %i.zv = add i32 %i.zu, %i.zt                    ; 6 uses
  %i.zw = icmp ugt i32 %i.zs, %i.zv
  br i1 %i.zw, label %.preheader.i.i.i.i, label %.thread.i.i.i.i, !llvm.loop !3

.thread.i.i.i.i:                                  ; preds = %.preheader.i.i.i.i
  %i.zx = icmp ugt i32 %i.zv, 107374182
  br i1 %i.zx, label %.sink.split.i.i.i.i, label %bb.dd, !prof !99

bb.dd:                                            ; preds = %.thread.i.i.i.i
  %i.zy = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.zv) ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %i.zy, null
  br i1 %.not22.i.i.i.i, label %bb.de, label %bb.dg, !prof !99

bb.de:                                            ; preds = %bb.dd
  %i.zz = load i32, ptr %5, align 8, !tbaa !127   ; 2 uses
  %.not23.i.i.i.i = icmp ugt i32 %i.zv, %i.zz
  br i1 %.not23.i.i.i.i, label %bb.df, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.aaa = xor i32 %i.zz, -1
  br label %.sink.split.i.i.i.i

bb.dg:                                            ; preds = %bb.dd
  store ptr %i.zy, ptr %i.xf, align 8, !tbaa !128
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.dg, %bb.df, %.thread.i.i.i.i
  %.sink.i.i.i.i = phi i32 [ %i.aaa, %bb.df ], [ %i.zv, %bb.dg ], [ -1, %.thread.i.i.i.i ]
  store i32 %.sink.i.i.i.i, ptr %5, align 8, !tbaa !127
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.de
  %.pr.i.i.i = load i32, ptr %i.zq, align 4, !tbaa !126
  %.not981.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not981.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5clearEv.exit.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.lr.ph.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.lr.ph.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i, %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EEixEi.exit69.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 2 uses
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i

._crit_edge.i.i70.i:                              ; preds = %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i
  %.not5.i.i.i.i.i = icmp eq i32 %i.akp, 0
  br i1 %.not5.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i.i70.i
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !128
  %i.aad = getelementptr inbounds nuw [40 x i8], ptr %i.aac, i64 %i.akq
  br label %.lr.ph.i.i.i.i.i236

.lr.ph.i.i.i.i.i236:                              ; preds = %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.aaf, %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i ], [ %i.aad, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.046.i.i.i.i.i = phi i32 [ %i.aae, %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i ], [ %i.akp, %.lr.ph.preheader.i.i.i.i.i ]
  %i.aae = add i32 %.046.i.i.i.i.i, -1            ; 2 uses
  %i.aaf = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -40 ; 2 uses
  %i.aag = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !131
  %i.aai = add i32 %i.aah, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.aai, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.dh, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i.i

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i.i236
  %i.aaj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -20
  store i32 0, ptr %i.aaj, align 4, !tbaa !132
  %i.aak = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !133
  call void @hb_free(ptr noundef %i.aal) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i.i:     ; preds = %bb.dh, %.lr.ph.i.i.i.i.i236
  %i.aam = load i32, ptr %i.aaf, align 8, !tbaa !136
  %i.aan = add i32 %i.aam, -1
  %spec.select.i.i.i1.i.i.i.i.i.i = icmp ult i32 %i.aan, -2
  br i1 %spec.select.i.i.i1.i.i.i.i.i.i, label %bb.di, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i

bb.di:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i.i
  %i.aao = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -36
  store i32 0, ptr %i.aao, align 4, !tbaa !137
  %i.aap = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !138
  call void @hb_free(ptr noundef %i.aaq) #16
  br label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i

_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i:         ; preds = %bb.di, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i.i
  %.not.i.i.i.i71.i = icmp eq i32 %i.aae, 0
  br i1 %.not.i.i.i.i71.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i236, !llvm.loop !4

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5clearEv.exit.i.i.i: ; preds = %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i.i, %._crit_edge.i.i70.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i
  store i32 0, ptr %i.zq, align 4, !tbaa !126
  %i.aar = load i32, ptr %i.xh, align 4, !tbaa !126
  %.not983.i.i.i = icmp eq i32 %i.aar, 0
  br i1 %.not983.i.i.i, label %._crit_edge979.thread.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit284.lr.ph.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit284.lr.ph.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5clearEv.exit.i.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit284.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i: ; preds = %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.lr.ph.i.i.i
  %indvars.iv999.i.i.i = phi i64 [ 0, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.lr.ph.i.i.i ], [ %indvars.iv.next1000.i.i.i, %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i ] ; 2 uses
  %i.aat = load ptr, ptr %i.aab, align 8, !tbaa !128
  %i.aau = getelementptr inbounds nuw [40 x i8], ptr %i.aat, i64 %indvars.iv999.i.i.i ; 12 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 32 ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !140 ; 2 uses
  switch i32 %i.aaw, label %bb.fl [
    i32 22, label %.preheader.i55.i.i.i
    i32 4, label %.preheader.i55.i.i.i
    i32 6, label %bb.dt
    i32 7, label %bb.dt
    i32 5, label %.preheader.i.i.i
    i32 8, label %.preheader956.i.i.i
  ]

.preheader956.i.i.i:                              ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 4 ; 3 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !764
  %i.aaz = icmp ugt i32 %i.aay, 5
  br i1 %i.aaz, label %.preheader.i221.lr.ph.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i

.preheader.i221.lr.ph.i.i.i:                      ; preds = %.preheader956.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  br label %.preheader.i221.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aau, i64 4 ; 4 uses
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !764
  %i.abd = icmp ugt i32 %i.abc, 1
  br i1 %i.abd, label %.preheader.i164.lr.ph.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i

.preheader.i164.lr.ph.i.i.i:                      ; preds = %.preheader.i.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aau, i64 8 ; 2 uses
  br label %.preheader.i164.i.i.i

.preheader.i55.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i
  %i.abf = call ptr @hb_realloc(ptr noundef null, i64 noundef 64) #16 ; 10 uses
  %.not22.i57.not.not.i.i.i = icmp eq ptr %i.abf, null ; 5 uses
  %i.abg = load i32, ptr %i.aav, align 8, !tbaa !140
  switch i32 %i.abg, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i [
    i32 22, label %bb.dj
    i32 4, label %bb.dk
  ]

bb.dj:                                            ; preds = %.preheader.i55.i.i.i
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aau, i64 4
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !764
  %.not.i.i.i244 = icmp eq i32 %i.abi, 0
  br i1 %.not.i.i.i244, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit.i.i.i: ; preds = %bb.dj
  br i1 %.not22.i57.not.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit.i.i.i
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !138
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !142
  store i64 %i.abl, ptr %i.abf, align 8, !tbaa !142
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store i64 0, ptr %i.abm, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i

bb.dk:                                            ; preds = %.preheader.i55.i.i.i
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aau, i64 4
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !137
  %.not51.i.i.i = icmp eq i32 %i.abo, 0
  br i1 %.not51.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  br i1 %.not22.i57.not.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i: ; preds = %bb.dl
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i: ; preds = %bb.dl
  store i64 0, ptr %i.abf, align 8, !tbaa !142
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !138
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abs = load i64, ptr %i.abq, align 8, !tbaa !142
  store i64 %i.abs, ptr %i.abr, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i, %bb.dk, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i, %bb.dj, %.preheader.i55.i.i.i
  %.sroa.43833.0.i.i.i = phi ptr [ %i.abf, %bb.dk ], [ null, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i ], [ %i.abf, %.preheader.i55.i.i.i ], [ %i.abf, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i ], [ null, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i ], [ %i.abf, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i ], [ %i.abf, %bb.dj ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.dk ], [ true, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i ], [ true, %.preheader.i55.i.i.i ], [ false, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i ], [ true, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i ], [ false, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i ], [ true, %bb.dj ]
  %.sroa.23822.0.i.i.i = phi i32 [ 0, %bb.dk ], [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i ], [ 0, %.preheader.i55.i.i.i ], [ 2, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i ], [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i ], [ 2, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i ], [ 0, %bb.dj ] ; 3 uses
  %.sroa.0807.0.i.i.i = phi i1 [ %.not22.i57.not.not.i.i.i, %bb.dk ], [ true, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit79.i.i.i ], [ %.not22.i57.not.not.i.i.i, %.preheader.i55.i.i.i ], [ false, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i.i.i ], [ true, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit341.i.i.i ], [ false, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit82.i.i.i ], [ %.not22.i57.not.not.i.i.i, %bb.dj ]
  %i.abt = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.abu = load i32, ptr %5, align 8, !tbaa !127  ; 5 uses
  %.not.i89.i.i.i = icmp slt i32 %i.abt, %i.abu
  br i1 %.not.i89.i.i.i, label %.critedge.i91.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i
  %i.abv = add i32 %i.abt, 1                      ; 2 uses
  %i.abw = icmp slt i32 %i.abu, 0
  br i1 %i.abw, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i.i.i.i, label %bb.dn, !prof !99

bb.dn:                                            ; preds = %bb.dm
  %.not.i.i90.i.i.i = icmp ugt i32 %i.abv, %i.abu
  br i1 %.not.i.i90.i.i.i, label %.preheader.i.i.i.i.i, label %.critedge.i91.i.i.i, !prof !99

.preheader.i.i.i.i.i:                             ; preds = %bb.dn, %.preheader.i.i.i.i.i
  %.039.i.i.i.i.i = phi i32 [ %i.abz, %.preheader.i.i.i.i.i ], [ %i.abu, %bb.dn ] ; 2 uses
  %i.abx = lshr i32 %.039.i.i.i.i.i, 1
  %i.aby = add i32 %.039.i.i.i.i.i, 8
  %i.abz = add i32 %i.aby, %i.abx                 ; 6 uses
  %i.aca = icmp ugt i32 %i.abv, %i.abz
  br i1 %i.aca, label %.preheader.i.i.i.i.i, label %.thread.i.i.i.i.i, !llvm.loop !3

.thread.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i
  %i.acb = icmp ugt i32 %i.abz, 107374182
  br i1 %i.acb, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i.i.i.i, label %bb.do, !prof !99

bb.do:                                            ; preds = %.thread.i.i.i.i.i
  %i.acc = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.abz) ; 2 uses
  %.not22.i.i.i.i.i = icmp eq ptr %i.acc, null
  br i1 %.not22.i.i.i.i.i, label %bb.dp, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i.i, !prof !99

bb.dp:                                            ; preds = %bb.do
  %i.acd = load i32, ptr %5, align 8, !tbaa !127  ; 2 uses
  %.not23.i.i.i.i.i = icmp ugt i32 %i.abz, %i.acd
  br i1 %.not23.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i.i.i.i, label %.critedge.i91.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i.i.i.i: ; preds = %bb.dp, %.thread.i.i.i.i.i
  %.sink.i.ph.in.i.i.i.i = phi i32 [ %i.abu, %.thread.i.i.i.i.i ], [ %i.acd, %bb.dp ]
  %.sink.i.ph.i.i.i.i = xor i32 %.sink.i.ph.in.i.i.i.i, -1
  store i32 %.sink.i.ph.i.i.i.i, ptr %5, align 8, !tbaa !127
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i.i: ; preds = %bb.do
  store ptr %i.acc, ptr %i.xf, align 8, !tbaa !128
  store i32 %i.abz, ptr %5, align 8, !tbaa !127
  br label %.critedge.i91.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i.i.i.i, %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i73.i

.critedge.i91.i.i.i:                              ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i.i.i.i, %bb.dp, %bb.dn, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit73.i.i.i
  %i.ace = load ptr, ptr %i.xf, align 8, !tbaa !128
  %i.acf = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.acg = add i32 %i.acf, 1
  store i32 %i.acg, ptr %i.xh, align 4, !tbaa !126
  %i.ach = zext i32 %i.acf to i64
  %i.aci = getelementptr inbounds nuw [40 x i8], ptr %i.ace, i64 %i.ach ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aci, i8 0, i64 16, i1 false)
  %i.acj = call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(36) %i.aci, i32 noundef %.sroa.23822.0.i.i.i, i1 noundef zeroext true) ; 0 uses
  %i.ack = load i32, ptr %i.aci, align 8, !tbaa !136
  %i.acl = icmp slt i32 %i.ack, 0
  br i1 %i.acl, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit.i.i.i, label %bb.dq, !prof !99

bb.dq:                                            ; preds = %.critedge.i91.i.i.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 4 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i.i.i, label %bb.dr, !prof !99

bb.dr:                                            ; preds = %bb.dq
  %i.acn = shl nuw nsw i32 %.sroa.23822.0.i.i.i, 3
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !138
  %i.acr = load i32, ptr %i.acm, align 4, !tbaa !137
  %i.acs = zext i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.acs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.act, ptr readonly align 1 %.sroa.43833.0.i.i.i, i64 %i.aco, i1 false), !alias.scope !765
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i.i.i: ; preds = %bb.dr, %bb.dq
  %i.acu = load i32, ptr %i.acm, align 4, !tbaa !137
  %i.acv = add i32 %i.acu, %.sroa.23822.0.i.i.i
  store i32 %i.acv, ptr %i.acm, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i.i.i.i, %.critedge.i91.i.i.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aci, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acw, i8 0, i64 16, i1 false)
  store i32 21, ptr %i.acx, align 8, !tbaa !140
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i73.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i73.i:       ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i.i.i.i
  br i1 %.sroa.0807.0.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i73.i
  call void @hb_free(ptr noundef %.sroa.43833.0.i.i.i) #16
  br label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i

bb.dt:                                            ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EEixEi.exit.i.i.i
  %i.acy = icmp eq i32 %i.aaw, 6
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aau, i64 4 ; 4 uses
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !764
  %.not982.i.i.i = icmp eq i32 %i.ada, 0
  br i1 %.not982.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i, label %.preheader.i95.lr.ph.i.i.i

.preheader.i95.lr.ph.i.i.i:                       ; preds = %bb.dt
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aau, i64 8 ; 2 uses
  br label %.preheader.i95.i.i.i

.preheader.i95.i.i.i:                             ; preds = %_ZN3CFF12cs_command_tD2Ev.exit161.i.i.i, %.preheader.i95.lr.ph.i.i.i
  %indvars.iv996.i.i.i = phi i64 [ 0, %.preheader.i95.lr.ph.i.i.i ], [ %indvars.iv.next997.i.i.i, %_ZN3CFF12cs_command_tD2Ev.exit161.i.i.i ] ; 7 uses
  %i.adc = call ptr @hb_realloc(ptr noundef null, i64 noundef 64) #16 ; 7 uses
  %.not22.i100.not.i.i.i = icmp ne ptr %i.adc, null ; 3 uses
  %i.add = and i64 %indvars.iv996.i.i.i, 1
  %i.ade = icmp eq i64 %i.add, 0
  %i.adf = trunc i64 %indvars.iv996.i.i.i to i1
  %i.adg = select i1 %i.acy, i1 %i.ade, i1 %i.adf ; 2 uses
  br i1 %.not22.i100.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.thread.i.i.i, !prof !766

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.i.i.i: ; preds = %.preheader.i95.i.i.i
  br i1 %i.adg, label %bb.du, label %.critedge.i132.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.thread.i.i.i: ; preds = %.preheader.i95.i.i.i
  br i1 %i.adg, label %bb.du, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i

bb.du:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.thread.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.i.i.i
  %.sink.i104924.i.i.i = phi i32 [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.thread.i.i.i ], [ 8, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.i.i.i ]
  %i.adh = load i32, ptr %i.acz, align 4, !tbaa !137
  %i.adi = zext i32 %i.adh to i64
  %.not.i113.i.i.i = icmp samesign ult i64 %indvars.iv996.i.i.i, %i.adi
  br i1 %.not.i113.i.i.i, label %bb.dw, label %bb.dv, !prof !97

bb.dv:                                            ; preds = %bb.du
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i

bb.dw:                                            ; preds = %bb.du
  %i.adj = load ptr, ptr %i.adb, align 8, !tbaa !138
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %indvars.iv996.i.i.i
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i: ; preds = %bb.dw, %bb.dv
  %.0.i114.i.i.i = phi ptr [ @_hb_CrapPool, %bb.dv ], [ %i.adk, %bb.dw ]
  br i1 %.not22.i100.not.i.i.i, label %.critedge.i126.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

.critedge.i126.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i
  %i.adl = load i64, ptr %.0.i114.i.i.i, align 8, !tbaa !142
  store i64 %i.adl, ptr %i.adc, align 8, !tbaa !142
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store i64 0, ptr %i.adm, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.thread.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i

.critedge.i132.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.i.i.i
  store i64 0, ptr %i.adc, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i: ; preds = %.critedge.i132.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i
  %.sroa.0728.7.i.i.i = phi i32 [ 8, %.critedge.i132.i.i.i ], [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i ] ; 2 uses
  %.sroa.23.3.i.i.i = phi i32 [ 1, %.critedge.i132.i.i.i ], [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i ] ; 4 uses
  %i.adn = load i32, ptr %i.acz, align 4, !tbaa !137
  %i.ado = zext i32 %i.adn to i64
  %.not.i134.i.i.i = icmp samesign ult i64 %indvars.iv996.i.i.i, %i.ado
  br i1 %.not.i134.i.i.i, label %bb.dy, label %bb.dx, !prof !97

bb.dx:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i

bb.dy:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i
  %i.adp = load ptr, ptr %i.adb, align 8, !tbaa !138
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adp, i64 %indvars.iv996.i.i.i
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i: ; preds = %bb.dy, %bb.dx
  %.0.i135.i.i.i = phi ptr [ @_hb_CrapPool, %bb.dx ], [ %i.adq, %bb.dy ]
  %.not.i137.i.i.i = icmp slt i32 %.sroa.23.3.i.i.i, %.sroa.0728.7.i.i.i ; 2 uses
  %brmerge.i.i.i = or i1 %.not22.i100.not.i.i.i, %.not.i137.i.i.i
  br i1 %brmerge.i.i.i, label %.critedge.i141.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i, !prof !767

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

.critedge.i141.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i
  %.sroa.0728.7.mux.i.i.i = select i1 %.not.i137.i.i.i, i32 %.sroa.0728.7.i.i.i, i32 1, !prof !768
  %i.adr = add nuw nsw i32 %.sroa.23.3.i.i.i, 1
  %i.ads = zext nneg i32 %.sroa.23.3.i.i.i to i64
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adc, i64 %i.ads
  %i.adu = load i64, ptr %.0.i135.i.i.i, align 8, !tbaa !142
  store i64 %i.adu, ptr %i.adt, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i: ; preds = %.critedge.i141.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i, %.critedge.i126.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i
  %.sroa.0728.0.i.i.i = phi i32 [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i ], [ %.sink.i104924.i.i.i, %.critedge.i126.i.i.i ], [ %.sroa.0728.7.mux.i.i.i, %.critedge.i141.i.i.i ], [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i ]
  %.sroa.23.0.i.i.i = phi i32 [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i ], [ 2, %.critedge.i126.i.i.i ], [ %i.adr, %.critedge.i141.i.i.i ], [ %.sroa.23.3.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i ] ; 6 uses
  %i.adv = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.adw = load i32, ptr %5, align 8, !tbaa !127  ; 5 uses
  %.not.i143.i.i.i = icmp slt i32 %i.adv, %i.adw
  br i1 %.not.i143.i.i.i, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i
  %i.adx = add i32 %i.adv, 1                      ; 2 uses
  %i.ady = icmp slt i32 %i.adw, 0
  br i1 %i.ady, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i, label %bb.ea, !prof !99

bb.ea:                                            ; preds = %bb.dz
  %.not.i.i144.i.i.i = icmp ugt i32 %i.adx, %i.adw
  br i1 %.not.i.i144.i.i.i, label %.preheader.i.i147.i.i.i, label %bb.ed, !prof !99

.preheader.i.i147.i.i.i:                          ; preds = %bb.ea, %.preheader.i.i147.i.i.i
  %.039.i.i148.i.i.i = phi i32 [ %i.aeb, %.preheader.i.i147.i.i.i ], [ %i.adw, %bb.ea ] ; 2 uses
  %i.adz = lshr i32 %.039.i.i148.i.i.i, 1
  %i.aea = add i32 %.039.i.i148.i.i.i, 8
  %i.aeb = add i32 %i.aea, %i.adz                 ; 6 uses
  %i.aec = icmp ugt i32 %i.adx, %i.aeb
  br i1 %i.aec, label %.preheader.i.i147.i.i.i, label %.thread.i.i149.i.i.i, !llvm.loop !3

.thread.i.i149.i.i.i:                             ; preds = %.preheader.i.i147.i.i.i
  %i.aed = icmp ugt i32 %i.aeb, 107374182
  br i1 %i.aed, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i, label %bb.eb, !prof !99

bb.eb:                                            ; preds = %.thread.i.i149.i.i.i
  %i.aee = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.aeb) ; 2 uses
  %.not22.i.i150.i.i.i = icmp eq ptr %i.aee, null
  br i1 %.not22.i.i150.i.i.i, label %bb.ec, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i151.i.i.i, !prof !99

bb.ec:                                            ; preds = %bb.eb
  %i.aef = load i32, ptr %5, align 8, !tbaa !127  ; 2 uses
  %.not23.i.i152.i.i.i = icmp ugt i32 %i.aeb, %i.aef
  br i1 %.not23.i.i152.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i, label %bb.ed

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i: ; preds = %bb.ec, %.thread.i.i149.i.i.i
  %.sink.i.ph.in.i154.i.i.i = phi i32 [ %i.adw, %.thread.i.i149.i.i.i ], [ %i.aef, %bb.ec ]
  %.sink.i.ph.i155.i.i.i = xor i32 %.sink.i.ph.in.i154.i.i.i, -1
  store i32 %.sink.i.ph.i155.i.i.i, ptr %5, align 8, !tbaa !127
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i151.i.i.i: ; preds = %bb.eb
  store ptr %i.aee, ptr %i.xf, align 8, !tbaa !128
  store i32 %i.aeb, ptr %5, align 8, !tbaa !127
  br label %bb.ed

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i, %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i159.i.i.i

bb.ed:                                            ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i151.i.i.i, %bb.ec, %bb.ea, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i
  %i.aeg = load ptr, ptr %i.xf, align 8, !tbaa !128
  %i.aeh = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.aei = add i32 %i.aeh, 1
  store i32 %i.aei, ptr %i.xh, align 4, !tbaa !126
  %i.aej = zext i32 %i.aeh to i64
  %i.aek = getelementptr inbounds nuw [40 x i8], ptr %i.aeg, i64 %i.aej ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aek, i8 0, i64 16, i1 false)
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 4 ; 3 uses
  %.not19.i.not.i.i.i = icmp eq i32 %.sroa.23.0.i.i.i, 0
  br i1 %.not19.i.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i470.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i: ; preds = %bb.ed
  %i.aem = shl nuw nsw i32 %.sroa.23.0.i.i.i, 3
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aen) #16 ; 2 uses
  %.not22.i599.i.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not22.i599.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i, !prof !100

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i
  %.pre1010.i.i.i = load i32, ptr %i.aek, align 8, !tbaa !136 ; 3 uses
  %.not23.i606.i.i.i = icmp ugt i32 %.sroa.23.0.i.i.i, %.pre1010.i.i.i
  br i1 %.not23.i606.i.i.i, label %bb.ee, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i

bb.ee:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i
  %i.aep = xor i32 %.pre1010.i.i.i, -1
  br label %.sink.split.i602.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  store ptr %i.aeo, ptr %i.aeq, align 8, !tbaa !138
  br label %.sink.split.i602.i.i.i

.sink.split.i602.i.i.i:                           ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i, %bb.ee
  %.sink.i603.i.i.i = phi i32 [ %i.aep, %bb.ee ], [ %.sroa.23.0.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i ] ; 2 uses
  store i32 %.sink.i603.i.i.i, ptr %i.aek, align 8, !tbaa !136
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i: ; preds = %.sink.split.i602.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i
  %i.aer = phi i32 [ %.sink.i603.i.i.i, %.sink.split.i602.i.i.i ], [ %.pre1010.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i ]
  %i.aes = icmp slt i32 %i.aer, 0
  br i1 %i.aes, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit488.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.thread.i.i.i, !prof !769
end_hunk_0
