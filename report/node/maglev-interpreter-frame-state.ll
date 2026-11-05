Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-interpreter-frame-state?download=true
inline.NumInlined: 3050
inline.NumDeleted: 1473
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal6maglev16KnownNodeAspectsC2ERKS2_bPNS1_11LoopEffectsEPNS0_4ZoneE:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph167, %bb.az
  %.sroa.0113.0166 = phi ptr [ %i.ho, %.lr.ph167 ], [ %i.ij, %bb.az ] ; 2 uses
  %.sroa.0117.0165 = phi ptr [ %i.hs, %.lr.ph167 ], [ %.sroa.0117.2143, %bb.az ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0113.0166, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 24, i1 false)
  %i.hv = icmp eq ptr %.sroa.0117.0165, %i.hm
  br i1 %i.hv, label %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %bb.aw
  %i.hw = load ptr, ptr %i.ht, align 8            ; 2 uses
  %i.hx = load i32, ptr %17, align 8              ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i105
  %.sroa.0117.1 = phi ptr [ %.sroa.0117.0165, %.lr.ph.i105 ], [ %i.if, %bb.ay ] ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0117.1, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.hw
  br i1 %i.ia, label %.split.i, label %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit.i

.split.i:                                         ; preds = %bb.ax
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0117.1, i64 32
  %i.ic = load i32, ptr %i.ib, align 8            ; 2 uses
  %i.id = icmp slt i32 %i.ic, %i.hx
  br i1 %i.id, label %bb.ay, label %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit

_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit.i: ; preds = %bb.ax
  %i.ie = icmp ult ptr %i.hz, %i.hw
  br i1 %i.ie, label %bb.ay, label %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144

bb.ay:                                            ; preds = %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit.i, %.split.i
  %i.if = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0117.1) #21 ; 3 uses
  %i.ig = icmp eq ptr %i.if, %i.hm
  br i1 %i.ig, label %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144, label %bb.ax, !llvm.loop !138

_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit: ; preds = %.split.i
  %i.ih = icmp eq i32 %i.ic, %i.hx
  br i1 %i.ih, label %bb.az, label %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144

_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144: ; preds = %bb.ay, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit.i, %bb.aw, %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit
  %.sroa.0117.2142 = phi ptr [ %.sroa.0117.0165, %bb.aw ], [ %.sroa.0117.1, %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit ], [ %i.if, %bb.ay ], [ %.sroa.0117.1, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit.i ]
  %i.ii = call { ptr, i8 } @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_S5_ESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS9_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %17) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144, %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit
  %.sroa.0117.2143 = phi ptr [ %.sroa.0117.2142, %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit.thread144 ], [ %.sroa.0117.1, %_ZN2v88internal6maglev12_GLOBAL__N_116NextInIgnoreListISt5tupleIJPNS1_9ValueNodeEiEEEEbRNS0_7ZoneSetIT_St4lessIS9_EE14const_iteratorESE_RKS9_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.ij = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0113.0166) #21 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hp
  br i1 %i.ik, label %_ZN2v88internal7ZoneMapISt5tupleIJPNS0_6maglev9ValueNodeEiEES5_St4lessIS6_EEaSERKS9_.exit, label %bb.aw

_ZN2v88internal7ZoneMapISt5tupleIJPNS0_6maglev9ValueNodeEiEES5_St4lessIS6_EEaSERKS9_.exit: ; preds = %bb.az, %bb.av, %bb.au, %bb.ao
  %i.il = load i64, ptr %i.as, align 8
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_ZN2v88internal7ZoneMapISt5tupleIJPNS0_6maglev9ValueNodeEiEES5_St4lessIS6_EEaSERKS9_.exit
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 225
  %i.io = load i8, ptr %i.in, align 1, !range !111, !noundef !112
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.ir = load i8, ptr %i.iq, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ba, %bb.bb
  %.sink = phi i8 [ %i.ir, %bb.bb ], [ 3, %bb.ba ]
  store i8 %.sink, ptr %i.ba, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %_ZN2v88internal7ZoneMapISt5tupleIJPNS0_6maglev9ValueNodeEiEES5_St4lessIS6_EEaSERKS9_.exit, %bb.u, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeENS2_8NodeInfoESt4lessIS4_EEaSERKS8_.exit
  %i.is = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.it = icmp ult i32 %i.is, -2
  br i1 %i.it, label %bb.bd, label %_ZN2v88internal6maglev16KnownNodeAspects22increment_effect_epochEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.iu = add nuw i32 %i.is, 1
  store i32 %i.iu, ptr %i.bb, align 4
  br label %_ZN2v88internal6maglev16KnownNodeAspects22increment_effect_epochEv.exit

