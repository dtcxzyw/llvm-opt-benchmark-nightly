Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OMPIRBuilder?download=true
inline.NumInlined: 20937
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4llvm15OpenMPIRBuilder8finalizeEPNS_8FunctionE:bb.a
  %.idx158 = shl nuw nsw i64 %i.ci, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx158
  %.not96140 = icmp eq i32 %i.ch, 0
  br i1 %.not96140, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %.0148, align 8, !tbaa !512
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  %i.ck = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cd, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit ] ; 2 uses
  %i.cl = load ptr, ptr %6, align 8, !tbaa !535
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.co = call noundef ptr @_ZN4llvm13CodeExtractor17extractCodeRegionERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_(ptr noundef nonnull align 8 dereferenceable(320) %i.cl, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #26 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cp = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.bt, ptr nonnull @.str.209, i64 10) #26
  store ptr %i.cp, ptr %8, align 8
  %i.cq = call noundef zeroext i1 @_ZNK4llvm9Attribute17isStringAttributeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br i1 %i.cq, label %bb.l, label %bb.m

.lr.ph:                                           ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit, %.lr.ph
  %.090141 = phi ptr [ %i.ct, %.lr.ph ], [ %i.cf, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit ] ; 2 uses
  %i.cr = load ptr, ptr %.090141, align 8, !tbaa !199
  %i.cs = load ptr, ptr %6, align 8, !tbaa !535
  call void @_ZN4llvm13CodeExtractor23excludeArgFromAggregateEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(320) %i.cs, ptr noundef %i.cr) #26
  %i.ct = getelementptr inbounds nuw i8, ptr %.090141, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.ct, %i.cj
  br i1 %.not96, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge
  %.sroa.046.0.copyload = load ptr, ptr %8, align 8, !tbaa !537
  call void @_ZN4llvm8Function9addFnAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(140) %i.co, ptr %.sroa.046.0.copyload) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cu = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.bt, ptr nonnull @.str.210, i64 15) #26
  store ptr %i.cu, ptr %9, align 8
  %i.cv = call noundef zeroext i1 @_ZNK4llvm9Attribute17isStringAttributeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br i1 %i.cv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.045.0.copyload = load ptr, ptr %9, align 8, !tbaa !537
  call void @_ZN4llvm8Function9addFnAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(140) %i.co, ptr %.sroa.045.0.copyload) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN4llvm8Function16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(140) %i.co) #26
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !245, !nonnull !19, !align !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !539
  %i.da = icmp eq ptr %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %..i = select i1 %i.da, ptr %i.cx, ptr %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !78 ; 3 uses
  call void @_ZN4llvm21SymbolTableListTraitsINS_8FunctionEJEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull %i.co) #26
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !539 ; 2 uses
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !78
  store ptr %i.df, ptr %i.db, align 8, !tbaa !539
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.db, ptr %i.dg, align 8, !tbaa !78
  store ptr %i.db, ptr %i.de, align 8, !tbaa !539
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !78 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !28 ; 2 uses
  %.not139142 = icmp eq ptr %i.dl, %i.dk
  br i1 %.not139142, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread, %bb.o
  %i.dm = load ptr, ptr %.0148, align 8, !tbaa !512
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !514
  call void @_ZN4llvm10BasicBlock10moveBeforeENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr nonnull %i.di) #26
  %i.dp = call ptr @_ZN4llvm10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dj) #26 ; 0 uses
  %i.dq = load ptr, ptr %.0148, align 8, !tbaa !512 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  %.not.i.i.not = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.not, label %bb.r, label %_ZNKSt8functionIFvRN4llvm8FunctionEEEclES2_.exit

.lr.ph145:                                        ; preds = %bb.o, %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread
  %.sroa.0126.0143 = phi ptr [ %i.du, %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread ], [ %i.dl, %bb.o ] ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0126.0143, i64 -24 ; 2 uses
  %i.du = load ptr, ptr %.sroa.0126.0143, align 8, !tbaa !28 ; 2 uses
  %i.dv = load i8, ptr %i.dt, align 8, !tbaa !424
  %i.dw = add i8 %i.dv, -31
  %i.dx = icmp ult i8 %i.dw, 12
  %i.dy = load ptr, ptr %.0148, align 8, !tbaa !512
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !514 ; 3 uses
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph145
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !28 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread, label %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i

_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i:    ; preds = %bb.p
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -24 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !424
  %i.eg = add i8 %i.ef, -31
  %i.eh = icmp ult i8 %i.eg, 12
  br i1 %i.eh, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i
  call void @_ZN4llvm11Instruction15adoptDbgRecordsEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, ptr noundef nonnull %i.dj, ptr nonnull %.sroa.0126.0143, i64 0, i1 noundef zeroext false) #26
  br label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.thread, !llvm.loop !540

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
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !541
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(140) %i.co) #26, !inline_history !542
  %.pre160 = load ptr, ptr %.0148, align 8, !tbaa !512
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt8functionIFvRN4llvm8FunctionEEEclES2_.exit, %._crit_edge146
  %i.en = phi ptr [ %.pre160, %_ZNKSt8functionIFvRN4llvm8FunctionEEEclES2_.exit ], [ %i.dq, %._crit_edge146 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 240
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !543, !range !18, !noundef !19
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZL32hoistNonEntryAllocasToEntryBlockPN4llvm8FunctionE(ptr noundef nonnull %i.co)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.er = load ptr, ptr %6, align 8, !tbaa !535   ; 3 uses
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13CodeExtractorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13CodeExtractorEEclEPS1_.exit.i: ; preds = %bb.t
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(320) %i.er) #26, !inline_history !544
  br label %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN4llvm13CodeExtractorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ev = load i32, ptr %i.u, align 4, !tbaa !545 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit
  %i.ex = load ptr, ptr %i.v, align 8, !tbaa !548
  %i.ey = zext i32 %i.ev to i64                   ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ey, 31
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 1073741820
  %i.fd = add nuw nsw i64 %i.fc, %i.ez
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ex, i64 noundef %i.fd, i64 noundef 8) #26
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.u, %_ZNSt10unique_ptrIN4llvm13CodeExtractorESt14default_deleteIS1_EED2Ev.exit
  %i.fe = load i32, ptr %i.x, align 4, !tbaa !549 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  %i.fg = load ptr, ptr %i.w, align 8, !tbaa !552
  %i.fh = load ptr, ptr %i.y, align 8, !tbaa !553
  %i.fi = zext i32 %i.fe to i64
  %i.fj = add nuw nsw i64 %i.fi, 31
  %i.fk = lshr i64 %i.fj, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.fn = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.v

bb.v:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i114
  %.0.i3.i.i = phi i32 [ %i.fm, %.lr.ph.i.i114 ], [ %i.ge, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.fo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.fp = or disjoint i32 %i.fo, %i.fn
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !554 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !555
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
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.v, !llvm.loop !556

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i115 = icmp eq i64 %indvars.iv.next.i.i, %i.fk
  br i1 %.not.i.i.i115, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !557

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i116 = load i32, ptr %i.x, align 4, !tbaa !549 ; 2 uses
  %i.gf = icmp eq i32 %.pr.i116, 0
  br i1 %i.gf, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i
  %i.gg = load ptr, ptr %i.w, align 8, !tbaa !552
  %i.gh = zext i32 %.pr.i116 to i64               ; 2 uses
  %i.gi = shl nuw nsw i64 %i.gh, 5
  %i.gj = add nuw nsw i64 %i.gh, 31
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = and i64 %i.gk, 1073741820
  %i.gm = add nuw nsw i64 %i.gl, %i.gi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gg, i64 noundef %i.gm, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, %bb.x
  %i.gn = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
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
  store ptr @"_ZNSt17_Function_handlerIFvN4llvm15OpenMPIRBuilder21EmitMetadataErrorKindENS0_21TargetRegionEntryInfoEEZNS1_8finalizeEPNS0_8FunctionEE3$_0E9_M_invokeERKSt9_Any_dataOS2_OS3_", ptr %i.gr, align 8, !tbaa !558
  store ptr @"_ZNSt17_Function_handlerIFvN4llvm15OpenMPIRBuilder21EmitMetadataErrorKindENS0_21TargetRegionEntryInfoEEZNS1_8finalizeEPNS0_8FunctionEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.gq, align 8, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !560
  %i.gu = icmp eq i64 %i.gt, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = icmp eq i32 %i.gw, 0
  %i.gy = select i1 %i.gu, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.ae, label %bb.ad

.lr.ph156:                                        ; preds = %._crit_edge152, %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit
  %.089154 = phi ptr [ %i.hx, %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit ], [ %i.ac, %._crit_edge152 ] ; 2 uses
  %i.gz = load ptr, ptr %.089154, align 8, !tbaa !561 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 88 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !78
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -24
  %i.hd = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hc) #26 ; 2 uses
  %i.he = load ptr, ptr %i.ha, align 8, !tbaa !78
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !78 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i64 } %i.hd, 0 ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { ptr, i64 } %i.hd, 1
  %.not.i.i.i = icmp eq ptr %.fca.0.extract1.i.i, null
  %i.hh = and i64 %.fca.1.extract2.i.i, 65280
  %i.hi = or disjoint i64 %i.hh, 1
  %.sroa.2.8.insert.ext.i.i = select i1 %.not.i.i.i, i64 1, i64 %i.hi
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 80 ; 2 uses
  %.not2024.i = icmp eq ptr %i.hg, %i.hj
  br i1 %.not2024.i, label %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph156, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.016.025.i = phi ptr [ %i.ho, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.hg, %.lr.ph156 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !31 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 24 ; 2 uses
  %.not2122.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not2122.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.lr.ph.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %bb.ac, %.lr.ph26.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !78 ; 2 uses
  %.not20.i = icmp eq ptr %i.ho, %i.hj
  br i1 %.not20.i, label %_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit, label %.lr.ph26.i, !llvm.loop !562

.lr.ph.i:                                         ; preds = %.lr.ph26.i, %bb.ac
  %.sroa.03.023.i = phi ptr [ %i.hs, %bb.ac ], [ %i.hl, %.lr.ph26.i ] ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %.sroa.03.023.i, i64 -24 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !424
  %.not.i106 = icmp eq i8 %i.hq, 62
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.03.023.i, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !31 ; 2 uses
  br i1 %.not.i106, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ht = getelementptr inbounds i8, ptr %.sroa.03.023.i, i64 -56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !563
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !424
  %i.hw = icmp ult i8 %i.hv, 11
  br i1 %i.hw, label %bb.ab, label %bb.ac, !llvm.loop !567

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm11Instruction20moveBeforePreservingENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.hp, ptr %.fca.0.extract1.i.i, i64 %.sroa.2.8.insert.ext.i.i) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i
  %.not21.i = icmp eq ptr %i.hs, %i.hm
  br i1 %.not21.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.lr.ph.i

_ZL40raiseUserConstantDataAllocasToEntryBlockRN4llvm13IRBuilderBaseEPNS_8FunctionE.exit: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.lr.ph156
  %i.hx = getelementptr inbounds nuw i8, ptr %.089154, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.hx, %i.ag
  br i1 %.not93, label %._crit_edge157, label %.lr.ph156

bb.ad:                                            ; preds = %._crit_edge157
  call void @_ZN4llvm15OpenMPIRBuilder35createOffloadEntriesAndInfoMetadataERSt8functionIFvNS0_21EmitMetadataErrorKindENS_21TargetRegionEntryInfoEEE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge157
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 405
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !159, !range !18, !noundef !19
  %i.ib = trunc nuw i8 %i.ia to i1
  %.val.i = load i8, ptr %i.hy, align 4, !range !18
  %i.ic = trunc nuw i8 %.val.i to i1
  %.0.i = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %.0.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !245, !nonnull !19, !align !94
  %i.if = call noundef ptr @_ZNK4llvm6Module17getGlobalVariableENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(1288) %i.ie, ptr nonnull @.str.211, i64 46, i1 noundef zeroext false) #26 ; 2 uses
  store i64 6, ptr %11, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ig, align 8, !tbaa !568
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !573
  %.not.i.i107 = icmp eq ptr %i.if, null
  br i1 %.not.i.i107, label %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  br label %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit

_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit:      ; preds = %bb.af, %bb.ag
  %i.ii = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 7 uses
  store i64 6, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr null, ptr %i.ij, align 8, !tbaa !568
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !573 ; 2 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !573
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit, label %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm14WeakTrackingVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm14WeakTrackingVHC2EPNS_5ValueE.exit
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %11, align 8
  %i.im = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.in = inttoptr i64 %i.im to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef %i.in) #26
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.pre162 = load ptr, ptr %.phi.trans.insert161, align 8, !tbaa !573
  %i.io = icmp eq ptr %.pre162, null
  br i1 %i.io, label %_ZN4llvm15ValueHandleBaseD2Ev.exit, label %bb.ah
end_hunk_0
begin_hunk_1_@_ZN4llvm15OpenMPIRBuilder14createParallelERKNS0_19LocationDescriptionENS_13IRBuilderBase11InsertPointENS_8ArrayRefIPNS_10BasicBlockEEENS_12function_refIFNS_5ErrorES5_S5_S9_EEENSA_IFNS_8ExpectedIS5_EES5_S5_RNS_5ValueESH_RPSG_EEESt8functionIFSB_S5_EESI_SI_NS_3omp12ProcBindKindEb:bb.a
  %i.arq = load i64, ptr %74, align 8, !tbaa !512
  store i64 %i.arq, ptr %i.arp, align 8, !tbaa !512
  store ptr null, ptr %74, align 8, !tbaa !512
  %i.arr = add nuw i32 %i.arj, 1
  store i32 %i.arr, ptr %i.ari, align 8, !tbaa !137
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.ars = load ptr, ptr %i.hg, align 8, !tbaa !50 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 48
  %i.aru = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gz) #26 ; 0 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.arw = load i8, ptr %i.arv, align 8
  %i.arx = and i8 %i.arw, -2
  store i8 %i.arx, ptr %i.arv, align 8
  store ptr %i.ars, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.art, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN4llvm8ExpectedIPNS_10BasicBlockEED2Ev.exit

bb.ek:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_15OpenMPIRBuilder16FinalizationInfoEE12pop_back_valEv.exit
  %i.ary = load i64, ptr %88, align 8, !tbaa !413, !noalias !911
  %i.arz = inttoptr i64 %i.ary to ptr
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.asb = load i8, ptr %i.asa, align 8
  %i.asc = or i8 %i.asb, 1
  store i8 %i.asc, ptr %i.asa, align 8
  store ptr %i.arz, ptr %0, align 8, !tbaa !413, !alias.scope !914
  br label %_ZN4llvm8ExpectedIPNS_10BasicBlockEED2Ev.exit

_ZN4llvm8ExpectedIPNS_10BasicBlockEED2Ev.exit:    ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  %i.asd = getelementptr inbounds nuw i8, ptr %87, i64 32
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !10 ; 2 uses
  %.not.i.i303 = icmp eq ptr %i.ase, null
  br i1 %.not.i.i303, label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit304, label %bb.el

bb.el:                                            ; preds = %_ZN4llvm8ExpectedIPNS_10BasicBlockEED2Ev.exit
  %i.asf = call noundef zeroext i1 %i.ase(ptr noundef nonnull align 8 dereferenceable(32) %i.apq, ptr noundef nonnull align 8 dereferenceable(32) %i.apq, i32 noundef 3) #26, !inline_history !766 ; 0 uses
  br label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit304

_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit304: ; preds = %_ZN4llvm8ExpectedIPNS_10BasicBlockEED2Ev.exit, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  br label %bb.em

bb.em:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit262, %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit304
  %i.asg = load ptr, ptr %i.sp, align 8, !tbaa !21 ; 2 uses
  %i.ash = icmp eq ptr %i.asg, %i.sq
  br i1 %i.ash, label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @free(ptr noundef %i.asg) #26
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i: ; preds = %bb.en, %bb.em
  %i.asi = getelementptr inbounds nuw i8, ptr %86, i64 20
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !554 ; 2 uses
  %i.ask = icmp eq i32 %i.asj, 0
  br i1 %i.ask, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i
  %i.asl = load ptr, ptr %86, align 8, !tbaa !555
  %i.asm = zext i32 %i.asj to i64                 ; 2 uses
  %i.asn = shl nuw nsw i64 %i.asm, 3
  %i.aso = add nuw nsw i64 %i.asm, 31
  %i.asp = lshr i64 %i.aso, 3
  %i.asq = and i64 %i.asp, 1073741820
  %i.asr = add nuw nsw i64 %i.asq, %i.asn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.asl, i64 noundef %i.asr, i64 noundef 8) #26
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  %i.ass = load ptr, ptr %i.sl, align 8, !tbaa !21 ; 2 uses
  %i.ast = icmp eq ptr %i.ass, %i.sm
  br i1 %i.ast, label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i305, label %bb.ep

bb.ep:                                            ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit
  call void @free(ptr noundef %i.ass) #26
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i305

_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i305: ; preds = %bb.ep, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit
  %i.asu = getelementptr inbounds nuw i8, ptr %85, i64 20
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !554 ; 2 uses
  %i.asw = icmp eq i32 %i.asv, 0
  br i1 %i.asw, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit306, label %bb.eq

bb.eq:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i305
  %i.asx = load ptr, ptr %85, align 8, !tbaa !555
  %i.asy = zext i32 %i.asv to i64                 ; 2 uses
  %i.asz = shl nuw nsw i64 %i.asy, 3
  %i.ata = add nuw nsw i64 %i.asy, 31
  %i.atb = lshr i64 %i.ata, 3
  %i.atc = and i64 %i.atb, 1073741820
  %i.atd = add nuw nsw i64 %i.atc, %i.asz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.asx, i64 noundef %i.atd, i64 noundef 8) #26
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit306

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit306: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i305, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  %i.ate = load ptr, ptr %i.sh, align 8, !tbaa !21 ; 2 uses
  %i.atf = icmp eq ptr %i.ate, %i.si
  br i1 %i.atf, label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i307, label %bb.er

bb.er:                                            ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit306
  call void @free(ptr noundef %i.ate) #26
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i307

_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i307: ; preds = %bb.er, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit306
  %i.atg = getelementptr inbounds nuw i8, ptr %84, i64 20
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !554 ; 2 uses
  %i.ati = icmp eq i32 %i.ath, 0
  br i1 %i.ati, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit308, label %bb.es

bb.es:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i307
  %i.atj = load ptr, ptr %84, align 8, !tbaa !555
  %i.atk = zext i32 %i.ath to i64                 ; 2 uses
  %i.atl = shl nuw nsw i64 %i.atk, 3
  %i.atm = add nuw nsw i64 %i.atk, 31
  %i.atn = lshr i64 %i.atm, 3
  %i.ato = and i64 %i.atn, 1073741820
  %i.atp = add nuw nsw i64 %i.ato, %i.atl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.atj, i64 noundef %i.atp, i64 noundef 8) #26
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit308

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit308: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i307, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  %i.atq = load ptr, ptr %i.sd, align 8, !tbaa !21 ; 2 uses
  %i.atr = icmp eq ptr %i.atq, %i.se
  br i1 %i.atr, label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i309, label %bb.et

bb.et:                                            ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit308
  call void @free(ptr noundef %i.atq) #26
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i309

