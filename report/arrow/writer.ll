inline.NumInlined: 5023
inline.NumDeleted: 1781
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  %.not.i.i.i.i56.i.i608 = icmp eq ptr %.pre.i607, null
  br i1 %.not.i.i.i.i56.i.i608, label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i, label %bb.vx

bb.vx:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i
  %i.ccb = getelementptr inbounds nuw i8, ptr %.pre.i607, i64 8 ; 4 uses
  %i.ccc = load atomic i64, ptr %i.ccb acquire, align 8, !noalias !1011 ; 2 uses
  %i.ccd = icmp eq i64 %i.ccc, 4294967297
  %i.cce = trunc i64 %i.ccc to i32                ; 2 uses
  br i1 %i.ccd, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  store i32 0, ptr %i.ccb, align 8, !tbaa !125, !noalias !1011
  %i.ccf = getelementptr inbounds nuw i8, ptr %.pre.i607, i64 12
  store i32 0, ptr %i.ccf, align 4, !tbaa !127, !noalias !1011
  %i.ccg = load ptr, ptr %.pre.i607, align 8, !tbaa !55, !noalias !1011
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 16
  %i.cci = load ptr, ptr %i.cch, align 8, !noalias !1011
  tail call void %i.cci(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i607) #28, !noalias !1011, !inline_history !1015
  %i.ccj = load ptr, ptr %.pre.i607, align 8, !tbaa !55, !noalias !1011
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 24
  %i.ccl = load ptr, ptr %i.cck, align 8, !noalias !1011
  tail call void %i.ccl(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i607) #28, !noalias !1011, !inline_history !1015
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i

bb.vz:                                            ; preds = %bb.vx
  %i.ccm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i.i.i57.i.i609 = icmp eq i8 %i.ccm, 0
  br i1 %.not.i.i.i.i.i57.i.i609, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.ccn = add nsw i32 %i.cce, -1
  store i32 %i.ccn, ptr %i.ccb, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i610

bb.wb:                                            ; preds = %bb.vz
  %i.cco = atomicrmw volatile add ptr %i.ccb, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i610

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i610: ; preds = %bb.wb, %bb.wa
  %.0.i.i.i.i.i.i.i.i611 = phi i32 [ %i.cce, %bb.wa ], [ %i.cco, %bb.wb ]
  %i.ccp = icmp eq i32 %.0.i.i.i.i.i.i.i.i611, 1
  br i1 %i.ccp, label %bb.wc, label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i, !prof !129

bb.wc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i610
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i607) #28, !noalias !1011
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i

_ZN5arrow6StatusD2Ev.exit.i.i529:                 ; preds = %bb.vt
  %i.ccq = shl i64 %i.cbn, 3
  %i.ccr = add i64 %i.ccq, 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #28, !noalias !1011
  store i64 0, ptr %i.bd, align 8, !tbaa !288, !noalias !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #28, !noalias !1011
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !45, !noalias !1011
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 16
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ccw = load i64, ptr %i.ccv, align 8, !tbaa !647, !noalias !1011
  %i.ccx = shl i64 %i.ccw, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %131, ptr noundef nonnull align 8 dereferenceable(16) %i.ccu, i64 noundef %i.ccx, i64 noundef 8, ptr noundef nonnull %i.bd)
          to label %.noexc.i533 unwind label %bb.yp, !noalias !1005

.noexc.i533:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i529
  %i.ccy = load ptr, ptr %131, align 8, !tbaa !39, !noalias !1011 ; 3 uses
  store ptr %i.ccy, ptr %136, align 8, !tbaa !39, !alias.scope !1008, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #28, !noalias !1011
  %i.ccz = icmp eq ptr %i.ccy, null
  br i1 %i.ccz, label %_ZN5arrow6StatusD2Ev.exit61.i.i535, label %_ZN5arrow6StatusD2Ev.exit.thread93.i

_ZN5arrow6StatusD2Ev.exit.thread93.i:             ; preds = %.noexc.i533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #28, !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %134), !noalias !1005
  store ptr %i.ccy, ptr %0, align 8, !tbaa !39, !alias.scope !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #28, !noalias !1005
  br label %.critedge.i534

_ZN5arrow6StatusD2Ev.exit61.i.i535:               ; preds = %.noexc.i533
  %i.cda = load i64, ptr %i.bd, align 8, !tbaa !288, !noalias !1011
  %i.cdb = icmp sgt i64 %i.cda, 0
  %i.cdc = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1011 ; 3 uses
  br i1 %i.cdb, label %bb.wd, label %bb.wu

bb.wd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i535
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cdc, i64 40
  %i.cde = load ptr, ptr %i.cdd, align 8, !tbaa !45, !noalias !1011
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 16
  %i.cdg = load ptr, ptr %i.cdf, align 8, !tbaa !33, !noalias !1011
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdg, i64 9
  %i.cdi = load i8, ptr %i.cdh, align 1, !tbaa !346, !range !187, !noalias !1011, !noundef !183
  %i.cdj = trunc nuw i8 %i.cdi to i1
  br i1 %i.cdj, label %bb.wf, label %bb.we

bb.we:                                            ; preds = %bb.wd
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %136, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit.i577 unwind label %bb.yp, !noalias !1005

bb.wf:                                            ; preds = %bb.wd
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #28, !noalias !1011
  %i.cdk = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.cdl = load ptr, ptr %i.cdk, align 8, !tbaa !182, !noalias !1011, !nonnull !183, !align !184
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 16
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !364, !noalias !1011
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %132, i64 noundef %i.ccr, ptr noundef %i.cdn)
          to label %.noexc40.i unwind label %bb.yp, !noalias !1005

.noexc40.i:                                       ; preds = %bb.wf
  %i.cdo = load ptr, ptr %132, align 8, !tbaa !39, !noalias !1011
  %i.cdp = icmp eq ptr %i.cdo, null               ; 2 uses
  br i1 %i.cdp, label %bb.wi, label %bb.wg, !prof !256

bb.wg:                                            ; preds = %.noexc40.i
  store ptr null, ptr %136, align 8, !tbaa !39, !alias.scope !1008, !noalias !1005
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef nonnull align 8 dereferenceable(8) %132)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i580 unwind label %bb.wh, !noalias !1005

bb.wh:                                            ; preds = %bb.wg
  %i.cdq = landingpad { ptr, i32 }
          cleanup
  br label %bb.wt

bb.wi:                                            ; preds = %.noexc40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #28, !noalias !1011
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.cdr = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 2 uses
  %i.cds = load i64, ptr %i.cdr, align 8, !tbaa !351, !noalias !1022 ; 2 uses
  store i64 %i.cds, ptr %133, align 8, !tbaa !351, !alias.scope !1023, !noalias !1011
  store ptr null, ptr %i.cdr, align 8, !tbaa !351, !noalias !1022
  %i.cdt = getelementptr inbounds nuw i8, ptr %.tr1790, i64 32
  %i.cdu = load ptr, ptr %i.cdt, align 8, !tbaa !1024, !noalias !1011 ; 2 uses
  %.cast.i.i587 = inttoptr i64 %i.cds to ptr
  %i.cdv = getelementptr inbounds nuw i8, ptr %.cast.i.i587, i64 16
  %i.cdw = load ptr, ptr %i.cdv, align 8, !noalias !1011
  %i.cdx = load i64, ptr %i.cdu, align 8, !tbaa !288, !noalias !1011
  %i.cdy = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1011
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 16 ; 2 uses
  %i.cea = load i64, ptr %i.cdz, align 8, !tbaa !138, !noalias !1011
  %.not125.i.i588 = icmp slt i64 %i.cea, 0
  br i1 %.not125.i.i588, label %._crit_edge.i.i592, label %.lr.ph.i.i589

._crit_edge.i.i592:                               ; preds = %.lr.ph.i.i589, %bb.wi
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #28, !noalias !1011
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %130, ptr noundef nonnull align 8 dereferenceable(8) %133)
          to label %.noexc.i.i596 unwind label %bb.ws, !noalias !1011

.noexc.i.i596:                                    ; preds = %._crit_edge.i.i592
  %i.ceb = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !118, !noalias !1011 ; 8 uses
  %i.ced = load <2 x ptr>, ptr %135, align 16, !tbaa !119, !noalias !1011
  %i.cee = load <2 x ptr>, ptr %130, align 16, !tbaa !119, !noalias !1011
  store <2 x ptr> %i.cee, ptr %135, align 16, !tbaa !119, !noalias !1011
  store <2 x ptr> %i.ced, ptr %130, align 16, !tbaa !119, !noalias !1011
  %.not.i.i.i.i62.i.i597 = icmp eq ptr %i.cec, null
  br i1 %.not.i.i.i.i62.i.i597, label %bb.wp, label %bb.wj

bb.wj:                                            ; preds = %.noexc.i.i596
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cec, i64 8 ; 4 uses
  %i.ceg = load atomic i64, ptr %i.cef acquire, align 8, !noalias !1011 ; 2 uses
  %i.ceh = icmp eq i64 %i.ceg, 4294967297
  %i.cei = trunc i64 %i.ceg to i32                ; 2 uses
  br i1 %i.ceh, label %bb.wk, label %bb.wl

