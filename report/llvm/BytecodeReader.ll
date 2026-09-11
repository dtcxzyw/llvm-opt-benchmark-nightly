Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BytecodeReader?download=true
inline.NumInlined: 5979
inline.NumDeleted: 2964
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4mlir14BytecodeReader4Impl12parseRegionsERSt6vectorINS1_15RegionReadStateESaIS3_EERS3_:bb.a
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 48
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !tbaa !223
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.aej, align 8, !tbaa !223
  store ptr null, ptr %i.fq, align 8, !tbaa !223
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aef, i64 56
  %i.ael = load i32, ptr %i.fr, align 8, !tbaa !303
  store i32 %i.ael, ptr %i.aek, align 8, !tbaa !303
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aef, i64 64 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aef, i64 80
  store ptr %i.aen, ptr %i.aem, align 8, !tbaa !197
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aef, i64 72
  store i32 0, ptr %i.aeo, align 8, !tbaa !194
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aef, i64 76
  store i32 6, ptr %i.aep, align 4, !tbaa !195
  %i.aeq = load i32, ptr %i.fu, align 8, !tbaa !194
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.aeq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt0, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aer = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPN4mlir5BlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.aem, ptr noundef nonnull align 8 dereferenceable(64) %i.fs) ; 0 uses
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt0

.thread.jt1:                                      ; preds = %bb.fr, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.031.3.ph.jt1 = phi i8 [ %i.adr, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1

bb.gc:                                            ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_114EncodingReaderESt14default_deleteIS1_EED2Ev.exit, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4mlir14BytecodeReader4Impl15RegionReadStateC2EPNS_9OperationEPN12_GLOBAL__N_114EncodingReaderEb.exit, %bb.gc
  %i.aes = phi i1 [ true, %bb.gc ], [ %i.adn, %_ZN4mlir14BytecodeReader4Impl15RegionReadStateC2EPNS_9OperationEPN12_GLOBAL__N_114EncodingReaderEb.exit ]
  %i.aet = load ptr, ptr %i.gg, align 8, !tbaa !308 ; 10 uses
  %i.aeu = load ptr, ptr %i.gh, align 8, !tbaa !309
  %.not.i.i41 = icmp eq ptr %i.aet, %i.aeu
  br i1 %.not.i.i41, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(121) %i.aet, ptr noundef nonnull align 8 dereferenceable(121) %59, i64 24, i1 false)
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !tbaa !223
  store i64 %.val.i.i.i.i.i.i, ptr %i.aev, align 8, !tbaa !223
  store ptr null, ptr %i.fq, align 8, !tbaa !223
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 32
  %i.aex = load i32, ptr %i.fr, align 8, !tbaa !303
  store i32 %i.aex, ptr %i.aew, align 8, !tbaa !303
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aet, i64 40 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aet, i64 56
  store ptr %i.aez, ptr %i.aey, align 8, !tbaa !197
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aet, i64 48
  store i32 0, ptr %i.afa, align 8, !tbaa !194
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aet, i64 52
  store i32 6, ptr %i.afb, align 4, !tbaa !195
  %i.afc = load i32, ptr %i.fu, align 8, !tbaa !194
  %.not.i.i.i.i.i42 = icmp eq i32 %i.afc, 0
  br i1 %.not.i.i.i.i.i42, label %_ZN4mlir14BytecodeReader4Impl15RegionReadStateC2EOS2_.exit.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.afd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPN4mlir5BlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.aey, ptr noundef nonnull align 8 dereferenceable(64) %i.fs) ; 0 uses
  br label %_ZN4mlir14BytecodeReader4Impl15RegionReadStateC2EOS2_.exit.i.i

_ZN4mlir14BytecodeReader4Impl15RegionReadStateC2EOS2_.exit.i.i: ; preds = %bb.ge, %bb.gd
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aet, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.afe, ptr noundef nonnull align 8 dereferenceable(17) %i.fw, i64 17, i1 false)
  %i.aff = load ptr, ptr %i.gg, align 8, !tbaa !308
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 128
  store ptr %i.afg, ptr %i.gg, align 8, !tbaa !308
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE9push_backEOS3_.exit

