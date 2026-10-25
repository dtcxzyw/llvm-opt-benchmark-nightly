Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.14?download=true
inline.NumInlined: 177
inline.NumDeleted: 112
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1c_4gpos5marks18MarkAttachmentRuleENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1c_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.0..sroa_idx10.i.i52, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i.i40, i64 112, i1 false), !noalias !59
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos5marks18MarkAttachmentRuleENCINvB2_9quicksortB1t_NvYB1t_NtNtBa_3cmp10PartialOrd2ltE0EB1y_.exit.i

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.1312.0.ph.i.i43, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.01.0.lcssa.i.i48, i64 120, i1 false), !alias.scope !58
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.0.1.i.i61 = phi i64 [ %.sroa.017.0.copyload.i.i62, %bb.ae ], [ %.sroa.0.019.ph.i.i44, %bb.ac ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.01.0.lcssa.i.i48, ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 120, i1 false), !alias.scope !58
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i48, i64 120
  br label %.outer.i.i42

.outer.i.i42:                                     ; preds = %bb.ad, %bb.t
  %.sroa.1312.0.ph.i.i43 = phi ptr [ %i.av, %bb.ad ], [ undef, %bb.t ] ; 5 uses
  %.sroa.0.019.ph.i.i44 = phi i64 [ %.sroa.0.1.i.i61, %bb.ad ], [ -5, %bb.t ] ; 6 uses
  %.sroa.011.0.ph.i.i45 = phi ptr [ %i.av, %bb.ad ], [ %i.aq, %bb.t ] ; 3 uses
  %.sroa.01.0.ph.i.i46 = phi ptr [ %i.bc, %bb.ad ], [ %i.ap, %bb.t ] ; 3 uses
  %i.bd = icmp ult ptr %.sroa.01.0.ph.i.i46, %.sroa.011.0.ph.i.i45
  br i1 %i.bd, label %.lr.ph.i.i64, label %._crit_edge.i.i47

bb.ae:                                            ; preds = %bb.aa
  %.sroa.017.0.copyload.i.i62 = load i64, ptr %.sroa.01.0.lcssa.i.i48, align 8, !alias.scope !58 ; 2 uses
  %.sroa.418.0..sroa.01.0.sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i48, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i.i40, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.418.0..sroa.01.0.sroa_idx.i.i63, i64 112, i1 false), !noalias !59
  %i.be = icmp ne i64 %.sroa.017.0.copyload.i.i62, -5
  tail call void @llvm.assume(i1 %i.be)
  br label %bb.ad

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos5marks18MarkAttachmentRuleENCINvB2_9quicksortB1t_NvYB1t_NtNtBa_3cmp10PartialOrd2ltE0EB1y_.exit.i: ; preds = %bb.ab, %.critedge.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i40)
  %.not7.i53 = icmp samesign ult i64 %i.ba, %.sroa.15.0110220
  br i1 %.not7.i53, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos5marks18MarkAttachmentRuleENCINvB2_9quicksortB1t_NvYB1t_NtNtBa_3cmp10PartialOrd2ltE0EB1y_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos5marks18MarkAttachmentRuleENCINvB2_9quicksortB1t_NvYB1t_NtNtBa_3cmp10PartialOrd2ltE0EB1y_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0111219, i64 noundef range(i64 17, 76861433640456466) %.sroa.15.0110220, i64 noundef 0, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  %i.bf = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bg = sub nuw nsw i64 %.sroa.15.0110220, %i.bf
  %i.bh = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0111219, i64 %i.bf
  br label %.backedge

.backedge:                                        ; preds = %bb.ag, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE12split_at_mutBz_.exit
  %.sroa.023.0.be = phi ptr [ %i.aj, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE12split_at_mutBz_.exit ], [ null, %bb.ag ]
  %.sroa.15.0.be = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE12split_at_mutBz_.exit ], [ %i.bg, %bb.ag ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ak, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE12split_at_mutBz_.exit ], [ %i.bh, %bb.ag ] ; 3 uses
  %i.bi = icmp ult i64 %.sroa.15.0.be, 17
  br i1 %i.bi, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1c_4gpos7pairpos11PairPosRuleENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 25063510969714065) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) %2, i32 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i43 = alloca [360 x i8], align 8     ; 5 uses
  %.sroa.4.i.i = alloca [360 x i8], align 8       ; 5 uses
  %i.a = icmp samesign ult i64 %1, 17
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph248

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.e, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph248

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %i.d = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.d, label %bb.b, label %_RINvXs2_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB14_4gpos7pairpos11PairPosRuleENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNvYBZ_NtNtBe_3cmp10PartialOrd2ltEB14_.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1r_4gpos7pairpos11PairPosRuleENvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 17) %.sroa.15.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull %4)
  br label %_RINvXs2_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB14_4gpos7pairpos11PairPosRuleENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNvYBZ_NtNtBe_3cmp10PartialOrd2ltEB14_.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0119.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0118.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0119.lcssa, i64 noundef %.sroa.15.0118.lcssa, ptr noalias nofree noundef nonnull %4) #15
  br label %_RINvXs2_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB14_4gpos7pairpos11PairPosRuleENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNvYBZ_NtNtBe_3cmp10PartialOrd2ltEB14_.exit