bb.wk:                                            ; preds = %bb.wj
  store i32 0, ptr %i.cef, align 8, !tbaa !125, !noalias !1011
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cec, i64 12
  store i32 0, ptr %i.cej, align 4, !tbaa !127, !noalias !1011
  %i.cek = load ptr, ptr %i.cec, align 8, !tbaa !55, !noalias !1011
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cek, i64 16
  %i.cem = load ptr, ptr %i.cel, align 8, !noalias !1011
  call void %i.cem(ptr noundef nonnull align 8 dereferenceable(16) %i.cec) #28, !noalias !1011, !inline_history !1026
  %i.cen = load ptr, ptr %i.cec, align 8, !tbaa !55, !noalias !1011
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 24
  %i.cep = load ptr, ptr %i.ceo, align 8, !noalias !1011
  call void %i.cep(ptr noundef nonnull align 8 dereferenceable(16) %i.cec) #28, !noalias !1011, !inline_history !1026
  br label %bb.wp

bb.wl:                                            ; preds = %bb.wj
  %i.ceq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i.i.i63.i.i598 = icmp eq i8 %i.ceq, 0
  br i1 %.not.i.i.i.i.i63.i.i598, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cer = add nsw i32 %i.cei, -1
  store i32 %i.cer, ptr %i.cef, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i599

bb.wn:                                            ; preds = %bb.wl
  %i.ces = atomicrmw volatile add ptr %i.cef, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i599

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i599: ; preds = %bb.wn, %bb.wm
  %.0.i.i.i.i.i.i65.i.i600 = phi i32 [ %i.cei, %bb.wm ], [ %i.ces, %bb.wn ]
  %i.cet = icmp eq i32 %.0.i.i.i.i.i.i65.i.i600, 1
  br i1 %i.cet, label %bb.wo, label %bb.wp, !prof !129

bb.wo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i599
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cec) #28, !noalias !1011
  br label %bb.wp

.lr.ph.i.i589:                                    ; preds = %bb.wi, %.lr.ph.i.i589
  %indvars.iv.i.i590 = phi i64 [ %indvars.iv.next.i.i591, %.lr.ph.i.i589 ], [ 0, %bb.wi ] ; 4 uses
  %i.ceu = getelementptr inbounds nuw [8 x i8], ptr %i.cdu, i64 %indvars.iv.i.i590
  %i.cev = load i64, ptr %i.ceu, align 8, !tbaa !288, !noalias !1011
  %i.cew = sub nsw i64 %i.cev, %i.cdx
  %i.cex = getelementptr inbounds nuw [8 x i8], ptr %i.cdw, i64 %indvars.iv.i.i590
  store i64 %i.cew, ptr %i.cex, align 8, !tbaa !288, !noalias !1011
  %indvars.iv.next.i.i591 = add nuw nsw i64 %indvars.iv.i.i590, 1
  %i.cey = load i64, ptr %i.cdz, align 8, !tbaa !138, !noalias !1011
  %.not.not.i.i = icmp sgt i64 %i.cey, %indvars.iv.i.i590
  br i1 %.not.not.i.i, label %.lr.ph.i.i589, label %._crit_edge.i.i592, !llvm.loop !1027

bb.wp:                                            ; preds = %bb.wo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i599, %bb.wk, %.noexc.i.i596
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #28, !noalias !1011
  %i.cez = load ptr, ptr %133, align 8, !tbaa !351, !noalias !1011 ; 3 uses
  %.not.i66.i.i601 = icmp eq ptr %i.cez, null
  br i1 %.not.i66.i.i601, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i602

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i602: ; preds = %bb.wp
  %i.cfa = load ptr, ptr %i.cez, align 8, !tbaa !55, !noalias !1011
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8
  %i.cfc = load ptr, ptr %i.cfb, align 8, !noalias !1011
  call void %i.cfc(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cez) #28, !noalias !1011, !inline_history !1028
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i602, %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #28, !noalias !1011
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i580

_ZN5arrow6StatusC2ERKS0_.exit.i.i580:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603, %bb.wg
  %i.cfd = load ptr, ptr %132, align 8, !tbaa !39, !noalias !1011 ; 2 uses
  %i.cfe = icmp eq ptr %i.cfd, null
  br i1 %i.cfe, label %bb.wq, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581, !prof !256

bb.wq:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i580
  %i.cff = getelementptr inbounds nuw i8, ptr %132, i64 8
  %i.cfg = load ptr, ptr %i.cff, align 8, !tbaa !351, !noalias !1011 ; 3 uses
  %.not.i.i.i.i67.i.i583 = icmp eq ptr %i.cfg, null
  br i1 %.not.i.i.i.i67.i.i583, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584: ; preds = %bb.wq
  %i.cfh = load ptr, ptr %i.cfg, align 8, !tbaa !55, !noalias !1005
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 8
  %i.cfj = load ptr, ptr %i.cfi, align 8, !noalias !1005
  call void %i.cfj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cfg) #28, !noalias !1005, !inline_history !1029
  %.pr.pre.i.i.i585 = load ptr, ptr %132, align 8, !tbaa !39, !noalias !1011 ; 2 uses
  %.not.i.i68.i.i586 = icmp eq ptr %.pr.pre.i.i.i585, null
  br i1 %.not.i.i68.i.i586, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584, %_ZN5arrow6StatusC2ERKS0_.exit.i.i580
  %i.cfk = phi ptr [ %.pr.pre.i.i.i585, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584 ], [ %i.cfd, %_ZN5arrow6StatusC2ERKS0_.exit.i.i580 ]
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfk, i64 1
  %i.cfm = load i8, ptr %i.cfl, align 1, !tbaa !257, !range !187, !noalias !1005, !noundef !183
  %i.cfn = trunc nuw i8 %i.cfm to i1
  br i1 %i.cfn, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582, label %bb.wr

bb.wr:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %132) #28, !noalias !1005
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582: ; preds = %bb.wr, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584, %bb.wq
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #28, !noalias !1011
  br i1 %i.cdp, label %_ZN5arrow6StatusD2Ev.exit.thread91.i, label %_ZN5arrow6StatusD2Ev.exit.i577

bb.ws:                                            ; preds = %._crit_edge.i.i592
  %i.cfo = landingpad { ptr, i32 }
          cleanup
  %i.cfp = load ptr, ptr %133, align 8, !tbaa !351, !noalias !1011 ; 3 uses
  %.not.i69.i.i593 = icmp eq ptr %i.cfp, null
  br i1 %.not.i69.i.i593, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i594

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i594: ; preds = %bb.ws
  %i.cfq = load ptr, ptr %i.cfp, align 8, !tbaa !55, !noalias !1011
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfq, i64 8
  %i.cfs = load ptr, ptr %i.cfr, align 8, !noalias !1011
  call void %i.cfs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cfp) #28, !noalias !1011, !inline_history !1028
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i594, %bb.ws
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #28, !noalias !1011
  br label %bb.wt

bb.wt:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595, %bb.wh
  %.pn51.i.i579 = phi { ptr, i32 } [ %i.cdq, %bb.wh ], [ %i.cfo, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %132) #28, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #28, !noalias !1011
  br label %bb.yo

bb.wu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i535
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cdc, i64 32
  %i.cfu = load i64, ptr %i.cft, align 8, !tbaa !647, !noalias !1011
  %i.cfv = icmp slt i64 %i.cfu, 1
  br i1 %i.cfv, label %bb.wv, label %.critedge55.thread.i.i536

bb.wv:                                            ; preds = %bb.wu
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cdc, i64 40
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !45, !noalias !1030 ; 2 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 16
  %i.cfz = load ptr, ptr %i.cfy, align 8, !tbaa !33, !noalias !1030 ; 2 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfx, i64 24
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !118, !noalias !1030 ; 8 uses
  %.not.i.i.i.i72.i.i565 = icmp eq ptr %i.cgb, null
  br i1 %.not.i.i.i.i72.i.i565, label %bb.wz, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 8 ; 7 uses
  %i.cgd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1030
  %.not.i.i.i.i.i73.i.i566 = icmp eq i8 %i.cgd, 0
  br i1 %.not.i.i.i.i.i73.i.i566, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cge = load i32, ptr %i.cgc, align 4, !tbaa !3, !noalias !1030
  %i.cgf = add nsw i32 %i.cge, 1
  store i32 %i.cgf, ptr %i.cgc, align 4, !tbaa !3, !noalias !1030
  br label %bb.xa

bb.wy:                                            ; preds = %bb.ww
  %i.cgg = atomicrmw volatile add ptr %i.cgc, i32 1 acq_rel, align 4, !noalias !1030 ; 0 uses
  br label %bb.xa

bb.wz:                                            ; preds = %bb.wv
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cfz, i64 24
  %i.cgi = load i64, ptr %i.cgh, align 8, !tbaa !46, !noalias !1011
  %i.cgj = icmp sgt i64 %i.cgi, %i.ccr
  br i1 %i.cgj, label %.critedge55.thread.i.i536, label %bb.ye