_ZN2v88internal6maglev16KnownNodeAspects22increment_effect_epochEv.exit: ; preds = %bb.bc, %bb.bd
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %._crit_edge, label %.lr.ph169

._crit_edge:                                      ; preds = %bb.bg, %_ZN2v88internal6maglev16KnownNodeAspects22increment_effect_epochEv.exit
  %.sroa.05.08.i = load ptr, ptr %i.bk, align 8   ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.05.08.i, null
  br i1 %.not9.i, label %_ZNK2v88internal6maglev17VirtualObjectList8SnapshotEv.exit, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %._crit_edge, %bb.be
  %.sroa.05.010.i = phi ptr [ %.sroa.05.0.i, %bb.be ], [ %.sroa.05.08.i, %._crit_edge ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 37 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !range !111, !noundef !112
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %_ZNK2v88internal6maglev17VirtualObjectList8SnapshotEv.exit, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i107
  store i8 1, ptr %i.iz, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 80
  %.sroa.05.0.i = load ptr, ptr %i.jc, align 8    ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, null
  br i1 %.not.i, label %_ZNK2v88internal6maglev17VirtualObjectList8SnapshotEv.exit, label %.lr.ph.i107

_ZNK2v88internal6maglev17VirtualObjectList8SnapshotEv.exit: ; preds = %.lr.ph.i107, %bb.be, %._crit_edge
  ret void

.lr.ph169:                                        ; preds = %_ZN2v88internal6maglev16KnownNodeAspects22increment_effect_epochEv.exit, %bb.bg
  %.sroa.0109.0168 = phi ptr [ %i.ji, %bb.bg ], [ %i.iw, %_ZN2v88internal6maglev16KnownNodeAspects22increment_effect_epochEv.exit ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0109.0168, i64 48
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = load i32, ptr %i.bb, align 4
  %.not = icmp ult i32 %i.je, %i.jf
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph169
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0109.0168, i64 32
  %i.jh = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRKS7_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.jg) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph169
  %i.ji = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0109.0168) #21 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ix
  br i1 %i.jj, label %._crit_edge, label %.lr.ph169
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(352) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(352) %1) local_unnamed_addr #0 align 2 !guid !150 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::ValueNode *, std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>, std::_Select1st<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>, std::less<v8::internal::maglev::ValueNode *>, v8::internal::ZoneAllocator<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::ValueNode *, std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>, std::_Select1st<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>, std::less<v8::internal::maglev::ValueNode *>, v8::internal::ZoneAllocator<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::ValueNode *, std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>, std::_Select1st<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>, std::less<v8::internal::maglev::ValueNode *>, v8::internal::ZoneAllocator<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::ZoneMap.47", align 8 ; 12 uses
  %6 = alloca %"class.v8::internal::ZoneMap.47", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::ZoneMap.47", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not = icmp eq i8 %i.e, 3
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not10 = icmp eq i8 %i.e, %i.g
  %.not11 = icmp eq i8 %i.g, 0
  %or.cond = or i1 %.not10, %.not11
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 159), align 1, !range !111, !noundef !112
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, !prof !114

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 71) #20 ; 0 uses
  br label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.n = load i32, ptr %i.m, align 4
  %.not12 = icmp eq i32 %i.l, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %.not12, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  br i1 %i.r, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.010.0.ph34.i = phi ptr [ %i.p, %.lr.ph.lr.ph.i ], [ %i.an, %.outer.i ]
  %.sroa.03.0.ph33.i = phi ptr [ %i.t, %.lr.ph.lr.ph.i ], [ %i.ao, %.outer.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.010.031.i = phi ptr [ %.sroa.010.0.ph34.i, %.lr.ph.i ], [ %i.x, %bb.i ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i, i64 40
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %8 = icmp ne i32 %i.w, 262143
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i, i64 45
  %10 = load i8, ptr %9, align 1, !range !111
  %11 = trunc nuw i8 %10 to i1
  %.not17.i = select i1 %8, i1 true, i1 %11
  br i1 %.not17.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i) #21 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, label %bb.h, !llvm.loop !142

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq ptr %.sroa.03.0.ph33.i, %i.u
  br i1 %i.z, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i
  %.sroa.03.1.i = phi ptr [ %i.af, %bb.l ], [ %.sroa.03.0.ph33.i, %.preheader.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %i.ab
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i) #21 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %.loopexit, label %bb.k, !llvm.loop !143

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ah, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i, i64 40
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = xor i32 %i.w, -1
  %i.al = and i32 %i.aj, %i.ak
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.outer.i, label %.loopexit

.outer.i:                                         ; preds = %bb.n
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i) #21 ; 2 uses
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i) #21
  %i.ap = icmp eq ptr %i.an, %i.q
  br i1 %i.ap, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, label %.lr.ph.i, !llvm.loop !142

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.j, %bb.l
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 159), align 1, !range !111, !noundef !112
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, !prof !114

