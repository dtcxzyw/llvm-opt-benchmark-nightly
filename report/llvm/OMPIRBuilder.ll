Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OMPIRBuilder?download=true
inline.NumInlined: 20937
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 104
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4llvm15OpenMPIRBuilder8finalizeEPNS_8FunctionE:bb.a
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !500 ; 3 uses
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph145
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !130 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread, label %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i

_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i:    ; preds = %bb.p
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -24 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !411
  %i.eg = add i8 %i.ef, -31
  %i.eh = icmp ult i8 %i.eg, 12
  br i1 %i.eh, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i
  call void @_ZN4llvm11Instruction15adoptDbgRecordsEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, ptr noundef nonnull %i.dj, ptr nonnull %.sroa.0126.0143, i64 0, i1 noundef zeroext false) #26
  br label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread, !llvm.loop !1279

bb.q:                                             ; preds = %.lr.ph145
  %i.ei = call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ea) #26 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i64 } %i.ei, 0 ; 2 uses
  %.fca.1.extract2.i = extractvalue { ptr, i64 } %i.ei, 1
  %.not.i.i103 = icmp eq ptr %.fca.0.extract1.i, null
  %i.ej = and i64 %.fca.1.extract2.i, 65535
  %.sroa.4.0.i.i = select i1 %.not.i.i103, i64 0, i64 %i.ej
  call void @_ZN4llvm11Instruction20moveBeforePreservingERNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(80) %i.ea, ptr %.fca.0.extract1.i, i64 %.sroa.4.0.i.i) #26
  br label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i, %bb.p, %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit, %bb.q
  %.not139 = icmp eq ptr %i.du, %i.dk
  br i1 %.not139, label %._crit_edge146, label %.lr.ph145

_ZNKSt8functionIFvRN4llvm8FunctionEEEclES2_.exit: ; preds = %._crit_edge146
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1284
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(140) %i.co) #26, !inline_history !1280
  %.pre160 = load ptr, ptr %.0148, align 8, !tbaa !481
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt8functionIFvRN4llvm8FunctionEEEclES2_.exit, %._crit_edge146
  %i.en = phi ptr [ %.pre160, %_ZNKSt8functionIFvRN4llvm8FunctionEEEclES2_.exit ], [ %i.dq, %._crit_edge146 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 240
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !508, !range !118, !noundef !119
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZL32hoistNonEntryAllocasToEntryBlockPN4llvm8FunctionE(ptr noundef nonnull %i.co)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.er = load ptr, ptr %6, align 8, !tbaa !504   ; 3 uses
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13CodeExtractorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13CodeExtractorEEclEPS1_.exit.i: ; preds = %bb.t
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !110
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(320) %i.er) #26, !inline_history !1281
  br label %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN4llvm13CodeExtractorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ev = load i32, ptr %i.u, align 4, !tbaa !511 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit
  %i.ex = load ptr, ptr %i.v, align 8, !tbaa !512
  %i.ey = zext i32 %i.ev to i64                   ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ey, 31
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 1073741820
  %i.fd = add nuw nsw i64 %i.fc, %i.ez
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ex, i64 noundef %i.fd, i64 noundef 8) #26
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.u, %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit
  %i.fe = load i32, ptr %i.x, align 4, !tbaa !515 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  %i.fg = load ptr, ptr %i.w, align 8, !tbaa !516
  %i.fh = load ptr, ptr %i.y, align 8, !tbaa !517
  %i.fi = zext i32 %i.fe to i64
  %i.fj = add nuw nsw i64 %i.fi, 31
  %i.fk = lshr i64 %i.fj, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !250 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.fn = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.v