bb.xa:                                            ; preds = %bb.wy, %bb.wx
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cfz, i64 24
  %i.cgl = load i64, ptr %i.cgk, align 8, !tbaa !46, !noalias !1011
  %i.cgm = icmp sgt i64 %i.cgl, %i.ccr            ; 3 uses
  %i.cgn = load atomic i64, ptr %i.cgc acquire, align 8, !noalias !1011 ; 2 uses
  %i.cgo = icmp eq i64 %i.cgn, 4294967297
  %i.cgp = trunc i64 %i.cgn to i32                ; 2 uses
  br i1 %i.cgo, label %bb.xb, label %bb.xc

bb.xb:                                            ; preds = %bb.xa
  store i32 0, ptr %i.cgc, align 8, !tbaa !125, !noalias !1011
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgb, i64 12
  store i32 0, ptr %i.cgq, align 4, !tbaa !127, !noalias !1011
  %i.cgr = load ptr, ptr %i.cgb, align 8, !tbaa !55, !noalias !1011
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 16
  %i.cgt = load ptr, ptr %i.cgs, align 8, !noalias !1011
  call void %i.cgt(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb) #28, !noalias !1011, !inline_history !1033
  %i.cgu = load ptr, ptr %i.cgb, align 8, !tbaa !55, !noalias !1011
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.cgu, i64 24
  %i.cgw = load ptr, ptr %i.cgv, align 8, !noalias !1011
  call void %i.cgw(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb) #28, !noalias !1011, !inline_history !1033
  br i1 %i.cgm, label %.critedge55.thread.i.i536, label %bb.ye

bb.xc:                                            ; preds = %bb.xa
  %i.cgx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i76.i.i567 = icmp eq i8 %i.cgx, 0
  br i1 %.not.i.i.i76.i.i567, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.cgy = add nsw i32 %i.cgp, -1
  store i32 %i.cgy, ptr %i.cgc, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568

bb.xe:                                            ; preds = %bb.xc
  %i.cgz = atomicrmw volatile add ptr %i.cgc, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568: ; preds = %bb.xe, %bb.xd
  %.0.i.i.i.i78.i.i569 = phi i32 [ %i.cgp, %bb.xd ], [ %i.cgz, %bb.xe ]
  %i.cha = icmp eq i32 %.0.i.i.i.i78.i.i569, 1
  br i1 %i.cha, label %bb.xf, label %.critedge55.i.i570, !prof !129

bb.xf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb) #28, !noalias !1011
  br i1 %i.cgm, label %.critedge55.thread.i.i536, label %bb.ye

.critedge55.i.i570:                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568
  br i1 %i.cgm, label %.critedge55.thread.i.i536, label %bb.ye

.critedge55.thread.i.i536:                        ; preds = %.critedge55.i.i570, %bb.xf, %bb.xb, %bb.wz, %bb.wu
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.chb = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1037
  %i.chc = getelementptr inbounds nuw i8, ptr %i.chb, i64 40
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !45, !noalias !1037 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 16
  %i.chf = getelementptr inbounds nuw i8, ptr %134, i64 8 ; 2 uses
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chd, i64 24
  %i.chh = load ptr, ptr %i.chg, align 8, !tbaa !118, !noalias !1037 ; 2 uses
  %i.chi = load <2 x ptr>, ptr %i.che, align 8, !tbaa !119, !noalias !1037
  store <2 x ptr> %i.chi, ptr %134, align 16, !tbaa !119, !alias.scope !1034, !noalias !1011
  %.not.i.i.i.i80.i.i537 = icmp eq ptr %i.chh, null
  br i1 %.not.i.i.i.i80.i.i537, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i, label %bb.xg

bb.xg:                                            ; preds = %.critedge55.thread.i.i536
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chh, i64 8 ; 3 uses
  %i.chk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1037
  %.not.i.i.i.i.i81.i.i538 = icmp eq i8 %i.chk, 0
  br i1 %.not.i.i.i.i.i81.i.i538, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.chl = load i32, ptr %i.chj, align 4, !tbaa !3, !noalias !1037
  %i.chm = add nsw i32 %i.chl, 1
  store i32 %i.chm, ptr %i.chj, align 4, !tbaa !3, !noalias !1037
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i

bb.xi:                                            ; preds = %bb.xg
  %i.chn = atomicrmw volatile add ptr %i.chj, i32 1 acq_rel, align 4, !noalias !1037 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i: ; preds = %bb.xi, %bb.xh, %.critedge55.thread.i.i536
  %i.cho = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1011
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 32
  %i.chq = load i64, ptr %i.chp, align 8, !tbaa !647, !noalias !1011
  %i.chr = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc83.i.i542 unwind label %bb.yd, !noalias !1011 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  %.not.i.i.i.i56.i.i739 = icmp eq ptr %.pre.i738, null
  br i1 %.not.i.i.i.i56.i.i739, label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i647, label %bb.aak

bb.aak:                                           ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i736
  %i.cqr = getelementptr inbounds nuw i8, ptr %.pre.i738, i64 8 ; 4 uses
  %i.cqs = load atomic i64, ptr %i.cqr acquire, align 8, !noalias !1068 ; 2 uses
  %i.cqt = icmp eq i64 %i.cqs, 4294967297
  %i.cqu = trunc i64 %i.cqs to i32                ; 2 uses
  br i1 %i.cqt, label %bb.aal, label %bb.aam

bb.aal:                                           ; preds = %bb.aak
  store i32 0, ptr %i.cqr, align 8, !tbaa !125, !noalias !1068
  %i.cqv = getelementptr inbounds nuw i8, ptr %.pre.i738, i64 12
  store i32 0, ptr %i.cqv, align 4, !tbaa !127, !noalias !1068
  %i.cqw = load ptr, ptr %.pre.i738, align 8, !tbaa !55, !noalias !1068
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.cqw, i64 16
  %i.cqy = load ptr, ptr %i.cqx, align 8, !noalias !1068
  tail call void %i.cqy(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i738) #28, !noalias !1068, !inline_history !1072
  %i.cqz = load ptr, ptr %.pre.i738, align 8, !tbaa !55, !noalias !1068
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqz, i64 24
  %i.crb = load ptr, ptr %i.cra, align 8, !noalias !1068
  tail call void %i.crb(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i738) #28, !noalias !1068, !inline_history !1072
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i647

bb.aam:                                           ; preds = %bb.aak
  %i.crc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i.i.i57.i.i740 = icmp eq i8 %i.crc, 0
  br i1 %.not.i.i.i.i.i57.i.i740, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.crd = add nsw i32 %i.cqu, -1
  store i32 %i.crd, ptr %i.cqr, align 8, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i741

bb.aao:                                           ; preds = %bb.aam
  %i.cre = atomicrmw volatile add ptr %i.cqr, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i741

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i741: ; preds = %bb.aao, %bb.aan
  %.0.i.i.i.i.i.i.i.i742 = phi i32 [ %i.cqu, %bb.aan ], [ %i.cre, %bb.aao ]
  %i.crf = icmp eq i32 %.0.i.i.i.i.i.i.i.i742, 1
  br i1 %i.crf, label %bb.aap, label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i647, !prof !129

bb.aap:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i741
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i738) #28, !noalias !1068
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i647

_ZN5arrow6StatusD2Ev.exit.i.i612:                 ; preds = %bb.aag
  %i.crg = shl i64 %i.cqd, 3
  %i.crh = add i64 %i.crg, 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #28, !noalias !1068
  store i64 0, ptr %i.az, align 8, !tbaa !288, !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #28, !noalias !1068
  %i.cri = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.crj = load ptr, ptr %i.cri, align 8, !tbaa !45, !noalias !1068
  %i.crk = getelementptr inbounds nuw i8, ptr %i.crj, i64 16
  %i.crl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.crm = load i64, ptr %i.crl, align 8, !tbaa !647, !noalias !1068
  %i.crn = shl i64 %i.crm, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %120, ptr noundef nonnull align 8 dereferenceable(16) %i.crk, i64 noundef %i.crn, i64 noundef 8, ptr noundef nonnull %i.az)
          to label %.noexc.i616 unwind label %bb.adc, !noalias !1062

.noexc.i616:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i612
  %i.cro = load ptr, ptr %120, align 8, !tbaa !39, !noalias !1068 ; 3 uses
  store ptr %i.cro, ptr %125, align 8, !tbaa !39, !alias.scope !1065, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #28, !noalias !1068
  %i.crp = icmp eq ptr %i.cro, null
  br i1 %i.crp, label %_ZN5arrow6StatusD2Ev.exit61.i.i623, label %_ZN5arrow6StatusD2Ev.exit.thread93.i617

_ZN5arrow6StatusD2Ev.exit.thread93.i617:          ; preds = %.noexc.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #28, !noalias !1068
  call void @llvm.lifetime.end.p0(ptr nonnull %123), !noalias !1062
  store ptr %i.cro, ptr %0, align 8, !tbaa !39, !alias.scope !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28, !noalias !1062
  br label %.critedge.i618

