inline.NumInlined: 691
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE:bb.a

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ac, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %.sroa.8.1 = phi ptr [ %.sroa.8.079, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ], [ %i.gh, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ft, %bb.ac ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.080, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ], [ %i.gi, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.13.080, %bb.ac ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.081, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ], [ %i.ge, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0.081, %bb.ac ] ; 2 uses
  %i.gj = add nuw nsw i32 %.05182, 8              ; 2 uses
  %i.gk = load ptr, ptr %i.ef, align 8
  %i.gl = load ptr, ptr %i.eg, align 8
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = shl i32 %i.gp, 1
  %i.gr = and i32 %i.gq, -8
  %i.gs = icmp slt i32 %i.gj, %i.gr
  br i1 %i.gs, label %bb.x, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit, !llvm.loop !15

bb.ah:                                            ; preds = %bb.w, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, %bb.u, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit, %._crit_edge, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.5
  %.1 = phi ptr [ %i.bl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.5 ], [ %i.bw, %._crit_edge ], [ %1, %bb.u ], [ %i.eq, %bb.w ], [ %i.fg, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit ], [ %1, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ]
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %1, %i.q
  br i1 %i.r, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor11MutableNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 251658240
  %.not.i.i5 = icmp eq i32 %i.v, 251658240
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = add i64 %i.w, 32
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  br i1 %.not.i.i5, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = sext i32 %2 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.af, %1
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.d
  %i.ag = sext i32 %2 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.ai, %1
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.aj = phi ptr [ %i.ah, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ae, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ak = phi ptr [ %i.ai, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.af, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.al = phi ptr [ %i.s, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.z, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.am = xor i32 %2, -1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %.not14.i = icmp eq ptr %i.ak, null
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef %i.ao) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %1, ptr %i.aj, align 8
  %.not15.i = icmp eq ptr %1, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ao) #13
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor3GetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %0, align 8                ; 8 uses
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %i.j = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties6EqualsEPNS1_4NodeES4_(ptr noundef %i.f, ptr noundef %i.l) #13
  br i1 %i.m, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i, label %bb.d, !llvm.loop !16

bb.f:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_ZN2v88internal8compiler14NodeProperties8HashCodeEPNS1_4NodeE(ptr noundef %i.f) #13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = phi i64 [ %.pre.i.i.i.i.i, %bb.g ], [ %i.ae, %bb.i ]
  %.015.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.0.i.i.i.i.i, %bb.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.ab, %bb.i ] ; 3 uses
  %i.x = icmp eq i64 %i.n, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties6EqualsEPNS1_4NodeES4_(ptr noundef %i.f, ptr noundef %i.z) #13
  br i1 %i.aa, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, %bb.h
  %i.ab = load ptr, ptr %.0.i.i.i.i.i, align 8    ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i
  %i.ac = load i64, ptr %i.o, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = urem i64 %i.ae, %i.ac
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.q
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, !llvm.loop !17

_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i
  %i.ag = load ptr, ptr %.015.i.i.i.i.i, align 8  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i