.lr.ph248:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0115247 = phi i32 [ %i.e, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0116245 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 9 uses
  %.sroa.15.0118244 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0119243 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 43 uses
  %i.e = add i32 %.sroa.026.0115247, -1           ; 3 uses
  %i.f = lshr i64 %.sroa.15.0118244, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.f, 1472
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 %.idx.i ; 13 uses
  %.idx2.i = mul nuw nsw i64 %i.f, 2576
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 %.idx2.i ; 13 uses
  %i.i = icmp samesign ult i64 %.sroa.15.0118244, 64
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph248
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB19_4gpos7pairpos11PairPosRuleENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef nonnull readonly align 8 %.sroa.0.0119243, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.h, i64 noundef %i.f, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.d:                                             ; preds = %.lr.ph248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.k = load i64, ptr %.sroa.0.0119243, align 8, !range !5, !alias.scope !231, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.k, -3
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !231, !nonnull !4, !align !6
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.m, ptr %.sroa.0.0119243 ; 7 uses
  %i.n = load i64, ptr %i.g, align 8, !range !5, !alias.scope !232, !noundef !4
  %.not2.i.i.i.i.i = icmp eq i64 %i.n, -3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !232, !nonnull !4, !align !6
  %.sroa.01.0.i.i.i.i.i = select i1 %.not2.i.i.i.i.i, ptr %i.p, ptr %i.g ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 352 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !alias.scope !237, !noalias !238, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 352 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !239, !noalias !240, !noundef !4 ; 2 uses
  %i.u = tail call i8 @llvm.ucmp.i8.i16(i16 %i.r, i16 %i.t)
  %i.v = icmp eq i16 %i.r, %i.t
  br i1 %i.v, label %bb.e, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 320
  %i.y = tail call noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !241 ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i.i) #16, !noalias !241 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 160
  %i.ae = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ad) #16, !noalias !241
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ae, %bb.g ], [ %i.aa, %bb.f ], [ %i.y, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.af = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %bb.h, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i

bb.h:                                             ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 364
  %i.ah = load i16, ptr %i.ag, align 4, !alias.scope !242, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 364
  %i.aj = load i16, ptr %i.ai, align 4, !alias.scope !243, !noundef !4 ; 2 uses
  %i.ak = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ah, i16 %i.aj)
  %i.al = icmp eq i16 %i.ah, %i.aj
  br i1 %i.al, label %bb.i, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 366
  %i.an = load i16, ptr %i.am, align 2, !alias.scope !242, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 366
  %i.ap = load i16, ptr %i.ao, align 2, !alias.scope !243, !noundef !4 ; 2 uses
  %i.aq = tail call i8 @llvm.ucmp.i8.i16(i16 %i.an, i16 %i.ap)
  %i.ar = icmp eq i16 %i.an, %i.ap
  br i1 %i.ar, label %bb.j, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 360
  %i.at = load i16, ptr %i.as, align 8, !range !7, !alias.scope !242, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 362
  %i.av = trunc nuw i16 %i.at to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.ax = load i16, ptr %i.aw, align 8, !range !7, !alias.scope !243, !noundef !4
  %i.ay = trunc nuw i16 %i.ax to i1               ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ay, label %bb.m, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i

bb.l:                                             ; preds = %bb.j
  %..i.i.i.i = sext i1 %i.ay to i8
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 362
  %i.ba = load i16, ptr %i.au, align 2, !alias.scope !242, !noundef !4
  %i.bb = load i16, ptr %i.az, align 2, !alias.scope !243, !noundef !4
  %i.bc = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ba, i16 %i.bb)
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i

_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.bc, %bb.m ], [ %i.ak, %bb.h ], [ %..i.i.i.i, %bb.l ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i ], [ %i.aq, %bb.i ], [ 0, %bb.k ] ; 3 uses
  %i.bd = icmp slt i8 %.sroa.0.0.i.i.i.i, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.be = load i64, ptr %i.h, align 8, !range !5, !alias.scope !251, !noundef !4
  %.not2.i.i.i.i5.i = icmp eq i64 %i.be, -3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !251, !nonnull !4, !align !6
  %.sroa.01.0.i.i.i.i6.i = select i1 %.not2.i.i.i.i5.i, ptr %i.bg, ptr %i.h ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.bh = load i16, ptr %i.q, align 8, !alias.scope !256, !noalias !257, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i6.i, i64 352 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8, !alias.scope !258, !noalias !259, !noundef !4 ; 2 uses
  %i.bk = tail call i8 @llvm.ucmp.i8.i16(i16 %i.bh, i16 %i.bj)
  %i.bl = icmp eq i16 %i.bh, %i.bj
  br i1 %i.bl, label %bb.n, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i

bb.n:                                             ; preds = %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 320
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i6.i, i64 320
  %i.bo = tail call noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn), !noalias !241 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i6.i) #16, !noalias !241 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.p, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i6.i, i64 160
  %i.bu = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.bt) #16, !noalias !241
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i: ; preds = %bb.p, %bb.o, %bb.n, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i
  %.sroa.0.0.i.i.i.i.i.i8.i = phi i8 [ %i.bu, %bb.p ], [ %i.bq, %bb.o ], [ %i.bo, %bb.n ], [ %i.bk, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.i ] ; 2 uses
  %i.bv = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i8.i, 0
  br i1 %i.bv, label %bb.q, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i

bb.q:                                             ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 364
  %i.bx = load i16, ptr %i.bw, align 4, !alias.scope !260, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 364
  %i.bz = load i16, ptr %i.by, align 4, !alias.scope !261, !noundef !4 ; 2 uses
  %i.ca = tail call i8 @llvm.ucmp.i8.i16(i16 %i.bx, i16 %i.bz)
  %i.cb = icmp eq i16 %i.bx, %i.bz
  br i1 %i.cb, label %bb.r, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 366
  %i.cd = load i16, ptr %i.cc, align 2, !alias.scope !260, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 366
  %i.cf = load i16, ptr %i.ce, align 2, !alias.scope !261, !noundef !4 ; 2 uses
  %i.cg = tail call i8 @llvm.ucmp.i8.i16(i16 %i.cd, i16 %i.cf)
  %i.ch = icmp eq i16 %i.cd, %i.cf
  br i1 %i.ch, label %bb.s, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 360
  %i.cj = load i16, ptr %i.ci, align 8, !range !7, !alias.scope !260, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 362
  %i.cl = trunc nuw i16 %i.cj to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.cn = load i16, ptr %i.cm, align 8, !range !7, !alias.scope !261, !noundef !4
  %i.co = trunc nuw i16 %i.cn to i1               ; 2 uses
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %i.co, label %bb.v, label %._RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11_crit_edge.i

._RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11_crit_edge.i: ; preds = %bb.t
  br i1 %i.bd, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, label %bb.w

bb.u:                                             ; preds = %bb.s
  %..i.i.i10.i = sext i1 %i.co to i8
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i

bb.v:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 362
  %i.cq = load i16, ptr %i.ck, align 2, !alias.scope !260, !noundef !4
  %i.cr = load i16, ptr %i.cp, align 2, !alias.scope !261, !noundef !4
  %i.cs = tail call i8 @llvm.ucmp.i8.i16(i16 %i.cq, i16 %i.cr)
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i

_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i: ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i
  %.sroa.0.0.i.i.i9.i = phi i8 [ %i.cs, %bb.v ], [ %i.ca, %bb.q ], [ %..i.i.i10.i, %bb.u ], [ %.sroa.0.0.i.i.i.i.i.i8.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i7.i ], [ %i.cg, %bb.r ]
  %i.ct = xor i8 %.sroa.0.0.i.i.i9.i, %.sroa.0.0.i.i.i.i
  %i.cu = icmp slt i8 %i.ct, 0
  br i1 %i.cu, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, label %bb.w

bb.w:                                             ; preds = %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i, %._RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11_crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.cv = load i16, ptr %i.s, align 8, !alias.scope !272, !noalias !273, !noundef !4 ; 2 uses
  %i.cw = load i16, ptr %i.bi, align 8, !alias.scope !274, !noalias !275, !noundef !4 ; 2 uses
  %i.cx = tail call i8 @llvm.ucmp.i8.i16(i16 %i.cv, i16 %i.cw)
  %i.cy = icmp eq i16 %i.cv, %i.cw
  br i1 %i.cy, label %bb.x, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 320
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i6.i, i64 320
  %i.db = tail call noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.da), !noalias !241 ; 2 uses
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.y, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i

bb.y:                                             ; preds = %bb.x
  %i.dd = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i6.i) #16, !noalias !241 ; 2 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.z, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 160
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i6.i, i64 160
  %i.dh = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.dg) #16, !noalias !241
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i.i.i17.i = phi i8 [ %i.dh, %bb.z ], [ %i.dd, %bb.y ], [ %i.db, %bb.x ], [ %i.cx, %bb.w ] ; 2 uses
  %i.di = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i17.i, 0
  br i1 %i.di, label %bb.aa, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i

bb.aa:                                            ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 364
  %i.dk = load i16, ptr %i.dj, align 4, !alias.scope !276, !noundef !4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 364
  %i.dm = load i16, ptr %i.dl, align 4, !alias.scope !277, !noundef !4 ; 2 uses
  %i.dn = tail call i8 @llvm.ucmp.i8.i16(i16 %i.dk, i16 %i.dm)
  %i.do = icmp eq i16 %i.dk, %i.dm
  br i1 %i.do, label %bb.ab, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 366
  %i.dq = load i16, ptr %i.dp, align 2, !alias.scope !276, !noundef !4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 366
  %i.ds = load i16, ptr %i.dr, align 2, !alias.scope !277, !noundef !4 ; 2 uses
  %i.dt = tail call i8 @llvm.ucmp.i8.i16(i16 %i.dq, i16 %i.ds)
  %i.du = icmp eq i16 %i.dq, %i.ds
  br i1 %i.du, label %bb.ac, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.dw = load i16, ptr %i.dv, align 8, !range !7, !alias.scope !276, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 362
  %i.dy = trunc nuw i16 %i.dw to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.ea = load i16, ptr %i.dz, align 8, !range !7, !alias.scope !277, !noundef !4
  %i.eb = trunc nuw i16 %i.ea to i1               ; 2 uses
  br i1 %i.dy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.eb, label %bb.af, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i

bb.ae:                                            ; preds = %bb.ac
  %..i.i.i19.i = sext i1 %i.eb to i8
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i

bb.af:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 362
  %i.ed = load i16, ptr %i.dx, align 2, !alias.scope !276, !noundef !4
  %i.ee = load i16, ptr %i.ec, align 2, !alias.scope !277, !noundef !4
  %i.ef = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ed, i16 %i.ee)
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i

_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i
  %.sroa.0.0.i.i.i18.i = phi i8 [ %i.ef, %bb.af ], [ %i.dn, %bb.aa ], [ %..i.i.i19.i, %bb.ae ], [ %.sroa.0.0.i.i.i.i.i.i17.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i16.i ], [ %i.dt, %bb.ab ], [ 0, %bb.ad ]
  %i.eg = xor i8 %.sroa.0.0.i.i.i18.i, %.sroa.0.0.i.i.i.i
  %i.eh = icmp slt i8 %i.eg, 0
  %..i.i = select i1 %i.eh, ptr %i.h, ptr %i.g
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.c, %._RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11_crit_edge.i, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.0.0119243, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11.i ], [ %..i.i, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit20.i ], [ %.sroa.0.0119243, %._RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit11_crit_edge.i ]
  %i.ei = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.0119243 to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ek, 368        ; 3 uses
  %i.el = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0118244
  tail call void @llvm.assume(i1 %i.el)
  %.not = icmp eq ptr %.sroa.023.0116245, null
  br i1 %.not, label %bb.ag, label %bb.bi