_ZN5arrow6StatusD2Ev.exit61.i.i623:               ; preds = %.noexc.i616
  %i.crq = load i64, ptr %i.az, align 8, !tbaa !288, !noalias !1068
  %i.crr = icmp sgt i64 %i.crq, 0
  %i.crs = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1068 ; 3 uses
  br i1 %i.crr, label %bb.aaq, label %bb.abh

bb.aaq:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i623
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crs, i64 40
  %i.cru = load ptr, ptr %i.crt, align 8, !tbaa !45, !noalias !1068
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cru, i64 16
  %i.crw = load ptr, ptr %i.crv, align 8, !tbaa !33, !noalias !1068
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crw, i64 9
  %i.cry = load i8, ptr %i.crx, align 1, !tbaa !346, !range !187, !noalias !1068, !noundef !183
  %i.crz = trunc nuw i8 %i.cry to i1
  br i1 %i.crz, label %bb.aas, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %125, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit.i704 unwind label %bb.adc, !noalias !1062

bb.aas:                                           ; preds = %bb.aaq
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #28, !noalias !1068
  %i.csa = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.csb = load ptr, ptr %i.csa, align 8, !tbaa !182, !noalias !1068, !nonnull !183, !align !184
  %i.csc = getelementptr inbounds nuw i8, ptr %i.csb, i64 16
  %i.csd = load ptr, ptr %i.csc, align 8, !tbaa !364, !noalias !1068
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %121, i64 noundef %i.crh, ptr noundef %i.csd)
          to label %.noexc40.i706 unwind label %bb.adc, !noalias !1062

.noexc40.i706:                                    ; preds = %bb.aas
  %i.cse = load ptr, ptr %121, align 8, !tbaa !39, !noalias !1068
  %i.csf = icmp eq ptr %i.cse, null               ; 2 uses
  br i1 %i.csf, label %bb.aav, label %bb.aat, !prof !256

bb.aat:                                           ; preds = %.noexc40.i706
  store ptr null, ptr %125, align 8, !tbaa !39, !alias.scope !1065, !noalias !1062
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef nonnull align 8 dereferenceable(8) %121)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i708 unwind label %bb.aau, !noalias !1062

bb.aau:                                           ; preds = %bb.aat
  %i.csg = landingpad { ptr, i32 }
          cleanup
  br label %bb.abg

bb.aav:                                           ; preds = %.noexc40.i706
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #28, !noalias !1068
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.csh = getelementptr inbounds nuw i8, ptr %121, i64 8 ; 2 uses
  %i.csi = load i64, ptr %i.csh, align 8, !tbaa !351, !noalias !1079 ; 2 uses
  store i64 %i.csi, ptr %122, align 8, !tbaa !351, !alias.scope !1080, !noalias !1068
  store ptr null, ptr %i.csh, align 8, !tbaa !351, !noalias !1079
  %i.csj = getelementptr inbounds nuw i8, ptr %.tr1790, i64 32
  %i.csk = load ptr, ptr %i.csj, align 8, !tbaa !1024, !noalias !1068 ; 2 uses
  %.cast.i.i715 = inttoptr i64 %i.csi to ptr
  %i.csl = getelementptr inbounds nuw i8, ptr %.cast.i.i715, i64 16
  %i.csm = load ptr, ptr %i.csl, align 8, !noalias !1068
  %i.csn = load i64, ptr %i.csk, align 8, !tbaa !288, !noalias !1068
  %i.cso = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1068
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cso, i64 16 ; 2 uses
  %i.csq = load i64, ptr %i.csp, align 8, !tbaa !138, !noalias !1068
  %.not125.i.i716 = icmp slt i64 %i.csq, 0
  br i1 %.not125.i.i716, label %._crit_edge.i.i721, label %.lr.ph.i.i717

._crit_edge.i.i721:                               ; preds = %.lr.ph.i.i717, %bb.aav
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #28, !noalias !1068
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %.noexc.i.i725 unwind label %bb.abf, !noalias !1068

.noexc.i.i725:                                    ; preds = %._crit_edge.i.i721
  %i.csr = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.css = load ptr, ptr %i.csr, align 8, !tbaa !118, !noalias !1068 ; 8 uses
  %i.cst = load <2 x ptr>, ptr %124, align 16, !tbaa !119, !noalias !1068
  %i.csu = load <2 x ptr>, ptr %119, align 16, !tbaa !119, !noalias !1068
  store <2 x ptr> %i.csu, ptr %124, align 16, !tbaa !119, !noalias !1068
  store <2 x ptr> %i.cst, ptr %119, align 16, !tbaa !119, !noalias !1068
  %.not.i.i.i.i62.i.i726 = icmp eq ptr %i.css, null
  br i1 %.not.i.i.i.i62.i.i726, label %bb.abc, label %bb.aaw

bb.aaw:                                           ; preds = %.noexc.i.i725
  %i.csv = getelementptr inbounds nuw i8, ptr %i.css, i64 8 ; 4 uses
  %i.csw = load atomic i64, ptr %i.csv acquire, align 8, !noalias !1068 ; 2 uses
  %i.csx = icmp eq i64 %i.csw, 4294967297
  %i.csy = trunc i64 %i.csw to i32                ; 2 uses
  br i1 %i.csx, label %bb.aax, label %bb.aay

bb.aax:                                           ; preds = %bb.aaw
  store i32 0, ptr %i.csv, align 8, !tbaa !125, !noalias !1068
  %i.csz = getelementptr inbounds nuw i8, ptr %i.css, i64 12
  store i32 0, ptr %i.csz, align 4, !tbaa !127, !noalias !1068
  %i.cta = load ptr, ptr %i.css, align 8, !tbaa !55, !noalias !1068
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.cta, i64 16
  %i.ctc = load ptr, ptr %i.ctb, align 8, !noalias !1068
  call void %i.ctc(ptr noundef nonnull align 8 dereferenceable(16) %i.css) #28, !noalias !1068, !inline_history !1081
  %i.ctd = load ptr, ptr %i.css, align 8, !tbaa !55, !noalias !1068
  %i.cte = getelementptr inbounds nuw i8, ptr %i.ctd, i64 24
  %i.ctf = load ptr, ptr %i.cte, align 8, !noalias !1068
  call void %i.ctf(ptr noundef nonnull align 8 dereferenceable(16) %i.css) #28, !noalias !1068, !inline_history !1081
  br label %bb.abc

bb.aay:                                           ; preds = %bb.aaw
  %i.ctg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i.i.i63.i.i727 = icmp eq i8 %i.ctg, 0
  br i1 %.not.i.i.i.i.i63.i.i727, label %bb.aba, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.cth = add nsw i32 %i.csy, -1
  store i32 %i.cth, ptr %i.csv, align 8, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i728

bb.aba:                                           ; preds = %bb.aay
  %i.cti = atomicrmw volatile add ptr %i.csv, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i728

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i728: ; preds = %bb.aba, %bb.aaz
  %.0.i.i.i.i.i.i65.i.i729 = phi i32 [ %i.csy, %bb.aaz ], [ %i.cti, %bb.aba ]
  %i.ctj = icmp eq i32 %.0.i.i.i.i.i.i65.i.i729, 1
  br i1 %i.ctj, label %bb.abb, label %bb.abc, !prof !129

bb.abb:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i728
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.css) #28, !noalias !1068
  br label %bb.abc

.lr.ph.i.i717:                                    ; preds = %bb.aav, %.lr.ph.i.i717
  %indvars.iv.i.i718 = phi i64 [ %indvars.iv.next.i.i719, %.lr.ph.i.i717 ], [ 0, %bb.aav ] ; 4 uses
  %i.ctk = getelementptr inbounds nuw [8 x i8], ptr %i.csk, i64 %indvars.iv.i.i718
  %i.ctl = load i64, ptr %i.ctk, align 8, !tbaa !288, !noalias !1068
  %i.ctm = sub nsw i64 %i.ctl, %i.csn
  %i.ctn = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i718
  store i64 %i.ctm, ptr %i.ctn, align 8, !tbaa !288, !noalias !1068
  %indvars.iv.next.i.i719 = add nuw nsw i64 %indvars.iv.i.i718, 1
  %i.cto = load i64, ptr %i.csp, align 8, !tbaa !138, !noalias !1068
  %.not.not.i.i720 = icmp sgt i64 %i.cto, %indvars.iv.i.i718
  br i1 %.not.not.i.i720, label %.lr.ph.i.i717, label %._crit_edge.i.i721, !llvm.loop !1082

bb.abc:                                           ; preds = %bb.abb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i.i728, %bb.aax, %.noexc.i.i725
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #28, !noalias !1068
  %i.ctp = load ptr, ptr %122, align 8, !tbaa !351, !noalias !1068 ; 3 uses
  %.not.i66.i.i730 = icmp eq ptr %i.ctp, null
  br i1 %.not.i66.i.i730, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i731

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i731: ; preds = %bb.abc
  %i.ctq = load ptr, ptr %i.ctp, align 8, !tbaa !55, !noalias !1068
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctq, i64 8
  %i.cts = load ptr, ptr %i.ctr, align 8, !noalias !1068
  call void %i.cts(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ctp) #28, !noalias !1068, !inline_history !1083
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i731, %bb.abc
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #28, !noalias !1068
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i708