bb.v:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i114
  %.0.i3.i.i = phi i32 [ %i.fm, %.lr.ph.i.i114 ], [ %i.ge, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.fo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.fp = or disjoint i32 %i.fo, %i.fn
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !518 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !519
  %i.fx = zext i32 %i.ft to i64                   ; 2 uses
  %i.fy = shl nuw nsw i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fx, 31
  %i.ga = lshr i64 %i.fz, 3
  %i.gb = and i64 %i.ga, 1073741820
  %i.gc = add nuw nsw i64 %i.gb, %i.fy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fw, i64 noundef %i.gc, i64 noundef 8) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.w, %bb.v
  %i.gd = add i32 %.0.i3.i.i, -1
  %i.ge = and i32 %i.gd, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.v, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i115 = icmp eq i64 %indvars.iv.next.i.i, %i.fk
  br i1 %.not.i.i.i115, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !11

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i116 = load i32, ptr %i.x, align 4, !tbaa !515 ; 2 uses
  %i.gf = icmp eq i32 %.pr.i116, 0
  br i1 %i.gf, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i
  %i.gg = load ptr, ptr %i.w, align 8, !tbaa !516
  %i.gh = zext i32 %.pr.i116 to i64               ; 2 uses
  %i.gi = shl nuw nsw i64 %i.gh, 5
  %i.gj = add nuw nsw i64 %i.gh, 31
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = and i64 %i.gk, 1073741820
  %i.gm = add nuw nsw i64 %i.gl, %i.gi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gg, i64 noundef %i.gm, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, %bb.x
  %i.gn = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.z
  br i1 %i.go, label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit
  call void @free(ptr noundef %i.gn) #26
  br label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit

_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit:    ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %.0148, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gp, %i.p
  br i1 %.not, label %._crit_edge152, label %bb.b

._crit_edge157:                                   ; preds = %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit, %._crit_edge152
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvN4llvm15OpenMPIRBuilder21EmitMetadataErrorKindENS0_21TargetRegionEntryInfoEEZNS1_8finalizeEPNS0_8FunctionEE3$_0E9_M_invokeERKSt9_Any_dataOS2_OS3_", ptr %i.gr, align 8, !tbaa !521
  store ptr @"_ZNSt17_Function_handlerIFvN4llvm15OpenMPIRBuilder21EmitMetadataErrorKindENS0_21TargetRegionEntryInfoEEZNS1_8finalizeEPNS0_8FunctionEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.gq, align 8, !tbaa !113
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !522
  %i.gu = icmp eq i64 %i.gt, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = icmp eq i32 %i.gw, 0
  %i.gy = select i1 %i.gu, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.ae, label %bb.ad

.lr.ph156:                                        ; preds = %._crit_edge152, %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit
  %.089154 = phi ptr [ %i.hs, %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit ], [ %i.ac, %._crit_edge152 ] ; 2 uses
  %i.gz = load ptr, ptr %.089154, align 8, !tbaa !523 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 88 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !174
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -24
  %i.hd = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hc) #26 ; 2 uses
  %12 = load ptr, ptr %i.ha, align 8, !tbaa !174
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !174    ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i64 } %i.hd, 0 ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { ptr, i64 } %i.hd, 1
  %.not.i.i.i = icmp eq ptr %.fca.0.extract1.i.i, null
  %15 = and i64 %.fca.1.extract2.i.i, 65280
  %16 = or disjoint i64 %15, 1
  %.sroa.2.8.insert.ext.i.i = select i1 %.not.i.i.i, i64 1, i64 %16
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 80 ; 2 uses
  %.not2024.i = icmp eq ptr %14, %i.he
  br i1 %.not2024.i, label %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph156, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.016.025.i = phi ptr [ %i.hj, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %14, %.lr.ph156 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !131 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 24 ; 2 uses
  %.not2122.i = icmp eq ptr %i.hg, %i.hh
  br i1 %.not2122.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.lr.ph.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %bb.ac, %.lr.ph26.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !174 ; 2 uses
  %.not20.i = icmp eq ptr %i.hj, %i.he
  br i1 %.not20.i, label %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit, label %.lr.ph26.i, !llvm.loop !1282

.lr.ph.i:                                         ; preds = %.lr.ph26.i, %bb.ac
  %.sroa.03.023.i = phi ptr [ %i.hn, %bb.ac ], [ %i.hg, %.lr.ph26.i ] ; 3 uses
  %i.hk = getelementptr inbounds i8, ptr %.sroa.03.023.i, i64 -24 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !411
  %.not.i106 = icmp eq i8 %i.hl, 62
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.03.023.i, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !131 ; 2 uses
  br i1 %.not.i106, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ho = getelementptr inbounds i8, ptr %.sroa.03.023.i, i64 -56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !527
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !411
  %i.hr = icmp ult i8 %i.hq, 11
  br i1 %i.hr, label %bb.ab, label %bb.ac, !llvm.loop !1283

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm11Instruction20moveBeforePreservingENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.hk, ptr %.fca.0.extract1.i.i, i64 %.sroa.2.8.insert.ext.i.i) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i
  %.not21.i = icmp eq ptr %i.hn, %i.hh
  br i1 %.not21.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.lr.ph.i