_RINvXs2_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB14_4gpos7pairpos11PairPosRuleENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNvYBZ_NtNtBe_3cmp10PartialOrd2ltEB14_.exit: ; preds = %bb.b, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ag:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0119243, i64 noundef range(i64 17, 25063510969714065) %.sroa.15.0118244, i64 noundef 0, i64 noundef range(i64 0, 25063510969714064) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.en = getelementptr [368 x i8], ptr %.sroa.0.0119243, i64 %.sroa.15.0118244
  %i.eo = load i64, ptr %.sroa.0.0119243, align 8, !range !5, !alias.scope !280
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.eo, -3
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !280, !nonnull !4, !align !6
  %.sroa.01.0.i.i.i.i.i.i = select i1 %.not2.i.i.i.i.i.i, ptr %i.eq, ptr %.sroa.0.0119243 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 352 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 320 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 364
  %i.ev = load i16, ptr %i.eu, align 4, !alias.scope !280 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 366
  %i.ex = load i16, ptr %i.ew, align 2, !alias.scope !280 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 360
  %i.ez = load i16, ptr %i.ey, align 8, !range !7, !alias.scope !280
  %i.fa = trunc nuw i16 %i.ez to i1               ; 4 uses
  %..i.i.i.i.i = sext i1 %i.fa to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 362
  %i.fc = load i16, ptr %i.fb, align 2, !alias.scope !280 ; 2 uses
  br label %.outer.i.i

.lr.ph.i.i:                                       ; preds = %.outer.i.i, %bb.ar
  %.sroa.01.031.i.i = phi ptr [ %i.gj, %bb.ar ], [ %.sroa.01.0.ph.i.i, %.outer.i.i ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.fd = load i64, ptr %.sroa.01.031.i.i, align 8, !range !5, !alias.scope !285, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fd, -3
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.01.031.i.i, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !285, !nonnull !4, !align !6
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.ff, ptr %.sroa.01.031.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 352
  %i.fh = load i16, ptr %i.fg, align 8, !alias.scope !290, !noalias !291, !noundef !4 ; 2 uses
  %i.fi = load i16, ptr %i.er, align 8, !alias.scope !292, !noalias !293, !noundef !4 ; 2 uses
  %i.fj = tail call i8 @llvm.ucmp.i8.i16(i16 %i.fh, i16 %i.fi)
  %i.fk = icmp eq i16 %i.fh, %i.fi
  br i1 %i.fk, label %bb.ah, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 320
  %i.fm = invoke noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i.i:                                       ; preds = %bb.ah
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.ai, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i

bb.ai:                                            ; preds = %.noexc.i.i
  %i.fo = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i.i.i) #16 ; 2 uses
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.aj, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 160
  %i.fr = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.et) #16
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai, %.noexc.i.i, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.fr, %bb.aj ], [ %i.fo, %bb.ai ], [ %i.fm, %.noexc.i.i ], [ %i.fj, %.lr.ph.i.i ] ; 2 uses
  %i.fs = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.fs, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.01.031.i.i, i64 364
  %i.fu = load i16, ptr %i.ft, align 4, !alias.scope !294, !noundef !4 ; 2 uses
  %i.fv = tail call i8 @llvm.ucmp.i8.i16(i16 %i.fu, i16 %i.ev)
  %i.fw = icmp eq i16 %i.fu, %i.ev
  br i1 %i.fw, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.01.031.i.i, i64 366
  %i.fy = load i16, ptr %i.fx, align 2, !alias.scope !294, !noundef !4 ; 2 uses
  %i.fz = tail call i8 @llvm.ucmp.i8.i16(i16 %i.fy, i16 %i.ex)
  %i.ga = icmp eq i16 %i.fy, %i.ex
  br i1 %i.ga, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.01.031.i.i, i64 360
  %i.gc = load i16, ptr %i.gb, align 8, !range !7, !alias.scope !294, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.01.031.i.i, i64 362
  %i.ge = trunc nuw i16 %i.gc to i1
  br i1 %i.ge, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  br i1 %i.fa, label %bb.ao, label %.thread.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gf = load i16, ptr %i.gd, align 2, !alias.scope !294, !noundef !4
  %i.gg = tail call i8 @llvm.ucmp.i8.i16(i16 %i.gf, i16 %i.fc)
  br label %bb.aq

.thread.i.i:                                      ; preds = %bb.ar, %bb.aq, %bb.an, %.outer.i.i
  %.sroa.01.0.lcssa.i.i = phi ptr [ %.sroa.01.0.ph.i.i, %.outer.i.i ], [ %.sroa.01.031.i.i, %bb.an ], [ %.sroa.01.031.i.i, %bb.aq ], [ %i.gj, %bb.ar ] ; 7 uses
  br label %bb.as

bb.ap:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  store i64 %.sroa.0.019.ph.i.i, ptr %.sroa.1312.0.ph.i.i, align 8, !alias.scope !295
  br label %common.resume.sink.split

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ah
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = icmp eq i64 %.sroa.0.019.ph.i.i, -4
  br i1 %i.gh, label %common.resume, label %bb.ap

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.al, %bb.ak, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i34 = phi i8 [ %i.gg, %bb.ao ], [ %i.fv, %bb.ak ], [ %i.fz, %bb.al ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i.i.i ], [ %..i.i.i.i.i, %bb.am ]
  %i.gi = icmp slt i8 %.sroa.0.0.i.i.i.i.i34, 0
  br i1 %i.gi, label %bb.ar, label %.thread.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.01.031.i.i, i64 368 ; 3 uses
  %i.gk = icmp ult ptr %i.gj, %.sroa.011.0.ph.i.i
  br i1 %i.gk, label %.lr.ph.i.i, label %.thread.i.i

