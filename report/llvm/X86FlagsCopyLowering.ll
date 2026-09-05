Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FlagsCopyLowering?download=true
inline.NumInlined: 1866
inline.NumDeleted: 1070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %.not.i.i.i464 = icmp eq ptr %i.aeo, %i.aep
  br i1 %.not.i.i.i464, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.loopexit
  store ptr %i.adu, ptr %i.aeo, align 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  store i8 0, ptr %.sroa.514.0..sroa_idx.i, align 8
  %i.aeq = load ptr, ptr %i.jm, align 8, !tbaa !242
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24 ; 2 uses
  store ptr %i.aer, ptr %i.jm, align 8, !tbaa !242
  br label %_ZN4llvm11df_iteratorINS_7InverseIPNS_17MachineBasicBlockEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit

bb.cq:                                            ; preds = %.loopexit
  %i.aes = load ptr, ptr %i.jk, align 8, !tbaa !243 ; 5 uses
  %i.aet = ptrtoint ptr %i.aeo to i64
  %i.aeu = ptrtoint ptr %i.aes to i64             ; 2 uses
  %i.aev = sub i64 %i.aet, %i.aeu                 ; 3 uses
  %i.aew = icmp eq i64 %i.aev, 9223372036854775800
  br i1 %i.aew, label %bb.cr, label %_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.cq
  %i.aex = sdiv exact i64 %i.aev, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i.i466 = call i64 @llvm.umax.i64(i64 %i.aex, i64 1)
  %i.aey = add nsw i64 %.sroa.speculated.i.i.i.i.i466, %i.aex ; 2 uses
  %i.aez = icmp ult i64 %i.aey, %i.aex
  %i.afa = call i64 @llvm.umin.i64(i64 %i.aey, i64 384307168202282325)
  %i.afb = select i1 %i.aez, i64 384307168202282325, i64 %i.afa ; 3 uses
  %.not.i.i.i.i.i467 = icmp ne i64 %i.afb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i467)
  %i.afc = mul nuw nsw i64 %i.afb, 24
  %i.afd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afc) #18 ; 5 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.aev ; 2 uses
  store ptr %i.adu, ptr %i.afe, align 8
  %.sroa.514.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  store i8 0, ptr %.sroa.514.0..sroa_idx15.i, align 8
  %.not10.i.i.i.i.i.i.i468 = icmp eq ptr %i.aes, %i.aeo
  br i1 %.not10.i.i.i.i.i.i.i468, label %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i9.i

.lr.ph.i.i.i.i.i.i9.i:                            ; preds = %_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i9.i
  %.012.i.i.i.i.i.i.i469 = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i.i9.i ], [ %i.afd, %_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i470 = phi ptr [ %i.aff, %.lr.ph.i.i.i.i.i.i9.i ], [ %i.aes, %_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i469, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i470, i64 24, i1 false), !alias.scope !642
  %i.aff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i470, i64 24 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i469, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.aff, %i.aeo
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i9.i, !llvm.loop !2

_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i9.i, %_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i471 = phi ptr [ %i.afd, %_ZNKSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.afg, %.lr.ph.i.i.i.i.i.i9.i ]
  %i.afh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i471, i64 24 ; 2 uses
  %.not.i23.i.i.i.i472 = icmp eq ptr %i.aes, null
  br i1 %.not.i23.i.i.i.i472, label %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %i.afi = load ptr, ptr %i.jr, align 8, !tbaa !254
  %i.afj = ptrtoint ptr %i.afi to i64
  %i.afk = sub i64 %i.afj, %i.aeu
  call void @_ZdlPvm(ptr noundef nonnull %i.aes, i64 noundef %i.afk) #19
  br label %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.cs, %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.afd, ptr %i.jk, align 8, !tbaa !243
  store ptr %i.afh, ptr %i.jm, align 8, !tbaa !242
  %i.afl = getelementptr inbounds nuw [24 x i8], ptr %i.afd, i64 %i.afb
  store ptr %i.afl, ptr %i.jr, align 8, !tbaa !254
  br label %_ZN4llvm11df_iteratorINS_7InverseIPNS_17MachineBasicBlockEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit

.thread.i.loopexit:                               ; preds = %.critedge.i462.backedge
  %.pre860.a = load ptr, ptr %i.jm, align 8, !tbaa !242
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %bb.cn
  %i.afm = phi ptr [ %.pre860.a, %.thread.i.loopexit ], [ %i.adb, %bb.cn ]
  %i.afn = getelementptr inbounds i8, ptr %i.afm, i64 -24 ; 4 uses
  store ptr %i.afn, ptr %i.jm, align 8, !tbaa !242
  %i.afo = load ptr, ptr %i.jk, align 8, !tbaa !258
  %i.afp = icmp eq ptr %i.afo, %i.afn
  br i1 %i.afp, label %_ZN4llvm11df_iteratorINS_7InverseIPNS_17MachineBasicBlockEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit, label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit, !llvm.loop !3

_ZN4llvm11df_iteratorINS_7InverseIPNS_17MachineBasicBlockEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit: ; preds = %.thread.i, %bb.cp, %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i
  %i.afq = phi ptr [ %i.afh, %_ZNSt6vectorISt4pairIPN4llvm17MachineBasicBlockESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i ], [ %i.aer, %bb.cp ], [ %i.afn, %.thread.i ]
  br label %bb.ca, !llvm.loop !423

bb.ct:                                            ; preds = %_ZN4llvm11df_iteratorINS_7InverseIPNS_17MachineBasicBlockEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit272, %_ZN4llvm11df_iteratorINS_7InverseIPNS_17MachineBasicBlockEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.afr = load ptr, ptr %i.iv, align 8, !tbaa !85 ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.iw
  br i1 %i.afs, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef %i.afr) #16
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i: ; preds = %bb.cu, %bb.ct
  %i.aft = load i32, ptr %i.jf, align 4, !tbaa !238 ; 2 uses
  %i.afu = icmp eq i32 %i.aft, 0
  br i1 %i.afu, label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i
  %i.afv = load ptr, ptr %16, align 8, !tbaa !236
  %i.afw = zext i32 %i.aft to i64                 ; 2 uses
  %i.afx = shl nuw nsw i64 %i.afw, 3
  %i.afy = add nuw nsw i64 %i.afw, 31
  %i.afz = lshr i64 %i.afy, 3
  %i.aga = and i64 %i.afz, 1073741820
  %i.agb = add nuw nsw i64 %i.aga, %i.afx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.afv, i64 noundef %i.agb, i64 noundef 8) #16
  br label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit

_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %.not193 = icmp eq ptr %i.ju, %i.iu
  br i1 %.not193, label %._crit_edge723, label %bb.ae, !llvm.loop !424

._crit_edge723:                                   ; preds = %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit
  %.pre861.a = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  %.pre862.a = load i32, ptr %i.ir, align 8, !tbaa !86 ; 2 uses
  %i.agc = zext i32 %.pre862.a to i64
  %.idx.i = shl nuw nsw i64 %i.agc, 3
  %i.agd = getelementptr inbounds nuw i8, ptr %.pre861.a, i64 %.idx.i
  %.not9.i = icmp eq i32 %.pre862.a, 0
  br i1 %.not9.i, label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge723, %.lr.ph.i
  %.010.i = phi ptr [ %i.agf, %.lr.ph.i ], [ %.pre861.a, %._crit_edge723 ] ; 2 uses
  %i.age = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE6removeERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(8) %.010.i) ; 0 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i295 = icmp eq ptr %i.agf, %i.agd
  br i1 %.not.i295, label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre863.a = load ptr, ptr %i.ip, align 8, !tbaa !85
  br label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit

