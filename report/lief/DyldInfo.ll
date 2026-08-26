Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldInfo?download=true
inline.NumInlined: 6011
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a
  %i.gm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.56, i64 37)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.db

bb.ah:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ad
  %.sroa.38.11 = phi ptr [ %i.gl, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.38.4, %bb.ad ] ; 4 uses
  %.0.lcssa.i.i.i.i.i125.pn = phi ptr [ %.0.lcssa.i.i.i.i.i125, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.22.4, %bb.ad ] ; 2 uses
  %.sroa.0269.11 = phi ptr [ %i.gf, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0269.4, %bb.ad ] ; 3 uses
  %.sroa.22.10 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i125.pn, i64 24 ; 4 uses
  %i.go = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 88
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !758, !range !128, !noundef !129
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = select i1 %i.gr, i64 8, i64 4
  %i.gt = add i64 %i.gs, %.181                    ; 2 uses
  %.not89 = icmp ult i64 %i.gt, %.376
  %spec.store.select = select i1 %.not89, i64 %i.gt, i64 0
  %i.gu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0266.0367) #30 ; 2 uses
  %.not335 = icmp eq ptr %i.gu, %i.n
  br i1 %.not335, label %._crit_edge377, label %.lr.ph376

._crit_edge377:                                   ; preds = %bb.ah
  %.not.i127 = icmp eq ptr %.sroa.22.10, %.sroa.38.11
  br i1 %.not.i127, label %._crit_edge377.thread, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge377
  store i8 0, ptr %.sroa.22.10, align 8, !tbaa !729
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i125.pn, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  br label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit140

._crit_edge377.thread:                            ; preds = %._crit_edge, %._crit_edge377
  %.sroa.0269.0.lcssa463 = phi ptr [ %.sroa.0269.11, %._crit_edge377 ], [ null, %._crit_edge ] ; 5 uses
  %.sroa.38.0.lcssa462 = phi ptr [ %.sroa.38.11, %._crit_edge377 ], [ null, %._crit_edge ] ; 3 uses
  %i.gw = ptrtoint ptr %.sroa.38.0.lcssa462 to i64
  %i.gx = ptrtoint ptr %.sroa.0269.0.lcssa463 to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 4 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775800
  br i1 %i.gz, label %bb.aj, label %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128

bb.aj:                                            ; preds = %._crit_edge377.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #28
  unreachable

_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %._crit_edge377.thread
  %i.ha = sdiv exact i64 %i.gy, 24                ; 3 uses
  %.sroa.speculated.i.i.i129 = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i129, %i.ha ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.ha
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hb, i64 384307168202282325)
  %i.he = select i1 %i.hc, i64 384307168202282325, i64 %i.hd ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i130)
  %i.hf = mul nuw nsw i64 %i.he, 24
  %i.hg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #29 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gy ; 2 uses
  store i8 0, ptr %i.hh, align 8, !tbaa !729
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.not10.i.i.i.i.i131 = icmp eq ptr %.sroa.0269.0.lcssa463, %.sroa.38.0.lcssa462
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  br i1 %.not10.i.i.i.i.i131, label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i136, label %.lr.ph.i.i.i.i.i132

.lr.ph.i.i.i.i.i132:                              ; preds = %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128, %.lr.ph.i.i.i.i.i132
  %.012.i.i.i.i.i133 = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i132 ], [ %i.hg, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128 ] ; 2 uses
  %.0911.i.i.i.i.i134 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i132 ], [ %.sroa.0269.0.lcssa463, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i133, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i134, i64 24, i1 false), !tbaa.struct !733, !alias.scope !828
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i134, i64 24 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i133, i64 24 ; 2 uses
  %.not.i.i.i.i.i135 = icmp eq ptr %i.hj, %.sroa.38.0.lcssa462
  br i1 %.not.i.i.i.i.i135, label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i136, label %.lr.ph.i.i.i.i.i132, !llvm.loop !738

_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i136: ; preds = %.lr.ph.i.i.i.i.i132, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128
  %.0.lcssa.i.i.i.i.i137 = phi ptr [ %i.hg, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i128 ], [ %i.hk, %.lr.ph.i.i.i.i.i132 ]
  %.not.i24.i.i138 = icmp eq ptr %.sroa.0269.0.lcssa463, null
  br i1 %.not.i24.i.i138, label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0269.0.lcssa463, i64 noundef %i.gy) #27
  br label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139

_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139: ; preds = %bb.ak, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i136
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %i.he
  br label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit140

_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit140: ; preds = %bb.ai, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139
  %.sroa.38.12 = phi ptr [ %i.hl, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139 ], [ %.sroa.38.11, %bb.ai ]
  %.0.lcssa.i.i.i.i.i137.pn = phi ptr [ %.0.lcssa.i.i.i.i.i137, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139 ], [ %.sroa.22.10, %bb.ai ] ; 2 uses
  %.sroa.0269.12 = phi ptr [ %i.hg, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i139 ], [ %.sroa.0269.11, %bb.ai ] ; 12 uses
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit140
  %.sroa.0218.0 = phi ptr [ %.sroa.0269.12, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit140 ], [ %i.hz, %.loopexit ] ; 8 uses
  %.sroa.0228.0 = phi ptr [ %.sroa.0269.12, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit140 ], [ %.sroa.0228.1, %.loopexit ] ; 5 uses
  %i.hm = load i8, ptr %.sroa.0218.0, align 8, !tbaa !729
  switch i8 %i.hm, label %bb.aq [
    i8 0, label %bb.am
    i8 96, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %.sroa.0228.0, align 8, !tbaa !729
  br label %bb.ar

bb.an:                                            ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0218.0, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !731
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0228.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0218.0, i64 24, i1 false), !tbaa.struct !733
  %.sroa.0218.1380 = getelementptr inbounds nuw i8, ptr %.sroa.0218.0, i64 24 ; 2 uses
  %i.hq = load i8, ptr %.sroa.0218.1380, align 8, !tbaa !729
  %i.hr = icmp eq i8 %i.hq, 96
  br i1 %i.hr, label %.lr.ph384, label %.loopexit

.lr.ph384:                                        ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0228.0, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.hs, align 8, !tbaa !731
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph384, %bb.ap
  %i.ht = phi i64 [ %.promoted, %.lr.ph384 ], [ %i.hw, %bb.ap ]
  %.sroa.0218.1382 = phi ptr [ %.sroa.0218.1380, %.lr.ph384 ], [ %.sroa.0218.1, %bb.ap ] ; 3 uses
  %.sroa.0218.0.pn381 = phi ptr [ %.sroa.0218.0, %.lr.ph384 ], [ %.sroa.0218.1382, %bb.ap ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.pn381, i64 32
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !731
  %i.hw = add i64 %i.ht, %i.hv                    ; 2 uses
  store i64 %i.hw, ptr %i.hs, align 8, !tbaa !731
  %.sroa.0218.1 = getelementptr inbounds nuw i8, ptr %.sroa.0218.1382, i64 24 ; 2 uses
  %i.hx = load i8, ptr %.sroa.0218.1, align 8, !tbaa !729
  %i.hy = icmp eq i8 %i.hx, 96
  br i1 %i.hy, label %bb.ap, label %.loopexit, !llvm.loop !832

bb.aq:                                            ; preds = %bb.al, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0228.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0218.0, i64 24, i1 false), !tbaa.struct !733
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %bb.ao, %bb.aq
  %.sroa.0218.2 = phi ptr [ %.sroa.0218.0, %bb.aq ], [ %.sroa.0218.0, %bb.ao ], [ %.sroa.0218.1382, %bb.ap ]
  %.sroa.0228.1 = getelementptr inbounds nuw i8, ptr %.sroa.0228.0, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0218.2, i64 24
  br label %bb.al, !llvm.loop !833

bb.ar:                                            ; preds = %bb.ax, %bb.am
  %.sroa.0208.0 = phi ptr [ %.sroa.0269.12, %bb.am ], [ %i.il, %bb.ax ] ; 6 uses
  %.sroa.0228.2 = phi ptr [ %.sroa.0269.12, %bb.am ], [ %.sroa.0228.3, %bb.ax ] ; 5 uses
  %i.ia = load i8, ptr %.sroa.0208.0, align 8, !tbaa !729
  switch i8 %i.ia, label %bb.aw [
    i8 0, label %bb.as
    i8 96, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %.sroa.22.11 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i137.pn, i64 24
  store i8 0, ptr %.sroa.0228.2, align 8, !tbaa !729
  %i.ib = load i8, ptr %.sroa.0269.12, align 8, !tbaa !729 ; 2 uses
  %.not336392 = icmp eq i8 %i.ib, 0
  br i1 %.not336392, label %._crit_edge397, label %.lr.ph396

bb.at:                                            ; preds = %bb.ar
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0208.0, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !731
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0208.0, i64 24 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !729
  %i.ih = icmp eq i8 %i.ig, 48
  br i1 %i.ih, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i8 112, ptr %.sroa.0228.2, align 8, !tbaa !729
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0208.0, i64 32
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !731
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0228.2, i64 8
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !731
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ar, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0228.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0208.0, i64 24, i1 false), !tbaa.struct !733
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.sroa.0208.1 = phi ptr [ %i.if, %bb.av ], [ %.sroa.0208.0, %bb.aw ]
  %.sroa.0228.3 = getelementptr inbounds nuw i8, ptr %.sroa.0228.2, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0208.1, i64 24
  br label %bb.ar, !llvm.loop !834