_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i309: ; preds = %bb.et, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit308
  %i.ats = getelementptr inbounds nuw i8, ptr %83, i64 20
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !554 ; 2 uses
  %i.atu = icmp eq i32 %i.att, 0
  br i1 %i.atu, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit310, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i309
  %i.atv = load ptr, ptr %83, align 8, !tbaa !555
  %i.atw = zext i32 %i.att to i64                 ; 2 uses
  %i.atx = shl nuw nsw i64 %i.atw, 3
  %i.aty = add nuw nsw i64 %i.atw, 31
  %i.atz = lshr i64 %i.aty, 3
  %i.aua = and i64 %i.atz, 1073741820
  %i.aub = add nuw nsw i64 %i.aua, %i.atx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.atv, i64 noundef %i.aub, i64 noundef 8) #26
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit310

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit310: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i309, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @_ZN4llvm13CodeExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %80) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #26
  %i.auc = getelementptr inbounds nuw i8, ptr %79, i64 188
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !545 ; 2 uses
  %i.aue = icmp eq i32 %i.aud, 0
  br i1 %i.aue, label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit310
  %i.auf = getelementptr inbounds nuw i8, ptr %79, i64 168
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !548
  %i.auh = zext i32 %i.aud to i64                 ; 2 uses
  %i.aui = shl nuw nsw i64 %i.auh, 3
  %i.auj = add nuw nsw i64 %i.auh, 31
  %i.auk = lshr i64 %i.auj, 3
  %i.aul = and i64 %i.auk, 1073741820
  %i.aum = add nuw nsw i64 %i.aul, %i.aui
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aug, i64 noundef %i.aum, i64 noundef 8) #26
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.ev, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit310
  %i.aun = getelementptr inbounds nuw i8, ptr %79, i64 144 ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %79, i64 164 ; 2 uses
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !549 ; 2 uses
  %i.auq = icmp eq i32 %i.aup, 0
  br i1 %i.auq, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  %i.aur = load ptr, ptr %i.aun, align 8, !tbaa !552
  %i.aus = getelementptr inbounds nuw i8, ptr %79, i64 152
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !553
  %i.auu = zext i32 %i.aup to i64
  %i.auv = add nuw nsw i64 %i.auu, 31
  %i.auw = lshr i64 %i.auv, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i321, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i321 ] ; 3 uses
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv.i.i
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.auy, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i321, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.auz = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.ew

bb.ew:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.auy, %.lr.ph.i.i ], [ %i.avq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ava = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.avb = or disjoint i32 %i.ava, %i.auz
  %i.avc = zext i32 %i.avb to i64
  %i.avd = getelementptr inbounds nuw [32 x i8], ptr %i.aur, i64 %i.avc ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 28
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !554 ; 2 uses
  %i.avg = icmp eq i32 %i.avf, 0
  br i1 %i.avg, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !555
  %i.avj = zext i32 %i.avf to i64                 ; 2 uses
  %i.avk = shl nuw nsw i64 %i.avj, 3
  %i.avl = add nuw nsw i64 %i.avj, 31
  %i.avm = lshr i64 %i.avl, 3
  %i.avn = and i64 %i.avm, 1073741820
  %i.avo = add nuw nsw i64 %i.avn, %i.avk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.avi, i64 noundef %i.avo, i64 noundef 8) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.ex, %bb.ew
  %i.avp = add i32 %.0.i3.i.i, -1
  %i.avq = and i32 %i.avp, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.avq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i321, label %bb.ew, !llvm.loop !556

._crit_edge.i.i321:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i322 = icmp eq i64 %indvars.iv.next.i.i, %i.auw
  br i1 %.not.i.i.i322, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !557

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i321
  %.pr.i = load i32, ptr %i.auo, align 4, !tbaa !549 ; 2 uses
  %i.avr = icmp eq i32 %.pr.i, 0
  br i1 %i.avr, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i
  %i.avs = load ptr, ptr %i.aun, align 8, !tbaa !552
  %i.avt = zext i32 %.pr.i to i64                 ; 2 uses
  %i.avu = shl nuw nsw i64 %i.avt, 5
  %i.avv = add nuw nsw i64 %i.avt, 31
  %i.avw = lshr i64 %i.avv, 3
  %i.avx = and i64 %i.avw, 1073741820
  %i.avy = add nuw nsw i64 %i.avx, %i.avu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.avs, i64 noundef %i.avy, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, %bb.ey
  %i.avz = load ptr, ptr %79, align 8, !tbaa !21  ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.awb = icmp eq ptr %i.avz, %i.awa
  br i1 %i.awb, label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit
  call void @free(ptr noundef %i.avz) #26
  br label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit

_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit:    ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26
  %i.awc = load ptr, ptr %78, align 8, !tbaa !21  ; 2 uses
  %i.awd = icmp eq ptr %i.awc, %i.rq
  br i1 %i.awd, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit
  call void @free(ptr noundef %i.awc) #26
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit: ; preds = %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  %i.awe = load i8, ptr %i.rp, align 8, !tbaa !14, !range !18, !noundef !19
  %i.awf = trunc nuw i8 %i.awe to i1
  br i1 %i.awf, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit
  %i.awg = load ptr, ptr %77, align 8, !tbaa !20
  call void @free(ptr noundef %i.awg) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  %i.awh = load ptr, ptr %74, align 8, !tbaa !512 ; 3 uses
  %.not.i311 = icmp eq ptr %i.awh, null
  br i1 %.not.i311, label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !8
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awk = load ptr, ptr %i.awj, align 8
  call void %i.awk(ptr noundef nonnull align 8 dereferenceable(241) %i.awh) #26, !inline_history !917
  br label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  br label %bb.fc

bb.fc:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.awl = load ptr, ptr %60, align 8, !tbaa !21  ; 2 uses
  %i.awm = icmp eq ptr %i.awl, %i.dr
  br i1 %i.awm, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @free(ptr noundef %i.awl) #26
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit: ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.fe

bb.fe:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit, %bb.e
  ret void
}

declare noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm17AddrSpaceCastInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) unnamed_addr #4

declare void @_ZN4llvm11Instruction11insertAfterENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm15UnreachableInstC1ERNS_11LLVMContextENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL15isGenericKernelRN4llvm8FunctionE(ptr nofree readonly captures(address) %.88.val) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.88.val, i64 24 ; 2 uses
  %.sroa.02.018.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %.not1419.i = icmp eq ptr %.sroa.02.018.i, %i.b
  br i1 %.not1419.i, label %_ZL23getTargetKernelExecModeRN4llvm8FunctionE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.thread7.i
  %.sroa.02.020.i = phi ptr [ %.sroa.02.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread7.i ], [ %.sroa.02.018.i, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.02.020.i, i64 -24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !424
  %.not.i = icmp eq i8 %i.d, 88
  br i1 %.not.i, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7.i

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds i8, ptr %.sroa.02.020.i, i64 -56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !563, !nonnull !19, !noundef !19
  %i.g = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #26 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %.not.i.i = icmp eq i64 %i.h, 18
  br i1 %.not.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i
  %i.i = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.j = load i128, ptr %i.i, align 1
  %i.k = xor i128 %i.j, 146762206757249146982642825986665307999
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i128
  %i.o = xor i128 %i.n, 29801
  %i.p = or i128 %i.k, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread7.i:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.020.i, i64 8
  %.sroa.02.0.i = load ptr, ptr %i.t, align 8, !tbaa !31 ; 2 uses
  %.not14.i = icmp eq ptr %.sroa.02.0.i, %i.b
  br i1 %.not14.i, label %_ZL23getTargetKernelExecModeRN4llvm8FunctionE.exit.thread, label %.lr.ph.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.u = getelementptr inbounds i8, ptr %.sroa.02.020.i, i64 -24
  %i.v = getelementptr inbounds i8, ptr %.sroa.02.020.i, i64 -20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 268435455
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !563 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !424
  %.not16.i = icmp eq i8 %i.ac, 19
  br i1 %.not16.i, label %bb.b, label %_ZL23getTargetKernelExecModeRN4llvm8FunctionE.exit

bb.b:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 268435455
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !563
  br label %_ZL23getTargetKernelExecModeRN4llvm8FunctionE.exit

_ZL23getTargetKernelExecModeRN4llvm8FunctionE.exit: ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.026.i = phi ptr [ %i.aj, %bb.b ], [ %i.ab, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ]
  %i.ak = getelementptr inbounds i8, ptr %.026.i, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !563 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
end_hunk_1
begin_hunk_2_@_ZN4llvm15OpenMPIRBuilder31applyStaticChunkedWorkshareLoopENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointEbPNS_5ValueENS_3omp15OMPScheduleTypeES7_S9_:bb.a
  %i.xt = zext i32 %i.xs to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.xt, 4
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i32 %i.xs, 0
  br i1 %.not10.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i.i.i297

.lr.ph.i.i.i297:                                  ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i, %.lr.ph.i.i.i297
  %.011.i.i.i = phi ptr [ %i.xy, %.lr.ph.i.i.i297 ], [ %i.xq, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i ] ; 3 uses
  %i.xv = load ptr, ptr %.011.i.i.i, align 8, !tbaa !605
  %i.xw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !607
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.xv, i64 noundef %i.xx, i64 noundef 16) #26
  %i.xy = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.xy, %i.xu
  br i1 %.not.i.i4.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i.i.i297

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %.lr.ph.i.i.i297, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i
  store i32 0, ptr %i.xr, align 8, !tbaa !137
  %i.xz = getelementptr inbounds nuw i8, ptr %54, i64 120 ; 5 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %54, i64 128 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !137 ; 3 uses
  %.not.i1.i.i = icmp eq i32 %i.yb, 0
  %.pre398 = load ptr, ptr %i.xz, align 8, !tbaa !21 ; 4 uses
  br i1 %.not.i1.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.yc = load ptr, ptr %.pre398, align 8, !tbaa !580 ; 2 uses
  store ptr %i.yc, ptr %i.xo, align 8, !tbaa !2134
  %i.yd = ptrtoint ptr %i.yc to i64
  %i.ye = add i64 %i.yd, 4097
  %i.yf = getelementptr inbounds nuw i8, ptr %54, i64 112
  store i64 %i.ye, ptr %i.yf, align 8, !tbaa !2135
  %i.yg = zext i32 %i.yb to i64
  %.idx.i.i298 = shl nuw nsw i64 %i.yg, 3
  %i.yh = getelementptr inbounds nuw i8, ptr %.pre398, i64 %.idx.i.i298
  %.not6.i.i.i = icmp eq i32 %i.yb, 1
  br i1 %.not6.i.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i2.preheader.i.i

.lr.ph.i2.preheader.i.i:                          ; preds = %bb.ay
  %i.yi = getelementptr inbounds nuw i8, ptr %.pre398, i64 8
  br label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %.lr.ph.i2.i.i, %.lr.ph.i2.preheader.i.i
  %.07.i.i.i = phi ptr [ %i.ys, %.lr.ph.i2.i.i ], [ %i.yi, %.lr.ph.i2.preheader.i.i ] ; 3 uses
  %i.yj = load ptr, ptr %i.xz, align 8, !tbaa !21
  %i.yk = ptrtoint ptr %.07.i.i.i to i64
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = sub i64 %i.yk, %i.yl
  %sum.shift.i.i.i = lshr i64 %i.ym, 10
  %i.yn = trunc i64 %sum.shift.i.i.i to i32
  %i.yo = and i32 %i.yn, 33554431
  %i.yp = call i32 @llvm.umin.i32(i32 %i.yo, i32 30)
  %.sroa.speculated.i.i.i.i = zext nneg i32 %i.yp to i64
  %i.yq = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i
  %i.yr = load ptr, ptr %.07.i.i.i, align 8, !tbaa !580
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.yr, i64 noundef %i.yq, i64 noundef 16) #26
  %i.ys = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ys, %i.yh
  br i1 %.not.i3.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit, label %.lr.ph.i2.i.i, !llvm.loop !2136

_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit: ; preds = %.lr.ph.i2.i.i
  %.pre397.pre = load ptr, ptr %i.xz, align 8, !tbaa !21
  br label %.lr.ph.i.i.preheader

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.yu, %.lr.ph.i ], [ %i.xk, %_ZN4llvm11SmallVectorIPNS_8MetadataELj6EED2Ev.exit ] ; 2 uses
  %i.yt = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !2093
  call void @_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.yt) #26
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i295 = icmp eq ptr %i.yu, %i.xm
  br i1 %.not.i295, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit, %bb.ay
  %.pre397 = phi ptr [ %.pre397.pre, %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit ], [ %.pre398, %bb.ay ] ; 2 uses
  store i32 1, ptr %i.ya, align 8, !tbaa !137
  %i.yv = load ptr, ptr %i.xz, align 8, !tbaa !21
  %i.yw = ptrtoint ptr %.pre397 to i64
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %sum.shift.i.i = lshr i64 %i.yy, 10
  %i.yz = trunc i64 %sum.shift.i.i to i32
  %i.za = and i32 %i.yz, 33554431
  %i.zb = call i32 @llvm.umin.i32(i32 %i.za, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.zb to i64
  %i.zc = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i
  %i.zd = load ptr, ptr %.pre397, align 8, !tbaa !580
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.zd, i64 noundef %i.zc, i64 noundef 16) #26
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i.preheader, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.ze = load ptr, ptr %i.xp, align 8, !tbaa !21 ; 3 uses
  %i.zf = load i32, ptr %i.xr, align 8, !tbaa !137 ; 2 uses
  %i.zg = zext i32 %i.zf to i64
  %.idx.i.i = shl nuw nsw i64 %i.zg, 4
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.zf, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.zl, %.lr.ph.i1.i ], [ %i.ze, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.zi = load ptr, ptr %.011.i.i, align 8, !tbaa !605
  %i.zj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !607
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.zi, i64 noundef %i.zk, i64 noundef 16) #26
  %i.zl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.zl, %i.zh
  br i1 %.not.i2.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, label %.lr.ph.i1.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i: ; preds = %.lr.ph.i1.i
  %.pre.i = load ptr, ptr %i.xp, align 8, !tbaa !21
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i
  %i.zm = phi ptr [ %.pre.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i ], [ %i.ze, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %54, i64 184
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  call void @free(ptr noundef %i.zm) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i: ; preds = %bb.az, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.zp = load ptr, ptr %i.xz, align 8, !tbaa !21 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %54, i64 136
  %i.zr = icmp eq ptr %i.zp, %i.zq
  br i1 %i.zr, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.zp) #26
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, %bb.ba
  %i.zs = load ptr, ptr %i.xj, align 8, !tbaa !2131 ; 3 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i.i273, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit
  %i.zt = getelementptr inbounds nuw i8, ptr %54, i64 96
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !2137
  %i.zv = ptrtoint ptr %i.zu to i64
  %i.zw = ptrtoint ptr %i.zs to i64
  %i.zx = sub i64 %i.zv, %i.zw
  call void @_ZdlPvm(ptr noundef nonnull %i.zs, i64 noundef %i.zx) #30
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i:    ; preds = %bb.bb, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit
  %i.zy = load ptr, ptr %54, align 8, !tbaa !21   ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.aaa = icmp eq ptr %i.zy, %i.zz
  br i1 %i.aaa, label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i
  call void @free(ptr noundef %i.zy) #26
  br label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit

_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  %i.aab = getelementptr inbounds nuw i8, ptr %52, i64 68
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !2138 ; 2 uses
  %i.aad = icmp eq i32 %i.aac, 0
  br i1 %i.aad, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit
  %i.aae = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !2141
  %i.aag = zext i32 %i.aac to i64                 ; 2 uses
  %i.aah = mul nuw nsw i64 %i.aag, 24
  %i.aai = add nuw nsw i64 %i.aag, 31
  %i.aaj = lshr i64 %i.aai, 3
  %i.aak = and i64 %i.aaj, 1073741820
  %i.aal = add nuw nsw i64 %i.aak, %i.aah
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aaf, i64 noundef %i.aal, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.bd, %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit
  %i.aam = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %52, i64 44 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !2142 ; 2 uses
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.aaq = load ptr, ptr %i.aam, align 8, !tbaa !2145
  %i.aar = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !2146
  %i.aat = zext i32 %i.aao to i64
  %i.aau = add nuw nsw i64 %i.aat, 31
  %i.aav = lshr i64 %i.aau, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %indvars.iv.i.i
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.aax, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i299

.lr.ph.i.i299:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.aay = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.be

bb.be:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i299
  %.0.i3.i.i = phi i32 [ %i.aax, %.lr.ph.i.i299 ], [ %i.abm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.aaz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aba = or disjoint i32 %i.aaz, %i.aay
  %i.abb = zext i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [32 x i8], ptr %i.aaq, i64 %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8 ; 3 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !2147 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.abe, %i.abd
  br i1 %.not8.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.be, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.abf, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.abe, %bb.be ] ; 3 uses
  %i.abf = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !2147 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !2150 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8
  call void %i.abk(ptr noundef nonnull align 8 dereferenceable(8) %i.abh) #26, !inline_history !2152
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 32) #30
  %.not.i.i.i.i.i300 = icmp eq ptr %i.abf, %i.abd
  br i1 %.not.i.i.i.i.i300, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2153

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.be
  %i.abl = add i32 %.0.i3.i.i, -1
  %i.abm = and i32 %i.abl, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.abm, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.be, !llvm.loop !2154

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i301 = icmp eq i64 %indvars.iv.next.i.i, %i.aav
  br i1 %.not.i.i.i301, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2155

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.aan, align 4, !tbaa !2142 ; 2 uses
  %i.abn = icmp eq i32 %.pr.i, 0
  br i1 %i.abn, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.abo = load ptr, ptr %i.aam, align 8, !tbaa !2145
  %i.abp = zext i32 %.pr.i to i64                 ; 2 uses
  %i.abq = shl nuw nsw i64 %i.abp, 5
  %i.abr = add nuw nsw i64 %i.abp, 31
  %i.abs = lshr i64 %i.abr, 3
  %i.abt = and i64 %i.abs, 1073741820
  %i.abu = add nuw nsw i64 %i.abt, %i.abq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.abo, i64 noundef %i.abu, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.bf
  %i.abv = getelementptr inbounds nuw i8, ptr %52, i64 20 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !2156 ; 2 uses
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.aby = load ptr, ptr %52, align 8, !tbaa !2159
  %i.abz = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !2160
  %i.acb = zext i32 %i.abw to i64
  %i.acc = add nuw nsw i64 %i.acb, 31
  %i.acd = lshr i64 %i.acc, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %indvars.iv.i.i.i
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.acf, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.acg = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.bg

bb.bg:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.acf, %.lr.ph.i.i.i ], [ %i.acr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ach = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.aci = or disjoint i32 %i.ach, %i.acg
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw [16 x i8], ptr %i.aby, i64 %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !2088 ; 3 uses
  %.not.i.i.i.i.i274 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i.i.i274, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.bg
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8
  call void %i.acp(ptr noundef nonnull align 8 dereferenceable(8) %i.acm) #26, !inline_history !2161
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.bg
  %i.acq = add i32 %.0.i3.i.i.i, -1
  %i.acr = and i32 %i.acq, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.acr, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.bg, !llvm.loop !2162

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i275 = icmp eq i64 %indvars.iv.next.i.i.i, %i.acd
  br i1 %.not.i.i.i.i275, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !2163

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.abv, align 4, !tbaa !2156 ; 2 uses
  %i.acs = icmp eq i32 %.pr.i.i, 0
  br i1 %i.acs, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i
  %i.act = load ptr, ptr %52, align 8, !tbaa !2159
  %i.acu = zext i32 %.pr.i.i to i64               ; 2 uses
  %i.acv = shl nuw nsw i64 %i.acu, 4
  %i.acw = add nuw nsw i64 %i.acu, 31
  %i.acx = lshr i64 %i.acw, 3
  %i.acy = and i64 %i.acx, 1073741820
  %i.acz = add nuw nsw i64 %i.acy, %i.acv
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.act, i64 noundef %i.acz, i64 noundef 8) #26
  br label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit

_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  %i.ada = load ptr, ptr %50, align 8, !tbaa !21  ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.bb
  br i1 %i.adb, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit
  call void @free(ptr noundef %i.ada) #26
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit: ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  ret void
}