_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i: ; preds = %bb.e, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i
  %.sroa.06.1.i.i9.i = phi ptr [ %i.ag, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i9.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not8 = icmp eq ptr %i.aj, null
  br i1 %.not8, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %bb.t

_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i, %bb.i, %bb.d, %bb.f, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i
  %i.ak = load ptr, ptr %i.e, align 8
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.am = load i64, ptr %i.al, align 8
  %.not.not.i.i.i10 = icmp eq i64 %i.am, 0
  br i1 %.not.not.i.i.i10, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.sroa.06.0.in.i.i.i24 = phi ptr [ %i.an, %bb.k ], [ %.sroa.06.0.i.i.i25, %bb.m ]
  %.sroa.06.0.i.i.i25 = load ptr, ptr %.sroa.06.0.in.i.i.i24, align 8 ; 4 uses
  %i.ao = icmp eq ptr %.sroa.06.0.i.i.i25, null
  br i1 %i.ao, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i25, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties6EqualsEPNS1_4NodeES4_(ptr noundef nonnull %i.c, ptr noundef %i.aq) #13
  br i1 %i.ar, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26, label %bb.l, !llvm.loop !16

bb.n:                                             ; preds = %bb.j
  %i.as = tail call noundef i64 @_ZN2v88internal8compiler14NodeProperties8HashCodeEPNS1_4NodeE(ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = urem i64 %i.as, %i.au                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i11, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.phi.trans.insert.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.pre.i.i.i.i.i13 = load i64, ptr %.phi.trans.insert.i.i.i.i.i12, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bb = phi i64 [ %.pre.i.i.i.i.i13, %bb.o ], [ %i.bj, %bb.q ]
  %.015.i.i.i.i.i14 = phi ptr [ %i.az, %bb.o ], [ %.0.i.i.i.i.i15, %bb.q ]
  %.0.i.i.i.i.i15 = phi ptr [ %i.ba, %bb.o ], [ %i.bg, %bb.q ] ; 3 uses
  %i.bc = icmp eq i64 %i.as, %i.bb
  br i1 %i.bc, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i20, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i16

_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i20: ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i15, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties6EqualsEPNS1_4NodeES4_(ptr noundef nonnull %i.c, ptr noundef %i.be) #13
  br i1 %i.bf, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i21, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i16

_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i16: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i20, %bb.p
  %i.bg = load ptr, ptr %.0.i.i.i.i.i15, align 8  ; 3 uses
  %.not18.i.i.i.i.i17 = icmp eq ptr %i.bg, null
  br i1 %.not18.i.i.i.i.i17, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, label %bb.q

bb.q:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i16
  %i.bh = load i64, ptr %i.at, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = urem i64 %i.bj, %i.bh
  %.not19.i.i.i.i.i18 = icmp eq i64 %i.bk, %i.av
  br i1 %.not19.i.i.i.i.i18, label %bb.p, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, !llvm.loop !17

_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i21: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i20
  %i.bl = load ptr, ptr %.015.i.i.i.i.i14, align 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26

_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26: ; preds = %bb.m, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i21
  %.sroa.06.1.i.i9.i23 = phi ptr [ %i.bl, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i21 ], [ %.sroa.06.0.i.i.i25, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i9.i23, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not9 = icmp eq ptr %i.bo, null
  br i1 %.not9, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26
  %i.bp = load ptr, ptr %0, align 8               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp ult ptr %i.br, %i.bt
  br i1 %i.bu, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = add nsw i64 %i.cb, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.cc)
  %.pre.i = load ptr, ptr %i.bq, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %bb.r, %bb.s
  %i.cd = phi ptr [ %i.br, %bb.r ], [ %.pre.i, %bb.s ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.bq, align 8
  %i.cf = load ptr, ptr %i.b, align 8
  store ptr %i.cf, ptr %i.cd, align 8
  br label %bb.t

_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i16, %bb.q, %bb.l, %bb.n, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.i21, %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26
  %i.cg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ch = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cg, ptr %i.a, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store ptr %i.ci, ptr %1, align 8
  %i.cj = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityENS2_13NodeHashCache10NodeEqualsENS9_12NodeHashCodeENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS7_10_AllocNodeINS5_INS7_10_Hash_nodeIS4_Lb1EEEEEEEEESt4pairINS7_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i, %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit
  %.0 = phi ptr [ %i.bo, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit ], [ %i.cg, %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit26.thread ], [ %i.aj, %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i ], [ %i.ak, %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler12Deduplicator10SeenBeforeEPKNS1_13VirtualObjectE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.b, 1
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.b, 64
  %i.q = ashr i32 %i.p, 6                         ; 3 uses
  %i.r = icmp sgt i32 %i.q, %i.o
  br i1 %i.r, label %bb.c, label %_ZN2v88internal9BitVector6ResizeEiPNS0_4ZoneE.exit

bb.c:                                             ; preds = %bb.b
  %i.s = sext i32 %i.q to i64                     ; 4 uses
  %i.t = icmp sgt i32 %i.q, -1
  br i1 %i.t, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = shl nuw nsw i64 %i.s, 3                  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.u) #13
  %.pre.i.i.i = load i64, ptr %i.x, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i: ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 6 uses
  %i.ad = add i64 %i.ab, %i.u
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.af = icmp slt i32 %i.o, 1
  br i1 %i.af, label %_ZSt6copy_nIPmiS0_ET1_T_T0_S1_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i
  %.not.i.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i = and i64 %i.m, 17179869176
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %i.ae, i64 %.idx.i.i.i, i1 false)
  br label %_ZSt6copy_nIPmiS0_ET1_T_T0_S1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.ae, align 8
  store i64 %i.ag, ptr %i.ac, align 8
  br label %_ZSt6copy_nIPmiS0_ET1_T_T0_S1_.exit.i

_ZSt6copy_nIPmiS0_ET1_T_T0_S1_.exit.i:            ; preds = %bb.i, %bb.h, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i
  %sext.i = shl i64 %i.m, 29
  %i.ah = ashr i64 %sext.i, 32                    ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.s
  %.not5.i.i.i.i = icmp eq i64 %i.ah, %i.s
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIPmiEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZSt6copy_nIPmiS0_ET1_T_T0_S1_.exit.i
  %i.aj = getelementptr [8 x i8], ptr %i.ac, i64 %i.ah
  %i.ak = sub nsw i64 %i.s, %i.ah
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.al, i1 false)
  br label %_ZSt4fillIPmiEvT_S1_RKT0_.exit.i

_ZSt4fillIPmiEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.preheader.i, %_ZSt6copy_nIPmiS0_ET1_T_T0_S1_.exit.i
  store ptr %i.ac, ptr %i.i, align 8
  store ptr %i.ai, ptr %i.g, align 8
  br label %_ZN2v88internal9BitVector6ResizeEiPNS0_4ZoneE.exit

_ZN2v88internal9BitVector6ResizeEiPNS0_4ZoneE.exit: ; preds = %bb.b, %_ZSt4fillIPmiEvT_S1_RKT0_.exit.i
  %i.am = phi ptr [ %i.j, %bb.b ], [ %i.ac, %_ZSt4fillIPmiEvT_S1_RKT0_.exit.i ]
  store i32 %i.e, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN2v88internal9BitVector6ResizeEiPNS0_4ZoneE.exit
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %i.am, %_ZN2v88internal9BitVector6ResizeEiPNS0_4ZoneE.exit ]
  %i.ao = icmp sgt i32 %i.b, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = lshr i32 %i.b, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = and i32 %i.b, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au                    ; 2 uses
  %i.aw = and i64 %i.as, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = or i64 %i.as, %i.av
  store i64 %i.ay, ptr %i.ar, align 8
  ret i1 %i.ax
}

declare noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult21GetVirtualObjectFieldEPKNS1_13VirtualObjectEiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11ObjectStateEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler21EscapeAnalysisReducer17VerifyReplacementEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::AllNodes", align 8 ; 5 uses
  %2 = alloca %"class.v8::internal::compiler::EscapeAnalysisResult", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler8AllNodesC1EPNS0_4ZoneEPKNS1_7TFGraphEb(ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef %i.b, ptr noundef %i.e, i1 noundef zeroext true) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.g, %i.i
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.016 = phi ptr [ %i.g, %.lr.ph ], [ %i.z, %bb.f ] ; 2 uses
  %i.k = load ptr, ptr %.016, align 8             ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i16, ptr %i.m, align 8
  %i.o = icmp eq i16 %i.n, 266
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.p = call noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetVirtualObjectEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.k) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not14 = icmp eq ptr %i.p, null
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 16777215
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef %i.v, i32 noundef %i.y) #14
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b
}

end_hunk_0