._crit_edge397:                                   ; preds = %bb.bf, %bb.as
  %.sroa.0228.4.lcssa = phi ptr [ %.sroa.0269.12, %bb.as ], [ %.sroa.0228.5, %bb.bf ]
  store i8 0, ptr %.sroa.0228.4.lcssa, align 8, !tbaa !729
  %i.im = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 88
  %i.io = load i8, ptr %i.in, align 8, !tbaa !758, !range !128, !noundef !129
  %i.ip = trunc nuw i8 %i.io to i1                ; 4 uses
  %i.iq = select i1 %i.ip, i64 120, i64 60
  %i.ir = select i1 %i.ip, i64 7, i64 3
  %i.is = select i1 %i.ip, i64 3, i64 2
  br label %bb.bg

.lr.ph396:                                        ; preds = %bb.as, %bb.bf
  %i.it = phi i8 [ %i.jx, %bb.bf ], [ %i.ib, %bb.as ]
  %.sroa.0228.4394 = phi ptr [ %.sroa.0228.5, %bb.bf ], [ %.sroa.0269.12, %bb.as ] ; 5 uses
  %.sroa.0193.0393 = phi ptr [ %i.jw, %bb.bf ], [ %.sroa.0269.12, %bb.as ] ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0193.0393, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !731 ; 4 uses
  %i.iw = icmp eq i8 %i.it, 112
  br i1 %i.iw, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %.lr.ph396
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0193.0393, i64 24 ; 4 uses
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !729
  %i.iz = icmp eq i8 %i.iy, 112
  br i1 %i.iz, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0193.0393, i64 48
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !729
  %i.jc = icmp eq i8 %i.jb, 112
  br i1 %i.jc, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0193.0393, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !731
  %i.jf = icmp eq i64 %i.je, %i.iv
  br i1 %i.jf, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0193.0393, i64 56
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !731
  %i.ji = icmp eq i64 %i.jh, %i.iv
  br i1 %i.ji, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  store i8 -128, ptr %.sroa.0228.4394, align 8, !tbaa !729
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0228.4394, i64 8 ; 2 uses
  store i64 1, ptr %i.jj, align 8, !tbaa !731
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0228.4394, i64 16
  store i64 %i.iv, ptr %i.jk, align 8, !tbaa !732
  %i.jl = load i8, ptr %i.ix, align 8, !tbaa !729
  %i.jm = icmp eq i8 %i.jl, 112
  br i1 %i.jm, label %.lr.ph388, label %.critedge

.lr.ph388:                                        ; preds = %bb.bc, %bb.bd
  %i.jn = phi i64 [ %i.jr, %bb.bd ], [ 1, %bb.bc ]
  %.sroa.0193.1386 = phi ptr [ %i.js, %bb.bd ], [ %i.ix, %bb.bc ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0193.1386, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !731
  %i.jq = icmp eq i64 %i.jp, %i.iv
  br i1 %i.jq, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %.lr.ph388
  %i.jr = add i64 %i.jn, 1                        ; 2 uses
  store i64 %i.jr, ptr %i.jj, align 8, !tbaa !731
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0193.1386, i64 24 ; 3 uses
  %i.jt = load i8, ptr %i.js, align 8, !tbaa !729
  %i.ju = icmp eq i8 %i.jt, 112
  br i1 %i.ju, label %.lr.ph388, label %.critedge, !llvm.loop !835

.critedge:                                        ; preds = %.lr.ph388, %bb.bd, %bb.bc
  %.sroa.0193.1.lcssa = phi ptr [ %i.ix, %bb.bc ], [ %i.js, %bb.bd ], [ %.sroa.0193.1386, %.lr.ph388 ]
  %i.jv = getelementptr inbounds i8, ptr %.sroa.0193.1.lcssa, i64 -24
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %.lr.ph396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0228.4394, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0193.0393, i64 24, i1 false), !tbaa.struct !733
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.critedge
  %.sroa.0193.2 = phi ptr [ %i.jv, %.critedge ], [ %.sroa.0193.0393, %bb.be ]
  %.sroa.0228.5 = getelementptr inbounds nuw i8, ptr %.sroa.0228.4394, i64 24 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0193.2, i64 24 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !729 ; 2 uses
  %.not336 = icmp eq i8 %i.jx, 0
  br i1 %.not336, label %._crit_edge397, label %.lr.ph396, !llvm.loop !836

bb.bg:                                            ; preds = %.thread332, %._crit_edge397
  %.sroa.0181.0 = phi ptr [ %.sroa.0269.12, %._crit_edge397 ], [ %i.kn, %.thread332 ] ; 6 uses
  %i.jy = load i8, ptr %.sroa.0181.0, align 8, !tbaa !729
  switch i8 %i.jy, label %.thread332 [
    i8 0, label %bb.bh
    i8 48, label %bb.bi
    i8 96, label %bb.bk
  ]

bb.bh:                                            ; preds = %bb.bg
  %9 = select i1 %i.ip, i64 8, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 28 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %8, i8 0, i64 64, i1 false)
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !837
  %i.kb = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 9 uses
  store i8 0, ptr %i.kb, align 8, !tbaa !847
  %i.kc = icmp eq ptr %.sroa.0269.12, %.sroa.22.11
  br i1 %i.kc, label %.critedge4, label %.lr.ph401

.lr.ph401:                                        ; preds = %bb.bh
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 24 uses
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0181.0, i64 8 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !731 ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %i.iq
  %i.kh = and i64 %i.kf, %i.ir
  %i.ki = icmp eq i64 %i.kh, 0
  %or.cond = select i1 %i.kg, i1 %i.ki, i1 false
  br i1 %or.cond, label %bb.bj, label %.thread332

bb.bj:                                            ; preds = %bb.bi
  store i8 64, ptr %.sroa.0181.0, align 8, !tbaa !729
  %i.kj = lshr i64 %i.kf, %i.is
  store i64 %i.kj, ptr %i.ke, align 8, !tbaa !731
  br label %.thread332

bb.bk:                                            ; preds = %bb.bg
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0181.0, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !731
  %i.km = icmp ult i64 %i.kl, 15
  br i1 %i.km, label %bb.bl, label %.thread332

bb.bl:                                            ; preds = %bb.bk
  store i8 80, ptr %.sroa.0181.0, align 8, !tbaa !729
  br label %.thread332

.thread332:                                       ; preds = %bb.bg, %bb.bi, %bb.bj, %bb.bl, %bb.bk
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0181.0, i64 24
  br label %bb.bg, !llvm.loop !848

.critedge4:                                       ; preds = %bb.bm, %bb.cu, %bb.bh
  %i.ko = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5alignEmh(ptr noundef nonnull align 8 dereferenceable(73) %8, i64 noundef %9, i8 noundef zeroext 0) #26 ; 0 uses
  %i.kp = load ptr, ptr %i.ka, align 8, !tbaa !837 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !63 ; 2 uses
  %i.ks = load ptr, ptr %i.kp, align 8, !tbaa !53 ; 2 uses
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !74
  %i.ky = icmp ugt i64 %i.kv, %i.kx
  br i1 %i.ky, label %bb.cv, label %bb.cw

bb.bm:                                            ; preds = %.lr.ph401, %bb.cu
  %.sroa.0178.0399 = phi ptr [ %.sroa.0269.12, %.lr.ph401 ], [ %i.ta, %bb.cu ] ; 14 uses
  %i.kz = load i8, ptr %.sroa.0178.0399, align 8, !tbaa !729
  %i.la = xor i8 %i.kz, -128                      ; 2 uses
  %i.lb = call i8 @llvm.fshl.i8(i8 %i.la, i8 %i.la, i8 4)
  switch i8 %i.lb, label %bb.ct [
    i8 8, label %.critedge4
    i8 9, label %bb.bn
    i8 10, label %bb.br
    i8 11, label %bb.bv
    i8 12, label %bb.bz
    i8 13, label %bb.cd
    i8 14, label %bb.ch
    i8 15, label %bb.cl
    i8 0, label %bb.cp
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0178.0399, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !731
  %i.le = trunc i64 %i.ld to i8
  %i.lf = or i8 %i.le, 16                         ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.kd, align 8, !tbaa !58 ; 3 uses
  %i.lg = load ptr, ptr %i.ka, align 8, !tbaa !837 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !63
  %i.lj = load ptr, ptr %i.lg, align 8, !tbaa !53
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = add i64 %.sroa.0.0.copyload.i.i, 1      ; 2 uses
  %i.lo = icmp ult i64 %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.bo

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.bn
  %i.lp = sub nuw i64 %i.ln, %i.lm
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i64 noundef %i.lp)
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %bb.bn
  %i.lq = load i8, ptr %i.kb, align 8, !tbaa !847, !range !128, !noundef !129
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i8 %i.lf, ptr %i.h, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.h) #26
  %i.ls = load ptr, ptr %i.ka, align 8, !tbaa !837
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !53
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.sroa.0.0.copyload.i.i
  %i.lv = load i8, ptr %i.h, align 1
  store i8 %i.lv, ptr %i.lu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.lw = load ptr, ptr %i.ka, align 8, !tbaa !837
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !53
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.sroa.0.0.copyload.i.i
  store i8 %i.lf, ptr %i.ly, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit: ; preds = %bb.bp, %bb.bq
  %i.lz = load i64, ptr %i.kd, align 8, !tbaa !849
  %i.ma = add nsw i64 %i.lz, 1
  store i64 %i.ma, ptr %i.kd, align 8, !tbaa !849
  br label %bb.cu