_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit: ; preds = %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit.loopexit, %._crit_edge723
  %i.agg = phi ptr [ %.pre863.a, %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit.loopexit ], [ %.pre861.a, %._crit_edge723 ] ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.iq
  br i1 %i.agh, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i296, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit
  call void @free(ptr noundef %i.agg) #16
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i296

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i296: ; preds = %bb.ad, %bb.cw, %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE12set_subtractINS_14SmallSetVectorIS2_Lj4EEEEEvRKT_.exit
  %i.agi = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !238 ; 2 uses
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit297, label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i296
  %i.agl = load ptr, ptr %15, align 8, !tbaa !236
  %i.agm = zext i32 %i.agj to i64                 ; 2 uses
  %i.agn = shl nuw nsw i64 %i.agm, 3
  %i.ago = add nuw nsw i64 %i.agm, 31
  %i.agp = lshr i64 %i.ago, 3
  %i.agq = and i64 %i.agp, 1073741820
  %i.agr = add nuw nsw i64 %i.agq, %i.agn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.agl, i64 noundef %i.agr, i64 noundef 8) #16
  br label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit297

_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit297: ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i296, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %.pre864 = load ptr, ptr %i.bn, align 8, !tbaa !85
  %.pre866 = load i32, ptr %i.bp, align 8, !tbaa !86
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit297, %._crit_edge
  %i.ags = phi i32 [ %.pre866, %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit297 ], [ %.pre867, %._crit_edge ] ; 2 uses
  %i.agt = phi ptr [ %.pre864, %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit297 ], [ %.pre865.a, %._crit_edge ] ; 2 uses
  %i.agu = zext i32 %i.ags to i64
  %.idx773 = shl nuw nsw i64 %i.agu, 3
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 %.idx773
  %.not194765 = icmp eq i32 %i.ags, 0
  br i1 %.not194765, label %._crit_edge769, label %.lr.ph768

.lr.ph768:                                        ; preds = %bb.cy
  %.ptr64.i = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.ahj = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aho = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ahq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ahs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aht = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ahv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ahw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ahy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aia = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aib = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aic = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.aid = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aif = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.df

._crit_edge769:                                   ; preds = %"_ZN4llvm10scope_exitIZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERNS_15MachineFunctionEE3$_1ED2Ev.exit", %bb.cy
  %i.aig = load ptr, ptr %14, align 8, !tbaa !85  ; 2 uses
  %i.aih = icmp eq ptr %i.aig, %i.br
  br i1 %i.aih, label %_ZN4llvm25ReversePostOrderTraversalIPNS_15MachineFunctionENS_11GraphTraitsIS2_EEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge769
  call void @free(ptr noundef %i.aig) #16
  br label %_ZN4llvm25ReversePostOrderTraversalIPNS_15MachineFunctionENS_11GraphTraitsIS2_EEED2Ev.exit

_ZN4llvm25ReversePostOrderTraversalIPNS_15MachineFunctionENS_11GraphTraitsIS2_EEED2Ev.exit: ; preds = %._crit_edge769, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.aii = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 2 uses
  %i.aij = icmp eq ptr %i.aii, %i.bo
  br i1 %i.aij, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i298, label %bb.da

bb.da:                                            ; preds = %_ZN4llvm25ReversePostOrderTraversalIPNS_15MachineFunctionENS_11GraphTraitsIS2_EEED2Ev.exit
  call void @free(ptr noundef %i.aii) #16
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i298

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i298: ; preds = %bb.da, %_ZN4llvm25ReversePostOrderTraversalIPNS_15MachineFunctionENS_11GraphTraitsIS2_EEED2Ev.exit
  %i.aik = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !238 ; 2 uses
  %i.aim = icmp eq i32 %i.ail, 0
  br i1 %i.aim, label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit299, label %bb.db

bb.db:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i298
  %i.ain = load ptr, ptr %13, align 8, !tbaa !236
  %i.aio = zext i32 %i.ail to i64                 ; 2 uses
  %i.aip = shl nuw nsw i64 %i.aio, 3
  %i.aiq = add nuw nsw i64 %i.aio, 31
  %i.air = lshr i64 %i.aiq, 3
  %i.ais = and i64 %i.air, 1073741820
  %i.ait = add nuw nsw i64 %i.ais, %i.aip
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ain, i64 noundef %i.ait, i64 noundef 8) #16
  br label %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit299

_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit299: ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit.i298, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %.not.i300 = icmp eq ptr %.sroa.0542.0, null
  br i1 %.not.i300, label %_ZNSt10unique_ptrIN4llvm20MachineDominatorTreeESt14default_deleteIS1_EED2Ev.exit303, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit299
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0542.0, i64 112
  call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.aiu) #16
  %i.aiv = getelementptr inbounds nuw i8, ptr %.sroa.0542.0, i64 24
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !85 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.0542.0, i64 40
  %i.aiy = icmp eq ptr %i.aiw, %i.aix
  br i1 %i.aiy, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EED2Ev.exit.i.i.i301, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @free(ptr noundef %i.aiw) #16
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EED2Ev.exit.i.i.i301

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EED2Ev.exit.i.i.i301: ; preds = %bb.dd, %bb.dc
  %i.aiz = load ptr, ptr %.sroa.0542.0, align 8, !tbaa !85 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.0542.0, i64 16
  %i.ajb = icmp eq ptr %i.aiz, %i.aja
  br i1 %i.ajb, label %_ZNKSt14default_deleteIN4llvm20MachineDominatorTreeEEclEPS1_.exit.i302, label %bb.de

bb.de:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EED2Ev.exit.i.i.i301
  call void @free(ptr noundef %i.aiz) #16
  br label %_ZNKSt14default_deleteIN4llvm20MachineDominatorTreeEEclEPS1_.exit.i302

_ZNKSt14default_deleteIN4llvm20MachineDominatorTreeEEclEPS1_.exit.i302: ; preds = %bb.de, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EED2Ev.exit.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0542.0, i64 noundef 208) #19
  br label %_ZNSt10unique_ptrIN4llvm20MachineDominatorTreeESt14default_deleteIS1_EED2Ev.exit303