bb.o:                                             ; preds = %.loopexit
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 54) #20 ; 0 uses
  br label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit

bb.p:                                             ; preds = %bb.f
  br i1 %i.r, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22, label %.lr.ph.lr.ph.i13

.lr.ph.lr.ph.i13:                                 ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.outer.i21, %.lr.ph.lr.ph.i13
  %.sroa.010.0.ph34.i15 = phi ptr [ %i.p, %.lr.ph.lr.ph.i13 ], [ %i.bx, %.outer.i21 ]
  %.sroa.03.0.ph33.i16 = phi ptr [ %i.au, %.lr.ph.lr.ph.i13 ], [ %i.by, %.outer.i21 ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i14
  %.sroa.010.031.i17 = phi ptr [ %.sroa.010.0.ph34.i15, %.lr.ph.i14 ], [ %i.ay, %bb.r ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 40
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %12 = icmp ne i32 %i.ax, 262143
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 45
  %14 = load i8, ptr %13, align 1, !range !111
  %15 = trunc nuw i8 %14 to i1                    ; 2 uses
  %.not17.i18 = select i1 %12, i1 true, i1 %15
  br i1 %.not17.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i17) #21 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.q
  br i1 %i.az, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22, label %bb.q, !llvm.loop !142

bb.s:                                             ; preds = %bb.q
  %i.ba = icmp eq ptr %.sroa.03.0.ph33.i16, %i.av
  br i1 %i.ba, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.preheader.i19
  %.sroa.03.1.i20 = phi ptr [ %i.bg, %bb.u ], [ %.sroa.03.0.ph33.i16, %.preheader.i19 ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 32
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.bc
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i20) #21 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.av
  br i1 %i.bh, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread, label %bb.t, !llvm.loop !143

bb.v:                                             ; preds = %bb.t
  %i.bi = icmp eq ptr %i.bc, %i.be
  br i1 %i.bi, label %bb.w, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 40
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = xor i32 %i.ax, -1
  %i.bm = and i32 %i.bk, %i.bl
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 44
  %i.bp = load i8, ptr %i.bo, align 4, !range !111
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i = select i1 %15, i1 %i.bq, i1 false
  br i1 %or.cond.i, label %bb.y, label %.outer.i21

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 45
  %i.bs = load i8, ptr %i.br, align 1, !range !111, !noundef !112
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i: ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 48
  %i.bw = tail call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  br i1 %i.bw, label %.outer.i21, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

.outer.i21:                                       ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i, %bb.x
  %i.bx = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i17) #21 ; 2 uses
  %i.by = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i20) #21
  %i.bz = icmp eq ptr %i.bx, %i.q
  br i1 %i.bz, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22, label %.lr.ph.i14, !llvm.loop !142

_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread: ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i, %bb.w, %bb.y, %bb.v, %bb.s, %bb.u
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 159), align 1, !range !111, !noundef !112
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.z, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, !prof !114

bb.z:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 43) #20 ; 0 uses
  br label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit

_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22: ; preds = %.outer.i21, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %.loopexit36, label %.lr.ph.lr.ph.i.i