bb.gf:                                            ; preds = %.loopexit
  call void @_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aet, ptr noundef nonnull align 8 dereferenceable(121) %59)
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4mlir14BytecodeReader4Impl15RegionReadStateC2EOS2_.exit.i.i, %bb.gf
  br i1 %i.aes, label %bb.gg, label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1

bb.gg:                                            ; preds = %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE9push_backEOS3_.exit
  %i.afh = load ptr, ptr %i.eq, align 8, !tbaa !312 ; 6 uses
  %i.afi = load ptr, ptr %i.gi, align 8, !tbaa !313
  %.not.i43 = icmp eq ptr %i.afh, %i.afi
  br i1 %.not.i43, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 24
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afh, i8 0, i64 56, i1 false)
  store ptr %i.afk, ptr %i.afj, align 8, !tbaa !197
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afh, i64 36
  store i32 4, ptr %i.afl, align 4, !tbaa !195
  %i.afm = load ptr, ptr %i.eq, align 8, !tbaa !312
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 56
  store ptr %i.afn, ptr %i.eq, align 8, !tbaa !312
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1

bb.gi:                                            ; preds = %bb.gg
  call void @_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr %i.afh)
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1

_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt0: ; preds = %bb.ga, %bb.gb
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aef, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.afo, ptr noundef nonnull align 8 dereferenceable(17) %i.fw, i64 17, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aef, ptr noundef nonnull align 8 dereferenceable(24) %i.gk) #24
  %i.afp = load i64, ptr %i.gl, align 8, !tbaa !424
  %i.afq = add i64 %i.afp, 1
  store i64 %i.afq, ptr %i.gl, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.afr = load ptr, ptr %i.gn, align 8, !tbaa !425
  store ptr %i.afr, ptr %63, align 8
  %i.afs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt14_List_iteratorISt4pairIS4_NS2_14BytecodeReader4Impl15RegionReadStateEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E24lookupOrInsertIntoBucketIRKS4_JSB_EEES6_IPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %63), !noalias !760 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  %i.aft = load ptr, ptr %i.fs, align 8, !tbaa !197 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.ft
  br i1 %i.afu, label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt0, label %bb.gj

_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1: ; preds = %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE9push_backEOS3_.exit, %bb.gh, %bb.gi, %.thread.jt1
  %.sroa.031.4.jt1 = phi i8 [ %.sroa.031.3.ph.jt1, %.thread.jt1 ], [ 1, %bb.gi ], [ 1, %bb.gh ], [ 1, %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE9push_backEOS3_.exit ]
  %i.afv = load ptr, ptr %i.fs, align 8, !tbaa !197 ; 2 uses
  %i.afw = icmp eq ptr %i.afv, %i.ft
  br i1 %i.afw, label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt1, label %bb.gk

bb.gj:                                            ; preds = %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt0
  call void @free(ptr noundef %i.aft) #24
  br label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt0

bb.gk:                                            ; preds = %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1
  call void @free(ptr noundef %i.afv) #24
  br label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt1

_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt0: ; preds = %bb.gj, %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt0
  %i.afx = load ptr, ptr %i.fq, align 8, !tbaa !223 ; 2 uses
  %.not.i.i45.jt0 = icmp eq ptr %i.afx, null
  br i1 %.not.i.i45.jt0, label %_ZN4mlir14BytecodeReader4Impl15RegionReadStateD2Ev.exit.jt0, label %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.jt0

_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt1: ; preds = %bb.gk, %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.jt1
  %i.afy = load ptr, ptr %i.fq, align 8, !tbaa !223 ; 2 uses
  %.not.i.i45.jt1 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i45.jt1, label %bb.gl, label %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.jt1