_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.lr.ph156
  %i.hs = getelementptr inbounds nuw i8, ptr %.089154, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.hs, %i.ag
  br i1 %.not93, label %._crit_edge157, label %.lr.ph156

bb.ad:                                            ; preds = %._crit_edge157
  call void @_ZN4llvm15OpenMPIRBuilder35createOffloadEntriesAndInfoMetadataERSt8functionIFvNS0_21EmitMetadataErrorKindENS_21TargetRegionEntryInfoEEE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge157
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 405
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !216, !range !118, !noundef !119
  %i.hw = trunc nuw i8 %i.hv to i1
  %.val.i = load i8, ptr %i.ht, align 4, !range !118
  %i.hx = trunc nuw i8 %.val.i to i1
  %.0.i = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %.0.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !362, !nonnull !119, !align !176
  %i.ia = call noundef ptr @_ZNK4llvm6Module17getGlobalVariableENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(1288) %i.hz, ptr nonnull @.str.211, i64 46, i1 noundef zeroext false) #26 ; 2 uses
  store i64 6, ptr %11, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ib, align 8, !tbaa !532
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !533
  %.not.i.i107 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i107, label %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  br label %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit

_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit:      ; preds = %bb.af, %bb.ag
  %i.id = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 7 uses
  store i64 6, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr null, ptr %i.ie, align 8, !tbaa !532
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !533 ; 2 uses
  store ptr %i.ig, ptr %i.if, align 8, !tbaa !533
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit, label %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm14WeakTrackingVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %11, align 8
  %i.ih = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ii = inttoptr i64 %i.ih to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef %i.ii) #26
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.pre162 = load ptr, ptr %.phi.trans.insert161, align 8, !tbaa !533
  %i.ij = icmp eq ptr %.pre162, null
  br i1 %i.ij, label %_ZN4llvm15ValueHandleBaseD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit

_ZN4llvm15ValueHandleBaseD2Ev.exit:               ; preds = %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit, %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN4llvm15OpenMPIRBuilder8emitUsedENS_9StringRefENS_8ArrayRefINS_14WeakTrackingVHEEE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @.str.212, i64 18, ptr nonnull %i.id, i64 1)
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !533
  %.not.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm14WeakTrackingVHEEvPT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.id) #26
  br label %_ZSt8_DestroyIN4llvm14WeakTrackingVHEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm14WeakTrackingVHEEvPT_.exit.i.i.i: ; preds = %bb.ai, %_ZN4llvm15ValueHandleBaseD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 24) #30
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIN4llvm14WeakTrackingVHEEvPT_.exit.i.i.i, %bb.ae
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store i8 1, ptr %i.il, align 8, !tbaa !534
  %i.im = load ptr, ptr %i.gq, align 8, !tbaa !113 ; 2 uses
  %.not.i110 = icmp eq ptr %i.im, null
  br i1 %.not.i110, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.in = call noundef zeroext i1 %i.im(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.io = load ptr, ptr %4, align 8, !tbaa !122   ; 3 uses
  %i.ip = load i32, ptr %i.i, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.iq = zext i32 %i.ip to i64
  %.idx.i = shl nuw nsw i64 %i.iq, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.is, %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i ], [ %i.ir, %.lr.ph.i.preheader.i ]
  %i.is = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !481 ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i111, label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !110
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(241) %i.it) #26, !inline_history !12
  br label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i112 = icmp eq ptr %i.io, %i.is
  br i1 %.not.i.i112, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i
  %.pre.i113 = load ptr, ptr %4, align 8, !tbaa !122
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.ix = phi ptr [ %.pre.i113, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.io, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.h
  br i1 %i.iy, label %_ZN4llvm11SmallVectorISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELj16EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  call void @free(ptr noundef %i.ix) #26
  br label %_ZN4llvm11SmallVectorISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELj16EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELj16EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.iz = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.e
  br i1 %i.ja, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELj16EED2Ev.exit
  call void @free(ptr noundef %i.iz) #26
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELj16EED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.jb = load i8, ptr %i.d, align 8, !tbaa !117, !range !118, !noundef !119
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit
  %i.jd = load ptr, ptr %2, align 8, !tbaa !120
  call void @free(ptr noundef %i.jd) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15OpenMPIRBuilder11OutlineInfo13collectBlocksERNS_15SmallPtrSetImplIPNS_10BasicBlockEEERNS_15SmallVectorImplIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.250", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !122
end_hunk_0
begin_hunk_1_@_ZN4llvm15OpenMPIRBuilder24createOrderedThreadsSimdERKNS0_19LocationDescriptionENS_12function_refIFNS_5ErrorENS_13IRBuilderBase11InsertPointES7_NS_8ArrayRefIPNS_10BasicBlockEEEEEESt8functionIFS5_S7_EEb:bb.a
  %i.h = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i, i64 -24
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.h) #26
  %i.j = load i64, ptr %i.i, align 8, !tbaa !133
  store i64 %i.j, ptr %i.d, align 8, !tbaa !133
  br label %_ZN4llvm15OpenMPIRBuilder16updateToLocationERKNS0_19LocationDescriptionE.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.k, i8 0, i64 18, i1 false)
  br label %_ZN4llvm15OpenMPIRBuilder16updateToLocationERKNS0_19LocationDescriptionE.exit