bb.as:                                            ; preds = %bb.bb, %.thread.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.011.0.ph.i.i, %.thread.i.i ], [ %i.gl, %bb.bb ] ; 6 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -368 ; 7 uses
  %.not.i.i = icmp ult ptr %.sroa.01.0.lcssa.i.i, %i.gl
  br i1 %.not.i.i, label %bb.at, label %.critedge.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.gm = load i64, ptr %i.gl, align 8, !range !5, !alias.scope !300, !noundef !4
  %.not.i.i.i.i36.i.i = icmp eq i64 %i.gm, -3
  %i.gn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -360
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !300, !nonnull !4, !align !6
  %.sroa.0.0.i.i.i.i37.i.i = select i1 %.not.i.i.i.i36.i.i, ptr %i.go, ptr %i.gl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i37.i.i, i64 352
  %i.gq = load i16, ptr %i.gp, align 8, !alias.scope !305, !noalias !306, !noundef !4 ; 2 uses
  %i.gr = load i16, ptr %i.er, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 2 uses
  %i.gs = tail call i8 @llvm.ucmp.i8.i16(i16 %i.gq, i16 %i.gr)
  %i.gt = icmp eq i16 %i.gq, %i.gr
  br i1 %i.gt, label %bb.au, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i

bb.au:                                            ; preds = %bb.at
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i37.i.i, i64 320
  %i.gv = invoke noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es)
          to label %.noexc44.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc44.i.i:                                     ; preds = %bb.au
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.av, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i

bb.av:                                            ; preds = %.noexc44.i.i
  %i.gx = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i37.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i.i.i) #16 ; 2 uses
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.aw, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i37.i.i, i64 160
  %i.ha = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.gz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.et) #16
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i: ; preds = %bb.aw, %bb.av, %.noexc44.i.i, %bb.at
  %.sroa.0.0.i.i.i.i.i.i41.i.i = phi i8 [ %i.ha, %bb.aw ], [ %i.gx, %bb.av ], [ %i.gv, %.noexc44.i.i ], [ %i.gs, %bb.at ] ; 2 uses
  %i.hb = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i41.i.i, 0
  br i1 %i.hb, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i
  %i.hc = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -4
  %i.hd = load i16, ptr %i.hc, align 4, !alias.scope !309, !noundef !4 ; 2 uses
  %i.he = tail call i8 @llvm.ucmp.i8.i16(i16 %i.hd, i16 %i.ev)
  %i.hf = icmp eq i16 %i.hd, %i.ev
  br i1 %i.hf, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -2
  %i.hh = load i16, ptr %i.hg, align 2, !alias.scope !309, !noundef !4 ; 2 uses
  %i.hi = tail call i8 @llvm.ucmp.i8.i16(i16 %i.hh, i16 %i.ex)
  %i.hj = icmp eq i16 %i.hh, %i.ex
  br i1 %i.hj, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.hk = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %i.hl = load i16, ptr %i.hk, align 8, !range !7, !alias.scope !309, !noundef !4
  %i.hm = trunc nuw i16 %i.hl to i1               ; 2 uses
  %.not36.i.i = xor i1 %i.hm, true
  %5 = select i1 %i.hm, i1 %i.fa, i1 false
  %i.hn = select i1 %.not36.i.i, i1 %i.fa, i1 false
  %..i.i.i43.mux.i.i = sext i1 %i.hn to i8
  br i1 %5, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ho = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -6
  %i.hp = load i16, ptr %i.ho, align 2, !alias.scope !309, !noundef !4
  %i.hq = tail call i8 @llvm.ucmp.i8.i16(i16 %i.hp, i16 %i.fc)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i
  %.sroa.0.0.i.i.i42.i.i = phi i8 [ %i.hq, %bb.ba ], [ %i.he, %bb.ax ], [ %..i.i.i43.mux.i.i, %bb.az ], [ %.sroa.0.0.i.i.i.i.i.i41.i.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i40.i.i ], [ %i.hi, %bb.ay ]
  %i.hr = icmp slt i8 %.sroa.0.0.i.i.i42.i.i, 0
  br i1 %i.hr, label %bb.bc, label %bb.as

bb.bc:                                            ; preds = %bb.bb
  %.not34.i.i = icmp eq i64 %.sroa.0.019.ph.i.i, -4
  br i1 %.not34.i.i, label %bb.bg, label %bb.be

.critedge.i.i:                                    ; preds = %bb.as
  %i.hs = ptrtoint ptr %.sroa.01.0.lcssa.i.i to i64
  %i.ht = ptrtoint ptr %i.em to i64
  %i.hu = sub nuw i64 %i.hs, %i.ht                ; 2 uses
  %i.hv = udiv exact i64 %i.hu, 368               ; 4 uses
  %i.hw = icmp eq i64 %.sroa.0.019.ph.i.i, -4
  br i1 %i.hw, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos7pairpos11PairPosRuleENvYB1t_NtNtBa_3cmp10PartialOrd2ltEB1y_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i
  store i64 %.sroa.0.019.ph.i.i, ptr %.sroa.1312.0.ph.i.i, align 8, !alias.scope !295
  %.sroa.13.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.1312.0.ph.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.13.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.4.i.i, i64 360, i1 false), !noalias !279
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos7pairpos11PairPosRuleENvYB1t_NtNtBa_3cmp10PartialOrd2ltEB1y_.exit.i

bb.be:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1312.0.ph.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.01.0.lcssa.i.i, i64 368, i1 false), !alias.scope !295
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %.sroa.0.1.i.i = phi i64 [ %.sroa.017.0.copyload.i.i, %bb.bg ], [ %.sroa.0.019.ph.i.i, %bb.be ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.01.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(368) %i.gl, i64 368, i1 false), !alias.scope !295
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i, i64 368
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.bf, %bb.ag
  %.sroa.1312.0.ph.i.i = phi ptr [ %i.gl, %bb.bf ], [ undef, %bb.ag ] ; 5 uses
  %.sroa.0.019.ph.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.bf ], [ -4, %bb.ag ] ; 6 uses
  %.sroa.011.0.ph.i.i = phi ptr [ %i.gl, %bb.bf ], [ %i.en, %bb.ag ] ; 3 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %i.hx, %bb.bf ], [ %i.em, %bb.ag ] ; 3 uses
  %i.hy = icmp ult ptr %.sroa.01.0.ph.i.i, %.sroa.011.0.ph.i.i
  br i1 %i.hy, label %.lr.ph.i.i, label %.thread.i.i