_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.jt0: ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt0
  call void @_ZdlPvm(ptr noundef nonnull %i.afx, i64 noundef 32) #25
  br label %_ZN4mlir14BytecodeReader4Impl15RegionReadStateD2Ev.exit.jt0

_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.jt1: ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt1
  call void @_ZdlPvm(ptr noundef nonnull %i.afy, i64 noundef 32) #25
  br label %bb.gl

_ZN4mlir14BytecodeReader4Impl15RegionReadStateD2Ev.exit.jt0: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.jt0, %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %.backedge

.thread254.sink.split:                            ; preds = %_ZN4mlir14BytecodeReader4Impl14parseAttributeINS_12LocationAttrEEEN4llvm13LogicalResultERN12_GLOBAL__N_114EncodingReaderERT_.exit, %_ZN12_GLOBAL__N_114EncodingReader9parseByteIhEEN4llvm13LogicalResultERT_.exit.i, %_ZN4mlir14BytecodeReader4Impl14parseAttributeINS_12LocationAttrEEEN4llvm13LogicalResultERN12_GLOBAL__N_114EncodingReaderERT_.exit.thread, %_ZL10parseEntryIN4llvm11SmallVectorIN12_GLOBAL__N_121BytecodeOperationNameELj1EEEPS3_ENS0_13LogicalResultERNS2_14EncodingReaderERT_RT0_NS0_9StringRefE.exit.thread.i.i, %.thread.i.i, %_ZL10parseEntryIN4llvm11SmallVectorIN12_GLOBAL__N_121BytecodeOperationNameELj1EEEPS3_ENS0_13LogicalResultERNS2_14EncodingReaderERT_RT0_NS0_9StringRefE.exit.i.i, %_ZN4mlir14BytecodeReader4Impl21parseOpWithoutRegionsERN12_GLOBAL__N_114EncodingReaderERNS1_15RegionReadStateERb.exit.thread430
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  br label %.thread254

.thread254:                                       ; preds = %_ZN4mlir14BytecodeReader4Impl21parseOpWithoutRegionsERN12_GLOBAL__N_114EncodingReaderERNS1_15RegionReadStateERb.exit, %.thread254.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE8pop_backEv.exit

bb.gl:                                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.jt1, %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE8pop_backEv.exit

.backedge:                                        ; preds = %_ZN4mlir14BytecodeReader4Impl15RegionReadStateD2Ev.exit.jt0, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  %i.afz = load i64, ptr %i.v, align 8, !tbaa !736 ; 2 uses
  %i.aga = add i64 %i.afz, -1
  store i64 %i.aga, ptr %i.v, align 8, !tbaa !736
  %.not32 = icmp eq i64 %i.afz, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !733

._crit_edge:                                      ; preds = %.backedge, %bb.f
  %i.agb = load ptr, ptr %i.t, align 8, !tbaa !374
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !310 ; 2 uses
  store ptr %i.agd, ptr %i.t, align 8, !tbaa !374
  %i.age = load ptr, ptr %2, align 8, !tbaa !300  ; 4 uses
  %i.agf = icmp eq ptr %i.agd, %i.age
  br i1 %i.agf, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %._crit_edge
  %i.agg = call fastcc i8 @_ZN4mlir14BytecodeReader4Impl16parseBlockHeaderERN12_GLOBAL__N_114EncodingReaderERNS1_15RegionReadStateE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(121) %2)
  %i.agh = trunc nuw i8 %i.agg to i1
  br i1 %i.agh, label %bb.f, label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE8pop_backEv.exit, !llvm.loop !734