_ZN4llvm15OpenMPIRBuilder16updateToLocationERKNS0_19LocationDescriptionE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !133
  %i.n = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %.not = icmp eq ptr %i.n, null
  %i.o = inttoptr i64 %i.m to ptr
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm15OpenMPIRBuilder16updateToLocationERKNS0_19LocationDescriptionE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, -2
  store i8 %i.r, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm15OpenMPIRBuilder16updateToLocationERKNS0_19LocationDescriptionE.exit
  br i1 %6, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173
  %i.u = call noundef ptr @_ZN4llvm15OpenMPIRBuilder20getOrCreateSrcLocStrENS_8DebugLocERjPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef %i.t)
  %i.v = load i32, ptr %i.b, align 4, !tbaa !250
  %i.w = tail call noundef ptr @_ZN4llvm15OpenMPIRBuilder16getOrCreateIdentEPNS_8ConstantEjNS_3omp9IdentFlagEj(ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr noundef %i.u, i32 noundef %i.v, i32 noundef 0, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.w, ptr %i.a, align 8, !tbaa !249
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !362, !nonnull !119, !align !176
  %i.z = tail call { ptr, ptr } @_ZN4llvm15OpenMPIRBuilder26getOrCreateRuntimeFunctionERNS_6ModuleENS_3omp15RuntimeFunctionE(ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr noundef nonnull align 8 dereferenceable(1288) %i.y, i32 noundef 5)
  %i.aa = extractvalue { ptr, ptr } %i.z, 1       ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !411
  %i.ac = icmp eq i8 %i.ab, 14
  %spec.select.i.i.i.i = select i1 %i.ac, ptr %i.aa, ptr null ; 2 uses
  %.not.i.i14 = icmp eq ptr %spec.select.i.i.i.i, null
  br i1 %.not.i.i14, label %_ZN4llvm15OpenMPIRBuilder19getOrCreateThreadIDEPNS_5ValueE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !592
  br label %_ZN4llvm15OpenMPIRBuilder19getOrCreateThreadIDEPNS_5ValueE.exit

_ZN4llvm15OpenMPIRBuilder19getOrCreateThreadIDEPNS_5ValueE.exit: ; preds = %bb.g, %bb.h
  %i.af = phi ptr [ %i.ae, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.ag, align 8, !tbaa !151
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !152
  store ptr @.str.216, ptr %9, align 8, !tbaa !153
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 21, ptr %i.ai, align 8, !tbaa !153
  %i.aj = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef %i.af, ptr noundef %spec.select.i.i.i.i, ptr nonnull %i.a, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 564 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !237
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !397
  %i.ao = and i16 %i.an, -4093
  %.tr.i.i.i.i.i.i = trunc i32 %i.al to i16
  %i.ap = shl i16 %.tr.i.i.i.i.i.i, 2
  %i.aq = and i16 %i.ap, 4092
  %i.ar = or disjoint i16 %i.aq, %i.ao
  store i16 %i.ar, ptr %i.am, align 2, !tbaa !397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr %i.w, ptr %i.c, align 16, !tbaa !249
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !249
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !362, !nonnull !119, !align !176
  %i.au = call { ptr, ptr } @_ZN4llvm15OpenMPIRBuilder26getOrCreateRuntimeFunctionERNS_6ModuleENS_3omp15RuntimeFunctionE(ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr noundef nonnull align 8 dereferenceable(1288) %i.at, i32 noundef 60)
  %i.av = extractvalue { ptr, ptr } %i.au, 1      ; 3 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !411
  %i.ax = icmp eq i8 %i.aw, 14
  %spec.select.i.i.i = select i1 %i.ax, ptr %i.av, ptr null ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15OpenMPIRBuilder19getOrCreateThreadIDEPNS_5ValueE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !592
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %_ZN4llvm15OpenMPIRBuilder19getOrCreateThreadIDEPNS_5ValueE.exit, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.i ], [ null, %_ZN4llvm15OpenMPIRBuilder19getOrCreateThreadIDEPNS_5ValueE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.bb, align 8, !tbaa !151
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bc, align 1, !tbaa !152
  store ptr @.str.11, ptr %8, align 8, !tbaa !153
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !153
  %i.be = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef %i.ba, ptr noundef %spec.select.i.i.i, ptr nonnull %i.c, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bf = load i32, ptr %i.ak, align 4, !tbaa !237
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !397
  %i.bi = and i16 %i.bh, -4093
  %.tr.i.i.i.i.i = trunc i32 %i.bf to i16
  %i.bj = shl i16 %.tr.i.i.i.i.i, 2
  %i.bk = and i16 %i.bj, 4092
  %i.bl = or disjoint i16 %i.bk, %i.bi
  store i16 %i.bl, ptr %i.bg, align 2, !tbaa !397
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !362, !nonnull !119, !align !176
  %i.bn = call { ptr, ptr } @_ZN4llvm15OpenMPIRBuilder26getOrCreateRuntimeFunctionERNS_6ModuleENS_3omp15RuntimeFunctionE(ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr noundef nonnull align 8 dereferenceable(1288) %i.bm, i32 noundef 61)
  %i.bo = extractvalue { ptr, ptr } %i.bn, 1      ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !411
  %i.bq = icmp eq i8 %i.bp, 14
  %spec.select.i.i.i18 = select i1 %i.bq, ptr %i.bo, ptr null ; 2 uses
  %.not.i19 = icmp eq ptr %spec.select.i.i.i18, null
  br i1 %.not.i19, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit20, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !592
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit20

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit20: ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, %bb.j
  %i.bt = phi ptr [ %i.bs, %bb.j ], [ null, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 5, ptr %i.bu, align 8, !tbaa !151
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bv, align 1, !tbaa !152
  store ptr @.str.11, ptr %7, align 8, !tbaa !153
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !153
  %i.bx = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef %i.bt, ptr noundef %spec.select.i.i.i18, ptr nonnull %i.c, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.by = load i32, ptr %i.ak, align 4, !tbaa !237
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !397
  %i.cb = and i16 %i.ca, -4093
  %.tr.i.i.i.i.i24 = trunc i32 %i.by to i16
  %i.cc = shl i16 %.tr.i.i.i.i.i24, 2
  %i.cd = and i16 %i.cc, 4092
  %i.ce = or disjoint i16 %i.cd, %i.cb
  store i16 %i.ce, ptr %i.bz, align 2, !tbaa !397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit20, %bb.f
  %.013 = phi ptr [ %i.bx, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit20 ], [ null, %bb.f ]
  %.0 = phi ptr [ %i.be, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit20 ], [ null, %bb.f ]
  store ptr %3, ptr %10, align 8, !tbaa !535
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !413
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN4llvm5ErrorENS0_13IRBuilderBase11InsertPointEEEC2ERKS5_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ci = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2) #26, !inline_history !33 ; 0 uses
  %i.cj = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !535
  store <2 x ptr> %i.cj, ptr %i.ch, align 8, !tbaa !535
  br label %_ZNSt8functionIFN4llvm5ErrorENS0_13IRBuilderBase11InsertPointEEEC2ERKS5_.exit

_ZNSt8functionIFN4llvm5ErrorENS0_13IRBuilderBase11InsertPointEEEC2ERKS5_.exit: ; preds = %bb.k, %bb.l
  call void @_ZN4llvm15OpenMPIRBuilder20EmitOMPInlinedRegionENS_3omp9DirectiveEPNS_11InstructionES4_NS_12function_refIFNS_5ErrorENS_13IRBuilderBase11InsertPointES8_NS_8ArrayRefIPNS_10BasicBlockEEEEEESt8functionIFS6_S8_EEbbb(ptr dead_on_unwind writable sret(%"class.llvm::Expected.325") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1864) %1, i32 noundef 45, ptr noundef %.0, ptr noundef %.013, ptr noundef nonnull byval(%"class.llvm::function_ref.328") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !113 ; 2 uses
  %.not.i25 = icmp eq ptr %i.cl, null
  br i1 %.not.i25, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFN4llvm5ErrorENS0_13IRBuilderBase11InsertPointEEEC2ERKS5_.exit
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %_ZNSt8functionIFN4llvm5ErrorENS0_13IRBuilderBase11InsertPointEEEC2ERKS5_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15OpenMPIRBuilder24emitCommonDirectiveEntryENS_3omp9DirectiveEPNS_5ValueEPNS_10BasicBlockEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::IRBuilderBase::InsertPoint") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(1864) %1, i32 %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::InsertPosition", align 8 ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %5
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 4 uses
  br i1 %or.cond, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x ptr>, ptr %11, align 8, !noalias !2785
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2785
  %.sroa.22.8.insert.ext.i = and i64 %.sroa.2.0.copyload.i.i, 65535
  br label %bb.c

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 5 uses
  %i.d = load ptr, ptr %11, align 8, !tbaa !146   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 257, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !247
  %i.h = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.g) #26
  %i.i = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i32 noundef 33, ptr noundef nonnull %3, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(34) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !362, !nonnull !119, !align !176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !465, !nonnull !119, !align !176
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !152
  store ptr @.str.360, ptr %8, align 8, !tbaa !153
  store i8 3, ptr %i.m, align 8, !tbaa !151
  %i.o = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 7 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null, ptr noundef null) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.p = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !175, !nonnull !119, !align !176
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.o) #26
  %i.s = load ptr, ptr %9, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN4llvm15UnreachableInstC1ERNS_11LLVMContextENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr %i.s, i64 %i.u) #26
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !174  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  call void @_ZN4llvm21SymbolTableListTraitsINS_10BasicBlockEJEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %i.o) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !507 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !174
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !507
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !174
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !507
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -24 ; 3 uses
  %i.ah = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #26 ; 3 uses
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef %i.i, ptr noundef nonnull %i.o, ptr noundef %4, ptr null, i64 0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  store i16 257, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210, !nonnull !119, !align !176 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 4 uses
  %.sroa.0.0.copyload.i.i26 = load ptr, ptr %i.al, align 8
  %.sroa.2.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 4 uses
  %.sroa.2.0.copyload.i.i28 = load i64, ptr %.sroa.2.0..sroa_idx.i.i27, align 8
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i26, i64 %.sroa.2.0.copyload.i.i28) #26, !inline_history !20
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull %i.ah) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN4llvm11Instruction16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ag) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !148
  store ptr %i.ar, ptr %11, align 8, !tbaa !146
  store ptr %i.ap, ptr %i.al, align 8
  store i16 0, ptr %.sroa.2.0..sroa_idx.i.i27, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p) #26
  %i.at = load i64, ptr %i.as, align 8, !tbaa !133
  store i64 %i.at, ptr %i.c, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !210, !nonnull !119, !align !176 ; 2 uses
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.al, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i27, align 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i29, i64 %.sroa.2.0.copyload.i) #26, !inline_history !72
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.az = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p) #26 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !130 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !148
  store ptr %i.be, ptr %11, align 8, !tbaa !146
  store ptr %i.bb, ptr %i.al, align 8
  store i16 0, ptr %.sroa.2.0..sroa_idx.i.i27, align 8
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bc) #26
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !133
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !133
  %i.bh = call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #26 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i64 } %i.bh, 0 ; 2 uses
  %.fca.1.extract2.i = extractvalue { ptr, i64 } %i.bh, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract1.i, null
  %i.bi = and i64 %.fca.1.extract2.i, 65535
  %.sroa.4.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.bi
  %i.bj = insertelement <2 x ptr> poison, ptr %4, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %.fca.0.extract1.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.b
  %.sroa.4.0.i.i.sink = phi i64 [ %.sroa.4.0.i.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.22.8.insert.ext.i, %bb.b ]
  %i.bl = phi <2 x ptr> [ %i.bk, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %i.b, %bb.b ]
  store <2 x ptr> %i.bl, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i.sink, ptr %.sroa.2.0..sroa_idx.i31, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15OpenMPIRBuilder23emitCommonDirectiveExitENS_3omp9DirectiveENS_13IRBuilderBase11InsertPointEPNS_11InstructionEb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.325") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1864) initializes((592, 610)) %1, i32 %2, ptr nofree noundef readonly byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 captures(none) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"struct.llvm::OpenMPIRBuilder::FinalizationInfo", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 4 uses
  %.sroa.023.0.copyload = load ptr, ptr %3, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.023.0.copyload, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %.sroa.023.0.copyload, ptr %i.b, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %.sroa.2.0.copyload, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.45.0.extract.trunc.i.i = trunc i64 %.sroa.3.0.copyload to i16
  store i16 %.sroa.45.0.extract.trunc.i.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 48
  %.not.i.i = icmp eq ptr %.sroa.2.0.copyload, %i.d
  br i1 %.not.i.i, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.2.0.copyload, i64 -24
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.e) #26
  %i.g = load i64, ptr %i.f, align 8, !tbaa !133
  store i64 %i.g, ptr %i.a, align 8, !tbaa !133
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.h, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit: ; preds = %bb.b, %bb.c, %bb.d
  br i1 %5, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  %i.i = load ptr, ptr %1, align 8, !tbaa !122, !noalias !2792 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !211, !noalias !2792 ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false), !alias.scope !2792
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !405, !noalias !2792
  store ptr %i.r, ptr %i.p, align 8, !tbaa !405, !alias.scope !2792
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113, !noalias !2792 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoC2EOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 -32
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !610
  store ptr %i.t, ptr %i.v, align 8, !tbaa !113, !alias.scope !2792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !2792
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !211, !noalias !2792
  %.pre2.i = load ptr, ptr %1, align 8, !tbaa !122, !noalias !2792
  br label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoC2EOS1_.exit.i