bb.bg:                                            ; preds = %bb.bc
  %.sroa.017.0.copyload.i.i = load i64, ptr %.sroa.01.0.lcssa.i.i, align 8, !alias.scope !295 ; 2 uses
  %.sroa.418.0..sroa.01.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.418.0..sroa.01.0.sroa_idx.i.i, i64 360, i1 false), !noalias !279
  %i.hz = icmp ne i64 %.sroa.017.0.copyload.i.i, -4
  tail call void @llvm.assume(i1 %i.hz)
  br label %bb.bf

common.resume.sink.split:                         ; preds = %bb.ap, %bb.cb
  %.sroa.1312.0.ph.i.i47186.sink = phi ptr [ %.sroa.1312.0.ph.i.i47, %bb.cb ], [ %.sroa.1312.0.ph.i.i, %bb.ap ]
  %.sroa.4.i.i43.sink = phi ptr [ %.sroa.4.i.i43, %bb.cb ], [ %.sroa.4.i.i, %bb.ap ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.cb ], [ %lpad.loopexit.split-lp250, %bb.ap ]
  %.sroa.13.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %.sroa.1312.0.ph.i.i47186.sink, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.13.0..sroa_idx.i.i65, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.4.i.i43.sink, i64 360, i1 false), !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.loopexit.split-lp.i.loopexit.split-lp.i71.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i71.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos7pairpos11PairPosRuleENvYB1t_NtNtBa_3cmp10PartialOrd2ltEB1y_.exit.i: ; preds = %bb.bd, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not7.i = icmp samesign ult i64 %i.hv, %.sroa.15.0118244
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE12split_at_mutBz_.exit, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos7pairpos11PairPosRuleENvYB1t_NtNtBa_3cmp10PartialOrd2ltEB1y_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE12split_at_mutBz_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1y_4gpos7pairpos11PairPosRuleENvYB1t_NtNtBa_3cmp10PartialOrd2ltEB1y_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0119243, i64 noundef range(i64 17, 25063510969714065) %.sroa.15.0118244, i64 noundef 0, i64 noundef %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 %i.hu ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 368
  %i.ic = xor i64 %i.hv, -1
  %i.id = add i64 %.sroa.15.0118244, %i.ic
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1c_4gpos7pairpos11PairPosRuleENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1c_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0119243, i64 noundef %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) %.sroa.023.0116245, i32 noundef %i.e, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.bi:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 %i.ek ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.if = load i64, ptr %.sroa.023.0116245, align 8, !range !5, !alias.scope !318, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.if, -3
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.023.0116245, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !318, !nonnull !4, !align !6
  %.sroa.0.0.i.i.i.i41 = select i1 %.not.i.i.i.i, ptr %i.ih, ptr %.sroa.023.0116245 ; 4 uses
  %i.ii = load i64, ptr %i.ie, align 8, !range !5, !alias.scope !319, !noundef !4
  %.not2.i.i.i.i = icmp eq i64 %i.ii, -3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !319, !nonnull !4, !align !6
  %.sroa.01.0.i.i.i.i = select i1 %.not2.i.i.i.i, ptr %i.ik, ptr %i.ie ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i41, i64 352
  %i.im = load i16, ptr %i.il, align 8, !alias.scope !324, !noalias !319, !noundef !4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 352
  %i.io = load i16, ptr %i.in, align 8, !alias.scope !325, !noalias !318, !noundef !4 ; 2 uses
  %i.ip = tail call i8 @llvm.ucmp.i8.i16(i16 %i.im, i16 %i.io)
  %i.iq = icmp eq i16 %i.im, %i.io
  br i1 %i.iq, label %bb.bj, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i41, i64 320
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 320
  %i.it = tail call noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ir, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.is) ; 2 uses
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %bb.bk, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.iv = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i41, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i) #16 ; 2 uses
  %i.iw = icmp eq i8 %i.iv, 0
  br i1 %i.iw, label %bb.bl, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i41, i64 160
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 160
  %i.iz = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ix, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.iy) #16
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.sroa.0.0.i.i.i.i.i.i42 = phi i8 [ %i.iz, %bb.bl ], [ %i.iv, %bb.bk ], [ %i.it, %bb.bj ], [ %i.ip, %bb.bi ] ; 2 uses
  %i.ja = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i42, 0
  br i1 %i.ja, label %bb.bm, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.bm:                                            ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.023.0116245, i64 364
  %i.jc = load i16, ptr %i.jb, align 4, !alias.scope !326, !noundef !4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ie, i64 364
  %i.je = load i16, ptr %i.jd, align 4, !alias.scope !327, !noundef !4 ; 2 uses
  %i.jf = tail call i8 @llvm.ucmp.i8.i16(i16 %i.jc, i16 %i.je)
  %i.jg = icmp eq i16 %i.jc, %i.je
  br i1 %i.jg, label %bb.bn, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.bn:                                            ; preds = %bb.bm
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.023.0116245, i64 366
  %i.ji = load i16, ptr %i.jh, align 2, !alias.scope !326, !noundef !4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ie, i64 366
  %i.jk = load i16, ptr %i.jj, align 2, !alias.scope !327, !noundef !4 ; 2 uses
  %i.jl = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ji, i16 %i.jk)
  %i.jm = icmp eq i16 %i.ji, %i.jk
  br i1 %i.jm, label %bb.bo, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.023.0116245, i64 360
  %i.jo = load i16, ptr %i.jn, align 8, !range !7, !alias.scope !326, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.023.0116245, i64 362
  %i.jq = trunc nuw i16 %i.jo to i1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ie, i64 360
  %i.js = load i16, ptr %i.jr, align 8, !range !7, !alias.scope !327, !noundef !4
  %i.jt = trunc nuw i16 %i.js to i1               ; 2 uses
  br i1 %i.jq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.jt, label %bb.br, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.thread

