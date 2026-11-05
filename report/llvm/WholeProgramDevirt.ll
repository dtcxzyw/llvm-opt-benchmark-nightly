Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WholeProgramDevirt?download=true
inline.NumInlined: 12574
inline.NumDeleted: 6566
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_112DevirtModule3runEv:bb.a
  %.not11.i.i.i = icmp eq i32 %i.djx, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i559, label %bb.nh, !llvm.loop !9

._crit_edge.i.i559:                               ; preds = %bb.nh, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i560 = icmp eq i64 %indvars.iv.next.i.i, %i.djl
  br i1 %.not.i.i.i560, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS6_ESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !10

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS6_ESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i559
  %.pr.i561 = load i32, ptr %i.djd, align 4, !tbaa !413 ; 2 uses
  %i.djy = icmp eq i32 %.pr.i561, 0
  br i1 %i.djy, label %_ZN4llvm8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %bb.ni

bb.ni:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS6_ESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i
  %i.djz = load ptr, ptr %47, align 8, !tbaa !411
  %i.dka = zext i32 %.pr.i561 to i64              ; 2 uses
  %i.dkb = mul nuw nsw i64 %i.dka, 56
  %i.dkc = add nuw nsw i64 %i.dka, 31
  %i.dkd = lshr i64 %i.dkc, 3
  %i.dke = and i64 %i.dkd, 1073741820
  %i.dkf = add nuw nsw i64 %i.dke, %i.dkb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.djz, i64 noundef %i.dkf, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit: ; preds = %.loopexit833, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS6_ESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @_ZNSt6vectorIN4llvm18wholeprogramdevirt10VTableBitsESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %46) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %bb.nj

bb.nj:                                            ; preds = %_ZN4llvm8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, %bb.q, %bb.p, %bb.b, %bb.d
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %_ZN4llvm8DenseMapIPNS_8MetadataESt3setINS_18wholeprogramdevirt14TypeMemberInfoESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit ], [ false, %bb.q ], [ false, %bb.p ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112DevirtModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(409) dereferenceable(409) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !577
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !578
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4llvm11GlobPatternEEEvT_S5_(ptr noundef %i.b, ptr noundef %i.d)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !577  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_111PatternListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !579
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #28
  br label %_ZN12_GLOBAL__N_111PatternListD2Ev.exit

_ZN12_GLOBAL__N_111PatternListD2Ev.exit:          ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !189
  tail call void @_ZNSt8_Rb_treeIPN4llvm8CallInstESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorIPNS_8CallBaseELj8EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_111PatternListD2Ev.exit
  tail call void @free(ptr noundef %i.o) #27
  br label %_ZN4llvm11SmallVectorIPNS_8CallBaseELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8CallBaseELj8EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_111PatternListD2Ev.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load i8, ptr %i.r, align 8, !tbaa !77, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8CallBaseELj8EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.v) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_8CallBaseELj8EED2Ev.exit, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !68 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val2.i.i = load i32, ptr %i.y, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %.val2.i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.z = zext i32 %.val2.i.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.z, 144
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN12_GLOBAL__N_110VTableSlotENS0_14VTableSlotInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZNSt4pairIN12_GLOBAL__N_110VTableSlotENS0_14VTableSlotInfoEED2Ev.exit.i.i.i ], [ %i.aa, %.lr.ph.i.preheader.i.i ] ; 8 uses
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -144 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %.val.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !189
  tail call fastcc void @_ZNSt8_Rb_treeISt6vectorImSaImEESt4pairIKS2_N12_GLOBAL__N_112CallSiteInfoEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %.val.i.i.i.i.i)
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !502 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !499
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.al = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !502 ; 3 uses
  %.not.i.i.i2.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i2.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit3.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !499
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit3.i.i.i.i.i.i