bb.br:                                            ; preds = %bb.bm
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0178.0399, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !731
  %i.md = trunc i64 %i.mc to i8
  %i.me = or i8 %i.md, 32                         ; 2 uses
  %.sroa.0.0.copyload.i.i141 = load i64, ptr %i.kd, align 8, !tbaa !58 ; 3 uses
  %i.mf = load ptr, ptr %i.ka, align 8, !tbaa !837 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !63
  %i.mi = load ptr, ptr %i.mf, align 8, !tbaa !53
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 2 uses
  %i.mm = add i64 %.sroa.0.0.copyload.i.i141, 1   ; 2 uses
  %i.mn = icmp ult i64 %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i142, label %bb.bs

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i142:          ; preds = %bb.br
  %i.mo = sub nuw i64 %i.mm, %i.ml
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.mf, i64 noundef %i.mo)
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i142, %bb.br
  %i.mp = load i8, ptr %i.kb, align 8, !tbaa !847, !range !128, !noundef !129
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i8 %i.me, ptr %i.g, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.g) #26
  %i.mr = load ptr, ptr %i.ka, align 8, !tbaa !837
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !53
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.sroa.0.0.copyload.i.i141
  %i.mu = load i8, ptr %i.g, align 1
  store i8 %i.mu, ptr %i.mt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit143

bb.bu:                                            ; preds = %bb.bs
  %i.mv = load ptr, ptr %i.ka, align 8, !tbaa !837
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !53
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.sroa.0.0.copyload.i.i141
  store i8 %i.me, ptr %i.mx, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit143

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit143: ; preds = %bb.bt, %bb.bu
  %i.my = load i64, ptr %i.kd, align 8, !tbaa !849
  %i.mz = add nsw i64 %i.my, 1
  store i64 %i.mz, ptr %i.kd, align 8, !tbaa !849
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0178.0399, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !732
  %i.nc = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream13write_uleb128Em(ptr noundef nonnull align 8 dereferenceable(73) %8, i64 noundef %i.nb) #26 ; 0 uses
  br label %bb.cu

bb.bv:                                            ; preds = %bb.bm
  %.sroa.0.0.copyload.i.i144 = load i64, ptr %i.kd, align 8, !tbaa !58 ; 3 uses
  %i.nd = load ptr, ptr %i.ka, align 8, !tbaa !837 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !63
  %i.ng = load ptr, ptr %i.nd, align 8, !tbaa !53
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = add i64 %.sroa.0.0.copyload.i.i144, 1   ; 2 uses
  %i.nl = icmp ult i64 %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i145, label %bb.bw

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i145:          ; preds = %bb.bv
  %i.nm = sub nuw i64 %i.nk, %i.nj
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.nd, i64 noundef %i.nm)
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i145, %bb.bv
  %i.nn = load i8, ptr %i.kb, align 8, !tbaa !847, !range !128, !noundef !129
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i8 48, ptr %i.f, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.f) #26
  %i.np = load ptr, ptr %i.ka, align 8, !tbaa !837
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !53
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.0.0.copyload.i.i144
  %i.ns = load i8, ptr %i.f, align 1
  store i8 %i.ns, ptr %i.nr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit146

bb.by:                                            ; preds = %bb.bw
  %i.nt = load ptr, ptr %i.ka, align 8, !tbaa !837
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !53
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.sroa.0.0.copyload.i.i144
  store i8 48, ptr %i.nv, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit146

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit146: ; preds = %bb.bx, %bb.by
  %i.nw = load i64, ptr %i.kd, align 8, !tbaa !849
  %i.nx = add nsw i64 %i.nw, 1
  store i64 %i.nx, ptr %i.kd, align 8, !tbaa !849
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0178.0399, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !731
  %i.oa = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream13write_uleb128Em(ptr noundef nonnull align 8 dereferenceable(73) %8, i64 noundef %i.nz) #26 ; 0 uses
  br label %bb.cu

bb.bz:                                            ; preds = %bb.bm
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0178.0399, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !731
  %i.od = trunc i64 %i.oc to i8
  %i.oe = or i8 %i.od, 64                         ; 2 uses
  %.sroa.0.0.copyload.i.i147 = load i64, ptr %i.kd, align 8, !tbaa !58 ; 3 uses
  %i.of = load ptr, ptr %i.ka, align 8, !tbaa !837 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !63
  %i.oi = load ptr, ptr %i.of, align 8, !tbaa !53
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO8DyldInfo24update_standard_bindingsERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE:bb.a
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN4LIEF5MachO14RelocationDyldESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN4LIEF5MachO14RelocationDyldESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.h
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !714
  br label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseIPN4LIEF5MachO14RelocationDyldESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.y = phi ptr [ %.pre, %_ZNSt12_Vector_baseIPN4LIEF5MachO14RelocationDyldESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.0.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.sroa.20.2 = phi ptr [ %i.x, %_ZNSt12_Vector_baseIPN4LIEF5MachO14RelocationDyldESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.h ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %i.w, %_ZNSt12_Vector_baseIPN4LIEF5MachO14RelocationDyldESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.h ] ; 4 uses
  %.not3135 = icmp eq ptr %i.y, %i.g
  br i1 %.not3135, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit, %bb.c, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.2, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ], [ null, %bb.c ], [ %.sroa.20.1, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ], [ null, %bb.c ], [ %.sroa.12.1, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.016.0.lcssa = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ], [ null, %bb.c ], [ %.sroa.016.1, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.aa = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.ab = ptrtoint ptr %.sroa.016.0.lcssa to i64  ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !58
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 1, ptr nonnull @.str.67, i64 28, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.sroa.016.0.lcssa, ptr %7, align 8, !tbaa !875
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.12.0.lcssa, ptr %i.af, align 8, !tbaa !878
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.20.0.lcssa, ptr %i.ag, align 8, !tbaa !879
  %i.ah = call noundef nonnull align 8 dereferenceable(240) ptr @_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EESt6vectorIPNS0_14RelocationDyldESaISE_EERNS_15vector_iostreamE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(73) %2) ; 0 uses
  %.not.i.i.i = icmp eq ptr %.sroa.016.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EED2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ai = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.aj = sub i64 %i.ai, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.016.0.lcssa, i64 noundef %i.aj) #27
  br label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EED2Ev.exit10

_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EED2Ev.exit10: ; preds = %bb.i, %._crit_edge
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !713
  call void @_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.q

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit
  %.sroa.016.039 = phi ptr [ %.sroa.016.1, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.12.2, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ] ; 6 uses
  %.sroa.12.038 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.12.2, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ] ; 5 uses
  %.sroa.013.037 = phi ptr [ %i.bi, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ], [ %i.y, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ] ; 2 uses
  %.sroa.20.036 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.20.2, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE7reserveEm.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.037, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !724 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(56) %i.am) #26
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %.lr.ph
  %.not.i.i11 = icmp eq ptr %.sroa.12.038, %.sroa.20.036
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.am, ptr %.sroa.12.038, align 8, !tbaa !726
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.12.038, i64 8
  br label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.at = ptrtoint ptr %.sroa.12.038 to i64
  %i.au = ptrtoint ptr %.sroa.016.039 to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.m, label %_ZNKSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #29 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store ptr %i.am, ptr %i.be, align 8, !tbaa !726
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.n, label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %.sroa.016.039, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.016.039, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.016.039, i64 noundef %i.av) #27
  br label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  br label %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.k, %.lr.ph
  %.sroa.20.1 = phi ptr [ %.sroa.20.036, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.20.036, %bb.k ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.038, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.as, %bb.k ] ; 2 uses
  %.sroa.016.1 = phi ptr [ %.sroa.016.039, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.016.039, %bb.k ] ; 2 uses
  %i.bi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.013.037) #30 ; 2 uses
  %.not31 = icmp eq ptr %i.bi, %i.g
  br i1 %.not31, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.a
  %i.bj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 3, ptr nonnull @.str.68, i64 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt6vectorIPN4LIEF5MachO14RelocationDyldESaIS3_EED2Ev.exit10, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(240) ptr @_ZN4LIEF5MachO8DyldInfo20update_weak_bindingsERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"class.std::vector.268", align 8   ; 21 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i8, align 1                       ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 5 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca i8, align 1                       ; 5 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 6 uses
  %i.ab = alloca i32, align 4                     ; 6 uses
  %9 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i32 0, ptr %i.m, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i8 0, ptr %i.n, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !83
  store i8 0, ptr %i.af, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !758, !range !128, !noundef !129
  %i.al = trunc nuw i8 %i.ak to i1                ; 4 uses
  %i.am = select i1 %i.al, i64 8, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !714 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not267271 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not267271, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  store i8 0, ptr %i.aa, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i32 0, ptr %i.ab, align 4, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.x