bb.bq:                                            ; preds = %bb.bo
  %..i.i.i = sext i1 %i.jt to i8
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.br:                                            ; preds = %bb.bp
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ie, i64 362
  %i.jv = load i16, ptr %i.jp, align 2, !alias.scope !326, !noundef !4
  %i.jw = load i16, ptr %i.ju, align 2, !alias.scope !327, !noundef !4
  %i.jx = tail call i8 @llvm.ucmp.i8.i16(i16 %i.jv, i16 %i.jw)
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit: ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i, %bb.bm, %bb.bn, %bb.bq, %bb.br
  %.sroa.0.0.i.i.i = phi i8 [ %i.jx, %bb.br ], [ %i.jf, %bb.bm ], [ %..i.i.i, %bb.bq ], [ %.sroa.0.0.i.i.i.i.i.i42, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i ], [ %i.jl, %bb.bn ]
  %i.jy = icmp slt i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.jy, label %bb.ag, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.thread

_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit.thread: ; preds = %bb.bp, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0119243, i64 noundef range(i64 17, 25063510969714065) %.sroa.15.0118244, i64 noundef 0, i64 noundef range(i64 0, 25063510969714064) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i43)
  %i.ka = getelementptr [368 x i8], ptr %.sroa.0.0119243, i64 %.sroa.15.0118244
  %i.kb = load i64, ptr %.sroa.0.0119243, align 8, !range !5, !alias.scope !330
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.kb, -3
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0119243, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !330, !nonnull !4, !align !6
  %.sroa.0.0.i.i.i.i.i.i.i45 = select i1 %.not.i.i.i.i.i.i.i, ptr %i.kd, ptr %.sroa.0.0119243 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1G_3ops8function5FnMutTRB5_B2N_EE8call_mutBa_:bb.a
  %i.q = zext i1 %i.p to i8
  %i.r = load i64, ptr %.sroa.01.0.i.i.i, align 8, !range !5, !alias.scope !780, !noalias !769, !noundef !4
  %i.s = icmp eq i64 %i.r, -3                     ; 4 uses
  %.neg.i.i.i.i.i.i = sext i1 %i.s to i8
  %i.t = add nsw i8 %.neg.i.i.i.i.i.i, %i.q
  %i.u = xor i1 %i.p, %i.s
  br i1 %i.u, label %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.s)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !779, !noalias !770, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !779, !noalias !770, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !780, !noalias !769, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !780, !noalias !769, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.y, i64 range(i64 0, 115292150460684698) %i.ac) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsh_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_3cmp3Ord3cmpBO_.exit.i.i.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.01.012.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.af = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 115292150460684698) %i.y, i64 range(i64 0, 115292150460684698) %i.ac)
  br label %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.e
  %.sroa.01.012.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %.sroa.01.012.i.i.i.i.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.aa, i64 %.sroa.01.012.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.ai = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !787, !noalias !788, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, -3
  %i.aj = load i64, ptr %i.ah, align 8, !range !5, !alias.scope !789, !noalias !788, !noundef !4 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aj, -3
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.aj, -3
  %..i.i.i.i.i.i.i.i.i = sext i1 %.not1.i.i.i.i.i.i.i.i.i to i8
  br label %_RNvXsh_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_3cmp3Ord3cmpBO_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = tail call fastcc noundef i8 @_RNvXss_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ah) #16, !noalias !788
  br label %_RNvXsh_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_3cmp3Ord3cmpBO_.exit.i.i.i.i.i.i.i.i

_RNvXsh_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_3cmp3Ord3cmpBO_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ak, %bb.h ], [ %..i.i.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %bb.e, label %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.am = xor i1 %i.s, true
  tail call void @llvm.assume(i1 %i.am)
  %i.an = tail call fastcc noundef i8 @_RNvXss_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.01.0.i.i.i) #16
  br label %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i