bb.df:                                            ; preds = %.lr.ph768, %"_ZN4llvm10scope_exitIZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERNS_15MachineFunctionEE3$_1ED2Ev.exit"
  %.0180766 = phi ptr [ %i.agt, %.lr.ph768 ], [ %i.bnx, %"_ZN4llvm10scope_exitIZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERNS_15MachineFunctionEE3$_1ED2Ev.exit" ] ; 2 uses
  %i.ajc = load ptr, ptr %.0180766, align 8, !tbaa !232 ; 9 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 24
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !239 ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 32 ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !231
  %i.ajh = load ptr, ptr %0, align 8, !tbaa !60
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 36
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !64
  %i.ajk = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ajh, i32 %i.ajj) #16 ; 10 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 52
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !83
  %.not195 = icmp eq i32 %i.ajm, 20
  br i1 %.not195, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #17
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.ajn = load ptr, ptr %i.ajf, align 8, !tbaa !231
  %i.ajo = load i32, ptr %i.ajn, align 8
  %i.ajp = and i32 %i.ajo, 83886080
  %i.ajq = icmp eq i32 %i.ajp, 83886080
  br i1 %i.ajq, label %bb.hf, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajk, i64 24
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !239 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajk, i64 72
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !260
  store i64 %i.aju, ptr %21, align 8, !tbaa !260
  %i.ajv = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.ajs, i32 28, i64 -1) #16
  br i1 %i.ajv, label %.lr.ph727, label %.critedge4

.lr.ph727:                                        ; preds = %bb.di, %"_ZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES7_.exit355.thread"
  %.sroa.082.0725 = phi ptr [ %i.aqn, %"_ZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES7_.exit355.thread" ], [ %i.ajk, %bb.di ] ; 6 uses
  %.0181724 = phi ptr [ %.0.lcssa.i, %"_ZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES7_.exit355.thread" ], [ %i.ajs, %bb.di ] ; 8 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0181724, i64 72 ; 2 uses
  %i.ajx = load i32, ptr %i.ajw, align 8, !tbaa !86
  %.not.i.i304 = icmp eq i32 %i.ajx, 0
  br i1 %.not.i.i304, label %.critedge4, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph727
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0181724, i64 56
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !230 ; 3 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %.sroa.082.0725, %i.ajz
  br i1 %.not8.i.i.i.i.i.i.i, label %"_ZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES7_.exit.thread", label %.lr.ph.i.i.i.i.i.i.i305

.lr.ph.i.i.i.i.i.i.i305:                          ; preds = %bb.dj, %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i.i.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i.i.i.i.i.i.i ], [ %.sroa.082.0725, %bb.dj ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.0.i.i.i.i.i.i, align 8, !noalias !643
  %i.aka = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.akb = inttoptr i64 %i.aka to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akb) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.akb, align 8, !noalias !643
  %i.akc = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.akc, 0
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i305
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 44
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !617, !noalias !643
  %i.akf = and i32 %i.ake, 4
  %.not45.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.akf, 0
  br i1 %.not45.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.akh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !643
  %i.akg = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.akh = inttoptr i64 %i.akg to ptr             ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 44
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !617, !noalias !643
  %i.akk = and i32 %i.akj, 4
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.akk, 0
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !431

_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i305
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.akb, %.lr.ph.i.i.i.i.i.i.i305 ], [ %i.akb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, %i.ajc
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.thread.i.i.i.i.i.i.i", label %bb.dk

bb.dk:                                            ; preds = %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i.i.i.i.i.i.i.i
  %i.akl = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, i32 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #16, !noalias !643
  %i.akm = icmp eq i32 %i.akl, -1
  br i1 %i.akm, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.thread.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.i.i.i.i.i.i.i": ; preds = %bb.dk
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !231, !noalias !643
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ako, null
  br i1 %.not4.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.thread.i.i.i.i.i.i.i", label %"_ZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES7_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.i.i.i.i.i.i.i", %bb.dk, %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i.i.i.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.0.i.i.i.i.i.i, align 8, !noalias !643
  %i.akp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.akq = inttoptr i64 %i.akp to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akq) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.akq, align 8, !noalias !643
  %i.akr = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i5.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.akr, 0
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_2clENS4_26MachineInstrBundleIteratorINS4_12MachineInstrELb0EEESA_EUlRS9_E_EclISt16reverse_iteratorISA_EEEbT_.exit.thread.i.i.i.i.i.i.i"
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 44
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !617, !noalias !643
  %i.aku = and i32 %i.akt, 4
  %.not45.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aku, 0
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  br i1 %.not912.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit, label %.lr.ph.i356

.lr.ph.i356:                                      ; preds = %.critedge4, %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i
  %.sroa.03.013.i = phi ptr [ %.sroa.0.1.i.i.i.i23.i, %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i ], [ %.sroa.082.0.lcssa, %.critedge4 ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.013.i, align 8, !noalias !654
  %i.aqq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.aqr = inttoptr i64 %i.aqq to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aqr) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i = load i64, ptr %i.aqr, align 8, !noalias !654
  %i.aqs = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i, 4
  %.not.i5.i.i.i.i = icmp eq i64 %i.aqs, 0
  br i1 %.not.i5.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.lr.ph.i356
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqr, i64 44
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !617, !noalias !654
  %i.aqv = and i32 %i.aqu, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.aqv, 0
  br i1 %.not45.i.i.i.i.i, label %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.aqx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.aqr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8, !noalias !654
  %i.aqw = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.aqx = inttoptr i64 %i.aqw to ptr             ; 3 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 44
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !617, !noalias !654
  %i.ara = and i32 %i.aqz, 4
  %.not4.i.i.i.i.i362 = icmp eq i32 %i.ara, 0
  br i1 %.not4.i.i.i.i.i362, label %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !431

_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.lr.ph.i356
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.aqr, %.lr.ph.i356 ], [ %i.aqr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.aqx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 9 uses
  %i.arb = call noundef i32 @_ZN4llvm3X8616getCondFromSETCCERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i.i) #16, !noalias !654 ; 2 uses
  %.not.i357 = icmp eq i32 %i.arb, 18
  br i1 %.not.i357, label %.critedge.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 52
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !83, !noalias !654
  %i.are = add i32 %i.ard, -1
  %spec.select.i.i.i358 = icmp ult i32 %i.are, 2
  br i1 %spec.select.i.i.i358, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.arf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 32
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !231, !noalias !654
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 48
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !64, !noalias !654
  %i.arj = and i64 %i.ari, 16
  %.not.not.i.i = icmp eq i64 %i.arj, 0
  br i1 %.not.not.i.i, label %bb.eb, label %.critedge.i

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.ark = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 44
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !617, !noalias !654 ; 2 uses
  %i.arm = and i32 %i.arl, 12
  %i.arn = icmp eq i32 %i.arm, 0
  %i.aro = and i32 %i.arl, 4
  %i.arp = icmp ne i32 %i.aro, 0
  %or.cond.i.i.i359 = or i1 %i.arn, %i.arp
  br i1 %or.cond.i.i.i359, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.eb
  %i.arq = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i.i, i64 noundef 1048576, i32 noundef 1) #16, !noalias !654
  br i1 %i.arq, label %.critedge.i, label %bb.ec

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i: ; preds = %bb.eb
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 16
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !251, !noalias !654
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !655, !noalias !654
  %i.arv = and i64 %i.aru, 1048576
  %.not10.i = icmp eq i64 %i.arv, 0
  br i1 %.not10.i, label %bb.ec, label %.critedge.i

bb.ec:                                            ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %.split.i
  %i.arw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 32
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !231, !noalias !654 ; 2 uses
  %i.ary = load i32, ptr %i.arx, align 8, !noalias !654
  %i.arz = and i32 %i.ary, 255
  %i.asa = icmp eq i32 %i.arz, 0
  br i1 %i.asa, label %bb.ed, label %.critedge.i