_ZN4llvm15OpenMPIRBuilder16FinalizationInfoC2EOS1_.exit.i: ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.i, %bb.e ], [ %.pre2.i, %bb.f ]
  %i.x = phi i32 [ %i.k, %bb.e ], [ %.pre.i, %bb.f ]
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.j, align 8, !tbaa !211, !noalias !2792
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113, !noalias !2792 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_15OpenMPIRBuilder16FinalizationInfoEE12pop_back_valEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoC2EOS1_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3) #26, !noalias !2792, !inline_history !26 ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_15OpenMPIRBuilder16FinalizationInfoEE12pop_back_valEv.exit

_ZN4llvm15SmallVectorImplINS_15OpenMPIRBuilder16FinalizationInfoEE12pop_back_valEv.exit: ; preds = %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoC2EOS1_.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4llvm15OpenMPIRBuilder16FinalizationInfo11mergeFiniBBERNS_13IRBuilderBaseEPNS_10BasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %.sroa.023.0.copyload)
  %i.af = load ptr, ptr %7, align 8, !tbaa !408   ; 2 uses
  %.not24 = icmp eq ptr %i.af, null               ; 2 uses
  br i1 %.not24, label %_ZN4llvm5ErrorD2Ev.exit11, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm15SmallVectorImplINS_15OpenMPIRBuilder16FinalizationInfoEE12pop_back_valEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = or i8 %i.ah, 1
  store i8 %i.ai, ptr %i.ag, align 8
  store ptr %i.af, ptr %0, align 8, !tbaa !409, !alias.scope !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.h

_ZN4llvm5ErrorD2Ev.exit11:                        ; preds = %_ZN4llvm15SmallVectorImplINS_15OpenMPIRBuilder16FinalizationInfoEE12pop_back_valEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !130 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !148
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !146
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %i.ak, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.al) #26
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !133
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !133
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit11
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !113 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.at, null
  br i1 %.not.i.i12, label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit

_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.not24, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %i.aw, align 8, !noalias !2794
  %.sroa.2.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.2.0.copyload.i.i15 = load i64, ptr %.sroa.2.0..sroa_idx.i.i14, align 8, !noalias !2794
  %.sroa.22.8.insert.ext.i = and i64 %.sroa.2.0.copyload.i.i15, 65535
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  call void @_ZN4llvm11Instruction16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i16 257, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !210, !nonnull !119, !align !176 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ba, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #26, !inline_history !72
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l
  %.sink30.in = phi ptr [ %i.bf, %bb.l ], [ %i.av, %bb.k ]
  %.sink29 = phi ptr [ %i.be, %bb.l ], [ %.sroa.0.0.copyload.i.i13, %bb.k ]
  %.sink = phi i64 [ 0, %bb.l ], [ %.sroa.22.8.insert.ext.i, %bb.k ]
end_hunk_1