.lr.ph.lr.ph.i.i:                                 ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.cz = insertelement <2 x ptr> poison, ptr %i.cj, i64 0
  %i.da = shufflevector <2 x ptr> %i.cz, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i", %.lr.ph.lr.ph.i.i
  %.sroa.010.0.ph47.i.i = phi ptr [ %i.ce, %.lr.ph.lr.ph.i.i ], [ %i.fo, %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i" ]
  %.sroa.03.0.ph46.i.i = phi ptr [ %i.ci, %.lr.ph.lr.ph.i.i ], [ %i.fp, %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i" ] ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.010.044.i.i = phi ptr [ %.sroa.010.0.ph47.i.i, %.lr.ph.i.i ], [ %i.dm, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i ] ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.db, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %5, align 8
  store i32 0, ptr %i.cj, align 8
  store ptr null, ptr %i.ck, align 8
  store <2 x ptr> %i.da, ptr %i.cl, align 8
  store i64 0, ptr %i.cn, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %5, ptr %4, align 8
  %i.de = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %bb.ab ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %bb.ac, !llvm.loop !1

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %bb.ac
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cl, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.de, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.di, %bb.ad ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i, label %bb.ad, !llvm.loop !2

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i: ; preds = %bb.ad
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.cm, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 88
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  store i64 %i.dk, ptr %i.cn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr %i.de, ptr %i.ck, align 8
  %i.dl = icmp eq i64 %i.dk, 0
  call void @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.de)
  br i1 %i.dl, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i, label %bb.ae

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i: ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i, %bb.aa
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.044.i.i) #21 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cf
  br i1 %i.dn, label %.loopexit36, label %bb.aa, !llvm.loop !144

bb.ae:                                            ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 88
  %i.dr = icmp eq ptr %.sroa.03.0.ph46.i.i, %i.co
  br i1 %i.dr, label %.loopexit35, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 32
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.preheader.i.i
  %.sroa.03.1.i.i = phi ptr [ %i.dx, %bb.ag ], [ %.sroa.03.0.ph46.i.i, %.preheader.i.i ] ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i, i64 32
  %i.dv = load i64, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i.i) #21 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.co
  br i1 %i.dy, label %.loopexit35, label %bb.af, !llvm.loop !145

bb.ah:                                            ; preds = %bb.af
  %i.dz = icmp eq i64 %i.dt, %i.dv
  br i1 %i.dz, label %bb.ai, label %.loopexit35

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i.i.i.i.i7.i.i = load ptr, ptr %i.do, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i7.i.i, ptr %6, align 8
  store i32 0, ptr %i.cp, align 8
  store ptr null, ptr %i.cq, align 8
  store ptr %i.cp, ptr %i.cr, align 8
  store ptr %i.cp, ptr %i.cs, align 8
  store i64 0, ptr %i.ct, align 8
  %i.ea = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not.i.i.i8.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i8.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %6, ptr %3, align 8
  %i.eb = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i9.i.i = phi ptr [ %i.eb, %bb.aj ], [ %i.ed, %bb.ak ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i9.i.i, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i10.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i.i10.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i, label %bb.ak, !llvm.loop !1

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i: ; preds = %bb.ak
  store ptr %.0.i.i.i.i.i.i.i9.i.i, ptr %i.cr, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i
  %.0.i.i7.i.i.i.i.i12.i.i = phi ptr [ %i.eb, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i ], [ %i.ef, %bb.al ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i12.i.i, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i.i13.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i8.i.i.i.i.i13.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i, label %bb.al, !llvm.loop !2

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i: ; preds = %bb.al
  store ptr %.0.i.i7.i.i.i.i.i12.i.i, ptr %i.cs, align 8
  %i.eg = load i64, ptr %i.dq, align 8
  store i64 %i.eg, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.eb, ptr %i.cq, align 8
  br label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i, %bb.ai
  %i.eh = phi ptr [ %i.cp, %bb.ai ], [ %.0.i.i.i.i.i.i.i9.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i16.i.i = load ptr, ptr %i.ei, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i16.i.i, ptr %7, align 8
  store i32 0, ptr %i.cu, align 8
  store ptr null, ptr %i.cv, align 8
end_hunk_0