.lr.ph:                                           ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.072276 = phi i64 [ 0, %.lr.ph ], [ %.375, %bb.w ] ; 3 uses
  %.077275 = phi i64 [ 0, %.lr.ph ], [ %.380, %bb.w ] ; 3 uses
  %.082274 = phi i64 [ -1, %.lr.ph ], [ %i.fn, %bb.w ] ; 3 uses
  %.085273 = phi i64 [ 0, %.lr.ph ], [ %.186, %bb.w ] ; 2 uses
  %.sroa.0226.0272 = phi ptr [ %i.ao, %.lr.ph ], [ %i.fo, %bb.w ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0226.0272, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40 ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !880 ; 7 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.aw) #26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83 ; 3 uses
  %i.bd = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.d
  %i.bg = load ptr, ptr %8, align 8, !tbaa !149
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !149
  %bcmp.i.i = call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bc)
  %.not270 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not270, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !881, !range !128, !noundef !129
  %i.bk = shl nuw nsw i8 %i.bj, 3
  %i.bl = zext nneg i8 %i.bk to i64
  store i64 %i.bl, ptr %i.o, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  store i8 64, ptr %i.p, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(56) %i.aw) #26
  %i.bq = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.bp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  %i.br = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(56) %i.aw) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246

bb.e:                                             ; preds = %bb.b
  %i.bv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.59, i64 42)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !882 ; 3 uses
  %i.bz = load i8, ptr %i.n, align 1, !tbaa !66
  %i.ca = zext i8 %i.bz to i64
  %.not94 = icmp eq i64 %i.by, %i.ca
  br i1 %.not94, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246
  %i.cb = trunc i64 %i.by to i8
  store i8 %i.cb, ptr %i.n, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  store i8 80, ptr %i.r, align 1, !tbaa !66
  %i.cc = load ptr, ptr %i.ar, align 8, !tbaa !883 ; 9 uses
  %i.cd = load ptr, ptr %i.as, align 8, !tbaa !886
  %.not.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f
  %i.ce = and i64 %i.by, 255
  store i8 80, ptr %i.cc, align 8, !tbaa !887
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !889
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 0, ptr %i.cg, align 8, !tbaa !890
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !81
  store i8 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i64 0, ptr %i.cj, align 8, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store ptr %i.ck, ptr %i.ar, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRhEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.n)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread246
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26
  %.not95 = icmp eq i64 %i.co, %.082274
  br i1 %.not95, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26
  %i.ct = icmp ult i64 %i.cs, %.072276
  br i1 %i.ct, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26
  %.not96 = icmp ugt i64 %.077275, %i.cx
  br i1 %.not96, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !891 ; 4 uses
  %.not97 = icmp eq ptr %i.cz, null
  br i1 %.not97, label %.thread262, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 136
  %i.db = load i8, ptr %i.da, align 8, !tbaa !745
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !611 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.df = load i64, ptr %i.de, align 8, !tbaa !636
  %i.dg = add i64 %i.df, %i.dd
  %i.dh = sext i8 %i.db to i32
  store i32 %i.dh, ptr %i.m, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  store i8 112, ptr %i.s, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  %i.di = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef i64 %i.dk(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26
  %i.dm = sub i64 %i.dl, %i.dd                    ; 2 uses
  store i64 %i.dm, ptr %i.t, align 8, !tbaa !58
  %i.dn = load ptr, ptr %i.ar, align 8, !tbaa !883 ; 9 uses
  %i.do = load ptr, ptr %i.as, align 8, !tbaa !886
  %.not.i99 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i99, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100: ; preds = %bb.l
  %i.dp = load i8, ptr %i.s, align 1, !tbaa !66
  %i.dq = load i32, ptr %i.m, align 4, !tbaa !55
  %i.dr = zext i32 %i.dq to i64
  store i8 %i.dp, ptr %i.dn, align 8, !tbaa !887
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !889
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 %i.dm, ptr %i.dt, align 8, !tbaa !890
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !81
  store i8 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO8DyldInfo20update_weak_bindingsERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE:bb.a

bb.q:                                             ; preds = %bb.n, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit
  %.279 = phi i64 [ %i.dg, %bb.n ], [ %.077275, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ]
  %.274 = phi i64 [ %i.dd, %bb.n ], [ %.072276, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ]
  %i.em = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef i64 %i.eo(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %.183 = phi i64 [ %i.ep, %bb.q ], [ %.082274, %bb.h ]
  %.380 = phi i64 [ %.279, %bb.q ], [ %.077275, %bb.h ]
  %.375 = phi i64 [ %.274, %bb.q ], [ %.072276, %bb.h ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !892 ; 3 uses
  %.not98 = icmp eq i64 %.085273, %i.er
  %.pre294 = load ptr, ptr %i.ar, align 8, !tbaa !883 ; 10 uses
  %.pre296.a = load ptr, ptr %i.as, align 8, !tbaa !886 ; 3 uses
  br i1 %.not98, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #26
  store i8 96, ptr %i.w, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #26
  store i64 %i.er, ptr %i.x, align 8, !tbaa !58
  %.not.i106 = icmp eq ptr %.pre294, %.pre296.a
  br i1 %.not.i106, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107: ; preds = %bb.s
  store i8 96, ptr %.pre294, align 8, !tbaa !887
  %i.es = getelementptr inbounds nuw i8, ptr %.pre294, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !889
  %i.et = getelementptr inbounds nuw i8, ptr %.pre294, i64 16
  store i64 0, ptr %i.et, align 8, !tbaa !890
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre294, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre294, i64 40 ; 2 uses
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !81
  store i8 0, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre294, i64 32
  store i64 0, ptr %i.ew, align 8, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre294, i64 56 ; 2 uses
  store ptr %i.ex, ptr %i.ar, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhlEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %.pre294, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %.pre.pre = load ptr, ptr %i.ar, align 8, !tbaa !883
  %.pre295.pre = load ptr, ptr %i.as, align 8, !tbaa !886
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107, %bb.t
  %.pre295 = phi ptr [ %.pre296.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107 ], [ %.pre295.pre, %bb.t ]
  %.pre = phi ptr [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107 ], [ %.pre.pre, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26
  %i.ey = load i64, ptr %i.eq, align 8, !tbaa !892
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit, %bb.r
  %i.ez = phi ptr [ %.pre295, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit ], [ %.pre296.a, %bb.r ]
  %i.fa = phi ptr [ %.pre, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit ], [ %.pre294, %bb.r ] ; 8 uses
  %.186 = phi i64 [ %i.ey, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit ], [ %.085273, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  store i8 -112, ptr %i.y, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  store i32 0, ptr %i.z, align 4, !tbaa !55
  %.not.i110 = icmp eq ptr %i.fa, %i.ez
  br i1 %.not.i110, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111: ; preds = %bb.u
  store i8 -112, ptr %i.fa, align 8, !tbaa !887
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !81
  store i8 0, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store i64 0, ptr %i.fe, align 8, !tbaa !83
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store ptr %i.ff, ptr %i.ar, align 8, !tbaa !883
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.fa, ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
  br label %bb.w

.thread262:                                       ; preds = %bb.k
  %i.fg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.60, i64 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.cw

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  %i.fi = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !758, !range !128, !noundef !129
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = select i1 %i.fl, i64 8, i64 4
  %i.fn = add i64 %i.fm, %.183
  %i.fo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0226.0272) #30 ; 2 uses
  %.not267 = icmp eq ptr %i.fo, %i.ap
  br i1 %.not267, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.w
  %.pre297 = load ptr, ptr %i.ar, align 8, !tbaa !883 ; 8 uses
  %.pre299 = load ptr, ptr %i.as, align 8, !tbaa !886
  %i.fp = icmp eq ptr %.pre297, %.pre299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  store i8 0, ptr %i.aa, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i32 0, ptr %i.ab, align 4, !tbaa !55
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br i1 %i.fp, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115: ; preds = %._crit_edge
  store i8 0, ptr %.pre297, align 8, !tbaa !887
  %i.fr = getelementptr inbounds nuw i8, ptr %.pre297, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre297, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre297, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !81
  store i8 0, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.pre297, i64 32
  store i64 0, ptr %i.fu, align 8, !tbaa !83
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre297, i64 56
  store ptr %i.fv, ptr %i.fq, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit118

bb.x:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.fw = phi ptr [ %i.aq, %._crit_edge.thread ], [ %i.fq, %._crit_edge ]
  %i.fx = phi ptr [ null, %._crit_edge.thread ], [ %.pre297, %._crit_edge ]
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit118

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115, %bb.x
  %i.fy = phi ptr [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115 ], [ %i.fw, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  %i.fz = load ptr, ptr %7, align 8, !tbaa !893   ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit118
  %.sroa.0205.0 = phi ptr [ %i.fz, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit118 ], [ %i.gl, %bb.ad ] ; 6 uses
  %.sroa.0212.0 = phi ptr [ %i.fz, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit118 ], [ %.sroa.0212.1, %bb.ad ] ; 6 uses
  %i.ga = load i8, ptr %.sroa.0205.0, align 8, !tbaa !887
  switch i8 %i.ga, label %bb.ac [
    i8 0, label %bb.z
    i8 -112, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %.sroa.0212.0, align 8, !tbaa !887
  %i.gb = load ptr, ptr %7, align 8, !tbaa !893   ; 5 uses
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !887 ; 2 uses
  %.not268282 = icmp eq i8 %i.gc, 0
  br i1 %.not268282, label %._crit_edge287, label %.lr.ph286

bb.aa:                                            ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0205.0, i64 56 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !887
  %i.gf = icmp eq i8 %i.ge, -128
  br i1 %i.gf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 -96, ptr %.sroa.0212.0, align 8, !tbaa !887
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0205.0, i64 64
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !889
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0212.0, i64 8
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !889
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0212.0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0205.0, i64 24, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0212.0, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0205.0, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gk) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sroa.0205.1 = phi ptr [ %i.gd, %bb.ab ], [ %.sroa.0205.0, %bb.ac ]
  %.sroa.0212.1 = getelementptr inbounds nuw i8, ptr %.sroa.0212.0, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0205.1, i64 56
  br label %bb.y, !llvm.loop !894

._crit_edge287.loopexit:                          ; preds = %bb.aj
  %.pre300 = load ptr, ptr %7, align 8, !tbaa !893
  br label %._crit_edge287

._crit_edge287:                                   ; preds = %._crit_edge287.loopexit, %bb.z
  %i.gm = phi ptr [ %i.gb, %bb.z ], [ %.pre300, %._crit_edge287.loopexit ] ; 3 uses
  %.sroa.0212.2.lcssa = phi ptr [ %i.gb, %bb.z ], [ %.sroa.0212.3, %._crit_edge287.loopexit ] ; 2 uses
  store i8 0, ptr %.sroa.0212.2.lcssa, align 8, !tbaa !887
  %i.gn = select i1 %i.al, i64 120, i64 60
  %.v = select i1 %i.al, i64 7, i64 3
  %i.go = select i1 %i.al, i64 3, i64 2
  br label %bb.ak

.lr.ph286:                                        ; preds = %bb.z, %bb.aj
  %i.gp = phi i8 [ %i.hp, %bb.aj ], [ %i.gc, %bb.z ]
  %.sroa.0212.2284 = phi ptr [ %.sroa.0212.3, %bb.aj ], [ %i.gb, %bb.z ] ; 6 uses
  %.sroa.0192.0283 = phi ptr [ %i.ho, %bb.aj ], [ %i.gb, %bb.z ] ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0192.0283, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !889 ; 3 uses
  %i.gs = icmp eq i8 %i.gp, -96
  br i1 %i.gs, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph286
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0192.0283, i64 56 ; 4 uses
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !887
  %i.gv = icmp eq i8 %i.gu, -96
  br i1 %i.gv, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0192.0283, i64 64
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !889
  %i.gy = icmp eq i64 %i.gx, %i.gr
  br i1 %i.gy, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  store i8 -64, ptr %.sroa.0212.2284, align 8, !tbaa !887
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0212.2284, i64 8 ; 2 uses
  store i64 1, ptr %i.gz, align 8, !tbaa !889
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0212.2284, i64 16
  store i64 %i.gr, ptr %i.ha, align 8, !tbaa !890
  %i.hb = load i8, ptr %i.gt, align 8, !tbaa !887
  %i.hc = icmp eq i8 %i.hb, -96
  br i1 %i.hc, label %.lr.ph279, label %.critedge

.lr.ph279:                                        ; preds = %bb.ag, %bb.ah
  %i.hd = phi i64 [ %i.hh, %bb.ah ], [ 1, %bb.ag ]
  %.sroa.0192.1277 = phi ptr [ %i.hi, %bb.ah ], [ %i.gt, %bb.ag ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0192.1277, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !889
  %i.hg = icmp eq i64 %i.hf, %i.gr
  br i1 %i.hg, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %.lr.ph279
  %i.hh = add i64 %i.hd, 1                        ; 2 uses
  store i64 %i.hh, ptr %i.gz, align 8, !tbaa !889
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0192.1277, i64 56 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !887
  %i.hk = icmp eq i8 %i.hj, -96
  br i1 %i.hk, label %.lr.ph279, label %.critedge, !llvm.loop !895

.critedge:                                        ; preds = %.lr.ph279, %bb.ah, %bb.ag
  %.sroa.0192.1.lcssa = phi ptr [ %i.gt, %bb.ag ], [ %i.hi, %bb.ah ], [ %.sroa.0192.1277, %.lr.ph279 ]
  %i.hl = getelementptr inbounds i8, ptr %.sroa.0192.1.lcssa, i64 -56
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af, %bb.ae, %.lr.ph286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0212.2284, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0192.0283, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0212.2284, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0192.0283, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.hn) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge
  %.sroa.0192.2 = phi ptr [ %i.hl, %.critedge ], [ %.sroa.0192.0283, %bb.ai ]
  %.sroa.0212.3 = getelementptr inbounds nuw i8, ptr %.sroa.0212.2284, i64 56 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0192.2, i64 56 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !887 ; 2 uses
  %.not268 = icmp eq i8 %i.hp, 0
  br i1 %.not268, label %._crit_edge287.loopexit, label %.lr.ph286, !llvm.loop !896

bb.ak:                                            ; preds = %.thread264, %._crit_edge287
  %.sroa.0180.0 = phi ptr [ %i.gm, %._crit_edge287 ], [ %i.ig, %.thread264 ] ; 6 uses
  %i.hq = load i8, ptr %.sroa.0180.0, align 8, !tbaa !887
  switch i8 %i.hq, label %.thread264 [
    i8 0, label %bb.al
    i8 -96, label %bb.am
    i8 32, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %.sroa.0212.2.lcssa, align 8, !tbaa !887
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 40 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %9, i8 0, i64 64, i1 false)
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !837
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 13 uses
  store i8 0, ptr %i.ht, align 8, !tbaa !847
  %i.hu = load ptr, ptr %i.fy, align 8
  %i.hv = icmp eq ptr %i.gm, %i.hu
  br i1 %i.hv, label %.critedge5, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.al
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 36 uses
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 8 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !889 ; 3 uses
  %i.hz = icmp ult i64 %i.hy, %i.gn
  %i.ia = and i64 %i.hy, %.v
  %i.ib = icmp eq i64 %i.ia, 0
  %or.cond = select i1 %i.hz, i1 %i.ib, i1 false
  br i1 %or.cond, label %bb.an, label %.thread264

bb.an:                                            ; preds = %bb.am
  store i8 -80, ptr %.sroa.0180.0, align 8, !tbaa !887
  %i.ic = lshr i64 %i.hy, %i.go
  store i64 %i.ic, ptr %i.hx, align 8, !tbaa !889
  br label %.thread264

bb.ao:                                            ; preds = %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !889
  %i.if = icmp ult i64 %i.ie, 16
  br i1 %i.if, label %bb.ap, label %.thread264

bb.ap:                                            ; preds = %bb.ao
  store i8 16, ptr %.sroa.0180.0, align 8, !tbaa !887
  br label %.thread264

.thread264:                                       ; preds = %bb.ak, %bb.am, %bb.an, %bb.ap, %bb.ao
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 56
  br label %bb.ak, !llvm.loop !897

.critedge5:                                       ; preds = %bb.aq, %bb.cp, %bb.al
  %i.ih = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5alignEmh(ptr noundef nonnull align 8 dereferenceable(73) %9, i64 noundef %i.am, i8 noundef zeroext 0) #26 ; 0 uses
  %i.ii = load ptr, ptr %i.hs, align 8, !tbaa !837 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !63 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !53 ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !74
  %i.ir = icmp ugt i64 %i.io, %i.iq
  br i1 %i.ir, label %bb.cq, label %bb.cr

bb.aq:                                            ; preds = %.lr.ph291, %bb.cp
  %.sroa.0177.0289 = phi ptr [ %i.gm, %.lr.ph291 ], [ %i.vf, %bb.cp ] ; 19 uses
  %i.is = load i8, ptr %.sroa.0177.0289, align 8, !tbaa !887
  %i.it = xor i8 %i.is, -128                      ; 2 uses
  %i.iu = call i8 @llvm.fshl.i8(i8 %i.it, i8 %i.it, i8 4)
  switch i8 %i.iu, label %bb.cn [
    i8 8, label %.critedge5
    i8 9, label %bb.ar
    i8 10, label %bb.av
    i8 11, label %bb.az
    i8 12, label %bb.bd
    i8 13, label %bb.bh
    i8 14, label %bb.bl
    i8 15, label %bb.bp
    i8 0, label %bb.bt
    i8 1, label %bb.bx
    i8 2, label %bb.cb
    i8 3, label %bb.cf
    i8 4, label %bb.cj
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0177.0289, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !889
  %i.ix = trunc i64 %i.iw to i8
  %i.iy = or i8 %i.ix, 16                         ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hw, align 8, !tbaa !58 ; 3 uses
  %i.iz = load ptr, ptr %i.hs, align 8, !tbaa !837 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !63
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !53
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je                    ; 2 uses
  %i.jg = add i64 %.sroa.0.0.copyload.i.i, 1      ; 2 uses
  %i.jh = icmp ult i64 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.as

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.ar
  %i.ji = sub nuw i64 %i.jg, %i.jf
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 noundef %i.ji)
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %bb.ar
  %i.jj = load i8, ptr %i.ht, align 8, !tbaa !847, !range !128, !noundef !129
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  store i8 %i.iy, ptr %i.l, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.l) #26
  %i.jl = load ptr, ptr %i.hs, align 8, !tbaa !837
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !53
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.0.0.copyload.i.i
  %i.jo = load i8, ptr %i.l, align 1
  store i8 %i.jo, ptr %i.jn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

bb.au:                                            ; preds = %bb.as
  %i.jp = load ptr, ptr %i.hs, align 8, !tbaa !837
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !53
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sroa.0.0.copyload.i.i
  store i8 %i.iy, ptr %i.jr, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit: ; preds = %bb.at, %bb.au
  %i.js = load i64, ptr %i.hw, align 8, !tbaa !849
  %i.jt = add nsw i64 %i.js, 1
  store i64 %i.jt, ptr %i.hw, align 8, !tbaa !849
  br label %bb.cp

bb.av:                                            ; preds = %bb.aq
  %.sroa.0.0.copyload.i.i119 = load i64, ptr %i.hw, align 8, !tbaa !58 ; 3 uses
  %i.ju = load ptr, ptr %i.hs, align 8, !tbaa !837 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !63
  %i.jx = load ptr, ptr %i.ju, align 8, !tbaa !53
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = add i64 %.sroa.0.0.copyload.i.i119, 1   ; 2 uses
  %i.kc = icmp ult i64 %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i120, label %bb.aw

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i120:          ; preds = %bb.av
  %i.kd = sub nuw i64 %i.kb, %i.ka
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, i64 noundef %i.kd)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i120, %bb.av
  %i.ke = load i8, ptr %i.ht, align 8, !tbaa !847, !range !128, !noundef !129
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i8 32, ptr %i.k, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.k) #26
  %i.kg = load ptr, ptr %i.hs, align 8, !tbaa !837
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !53
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.sroa.0.0.copyload.i.i119
  %i.kj = load i8, ptr %i.k, align 1
  store i8 %i.kj, ptr %i.ki, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit121

bb.ay:                                            ; preds = %bb.aw
  %i.kk = load ptr, ptr %i.hs, align 8, !tbaa !837
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !53
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.sroa.0.0.copyload.i.i119
  store i8 32, ptr %i.km, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit121

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit121: ; preds = %bb.ax, %bb.ay
  %i.kn = load i64, ptr %i.hw, align 8, !tbaa !849
  %i.ko = add nsw i64 %i.kn, 1
  store i64 %i.ko, ptr %i.hw, align 8, !tbaa !849
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0177.0289, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !889
  %i.kr = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream13write_uleb128Em(ptr noundef nonnull align 8 dereferenceable(73) %9, i64 noundef %i.kq) #26 ; 0 uses
  br label %bb.cp

bb.az:                                            ; preds = %bb.aq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0177.0289, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !889
  %i.ku = trunc i64 %i.kt to i8
  %i.kv = and i8 %i.ku, 15
  %i.kw = or disjoint i8 %i.kv, 48                ; 2 uses
  %.sroa.0.0.copyload.i.i122 = load i64, ptr %i.hw, align 8, !tbaa !58 ; 3 uses
  %i.kx = load ptr, ptr %i.hs, align 8, !tbaa !837 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !63
  %i.la = load ptr, ptr %i.kx, align 8, !tbaa !53
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 2 uses
  %i.le = add i64 %.sroa.0.0.copyload.i.i122, 1   ; 2 uses
  %i.lf = icmp ult i64 %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i123, label %bb.ba

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i123:          ; preds = %bb.az
  %i.lg = sub nuw i64 %i.le, %i.ld
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, i64 noundef %i.lg)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i123, %bb.az
  %i.lh = load i8, ptr %i.ht, align 8, !tbaa !847, !range !128, !noundef !129
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i8 %i.kw, ptr %i.j, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.j) #26
  %i.lj = load ptr, ptr %i.hs, align 8, !tbaa !837
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !53
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.0.0.copyload.i.i122
  %i.lm = load i8, ptr %i.j, align 1
  store i8 %i.lm, ptr %i.ll, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO8DyldInfo20update_lazy_bindingsERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE:bb.a
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !858
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.ju, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jw) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachOeqEhNS0_8DyldInfo12BIND_OPCODESE(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i8 %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachOneEhNS0_8DyldInfo12BIND_OPCODESE(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !883  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !886
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.f = load i8, ptr %1, align 1, !tbaa !66
  %i.g = load i64, ptr %2, align 8, !tbaa !58
  %i.h = load i32, ptr %3, align 4, !tbaa !55
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !81
  %i.k = load ptr, ptr %4, align 8, !tbaa !149    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !83   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.m, ptr %i.a, align 8, !tbaa !58
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !149
  %i.p = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.p, ptr %i.j, align 8, !tbaa !66
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !66
  store i8 %i.r, ptr %i.q, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.s = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !83
  %i.u = load ptr, ptr %5, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 %i.f, ptr %i.c, align 8, !tbaa !887
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !889
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %i.x, align 8, !tbaa !890
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !81
  %i.aa = load ptr, ptr %5, align 8, !tbaa !149   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.j
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !83  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !149
  %i.af = load i64, ptr %i.j, align 8, !tbaa !66
  store i64 %i.af, ptr %i.z, align 8, !tbaa !66
  %.pre = load i64, ptr %i.t, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !883
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !883
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRmiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !893
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = phi ptr [ %.pre10, %bb.g ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -56
  ret ptr %i.al
}

declare noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream13write_sleb128El(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(240) ptr @_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v1ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"class.std::vector.268", align 8   ; 23 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i8, align 1                       ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 5 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i8, align 1                       ; 5 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i8, align 1                      ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i8, align 1                      ; 6 uses
  %i.af = alloca i32, align 4                     ; 6 uses
  %9 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i32 0, ptr %i.m, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i8 0, ptr %i.n, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.aj, ptr %8, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  store i8 0, ptr %i.aj, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !758, !range !128, !noundef !129
  %i.ap = trunc nuw i8 %i.ao to i1                ; 4 uses
  %i.aq = select i1 %i.ap, i64 8, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !714 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not282287 = icmp eq ptr %i.as, %i.at
  br i1 %.not282287, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #26
  store i8 0, ptr %i.ae, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #26
  store i32 0, ptr %i.af, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.ae

.lr.ph:                                           ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %.074293 = phi i64 [ 0, %.lr.ph ], [ %.377, %bb.ad ] ; 3 uses
  %.079292 = phi i64 [ 0, %.lr.ph ], [ %.382, %bb.ad ] ; 3 uses
  %.084291 = phi i64 [ -1, %.lr.ph ], [ %i.gj, %bb.ad ] ; 3 uses
  %.087290 = phi i32 [ -2147483648, %.lr.ph ], [ %.188, %bb.ad ] ; 2 uses
  %.089289 = phi i64 [ 0, %.lr.ph ], [ %.190, %bb.ad ] ; 2 uses
  %.sroa.0239.0288 = phi ptr [ %i.as, %.lr.ph ], [ %i.gk, %bb.ad ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0239.0288, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 18 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !901 ; 6 uses
  %.not = icmp eq i32 %i.ba, %.087290
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  store i8 48, ptr %i.o, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  store i32 %i.ba, ptr %i.p, align 4, !tbaa !55
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !883 ; 9 uses
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !886
  %.not.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d
  %i.be = sext i32 %i.ba to i64
  store i8 48, ptr %i.bc, align 8, !tbaa !887
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !889
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 0, ptr %i.bg, align 8, !tbaa !890
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !81
  store i8 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 0, ptr %i.bj, align 8, !tbaa !83
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  store i8 32, ptr %i.q, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  store i32 %i.ba, ptr %i.r, align 4, !tbaa !55
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !883 ; 9 uses
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !886
  %.not.i102 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i102, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i103: ; preds = %bb.f
  %i.bn = zext nneg i32 %i.ba to i64
  store i8 32, ptr %i.bl, align 8, !tbaa !887
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !889
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %i.bp, align 8, !tbaa !890
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !81
  store i8 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i64 0, ptr %i.bs, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store ptr %i.bt, ptr %i.av, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit106

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit106

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i103, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit106, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit
  %i.bu = load i32, ptr %i.az, align 8, !tbaa !901
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.188 = phi i32 [ %i.bu, %bb.h ], [ %.087290, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !880 ; 3 uses
  %.not285 = icmp eq ptr %i.bw, null
  br i1 %.not285, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.by, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.69, i64 38)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread276

bb.k:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(56) %i.bw) #26 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !83 ; 3 uses
  %i.cf = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread265, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.l
  %i.ci = load ptr, ptr %8, align 8, !tbaa !149
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !149
  %bcmp.i.i = call i32 @bcmp(ptr %i.cj, ptr %i.ci, i64 %i.ce)
  %.not286 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not286, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread265, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.k, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !902, !range !128, !noundef !129
  %i.cm = zext nneg i8 %i.cl to i64
  store i64 %i.cm, ptr %i.s, align 8, !tbaa !58
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !880 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef nonnull align 8 dereferenceable(32) ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(56) %i.cn) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  store i8 64, ptr %i.t, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #26
  store i32 0, ptr %i.u, align 4, !tbaa !55
  %i.cs = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread265

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread265: ; preds = %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !882 ; 3 uses
  %i.cv = load i8, ptr %i.n, align 1, !tbaa !66
  %i.cw = zext i8 %i.cv to i64
  %.not97 = icmp eq i64 %i.cu, %i.cw
  br i1 %.not97, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread265
  %i.cx = trunc i64 %i.cu to i8
  store i8 %i.cx, ptr %i.n, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26
  store i8 80, ptr %i.v, align 1, !tbaa !66
  %i.cy = load ptr, ptr %i.av, align 8, !tbaa !883 ; 9 uses
  %i.cz = load ptr, ptr %i.aw, align 8, !tbaa !886
  %.not.i107 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i107, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108: ; preds = %bb.m
  %i.da = and i64 %i.cu, 255
  store i8 80, ptr %i.cy, align 8, !tbaa !887
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !889
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 0, ptr %i.dc, align 8, !tbaa !890
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v1ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE:bb.a

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.fb, ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit
  %.281 = phi i64 [ %i.ee, %bb.u ], [ %.079292, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ]
  %.276 = phi i64 [ %i.eb, %bb.u ], [ %.074293, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ]
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !19
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef i64 %i.fm(ptr noundef nonnull align 8 dereferenceable(64) %i.ay) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.185 = phi i64 [ %i.fn, %bb.x ], [ %.084291, %bb.o ]
  %.382 = phi i64 [ %.281, %bb.x ], [ %.079292, %bb.o ]
  %.377 = phi i64 [ %.276, %bb.x ], [ %.074293, %bb.o ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !892 ; 3 uses
  %.not101 = icmp eq i64 %.089289, %i.fp
  %.pre311 = load ptr, ptr %i.av, align 8, !tbaa !883 ; 10 uses
  %.pre313.a = load ptr, ptr %i.aw, align 8, !tbaa !886 ; 3 uses
  br i1 %.not101, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  store i8 96, ptr %i.aa, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i64 %i.fp, ptr %i.ab, align 8, !tbaa !58
  %.not.i118 = icmp eq ptr %.pre311, %.pre313.a
  br i1 %.not.i118, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119: ; preds = %bb.z
  store i8 96, ptr %.pre311, align 8, !tbaa !887
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre311, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !889
  %i.fr = getelementptr inbounds nuw i8, ptr %.pre311, i64 16
  store i64 0, ptr %i.fr, align 8, !tbaa !890
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre311, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre311, i64 40 ; 2 uses
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !81
  store i8 0, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.pre311, i64 32
  store i64 0, ptr %i.fu, align 8, !tbaa !83
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre311, i64 56 ; 2 uses
  store ptr %i.fv, ptr %i.av, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhlEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %.pre311, ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %.pre.pre = load ptr, ptr %i.av, align 8, !tbaa !883
  %.pre312.pre = load ptr, ptr %i.aw, align 8, !tbaa !886
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, %bb.aa
  %.pre312 = phi ptr [ %.pre313.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119 ], [ %.pre312.pre, %bb.aa ]
  %.pre = phi ptr [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119 ], [ %.pre.pre, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  %i.fw = load i64, ptr %i.fo, align 8, !tbaa !892
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit, %bb.y
  %i.fx = phi ptr [ %.pre312, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit ], [ %.pre313.a, %bb.y ]
  %i.fy = phi ptr [ %.pre, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit ], [ %.pre311, %bb.y ] ; 8 uses
  %.190 = phi i64 [ %i.fw, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhlEEERS3_DpOT_.exit ], [ %.089289, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #26
  store i8 -112, ptr %i.ac, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #26
  store i32 0, ptr %i.ad, align 4, !tbaa !55
  %.not.i122 = icmp eq ptr %i.fy, %i.fx
  br i1 %.not.i122, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123: ; preds = %bb.ab
  store i8 -112, ptr %i.fy, align 8, !tbaa !887
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !81
  store i8 0, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store i64 0, ptr %i.gc, align 8, !tbaa !83
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  store ptr %i.gd, ptr %i.av, align 8, !tbaa !883
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  %i.ge = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !758, !range !128, !noundef !129
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = select i1 %i.gh, i64 8, i64 4
  %i.gj = add i64 %i.gi, %.185
  %i.gk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0239.0288) #30 ; 2 uses
  %.not282 = icmp eq ptr %i.gk, %i.at
  br i1 %.not282, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.ad
  %.pre314 = load ptr, ptr %i.av, align 8, !tbaa !883 ; 8 uses
  %.pre316 = load ptr, ptr %i.aw, align 8, !tbaa !886
  %i.gl = icmp eq ptr %.pre314, %.pre316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #26
  store i8 0, ptr %i.ae, align 1, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #26
  store i32 0, ptr %i.af, align 4, !tbaa !55
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br i1 %i.gl, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128: ; preds = %._crit_edge
  store i8 0, ptr %.pre314, align 8, !tbaa !887
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre314, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.pre314, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre314, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false)
  store ptr %i.gp, ptr %i.go, align 8, !tbaa !81
  store i8 0, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre314, i64 32
  store i64 0, ptr %i.gq, align 8, !tbaa !83
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre314, i64 56
  store ptr %i.gr, ptr %i.gm, align 8, !tbaa !883
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit131

bb.ae:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.gs = phi ptr [ %i.au, %._crit_edge.thread ], [ %i.gm, %._crit_edge ]
  %i.gt = phi ptr [ null, %._crit_edge.thread ], [ %.pre314, %._crit_edge ]
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.gt, ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit131

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, %bb.ae
  %i.gu = phi ptr [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.gs, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #26
  %i.gv = load ptr, ptr %7, align 8, !tbaa !893   ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit131
  %.sroa.0218.0 = phi ptr [ %i.gv, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit131 ], [ %i.hh, %bb.ak ] ; 6 uses
  %.sroa.0225.0 = phi ptr [ %i.gv, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit131 ], [ %.sroa.0225.1, %bb.ak ] ; 6 uses
  %i.gw = load i8, ptr %.sroa.0218.0, align 8, !tbaa !887
  switch i8 %i.gw, label %bb.aj [
    i8 0, label %bb.ag
    i8 -112, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %.sroa.0225.0, align 8, !tbaa !887
  %i.gx = load ptr, ptr %7, align 8, !tbaa !893   ; 5 uses
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !887 ; 2 uses
  %.not283299 = icmp eq i8 %i.gy, 0
  br i1 %.not283299, label %._crit_edge304, label %.lr.ph303

bb.ah:                                            ; preds = %bb.af
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0218.0, i64 56 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !887
  %i.hb = icmp eq i8 %i.ha, -128
  br i1 %i.hb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 -96, ptr %.sroa.0225.0, align 8, !tbaa !887
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0218.0, i64 64
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !889
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0225.0, i64 8
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !889
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0225.0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0218.0, i64 24, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0225.0, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0218.0, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %i.hg) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.0218.1 = phi ptr [ %i.gz, %bb.ai ], [ %.sroa.0218.0, %bb.aj ]
  %.sroa.0225.1 = getelementptr inbounds nuw i8, ptr %.sroa.0225.0, i64 56
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0218.1, i64 56
  br label %bb.af, !llvm.loop !903

._crit_edge304.loopexit:                          ; preds = %bb.aq
  %.pre317 = load ptr, ptr %7, align 8, !tbaa !893
  br label %._crit_edge304

._crit_edge304:                                   ; preds = %._crit_edge304.loopexit, %bb.ag
  %i.hi = phi ptr [ %i.gx, %bb.ag ], [ %.pre317, %._crit_edge304.loopexit ] ; 3 uses
  %.sroa.0225.2.lcssa = phi ptr [ %i.gx, %bb.ag ], [ %.sroa.0225.3, %._crit_edge304.loopexit ] ; 2 uses
  store i8 0, ptr %.sroa.0225.2.lcssa, align 8, !tbaa !887
  %i.hj = select i1 %i.ap, i64 120, i64 60
  %.v = select i1 %i.ap, i64 7, i64 3
  %i.hk = select i1 %i.ap, i64 3, i64 2
  br label %bb.ar

.lr.ph303:                                        ; preds = %bb.ag, %bb.aq
  %i.hl = phi i8 [ %i.il, %bb.aq ], [ %i.gy, %bb.ag ]
  %.sroa.0225.2301 = phi ptr [ %.sroa.0225.3, %bb.aq ], [ %i.gx, %bb.ag ] ; 6 uses
  %.sroa.0205.0300 = phi ptr [ %i.ik, %bb.aq ], [ %i.gx, %bb.ag ] ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0205.0300, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !889 ; 3 uses
  %i.ho = icmp eq i8 %i.hl, -96
  br i1 %i.ho, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.lr.ph303
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0205.0300, i64 56 ; 4 uses
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !887
  %i.hr = icmp eq i8 %i.hq, -96
  br i1 %i.hr, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0205.0300, i64 64
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !889
  %i.hu = icmp eq i64 %i.ht, %i.hn
  br i1 %i.hu, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  store i8 -64, ptr %.sroa.0225.2301, align 8, !tbaa !887
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0225.2301, i64 8 ; 2 uses
  store i64 1, ptr %i.hv, align 8, !tbaa !889
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0225.2301, i64 16
  store i64 %i.hn, ptr %i.hw, align 8, !tbaa !890
  %i.hx = load i8, ptr %i.hp, align 8, !tbaa !887
  %i.hy = icmp eq i8 %i.hx, -96
  br i1 %i.hy, label %.lr.ph296, label %.critedge

.lr.ph296:                                        ; preds = %bb.an, %bb.ao
  %i.hz = phi i64 [ %i.id, %bb.ao ], [ 1, %bb.an ]
  %.sroa.0205.1294 = phi ptr [ %i.ie, %bb.ao ], [ %i.hp, %bb.an ] ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0205.1294, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !889
  %i.ic = icmp eq i64 %i.ib, %i.hn
  br i1 %i.ic, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %.lr.ph296
  %i.id = add i64 %i.hz, 1                        ; 2 uses
  store i64 %i.id, ptr %i.hv, align 8, !tbaa !889
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0205.1294, i64 56 ; 3 uses
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !887
  %i.ig = icmp eq i8 %i.if, -96
  br i1 %i.ig, label %.lr.ph296, label %.critedge, !llvm.loop !904

.critedge:                                        ; preds = %.lr.ph296, %bb.ao, %bb.an
  %.sroa.0205.1.lcssa = phi ptr [ %i.hp, %bb.an ], [ %i.ie, %bb.ao ], [ %.sroa.0205.1294, %.lr.ph296 ]
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0205.1.lcssa, i64 -56
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am, %bb.al, %.lr.ph303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0225.2301, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0205.0300, i64 24, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0225.2301, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0205.0300, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %i.ij) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.critedge
  %.sroa.0205.2 = phi ptr [ %i.ih, %.critedge ], [ %.sroa.0205.0300, %bb.ap ]
  %.sroa.0225.3 = getelementptr inbounds nuw i8, ptr %.sroa.0225.2301, i64 56 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0205.2, i64 56 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !887 ; 2 uses
  %.not283 = icmp eq i8 %i.il, 0
  br i1 %.not283, label %._crit_edge304.loopexit, label %.lr.ph303, !llvm.loop !905

bb.ar:                                            ; preds = %.thread279, %._crit_edge304
  %.sroa.0193.0 = phi ptr [ %i.hi, %._crit_edge304 ], [ %i.jc, %.thread279 ] ; 6 uses
  %i.im = load i8, ptr %.sroa.0193.0, align 8, !tbaa !887
  switch i8 %i.im, label %.thread279 [
    i8 0, label %bb.as
    i8 -96, label %bb.at
    i8 32, label %bb.av
  ]

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %.sroa.0225.2.lcssa, align 8, !tbaa !887
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.in = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 40 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %9, i8 0, i64 64, i1 false)
  store ptr %i.in, ptr %i.io, align 8, !tbaa !837
  %i.ip = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 13 uses
  store i8 0, ptr %i.ip, align 8, !tbaa !847
  %i.iq = load ptr, ptr %i.gu, align 8
  %i.ir = icmp eq ptr %i.hi, %i.iq
  br i1 %i.ir, label %.critedge4, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.as
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 36 uses
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0193.0, i64 8 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !889 ; 3 uses
  %i.iv = icmp ult i64 %i.iu, %i.hj
  %i.iw = and i64 %i.iu, %.v
  %i.ix = icmp eq i64 %i.iw, 0
  %or.cond = select i1 %i.iv, i1 %i.ix, i1 false
  br i1 %or.cond, label %bb.au, label %.thread279

bb.au:                                            ; preds = %bb.at
  store i8 -80, ptr %.sroa.0193.0, align 8, !tbaa !887
  %i.iy = lshr i64 %i.iu, %i.hk
  store i64 %i.iy, ptr %i.it, align 8, !tbaa !889
  br label %.thread279

bb.av:                                            ; preds = %bb.ar
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0193.0, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !889
  %i.jb = icmp ult i64 %i.ja, 16
  br i1 %i.jb, label %bb.aw, label %.thread279

bb.aw:                                            ; preds = %bb.av
  store i8 16, ptr %.sroa.0193.0, align 8, !tbaa !887
  br label %.thread279

.thread279:                                       ; preds = %bb.ar, %bb.at, %bb.au, %bb.aw, %bb.av
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0193.0, i64 56
  br label %bb.ar, !llvm.loop !906

.critedge4:                                       ; preds = %bb.ax, %bb.cw, %bb.as
  %i.jd = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5alignEmh(ptr noundef nonnull align 8 dereferenceable(73) %9, i64 noundef %i.aq, i8 noundef zeroext 0) #26 ; 0 uses
  %i.je = load ptr, ptr %i.io, align 8, !tbaa !837 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !63 ; 2 uses
  %i.jh = load ptr, ptr %i.je, align 8, !tbaa !53 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !74
  %i.jn = icmp ugt i64 %i.jk, %i.jm
  br i1 %i.jn, label %bb.cx, label %bb.cy

bb.ax:                                            ; preds = %.lr.ph308, %bb.cw
  %.sroa.0190.0306 = phi ptr [ %i.hi, %.lr.ph308 ], [ %i.wb, %bb.cw ] ; 19 uses
  %i.jo = load i8, ptr %.sroa.0190.0306, align 8, !tbaa !887
  %i.jp = xor i8 %i.jo, -128                      ; 2 uses
  %i.jq = call i8 @llvm.fshl.i8(i8 %i.jp, i8 %i.jp, i8 4)
  switch i8 %i.jq, label %bb.cu [
    i8 8, label %.critedge4
    i8 9, label %bb.ay
    i8 10, label %bb.bc
    i8 11, label %bb.bg
    i8 12, label %bb.bk
    i8 13, label %bb.bo
    i8 14, label %bb.bs
    i8 15, label %bb.bw
    i8 0, label %bb.ca
    i8 1, label %bb.ce
    i8 2, label %bb.ci
    i8 3, label %bb.cm
    i8 4, label %bb.cq
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0190.0306, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !889
  %i.jt = trunc i64 %i.js to i8
  %i.ju = or i8 %i.jt, 16                         ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.is, align 8, !tbaa !58 ; 3 uses
  %i.jv = load ptr, ptr %i.io, align 8, !tbaa !837 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !63
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !53
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 2 uses
  %i.kc = add i64 %.sroa.0.0.copyload.i.i, 1      ; 2 uses
  %i.kd = icmp ult i64 %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.az

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.ay
  %i.ke = sub nuw i64 %i.kc, %i.kb
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 noundef %i.ke)
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %bb.ay
  %i.kf = load i8, ptr %i.ip, align 8, !tbaa !847, !range !128, !noundef !129
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  store i8 %i.ju, ptr %i.l, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.l) #26
  %i.kh = load ptr, ptr %i.io, align 8, !tbaa !837
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !53
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.sroa.0.0.copyload.i.i
  %i.kk = load i8, ptr %i.l, align 1
  store i8 %i.kk, ptr %i.kj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

bb.bb:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.io, align 8, !tbaa !837
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !53
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.0.copyload.i.i
  store i8 %i.ju, ptr %i.kn, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit: ; preds = %bb.ba, %bb.bb
  %i.ko = load i64, ptr %i.is, align 8, !tbaa !849
  %i.kp = add nsw i64 %i.ko, 1
  store i64 %i.kp, ptr %i.is, align 8, !tbaa !849
  br label %bb.cw

bb.bc:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i.i132 = load i64, ptr %i.is, align 8, !tbaa !58 ; 3 uses
  %i.kq = load ptr, ptr %i.io, align 8, !tbaa !837 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !63
  %i.kt = load ptr, ptr %i.kq, align 8, !tbaa !53
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 2 uses
  %i.kx = add i64 %.sroa.0.0.copyload.i.i132, 1   ; 2 uses
  %i.ky = icmp ult i64 %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i133, label %bb.bd

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i133:          ; preds = %bb.bc
  %i.kz = sub nuw i64 %i.kx, %i.kw
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i64 noundef %i.kz)
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i133, %bb.bc
  %i.la = load i8, ptr %i.ip, align 8, !tbaa !847, !range !128, !noundef !129
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i8 32, ptr %i.k, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.k) #26
  %i.lc = load ptr, ptr %i.io, align 8, !tbaa !837
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !53
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.sroa.0.0.copyload.i.i132
  %i.lf = load i8, ptr %i.k, align 1
  store i8 %i.lf, ptr %i.le, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit134