_ZN5arrow6StatusC2ERKS0_.exit.i.i708:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732, %bb.aat
  %i.ctt = load ptr, ptr %121, align 8, !tbaa !39, !noalias !1068 ; 2 uses
  %i.ctu = icmp eq ptr %i.ctt, null
  br i1 %i.ctu, label %bb.abd, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709, !prof !256

bb.abd:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i708
  %i.ctv = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.ctw = load ptr, ptr %i.ctv, align 8, !tbaa !351, !noalias !1068 ; 3 uses
  %.not.i.i.i.i67.i.i711 = icmp eq ptr %i.ctw, null
  br i1 %.not.i.i.i.i67.i.i711, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712: ; preds = %bb.abd
  %i.ctx = load ptr, ptr %i.ctw, align 8, !tbaa !55, !noalias !1062
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctx, i64 8
  %i.ctz = load ptr, ptr %i.cty, align 8, !noalias !1062
  call void %i.ctz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ctw) #28, !noalias !1062, !inline_history !1084
  %.pr.pre.i.i.i713 = load ptr, ptr %121, align 8, !tbaa !39, !noalias !1068 ; 2 uses
  %.not.i.i68.i.i714 = icmp eq ptr %.pr.pre.i.i.i713, null
  br i1 %.not.i.i68.i.i714, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712, %_ZN5arrow6StatusC2ERKS0_.exit.i.i708
  %i.cua = phi ptr [ %.pr.pre.i.i.i713, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712 ], [ %i.ctt, %_ZN5arrow6StatusC2ERKS0_.exit.i.i708 ]
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cua, i64 1
  %i.cuc = load i8, ptr %i.cub, align 1, !tbaa !257, !range !187, !noalias !1062, !noundef !183
  %i.cud = trunc nuw i8 %i.cuc to i1
  br i1 %i.cud, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, label %bb.abe

bb.abe:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %121) #28, !noalias !1062
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710: ; preds = %bb.abe, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712, %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28, !noalias !1068
  br i1 %i.csf, label %_ZN5arrow6StatusD2Ev.exit.thread91.i646, label %_ZN5arrow6StatusD2Ev.exit.i704

bb.abf:                                           ; preds = %._crit_edge.i.i721
  %i.cue = landingpad { ptr, i32 }
          cleanup
  %i.cuf = load ptr, ptr %122, align 8, !tbaa !351, !noalias !1068 ; 3 uses
  %.not.i69.i.i722 = icmp eq ptr %i.cuf, null
  br i1 %.not.i69.i.i722, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i723

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i723: ; preds = %bb.abf
  %i.cug = load ptr, ptr %i.cuf, align 8, !tbaa !55, !noalias !1068
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.cug, i64 8
  %i.cui = load ptr, ptr %i.cuh, align 8, !noalias !1068
  call void %i.cui(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cuf) #28, !noalias !1068, !inline_history !1083
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i723, %bb.abf
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #28, !noalias !1068
  br label %bb.abg

bb.abg:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724, %bb.aau
  %.pn51.i.i707 = phi { ptr, i32 } [ %i.csg, %bb.aau ], [ %i.cue, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %121) #28, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28, !noalias !1068
  br label %bb.adb

bb.abh:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i623
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.crs, i64 32
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !647, !noalias !1068
  %i.cul = icmp slt i64 %i.cuk, 1
  br i1 %i.cul, label %bb.abi, label %.critedge55.thread.i.i624

bb.abi:                                           ; preds = %bb.abh
  %i.cum = getelementptr inbounds nuw i8, ptr %i.crs, i64 40
  %i.cun = load ptr, ptr %i.cum, align 8, !tbaa !45, !noalias !1085 ; 2 uses
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cun, i64 16
  %i.cup = load ptr, ptr %i.cuo, align 8, !tbaa !33, !noalias !1085 ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cun, i64 24
  %i.cur = load ptr, ptr %i.cuq, align 8, !tbaa !118, !noalias !1085 ; 8 uses
  %.not.i.i.i.i72.i.i691 = icmp eq ptr %i.cur, null
  br i1 %.not.i.i.i.i72.i.i691, label %bb.abm, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cur, i64 8 ; 7 uses
  %i.cut = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1085
  %.not.i.i.i.i.i73.i.i692 = icmp eq i8 %i.cut, 0
  br i1 %.not.i.i.i.i.i73.i.i692, label %bb.abl, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.cuu = load i32, ptr %i.cus, align 4, !tbaa !3, !noalias !1085
  %i.cuv = add nsw i32 %i.cuu, 1
  store i32 %i.cuv, ptr %i.cus, align 4, !tbaa !3, !noalias !1085
  br label %bb.abn

bb.abl:                                           ; preds = %bb.abj
  %i.cuw = atomicrmw volatile add ptr %i.cus, i32 1 acq_rel, align 4, !noalias !1085 ; 0 uses
  br label %bb.abn

bb.abm:                                           ; preds = %bb.abi
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cup, i64 24
  %i.cuy = load i64, ptr %i.cux, align 8, !tbaa !46, !noalias !1068
  %i.cuz = icmp sgt i64 %i.cuy, %i.crh
  br i1 %i.cuz, label %.critedge55.thread.i.i624, label %bb.acr

bb.abn:                                           ; preds = %bb.abl, %bb.abk
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cup, i64 24
  %i.cvb = load i64, ptr %i.cva, align 8, !tbaa !46, !noalias !1068
  %i.cvc = icmp sgt i64 %i.cvb, %i.crh            ; 3 uses
  %i.cvd = load atomic i64, ptr %i.cus acquire, align 8, !noalias !1068 ; 2 uses
  %i.cve = icmp eq i64 %i.cvd, 4294967297
  %i.cvf = trunc i64 %i.cvd to i32                ; 2 uses
  br i1 %i.cve, label %bb.abo, label %bb.abp

bb.abo:                                           ; preds = %bb.abn
  store i32 0, ptr %i.cus, align 8, !tbaa !125, !noalias !1068
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cur, i64 12
  store i32 0, ptr %i.cvg, align 4, !tbaa !127, !noalias !1068
  %i.cvh = load ptr, ptr %i.cur, align 8, !tbaa !55, !noalias !1068
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cvh, i64 16
  %i.cvj = load ptr, ptr %i.cvi, align 8, !noalias !1068
  call void %i.cvj(ptr noundef nonnull align 8 dereferenceable(16) %i.cur) #28, !noalias !1068, !inline_history !1088
  %i.cvk = load ptr, ptr %i.cur, align 8, !tbaa !55, !noalias !1068
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 24
  %i.cvm = load ptr, ptr %i.cvl, align 8, !noalias !1068
  call void %i.cvm(ptr noundef nonnull align 8 dereferenceable(16) %i.cur) #28, !noalias !1068, !inline_history !1088
  br i1 %i.cvc, label %.critedge55.thread.i.i624, label %bb.acr

bb.abp:                                           ; preds = %bb.abn
  %i.cvn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i76.i.i693 = icmp eq i8 %i.cvn, 0
  br i1 %.not.i.i.i76.i.i693, label %bb.abr, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.cvo = add nsw i32 %i.cvf, -1
  store i32 %i.cvo, ptr %i.cus, align 8, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694

bb.abr:                                           ; preds = %bb.abp
  %i.cvp = atomicrmw volatile add ptr %i.cus, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694: ; preds = %bb.abr, %bb.abq
  %.0.i.i.i.i78.i.i695 = phi i32 [ %i.cvf, %bb.abq ], [ %i.cvp, %bb.abr ]
  %i.cvq = icmp eq i32 %.0.i.i.i.i78.i.i695, 1
  br i1 %i.cvq, label %bb.abs, label %.critedge55.i.i696, !prof !129

bb.abs:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cur) #28, !noalias !1068
  br i1 %i.cvc, label %.critedge55.thread.i.i624, label %bb.acr

.critedge55.i.i696:                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694
  br i1 %i.cvc, label %.critedge55.thread.i.i624, label %bb.acr

.critedge55.thread.i.i624:                        ; preds = %.critedge55.i.i696, %bb.abs, %bb.abo, %bb.abm, %bb.abh
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.cvr = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1092
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvr, i64 40
  %i.cvt = load ptr, ptr %i.cvs, align 8, !tbaa !45, !noalias !1092 ; 2 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 16
  %i.cvv = getelementptr inbounds nuw i8, ptr %123, i64 8 ; 2 uses
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cvt, i64 24
  %i.cvx = load ptr, ptr %i.cvw, align 8, !tbaa !118, !noalias !1092 ; 2 uses
  %i.cvy = load <2 x ptr>, ptr %i.cvu, align 8, !tbaa !119, !noalias !1092
  store <2 x ptr> %i.cvy, ptr %123, align 16, !tbaa !119, !alias.scope !1089, !noalias !1068
  %.not.i.i.i.i80.i.i625 = icmp eq ptr %i.cvx, null
  br i1 %.not.i.i.i.i80.i.i625, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627, label %bb.abt