declare noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN4llvm12LoopAnalysis3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::LoopInfo") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL29applyParallelAccessesMetadataPN4llvm17CanonicalLoopInfoERNS_11LLVMContextEPNS_4LoopERNS_8LoopInfoERNS_11SmallVectorIPNS_8MetadataELj6EEE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readonly captures(address) %.32.val, ptr nofree readnone captures(address) %.40.val, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::SmallSet", align 8    ; 12 uses
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 8, ptr %i.c, align 8, !tbaa !510
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 0, ptr %i.d, align 4, !tbaa !511
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i8 1, ptr %i.e, align 8, !tbaa !14
  %.not12 = icmp eq ptr %.32.val, %.40.val
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit, %bb.a
  %i.g = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, i64 0, i32 noundef 1, i1 noundef zeroext true) #26 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !20     ; 4 uses
  %i.i = load i8, ptr %i.e, align 8, !tbaa !14, !range !18, !noundef !19
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i32, ptr %i.d, align 4
  %i.l = load i32, ptr %i.c, align 8
  %.v.v.i.i.i = select i1 %i.j, i32 %i.k, i32 %i.l ; 2 uses
  %.v.i.i.i = zext i32 %.v.v.i.i.i to i64         ; 2 uses
  %.idx.i = shl nuw nsw i64 %.v.i.i.i, 3
  %i.m = getelementptr i8, ptr %i.h, i64 %.idx.i  ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.h, %._crit_edge ] ; 3 uses
  %i.n = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !580
  %i.o = icmp eq ptr %i.n, inttoptr (i64 -1 to ptr)
  br i1 %i.o, label %bb.b, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2164

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %._crit_edge
  %.sroa.0.1.i.i = phi ptr [ %i.h, %._crit_edge ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.v.i.i.i ; 2 uses
  %.not1014 = icmp eq ptr %.sroa.0.1.i.i, %i.q
  br i1 %.not1014, label %._crit_edge17, label %.lr.ph16

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit
  %i.r = phi i32 [ 0, %.lr.ph ], [ %i.am, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit ] ; 4 uses
  %i.s = phi i32 [ 8, %.lr.ph ], [ %i.an, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit ] ; 5 uses
  %i.t = phi i32 [ 0, %.lr.ph ], [ %i.ao, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit ] ; 6 uses
  %i.u = phi ptr [ %i.b, %.lr.ph ], [ %i.ap, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit ] ; 5 uses
  %i.v = phi i8 [ 1, %.lr.ph ], [ %i.aq, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit ] ; 3 uses
  %.013 = phi ptr [ %.32.val, %.lr.ph ], [ %i.ar, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.013, align 8, !tbaa !417 ; 5 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !1144
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !1137
  %i.aa = icmp eq ptr %i.w, %i.z
  br i1 %i.aa, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc nuw i8 %i.v to i1
  br i1 %i.ab, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = zext i32 %i.t to i64
  %.idx.i.i = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.t, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.af, %.critedge.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %.023.i.i, align 8, !tbaa !580, !noalias !2165
  %.not15.i.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.f
  %i.ag = icmp ult i32 %i.t, %i.s
  br i1 %i.ag, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nuw i32 %i.t, 1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !511, !noalias !2165
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !580, !noalias !2165
  %i.ai = load ptr, ptr %3, align 8, !tbaa !20, !noalias !2165
  %.pre = load i32, ptr %i.d, align 4, !noalias !2165 ; 2 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.e
  %i.aj = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef %i.w) #26, !noalias !2165 ; 0 uses
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !14, !range !18, !noalias !2165
  %.pre.fr.i = freeze i8 %.pre.i
  %.pre5.i = load ptr, ptr %3, align 8, !noalias !2165
  %i.ak = load i32, ptr %i.d, align 4, !noalias !2165 ; 2 uses
  %i.al = load i32, ptr %i.c, align 8, !noalias !2165
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.g, %bb.c, %bb.d
  %i.am = phi i32 [ %i.r, %bb.d ], [ %i.r, %bb.c ], [ %i.ak, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.pre, %bb.g ], [ %i.r, %.lr.ph.i.i ]
  %i.an = phi i32 [ %i.s, %bb.d ], [ %i.s, %bb.c ], [ %i.al, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.s, %bb.g ], [ %i.s, %.lr.ph.i.i ]
  %i.ao = phi i32 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %i.ak, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.pre, %bb.g ], [ %i.r, %.lr.ph.i.i ]
  %i.ap = phi ptr [ %i.u, %bb.d ], [ %i.u, %bb.c ], [ %.pre5.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.ai, %bb.g ], [ %i.u, %.lr.ph.i.i ]
  %i.aq = phi i8 [ %i.v, %bb.d ], [ %i.v, %bb.c ], [ %.pre.fr.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ 1, %bb.g ], [ 1, %.lr.ph.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %.40.val
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge17:                                    ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.as = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull @.str.487, i64 27) #26
  store ptr %i.as, ptr %i.a, align 8, !tbaa !396
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.at, align 8, !tbaa !396
  %i.au = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.a, i64 2, i32 noundef 0, i1 noundef zeroext true) #26 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !137 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEb:bb.a
  store i32 %5, ptr %i.gu, align 8, !tbaa !2179
  %i.gv = getelementptr inbounds nuw i8, ptr %26, i64 76
  store i8 %i.ga, ptr %i.gv, align 4, !tbaa !2180
  %i.gw = load ptr, ptr %12, align 8, !tbaa !512  ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.gy, align 8
  %i.gz = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr %i.ha, ptr %i.gz, align 8, !tbaa !21
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 0, ptr %i.hb, align 8, !tbaa !137
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 4, ptr %i.hc, align 4, !tbaa !138
  %i.hd = load i32, ptr %i.gn, align 8, !tbaa !137
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt8functionIFvRN4llvm8FunctionEEEC2IZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0vEEOT_.exit.i", label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EEC2EOS3_.exit
  %i.he = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_11InstructionEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(77) %i.gz, ptr noundef nonnull align 8 dereferenceable(77) %26) ; 0 uses
  br label %"_ZNSt8functionIFvRN4llvm8FunctionEEEC2IZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0vEEOT_.exit.i"

"_ZNSt8functionIFvRN4llvm8FunctionEEEC2IZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0vEEOT_.exit.i": ; preds = %bb.n, %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EEC2EOS3_.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.hg, ptr noundef nonnull align 8 dereferenceable(29) %i.gr, i64 29, i1 false)
  store ptr %i.gz, ptr %9, align 16, !tbaa !580
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %9, align 16, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 16, i1 false), !tbaa.struct !765
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.gx, align 8, !tbaa !56
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.hj = load <2 x ptr>, ptr %i.hh, align 8, !tbaa !580
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !580 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm8FunctionEEZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.hh, align 8, !tbaa !580
  store <2 x ptr> %i.hj, ptr %i.hf, align 16, !tbaa !580
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm8FunctionEEZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.hi, align 8, !tbaa !580
  %.not.i.i85 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i85, label %"_ZNSt8functionIFvRN4llvm8FunctionEEEaSIZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS4_E4typeEOSG_.exit", label %bb.o

bb.o:                                             ; preds = %"_ZNSt8functionIFvRN4llvm8FunctionEEEC2IZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0vEEOT_.exit.i"
  %i.hl = call noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3) #26, !inline_history !2181 ; 0 uses
  br label %"_ZNSt8functionIFvRN4llvm8FunctionEEEaSIZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS4_E4typeEOSG_.exit"

"_ZNSt8functionIFvRN4llvm8FunctionEEEaSIZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS4_E4typeEOSG_.exit": ; preds = %"_ZNSt8functionIFvRN4llvm8FunctionEEEC2IZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0vEEOT_.exit.i", %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.hm = load ptr, ptr %26, align 8, !tbaa !21   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gm
  br i1 %i.hn, label %"_ZZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEbEN3$_0D2Ev.exit", label %bb.p

bb.p:                                             ; preds = %"_ZNSt8functionIFvRN4llvm8FunctionEEEaSIZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS4_E4typeEOSG_.exit"
  call void @free(ptr noundef %i.hm) #26
  br label %"_ZZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEbEN3$_0D2Ev.exit"

"_ZZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEbEN3$_0D2Ev.exit": ; preds = %"_ZNSt8functionIFvRN4llvm8FunctionEEEaSIZNS0_15OpenMPIRBuilder24applyWorkshareLoopTargetENS0_8DebugLocEPNS0_17CanonicalLoopInfoENS0_13IRBuilderBase11InsertPointENS0_3omp19WorksharingLoopTypeEbE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS4_E4typeEOSG_.exit", %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !137 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 940
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !138
  %.not.i.i86 = icmp ult i32 %i.hq, %i.hs
  br i1 %.not.i.i86, label %bb.r, label %bb.q, !prof !139

bb.q:                                             ; preds = %"_ZZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEbEN3$_0D2Ev.exit"
  %i.ht = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %12) ; 0 uses
  br label %_ZN4llvm15OpenMPIRBuilder14addOutlineInfoEOSt10unique_ptrINS0_11OutlineInfoESt14default_deleteIS2_EE.exit

bb.r:                                             ; preds = %"_ZZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEbEN3$_0D2Ev.exit"
  %i.hu = zext i32 %i.hq to i64
  %i.hv = load ptr, ptr %i.ho, align 8, !tbaa !21
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hu
  %i.hx = load i64, ptr %12, align 8, !tbaa !512
  store i64 %i.hx, ptr %i.hw, align 8, !tbaa !512
  store ptr null, ptr %12, align 8, !tbaa !512
  %i.hy = add nuw i32 %i.hq, 1
  store i32 %i.hy, ptr %i.hp, align 8, !tbaa !137
  br label %_ZN4llvm15OpenMPIRBuilder14addOutlineInfoEOSt10unique_ptrINS0_11OutlineInfoESt14default_deleteIS2_EE.exit

_ZN4llvm15OpenMPIRBuilder14addOutlineInfoEOSt10unique_ptrINS0_11OutlineInfoESt14default_deleteIS2_EE.exit: ; preds = %bb.q, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !1169, !noalias !2182
  %i.ib = call noundef ptr @_ZNK4llvm10BasicBlock18getSingleSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ia) #26, !noalias !2182 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !31, !noalias !2182
  store ptr %i.ib, ptr %0, align 8, !tbaa !23, !alias.scope !2182
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.id, ptr %i.ie, align 8, !alias.scope !2182
  %.sroa.2.0..sroa_idx.i.i87 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i87, align 8, !alias.scope !2182
  %i.if = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.fi
  br i1 %i.ig, label %_ZN4llvm11SmallVectorIPNS_4UserELj6EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm15OpenMPIRBuilder14addOutlineInfoEOSt10unique_ptrINS0_11OutlineInfoESt14default_deleteIS2_EE.exit
  call void @free(ptr noundef %i.if) #26
  br label %_ZN4llvm11SmallVectorIPNS_4UserELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4UserELj6EED2Ev.exit:   ; preds = %_ZN4llvm15OpenMPIRBuilder14addOutlineInfoEOSt10unique_ptrINS0_11OutlineInfoESt14default_deleteIS2_EE.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.ih = load ptr, ptr %i.ez, align 8, !tbaa !21 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.fa
  br i1 %i.ii, label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4UserELj6EED2Ev.exit
  call void @free(ptr noundef %i.ih) #26
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i: ; preds = %bb.t, %_ZN4llvm11SmallVectorIPNS_4UserELj6EED2Ev.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !554 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i
  %i.im = load ptr, ptr %24, align 8, !tbaa !555
  %i.in = zext i32 %i.ik to i64                   ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 3
  %i.ip = add nuw nsw i64 %i.in, 31
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = and i64 %i.iq, 1073741820
  %i.is = add nuw nsw i64 %i.ir, %i.io
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.im, i64 noundef %i.is, i64 noundef 8) #26
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.it = load ptr, ptr %i.ev, align 8, !tbaa !21 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ew
  br i1 %i.iu, label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i88, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit
  call void @free(ptr noundef %i.it) #26
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i88

_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i88: ; preds = %bb.v, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !554 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit89, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i88
  %i.iy = load ptr, ptr %23, align 8, !tbaa !555
  %i.iz = zext i32 %i.iw to i64                   ; 2 uses
  %i.ja = shl nuw nsw i64 %i.iz, 3
  %i.jb = add nuw nsw i64 %i.iz, 31
  %i.jc = lshr i64 %i.jb, 3
  %i.jd = and i64 %i.jc, 1073741820
  %i.je = add nuw nsw i64 %i.jd, %i.ja
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.iy, i64 noundef %i.je, i64 noundef 8) #26
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit89

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit89: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj0EED2Ev.exit.i88, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN4llvm13CodeExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.jf = getelementptr inbounds nuw i8, ptr %19, i64 188
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !545 ; 2 uses
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit89
  %i.ji = getelementptr inbounds nuw i8, ptr %19, i64 168
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !548
  %i.jk = zext i32 %i.jg to i64                   ; 2 uses
  %i.jl = shl nuw nsw i64 %i.jk, 3
  %i.jm = add nuw nsw i64 %i.jk, 31
  %i.jn = lshr i64 %i.jm, 3
  %i.jo = and i64 %i.jn, 1073741820
  %i.jp = add nuw nsw i64 %i.jo, %i.jl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jj, i64 noundef %i.jp, i64 noundef 8) #26
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.x, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit89
  %i.jq = getelementptr inbounds nuw i8, ptr %19, i64 144 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %19, i64 164 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !549 ; 2 uses
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  %i.ju = load ptr, ptr %i.jq, align 8, !tbaa !552
  %i.jv = getelementptr inbounds nuw i8, ptr %19, i64 152
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !553
  %i.jx = zext i32 %i.js to i64
  %i.jy = add nuw nsw i64 %i.jx, 31
  %i.jz = lshr i64 %i.jy, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i96, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i96 ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.kb, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i96, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.kc = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.y

bb.y:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i95
  %.0.i3.i.i = phi i32 [ %i.kb, %.lr.ph.i.i95 ], [ %i.kt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.kd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ke = or disjoint i32 %i.kd, %i.kc
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %i.ju, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 28
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !554 ; 2 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !555
  %i.km = zext i32 %i.ki to i64                   ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.km, 31
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = and i64 %i.kp, 1073741820
  %i.kr = add nuw nsw i64 %i.kq, %i.kn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kl, i64 noundef %i.kr, i64 noundef 8) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.z, %bb.y
  %i.ks = add i32 %.0.i3.i.i, -1
  %i.kt = and i32 %i.ks, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i96, label %bb.y, !llvm.loop !556

._crit_edge.i.i96:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i97 = icmp eq i64 %indvars.iv.next.i.i, %i.jz
  br i1 %.not.i.i.i97, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !557

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i96
  %.pr.i = load i32, ptr %i.jr, align 4, !tbaa !549 ; 2 uses
  %i.ku = icmp eq i32 %.pr.i, 0
  br i1 %i.ku, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i
  %i.kv = load ptr, ptr %i.jq, align 8, !tbaa !552
  %i.kw = zext i32 %.pr.i to i64                  ; 2 uses
  %i.kx = shl nuw nsw i64 %i.kw, 5
  %i.ky = add nuw nsw i64 %i.kw, 31
  %i.kz = lshr i64 %i.ky, 3
  %i.la = and i64 %i.kz, 1073741820
  %i.lb = add nuw nsw i64 %i.la, %i.kx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kv, i64 noundef %i.lb, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, %bb.aa
  %i.lc = load ptr, ptr %19, align 8, !tbaa !21   ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit
  call void @free(ptr noundef %i.lc) #26
  br label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit

_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit:    ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.lf = load ptr, ptr %18, align 8, !tbaa !21   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.dz
  br i1 %i.lg, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit
  call void @free(ptr noundef %i.lf) #26
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit: ; preds = %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.lh = load i8, ptr %i.dy, align 8, !tbaa !14, !range !18, !noundef !19
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit
  %i.lj = load ptr, ptr %17, align 8, !tbaa !20
  call void @free(ptr noundef %i.lj) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj32EED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.lk = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.aj
  br i1 %i.ll, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  call void @free(ptr noundef %i.lk) #26
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.lm = load ptr, ptr %12, align 8, !tbaa !512  ; 3 uses
  %.not.i90 = icmp eq ptr %i.lm, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(241) %i.lm) #26, !inline_history !917
  br label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_4UserELj6EEC2INS_5Value18user_iterator_implIS1_EEvEET_S8_.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread
  %.0115 = phi ptr [ %i.mj, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread ], [ %i.fp, %_ZN4llvm11SmallVectorIPNS_4UserELj6EEC2INS_5Value18user_iterator_implIS1_EEvEET_S8_.exit ] ; 2 uses
  %i.lq = load ptr, ptr %.0115, align 8, !tbaa !2173 ; 3 uses
  %i.lr = load i8, ptr %i.lq, align 8, !tbaa !424
  %i.ls = icmp ult i8 %i.lr, 30
  br i1 %i.ls, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !50 ; 2 uses
  %i.lv = load i8, ptr %i.dy, align 8, !tbaa !14, !range !18, !noundef !19
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.ag, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit

bb.ag:                                            ; preds = %bb.af
  %i.lx = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.ly = load i32, ptr %i.dx, align 4, !tbaa !511 ; 2 uses
  %i.lz = zext i32 %i.ly to i64
  %.idx.i.i = shl nuw nsw i64 %i.lz, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread, label %.lr.ph.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.mb, %i.ma
  br i1 %.not.i.i91, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.ah
  %.01218.i.i = phi ptr [ %i.mb, %bb.ah ], [ %i.lx, %bb.ag ] ; 2 uses
  %i.mc = load ptr, ptr %.01218.i.i, align 8, !tbaa !580
  %.not15.i.i = icmp eq ptr %i.mc, %i.lu
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread104, label %bb.ah

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit: ; preds = %bb.af
  %i.md = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %17, ptr noundef %i.lu) #26
  %.not108 = icmp eq ptr %i.md, null
  br i1 %.not108, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread104

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread104: ; preds = %.lr.ph.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit
  %i.me = load ptr, ptr %3, align 8, !tbaa !1137
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !31
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -24
  %i.mi = call noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, ptr noundef nonnull %i.mh, ptr noundef nonnull %i.da) #26 ; 0 uses
  br label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread: ; preds = %bb.ah, %bb.ag, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5countEPKS1_.exit.thread104, %.lr.ph
  %i.mj = getelementptr inbounds nuw i8, ptr %.0115, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.mj, %i.fz
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef ptr @_ZN4llvm10BasicBlock21splitBasicBlockBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15OpenMPIRBuilder18applyWorkshareLoopENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointEbNS_3omp12ScheduleKindEPNS_5ValueEbbbbNS6_19WorksharingLoopTypeEbbS9_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.325") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr %2, ptr noundef %3, ptr nofree noundef readonly byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 captures(none) %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10, i1 noundef zeroext %11, i32 noundef %12, i1 noundef zeroext %13, i1 noundef zeroext %14, ptr noundef %15) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.b = load i8, ptr %i.a, align 8, !tbaa !534, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15OpenMPIRBuilder24applyWorkshareLoopTargetENS_8DebugLocEPNS_17CanonicalLoopInfoENS_13IRBuilderBase11InsertPointENS_3omp19WorksharingLoopTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr %2, ptr noundef %3, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %4, i32 noundef %12, i1 noundef zeroext %13)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -2
  store i8 %i.f, ptr %i.d, align 8
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %.not59 = icmp eq ptr %15, null                 ; 3 uses
  switch i32 %6, label %bb.i [
    i32 8, label %bb.d
    i32 2, label %bb.d
    i32 3, label %_ZL25getOpenMPBaseScheduleTypeN4llvm3omp12ScheduleKindEbbb.exit.i
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %.not = icmp eq ptr %7, null
  %i.g = select i1 %.not, i32 2, i32 1
  br label %_ZL25getOpenMPBaseScheduleTypeN4llvm3omp12ScheduleKindEbbb.exit.i
end_hunk_3
begin_hunk_4_@_ZN4llvm15OpenMPIRBuilder9applySimdEPNS_17CanonicalLoopInfoENS_9MapVectorIPNS_5ValueES5_NS_8DenseMapIS5_jNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEENS_11SmallVectorISt4pairIS5_S5_ELj0EEELj0EEES5_NS_3omp9OrderKindEPNS_11ConstantIntESL_:bb.a
  %i.hh = zext i32 %i.hg to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.hh, 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not10.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i.i.i115

.lr.ph.i.i.i115:                                  ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i, %.lr.ph.i.i.i115
  %.011.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i115 ], [ %i.he, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i ] ; 3 uses
  %i.hj = load ptr, ptr %.011.i.i.i, align 8, !tbaa !605
  %i.hk = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !607
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hj, i64 noundef %i.hl, i64 noundef 16) #26
  %i.hm = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.hm, %i.hi
  br i1 %.not.i.i4.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i.i.i115

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %.lr.ph.i.i.i115, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i
  store i32 0, ptr %i.hf, align 8, !tbaa !137
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !137 ; 3 uses
  %.not.i1.i.i = icmp eq i32 %i.hp, 0
  %.pre170 = load ptr, ptr %i.hn, align 8, !tbaa !21 ; 4 uses
  br i1 %.not.i1.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.hq = load ptr, ptr %.pre170, align 8, !tbaa !580 ; 2 uses
  store ptr %i.hq, ptr %i.hc, align 8, !tbaa !2134
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = add i64 %i.hr, 4097
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !2135
  %i.hu = zext i32 %i.hp to i64
  %.idx.i.i116 = shl nuw nsw i64 %i.hu, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %.pre170, i64 %.idx.i.i116
  %.not6.i.i.i = icmp eq i32 %i.hp, 1
  br i1 %.not6.i.i.i, label %.lr.ph.i.i109.preheader, label %.lr.ph.i2.preheader.i.i