bb.ed:                                            ; preds = %bb.ec
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !64, !noalias !654 ; 2 uses
  %i.asd = icmp slt i32 %i.asc, 0
  br i1 %i.asd, label %bb.ee, label %.critedge.i

bb.ee:                                            ; preds = %bb.ed
  %i.ase = zext i32 %i.arb to i64
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %i.ase
  store i32 %i.asc, ptr %i.asf, align 4, !tbaa !30, !alias.scope !654
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ee, %bb.ed, %bb.ec, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %.split.i, %bb.ea, %_ZNKSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEdeEv.exit.i
  %i.asg = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i.i, i32 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #16, !noalias !654
  %i.ash = icmp eq i32 %i.asg, -1
  br i1 %i.ash, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i

_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i: ; preds = %.critedge.i
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 32
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !231, !noalias !654
  %.not18.i = icmp eq ptr %i.asj, null
  br i1 %.not18.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit

_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread.i: ; preds = %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i, %.critedge.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i20.i = load i64, ptr %.sroa.03.013.i, align 8, !noalias !654
  %i.ask = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i20.i, -8
  %i.asl = inttoptr i64 %i.ask to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.asl) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i21.i = load i64, ptr %i.asl, align 8, !noalias !654
  %i.asm = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i21.i, 4
  %.not.i5.i.i.i22.i = icmp eq i64 %i.asm, 0
  br i1 %.not.i5.i.i.i22.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i24.i, label %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i24.i: ; preds = %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asl, i64 44
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !617, !noalias !654
  %i.asp = and i32 %i.aso, 4
  %.not45.i.i.i.i25.i = icmp eq i32 %i.asp, 0
  br i1 %.not45.i.i.i.i25.i, label %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i24.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i
  %.sroa.0.06.i.i.i.i27.i = phi ptr [ %i.asr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i ], [ %i.asl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i24.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i28.i = load i64, ptr %.sroa.0.06.i.i.i.i27.i, align 8, !noalias !654
  %i.asq = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i28.i, -8
  %i.asr = inttoptr i64 %i.asq to ptr             ; 3 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 44
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !617, !noalias !654
  %i.asu = and i32 %i.ast, 4
  %.not4.i.i.i.i29.i = icmp eq i32 %i.asu, 0
  br i1 %.not4.i.i.i.i29.i, label %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i, !llvm.loop !431

_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i24.i, %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread.i
  %.sroa.0.1.i.i.i.i23.i = phi ptr [ %i.asl, %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread.i ], [ %i.asl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i24.i ], [ %i.asr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i26.i ] ; 2 uses
  %.not9.i361 = icmp eq ptr %.sroa.0.1.i.i.i.i23.i, %.2183.val
  br i1 %.not9.i361, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit, label %.lr.ph.i356

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit: ; preds = %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i, %_ZNSt16reverse_iteratorIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEEEppEv.exit.i, %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  store ptr %i.ahf, ptr %24, align 8, !tbaa !85
  store i32 2, ptr %i.ahh, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  store ptr %i.ahi, ptr %25, align 8, !tbaa !45
  store i32 2, ptr %i.ahj, align 8, !tbaa !46
  store i32 0, ptr %i.ahk, align 4, !tbaa !48
  store i8 1, ptr %i.ahl, align 8, !tbaa !47
  store ptr %i.aje, ptr %i.ahf, align 8
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ajk, i64 32
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8 ; 3 uses
  br label %bb.ef

bb.ef:                                            ; preds = %.critedge7.thread.thread, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit
  %i.asx = phi i32 [ %i.bbs, %.critedge7.thread.thread ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit ] ; 2 uses
  %i.asy = load ptr, ptr %24, align 8, !tbaa !85
  %i.asz = zext i32 %i.asx to i64
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asy, i64 %i.asz
  %i.atb = getelementptr inbounds i8, ptr %i.ata, i64 -8
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !229 ; 6 uses
  %i.atd = add i32 %i.asx, -1
  store i32 %i.atd, ptr %i.ahg, align 8, !tbaa !86
  %i.ate = icmp eq ptr %i.atc, %i.aje
  br i1 %i.ate, label %bb.eg, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit.thread592

bb.eg:                                            ; preds = %bb.ef
  %i.atf = load i8, ptr %i.ahl, align 8, !tbaa !47, !range !228, !noundef !57
  %i.atg = trunc nuw i8 %i.atf to i1
  br i1 %i.atg, label %bb.eh, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.ath = load ptr, ptr %25, align 8, !tbaa !45  ; 2 uses
  %i.ati = load i32, ptr %i.ahk, align 4, !tbaa !48 ; 2 uses
  %i.atj = zext i32 %i.ati to i64
  %.idx.i.i364 = shl nuw nsw i64 %i.atj, 3
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ath, i64 %.idx.i.i364
  %.not17.i.i = icmp eq i32 %i.ati, 0
  br i1 %.not17.i.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i.i365

bb.ei:                                            ; preds = %.lr.ph.i.i365
  %i.atl = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i366 = icmp eq ptr %i.atl, %i.atk
  br i1 %.not.i.i366, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i.i365

.lr.ph.i.i365:                                    ; preds = %bb.eh, %bb.ei
  %.01218.i.i = phi ptr [ %i.atl, %bb.ei ], [ %i.ath, %bb.eh ] ; 2 uses
  %i.atm = load ptr, ptr %.01218.i.i, align 8, !tbaa !14
  %.not15.i.i = icmp eq ptr %i.atm, %i.aje
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit.thread592, label %bb.ei

_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit: ; preds = %bb.eg
  %i.atn = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %25, ptr noundef %i.atc) #16
  %.not607 = icmp eq ptr %i.atn, null
  br i1 %.not607, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit.thread592

_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit.thread592: ; preds = %.lr.ph.i.i365, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit, %bb.ef
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atc, i64 56
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.ei, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit, %bb.eh, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit.thread592
  %storemerge.in = phi ptr [ %i.ato, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit.thread592 ], [ %i.asw, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit ], [ %i.asw, %bb.eh ], [ %i.asw, %bb.ei ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !230 ; 4 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atc, i64 48 ; 3 uses
  %.not608738 = icmp eq ptr %storemerge, %i.atp
  br i1 %.not608738, label %.critedge7.thread.thread993, label %.lr.ph742.preheader

.lr.ph742.preheader:                              ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.atq = icmp eq ptr %storemerge, %i.ajc
  %i.atr = icmp eq ptr %storemerge, %i.ajk
  %or.cond2071152 = or i1 %i.atq, %i.atr
  br i1 %or.cond2071152, label %.critedge7.thread, label %.lr.ph1155

.lr.ph742:                                        ; preds = %.critedge7
  %i.ats = icmp eq ptr %i.atu, %i.ajc
  %i.att = icmp eq ptr %i.atu, %i.ajk
  %or.cond207 = or i1 %i.ats, %i.att
  br i1 %or.cond207, label %.critedge7.thread, label %.lr.ph1155

.lr.ph1155:                                       ; preds = %.lr.ph742.preheader, %.lr.ph742
  %.sroa.0506.07391153 = phi ptr [ %i.atu, %.lr.ph742 ], [ %storemerge, %.lr.ph742.preheader ] ; 27 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 8
  %i.atu = load ptr, ptr %.in, align 8, !tbaa !230 ; 4 uses
  %i.atv = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, i32 28, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %i.atw = icmp eq i32 %i.atv, -1
  br i1 %i.atw, label %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph1155
  %i.atx = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 32
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !231
  %i.atz = zext i32 %i.atv to i64
  %i.aua = getelementptr inbounds nuw [32 x i8], ptr %i.aty, i64 %i.atz
  br label %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit

_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit: ; preds = %.lr.ph1155, %bb.ej
  %i.aub = phi ptr [ %i.aua, %bb.ej ], [ null, %.lr.ph1155 ] ; 2 uses
  %i.auc = load ptr, ptr %i.o, align 8, !tbaa !592
  %i.aud = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, i32 28, ptr noundef %i.auc, i1 noundef zeroext false, i1 noundef zeroext true) #16
  %i.aue = icmp ne i32 %i.aud, -1                 ; 2 uses
  %i.auf = zext i1 %i.aue to i8                   ; 3 uses
  %i.aug = icmp eq ptr %i.aub, null               ; 2 uses
  %or.cond = and i1 %i.aug, %i.aue
  br i1 %or.cond, label %.critedge7.thread, label %bb.ek