bb.gn:                                            ; preds = %._crit_edge
  store i64 0, ptr %i.t, align 8
  %i.agi = load ptr, ptr %i.eq, align 8, !tbaa !314 ; 3 uses
  %i.agj = getelementptr inbounds i8, ptr %i.agi, i64 -56 ; 2 uses
  %i.agk = getelementptr inbounds i8, ptr %i.agi, i64 -48 ; 2 uses
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !317 ; 2 uses
  %i.agm = load ptr, ptr %i.agj, align 8, !tbaa !318 ; 2 uses
  %i.agn = ptrtoint ptr %i.agl to i64
  %i.ago = ptrtoint ptr %i.agm to i64
  %i.agp = sub i64 %i.agn, %i.ago
  %i.agq = ashr exact i64 %i.agp, 3               ; 2 uses
  %i.agr = load i32, ptr %i.fk, align 8, !tbaa !303 ; 2 uses
  %i.ags = zext i32 %i.agr to i64                 ; 3 uses
  %i.agt = sub nuw nsw i64 %i.agq, %i.ags
  %i.agu = icmp ult i64 %i.agq, %i.ags
  br i1 %i.agu, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.agv = sub nsw i64 0, %i.ags
  call void @_ZNSt6vectorIN4mlir5ValueESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(56) %i.agj, i64 noundef %i.agv)
  %.pre344.pre = load ptr, ptr %2, align 8, !tbaa !300
  br label %.thread262

bb.gp:                                            ; preds = %bb.gn
  %.not.i46 = icmp eq i32 %i.agr, 0
  br i1 %.not.i46, label %.thread262, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agm, i64 %i.agt ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.agl, %i.agw
  br i1 %.not.i.i.i46, label %.thread262, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  store ptr %i.agw, ptr %i.agk, align 8, !tbaa !317
  br label %.thread262

.thread262:                                       ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.go
  %.pre344 = phi ptr [ %i.age, %bb.gr ], [ %i.age, %bb.gq ], [ %i.age, %bb.gp ], [ %.pre344.pre, %bb.go ]
  %i.agx = getelementptr inbounds i8, ptr %i.agi, i64 -24 ; 2 uses
  %i.agy = load i32, ptr %i.agx, align 8, !tbaa !194
  %i.agz = add i32 %i.agy, -1
  store i32 %i.agz, ptr %i.agx, align 8, !tbaa !194
  br label %bb.gs

bb.gs:                                            ; preds = %.thread262, %bb.d
  %i.aha = phi ptr [ %i.gs, %bb.d ], [ %.pre344, %.thread262 ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32 ; 2 uses
  store ptr %i.ahb, ptr %2, align 8, !tbaa !300
  %i.ahc = load ptr, ptr %i.q, align 8, !tbaa !301
  %.not = icmp eq ptr %i.ahb, %i.ahc
  br i1 %.not, label %._crit_edge312, label %bb.b, !llvm.loop !735

._crit_edge312:                                   ; preds = %bb.gs, %bb.a
  %i.ahd = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ahe = load i8, ptr %i.ahd, align 8, !tbaa !304, !range !49, !noundef !50
  %i.ahf = trunc nuw i8 %i.ahe to i1
  br i1 %i.ahf, label %bb.gt, label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE8pop_backEv.exit

bb.gt:                                            ; preds = %._crit_edge312
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !312 ; 4 uses
  %i.ahi = getelementptr inbounds i8, ptr %i.ahh, i64 -56 ; 2 uses
  store ptr %i.ahi, ptr %i.ahg, align 8, !tbaa !312
  %i.ahj = getelementptr inbounds i8, ptr %i.ahh, i64 -32
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !197 ; 2 uses
  %i.ahl = getelementptr inbounds i8, ptr %i.ahh, i64 -16
  %i.ahm = icmp eq ptr %i.ahk, %i.ahl
  br i1 %i.ahm, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @free(ptr noundef %i.ahk) #24
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i:        ; preds = %bb.gu, %bb.gt
  %i.ahn = load ptr, ptr %i.ahi, align 8, !tbaa !318 ; 3 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.ahn, null
  br i1 %.not.i.i.i.i.i47, label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE8pop_backEv.exit, label %bb.gv

bb.gv:                                            ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i
  %i.aho = getelementptr inbounds i8, ptr %i.ahh, i64 -40
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !426
  %i.ahq = ptrtoint ptr %i.ahp to i64
  %i.ahr = ptrtoint ptr %i.ahn to i64
  %i.ahs = sub i64 %i.ahq, %i.ahr
  call void @_ZdlPvm(ptr noundef nonnull %i.ahn, i64 noundef %i.ahs) #25
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE8pop_backEv.exit

_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE8pop_backEv.exit: ; preds = %bb.gv, %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i, %._crit_edge312
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !308 ; 4 uses
  %i.ahv = getelementptr inbounds i8, ptr %i.ahu, i64 -128
  store ptr %i.ahv, ptr %i.aht, align 8, !tbaa !308
  %i.ahw = getelementptr inbounds i8, ptr %i.ahu, i64 -88
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !197 ; 2 uses
  %i.ahy = getelementptr inbounds i8, ptr %i.ahu, i64 -72
  %i.ahz = icmp eq ptr %i.ahx, %i.ahy
  br i1 %i.ahz, label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.i, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE8pop_backEv.exit
  call void @free(ptr noundef %i.ahx) #24
  br label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.i: ; preds = %bb.gw, %_ZNSt6vectorIN4mlir14BytecodeReader4Impl10ValueScopeESaIS3_EE8pop_backEv.exit
  %i.aia = getelementptr inbounds i8, ptr %i.ahu, i64 -104
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !223 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.aib, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE8pop_backEv.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aib, i64 noundef 32) #25
  br label %_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE8pop_backEv.exit