.lr.ph.i2.preheader.i.i:                          ; preds = %bb.af
  %i.hw = getelementptr inbounds nuw i8, ptr %.pre170, i64 8
  br label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %.lr.ph.i2.i.i, %.lr.ph.i2.preheader.i.i
  %.07.i.i.i = phi ptr [ %i.ig, %.lr.ph.i2.i.i ], [ %i.hw, %.lr.ph.i2.preheader.i.i ] ; 3 uses
  %i.hx = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.hy = ptrtoint ptr %.07.i.i.i to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %sum.shift.i.i.i = lshr i64 %i.ia, 10
  %i.ib = trunc i64 %sum.shift.i.i.i to i32
  %i.ic = and i32 %i.ib, 33554431
  %i.id = call i32 @llvm.umin.i32(i32 %i.ic, i32 30)
  %.sroa.speculated.i.i.i.i = zext nneg i32 %i.id to i64
  %i.ie = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i
  %i.if = load ptr, ptr %.07.i.i.i, align 8, !tbaa !580
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.if, i64 noundef %i.ie, i64 noundef 16) #26
  %i.ig = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ig, %i.hv
  br i1 %.not.i3.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit, label %.lr.ph.i2.i.i, !llvm.loop !2136

_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit: ; preds = %.lr.ph.i2.i.i
  %.pre169.pre = load ptr, ptr %i.hn, align 8, !tbaa !21
  br label %.lr.ph.i.i109.preheader

.lr.ph.i:                                         ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.ii, %.lr.ph.i ], [ %i.gy, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ] ; 2 uses
  %i.ih = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !2093
  call void @_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ih) #26
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ii, %i.ha
  br i1 %.not.i113, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i.i109.preheader:                          ; preds = %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit, %bb.af
  %.pre169 = phi ptr [ %.pre169.pre, %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.loopexit ], [ %.pre170, %bb.af ] ; 2 uses
  store i32 1, ptr %i.ho, align 8, !tbaa !137
  %i.ij = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.ik = ptrtoint ptr %.pre169 to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %sum.shift.i.i = lshr i64 %i.im, 10
  %i.in = trunc i64 %sum.shift.i.i to i32
  %i.io = and i32 %i.in, 33554431
  %i.ip = call i32 @llvm.umin.i32(i32 %i.io, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.ip to i64
  %i.iq = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i
  %i.ir = load ptr, ptr %.pre169, align 8, !tbaa !580
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ir, i64 noundef %i.iq, i64 noundef 16) #26
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i109.preheader, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.is = load ptr, ptr %i.hd, align 8, !tbaa !21 ; 3 uses
  %i.it = load i32, ptr %i.hf, align 8, !tbaa !137 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %.idx.i.i111 = shl nuw nsw i64 %i.iu, 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx.i.i111
  %.not10.i.i = icmp eq i32 %i.it, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.iz, %.lr.ph.i1.i ], [ %i.is, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.iw = load ptr, ptr %.011.i.i, align 8, !tbaa !605
  %i.ix = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !607
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.iw, i64 noundef %i.iy, i64 noundef 16) #26
  %i.iz = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.iz, %i.iv
  br i1 %.not.i2.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, label %.lr.ph.i1.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i: ; preds = %.lr.ph.i1.i
  %.pre.i112 = load ptr, ptr %i.hd, align 8, !tbaa !21
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i
  %i.ja = phi ptr [ %.pre.i112, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i ], [ %i.is, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  call void @free(ptr noundef %i.ja) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i: ; preds = %bb.ag, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.jd = load ptr, ptr %i.hn, align 8, !tbaa !21 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.jd) #26
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, %bb.ah
  %i.jg = load ptr, ptr %i.gx, align 8, !tbaa !2131 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !2137
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jl) #30
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i:    ; preds = %bb.ai, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit
  %i.jm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i
  call void @free(ptr noundef %i.jm) #26
  br label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit

_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !2138 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !2141
  %i.ju = zext i32 %i.jq to i64                   ; 2 uses
  %i.jv = mul nuw nsw i64 %i.ju, 24
  %i.jw = add nuw nsw i64 %i.ju, 31
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = and i64 %i.jx, 1073741820
  %i.jz = add nuw nsw i64 %i.jy, %i.jv
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jt, i64 noundef %i.jz, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.ak, %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !2142 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !2145
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !2146
  %i.kh = zext i32 %i.kc to i64
  %i.ki = add nuw nsw i64 %i.kh, 31
  %i.kj = lshr i64 %i.ki, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i120, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i120 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i120, label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.km = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.al

bb.al:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i117
  %.0.i3.i.i = phi i32 [ %i.kl, %.lr.ph.i.i117 ], [ %i.la, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.kn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ko = or disjoint i32 %i.kn, %i.km
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [32 x i8], ptr %i.ke, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !2147 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ks, %i.kr
  br i1 %.not8.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i118

.lr.ph.i.i.i.i.i118:                              ; preds = %bb.al, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.kt, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.ks, %bb.al ] ; 3 uses
  %i.kt = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !2147 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !2150 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i118
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.kv) #26, !inline_history !2152
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i118
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 32) #30
  %.not.i.i.i.i.i119 = icmp eq ptr %i.kt, %i.kr
  br i1 %.not.i.i.i.i.i119, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i118, !llvm.loop !2153

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.al
  %i.kz = add i32 %.0.i3.i.i, -1
  %i.la = and i32 %i.kz, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.la, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i120, label %bb.al, !llvm.loop !2154

._crit_edge.i.i120:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i121 = icmp eq i64 %indvars.iv.next.i.i, %i.kj
  br i1 %.not.i.i.i121, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2155

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i120
  %.pr.i = load i32, ptr %i.kb, align 4, !tbaa !2142 ; 2 uses
  %i.lb = icmp eq i32 %.pr.i, 0
  br i1 %i.lb, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.lc = load ptr, ptr %i.ka, align 8, !tbaa !2145
  %i.ld = zext i32 %.pr.i to i64                  ; 2 uses
  %i.le = shl nuw nsw i64 %i.ld, 5
  %i.lf = add nuw nsw i64 %i.ld, 31
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = and i64 %i.lg, 1073741820
  %i.li = add nuw nsw i64 %i.lh, %i.le
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.lc, i64 noundef %i.li, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.am
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !2156 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.lm = load ptr, ptr %9, align 8, !tbaa !2159
  %i.ln = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !2160
  %i.lp = zext i32 %i.lk to i64
  %i.lq = add nuw nsw i64 %i.lp, 31
  %i.lr = lshr i64 %i.lq, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv.i.i.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.lu = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.an

bb.an:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.lt, %.lr.ph.i.i.i ], [ %i.mf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.lv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.lw = or disjoint i32 %i.lv, %i.lu
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !2088 ; 3 uses
  %.not.i.i.i.i.i107 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i107, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.an
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(8) %i.ma) #26, !inline_history !2161
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.an
  %i.me = add i32 %.0.i3.i.i.i, -1
  %i.mf = and i32 %i.me, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.an, !llvm.loop !2162

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i108 = icmp eq i64 %indvars.iv.next.i.i.i, %i.lr
  br i1 %.not.i.i.i.i108, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !2163

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.lj, align 4, !tbaa !2156 ; 2 uses
  %i.mg = icmp eq i32 %.pr.i.i, 0
  br i1 %i.mg, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i
  %i.mh = load ptr, ptr %9, align 8, !tbaa !2159
  %i.mi = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.mj = shl nuw nsw i64 %i.mi, 4
  %i.mk = add nuw nsw i64 %i.mi, 31
  %i.ml = lshr i64 %i.mk, 3
  %i.mm = and i64 %i.ml, 1073741820
  %i.mn = add nuw nsw i64 %i.mm, %i.mj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mh, i64 noundef %i.mn, i64 noundef 8) #26
  br label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit

_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.mo = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.l
  br i1 %i.mp, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit
  call void @free(ptr noundef %i.mo) #26
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit: ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

declare noundef ptr @_ZN4llvm13IRBuilderBase25CreateAlignmentAssumptionERKNS_10DataLayoutEPNS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = mul nuw nsw i64 %i.i, 24
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #26
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !2344, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !2344
  br i1 %i.r, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2349 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !2352
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2353
  %i.y = zext i32 %i.t to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.ad = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2354 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %i.aj) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ak = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.al = and i32 %i.ak, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !2356

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !2357

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !2349 ; 2 uses
  %i.am = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !2352
  %i.ao = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ao, 31
  %i.ar = lshr i64 %i.aq, 3
  %i.as = and i64 %i.ar, 1073741820
  %i.at = add nuw nsw i64 %i.as, %i.ap
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.an, i64 noundef %i.at, i64 noundef 8) #26
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  ret void
}

declare noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15OpenMPIRBuilder17unrollLoopPartialENS_8DebugLocEPNS_17CanonicalLoopInfoEiPS3_(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::TargetIRAnalysis", align 8 ; 10 uses
  %6 = alloca %"class.std::function.950", align 16 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %8 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.llvm::TargetOptions", align 8 ; 22 uses
  %11 = alloca %"class.std::unique_ptr.928", align 8 ; 8 uses
  %12 = alloca %"class.llvm::SmallVector.354", align 8 ; 10 uses
  %13 = alloca %"class.llvm::InsertPosition", align 8 ; 5 uses
  %14 = alloca %"class.llvm::AnalysisManager", align 8 ; 24 uses
  %15 = alloca %"class.llvm::TargetIRAnalysis", align 16 ; 13 uses
  %16 = alloca %"class.llvm::TargetIRAnalysis", align 8 ; 7 uses
  %17 = alloca %"class.std::function.950", align 8 ; 9 uses
  %18 = alloca %"class.llvm::TargetTransformInfo", align 8 ; 8 uses
  %19 = alloca %"class.llvm::ScalarEvolutionAnalysis", align 1 ; 3 uses
  %20 = alloca %"class.llvm::ScalarEvolution", align 8 ; 7 uses
  %21 = alloca %"class.llvm::DominatorTreeAnalysis", align 1 ; 3 uses
  %22 = alloca %"class.llvm::DominatorTree", align 8 ; 14 uses
  %23 = alloca %"class.llvm::LoopAnalysis", align 1 ; 3 uses
  %24 = alloca %"class.llvm::LoopInfo", align 8   ; 19 uses
  %25 = alloca %"class.llvm::AssumptionAnalysis", align 1 ; 3 uses
  %26 = alloca %"class.llvm::AssumptionCache", align 8 ; 11 uses
  %27 = alloca %"class.llvm::OptimizationRemarkEmitter", align 8 ; 6 uses
  %28 = alloca %"struct.llvm::TargetTransformInfo::UnrollingPreferences", align 4 ; 12 uses
  %29 = alloca %"struct.llvm::TargetTransformInfo::PeelingPreferences", align 8 ; 4 uses
  %30 = alloca %"class.llvm::SmallPtrSet.1041", align 8 ; 13 uses
  %31 = alloca %"class.llvm::UnrollCostEstimator", align 8 ; 5 uses
  %32 = alloca %"class.llvm::SmallVector.552", align 8 ; 12 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %i.i = alloca [2 x ptr], align 8                ; 5 uses
  %34 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %35 = alloca %"class.std::vector.486", align 8  ; 5 uses
  %i.j = alloca [1 x ptr], align 8                ; 4 uses
  %36 = alloca %"class.llvm::ArrayRef.43", align 8 ; 3 uses
  %i.k = alloca [1 x ptr], align 8                ; 4 uses
  %37 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %i.l = alloca [2 x ptr], align 8                ; 5 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca [2 x ptr], align 8                ; 5 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !1137
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.q) #26 ; 10 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.s = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.s, ptr %32, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 8 uses
  store i32 0, ptr %i.t, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %32, i64 12 ; 3 uses
  store i32 2, ptr %i.u, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.v = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull @.str.347, i64 23) #26
  store ptr %i.v, ptr %i.h, align 8, !tbaa !396
  %i.w = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull %i.h, i64 1, i32 noundef 0, i1 noundef zeroext true) #26 ; 2 uses
  %i.x = load i32, ptr %i.t, align 8, !tbaa !137  ; 2 uses
  %i.y = load i32, ptr %i.u, align 4, !tbaa !138
  %.not.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !139

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef %i.w)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %32, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !137
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.t, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.ae = icmp sgt i32 %3, 0
  br i1 %i.ae, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit
  %i.af = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %i.ag = zext nneg i32 %3 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i32 32, ptr %i.ah, align 8, !tbaa !918
  store i64 %i.ag, ptr %33, align 8, !tbaa !56
  %i.ai = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(12) %33) #26
  %i.aj = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.ai) #26
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !918
  %i.al = icmp ugt i32 %i.ak, 64
  br i1 %i.al, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %33, align 8, !tbaa !56   ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.am) #30
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.ao = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull @.str.357, i64 22) #26
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !396
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !396
  %i.aq = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull %i.i, i64 2, i32 noundef 0, i1 noundef zeroext true) #26 ; 2 uses
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !137 ; 2 uses
  %i.as = load i32, ptr %i.u, align 4, !tbaa !138
  %.not.i45 = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i45, label %bb.i, label %bb.h, !prof !139

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef %i.aq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit46

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %32, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store ptr %i.aq, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.t, align 8, !tbaa !137
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.t, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit46

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit46: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit46, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit
end_hunk_4
begin_hunk_5_@_ZN4llvm15OpenMPIRBuilder17unrollLoopPartialENS_8DebugLocEPNS_17CanonicalLoopInfoEiPS3_:bb.a
_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i: ; preds = %bb.am, %._crit_edge242.i
  %i.ix = phi ptr [ %i.iw, %bb.am ], [ null, %._crit_edge242.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @_ZN4llvm26gatherUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoERNS_25OptimizationRemarkEmitterEiSt8optionalIjESE_SD_IbESF_SF_SE_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::TargetTransformInfo::UnrollingPreferences") align 4 %28, ptr noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(1152) %20, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef 3, i64 0, i64 0, i16 257, i16 257, i16 0, i64 0) #26
  %i.iy = getelementptr inbounds nuw i8, ptr %28, i64 48
  store i8 1, ptr %i.iy, align 4, !tbaa !2429
  %i.iz = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollThresholdFactor, i64 120), align 8, !tbaa !2431 ; 2 uses
  %i.ja = load i32, ptr %28, align 4, !tbaa !2437
  %i.jb = uitofp i32 %i.ja to double
  %i.jc = fmul double %i.iz, %i.jb
  %i.jd = fptoui double %i.jc to i32              ; 2 uses
  store i32 %i.jd, ptr %28, align 4, !tbaa !2437
  %i.je = getelementptr inbounds nuw i8, ptr %28, i64 12 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !2438
  %i.jg = uitofp i32 %i.jf to double
  %i.jh = fmul double %i.iz, %i.jg
  %i.ji = fptoui double %i.jh to i32              ; 2 uses
  store i32 %i.ji, ptr %i.je, align 4, !tbaa !2438
  %i.jj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %i.jd, ptr %i.jj, align 4, !tbaa !2439
  %i.jk = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 %i.ji, ptr %i.jk, align 4, !tbaa !2440
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.jl = call i64 @_ZN4llvm24gatherPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoESt8optionalIbES8_b(ptr noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(1152) %20, ptr noundef nonnull align 8 dereferenceable(8) %18, i16 256, i16 256, i1 noundef zeroext false) #26
  store i64 %i.jl, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.jm = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.jm, ptr %30, align 8, !tbaa !20
  %i.jn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i32 32, ptr %i.jn, align 8, !tbaa !510
  %i.jo = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 3 uses
  store i32 0, ptr %i.jo, align 4, !tbaa !511
  %i.jp = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store i8 1, ptr %i.jp, align 8, !tbaa !14
  call void @_ZN4llvm11CodeMetrics22collectEphemeralValuesEPKNS_4LoopEPNS_15AssumptionCacheERNS_15SmallPtrSetImplIPKNS_5ValueEEE(ptr noundef %i.ix, ptr noundef nonnull %26, ptr noundef nonnull align 8 dereferenceable(17) %30) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !2095 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !2097 ; 2 uses
  %.not90249.i = icmp eq ptr %i.jr, %i.jt
  br i1 %.not90249.i, label %._crit_edge252.i, label %.lr.ph251.i

.lr.ph241.i:                                      ; preds = %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL28computeHeuristicUnrollFactorPNS_17CanonicalLoopInfoEE3$_7EEbOT_.exit.i", %.lr.ph241.i
  %.085240.i = phi ptr [ %i.jw, %.lr.ph241.i ], [ %i.ij, %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL28computeHeuristicUnrollFactorPNS_17CanonicalLoopInfoEE3$_7EEbOT_.exit.i" ] ; 2 uses
  %i.ju = load ptr, ptr %.085240.i, align 8, !tbaa !608
  %i.jv = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ju) #26 ; 0 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.085240.i, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %i.jw, %i.im
  br i1 %.not.i47, label %._crit_edge242.i, label %.lr.ph241.i

._crit_edge252.i:                                 ; preds = %._crit_edge248.i, %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.jx = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !2441
  call void @_ZN4llvm19UnrollCostEstimatorC1EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb(ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(17) %30, i32 noundef %i.jy, i1 noundef zeroext false) #26
  %i.jz = call noundef zeroext i1 @_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef null, ptr noundef null) #26
  br i1 %i.jz, label %bb.ar, label %bb.as

.lr.ph251.i:                                      ; preds = %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i, %._crit_edge248.i
  %.084250.i = phi ptr [ %i.kd, %._crit_edge248.i ], [ %i.jr, %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i ] ; 2 uses
  %i.ka = load ptr, ptr %.084250.i, align 8, !tbaa !417 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 48 ; 2 uses
  %.sroa.0178.0243.i = load ptr, ptr %i.kb, align 8, !tbaa !31 ; 2 uses
  %.not230244.i = icmp eq ptr %.sroa.0178.0243.i, %i.kc
  br i1 %.not230244.i, label %._crit_edge248.i, label %.lr.ph247.i

._crit_edge248.i:                                 ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i, %.lr.ph251.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.084250.i, i64 8 ; 2 uses
  %.not90.i = icmp eq ptr %i.kd, %i.jt
  br i1 %.not90.i, label %._crit_edge252.i, label %.lr.ph251.i

.lr.ph247.i:                                      ; preds = %.lr.ph251.i, %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i
  %.sroa.0178.0245.i = phi ptr [ %.sroa.0178.0.i, %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i ], [ %.sroa.0178.0243.i, %.lr.ph251.i ] ; 3 uses
  %i.ke = getelementptr inbounds i8, ptr %.sroa.0178.0245.i, i64 -24 ; 4 uses
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !424
  %.off.i = add i8 %i.kf, -63
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %.thread.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i

.thread.i:                                        ; preds = %.lr.ph247.i
  %.2.ph.in.i = getelementptr inbounds i8, ptr %.sroa.0178.0245.i, i64 -56
  %.2.ph.i = load ptr, ptr %.2.ph.in.i, align 8, !tbaa !563
  %i.kg = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.ph.i) #26 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !424
  %.not234.i = icmp eq i8 %i.kh, 62
  br i1 %.not234.i, label %bb.an, label %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i