bb.ek:                                            ; preds = %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit
  br i1 %i.aug, label %.critedge7, label %bb.el, !llvm.loop !454

bb.el:                                            ; preds = %bb.ek
  %i.auh = load i32, ptr %i.aub, align 8          ; 2 uses
  %i.aui = lshr i32 %i.auh, 26
  %i.auj = lshr i32 %i.auh, 24
  %.lobit.i = and i32 %i.auj, 1
  %i.auk = xor i32 %.lobit.i, 1
  %i.aul = and i32 %i.auk, %i.aui
  %.not609 = icmp eq i32 %i.aul, 0
  %spec.select = select i1 %.not609, i8 %i.auf, i8 1 ; 3 uses
  %i.aum = call noundef i32 @_ZN4llvm3X8617getCondFromBranchERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153) #16
  %.not198 = icmp eq i32 %i.aum, 18
  br i1 %.not198, label %bb.ep, label %.preheader

.preheader:                                       ; preds = %bb.el, %bb.eo
  %.sroa.0498.0 = phi ptr [ %i.auv, %bb.eo ], [ %.sroa.0506.07391153, %bb.el ] ; 3 uses
  %i.aun = load i32, ptr %i.ahd, align 8, !tbaa !86 ; 2 uses
  %i.auo = load i32, ptr %i.ahe, align 4, !tbaa !87
  %.not.i369 = icmp ult i32 %i.aun, %i.auo
  br i1 %.not.i369, label %bb.en, label %bb.em, !prof !33

bb.em:                                            ; preds = %.preheader
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %.sroa.0498.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.en:                                            ; preds = %.preheader
  %i.aup = zext i32 %i.aun to i64
  %i.auq = load ptr, ptr %22, align 8, !tbaa !85
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %i.aup
  store ptr %.sroa.0498.0, ptr %i.aur, align 1
  %i.aus = load i32, ptr %i.ahd, align 8, !tbaa !86
  %i.aut = add i32 %i.aus, 1
  store i32 %i.aut, ptr %i.ahd, align 8, !tbaa !86
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.em, %bb.en
  %i.auu = getelementptr inbounds nuw i8, ptr %.sroa.0498.0, i64 8
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !230 ; 3 uses
  %.not610 = icmp eq ptr %i.auv, %i.atp
  br i1 %.not610, label %.critedge7.thread, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %i.auw = call noundef i32 @_ZN4llvm3X8617getCondFromBranchERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %i.auv) #16
  %.not199 = icmp eq i32 %i.auw, 18
  br i1 %.not199, label %.critedge7.thread, label %.preheader, !llvm.loop !455

bb.ep:                                            ; preds = %bb.el
  %i.aux = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 52 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !83 ; 8 uses
  %i.auz = icmp eq i32 %i.auy, 20
  br i1 %i.auz, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.ava = load ptr, ptr %0, align 8, !tbaa !60
  %i.avb = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 32
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !231
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 4
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !64
  %i.avf = load ptr, ptr %i.asv, align 8, !tbaa !231
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 4
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !64
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.ava, i32 %i.ave, i32 %i.avh) #16
  %i.avi = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153) #16 ; 0 uses
  br label %bb.fk

bb.er:                                            ; preds = %bb.ep
  %i.avj = call noundef zeroext i1 @_ZN4llvm3X867isSETCCEj(i32 noundef %i.auy) #16
  br i1 %i.avj, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.avk = call noundef zeroext i1 @_ZN4llvm3X869isSETZUCCEj(i32 noundef %i.auy) #16
  br i1 %i.avk, label %bb.et, label %bb.fd

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.avl = call noundef i32 @_ZN4llvm3X8616getCondFromSETCCERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153) #16
  %i.avm = zext i32 %i.avl to i64                 ; 2 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %i.avm ; 4 uses
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !301
  %.not.i370 = icmp eq i32 %i.avo, 0
  br i1 %.not.i370, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.avp = load ptr, ptr %0, align 8, !tbaa !60
  %i.avq = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.avr = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.avp, ptr noundef %i.avq, ptr nonnull @.str.5, i64 0) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %.sroa.01.0.copyload.i.i = load ptr, ptr %21, align 8, !tbaa !260
  store ptr %.sroa.01.0.copyload.i.i, ptr %10, align 8, !tbaa !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahy, i8 0, i64 24, i1 false)
  %i.avs = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.avt = load ptr, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 518
  %i.avv = load i8, ptr %i.avu, align 2, !tbaa !302, !range !228, !noundef !57
  %i.avw = trunc nuw i8 %i.avv to i1
  br i1 %i.avw, label %bb.ev, label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i

bb.ev:                                            ; preds = %bb.eu
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avt, i64 540
  %i.avy = load i8, ptr %i.avx, align 4, !tbaa !303, !range !228, !noundef !57
  %i.avz = trunc nuw i8 %i.avy to i1
  %.neg.i.i = select i1 %i.avz, i64 -4269, i64 -4273
  br label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i

_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i: ; preds = %bb.ev, %bb.eu
  %.neg9.i.i = phi i64 [ -4269, %bb.eu ], [ %.neg.i.i, %bb.ev ]
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avs, i64 8
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !255
  %i.awc = getelementptr inbounds [32 x i8], ptr %i.awb, i64 %.neg9.i.i
  %i.awd = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.0181.lcssa, ptr %.sroa.082.0.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.awc, i32 %i.avr) ; 2 uses
  %i.awe = extractvalue { ptr, ptr } %i.awd, 0
  %i.awf = extractvalue { ptr, ptr } %i.awd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 1, ptr %9, align 8, !alias.scope !656
  store ptr null, ptr %i.ahz, align 8, !tbaa !67, !alias.scope !656
  store i64 %i.avm, ptr %i.aia, align 8, !tbaa !64, !alias.scope !656
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.awf, ptr noundef nonnull align 8 dereferenceable(1065) %i.awe, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  store i32 %i.avr, ptr %i.avn, align 4, !tbaa !30
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i, %bb.et
  %i.awg = load i32, ptr %i.aux, align 4, !tbaa !83
  %i.awh = add i32 %i.awg, -1
  %spec.select.i.i.i371 = icmp ult i32 %i.awh, 2
  br i1 %spec.select.i.i.i371, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.awi = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 32
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !231
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 48
  %i.awl = load i64, ptr %i.awk, align 8, !tbaa !64
  %i.awm = and i64 %i.awl, 16
  %.not.not.i.i375 = icmp eq i64 %i.awm, 0
  br i1 %.not.not.i.i375, label %bb.ey, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 44
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !617 ; 2 uses
  %i.awp = and i32 %i.awo, 12
  %i.awq = icmp eq i32 %i.awp, 0
  %i.awr = and i32 %i.awo, 4
  %i.aws = icmp ne i32 %i.awr, 0
  %or.cond.i.i.i372 = or i1 %i.awq, %i.aws
  br i1 %or.cond.i.i.i372, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i374, label %.split.i373