bb.abt:                                           ; preds = %.critedge55.thread.i.i624
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvx, i64 8 ; 3 uses
  %i.cwa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1092
  %.not.i.i.i.i.i81.i.i626 = icmp eq i8 %i.cwa, 0
  br i1 %.not.i.i.i.i.i81.i.i626, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.cwb = load i32, ptr %i.cvz, align 4, !tbaa !3, !noalias !1092
  %i.cwc = add nsw i32 %i.cwb, 1
  store i32 %i.cwc, ptr %i.cvz, align 4, !tbaa !3, !noalias !1092
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627

bb.abv:                                           ; preds = %bb.abt
  %i.cwd = atomicrmw volatile add ptr %i.cvz, i32 1 acq_rel, align 4, !noalias !1092 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627: ; preds = %bb.abv, %bb.abu, %.critedge55.thread.i.i624
  %i.cwe = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1068
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwe, i64 32
  %i.cwg = load i64, ptr %i.cwf, align 8, !tbaa !647, !noalias !1068
  %i.cwh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc83.i.i631 unwind label %bb.acq, !noalias !1068 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  %i.fuk = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i1365, i64 8 ; 4 uses
  %i.ful = load atomic i64, ptr %i.fuk acquire, align 8, !noalias !1358 ; 2 uses
  %i.fum = icmp eq i64 %i.ful, 4294967297
  %i.fun = trunc i64 %i.ful to i32                ; 2 uses
  br i1 %i.fum, label %bb.ays, label %bb.ayt

bb.ays:                                           ; preds = %bb.ayr
  store i32 0, ptr %i.fuk, align 8, !tbaa !125, !noalias !1358
  %i.fuo = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i1365, i64 12
  store i32 0, ptr %i.fuo, align 4, !tbaa !127, !noalias !1358
  %i.fup = load ptr, ptr %.pr.pre.i.i.i.i1365, align 8, !tbaa !55, !noalias !1358
  %i.fuq = getelementptr inbounds nuw i8, ptr %i.fup, i64 16
  %i.fur = load ptr, ptr %i.fuq, align 8, !noalias !1358
  tail call void %i.fur(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1365) #28, !noalias !1358, !inline_history !1359
  %i.fus = load ptr, ptr %.pr.pre.i.i.i.i1365, align 8, !tbaa !55, !noalias !1358
  %i.fut = getelementptr inbounds nuw i8, ptr %i.fus, i64 24
  %i.fuu = load ptr, ptr %i.fut, align 8, !noalias !1358
  tail call void %i.fuu(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1365) #28, !noalias !1358, !inline_history !1359
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363

bb.ayt:                                           ; preds = %bb.ayr
  %i.fuv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i9.i.i.i.i1360 = icmp eq i8 %i.fuv, 0
  br i1 %.not.i9.i.i.i.i1360, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.fuw = add nsw i32 %i.fun, -1
  store i32 %i.fuw, ptr %i.fuk, align 8, !tbaa !3, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361

bb.ayv:                                           ; preds = %bb.ayt
  %i.fux = atomicrmw volatile add ptr %i.fuk, i32 -1 acq_rel, align 4, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361: ; preds = %bb.ayv, %bb.ayu
  %.0.i.i.i.i.i.i1362 = phi i32 [ %i.fun, %bb.ayu ], [ %i.fux, %bb.ayv ]
  %i.fuy = icmp eq i32 %.0.i.i.i.i.i.i1362, 1
  br i1 %i.fuy, label %bb.ayw, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363, !prof !129

bb.ayw:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1365) #28, !noalias !1358
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358.thread, %bb.ayw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361, %bb.ays, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358
  store ptr %i.fue, ptr %i.fuc, align 8, !tbaa !118, !noalias !1358
  br label %_ZN5arrow6StatusD2Ev.exit1286.sink.split

_ZN5arrow6StatusD2Ev.exit.i1291:                  ; preds = %bb.ayo
  %i.fuz = shl i64 %i.ftw, 3
  %i.fva = add i64 %i.fuz, 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28, !noalias !1358
  store i64 0, ptr %i.j, align 8, !tbaa !288, !noalias !1358
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28, !noalias !1358
  %i.fvb = getelementptr inbounds nuw i8, ptr %i.ftu, i64 40
  %i.fvc = load ptr, ptr %i.fvb, align 8, !tbaa !45, !noalias !1358
  %i.fvd = getelementptr inbounds nuw i8, ptr %i.fvc, i64 16
  %i.fve = getelementptr inbounds nuw i8, ptr %i.ftu, i64 32
  %i.fvf = load i64, ptr %i.fve, align 8, !tbaa !647, !noalias !1358
  %i.fvg = shl i64 %i.fvf, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %i.fvd, i64 noundef %i.fvg, i64 noundef 8, ptr noundef nonnull %i.j)
          to label %.noexc1366 unwind label %bb.bat

.noexc1366:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i1291
  %i.fvh = load ptr, ptr %19, align 8, !tbaa !39, !noalias !1358 ; 3 uses
  store ptr %i.fvh, ptr %77, align 8, !tbaa !39, !alias.scope !1355, !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !1358
  %i.fvi = icmp eq ptr %i.fvh, null
  br i1 %i.fvi, label %_ZN5arrow6StatusD2Ev.exit53.i1293, label %_ZN5arrow6StatusD2Ev.exit1290.thread1780

_ZN5arrow6StatusD2Ev.exit1290.thread1780:         ; preds = %.noexc1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  store ptr %i.fvh, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28, !noalias !1352
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit53.i1293:                ; preds = %.noexc1366
  %i.fvj = load i64, ptr %i.j, align 8, !tbaa !288, !noalias !1358
  %i.fvk = icmp sgt i64 %i.fvj, 0
  %i.fvl = load ptr, ptr %i.ftt, align 8, !tbaa !115, !noalias !1358 ; 3 uses
  br i1 %i.fvk, label %bb.ayx, label %bb.azo

bb.ayx:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit53.i1293
  %i.fvm = getelementptr inbounds nuw i8, ptr %i.fvl, i64 40
  %i.fvn = load ptr, ptr %i.fvm, align 8, !tbaa !45, !noalias !1358
  %i.fvo = getelementptr inbounds nuw i8, ptr %i.fvn, i64 16
  %i.fvp = load ptr, ptr %i.fvo, align 8, !tbaa !33, !noalias !1358
  %i.fvq = getelementptr inbounds nuw i8, ptr %i.fvp, i64 9
  %i.fvr = load i8, ptr %i.fvq, align 1, !tbaa !346, !range !187, !noalias !1358, !noundef !183
  %i.fvs = trunc nuw i8 %i.fvr to i1
  br i1 %i.fvs, label %bb.ayz, label %bb.ayy

bb.ayy:                                           ; preds = %bb.ayx
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %77, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.13)
          to label %_ZN5arrow6StatusD2Ev.exit1290 unwind label %bb.bat

bb.ayz:                                           ; preds = %bb.ayx
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28, !noalias !1358
  %i.fvt = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fvu = load ptr, ptr %i.fvt, align 8, !tbaa !182, !noalias !1358, !nonnull !183, !align !184
  %i.fvv = getelementptr inbounds nuw i8, ptr %i.fvu, i64 16
  %i.fvw = load ptr, ptr %i.fvv, align 8, !tbaa !364, !noalias !1358
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %20, i64 noundef %i.fva, ptr noundef %i.fvw)
          to label %.noexc1368 unwind label %bb.bat

.noexc1368:                                       ; preds = %bb.ayz
  %i.fvx = load ptr, ptr %20, align 8, !tbaa !39, !noalias !1358
  %i.fvy = icmp eq ptr %i.fvx, null               ; 2 uses
  br i1 %i.fvy, label %bb.azc, label %bb.aza, !prof !256

bb.aza:                                           ; preds = %.noexc1368
  store ptr null, ptr %77, align 8, !tbaa !39, !alias.scope !1355, !noalias !1352
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i1331 unwind label %bb.azb, !noalias !1352

bb.azb:                                           ; preds = %bb.aza
  %i.fvz = landingpad { ptr, i32 }
          cleanup
  br label %bb.azn

bb.azc:                                           ; preds = %.noexc1368
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !1358
  call void @llvm.experimental.noalias.scope.decl(metadata !1360), !noalias !1352
  call void @llvm.experimental.noalias.scope.decl(metadata !1363), !noalias !1352
  %i.fwa = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.fwb = load i64, ptr %i.fwa, align 8, !tbaa !351, !noalias !1366 ; 2 uses
  store i64 %i.fwb, ptr %21, align 8, !tbaa !351, !alias.scope !1367, !noalias !1358
  store ptr null, ptr %i.fwa, align 8, !tbaa !351, !noalias !1366
  %i.fwc = getelementptr inbounds nuw i8, ptr %.tr1790, i64 56
  %i.fwd = load ptr, ptr %i.fwc, align 8, !tbaa !1368, !noalias !1358 ; 2 uses
  %.cast.i1338 = inttoptr i64 %i.fwb to ptr
  %i.fwe = getelementptr inbounds nuw i8, ptr %.cast.i1338, i64 16
  %i.fwf = load ptr, ptr %i.fwe, align 8, !noalias !1358
  %i.fwg = load i64, ptr %i.fwd, align 8, !tbaa !288, !noalias !1358
  %i.fwh = load ptr, ptr %i.ftt, align 8, !tbaa !115, !noalias !1358
  %i.fwi = getelementptr inbounds nuw i8, ptr %i.fwh, i64 16 ; 2 uses
  %i.fwj = load i64, ptr %i.fwi, align 8, !tbaa !138, !noalias !1358
  %.not87.i1339 = icmp slt i64 %i.fwj, 0
  br i1 %.not87.i1339, label %._crit_edge.i1343, label %.lr.ph.i1340