bb.an:                                            ; preds = %.thread.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !50
  %i.kk = load ptr, ptr %i.eb, align 8, !tbaa !78
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -24
  %i.km = icmp eq ptr %i.kj, %i.kl
  br i1 %i.km, label %bb.ao, label %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.kn = load i8, ptr %i.jp, align 8, !tbaa !14, !range !18, !noalias !2442, !noundef !19
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ap, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.kp = load ptr, ptr %30, align 8, !tbaa !20, !noalias !2442 ; 2 uses
  %i.kq = load i32, ptr %i.jo, align 4, !tbaa !511, !noalias !2442 ; 4 uses
  %i.kr = zext i32 %i.kq to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.kr, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.ku, %.critedge.i.i.i ], [ %i.kp, %bb.ap ] ; 2 uses
  %i.kt = load ptr, ptr %.023.i.i.i, align 8, !tbaa !580, !noalias !2442
  %.not15.i.i.i = icmp eq ptr %i.kt, %i.ke
  br i1 %.not15.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i131.i = icmp eq ptr %i.ku, %i.ks
  br i1 %.not.i.i131.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.ap
  %i.kv = load i32, ptr %i.jn, align 8, !tbaa !510, !noalias !2442
  %i.kw = icmp ult i32 %i.kq, %i.kv
  br i1 %i.kw, label %bb.aq, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.kx = add nuw i32 %i.kq, 1
  store i32 %i.kx, ptr %i.jo, align 4, !tbaa !511, !noalias !2442
  store ptr %i.ke, ptr %i.ks, align 8, !tbaa !580, !noalias !2442
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.ao
  %i.ky = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %30, ptr noundef nonnull %i.ke) #26, !noalias !2442 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i

_ZN4llvm15SmallPtrSetImplIPKNS_5ValueEE6insertES3_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i, %bb.aq, %bb.an, %.thread.i, %.lr.ph247.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0178.0245.i, i64 8
  %.sroa.0178.0.i = load ptr, ptr %i.kz, align 8, !tbaa !31 ; 2 uses
  %.not230.i = icmp eq ptr %.sroa.0178.0.i, %i.kc
  br i1 %.not230.i, label %._crit_edge248.i, label %.lr.ph247.i

bb.ar:                                            ; preds = %._crit_edge252.i
  call void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef nonnull %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(204) %22, ptr noundef nonnull %24, ptr noundef nonnull %26, ptr noundef nonnull align 8 dereferenceable(1152) %20, ptr noundef nonnull align 8 dereferenceable(17) %30, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull align 4 dereferenceable(70) %28, ptr noundef nonnull align 4 dereferenceable(8) %29) #26
  %i.la = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !2445
  %..i = call i32 @llvm.umax.i32(i32 %i.lb, i32 1)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge252.i
  %.180.i = phi i32 [ %..i, %bb.ar ], [ 1, %._crit_edge252.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.lc = load i8, ptr %i.jp, align 8, !tbaa !14, !range !18, !noundef !19
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.le = load ptr, ptr %30, align 8, !tbaa !20
  call void @free(ptr noundef %i.le) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.lf = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !2446 ; 3 uses
  %.not.i.i132.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i132.i, label %_ZN4llvm25OptimizationRemarkEmitterD2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm18BlockFrequencyInfoEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm18BlockFrequencyInfoEEclEPS1_.exit.i.i.i: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  call void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lg) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 8) #30
  br label %_ZN4llvm25OptimizationRemarkEmitterD2Ev.exit.i

_ZN4llvm25OptimizationRemarkEmitterD2Ev.exit.i:   ; preds = %_ZNKSt14default_deleteIN4llvm18BlockFrequencyInfoEEclEPS1_.exit.i.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.lh = getelementptr inbounds nuw i8, ptr %26, i64 128 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %26, i64 148 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !2448 ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i, label %.lr.ph9.preheader.i.i

.lr.ph9.preheader.i.i:                            ; preds = %_ZN4llvm25OptimizationRemarkEmitterD2Ev.exit.i
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !2451
  %i.lm = getelementptr inbounds nuw i8, ptr %26, i64 136
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !2452
  %i.lo = zext i32 %i.lj to i64
  %i.lp = add nuw nsw i64 %i.lo, 31
  %i.lq = lshr i64 %i.lp, 5
  br label %.lr.ph9.i.i

.lr.ph9.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph9.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph9.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i.i
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !200 ; 2 uses
  %.not11.i4.i.i = icmp eq i32 %i.ls, 0
  br i1 %.not11.i4.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph9.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.lt = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.au

bb.au:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i5.i.i = phi i32 [ %i.ls, %.lr.ph.i.i ], [ %i.mo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.lu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i.i, i1 true)
  %i.lv = or disjoint i32 %i.lu, %i.lt
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [88 x i8], ptr %i.ll, i64 %i.lw ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !21 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.mb, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.au
  %i.mc = zext i32 %i.mb to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.mc, 5
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.me, %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i.i ], [ %i.md, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 3 uses
  %i.mf = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !573
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %i.me) #26
  br label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i.i

_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i.i: ; preds = %bb.av, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i143.i = icmp eq ptr %i.lz, %i.me
  br i1 %.not.i.i.i.i143.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2453

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.ly, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, %bb.au
  %i.mh = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i ], [ %i.lz, %bb.au ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lx, i64 56
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @free(ptr noundef %i.mh) #26
  br label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i.i: ; preds = %bb.aw, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !573
  %.not.i.i2.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i2.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mm) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.ax, %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i.i
  %i.mn = add i32 %.0.i5.i.i, -1
  %i.mo = and i32 %i.mn, %.0.i5.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.au, !llvm.loop !2454

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph9.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i144.i = icmp eq i64 %indvars.iv.next.i.i, %i.lq
  br i1 %.not.i.i144.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph9.i.i, !llvm.loop !2455

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pre256.i = load i32, ptr %i.li, align 4, !tbaa !2448 ; 2 uses
  %i.mp = icmp eq i32 %.pre256.i, 0
  br i1 %i.mp, label %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit.i
  %i.mq = load ptr, ptr %i.lh, align 8, !tbaa !2451
  %i.mr = zext i32 %.pre256.i to i64              ; 2 uses
  %i.ms = mul nuw nsw i64 %i.mr, 88
  %i.mt = add nuw nsw i64 %i.mr, 31
  %i.mu = lshr i64 %i.mt, 3
  %i.mv = and i64 %i.mu, 1073741820
  %i.mw = add nuw nsw i64 %i.mv, %i.ms
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mq, i64 noundef %i.mw, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i: ; preds = %bb.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit.i, %_ZN4llvm25OptimizationRemarkEmitterD2Ev.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !21 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.na, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i
  %i.nb = zext i32 %i.na to i64
  %.idx.i.i133.i = mul nuw nsw i64 %i.nb, 24
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 %.idx.i.i133.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.nd, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i ], [ %i.nc, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -24 ; 3 uses
  %i.ne = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !573
  %.not.i.i.i.i134.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i134.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nd) #26
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i:       ; preds = %bb.az, %.lr.ph.i.i.i.i
  %.not.i.i.i135.i = icmp eq ptr %i.my, %i.nd
  br i1 %.not.i.i.i135.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2456

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.mx, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i
  %i.ng = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i ], [ %i.my, %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZN4llvm15AssumptionCacheD2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  call void @free(ptr noundef %i.ng) #26
  br label %_ZN4llvm15AssumptionCacheD2Ev.exit.i

_ZN4llvm15AssumptionCacheD2Ev.exit.i:             ; preds = %bb.ba, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  store i32 0, ptr %i.iq, align 8, !tbaa !137
  %i.nj = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !2129 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 3 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !2129 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.nk, %i.nm
  br i1 %.not8.i.i, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i, label %.lr.ph.i149.i

._crit_edge.i151.i:                               ; preds = %.lr.ph.i149.i
  %.pre.i152.i = load ptr, ptr %i.nj, align 8, !tbaa !2131 ; 2 uses
  %.pre10.i.i = load ptr, ptr %i.nl, align 8, !tbaa !2133
  %i.nn = icmp eq ptr %.pre10.i.i, %.pre.i152.i
  br i1 %i.nn, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i151.i
  store ptr %.pre.i152.i, ptr %i.nl, align 8, !tbaa !2133
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i: ; preds = %bb.bb, %._crit_edge.i151.i, %_ZN4llvm15AssumptionCacheD2Ev.exit.i
  %i.no = getelementptr inbounds nuw i8, ptr %24, i64 104
  %i.np = getelementptr inbounds nuw i8, ptr %24, i64 168 ; 4 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !21 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %24, i64 176 ; 3 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !137 ; 2 uses
  %i.nt = zext i32 %i.ns to i64
  %.idx.i.i.i153.i = shl nuw nsw i64 %i.nt, 4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.idx.i.i.i153.i
  %.not10.i.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not10.i.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i.i, label %.lr.ph.i.i.i154.i

.lr.ph.i.i.i154.i:                                ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i, %.lr.ph.i.i.i154.i
  %.011.i.i.i.i = phi ptr [ %i.ny, %.lr.ph.i.i.i154.i ], [ %i.nq, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i ] ; 3 uses
  %i.nv = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !605
  %i.nw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !607
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.nv, i64 noundef %i.nx, i64 noundef 16) #26
  %i.ny = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ny, %i.nu
  br i1 %.not.i.i4.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i.i, label %.lr.ph.i.i.i154.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i154.i, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EE5clearEv.exit.i.i
  store i32 0, ptr %i.nr, align 8, !tbaa !137
  %i.nz = getelementptr inbounds nuw i8, ptr %24, i64 120 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !137 ; 3 uses
  %.not.i1.i.i.i = icmp eq i32 %i.ob, 0
  %.pre258.i = load ptr, ptr %i.nz, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i1.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i.thread, label %bb.bc

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i.thread: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i.i
  %i.oc = load ptr, ptr %i.np, align 8, !tbaa !21
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i

bb.bc:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i.i
  %i.od = load ptr, ptr %.pre258.i, align 8, !tbaa !580 ; 3 uses
  store ptr %i.od, ptr %i.no, align 8, !tbaa !2134
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = add i64 %i.oe, 4097
  %i.og = getelementptr inbounds nuw i8, ptr %24, i64 112
  store i64 %i.of, ptr %i.og, align 8, !tbaa !2135
  %i.oh = zext i32 %i.ob to i64
  %.idx.i.i155.i = shl nuw nsw i64 %i.oh, 3
  %i.oi = getelementptr inbounds nuw i8, ptr %.pre258.i, i64 %.idx.i.i155.i
  %.not6.i.i.i.i = icmp eq i32 %i.ob, 1
end_hunk_5
begin_hunk_6_@_ZN4llvm15OpenMPIRBuilder17unrollLoopPartialENS_8DebugLocEPNS_17CanonicalLoopInfoEiPS3_:bb.a
  %i.pe = phi ptr [ %.pre.i148.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i ], [ %i.ox, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ], [ %i.oc, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i.thread ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %24, i64 184
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  call void @free(ptr noundef %i.pe) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i: ; preds = %bb.bd, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.ph = load ptr, ptr %i.nz, align 8, !tbaa !21 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %24, i64 136
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  call void @free(ptr noundef %i.ph) #26
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i: ; preds = %bb.be, %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  %i.pk = load ptr, ptr %i.nj, align 8, !tbaa !2131 ; 3 uses
  %.not.i.i.i.i136.i = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i.i136.i, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i
  %i.pl = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !2137
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = ptrtoint ptr %i.pk to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pp) #30
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i:  ; preds = %bb.bf, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i
  %i.pq = load ptr, ptr %24, align 8, !tbaa !21   ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ps = icmp eq ptr %i.pq, %i.pr
  br i1 %i.ps, label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.pq) #26
  br label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i

_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.pt = getelementptr inbounds nuw i8, ptr %22, i64 128 ; 3 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !21 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !137 ; 2 uses
  %i.px = zext i32 %i.pw to i64
  %.idx.i156.i = shl nuw nsw i64 %i.px, 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.idx.i156.i
  %.not6.i.i157.i = icmp eq i32 %i.pw, 0
  br i1 %.not6.i.i157.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i158.i

.lr.ph.i.i158.i:                                  ; preds = %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i, %.lr.ph.i.i158.i
  %.07.i.i159.i = phi ptr [ %i.qi, %.lr.ph.i.i158.i ], [ %i.pu, %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i ] ; 3 uses
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !21
  %i.qa = ptrtoint ptr %.07.i.i159.i to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %sum.shift.i.i160.i = lshr i64 %i.qc, 4
  %i.qd = trunc i64 %sum.shift.i.i160.i to i32
  %i.qe = and i32 %i.qd, 2147483647
  %i.qf = call i32 @llvm.umin.i32(i32 %i.qe, i32 30)
  %.sroa.speculated.i.i.i161.i = zext nneg i32 %i.qf to i64
  %i.qg = shl nuw nsw i64 448, %.sroa.speculated.i.i.i161.i
  %i.qh = load ptr, ptr %.07.i.i159.i, align 8, !tbaa !580
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qh, i64 noundef %i.qg, i64 noundef 16) #26
  %i.qi = getelementptr inbounds nuw i8, ptr %.07.i.i159.i, i64 8 ; 2 uses
  %.not.i.i162.i = icmp eq ptr %i.qi, %i.py
  br i1 %.not.i.i162.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i158.i, !llvm.loop !604

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i: ; preds = %.lr.ph.i.i158.i, %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i
  %i.qj = getelementptr inbounds nuw i8, ptr %22, i64 176 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !21 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 184
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !137 ; 2 uses
  %i.qn = zext i32 %i.qm to i64
  %.idx.i.i163.i = shl nuw nsw i64 %i.qn, 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx.i.i163.i
  %.not10.i.i164.i = icmp eq i32 %i.qm, 0
  br i1 %.not10.i.i164.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i1.i165.i

.lr.ph.i1.i165.i:                                 ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, %.lr.ph.i1.i165.i
  %.011.i.i166.i = phi ptr [ %i.qs, %.lr.ph.i1.i165.i ], [ %i.qk, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 3 uses
  %i.qp = load ptr, ptr %.011.i.i166.i, align 8, !tbaa !605
  %i.qq = getelementptr inbounds nuw i8, ptr %.011.i.i166.i, i64 8
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !607
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qp, i64 noundef %i.qr, i64 noundef 16) #26
  %i.qs = getelementptr inbounds nuw i8, ptr %.011.i.i166.i, i64 16 ; 2 uses
  %.not.i2.i167.i = icmp eq ptr %i.qs, %i.qo
  br i1 %.not.i2.i167.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, label %.lr.ph.i1.i165.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i1.i165.i
  %.pre.i168.i = load ptr, ptr %i.qj, align 8, !tbaa !21
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i
  %i.qt = phi ptr [ %.pre.i168.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i ], [ %i.qk, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %22, i64 192
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i169.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  call void @free(ptr noundef %i.qt) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i169.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i169.i: ; preds = %bb.bh, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.qw = load ptr, ptr %i.pt, align 8, !tbaa !21 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %22, i64 144
  %i.qy = icmp eq ptr %i.qw, %i.qx
  br i1 %i.qy, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i169.i
  call void @free(ptr noundef %i.qw) #26
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i: ; preds = %bb.bi, %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i169.i
  %i.qz = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !21 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i
  call void @free(ptr noundef %i.ra) #26
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i: ; preds = %bb.bj, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i
  %i.rd = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.rd) #26
  br label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i

_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i: ; preds = %bb.bk, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZN4llvm15ScalarEvolutionD1Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN4llvm19TargetTransformInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.rg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.rh = load ptr, ptr %i.rg, align 16, !tbaa !10 ; 2 uses
  %.not.i.i137.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i137.i, label %_ZN4llvm16TargetIRAnalysisD2Ev.exit138.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i
  %i.ri = call noundef zeroext i1 %i.rh(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3) #26, !inline_history !2421 ; 0 uses
  br label %_ZN4llvm16TargetIRAnalysisD2Ev.exit138.i

_ZN4llvm16TargetIRAnalysisD2Ev.exit138.i:         ; preds = %bb.bl, %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.rj = getelementptr inbounds nuw i8, ptr %14, i64 68
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !2138 ; 2 uses
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm16TargetIRAnalysisD2Ev.exit138.i
  %i.rm = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !2141
  %i.ro = zext i32 %i.rk to i64                   ; 2 uses
  %i.rp = mul nuw nsw i64 %i.ro, 24
  %i.rq = add nuw nsw i64 %i.ro, 31
  %i.rr = lshr i64 %i.rq, 3
  %i.rs = and i64 %i.rr, 1073741820
  %i.rt = add nuw nsw i64 %i.rs, %i.rp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.rn, i64 noundef %i.rt, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i: ; preds = %bb.bm, %_ZN4llvm16TargetIRAnalysisD2Ev.exit138.i
  %i.ru = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !2142 ; 2 uses
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i
  %i.ry = load ptr, ptr %i.ru, align 8, !tbaa !2145
  %i.rz = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !2146
  %i.sb = zext i32 %i.rw to i64
  %i.sc = add nuw nsw i64 %i.sb, 31
  %i.sd = lshr i64 %i.sc, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i173.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i173.i ] ; 3 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %indvars.iv.i.i.i
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.sf, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i173.i, label %.lr.ph.i.i170.i

.lr.ph.i.i170.i:                                  ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.sg = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.bn

bb.bn:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i170.i
  %.0.i3.i.i.i = phi i32 [ %i.sf, %.lr.ph.i.i170.i ], [ %i.su, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.sh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.si = or disjoint i32 %i.sh, %i.sg
  %i.sj = zext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [32 x i8], ptr %i.ry, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 3 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !2147 ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.sm, %i.sl
  br i1 %.not8.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i171.i

.lr.ph.i.i.i.i.i171.i:                            ; preds = %bb.bn, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.sn, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i ], [ %i.sm, %bb.bn ] ; 3 uses
  %i.sn = load ptr, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !2147 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !2150 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.sp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i171.i
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(8) %i.sp) #26, !inline_history !2457
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i171.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 32) #30
  %.not.i.i.i.i.i172.i = icmp eq ptr %i.sn, %i.sl
  br i1 %.not.i.i.i.i.i172.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i171.i, !llvm.loop !2153

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i, %bb.bn
  %i.st = add i32 %.0.i3.i.i.i, -1
  %i.su = and i32 %i.st, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.su, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i173.i, label %bb.bn, !llvm.loop !2154

._crit_edge.i.i173.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i174.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.sd
  br i1 %.not.i.i.i174.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !2155

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i173.i
  %.pr.i.i = load i32, ptr %i.rv, align 4, !tbaa !2142 ; 2 uses
  %i.sv = icmp eq i32 %.pr.i.i, 0
  br i1 %i.sv, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i
  %i.sw = load ptr, ptr %i.ru, align 8, !tbaa !2145
  %i.sx = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.sy = shl nuw nsw i64 %i.sx, 5
  %i.sz = add nuw nsw i64 %i.sx, 31
  %i.ta = lshr i64 %i.sz, 3
  %i.tb = and i64 %i.ta, 1073741820
  %i.tc = add nuw nsw i64 %i.tb, %i.sy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.sw, i64 noundef %i.tc, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i: ; preds = %bb.bo, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i, %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i
  %i.td = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !2156 ; 2 uses
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i
  %i.tg = load ptr, ptr %14, align 8, !tbaa !2159
  %i.th = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !2160
  %i.tj = zext i32 %i.te to i64
  %i.tk = add nuw nsw i64 %i.tj, 31
  %i.tl = lshr i64 %i.tk, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.i.i.i.i
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.tn, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i139.i

.lr.ph.i.i.i139.i:                                ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.to = shl i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.bp

bb.bp:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i139.i
  %.0.i3.i.i.i.i = phi i32 [ %i.tn, %.lr.ph.i.i.i139.i ], [ %i.tz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.tp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.tq = or disjoint i32 %i.tp, %i.to
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [16 x i8], ptr %i.tg, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !2088 ; 3 uses
  %.not.i.i.i.i.i140.i = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i.i.i140.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i: ; preds = %bb.bp
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(8) %i.tu) #26, !inline_history !2458
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i, %bb.bp
  %i.ty = add i32 %.0.i3.i.i.i.i, -1
  %i.tz = and i32 %i.ty, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.tz, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bp, !llvm.loop !2162

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i141.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.tl
  br i1 %.not.i.i.i.i141.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !2163

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.td, align 4, !tbaa !2156 ; 2 uses
  %i.ua = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.ua, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i
  %i.ub = load ptr, ptr %14, align 8, !tbaa !2159
  %i.uc = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.ud = shl nuw nsw i64 %i.uc, 4
  %i.ue = add nuw nsw i64 %i.uc, 31
  %i.uf = lshr i64 %i.ue, 3
  %i.ug = and i64 %i.uf, 1073741820
  %i.uh = add nuw nsw i64 %i.ug, %i.ud
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ub, i64 noundef %i.uh, i64 noundef 8) #26
  br label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i