.split.i373:                                      ; preds = %bb.ey
  %i.awt = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, i64 noundef 1048576, i32 noundef 1) #16
  br i1 %i.awt, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i, label %bb.ez

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i374: ; preds = %bb.ey
  %i.awu = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 16
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !251
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 16
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !655
  %i.awy = and i64 %i.awx, 1048576
  %.not44.i = icmp eq i64 %i.awy, 0
  br i1 %.not44.i, label %bb.ez, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i

bb.ez:                                            ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i374, %.split.i373
  %i.awz = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 32
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !231
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 4
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !64 ; 2 uses
  %i.axd = load ptr, ptr %0, align 8, !tbaa !60
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.axd, i32 %i.axc) #16
  %i.axe = load ptr, ptr %0, align 8, !tbaa !60
  %.sroa.08.0.copyload.i = load i32, ptr %i.avn, align 4, !tbaa !30
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.axe, i32 %i.axc, i32 %.sroa.08.0.copyload.i) #16
  br label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl12rewriteSetCCERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i: ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i374, %.split.i373, %bb.ex
  %i.axf = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 24
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !239 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 72
  %.sroa.05.0.copyload.i = load ptr, ptr %i.axh, align 8, !tbaa !260
  %i.axi = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !255
  %i.axl = getelementptr inbounds i8, ptr %i.axk, i64 -83712
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !298 ; 8 uses
  %i.axo = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %i.axl, ptr %.sroa.05.0.copyload.i, i1 noundef zeroext false) #16 ; 8 uses
  %i.axp = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.axg, ptr nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, ptr noundef %i.axo) #16 ; 0 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 32 ; 5 uses
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !231
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %i.axr) #16
  %i.axs = load ptr, ptr %i.axq, align 8, !tbaa !231
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %i.axt) #16
  %i.axu = load ptr, ptr %i.axq, align 8, !tbaa !231
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %i.axv) #16
  %i.axw = load ptr, ptr %i.axq, align 8, !tbaa !231
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %i.axx) #16
  %i.axy = load ptr, ptr %i.axq, align 8, !tbaa !231
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %i.axz) #16
  %.sroa.02.0.copyload.i = load i32, ptr %i.avn, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr null, ptr %i.aib, align 8, !tbaa !67, !alias.scope !657
  store i32 %.sroa.02.0.copyload.i, ptr %i.aic, align 4, !tbaa !64, !alias.scope !657
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aid, i8 0, i64 16, i1 false), !alias.scope !657
  store i32 0, ptr %8, align 8, !alias.scope !657
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.aya = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 64 ; 3 uses
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !64 ; 4 uses
  %i.ayc = icmp ugt i64 %i.ayb, 7
  br i1 %i.ayc, label %bb.fa, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i

bb.fa:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i
  %i.ayd = and i64 %i.ayb, 7
  switch i64 %i.ayd, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i [
    i64 0, label %bb.fb
    i64 3, label %bb.fc
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.aye = inttoptr i64 %i.ayb to ptr
  store ptr %i.aye, ptr %i.aya, align 8, !tbaa !64
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i

bb.fc:                                            ; preds = %bb.fa
  %i.ayf = and i64 %i.ayb, -8
  %i.ayg = inttoptr i64 %i.ayf to ptr             ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  %i.ayi = load i32, ptr %i.ayg, align 8, !tbaa !659
  %i.ayj = sext i32 %i.ayi to i64
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i

_ZNK4llvm12MachineInstr11memoperandsEv.exit.i:    ; preds = %bb.fc, %bb.fb, %bb.fa, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i
  %.sroa.0.1.i.i = phi ptr [ %i.aya, %bb.fb ], [ null, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i ], [ %i.ayh, %bb.fc ], [ null, %bb.fa ]
  %.sroa.7.1.i.i = phi i64 [ 1, %bb.fb ], [ 0, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i ], [ %i.ayj, %bb.fc ], [ 0, %bb.fa ]
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.axo, ptr noundef nonnull align 8 dereferenceable(1065) %i.axn, ptr %.sroa.0.1.i.i, i64 %.sroa.7.1.i.i) #16
  br label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl12rewriteSetCCERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit

_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl12rewriteSetCCERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit: ; preds = %bb.ez, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i
  %i.ayk = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153) #16 ; 0 uses
  br label %bb.fk

bb.fd:                                            ; preds = %bb.es
  %i.ayl = call noundef zeroext i1 @_ZN4llvm3X865isADCEj(i32 noundef range(i32 21, 20) %i.auy) #16
  br i1 %i.ayl, label %_ZL14isArithmeticOpj.exit.thread, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aym = call noundef zeroext i1 @_ZN4llvm3X865isSBBEj(i32 noundef range(i32 21, 20) %i.auy) #16
  br i1 %i.aym, label %_ZL14isArithmeticOpj.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ayn = call noundef zeroext i1 @_ZN4llvm3X865isRCLEj(i32 noundef range(i32 21, 20) %i.auy) #16
  br i1 %i.ayn, label %_ZL14isArithmeticOpj.exit.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ayo = call noundef zeroext i1 @_ZN4llvm3X865isRCREj(i32 noundef range(i32 21, 20) %i.auy) #16
  %i.ayp = and i32 %i.auy, -2
  %i.ayq = icmp eq i32 %i.ayp, 426
  %or.cond600 = or i1 %i.ayq, %i.ayo
  br i1 %or.cond600, label %_ZL14isArithmeticOpj.exit.thread, label %bb.fj

_ZL14isArithmeticOpj.exit.thread:                 ; preds = %bb.fd, %bb.fe, %bb.ff, %bb.fg
  %i.ayr = load i32, ptr %i.ahm, align 4, !tbaa !301
  %.not.i376 = icmp eq i32 %i.ayr, 0
  br i1 %.not.i376, label %bb.fh, label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl17rewriteArithmeticERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit

bb.fh:                                            ; preds = %_ZL14isArithmeticOpj.exit.thread
  %i.ays = load ptr, ptr %0, align 8, !tbaa !60
  %i.ayt = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.ayu = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ays, ptr noundef %i.ayt, ptr nonnull @.str.5, i64 0) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.sroa.01.0.copyload.i.i380 = load ptr, ptr %21, align 8, !tbaa !260
  store ptr %.sroa.01.0.copyload.i.i380, ptr %7, align 8, !tbaa !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahn, i8 0, i64 24, i1 false)
  %i.ayv = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.ayw = load ptr, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 518
  %i.ayy = load i8, ptr %i.ayx, align 2, !tbaa !302, !range !228, !noundef !57
  %i.ayz = trunc nuw i8 %i.ayy to i1
  br i1 %i.ayz, label %bb.fi, label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i381