._crit_edge.i1343:                                ; preds = %.lr.ph.i1340, %bb.azc
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28, !noalias !1358
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %.noexc.i1347 unwind label %bb.azm, !noalias !1358

.noexc.i1347:                                     ; preds = %._crit_edge.i1343
  %i.fwk = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.fwl = load ptr, ptr %i.fwk, align 8, !tbaa !118, !noalias !1358 ; 8 uses
  %i.fwm = load <2 x ptr>, ptr %76, align 16, !tbaa !119, !noalias !1358
  %i.fwn = load <2 x ptr>, ptr %18, align 16, !tbaa !119, !noalias !1358
  store <2 x ptr> %i.fwn, ptr %76, align 16, !tbaa !119, !noalias !1358
  store <2 x ptr> %i.fwm, ptr %18, align 16, !tbaa !119, !noalias !1358
  %.not.i.i.i.i54.i1348 = icmp eq ptr %i.fwl, null
  br i1 %.not.i.i.i.i54.i1348, label %bb.azj, label %bb.azd

bb.azd:                                           ; preds = %.noexc.i1347
  %i.fwo = getelementptr inbounds nuw i8, ptr %i.fwl, i64 8 ; 4 uses
  %i.fwp = load atomic i64, ptr %i.fwo acquire, align 8, !noalias !1358 ; 2 uses
  %i.fwq = icmp eq i64 %i.fwp, 4294967297
  %i.fwr = trunc i64 %i.fwp to i32                ; 2 uses
  br i1 %i.fwq, label %bb.aze, label %bb.azf

bb.aze:                                           ; preds = %bb.azd
  store i32 0, ptr %i.fwo, align 8, !tbaa !125, !noalias !1358
  %i.fws = getelementptr inbounds nuw i8, ptr %i.fwl, i64 12
  store i32 0, ptr %i.fws, align 4, !tbaa !127, !noalias !1358
  %i.fwt = load ptr, ptr %i.fwl, align 8, !tbaa !55, !noalias !1358
  %i.fwu = getelementptr inbounds nuw i8, ptr %i.fwt, i64 16
  %i.fwv = load ptr, ptr %i.fwu, align 8, !noalias !1358
  call void %i.fwv(ptr noundef nonnull align 8 dereferenceable(16) %i.fwl) #28, !noalias !1358, !inline_history !1371
  %i.fww = load ptr, ptr %i.fwl, align 8, !tbaa !55, !noalias !1358
  %i.fwx = getelementptr inbounds nuw i8, ptr %i.fww, i64 24
  %i.fwy = load ptr, ptr %i.fwx, align 8, !noalias !1358
  call void %i.fwy(ptr noundef nonnull align 8 dereferenceable(16) %i.fwl) #28, !noalias !1358, !inline_history !1371
  br label %bb.azj

bb.azf:                                           ; preds = %bb.azd
  %i.fwz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i.i.i.i.i.i1349 = icmp eq i8 %i.fwz, 0
  br i1 %.not.i.i.i.i.i.i1349, label %bb.azh, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
  %i.fxa = add nsw i32 %i.fwr, -1
  store i32 %i.fxa, ptr %i.fwo, align 8, !tbaa !3, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1350

bb.azh:                                           ; preds = %bb.azf
  %i.fxb = atomicrmw volatile add ptr %i.fwo, i32 -1 acq_rel, align 4, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1350

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1350: ; preds = %bb.azh, %bb.azg
  %.0.i.i.i.i.i.i.i1351 = phi i32 [ %i.fwr, %bb.azg ], [ %i.fxb, %bb.azh ]
  %i.fxc = icmp eq i32 %.0.i.i.i.i.i.i.i1351, 1
  br i1 %i.fxc, label %bb.azi, label %bb.azj, !prof !129

bb.azi:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1350
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fwl) #28, !noalias !1358
  br label %bb.azj

.lr.ph.i1340:                                     ; preds = %bb.azc, %.lr.ph.i1340
  %indvars.iv.i1341 = phi i64 [ %indvars.iv.next.i1342, %.lr.ph.i1340 ], [ 0, %bb.azc ] ; 4 uses
  %i.fxd = getelementptr inbounds nuw [8 x i8], ptr %i.fwd, i64 %indvars.iv.i1341
  %i.fxe = load i64, ptr %i.fxd, align 8, !tbaa !288, !noalias !1358
  %i.fxf = sub nsw i64 %i.fxe, %i.fwg
  %i.fxg = getelementptr inbounds nuw [8 x i8], ptr %i.fwf, i64 %indvars.iv.i1341
  store i64 %i.fxf, ptr %i.fxg, align 8, !tbaa !288, !noalias !1358
  %indvars.iv.next.i1342 = add nuw nsw i64 %indvars.iv.i1341, 1
  %i.fxh = load i64, ptr %i.fwi, align 8, !tbaa !138, !noalias !1358
  %.not.not.i = icmp sgt i64 %i.fxh, %indvars.iv.i1341
  br i1 %.not.not.i, label %.lr.ph.i1340, label %._crit_edge.i1343, !llvm.loop !1372

bb.azj:                                           ; preds = %bb.azi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i1350, %bb.aze, %.noexc.i1347
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28, !noalias !1358
  %i.fxi = load ptr, ptr %21, align 8, !tbaa !351, !noalias !1358 ; 3 uses
  %.not.i55.i1352 = icmp eq ptr %i.fxi, null
  br i1 %.not.i55.i1352, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1354, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1353

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1353: ; preds = %bb.azj
  %i.fxj = load ptr, ptr %i.fxi, align 8, !tbaa !55, !noalias !1358
  %i.fxk = getelementptr inbounds nuw i8, ptr %i.fxj, i64 8
  %i.fxl = load ptr, ptr %i.fxk, align 8, !noalias !1358
  call void %i.fxl(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fxi) #28, !noalias !1358, !inline_history !1373
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1354

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1354: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i1353, %bb.azj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !1358
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i1331

_ZN5arrow6StatusC2ERKS0_.exit.i1331:              ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i1354, %bb.aza
  %i.fxm = load ptr, ptr %20, align 8, !tbaa !39, !noalias !1358 ; 2 uses
  %i.fxn = icmp eq ptr %i.fxm, null
  br i1 %i.fxn, label %bb.azk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1332, !prof !256

bb.azk:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i1331
  %i.fxo = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fxp = load ptr, ptr %i.fxo, align 8, !tbaa !351, !noalias !1358 ; 3 uses
  %.not.i.i.i.i56.i1334 = icmp eq ptr %i.fxp, null
  br i1 %.not.i.i.i.i56.i1334, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1335

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1335: ; preds = %bb.azk
  %i.fxq = load ptr, ptr %i.fxp, align 8, !tbaa !55, !noalias !1352
  %i.fxr = getelementptr inbounds nuw i8, ptr %i.fxq, i64 8
  %i.fxs = load ptr, ptr %i.fxr, align 8, !noalias !1352
  call void %i.fxs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fxp) #28, !noalias !1352, !inline_history !1374
  %.pr.pre.i.i1336 = load ptr, ptr %20, align 8, !tbaa !39, !noalias !1358 ; 2 uses
  %.not.i.i.i1337 = icmp eq ptr %.pr.pre.i.i1336, null
  br i1 %.not.i.i.i1337, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1332, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1332: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1335, %_ZN5arrow6StatusC2ERKS0_.exit.i1331
  %i.fxt = phi ptr [ %.pr.pre.i.i1336, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1335 ], [ %i.fxm, %_ZN5arrow6StatusC2ERKS0_.exit.i1331 ]
  %i.fxu = getelementptr inbounds nuw i8, ptr %i.fxt, i64 1
  %i.fxv = load i8, ptr %i.fxu, align 1, !tbaa !257, !range !187, !noalias !1352, !noundef !183
  %i.fxw = trunc nuw i8 %i.fxv to i1
  br i1 %i.fxw, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333, label %bb.azl

bb.azl:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1332
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #28, !noalias !1352
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333: ; preds = %bb.azl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i1332, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i1335, %bb.azk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !1358
  br i1 %i.fvy, label %_ZN5arrow6StatusD2Ev.exit1290.thread1778, label %_ZN5arrow6StatusD2Ev.exit1290