_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i: ; preds = %bb.bq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i, %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ui = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.dy
  br i1 %i.uj, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i
  call void @free(ptr noundef %i.ui) #26
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit.i: ; preds = %bb.br, %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.uk = load ptr, ptr %11, align 8, !tbaa !2401 ; 3 uses
  %.not.i142.i = icmp eq ptr %i.uk, null
  br i1 %.not.i142.i, label %_ZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoE.exit, label %_ZNKSt14default_deleteIN4llvm13TargetMachineEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13TargetMachineEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit.i
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !8
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(1728) %i.uk) #26, !inline_history !2459
  br label %_ZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoE.exit

_ZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoE.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit.i, %_ZNKSt14default_deleteIN4llvm13TargetMachineEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.bs

bb.bs:                                            ; preds = %_ZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoE.exit, %bb.l
  %.0 = phi i32 [ %.180.i, %_ZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoE.exit ], [ %3, %bb.l ] ; 2 uses
  %i.uo = icmp eq i32 %.0, 1
  br i1 %i.uo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store ptr %2, ptr %4, align 8, !tbaa !973
  br label %bb.cb

bb.bu:                                            ; preds = %bb.bs
  %i.up = load ptr, ptr %2, align 8, !tbaa !1137
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 56
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !31
  %i.us = getelementptr inbounds i8, ptr %i.ur, i64 -16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load i32, ptr %i.uu, align 8            ; 2 uses
  %i.uw = lshr i32 %i.uv, 8
  %i.ux = sext i32 %.0 to i64                     ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i32 %i.uw, ptr %i.uy, align 8, !tbaa !918
  %i.uz = icmp ult i32 %i.uv, 16640
  br i1 %i.uz, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i64 %i.ux, ptr %34, align 8, !tbaa !56
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.bw:                                            ; preds = %bb.bu
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %34, i64 noundef %i.ux, i1 noundef zeroext false) #26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.bv, %bb.bw
  %i.va = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef nonnull %i.ut, ptr noundef nonnull align 8 dereferenceable(12) %34) #26
  %i.vb = load i32, ptr %i.uy, align 8, !tbaa !918
  %i.vc = icmp ugt i32 %i.vb, 64
  br i1 %i.vc, label %bb.bx, label %_ZN4llvm5APIntD2Ev.exit48

bb.bx:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.vd = load ptr, ptr %34, align 8, !tbaa !56   ; 2 uses
  %i.ve = icmp eq ptr %i.vd, null
  br i1 %i.ve, label %_ZN4llvm5APIntD2Ev.exit48, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %i.vd) #30
  br label %_ZN4llvm5APIntD2Ev.exit48

_ZN4llvm5APIntD2Ev.exit48:                        ; preds = %_ZN4llvm5APIntC2Ejmbb.exit, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store ptr %2, ptr %i.j, align 8, !tbaa !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store ptr %i.va, ptr %i.k, align 8, !tbaa !199
  store ptr %i.k, ptr %36, align 8, !tbaa !198
  %i.vf = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 1, ptr %i.vf, align 8, !tbaa !201
  call void @_ZN4llvm15OpenMPIRBuilder9tileLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS2_IPNS_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.486") align 8 %35, ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr %1, ptr nonnull %i.j, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.43") align 8 %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %i.vg = load ptr, ptr %35, align 8, !tbaa !2249 ; 4 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !973
  store ptr %i.vh, ptr %4, align 8, !tbaa !973
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !973
  %i.vk = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  %i.vl = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i32 32, ptr %i.vl, align 8, !tbaa !918
  store i64 %i.ux, ptr %37, align 8, !tbaa !56
  %i.vm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.vk, ptr noundef nonnull align 8 dereferenceable(12) %37) #26
  %i.vn = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.vm) #26
  %i.vo = load i32, ptr %i.vl, align 8, !tbaa !918
  %i.vp = icmp ugt i32 %i.vo, 64
  br i1 %i.vp, label %bb.bz, label %_ZNSt6vectorIPN4llvm17CanonicalLoopInfoESaIS2_EED2Ev.exit

bb.bz:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit48
  %i.vq = load ptr, ptr %37, align 8, !tbaa !56   ; 2 uses
  %i.vr = icmp eq ptr %i.vq, null
  br i1 %i.vr, label %_ZNSt6vectorIPN4llvm17CanonicalLoopInfoESaIS2_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.vq) #30
  br label %_ZNSt6vectorIPN4llvm17CanonicalLoopInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm17CanonicalLoopInfoESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit48, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.vs = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull @.str.347, i64 23) #26
  store ptr %i.vs, ptr %i.m, align 8, !tbaa !396
  %i.vt = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull %i.m, i64 1, i32 noundef 0, i1 noundef zeroext true) #26
  store ptr %i.vt, ptr %i.l, align 8, !tbaa !396
  %i.vu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  %i.vv = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull @.str.357, i64 22) #26
  store ptr %i.vv, ptr %i.n, align 8, !tbaa !396
  %i.vw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.vn, ptr %i.vw, align 8, !tbaa !396
  %i.vx = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull %i.n, i64 2, i32 noundef 0, i1 noundef zeroext true) #26
  store ptr %i.vx, ptr %i.vu, align 8, !tbaa !396
  %i.vy = getelementptr i8, ptr %i.vj, i64 16
  %.val = load ptr, ptr %i.vy, align 8, !tbaa !1142
  call fastcc void @_ZL15addLoopMetadataPN4llvm17CanonicalLoopInfoENS_8ArrayRefIPNS_8MetadataEEE(ptr %.val, ptr nonnull %i.l, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  %i.vz = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !2252
  %i.wb = ptrtoint ptr %i.wa to i64
  %i.wc = ptrtoint ptr %i.vg to i64
  %i.wd = sub i64 %i.wb, %i.wc
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.wd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIPN4llvm17CanonicalLoopInfoESaIS2_EED2Ev.exit, %bb.bt, %_ZN4llvm11SmallVectorIPNS_8MetadataELj2EED2Ev.exit
  ret void
}

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3282
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3281
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3279
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !903
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !200
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3282
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !859
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !859
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !903, !noalias !3283 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3279, !noalias !3283 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !900, !noalias !3283 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !859    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !200
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !859
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !3280

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3281
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.842", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !900
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !903
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3279
  store i32 0, ptr %i.p, align 16, !tbaa !3282
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !580
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3281
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !580
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !580
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !200
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !200
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !200
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !903    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3279
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !900  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3279 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !903
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !900
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !859  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3288

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !859
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !200
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3289

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3290

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !900
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3282
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !3282
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !900
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3UseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load i64, ptr %1, align 8, !tbaa !512
  store i64 %i.h, ptr %i.g, align 8, !tbaa !512
  store ptr null, ptr %1, align 8, !tbaa !512
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.f, 3               ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %.idx.i  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.k = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.l = lshr exact i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.c, i64 %.idx.i
  %bound0 = icmp ult ptr %i.c, %i.j
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3                        ; 2 uses
  %i.o = getelementptr i8, ptr %i.c, i64 %i.n
  %i.p = getelementptr i8, ptr %i.i, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.q ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.i, i64 %i.q ; 4 uses
  %i.r = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !512, !alias.scope !3291
  %wide.load9 = load <2 x i64>, ptr %i.r, align 8, !tbaa !512, !alias.scope !3291
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !512, !alias.scope !3294, !noalias !3291
  store <2 x i64> %wide.load9, ptr %i.s, align 8, !tbaa !512, !alias.scope !3294, !noalias !3291
  %i.t = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !512, !alias.scope !3291
  store <2 x ptr> splat (ptr null), ptr %i.t, align 8, !tbaa !512, !alias.scope !3291
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !3296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.preheader11:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 3 uses
  %i.v = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !512
  store i64 %i.v, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !512
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !512
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.j
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3297

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i ], [ %i.j, %.lr.ph.i.i.preheader ]
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !512  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(241) %i.z) #26, !inline_history !3298
  br label %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm15OpenMPIRBuilder11OutlineInfoEEclEPS2_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.i, %i.y
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !576

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN4llvm15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS2_EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !426
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15OpenMPIRBuilder11OutlineInfoESt14default_deleteIS3_EELb0EE21takeAllocationForGrowEPS6_m.exit
end_hunk_7
begin_hunk_8_@_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6insertIPKS2_vEEPS2_S7_T_S8_:bb.a

bb.o:                                             ; preds = %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.p:                                             ; preds = %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit
  %i.bk = icmp eq i64 %i.l, 8
  br i1 %i.bk, label %bb.q, label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %2, align 8, !tbaa !396
  store ptr %i.bl, ptr %i.ak, align 8, !tbaa !396
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit
  %i.bm = trunc i64 %i.aa to i32
  %i.bn = add i32 %i.ah, %i.bm                    ; 2 uses
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !137
  %.not.i.i48 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bo
  %i.bq = sub nsw i64 0, %i.am
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 8 %i.ak, i64 %gepdiff, i1 false)
  %min.iters.check = icmp ult i64 %i.am, 14
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bs = add i64 %i.aj, %i.b
  %i.bt = add i64 %i.c, %i.k
  %i.bu = sub i64 %i.bt, %i.bs
  %diff.check = icmp ugt i64 %i.bu, -32
  br i1 %diff.check, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %i.bv = shl nsw i64 %n.vec, 3                   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ak, i64 %i.bv
  %i.bx = and i64 %i.am, 3
  %i.by = getelementptr i8, ptr %2, i64 %i.bv     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.bz ; 2 uses
  %next.gep74 = getelementptr i8, ptr %2, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep74, align 8, !tbaa !396
  %wide.load75 = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !396
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !396
  store <2 x ptr> %wide.load75, ptr %i.cb, align 8, !tbaa !396
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !3308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.preheader ], [ %i.bw, %middle.block ] ; 2 uses
  %.04057.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.preheader ], [ %i.bx, %middle.block ] ; 4 uses
  %.04256.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.by, %middle.block ] ; 2 uses
  %i.cd = add nsw i64 %.04057.ph, -1
  %xtraiter = and i64 %.04057.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader78, %.lr.ph.prol
  %.058.prol = phi ptr [ %i.cf, %.lr.ph.prol ], [ %.058.ph, %.lr.ph.preheader78 ] ; 2 uses
  %.04057.prol = phi i64 [ %i.ch, %.lr.ph.prol ], [ %.04057.ph, %.lr.ph.preheader78 ]
  %.04256.prol = phi ptr [ %i.cg, %.lr.ph.prol ], [ %.04256.ph, %.lr.ph.preheader78 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader78 ]
  %i.ce = load ptr, ptr %.04256.prol, align 8, !tbaa !396
  store ptr %i.ce, ptr %.058.prol, align 8, !tbaa !396
  %i.cf = getelementptr inbounds nuw i8, ptr %.058.prol, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.04256.prol, i64 8 ; 3 uses
  %i.ch = add i64 %.04057.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !3309

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader78
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader78 ], [ %i.cg, %.lr.ph.prol ]
  %.058.unr = phi ptr [ %.058.ph, %.lr.ph.preheader78 ], [ %i.cf, %.lr.ph.prol ]
  %.04057.unr = phi i64 [ %.04057.ph, %.lr.ph.preheader78 ], [ %i.ch, %.lr.ph.prol ]
  %.04256.unr = phi ptr [ %.04256.ph, %.lr.ph.preheader78 ], [ %i.cg, %.lr.ph.prol ]
  %i.ci = icmp ult i64 %i.cd, 7
  br i1 %i.ci, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.r
  %.042.lcssa = phi ptr [ %2, %bb.r ], [ %i.by, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.di, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.042.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cj = ptrtoint ptr %.042.lcssa to i64
  %i.ck = sub i64 %i.j, %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 8 %.042.lcssa, i64 %i.ck, i1 false)
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058 = phi ptr [ %i.dh, %.lr.ph ], [ %.058.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04057 = phi i64 [ %i.dj, %.lr.ph ], [ %.04057.unr, %.lr.ph.prol.loopexit ]
  %.04256 = phi ptr [ %i.di, %.lr.ph ], [ %.04256.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.cl = load ptr, ptr %.04256, align 8, !tbaa !396
  store ptr %i.cl, ptr %.058, align 8, !tbaa !396
  %i.cm = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.04256, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !396
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !396
  %i.cp = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.04256, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !396
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !396
  %i.cs = getelementptr inbounds nuw i8, ptr %.058, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.04256, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !396
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !396
  %i.cv = getelementptr inbounds nuw i8, ptr %.058, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %.04256, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !396
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !396
  %i.cy = getelementptr inbounds nuw i8, ptr %.058, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %.04256, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !396
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !396
  %i.db = getelementptr inbounds nuw i8, ptr %.058, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %.04256, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !396
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !396
  %i.de = getelementptr inbounds nuw i8, ptr %.058, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %.04256, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !396
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !396
  %i.dh = getelementptr inbounds nuw i8, ptr %.058, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %.04256, i64 64 ; 2 uses
  %i.dj = add i64 %.04057, -8                     ; 2 uses
  %.not45.7 = icmp eq i64 %i.dj, 0
  br i1 %.not45.7, label %._crit_edge, label %.lr.ph, !llvm.loop !3310

_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.s, %._crit_edge, %bb.q, %bb.p, %bb.o, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit ], [ %i.ak, %bb.q ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %._crit_edge ], [ %i.ak, %bb.s ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !137
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !137
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !137
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !137
  ret void
}

declare noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10BasicBlock20getUniquePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2338 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2341
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2342
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !200  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !573
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #26
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i:           ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !573
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %i.w = add i32 %.0.i3.i, -1
  %i.x = and i32 %i.w, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3311

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3312

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !2338 ; 2 uses
  %i.y = icmp eq i32 %.pr, 0
  br i1 %i.y, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !2341
  %i.aa = zext i32 %.pr to i64                    ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 6
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit, %bb.e
  ret void
}

declare void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

declare void @_ZN4llvm16TargetIRAnalysisC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN4llvm16TargetIRAnalysisC1ESt8functionIFNS_19TargetTransformInfoERKNS_8FunctionEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN4llvm16TargetIRAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::TargetTransformInfo") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm23ScalarEvolutionAnalysis3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::ScalarEvolution") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm21DominatorTreeAnalysis3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::DominatorTree") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm18AssumptionAnalysis3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::AssumptionCache") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm25OptimizationRemarkEmitterC1EPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

declare void @_ZN4llvm26gatherUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoERNS_25OptimizationRemarkEmitterEiSt8optionalIjESE_SD_IbESF_SF_SE_(ptr dead_on_unwind writable sret(%"struct.llvm::TargetTransformInfo::UnrollingPreferences") align 4, ptr noundef, ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64, i64, i16, i16, i16, i64) local_unnamed_addr #4

declare i64 @_ZN4llvm24gatherPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoESt8optionalIbES8_b(ptr noundef, ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef nonnull align 8 dereferenceable(8), i16, i16, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm11CodeMetrics22collectEphemeralValuesEPKNS_4LoopEPNS_15AssumptionCacheERNS_15SmallPtrSetImplIPKNS_5ValueEEE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #4

declare void @_ZN4llvm19UnrollCostEstimatorC1EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(17), i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 4 dereferenceable(70), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm15ScalarEvolutionD1Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN4llvm19TargetTransformInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef ptr @_ZN4llvm14TargetRegistry12lookupTargetERKNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm15MCTargetOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(282)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15MCTargetOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(282) dereferenceable(282) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3313 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3314 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !625 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !56
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3315

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !3313
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3316
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3313 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3314 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !625 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !56
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !3315

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !3313
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3316
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !625 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2086
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !200
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !818, !llvm.loop !3323

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3324
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3325
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3324
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2160
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2159
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !200
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3325
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2086
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2086
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !3326
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2159, !noalias !3328 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2160, !noalias !3328 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2156, !noalias !3328 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2086   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !200
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2086
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !3323

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3324
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.447", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2156
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2159
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2160
  store i32 0, ptr %i.p, align 16, !tbaa !3325
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3324   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !930 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store ptr %i.z, ptr %2, align 16, !tbaa !3324
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !580
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !930
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !200
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !200
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2088 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %bb.b
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #26, !inline_history !3333
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !2162

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2163

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2156 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !2159
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2159   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2160
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2156 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2160 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2159
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2156
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2086 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !3334

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2086
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !2088
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !2088
  store ptr null, ptr %i.av, align 8, !tbaa !2088
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !200
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3335

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3336

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2156
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3325
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3325
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !2156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2408, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !2408
  br i1 %i.c, label %bb.b, label %_ZN4llvm21TargetLibraryAnalysisD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(224) %i.d) #26
  br label %_ZN4llvm21TargetLibraryAnalysisD2Ev.exit

_ZN4llvm21TargetLibraryAnalysisD2Ev.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2408, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !2408
  br i1 %i.c, label %bb.b, label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(224) %i.d) #26, !inline_history !3337
  br label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit

_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.871") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_21TargetLibraryAnalysisENS0_17TargetLibraryInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %4 = alloca %"class.llvm::TargetLibraryInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetLibraryInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #26
  %i.b = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !3338 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !noalias !3338
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_21TargetLibraryAnalysisENS_17TargetLibraryInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !8, !noalias !3338
  store ptr %i.b, ptr %0, align 8, !tbaa !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.490, i64 55), i64 21 }
}

declare void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::TargetLibraryInfo") align 8, ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_21TargetLibraryAnalysisENS_17TargetLibraryInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_21TargetLibraryAnalysisENS_17TargetLibraryInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EE10invalidateERS2_RKNS_17PreservedAnalysesERS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3343 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3346
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3343 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3346
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2:   ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3347 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !3350
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3351
  %i.v = zext i32 %i.q to i64
  %i.w = add nuw nsw i64 %i.v, 31
  %i.x = lshr i64 %i.w, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !200  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.aa = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.z, %.lr.ph.i.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ac = or disjoint i32 %i.ab, %i.aa
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !625 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !56
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #30
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.al = add i32 %.0.i3.i.i, -1
  %i.am = and i32 %i.al, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !3352

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.x
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3353

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.p, align 4, !tbaa !3347 ; 2 uses
  %i.an = icmp eq i32 %.pr.i, 0
  br i1 %i.an, label %_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !3350
  %i.ap = zext i32 %.pr.i to i64                  ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = add nuw nsw i64 %i.ap, 31
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741820
  %i.au = add nuw nsw i64 %i.at, %i.aq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ao, i64 noundef %i.au, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit

_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_18AssumptionAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_18AssumptionAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.871") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_18AssumptionAnalysisENS0_15AssumptionCacheENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %4 = alloca %"class.std::unique_ptr.1114", align 8 ; 5 uses
  %5 = alloca %"class.llvm::AssumptionCache", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4llvm18AssumptionAnalysis3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::AssumptionCache") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #26
  call void @_ZSt11make_uniqueIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_18AssumptionAnalysisENS0_15AssumptionCacheENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEEJS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1114") align 8 %4, ptr noundef nonnull align 8 dereferenceable(153) %5)
  %i.b = load ptr, ptr %4, align 8, !tbaa !3354
  store ptr null, ptr %4, align 8, !tbaa !3354
  store ptr %i.b, ptr %0, align 8, !tbaa !3341
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 148 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2448 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_18AssumptionAnalysisENS0_15AssumptionCacheENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !2451
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2452
  %i.j = zext i32 %i.e to i64
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !200  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.n, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.o = shl i32 %indvars.iv.tr.i, 5
  br label %bb.a

bb.a:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.aj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.p = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.q = or disjoint i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.g, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.x = zext i32 %i.w to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.x, 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i ], [ %i.y, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !573
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %i.z) #26
  br label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i