bb.fi:                                            ; preds = %bb.fh
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayw, i64 540
  %i.azb = load i8, ptr %i.aza, align 4, !tbaa !303, !range !228, !noundef !57
  %i.azc = trunc nuw i8 %i.azb to i1
  %.neg.i.i383 = select i1 %i.azc, i64 -4269, i64 -4273
  br label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i381

_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i381: ; preds = %bb.fi, %bb.fh
  %.neg9.i.i382 = phi i64 [ -4269, %bb.fh ], [ %.neg.i.i383, %bb.fi ]
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !255
  %i.azf = getelementptr inbounds [32 x i8], ptr %i.aze, i64 %.neg9.i.i382
  %i.azg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.0181.lcssa, ptr %.sroa.082.0.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.azf, i32 %i.ayu) ; 2 uses
  %i.azh = extractvalue { ptr, ptr } %i.azg, 0
  %i.azi = extractvalue { ptr, ptr } %i.azg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 1, ptr %6, align 8, !alias.scope !660
  store ptr null, ptr %i.aho, align 8, !tbaa !67, !alias.scope !660
  store i64 2, ptr %i.ahp, align 8, !tbaa !64, !alias.scope !660
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.azi, ptr noundef nonnull align 8 dereferenceable(1065) %i.azh, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  store i32 %i.ayu, ptr %i.ahm, align 4, !tbaa !30
  br label %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl17rewriteArithmeticERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit

_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl17rewriteArithmeticERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit: ; preds = %_ZL14isArithmeticOpj.exit.thread, %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl16promoteCondToRegERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocENS1_3X868CondCodeE.exit.i381
  %i.azj = load ptr, ptr %0, align 8, !tbaa !60
  %i.azk = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.azl = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.azj, ptr noundef %i.azk, ptr nonnull @.str.5, i64 0) #16
  %i.azm = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 24
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !239 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 72
  %.sroa.02.0.copyload.i378 = load ptr, ptr %i.azo, align 8, !tbaa !260
  %i.azp = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  %i.azr = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 461
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !661, !range !228, !noundef !57
  %i.azu = trunc nuw i8 %i.azt to i1
  %i.azv = load ptr, ptr %i.azq, align 8, !tbaa !255
  %.neg.i = select i1 %i.azu, i64 -709, i64 -706
  %i.azw = getelementptr inbounds [32 x i8], ptr %i.azv, i64 %.neg.i
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azn, i64 32
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !298 ; 4 uses
  %i.azz = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.azy, ptr noundef nonnull align 8 dereferenceable(32) %i.azw, ptr %.sroa.02.0.copyload.i378, i1 noundef zeroext false) #16 ; 4 uses
  %i.baa = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.azn, ptr nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, ptr noundef %i.azz) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr null, ptr %i.ahq, align 8, !tbaa !67, !alias.scope !662
  store i32 %i.azl, ptr %i.ahr, align 4, !tbaa !64, !alias.scope !662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahs, i8 0, i64 16, i1 false), !alias.scope !662
  store i32 83886080, ptr %5, align 8, !alias.scope !662
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.azz, ptr noundef nonnull align 8 dereferenceable(1065) %i.azy, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.sroa.0.0.copyload.i379 = load i32, ptr %i.ahm, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %i.aht, align 8, !tbaa !67, !alias.scope !663
  store i32 %.sroa.0.0.copyload.i379, ptr %i.ahu, align 4, !tbaa !64, !alias.scope !663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahv, i8 0, i64 16, i1 false), !alias.scope !663
  store i32 0, ptr %4, align 8, !alias.scope !663
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.azz, ptr noundef nonnull align 8 dereferenceable(1065) %i.azy, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 1, ptr %3, align 8, !alias.scope !664
  store ptr null, ptr %i.ahw, align 8, !tbaa !67, !alias.scope !664
  store i64 255, ptr %i.ahx, align 8, !tbaa !64, !alias.scope !664
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.azz, ptr noundef nonnull align 8 dereferenceable(1065) %i.azy, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.bab = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, i32 28, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  %i.bac = icmp ne i32 %i.bab, -1
  call void @llvm.assume(i1 %i.bac)
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.0506.07391153, i64 32
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !231
  %i.baf = zext i32 %i.bab to i64
  %i.bag = getelementptr inbounds nuw [32 x i8], ptr %i.bae, i64 %i.baf ; 2 uses
  %i.bah = load i32, ptr %i.bag, align 8
  %i.bai = or i32 %i.bah, 67108864
  store i32 %i.bai, ptr %i.bag, align 8
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fg
  call fastcc void @_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl9rewriteMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(360) %.0181.lcssa, ptr %.sroa.082.0.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0506.07391153, ptr noundef nonnull align 4 dereferenceable(64) %23)
  br label %bb.fk

bb.fk:                                            ; preds = %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl12rewriteSetCCERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit, %bb.fj, %_ZN12_GLOBAL__N_124X86FlagsCopyLoweringImpl17rewriteArithmeticERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_8DebugLocERS5_RSt5arrayINS1_8RegisterELm16EE.exit, %bb.eq
  %i.baj = trunc nuw i8 %spec.select to i1
  br i1 %i.baj, label %.critedge7.thread.thread, label %.critedge7

.critedge7:                                       ; preds = %bb.fk, %bb.ek
  %.3177 = phi i8 [ %i.auf, %bb.ek ], [ 0, %bb.fk ] ; 2 uses
  %.not608 = icmp eq ptr %i.atu, %i.atp
  br i1 %.not608, label %.critedge7.thread, label %.lr.ph742

.critedge7.thread:                                ; preds = %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit, %.lr.ph742, %.critedge7, %bb.eo, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %.lr.ph742.preheader
  %.4178 = phi i8 [ %spec.select, %bb.eo ], [ 0, %.lr.ph742.preheader ], [ %spec.select, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %i.auf, %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit ], [ %.3177, %.critedge7 ], [ %.3177, %.lr.ph742 ]
  %i.bak = trunc nuw i8 %.4178 to i1
  br i1 %i.bak, label %.critedge7.thread.thread, label %.critedge7.thread.thread993

.critedge7.thread.thread993:                      ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %.critedge7.thread
  %i.bal = getelementptr inbounds nuw i8, ptr %i.atc, i64 112
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !85 ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.atc, i64 120
  %i.bao = load i32, ptr %i.ban, align 8, !tbaa !86 ; 2 uses
  %i.bap = zext i32 %i.bao to i64
  %.idx774 = shl nuw nsw i64 %i.bap, 3
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bam, i64 %.idx774
  %.not200747 = icmp eq i32 %i.bao, 0
  br i1 %.not200747, label %.critedge7.thread.thread, label %.lr.ph750

.lr.ph750:                                        ; preds = %.critedge7.thread.thread993, %.critedge9
  %.0172748 = phi ptr [ %i.bbr, %.critedge9 ], [ %i.bam, %.critedge7.thread.thread993 ] ; 2 uses
  %i.bar = load ptr, ptr %.0172748, align 8, !tbaa !229 ; 9 uses
  %i.bas = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.bar, i32 28, i64 -1) #16
  br i1 %i.bas, label %bb.fl, label %.critedge9