_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit3.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !580 ; 3 uses
  %.not.i.i.i4.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i.i.i.i.i, label %_ZNSt4pairIN12_GLOBAL__N_110VTableSlotENS0_14VTableSlotInfoEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit3.i.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !581
  %i.at = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.au = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.av) #28
  br label %_ZNSt4pairIN12_GLOBAL__N_110VTableSlotENS0_14VTableSlotInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN12_GLOBAL__N_110VTableSlotENS0_14VTableSlotInfoEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm15FunctionSummaryESaIS2_EED2Ev.exit3.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %.val.i.i, %i.ab
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN12_GLOBAL__N_110VTableSlotENS0_14VTableSlotInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !68
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.aw = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i ], [ %.val.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELj0EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  tail call void @free(ptr noundef %i.aw) #27
  br label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELj0EED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !479 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm9MapVectorIN12_GLOBAL__N_110VTableSlotENS1_14VTableSlotInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELj0EED2Ev.exit.i
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !477
  %i.bd = zext i32 %i.ba to i64                   ; 2 uses
  %i.be = mul nuw nsw i64 %i.bd, 24
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #27
  br label %_ZN4llvm9MapVectorIN12_GLOBAL__N_110VTableSlotENS1_14VTableSlotInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIN12_GLOBAL__N_110VTableSlotENS1_14VTableSlotInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110VTableSlotENS2_14VTableSlotInfoEELj0EED2Ev.exit.i, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm9MapVectorIN12_GLOBAL__N_110VTableSlotENS1_14VTableSlotInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bm = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i32 noundef 3) #27, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm9MapVectorIN12_GLOBAL__N_110VTableSlotENS1_14VTableSlotInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm25hasWholeProgramVisibilityEb(i1 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL22WholeProgramVisibilityE, i64 120), align 8, !range !78
  %2 = trunc nuw i8 %1 to i1
  %or.cond = select i1 %0, i1 true, i1 %2
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL29DisableWholeProgramVisibilityE, i64 120), align 8, !range !78
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = xor i1 %i.b, true
  %3 = select i1 %or.cond, i1 %i.c, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29updateVCallVisibilityInModuleERNS_6ModuleEbRKNS_8DenseSetImNS_12DenseMapInfoImvEEEEbNS_12function_refIFbNS_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1288) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, ptr nofree readonly captures(none) %4, i64 %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.580", align 8 ; 9 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL22WholeProgramVisibilityE, i64 120), align 8, !range !78
  %i.b = trunc nuw i8 %i.a to i1
  %or.cond.i = select i1 %1, i1 true, i1 %i.b
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL29DisableWholeProgramVisibilityE, i64 120), align 8, !range !78
  %i.d = trunc nuw i8 %i.c to i1
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.e = select i1 %not.or.cond.i, i1 true, i1 %i.d
  br i1 %i.e, label %.loopexit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.015.024 = load ptr, ptr %i.f, align 8, !tbaa !354 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.015.024, %i.g
  br i1 %.not25, label %.loopexit22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.015.026 = phi ptr [ %.sroa.015.024, %.lr.ph ], [ %.sroa.015.0, %.critedge ] ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.015.026, i64 -64 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.015.026, i64 -8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !445
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %.critedge, label %_ZNK4llvm12GlobalObject11hasMetadataEj.exit