_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i: ; preds = %_RNvXsh_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_3cmp3Ord3cmpBO_.exit.i.i.i.i.i.i.i.i, %bb.i, %._crit_edge.i.i.i.i.i.i.i, %bb.b
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.t, %bb.b ], [ %i.an, %bb.i ], [ %i.af, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNvXsh_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_3cmp3Ord3cmpBO_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.j, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i

bb.j:                                             ; preds = %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !792
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !793, !noalias !770, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 88
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !793, !noalias !770, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 96
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !793, !noalias !770, !noundef !4
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ar, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.at, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.ar, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.at, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink42.i.i.i.i.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sink.i.i.i.i.i.i = phi i64 [ %i.av, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink42.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !792
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink42.i.i.i.i.i.i, ptr %i.aw, align 8, !noalias !792
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sink.i.i.i.i.i.i, ptr %i.ax, align 8, !noalias !792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !792
  %i.ay = load ptr, ptr %i.aq, align 8, !alias.scope !794, !noalias !769, !noundef !4 ; 3 uses
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not40.i.i.i.i.i.i, label %_RNvXs1w_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB1c_6common8GlyphSetENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpB1c_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !794, !noalias !769, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 96
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !794, !noalias !769, !noundef !4
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ay, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ba, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.625.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.625.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.625.sroa.4.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ay, ptr %.sroa.625.sroa.4.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  %.sroa.625.sroa.5.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ba, ptr %.sroa.625.sroa.5.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !792
  br label %_RNvXs1w_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB1c_6common8GlyphSetENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpB1c_.exit.i.i.i.i.i

_RNvXs1w_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB1c_6common8GlyphSetENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpB1c_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.sink45.i.i.i.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.sink43.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.m ], [ 0, %bb.l ]
  store i64 %.sink45.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !792
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink45.i.i.i.i.i.i, ptr %i.bd, align 8, !noalias !792
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink43.i.i.i.i.i.i, ptr %i.be, align 8, !noalias !792
  %i.bf = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB12_6common8GlyphSetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B2g_3cmpB3_E0EB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !792
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i: ; preds = %_RNvXs1w_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB1c_6common8GlyphSetENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpB1c_.exit.i.i.i.i.i, %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.bf, %_RNvXs1w_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB1c_6common8GlyphSetENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpB1c_.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXs6_NtNtCs5JazJsyow1H_14otl_normalizer4gpos5marksNtB5_11BaseAnchorsNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.bg = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.bg, label %bb.n, label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit

bb.n:                                             ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bi = load i16, ptr %i.bh, align 4, !alias.scope !795, !noundef !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bk = load i16, ptr %i.bj, align 4, !alias.scope !796, !noundef !4 ; 2 uses
  %i.bl = call i8 @llvm.ucmp.i8.i16(i16 %i.bi, i16 %i.bk)
  %i.bm = icmp eq i16 %i.bi, %i.bk
  br i1 %i.bm, label %bb.o, label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.bo = load i16, ptr %i.bn, align 2, !alias.scope !795, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.bq = load i16, ptr %i.bp, align 2, !alias.scope !796, !noundef !4 ; 2 uses
  %i.br = call i8 @llvm.ucmp.i8.i16(i16 %i.bo, i16 %i.bq)
  %i.bs = icmp eq i16 %i.bo, %i.bq
  br i1 %i.bs, label %bb.p, label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bu = load i16, ptr %i.bt, align 8, !range !7, !alias.scope !795, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.bw = trunc nuw i16 %i.bu to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.by = load i16, ptr %i.bx, align 8, !range !7, !alias.scope !796, !noundef !4
  %i.bz = trunc nuw i16 %i.by to i1               ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.bz, label %bb.s, label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit

bb.r:                                             ; preds = %bb.p
  %..i.i = sext i1 %i.bz to i8
  br label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.cb = load i16, ptr %i.bv, align 2, !alias.scope !795, !noundef !4
  %i.cc = load i16, ptr %i.ca, align 2, !alias.scope !796, !noundef !4
  %i.cd = call i8 @llvm.ucmp.i8.i16(i16 %i.cb, i16 %i.cc)
  br label %_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit

_RNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB7_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB7_.exit: ; preds = %bb.f, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i.i = phi i8 [ %i.cd, %bb.s ], [ %i.bl, %bb.n ], [ %..i.i, %bb.r ], [ %.sroa.0.0.i.i.i.i.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i ], [ %i.br, %bb.o ], [ 0, %bb.q ], [ 0, %bb.f ]
  %i.ce = icmp slt i8 %.sroa.0.0.i.i, 0
  ret i1 %i.ce
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB19_4gpos5marks18MarkAttachmentRuleENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB19_4gpos7pairpos11PairPosRuleENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB14_20sort_unstable_by_keyTmmENCNCNvB16_16get_lang_systemss1_00E0EB18_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB14_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB16_16get_lang_systemss2_0E0EB18_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 76861433640456466), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 25063510969714065), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem14swap_uncheckedBy_(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos5marks18MarkAttachmentRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 76861433640456466), ptr noalias nofree noundef nonnull) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 25063510969714065), ptr noalias nofree noundef nonnull) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB15_20sort_unstable_by_keyTmmENCNCNvB17_16get_lang_systemss1_00E0EB19_(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB15_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB17_16get_lang_systemss2_0E0EB19_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1r_4gpos5marks18MarkAttachmentRuleENvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1r_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 76861433640456466), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1r_4gpos7pairpos11PairPosRuleENvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1r_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 25063510969714065), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1f_20sort_unstable_by_keyTmmENCNCNvB1h_16get_lang_systemss1_00E0EB1j_(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB1f_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1h_16get_lang_systemss2_0E0EB1j_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8n5UXKvQVD9_10read_fonts4readNtB2_9ReadErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorNtNtB12_6common8GlyphSetENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B2g_3cmpB3_E0EB12_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16, i16) #10

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noinline }
attributes #16 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{i64 -3, i64 -9223372036854775808}
!6 = !{i64 8}
!7 = !{i16 0, i16 2}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{i64 0, i64 2}
!10 = !{i64 4}
!11 = !{i64 2}
!12 = !{i64 -2, i64 -9223372036854775808}
!13 = distinct !{!13, i1 true, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5JazJsyow1H_14otl_normalizer"}
!14 = distinct !{!14, !13, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5JazJsyow1H_14otl_normalizer: argument 1"}
!15 = distinct !{!15, !13, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5JazJsyow1H_14otl_normalizer: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5JazJsyow1H_14otl_normalizer"}
!17 = distinct !{!17, !16, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5JazJsyow1H_14otl_normalizer: argument 1"}
!18 = distinct !{!18, !16, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5JazJsyow1H_14otl_normalizer: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5JazJsyow1H_14otl_normalizer"}
!20 = distinct !{!20, !19, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5JazJsyow1H_14otl_normalizer: argument 1"}
!21 = distinct !{!21, !19, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5JazJsyow1H_14otl_normalizer: argument 0"}
!22 = distinct !{!22, i1 true, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!23 = distinct !{!23, !22, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5JazJsyow1H_14otl_normalizer"}
!25 = distinct !{!25, !24, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5JazJsyow1H_14otl_normalizer: argument 0"}
!26 = distinct !{!26, i1 true, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5JazJsyow1H_14otl_normalizer"}
!27 = distinct !{!27, !26, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5JazJsyow1H_14otl_normalizer: argument 1"}
end_hunk_1