bb.fl:                                            ; preds = %.lr.ph750
  %i.bat = load i8, ptr %i.ahl, align 8, !tbaa !47, !range !228, !noalias !665, !noundef !57
  %i.bau = trunc nuw i8 %i.bat to i1
  br i1 %i.bau, label %bb.fm, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.fm:                                            ; preds = %bb.fl
  %i.bav = load ptr, ptr %25, align 8, !tbaa !45, !noalias !665 ; 2 uses
  %i.baw = load i32, ptr %i.ahk, align 4, !tbaa !48, !noalias !665 ; 4 uses
  %i.bax = zext i32 %i.baw to i64
  %.idx.i.i391 = shl nuw nsw i64 %i.bax, 3
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bav, i64 %.idx.i.i391 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.baw, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %bb.fm, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.bba, %.critedge.i.i ], [ %i.bav, %bb.fm ] ; 2 uses
  %i.baz = load ptr, ptr %.023.i.i, align 8, !tbaa !14, !noalias !665
  %.not15.i.i393 = icmp eq ptr %i.baz, %i.bar
  br i1 %.not15.i.i393, label %.critedge9, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i392
  %i.bba = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i394 = icmp eq ptr %i.bba, %i.bay
  br i1 %.not.i.i394, label %._crit_edge.i.i, label %.lr.ph.i.i392

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.fm
  %i.bbb = load i32, ptr %i.ahj, align 8, !tbaa !46, !noalias !665
  %i.bbc = icmp ult i32 %i.baw, %i.bbb
  br i1 %i.bbc, label %.critedge1209, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge1209:                                    ; preds = %._crit_edge.i.i
  %i.bbd = add nuw i32 %i.baw, 1
  store i32 %i.bbd, ptr %i.ahk, align 4, !tbaa !48, !noalias !665
  store ptr %i.bar, ptr %i.bay, align 8, !tbaa !14, !noalias !665
  br label %bb.fn

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.fl
  %i.bbe = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %25, ptr noundef nonnull %i.bar) #16, !noalias !665
  %i.bbf = extractvalue { ptr, i8 } %i.bbe, 1
  %i.bbg = trunc nuw i8 %i.bbf to i1
  br i1 %i.bbg, label %bb.fn, label %.critedge9

bb.fn:                                            ; preds = %.critedge1209, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.bbh = icmp eq ptr %i.bar, %.0181.lcssa
  br i1 %i.bbh, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bbi = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.bbj = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.bbi, ptr noundef nonnull %.0181.lcssa, ptr noundef nonnull %i.bar) #16
  br i1 %i.bbj, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #17
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.bbk = load i32, ptr %i.ahg, align 8, !tbaa !86 ; 2 uses
  %i.bbl = load i32, ptr %i.ahh, align 4, !tbaa !87
  %.not.i395 = icmp ult i32 %i.bbk, %i.bbl
  br i1 %.not.i395, label %bb.fs, label %bb.fr, !prof !33

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %i.bar)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit396

bb.fs:                                            ; preds = %bb.fq
  %i.bbm = zext i32 %i.bbk to i64
  %i.bbn = load ptr, ptr %24, align 8, !tbaa !85
  %i.bbo = getelementptr inbounds nuw [8 x i8], ptr %i.bbn, i64 %i.bbm
  store ptr %i.bar, ptr %i.bbo, align 1
  %i.bbp = load i32, ptr %i.ahg, align 8, !tbaa !86
  %i.bbq = add i32 %i.bbp, 1
  store i32 %i.bbq, ptr %i.ahg, align 8, !tbaa !86
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit396

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit396: ; preds = %bb.fr, %bb.fs
  call void @_ZN4llvm17MachineBasicBlock12removeLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.bar, i32 28, i64 -1) #16
  br label %.critedge9

.critedge9:                                       ; preds = %.lr.ph.i.i392, %.lr.ph750, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit396, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0172748, i64 8 ; 2 uses
  %.not200 = icmp eq ptr %i.bbr, %i.baq
  br i1 %.not200, label %.critedge7.thread.thread, label %.lr.ph750

.critedge7.thread.thread:                         ; preds = %bb.fk, %.critedge9, %.critedge7.thread.thread993, %.critedge7.thread
  %i.bbs = load i32, ptr %i.ahg, align 8, !tbaa !86 ; 2 uses
  %.not.i397 = icmp eq i32 %i.bbs, 0
  br i1 %.not.i397, label %bb.ft, label %bb.ef, !llvm.loop !470

bb.ft:                                            ; preds = %.critedge7.thread.thread
  %i.bbt = load ptr, ptr %22, align 8, !tbaa !85  ; 2 uses
  %i.bbu = load i32, ptr %i.ahd, align 8, !tbaa !86 ; 2 uses
  %i.bbv = zext i32 %i.bbu to i64
  %.idx775 = shl nuw nsw i64 %i.bbv, 3
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 %.idx775
  %.not201759 = icmp eq i32 %i.bbu, 0
  br i1 %.not201759, label %._crit_edge764, label %.lr.ph763

._crit_edge764:                                   ; preds = %_ZL10splitBlockRN4llvm17MachineBasicBlockERNS_12MachineInstrERKNS_12X86InstrInfoE.exit, %bb.ft
  %i.bbx = load i8, ptr %i.ahl, align 8, !tbaa !47, !range !228, !noundef !57
  %i.bby = trunc nuw i8 %i.bbx to i1
  br i1 %i.bby, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge764
  %i.bbz = load ptr, ptr %25, align 8, !tbaa !45
  call void @free(ptr noundef %i.bbz) #16
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %._crit_edge764, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  %i.bca = load ptr, ptr %24, align 8, !tbaa !85  ; 2 uses
  %i.bcb = icmp eq ptr %i.bca, %i.ahf
  br i1 %i.bcb, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EED2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  call void @free(ptr noundef %i.bca) #16
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.bcc = load ptr, ptr %22, align 8, !tbaa !85  ; 2 uses
  %i.bcd = icmp eq ptr %i.bcc, %i.ahc
  br i1 %i.bcd, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EED2Ev.exit
  call void @free(ptr noundef %i.bcc) #16
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EED2Ev.exit, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.hf

.lr.ph763:                                        ; preds = %bb.ft, %_ZL10splitBlockRN4llvm17MachineBasicBlockERNS_12MachineInstrERKNS_12X86InstrInfoE.exit
  %.0168761 = phi ptr [ %i.bna, %_ZL10splitBlockRN4llvm17MachineBasicBlockERNS_12MachineInstrERKNS_12X86InstrInfoE.exit ], [ %i.bbt, %bb.ft ] ; 2 uses
  %.0169760 = phi ptr [ %.1, %_ZL10splitBlockRN4llvm17MachineBasicBlockERNS_12MachineInstrERKNS_12X86InstrInfoE.exit ], [ null, %bb.ft ] ; 9 uses
  %i.bce = load ptr, ptr %.0168761, align 8, !tbaa !232 ; 11 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 24
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !239 ; 12 uses
end_hunk_1