_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.not.i.i.i.i3 = icmp eq ptr %i.u, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2453

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %bb.a
  %i.ac = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.u, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.ac) #26
  br label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i: ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !573
  %.not.i.i2.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i2.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i.i
  %i.ai = add i32 %.0.i5.i, -1
  %i.aj = and i32 %i.ai, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.a, !llvm.loop !2454

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit, label %.lr.ph9.i, !llvm.loop !2455

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2448 ; 2 uses
  %i.ak = icmp eq i32 %.pre, 0
  br i1 %i.ak, label %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !2451
  %i.am = zext i32 %.pre to i64                   ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 88
  %i.ao = add nuw nsw i64 %i.am, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.al, i64 noundef %i.ar, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i

_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_18AssumptionAnalysisENS0_15AssumptionCacheENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i
  %i.aw = zext i32 %i.av to i64
  %.idx.i.i = mul nuw nsw i64 %i.aw, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i ], [ %i.ax, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !573
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #26
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i:         ; preds = %bb.f, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.at, %i.ay
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2456

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.as, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i
  %i.bb = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.at, %_ZN4llvm8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS1_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4llvm15AssumptionCacheD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.bb) #26
  br label %_ZN4llvm15AssumptionCacheD2Ev.exit

_ZN4llvm15AssumptionCacheD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_8FunctionENS_18AssumptionAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.494, i64 55), i64 18 }
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_uniqueIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_18AssumptionAnalysisENS0_15AssumptionCacheENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEEJS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.llvm::AssumptionCache", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #27 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(153) %2, ptr noundef nonnull align 8 dereferenceable(153) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 4, ptr %i.e, align 4, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN4llvm15AssumptionCacheC2EOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6WeakVHEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.h) ; 0 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !137
  %i.j = icmp eq i32 %.pre, 0
  br label %_ZN4llvm15AssumptionCacheC2EOS0_.exit

_ZN4llvm15AssumptionCacheC2EOS0_.exit:            ; preds = %bb.a, %bb.b
  %.not.i.i.i.i = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3356 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !3356
  store ptr null, ptr %i.l, align 8, !tbaa !3356
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !930  ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !930
  store ptr null, ptr %i.o, align 8, !tbaa !930
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !200  ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !200
  store i32 0, ptr %i.r, align 8, !tbaa !200
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !200  ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !200
  store i32 0, ptr %i.u, align 4, !tbaa !200
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.y = load i8, ptr %i.x, align 8, !tbaa !3357, !range !18, !noundef !19 ; 2 uses
  store i8 %i.y, ptr %i.w, align 8, !tbaa !3357
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_18AssumptionAnalysisENS_15AssumptionCacheENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(153) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %2, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_27PassInstrumentationAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_27PassInstrumentationAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.871") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_27PassInstrumentationAnalysisENS0_19PassInstrumentationENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3385
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !3388 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_27PassInstrumentationAnalysisENS_19PassInstrumentationENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.c, align 8, !tbaa !8, !noalias !3388
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !3391, !noalias !3388
  store ptr %i.c, ptr %0, align 8, !tbaa !3341
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_8FunctionENS_27PassInstrumentationAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.498, i64 55), i64 27 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail21AnalysisResultConceptINS_8FunctionENS_15AnalysisManagerIS2_JEE11InvalidatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_27PassInstrumentationAnalysisENS_19PassInstrumentationENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_27PassInstrumentationAnalysisENS_19PassInstrumentationENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EE10invalidateERS2_RKNS_17PreservedAnalysesERS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFN4llvm19TargetTransformInfoERKNS0_8FunctionEEZL28computeHeuristicUnrollFactorPNS0_17CanonicalLoopInfoEE3$_0E9_M_invokeERKSt9_Any_dataS4_"(ptr dead_on_unwind noalias writable sret(%"class.llvm::TargetTransformInfo") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(140) %2) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !3392
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !2401 ; 2 uses
  %i.a = load ptr, ptr %.val.val, align 8, !tbaa !8, !noalias !3394
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !noalias !3394
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.llvm::TargetTransformInfo") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1728) %.val.val, ptr noundef nonnull align 8 dereferenceable(140) %2) #26, !inline_history !3401
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN4llvm19TargetTransformInfoERKNS0_8FunctionEEZL28computeHeuristicUnrollFactorPNS0_17CanonicalLoopInfoEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !580
  br label %"_ZNSt14_Function_base13_Base_managerIZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !3402
  br label %"_ZNSt14_Function_base13_Base_managerIZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !2416
  br label %"_ZNSt14_Function_base13_Base_managerIZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL28computeHeuristicUnrollFactorPN4llvm17CanonicalLoopInfoEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm16TargetIRAnalysisD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !3404 ; 0 uses
  br label %_ZN4llvm16TargetIRAnalysisD2Ev.exit

_ZN4llvm16TargetIRAnalysisD2Ev.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !3405 ; 0 uses
  br label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit

_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.871") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_16TargetIRAnalysisENS0_19TargetTransformInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %4 = alloca %"class.llvm::TargetTransformInfo", align 8 ; 5 uses
  %5 = alloca %"class.llvm::TargetTransformInfo", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4llvm16TargetIRAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetTransformInfo") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !3406 ; 3 uses
  call void @_ZN4llvm19TargetTransformInfoC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #26, !noalias !3406
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_16TargetIRAnalysisENS_19TargetTransformInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !8, !noalias !3406
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4llvm19TargetTransformInfoC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4) #26, !noalias !3406
  call void @_ZN4llvm19TargetTransformInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26, !noalias !3406
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.b, ptr %0, align 8, !tbaa !3341
  call void @_ZN4llvm19TargetTransformInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_8FunctionENS_16TargetIRAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.499, i64 55), i64 16 }
}

declare void @_ZN4llvm19TargetTransformInfoC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_16TargetIRAnalysisENS_19TargetTransformInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_16TargetIRAnalysisENS_19TargetTransformInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm19TargetTransformInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_16TargetIRAnalysisENS_19TargetTransformInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_16TargetIRAnalysisENS_19TargetTransformInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm19TargetTransformInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #26, !inline_history !3409
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_16TargetIRAnalysisENS_19TargetTransformInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EE10invalidateERS2_RKNS_17PreservedAnalysesERS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2448 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS5_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph9.preheader

.lr.ph9.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2451
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2452
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph9.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !200  ; 2 uses
  %.not11.i4 = icmp eq i32 %i.k, 0
  br i1 %.not11.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph9
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit
  %.0.i5 = phi i32 [ %i.k, %.lr.ph ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !573
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %i.w) #26
  br label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i

_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2453

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %bb.b
  %i.z = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  tail call void @free(ptr noundef %i.z) #26
  br label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !573
  %.not.i.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i2.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj1EED2Ev.exit.i, %bb.e
  %i.af = add i32 %.0.i5, -1
  %i.ag = and i32 %i.af, %.0.i5                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2454

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS5_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph9, !llvm.loop !2455

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS5_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZN4llvm21SymbolTableListTraitsINS_10BasicBlockEJEE13addNodeToListEPS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4llvm15OpenMPIRBuilder16createTargetDataERKNS0_19LocationDescriptionENS_13IRBuilderBase11InsertPointES5_NS_8ArrayRefIPNS_10BasicBlockEEEPNS_5ValueESB_RNS0_14TargetDataInfoENS_12function_refIFRNS0_10MapInfosTyES5_EEENSE_IFNS_8ExpectedIPNS_8FunctionEEEjEEEPNS_3omp15RuntimeFunctionENSE_IFNSJ_IS5_EES5_NS0_9BodyGenTyEEEENSE_IFvjSB_EEESB_ENK3$_2clES5_S5_S9_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"struct.llvm::OpenMPIRBuilder::TargetDataRTArgs", align 16 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [9 x ptr], align 16               ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2629 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3410, !nonnull !19, !align !94
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3411
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load i32, ptr %i.i, align 8, !tbaa !137
  %.not.i = icmp ne i32 %i.j, 0
  %i.k = load ptr, ptr %1, align 8, !tbaa !3412, !nonnull !19, !align !94 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.m = zext i1 %.not.i to i8
  store i8 %i.m, ptr %i.l, align 8, !tbaa !2731
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 584 ; 2 uses
  call void @_ZN4llvm15OpenMPIRBuilder28emitOffloadingArraysArgumentERNS_13IRBuilderBaseERNS0_16TargetDataRTArgsERNS0_14TargetDataInfoEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(210) %i.k, i1 noundef zeroext true)
  %i.o = load ptr, ptr %1, align 8, !tbaa !3412, !nonnull !19, !align !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  %i.q = load i32, ptr %i.p, align 4, !tbaa !2696
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93, !nonnull !19, !align !94
  %i.t = tail call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #26
  %i.u = zext i32 %i.q to i64
  %i.v = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.t, i64 noundef %i.u, i1 noundef zeroext false, i1 noundef zeroext false) #26
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3413, !nonnull !19, !align !94
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !199  ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3414, !nonnull !19, !align !94 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.af = call noundef ptr @_ZN4llvm15OpenMPIRBuilder20getOrCreateSrcLocStrENS_8DebugLocERjPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(1864) %i.d, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %i.ae)
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !200
  %i.ah = tail call noundef ptr @_ZN4llvm15OpenMPIRBuilder16getOrCreateIdentEPNS_8ConstantEjNS_3omp9IdentFlagEj(ptr noundef nonnull align 8 dereferenceable(1864) %i.d, ptr noundef %i.af, i32 noundef %i.ag, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !3413, !nonnull !19, !align !94
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = phi ptr [ %i.ah, %bb.b ], [ %i.y, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.aj, ptr %i.b, align 16, !tbaa !199
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3415, !nonnull !19, !align !94
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !199
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !199
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.v, ptr %i.ao, align 16, !tbaa !199
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aq = load <2 x ptr>, ptr %3, align 16, !tbaa !199
  store <2 x ptr> %i.aq, ptr %i.ap, align 8, !tbaa !199
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load <2 x ptr>, ptr %i.as, align 16, !tbaa !199
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !199
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !199
  %i.ax = shufflevector <2 x ptr> %i.aw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !199
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !245, !nonnull !19, !align !94
  %i.ba = tail call { ptr, ptr } @_ZN4llvm15OpenMPIRBuilder26getOrCreateRuntimeFunctionERNS_6ModuleENS_3omp15RuntimeFunctionE(ptr noundef nonnull align 8 dereferenceable(1864) %i.d, ptr noundef nonnull align 8 dereferenceable(1288) %i.az, i32 noundef 149)
  %i.bb = extractvalue { ptr, ptr } %i.ba, 1      ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !424
  %i.bd = icmp eq i8 %i.bc, 14
  %spec.select.i.i.i = select i1 %i.bd, ptr %i.bb, ptr null ; 2 uses
  %.not.i4 = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i4, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !683
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %bb.c, %bb.d
  %i.bg = phi ptr [ %i.bf, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.bh, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.bi, align 1, !tbaa !55
  store ptr @.str.11, ptr %2, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !56
  %i.bk = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef %i.bg, ptr noundef %spec.select.i.i.i, ptr nonnull %i.b, i64 9, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 564
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !181
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !394
  %i.bp = and i16 %i.bo, -4093
  %.tr.i.i.i.i.i = trunc i32 %i.bm to i16
  %i.bq = shl i16 %.tr.i.i.i.i.i, 2
  %i.br = and i16 %i.bq, 4092
  %i.bs = or disjoint i16 %i.br, %i.bp
  store i16 %i.bs, ptr %i.bn, align 2, !tbaa !394
  store ptr null, ptr %0, align 8, !tbaa !410, !alias.scope !3416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3660
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3605
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3593
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !200
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3661
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !199
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !3662
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.bj, align 8, !tbaa !3664
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3593, !noalias !3666 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3605, !noalias !3666 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3606, !noalias !3666 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !200
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !199
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !3659

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3660
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1268", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3606
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3593
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3605
  store i32 0, ptr %i.p, align 16, !tbaa !3661
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !580
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3660
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !580
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !580
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !200
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !200
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !200
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5ValueESt5tupleIJS2_jEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_5ValueESt5tupleIJS2_jEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5ValueESt5tupleIJS2_jEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3593   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3605
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3606 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3605 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3593
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3606
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3671

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !199
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !200
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !200
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !199
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !199
  %i.ba = shl nuw i32 1, %.lcssa.i
  %i.bb = load i32, ptr %i.as, align 4, !tbaa !200
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.as, align 4, !tbaa !200
  %i.bd = add i32 %.0.i14, -1
  %i.be = and i32 %i.bd, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3672

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS3_jEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3673

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3606
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !3661
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !3661
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_5ValueESt5tupleIJS2_jEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = mul nuw nsw i64 %i.bk, 24
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bp, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !3606
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5ValueESt5tupleIJS2_jEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5ValueESt5tupleIJS2_jEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueESt5tupleIJS6_jEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueES3_ELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !137
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !137
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !137
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !137
  ret void
}

declare noundef zeroext i1 @_ZN4llvm37convertUsersOfConstantsToInstructionsENS_8ArrayRefIPNS_8ConstantEEEPNS_8FunctionEbb(ptr, i64, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !3653, !noalias !3674 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3679, !noalias !3674 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3650, !noalias !3674 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !2173   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !200
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !817

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2173
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !200
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !818, !llvm.loop !3680

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3681
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3682
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3681
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3679
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3653
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !200
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3682
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2173
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2173
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3653, !noalias !3683 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3679, !noalias !3683 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3650, !noalias !3683 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2173   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !200
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2173
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !3680

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3681
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1308", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3650
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3653
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3679
  store i32 0, ptr %i.p, align 16, !tbaa !3682
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !580
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3681
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !580
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !580
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !200
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !200
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !200
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3653   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3679
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3650 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3679 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3653
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3650
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2173 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3688

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2173
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !200
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3689

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3690

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3650
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3682
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !3682
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !3650
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4UserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4UserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !137
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !137
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !137
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !137
  ret void
}

declare noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction16dropOneDbgRecordEPNS_9DbgRecordE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm9DIBuilderC1ERNS_6ModuleEbPNS_13DICompileUnitE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(1288), i1 noundef zeroext, ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN4llvm9DIBuilder19createQualifiedTypeEjPNS_6DITypeE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9DIBuilder23createParameterVariableEPNS_7DIScopeENS_9StringRefEjPNS_6DIFileEjPNS_6DITypeEbNS_6DINode7DIFlagsENS_24MDTupleTypedArrayWrapperIS8_EE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr, i64, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i64) local_unnamed_addr #4

declare i64 @_ZN4llvm9DIBuilder13insertDeclareEPNS_5ValueEPNS_15DILocalVariableEPNS_12DIExpressionEPKNS_10DILocationEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9DIBuilder16createExpressionENS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(384), ptr, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9DIBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.h, %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i ], [ %i.g, %.lr.ph.i.preheader.i ]
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2354 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %i.i) #26
  br label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i

_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3691

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %bb.a
  %i.j = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i
  tail call void @free(ptr noundef %i.j) #26
  br label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i32, ptr %i.p, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = mul nuw nsw i64 %i.r, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -40
  %i.v = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = icmp eq ptr %i.w, %.05.i.i.i
  br i1 %i.x, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.w) #26
  br label %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -20
end_hunk_11
begin_hunk_12_@_ZN4llvm9DbgMarker17getDbgRecordRangeEv
declare { ptr, ptr } @_ZN4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZNK4llvm17DbgVariableRecord12location_opsEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.1406") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZN4llvm17DbgVariableRecord25replaceVariableLocationOpEPNS_5ValueES2_b(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm17DbgRecordParamRefINS_15DILocalVariableEE3getEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4llvm17DbgRecordParamRefINS_15DILocalVariableEEC1EPKS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1330", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #26 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !56
  br label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !3701
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !56
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !56
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #26
  br label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !200 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3613 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !200 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !200 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3704

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !3613
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3613
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !3613
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !200
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3705

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !3706

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !56  ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #26
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_15DILocalVariableES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_15DILocalVariableES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare noundef ptr @_ZN4llvm15DILocalVariable7getImplERNS_11LLVMContextEPNS_8MetadataEPNS_8MDStringES4_jS4_jNS_6DINode7DIFlagsEjS4_NS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm17DbgVariableRecord25getNumVariableLocationOpsEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZN4llvm17DbgVariableRecord15setKillLocationEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm17DbgVariableRecord21getVariableLocationOpEj(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9DbgRecord9getParentEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9DbgRecord11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #4

declare void @_ZN4llvm10BasicBlock21insertDbgRecordBeforeEPNS_9DbgRecordENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm17DbgVariableRecord5cloneEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17DbgVariableRecordELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !137
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !137
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !137
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !137
  ret void
}

declare noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3707 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3710
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3711
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !200  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i ]
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2354 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(8) %i.x) #26
  br label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i

_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3691

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i, %bb.b
  %i.y = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i
  tail call void @free(ptr noundef %i.y) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3712

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3713

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !3707 ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !3710
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 56
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZL14emitTargetCallRN4llvm15OpenMPIRBuilderERNS_13IRBuilderBaseENS2_11InsertPointENS_8ArrayRefIPNS_10BasicBlockEEERNS0_14TargetDataInfoERKNS0_24TargetKernelDefaultAttrsERKNS0_24TargetKernelRuntimeAttrsEPNS_5ValueEPNS_8FunctionEPNS_8ConstantERNS_15SmallVectorImplISI_EENS_12function_refIFRNS0_10MapInfosTyES4_EEENSQ_IFNS_8ExpectedISK_EEjEEERKNS0_16DependenciesInfoEbSI_NS_3omp30OMPDynGroupprivateFallbackTypeEENK3$_2clES4_S4_S8_"(ptr dead_on_unwind noalias nofree writable align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef readonly byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::OpenMPIRBuilder::LocationDescription", align 16 ; 6 uses
  %4 = alloca %"struct.llvm::OpenMPIRBuilder::TargetDataRTArgs", align 8 ; 3 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::function_ref.576", align 8 ; 5 uses
  %13 = alloca %"class.llvm::IRBuilderBase::InsertPoint", align 16 ; 6 uses
  %14 = alloca %"class.llvm::IRBuilderBase::InsertPoint", align 16 ; 5 uses
  %15 = alloca %"class.llvm::SmallVector.617", align 8 ; 10 uses
  %16 = alloca %"class.llvm::SmallVector.617", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %.sroa.411 = alloca [60 x i8], align 4          ; 4 uses
  %18 = alloca %"class.llvm::Expected.325", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3714, !nonnull !19
  %i.d = load i8, ptr %i.c, align 1, !tbaa !534, !range !18, !noundef !19
  %i.e = load ptr, ptr %1, align 8, !tbaa !3716, !nonnull !19, !align !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  store i8 %i.d, ptr %i.f, align 1, !tbaa !3443
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3717, !nonnull !19, !align !94 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3718, !nonnull !19, !align !94 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !3719
  %.sroa.22.8.insert.ext.i = and i64 %.sroa.2.0.copyload.i.i, 65535
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !noalias !3719
  store <2 x ptr> %i.l, ptr %14, align 16
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %.sroa.22.8.insert.ext.i, ptr %.sroa.354.0..sroa_idx, align 16
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !3423
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !3425
  %i.p = tail call noundef nonnull align 8 dereferenceable(952) ptr %i.m(i64 noundef %i.o, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %14) #26, !inline_history !3426
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3722, !nonnull !19, !align !94 ; 3 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !3718, !nonnull !19, !align !94 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.2.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.2.0.copyload.i.i29 = load i64, ptr %.sroa.2.0..sroa_idx.i.i28, align 8, !noalias !3723
  %.sroa.22.8.insert.ext.i30 = and i64 %.sroa.2.0.copyload.i.i29, 65535
  %i.v = load ptr, ptr %1, align 8, !tbaa !3716, !nonnull !19, !align !94 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3726, !nonnull !19, !align !94 ; 2 uses
  %.sroa.057.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !580
  %.sroa.258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.258.0.copyload = load i64, ptr %.sroa.258.0..sroa_idx, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr null, ptr %12, align 8
  %i.y = load <2 x ptr>, ptr %i.u, align 8, !noalias !3723
  store <2 x ptr> %i.y, ptr %13, align 16
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %.sroa.22.8.insert.ext.i30, ptr %.sroa.351.0..sroa_idx, align 16
  tail call void @_ZN4llvm15OpenMPIRBuilder20emitOffloadingArraysENS_13IRBuilderBase11InsertPointES2_RNS0_10MapInfosTyERNS0_14TargetDataInfoENS_12function_refIFNS_8ExpectedIPNS_8FunctionEEEjEEEbNS7_IFvjPNS_5ValueEEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1864) %i.s, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %2, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %13, ptr noundef nonnull readonly align 8 dereferenceable(952) %i.p, ptr noundef nonnull align 8 dereferenceable(210) %i.v, ptr %.sroa.057.0.copyload, i64 %.sroa.258.0.copyload, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::function_ref.576") align 8 %12)
  %i.z = load ptr, ptr %0, align 8, !tbaa !410, !alias.scope !3727
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm15OpenMPIRBuilder27emitOffloadingArraysAndArgsENS_13IRBuilderBase11InsertPointES2_RNS0_14TargetDataInfoERNS0_16TargetDataRTArgsERNS0_10MapInfosTyENS_12function_refIFNS_8ExpectedIPNS_8FunctionEEEjEEEbbNS9_IFvjPNS_5ValueEEEE.exit.thread