_ZNK4llvm12GlobalObject11hasMetadataEj.exit:      ; preds = %bb.c
  %i.p = call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(60) %i.m, i32 noundef 19) #32
  %.not21 = icmp eq ptr %i.p, null
  br i1 %.not21, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12GlobalObject11hasMetadataEj.exit
  %i.q = call noundef i32 @_ZNK4llvm12GlobalObject18getVCallVisibilityEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m) #27
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef i64 @_ZNK4llvm11GlobalValue7getGUIDEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #27 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !584, !noalias !1394
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !585, !noalias !1394 ; 2 uses
  %i.v = load i32, ptr %i.i, align 4, !tbaa !586, !noalias !1394 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add i32 %i.v, -1                         ; 2 uses
  %i.y = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.x, %i.ab                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !195
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %.loopexit, !prof !414

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.ak = phi i64 [ %i.aq, %bb.g ], [ %i.ad, %bb.f ]
  %.019.i.i.i.i = phi i32 [ %i.ap, %bb.g ], [ %i.ac, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !120
  %i.an = icmp eq i64 %i.s, %i.am
  br i1 %i.an, label %.critedge, label %bb.g, !prof !416

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add nuw i32 %.019.i.i.i.i, 1
  %i.ap = and i32 %i.ao, %i.x                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !195
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %.loopexit, !prof !417

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.f
  br i1 %3, label %bb.h, label %.critedge13

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.j, ptr %6, align 8, !tbaa !68
  store i32 0, ptr %i.k, align 8, !tbaa !180
  store i32 2, ptr %i.l, align 4, !tbaa !181
  call void @_ZNK4llvm12GlobalObject11getMetadataEjRNS_15SmallVectorImplIPNS_6MDNodeEEE(ptr noundef nonnull align 8 dereferenceable(89) %i.m, i32 noundef 19, ptr noundef nonnull align 8 dereferenceable(16) %6) #27
  %i.ax = load ptr, ptr %6, align 8, !tbaa !68    ; 4 uses
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !180 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %.idx.i = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i
  %.not29.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not29.not.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.01930.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.01930.i = phi ptr [ %i.bb, %bb.i ], [ %i.ax, %bb.h ] ; 2 uses
  %i.bc = load ptr, ptr %.01930.i, align 8, !tbaa !402 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = and i64 %i.be, 2
  %.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bi = lshr i64 %i.be, 2
  %i.bj = and i64 %i.bi, 15
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bk
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

_ZNK4llvm6MDNode10getOperandEj.exit.i:            ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %i.bh, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !405 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !424
  %.not27.i = icmp eq i8 %i.bo, 0
  br i1 %.not27.i, label %bb.l, label %bb.i

bb.l:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i
  %i.bp = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #27 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = call fastcc noundef zeroext i1 @_ZL25typeIDVisibleToRegularObjN4llvm9StringRefENS_12function_refIFbS0_EEE(ptr %i.bq, i64 %i.br, ptr readonly %4, i64 %5)
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !68
  %i.bt = xor i1 %i.bs, true
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.l, %bb.h
  %i.bu = phi ptr [ %.pre.i, %bb.l ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ] ; 2 uses
  %.2.i = phi i1 [ %i.bt, %bb.l ], [ true, %bb.h ], [ true, %bb.i ]
  %i.bv = icmp eq ptr %i.bu, %i.j
  br i1 %i.bv, label %_ZL25skipUpdateDueToValidationRN4llvm14GlobalVariableENS_12function_refIFbNS_9StringRefEEEE.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i
  call void @free(ptr noundef %i.bu) #27
  br label %_ZL25skipUpdateDueToValidationRN4llvm14GlobalVariableENS_12function_refIFbNS_9StringRefEEEE.exit

_ZL25skipUpdateDueToValidationRN4llvm14GlobalVariableENS_12function_refIFbNS_9StringRefEEEE.exit: ; preds = %.loopexit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.2.i, label %.critedge13, label %.critedge

.critedge13:                                      ; preds = %.loopexit, %_ZL25skipUpdateDueToValidationRN4llvm14GlobalVariableENS_12function_refIFbNS_9StringRefEEEE.exit
  call void @_ZN4llvm12GlobalObject26setVCallVisibilityMetadataENS0_15VCallVisibilityE(ptr noundef nonnull align 8 dereferenceable(60) %i.m, i32 noundef 1) #27
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.d, %_ZNK4llvm12GlobalObject11hasMetadataEj.exit, %.critedge13, %_ZL25skipUpdateDueToValidationRN4llvm14GlobalVariableENS_12function_refIFbNS_9StringRefEEEE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.015.026, i64 8
  %.sroa.015.0 = load ptr, ptr %i.bw, align 8, !tbaa !354 ; 2 uses
  %.not = icmp eq ptr %.sroa.015.0, %i.g
  br i1 %.not, label %.loopexit22, label %bb.c

.loopexit22:                                      ; preds = %.critedge, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZNK4llvm12GlobalObject18getVCallVisibilityEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm11GlobalValue7getGUIDEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN4llvm12GlobalObject26setVCallVisibilityMetadataENS0_15VCallVisibilityE(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25updatePublicTypeTestCallsERNS_6ModuleEb(ptr noundef nonnull align 8 dereferenceable(1288) %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.312", align 8 ; 8 uses
  %i.a = alloca [2 x ptr], align 8                ; 9 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.b = tail call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.46, i64 29, ptr null, i64 0) #27 ; 2 uses
  %i.c = tail call noundef ptr @_ZN4llvm9Intrinsic22getDeclarationIfExistsEPKNS_6ModuleEj(ptr noundef nonnull %0, i32 noundef 323) #27 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %bb.b

end_hunk_0