bb.azm:                                           ; preds = %._crit_edge.i1343
  %i.fxx = landingpad { ptr, i32 }
          cleanup
  %i.fxy = load ptr, ptr %21, align 8, !tbaa !351, !noalias !1358 ; 3 uses
  %.not.i57.i1344 = icmp eq ptr %i.fxy, null
  br i1 %.not.i57.i1344, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit59.i1346, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i58.i1345

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i58.i1345: ; preds = %bb.azm
  %i.fxz = load ptr, ptr %i.fxy, align 8, !tbaa !55, !noalias !1358
  %i.fya = getelementptr inbounds nuw i8, ptr %i.fxz, i64 8
  %i.fyb = load ptr, ptr %i.fya, align 8, !noalias !1358
  call void %i.fyb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fxy) #28, !noalias !1358, !inline_history !1373
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit59.i1346

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit59.i1346: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i58.i1345, %bb.azm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !1358
  br label %bb.azn

bb.azn:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit59.i1346, %bb.azb
  %.pn47.i1330 = phi { ptr, i32 } [ %i.fvz, %bb.azb ], [ %i.fxx, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit59.i1346 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #28, !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !1358
  br label %bb.bas

bb.azo:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit53.i1293
  %i.fyc = getelementptr inbounds nuw i8, ptr %i.fvl, i64 32
  %i.fyd = load i64, ptr %i.fyc, align 8, !tbaa !647, !noalias !1358 ; 3 uses
  %i.fye = icmp sgt i64 %i.fyd, 0
  %.phi.trans.insert.i1294 = getelementptr inbounds nuw i8, ptr %i.fvl, i64 40
  %.pre.i1295 = load ptr, ptr %.phi.trans.insert.i1294, align 8, !tbaa !45, !noalias !1358 ; 3 uses
  %.phi.trans.insert91.i1296 = getelementptr inbounds nuw i8, ptr %.pre.i1295, i64 16
  %.pre92.i1297 = load ptr, ptr %.phi.trans.insert91.i1296, align 8, !tbaa !33, !noalias !1358 ; 3 uses
  br i1 %i.fye, label %._crit_edge90.i1309, label %bb.azp

bb.azp:                                           ; preds = %bb.azo
  %i.fyf = getelementptr inbounds nuw i8, ptr %.pre92.i1297, i64 24
  %i.fyg = load i64, ptr %i.fyf, align 8, !tbaa !46, !noalias !1358
  %i.fyh = icmp sgt i64 %i.fyg, %i.fva
  br i1 %i.fyh, label %._crit_edge90.i1309, label %bb.bah

._crit_edge90.i1309:                              ; preds = %bb.azp, %bb.azo
  store ptr %.pre92.i1297, ptr %22, align 8, !tbaa !33, !noalias !1358
  %i.fyi = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.fyj = getelementptr inbounds nuw i8, ptr %.pre.i1295, i64 24
  %i.fyk = load ptr, ptr %i.fyj, align 8, !tbaa !118, !noalias !1358 ; 3 uses
  store ptr %i.fyk, ptr %i.fyi, align 8, !tbaa !118, !noalias !1358
  %.not.i.i.i60.i1310 = icmp eq ptr %i.fyk, null
  br i1 %.not.i.i.i60.i1310, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1312, label %bb.azq

bb.azq:                                           ; preds = %._crit_edge90.i1309
  %i.fyl = getelementptr inbounds nuw i8, ptr %i.fyk, i64 8 ; 3 uses
  %i.fym = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i.i.i.i61.i1311 = icmp eq i8 %i.fym, 0
  br i1 %.not.i.i.i.i61.i1311, label %bb.azs, label %bb.azr

bb.azr:                                           ; preds = %bb.azq
  %i.fyn = load i32, ptr %i.fyl, align 4, !tbaa !3, !noalias !1358
  %i.fyo = add nsw i32 %i.fyn, 1
  store i32 %i.fyo, ptr %i.fyl, align 4, !tbaa !3, !noalias !1358
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1312

bb.azs:                                           ; preds = %bb.azq
  %i.fyp = atomicrmw volatile add ptr %i.fyl, i32 1 acq_rel, align 4, !noalias !1358 ; 0 uses
  %.pre93.i1327 = load ptr, ptr %i.ftt, align 8, !tbaa !115, !noalias !1358
  %.phi.trans.insert94.i1328 = getelementptr inbounds nuw i8, ptr %.pre93.i1327, i64 32
  %.pre95.i1329 = load i64, ptr %.phi.trans.insert94.i1328, align 8, !tbaa !647, !noalias !1358
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1312

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1312: ; preds = %bb.azs, %bb.azr, %._crit_edge90.i1309
  %i.fyq = phi i64 [ %i.fyd, %._crit_edge90.i1309 ], [ %i.fyd, %bb.azr ], [ %.pre95.i1329, %bb.azs ]
  %i.fyr = shl i64 %i.fyq, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1358
  store i64 %i.fyr, ptr %i.h, align 8, !tbaa !288, !noalias !1375
  store i64 %i.fva, ptr %i.i, align 8, !tbaa !288, !noalias !1375
  %i.fys = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc62.i1316 unwind label %bb.bag, !noalias !1358 ; 4 uses

.noexc62.i1316:                                   ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1312
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.fys, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.azt unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i1317, !noalias !1378

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i1317: ; preds = %.noexc62.i1316
  %i.fyt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fys, i64 noundef 96) #30, !noalias !1378
  br label %.body.i1313

bb.azt:                                           ; preds = %.noexc62.i1316
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.fys, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1358
  store ptr %i.fyu, ptr %76, align 16, !tbaa !351, !noalias !1358
  %i.fyv = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.fyw = load ptr, ptr %i.fyv, align 8, !tbaa !118, !noalias !1358 ; 8 uses
  store ptr %i.fys, ptr %i.fyv, align 8, !tbaa !118, !noalias !1358
  %.not.i.i.i.i63.i1318 = icmp eq ptr %i.fyw, null
  br i1 %.not.i.i.i.i63.i1318, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1322, label %bb.azu

bb.azu:                                           ; preds = %bb.azt
  %i.fyx = getelementptr inbounds nuw i8, ptr %i.fyw, i64 8 ; 4 uses
  %i.fyy = load atomic i64, ptr %i.fyx acquire, align 8, !noalias !1358 ; 2 uses
  %i.fyz = icmp eq i64 %i.fyy, 4294967297
  %i.fza = trunc i64 %i.fyy to i32                ; 2 uses
  br i1 %i.fyz, label %bb.azv, label %bb.azw

bb.azv:                                           ; preds = %bb.azu
  store i32 0, ptr %i.fyx, align 8, !tbaa !125, !noalias !1358
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.fyw, i64 12
  store i32 0, ptr %i.fzb, align 4, !tbaa !127, !noalias !1358
  %i.fzc = load ptr, ptr %i.fyw, align 8, !tbaa !55, !noalias !1358
  %i.fzd = getelementptr inbounds nuw i8, ptr %i.fzc, i64 16
  %i.fze = load ptr, ptr %i.fzd, align 8, !noalias !1358
  call void %i.fze(ptr noundef nonnull align 8 dereferenceable(16) %i.fyw) #28, !noalias !1358, !inline_history !1381
  %i.fzf = load ptr, ptr %i.fyw, align 8, !tbaa !55, !noalias !1358
  %i.fzg = getelementptr inbounds nuw i8, ptr %i.fzf, i64 24
  %i.fzh = load ptr, ptr %i.fzg, align 8, !noalias !1358
  call void %i.fzh(ptr noundef nonnull align 8 dereferenceable(16) %i.fyw) #28, !noalias !1358, !inline_history !1381
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1322

bb.azw:                                           ; preds = %bb.azu
  %i.fzi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i.i.i.i.i64.i1319 = icmp eq i8 %i.fzi, 0
  br i1 %.not.i.i.i.i.i64.i1319, label %bb.azy, label %bb.azx

bb.azx:                                           ; preds = %bb.azw
  %i.fzj = add nsw i32 %i.fza, -1
  store i32 %i.fzj, ptr %i.fyx, align 8, !tbaa !3, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65.i1320

bb.azy:                                           ; preds = %bb.azw
  %i.fzk = atomicrmw volatile add ptr %i.fyx, i32 -1 acq_rel, align 4, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65.i1320

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65.i1320: ; preds = %bb.azy, %bb.azx
  %.0.i.i.i.i.i.i66.i1321 = phi i32 [ %i.fza, %bb.azx ], [ %i.fzk, %bb.azy ]
  %i.fzl = icmp eq i32 %.0.i.i.i.i.i.i66.i1321, 1
  br i1 %i.fzl, label %bb.azz, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1322, !prof !129

bb.azz:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65.i1320
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fyw) #28, !noalias !1358
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1322

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1322: ; preds = %bb.azz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65.i1320, %bb.azv, %bb.azt
  %i.fzm = load ptr, ptr %i.fyi, align 8, !tbaa !118, !noalias !1358 ; 8 uses
  %.not.i.i69.i1323 = icmp eq ptr %i.fzm, null
  br i1 %.not.i.i69.i1323, label %_ZN5arrow6StatusD2Ev.exit1290.thread1778, label %bb.baa
end_hunk_2