_ZNSt6vectorIN4mlir14BytecodeReader4Impl15RegionReadStateESaIS3_EE8pop_backEv.exit: ; preds = %bb.c, %bb.gm, %bb.gl, %.thread254, %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.i, %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.i
  %.sroa.031.8 = phi i8 [ 1, %_ZNKSt14default_deleteIN12_GLOBAL__N_114EncodingReaderEEclEPS1_.exit.i.i.i ], [ %.sroa.031.4.jt1, %bb.gl ], [ 0, %bb.gm ], [ 1, %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit.i.i ], [ 0, %.thread254 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  ret i8 %.sroa.031.8
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_114EncodingReader9emitErrorIJRA54_KcEEEN4mlir18InFlightDiagnosticEDpOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.24.val, ptr noundef nonnull align 1 dereferenceable(54) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr %.24.val) #24
  %i.a = load ptr, ptr %3, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnostic6appendIJRA54_KcEEEOS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(54) %1) #24
  store i32 3, ptr %2, align 8, !tbaa !193
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !194  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !195
  %.not.i.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !196

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = load i32, ptr %i.e, align 8, !tbaa !194
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !194
  br label %_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNO4mlir18InFlightDiagnostic6appendIJRA54_KcEEEOS0_DpOT_.exit

_ZNO4mlir18InFlightDiagnostic6appendIJRA54_KcEEEOS0_DpOT_.exit: ; preds = %bb.a, %_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnosticC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %3)
  %i.n = load ptr, ptr %3, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnostic6appendIJRA54_KcEEEOS0_DpOT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNO4mlir18InFlightDiagnostic6appendIJRA54_KcEEEOS0_DpOT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !48, !range !49, !noundef !50
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !48
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

declare i8 @_ZN4mlir6verifyEPNS_9OperationEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_SC_SC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, %4
  %i.b = icmp eq ptr %1, %4
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE8transferENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_SC_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, ptr %4) #24
  %i.c = load ptr, ptr %4, align 8, !tbaa !319    ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !319    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %4, ptr %i.e, align 8, !tbaa !310
  store ptr %i.d, ptr %4, align 8, !tbaa !319
  %i.f = load ptr, ptr %1, align 8, !tbaa !319    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !310
  store ptr %i.f, ptr %3, align 8, !tbaa !319
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.h, align 8, !tbaa !310
  store ptr %i.c, ptr %1, align 8, !tbaa !319
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE8transferENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_SC_SC_.exit

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE8transferENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_SC_SC_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir14BytecodeReader4Impl11parseRegionERNS1_15RegionReadStateE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(121) %1) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