bb.bf:                                            ; preds = %bb.bd
  %i.lg = load ptr, ptr %i.io, align 8, !tbaa !837
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !53
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.sroa.0.0.copyload.i.i132
  store i8 32, ptr %i.li, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit134

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit134: ; preds = %bb.be, %bb.bf
  %i.lj = load i64, ptr %i.is, align 8, !tbaa !849
  %i.lk = add nsw i64 %i.lj, 1
  store i64 %i.lk, ptr %i.is, align 8, !tbaa !849
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0190.0306, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !889
  %i.ln = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream13write_uleb128Em(ptr noundef nonnull align 8 dereferenceable(73) %9, i64 noundef %i.lm) #26 ; 0 uses
  br label %bb.cw

bb.bg:                                            ; preds = %bb.ax
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0190.0306, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !889
  %i.lq = trunc i64 %i.lp to i8
  %i.lr = and i8 %i.lq, 15
  %i.ls = or disjoint i8 %i.lr, 48                ; 2 uses
  %.sroa.0.0.copyload.i.i135 = load i64, ptr %i.is, align 8, !tbaa !58 ; 3 uses
  %i.lt = load ptr, ptr %i.io, align 8, !tbaa !837 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !63
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !53
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 2 uses
  %i.ma = add i64 %.sroa.0.0.copyload.i.i135, 1   ; 2 uses
  %i.mb = icmp ult i64 %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i136, label %bb.bh

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i136:          ; preds = %bb.bg
  %i.mc = sub nuw i64 %i.ma, %i.lz
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, i64 noundef %i.mc)
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i136, %bb.bg
  %i.md = load i8, ptr %i.ip, align 8, !tbaa !847, !range !128, !noundef !129
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i8 %i.ls, ptr %i.j, align 1, !tbaa !66
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.j) #26
  %i.mf = load ptr, ptr %i.io, align 8, !tbaa !837
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !53
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %.sroa.0.0.copyload.i.i135
  %i.mi = load i8, ptr %i.j, align 1
  store i8 %i.mi, ptr %i.mh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
end_hunk_4