_ZN4llvm15OpenMPIRBuilder27emitOffloadingArraysAndArgsENS_13IRBuilderBase11InsertPointES2_RNS0_14TargetDataInfoERNS0_16TargetDataRTArgsERNS0_10MapInfosTyENS_12function_refIFNS_8ExpectedIPNS_8FunctionEEEjEEEbbNS9_IFvjPNS_5ValueEEEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 584
  call void @_ZN4llvm15OpenMPIRBuilder28emitOffloadingArraysArgumentERNS_13IRBuilderBaseERNS0_16TargetDataRTArgsERNS0_14TargetDataInfoEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(210) %i.v, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.ab, ptr %15, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 3, ptr %i.ad, align 4, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3730, !nonnull !19, !align !94 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3731, !nonnull !19, !align !94 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !21, !noalias !3732 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !137, !noalias !3737 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %.idx = shl nuw nsw i64 %i.am, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %.not9395 = icmp eq i32 %i.al, 0
  br i1 %.not9395, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !21, !noalias !3732
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !3731
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm5ErrorD2Ev.exit
  %i.ap = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ai, %_ZN4llvm5ErrorD2Ev.exit ] ; 5 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !3718, !nonnull !19, !align !94 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ar, ptr %16, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i32 0, ptr %i.as, align 8, !tbaa !137
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.bg = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bh = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bi = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24                ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = lshr i64 %i.bm, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !200
  %i.bt = or i32 %i.bp, %i.bs
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !200
  %i.bu = load i32, ptr %i.az, align 8, !tbaa !3862
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.az, align 8, !tbaa !3862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr null, ptr %i.bw, align 8, !tbaa !661
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.bi, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.ai, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !670, !noalias !3863 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3859, !noalias !3863 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !669, !noalias !3863 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !676    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !426  ; 2 uses
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = shl i64 %i.l, 32
  %i.s = and i64 %i.q, 4294967295
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.g, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !200
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ar, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.ap, %bb.c ], [ %i.y, %bb.b ]
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !676
  %i.aj = icmp eq ptr %i.h, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.n, %i.al
  %i.an = select i1 %i.aj, i1 %i.am, i1 false     ; 3 uses
  br i1 %i.an, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.ao = add nuw i32 %.024, 1
  %i.ap = and i32 %i.ao, %i.g                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = lshr i64 %i.aq, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !200
  %i.av = and i32 %i.ap, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !3860

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ], [ %i.ar, %bb.c ], [ %i.ah, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.an, %bb.c ], [ %i.an, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3861
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !669
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !670
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3859
  store i32 0, ptr %i.p, align 16, !tbaa !3862
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !580
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3861
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !580
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !580
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !200
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !200
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !200
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPNS_8ConstantEmES3_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapISt4pairIPNS_8ConstantEmES3_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S3_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_8ConstantEmES3_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !670
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3859
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !669  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3859 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !670
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !669
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !676
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !426
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = shl i64 %i.z, 32
  %i.ag = and i64 %i.ae, 4294967295
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = mul i64 %i.ah, -4658895280553007687     ; 2 uses
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.k, %i.al                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5                       ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !200
  %i.ar = and i32 %i.am, 31                       ; 2 uses
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.av, %.lr.ph.i ], [ %i.am, %bb.b ]
  %i.au = add i32 %.014.i, 1
  %i.av = and i32 %i.au, %i.k                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !200
  %i.ba = and i32 %i.av, 31                       ; 2 uses
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3868

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.an, %bb.b ], [ %i.aw, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !661
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !661
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !200
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !200
  %i.bl = add i32 %.0.i17, -1
  %i.bm = and i32 %i.bl, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3869

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEEES5_S4_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !3870

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !669
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !3862
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !3862
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapISt4pairIPNS_8ConstantEmES3_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !670
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 24
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !669
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPNS_8ConstantEmES3_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S3_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPNS_8ConstantEmES3_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_8ConstantEmES7_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S7_EEEES8_S7_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !689
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #26
  %i.e = load ptr, ptr %0, align 8, !tbaa !687
  %i.f = load i64, ptr %i.a, align 8, !tbaa !689
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !689
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !689
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_15OpenMPIRBuilder16FinalizationInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15OpenMPIRBuilder16FinalizationInfoELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !408
  store ptr %i.l, ptr %i.j, align 8, !tbaa !408
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 16, i1 false), !tbaa.struct !765
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !10
  store ptr %i.q, ptr %i.p, align 8, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15OpenMPIRBuilder16FinalizationInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3871

_ZN4llvm23SmallVectorTemplateBaseINS_15OpenMPIRBuilder16FinalizationInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm15OpenMPIRBuilder16FinalizationInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15OpenMPIRBuilder16FinalizationInfoELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15OpenMPIRBuilder16FinalizationInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.t = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.t, 48
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.v, %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit.i.i ], [ %i.u, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.z = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef 3) #26, !inline_history !3872 ; 0 uses
  br label %_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit.i.i

_ZN4llvm15OpenMPIRBuilder16FinalizationInfoD2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.v
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3940
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3947
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !816
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !555
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !200
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3940
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !199
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !199
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !555, !noalias !3948 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816, !noalias !3948 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !554, !noalias !3948 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !200
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !199
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !3946

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3947
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.270", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !554
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !555
  store ptr %i.y, ptr %i.q, align 8, !tbaa !816
  store i32 0, ptr %i.p, align 16, !tbaa !3940
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !580
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3947
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !580
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !580
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !200
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !200
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !200
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !555    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !554  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !816  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !555
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !554
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3953

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !199
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !200
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3954

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3955

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !554
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3940
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !3940
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !554
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm8FunctionEEZNS0_15OpenMPIRBuilder14createTaskloopERKNS4_19LocationDescriptionENS0_13IRBuilderBase11InsertPointENS0_8ArrayRefIPNS0_10BasicBlockEEENS0_12function_refIFNS0_5ErrorES9_S9_SD_EEENSE_IFNS0_8ExpectedIPNS0_17CanonicalLoopInfoEEEvEEEPNS0_5ValueESP_SP_bSP_SP_biSP_bSP_mNSE_IFNSI_IS9_EES9_S9_SP_SP_EEESP_E3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %5 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = alloca [2 x ptr], align 8                ; 5 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %30 = alloca %"class.std::optional.628", align 8 ; 4 uses
  %i.c = alloca [6 x ptr], align 8                ; 9 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %33 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %i.d = alloca [2 x ptr], align 8                ; 6 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.e = alloca [2 x ptr], align 8                ; 6 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.f = alloca [2 x ptr], align 8                ; 6 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.g = alloca [11 x ptr], align 16              ; 14 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.h = alloca [2 x ptr], align 8                ; 5 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %43 = alloca %class.anon.1545, align 8          ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %49 = alloca %"class.llvm::SmallVector.475", align 8 ; 10 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !580   ; 23 uses
  %i.i = load ptr, ptr %.val, align 8, !tbaa !1007 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !758
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !860  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 584 ; 32 uses
  %i.r = tail call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %i.p) #26 ; 2 uses
  %.fca.0.extract1.i.i.i.i = extractvalue { ptr, i64 } %i.r, 0 ; 4 uses
  %.fca.1.extract2.i.i.i.i = extractvalue { ptr, i64 } %i.r, 1
  %.not.i.i.i.i.i = icmp eq ptr %.fca.0.extract1.i.i.i.i, null
  %i.s = getelementptr inbounds i8, ptr %.fca.0.extract1.i.i.i.i, i64 -24
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract1.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 592 ; 8 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 600 ; 19 uses
  store ptr %.fca.0.extract1.i.i.i.i, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 608 ; 19 uses
  %i.x = trunc i64 %.fca.1.extract2.i.i.i.i to i16
  %.sroa.4.0.extract.trunc.i.i.i.i = select i1 %.not.i.i.i.i.i, i16 0, i16 %i.x
  store i16 %.sroa.4.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s) #26
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  store i64 %i.z, ptr %i.q, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1012 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 616 ; 21 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93, !nonnull !19, !align !94
  %i.ae = tail call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !55
  store ptr @.str.521, ptr %23, align 8, !tbaa !56
  store i8 3, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !192
  %i.aj = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #28
  %i.ak = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #28
  %i.al = icmp ugt i32 %i.aj, %i.ak
  %i.am = select i1 %i.al, i32 39, i32 41
  %i.an = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.q, i32 noundef %i.am, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1013 ; 2 uses
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !93, !nonnull !19, !align !94
  %i.ar = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !4066

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4067
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #26 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !56
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4074
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !56
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !56
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #26
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !200 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !199 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !200 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !200 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !4075

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !199
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !199
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !200
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4076

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !4077

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !56  ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #26
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueES6_Lj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNS_5ErrorENS_13IRBuilderBase11InsertPointES3_NS_8ArrayRefIPNS_10BasicBlockEEEEE11callback_fnIZNS_15OpenMPIRBuilder29emitScanBasedDirectiveDeclsIRES3_NS4_IPNS_5ValueEEENS4_IPNS_4TypeEEEPNS_8ScanInfoEE3$_1EES1_lS3_S3_S7_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, i64 noundef %1, ptr nofree noundef readonly byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 captures(none) %3, ptr nofree readnone captures(none) %4, i64 %5) #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4078)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1805, !noalias !4078 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.03.0.copyload, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 592 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.03.0.copyload, ptr %i.d, align 8, !tbaa !34, !noalias !4078
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store ptr %.sroa.2.0.copyload, ptr %i.e, align 8, !noalias !4078
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %.sroa.45.0.extract.trunc.i.i.i = trunc i64 %.sroa.3.0.copyload to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !4078
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 48
  %.not.i.i.i = icmp eq ptr %.sroa.2.0.copyload, %i.f
  br i1 %.not.i.i.i, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.sroa.2.0.copyload, i64 -24
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g) #26, !noalias !4078
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32, !noalias !4078
  store i64 %i.i, ptr %i.c, align 8, !tbaa !32, !noalias !4078
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.d, i8 0, i64 18, i1 false), !noalias !4078
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !4081, !noalias !4078, !nonnull !19, !align !94
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1804, !noalias !4078
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2012, !noalias !4078 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 616 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93, !noalias !4078, !nonnull !19, !align !94
  %i.q = tail call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #26, !noalias !4078
  %i.r = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.q, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #26, !noalias !4078 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !4078
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i16 257, ptr %i.s, align 8, !noalias !4078
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155, !noalias !4078, !nonnull !19, !align !94 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8, !noalias !4078
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4078
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef 14, ptr noundef %i.n, ptr noundef %i.r, i1 noundef zeroext false, i1 noundef zeroext false) #26, !noalias !4078, !inline_history !4082 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i.i, label %bb.e, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

bb.e:                                             ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !4078
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.z, align 8, !tbaa !52, !noalias !4078
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !55, !noalias !4078
  %i.ab = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef %i.n, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr null, i64 0) #26, !noalias !4078 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !135, !noalias !4078, !nonnull !19, !align !94 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !4078
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !4078
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !8, !noalias !4078
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !4078
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #26, !noalias !4078, !inline_history !4083
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef %i.ab) #26, !noalias !4078
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !4078
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.e, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i
  %.1.i.i = phi ptr [ %i.y, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !4078
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4084, !noalias !4078, !nonnull !19, !align !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !201, !noalias !4078
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %"_ZZN4llvm15OpenMPIRBuilder29emitScanBasedDirectiveDeclsIRENS_13IRBuilderBase11InsertPointENS_8ArrayRefIPNS_5ValueEEENS3_IPNS_4TypeEEEPNS_8ScanInfoEENK3$_1clES2_S2_NS3_IPNS_10BasicBlockEEE.exit", label %.lr.ph.i

end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ar = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ar), !inline_history !4212
  %i.as = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !4212 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4211
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2342
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2341
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.at = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.au = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.av = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 9 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 6                 ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = lshr i64 %i.az, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !200
  %i.bg = or i32 %i.bc, %i.bf
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !200
  %i.bh = load i32, ptr %i.am, align 8, !tbaa !2343
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.am, align 8, !tbaa !2343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i, 6
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !568
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !573 ; 2 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !573
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.br = inttoptr i64 %i.bq to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef %i.br) #26, !inline_history !4213
  br label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit

_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %i.av, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2323
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !2323
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 6, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit: ; preds = %.lr.ph.i, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit ], [ %i.y, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2341, !noalias !4214 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2342, !noalias !4214 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2338, !noalias !4214 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !573  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.g, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !200
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ae, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ac, %bb.c ], [ %i.o, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !573
  %i.aa = icmp eq ptr %i.i, %i.z                  ; 3 uses
  br i1 %i.aa, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.ab = add nuw i32 %.024, 1
  %i.ac = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !200
  %i.ai = and i32 %i.ac, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !4210

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ae, %bb.c ], [ %i.x, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.aa, %bb.c ], [ %i.aa, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4211
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.512", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2338
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2341
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2342
  store i32 0, ptr %i.p, align 16, !tbaa !2343
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4211   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !930 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store ptr %i.z, ptr %2, align 16, !tbaa !4211
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !580
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !930
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !200
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !200
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !200 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !573
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #26
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i:         ; preds = %bb.c, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !573
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %i.az = add i32 %.0.i3.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !3311

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3312

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2338 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i
  %i.bc = load ptr, ptr %2, align 16, !tbaa !2341
  %i.bd = zext i32 %.pr.i to i64                  ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 6
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2341
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2342
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2338 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2342 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2338
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !573
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.k, %i.ab                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5                       ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !200
  %i.ah = and i32 %i.ac, 31                       ; 2 uses
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.al, %.lr.ph.i ], [ %i.ac, %bb.b ]
  %i.ak = add i32 %.016.i, 1
  %i.al = and i32 %i.ak, %i.k                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !200
  %i.aq = and i32 %i.al, 31                       ; 2 uses
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4219

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.lcssa14.i ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i.i.i.i, 6
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.ax, align 8, !tbaa !568
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !573 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !573
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.bb) #26, !inline_history !4220
  br label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i

_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i: ; preds = %bb.c, %._crit_edge.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %i.at, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2323
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !2323
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  store i64 6, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr null, ptr %i.bg, align 8, !tbaa !568
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !573 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !573
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i.thread, label %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i

_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i.thread:   ; preds = %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa13.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !200
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !200
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i

_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i:          ; preds = %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.0.copyload.i.i.i.i.i.i11.i = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i.i.i11.i, -8
  %i.bq = inttoptr i64 %i.bp to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef %i.bq) #26, !inline_history !4221
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !573
  %i.br = icmp eq ptr %.pre, null
  %i.bs = shl nuw i32 1, %.lcssa.i
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa13.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !200
  %i.bv = or i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !200
  br i1 %i.br, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #26, !inline_history !4221
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i:             ; preds = %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i.thread, %bb.d, %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !573
  %.not.i.i12.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i12.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #26, !inline_history !4221
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i, %bb.e
  %i.by = add i32 %.0.i19, -1
  %i.bz = and i32 %i.by, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bz, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4222

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !4223

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre27 = load i32, ptr %i.d, align 4, !tbaa !2338
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ca = phi i32 [ %.pre27, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2343
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !2343
  %i.ce = icmp eq i32 %i.ca, 0
  br i1 %i.ce, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit
  %i.cf = load ptr, ptr %1, align 8, !tbaa !2341
  %i.cg = zext i32 %i.ca to i64                   ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 6
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 1073741820
  %i.cl = add nuw nsw i64 %i.ck, %i.ch
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cf, i64 noundef %i.cl, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !2338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE4killEv.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

declare void @_ZN4llvm10CallbackVH6anchorEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE7deletedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.1597, align 1           ; 3 uses
  %2 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, 6
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !568
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !573  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !573
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.i) #26, !inline_history !4224
  %.pre21.pre = load ptr, ptr %i.e, align 8, !tbaa !573
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre21 = phi ptr [ %.pre21.pre, %bb.b ], [ null, %bb.a ] ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %2, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2323 ; 5 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !2323
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2341, !noalias !4225
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2342, !noalias !4225 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !2338, !noalias !4225 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !139

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4340
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4337
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4331
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !200
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4314
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !199
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !200
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4331, !noalias !4341 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4337, !noalias !4341 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4338, !noalias !4341 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !200
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !817

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !199
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !139

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !818, !llvm.loop !4339

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4340
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.579", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4338
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4331
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4337
  store i32 0, ptr %i.p, align 16, !tbaa !4314
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !580
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4340
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !580
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !580
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !580
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !200
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !200
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !200
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !200
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4331   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4337
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4338 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4337 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4331
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4338
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !200  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !200
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !200
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !4346

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !199
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !200
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !200
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !200
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !200
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4347

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !4348

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4338
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4314
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !4314
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !4338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm8FunctionEEZNS0_15OpenMPIRBuilder11createTeamsERKNS4_19LocationDescriptionENS0_12function_refIFNS0_5ErrorENS0_13IRBuilderBase11InsertPointESB_NS0_8ArrayRefIPNS0_10BasicBlockEEEEEEPNS0_5ValueESJ_SJ_SJ_E3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !580   ; 5 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !3052 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !758
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !860  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !137  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !138
  %.not.i.i.i.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !139

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.e)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  store ptr %i.e, ptr %i.m, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !137
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !207
  %i.r = icmp eq i32 %i.q, 3                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !394
  %i.u = trunc i16 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZNK4llvm8Function6getArgEj.exit.i.i.i

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i
  tail call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #26
  br label %_ZNK4llvm8Function6getArgEj.exit.i.i.i

_ZNK4llvm8Function6getArgEj.exit.i.i.i:           ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !926
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !55
  store ptr @.str.542, ptr %3, align 8, !tbaa !56
  store i8 3, ptr %i.x, align 8, !tbaa !52
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.z = load i16, ptr %i.s, align 2, !tbaa !394
  %i.aa = trunc i16 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm8Function6getArgEj.exit16.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm8Function6getArgEj.exit.i.i.i
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #26
  br label %_ZNK4llvm8Function6getArgEj.exit16.i.i.i

_ZNK4llvm8Function6getArgEj.exit16.i.i.i:         ; preds = %bb.e, %_ZNK4llvm8Function6getArgEj.exit.i.i.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !926
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.ae, align 1, !tbaa !55
  store ptr @.str.543, ptr %4, align 8, !tbaa !56
  store i8 3, ptr %i.ad, align 8, !tbaa !52
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(34) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK4llvm8Function6getArgEj.exit16.i.i.i
  %i.af = load i16, ptr %i.s, align 2, !tbaa !394
  %i.ag = trunc i16 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZNK4llvm8Function6getArgEj.exit17.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #26
  br label %_ZNK4llvm8Function6getArgEj.exit17.i.i.i

_ZNK4llvm8Function6getArgEj.exit17.i.i.i:         ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !926
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !55
  store ptr @.str.544, ptr %5, align 8, !tbaa !56
  store i8 3, ptr %i.aj, align 8, !tbaa !52
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(34) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm8Function6getArgEj.exit17.i.i.i, %_ZNK4llvm8Function6getArgEj.exit16.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 584 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 592
end_hunk_17
