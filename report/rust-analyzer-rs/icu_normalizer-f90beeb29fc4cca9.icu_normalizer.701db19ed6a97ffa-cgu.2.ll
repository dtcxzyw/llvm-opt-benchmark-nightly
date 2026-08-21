Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_normalizer-f90beeb29fc4cca9.icu_normalizer.701db19ed6a97ffa-cgu.2?download=true
inline.NumInlined: 100
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtB1b_23CanonicalCombiningClassNCNvB1b_17sort_slice_by_cccs_0E0EB1b_:.lr.ph.i
  %i.ei = zext i1 %i.ef to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ei
  %i.ek = zext i1 %i.eg to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ek
  %.sroa.017.0.val.i.3 = load i32, ptr %i.ea, align 4, !alias.scope !19, !noundef !18 ; 2 uses
  %.sroa.015.0.val.i.3 = load i32, ptr %i.eb, align 4, !alias.scope !19, !noundef !18 ; 2 uses
  %i.em = lshr i32 %.sroa.017.0.val.i.3, 24
  %i.en = lshr i32 %.sroa.015.0.val.i.3, 24
  %i.eo = icmp samesign ult i32 %i.em, %i.en      ; 3 uses
  %i.ep = xor i1 %i.eo, true
  %i.eq = select i1 %i.eo, i32 %.sroa.015.0.val.i.3, i32 %.sroa.017.0.val.i.3
  store i32 %i.eq, ptr %i.ec, align 4, !noalias !26
  %.neg.i.i.3 = sext i1 %i.ep to i64
  %i.er = getelementptr [4 x i8], ptr %i.ea, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.eo to i64
  %i.es = getelementptr [4 x i8], ptr %i.eb, i64 %.neg13.i.i.3
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %i.eu = getelementptr i8, ptr %i.er, i64 4
  %i.ev = icmp ne ptr %i.el, %i.et
  %i.ew = icmp ne ptr %i.ej, %i.eu
  %or.cond.i = select i1 %i.ev, i1 true, i1 %i.ew, !prof !30
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyNtB1i_23CanonicalCombiningClassNCNvB1i_17sort_slice_by_cccs_0E0EB1i_.exit, !prof !30

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #16, !noalias !19
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyNtB1i_23CanonicalCombiningClassNCNvB1i_17sort_slice_by_cccs_0E0EB1i_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyNtB1o_23CanonicalCombiningClassNCNvB1o_17sort_slice_by_cccs_0E0EB1o_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit
  %.sroa.0.05 = phi ptr [ %i.m, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !noundef !18 ; 2 uses
  %.val10.i = load i32, ptr %i.d, align 4, !noundef !18 ; 2 uses
  %i.e = lshr i32 %.val9.i, 24                    ; 2 uses
  %i.f = lshr i32 %.val10.i, 24
  %i.g = icmp samesign ult i32 %i.e, %i.f
  br i1 %i.g, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.05, align 4
  %i.h = icmp eq ptr %i.d, %0
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.preheader:                                       ; preds = %.lr.ph10
  store i32 %.val8.i, ptr %.sroa.0.0.i9, align 4
  %i.i = icmp eq ptr %i.j, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i9 = phi ptr [ %i.j, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.i9, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.j, align 4, !noundef !18 ; 2 uses
  %i.k = lshr i32 %.val8.i, 24
  %i.l = icmp samesign ult i32 %i.e, %i.k
  br i1 %i.l, label %.preheader, label %._crit_edge11

._crit_edge11:                                    ; preds = %.preheader, %.lr.ph10, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i9, %.lr.ph10 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !31
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtBZ_23CanonicalCombiningClassNCNvBZ_17sort_slice_by_cccs_0E0EBZ_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.v, %.preheader ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.t, %.preheader ], [ %i.e, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %.val.i = load i32, ptr %i.l, align 4, !noalias !36, !noundef !18 ; 2 uses
  %.val12.i = load i32, ptr %i.k, align 4, !noalias !36, !noundef !18 ; 2 uses
  %i.n = lshr i32 %.val.i, 24
  %i.o = lshr i32 %.val12.i, 24
  %i.p = icmp samesign ult i32 %i.n, %i.o         ; 3 uses
  %i.q = select i1 %i.p, i32 %.val12.i, i32 %.val.i
  store i32 %i.q, ptr %i.m, align 4, !noalias !36
  %i.r = xor i1 %i.p, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s ; 3 uses
  %i.u = zext i1 %i.p to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u ; 3 uses
  %i.w = icmp eq ptr %i.t, %0
  %i.x = icmp eq ptr %i.v, %2
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.y = phi ptr [ %i.aj, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.04.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.e, %.critedge ] ; 2 uses
  %i.z = phi ptr [ %i.ag, %.lr.ph.i ], [ %2, %.critedge ] ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.04.i, align 4, !noalias !39, !noundef !18 ; 2 uses
  %.val.i18 = load i32, ptr %i.z, align 4, !noalias !39, !noundef !18 ; 2 uses
  %i.aa = lshr i32 %.sroa.0.0.val.i, 24
  %i.ab = lshr i32 %.val.i18, 24
  %i.ac = icmp samesign ult i32 %i.aa, %i.ab      ; 3 uses
  %i.ad = xor i1 %i.ac, true
  %i.ae = select i1 %i.ac, i32 %.sroa.0.0.val.i, i32 %.val.i18
  store i32 %i.ae, ptr %i.y, align 4, !noalias !39
  %i.af = zext i1 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.af ; 3 uses
  %i.ah = zext i1 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ak = icmp ne ptr %i.ag, %i.h
  %i.al = icmp ne ptr %i.ai, %i.f
  %or.cond.i19 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_.exit

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.t, %.preheader ], [ %i.aj, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.v, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.am = ptrtoint ptr %.sroa.7.0 to i64
  %i.an = ptrtoint ptr %.sroa.0.0 to i64
  %i.ao = sub nuw i64 %i.am, %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.0, ptr align 4 %.sroa.0.0, i64 %i.ao, i1 false), !noalias !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_.exit
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtB17_23CanonicalCombiningClassNCNvB17_17sort_slice_by_cccs_0E0EB17_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph128 = phi ptr [ %i.lh, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph127 = phi i64 [ %i.ks, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph126 = phi i32 [ %i.fg, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph125 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph128 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph125, null
  %i.d = icmp eq i32 %.sroa.025.0.ph126, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph299

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClass12split_at_mutBw_.exit
  %i.e = icmp eq i32 %i.fg, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph299

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClass12split_at_mutBw_.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph128, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClass12split_at_mutBw_.exit ], [ %0, %bb.a ], [ %i.lh, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClass12split_at_mutBw_.exit ], [ %1, %bb.a ], [ %i.ks, %.outer ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyNtB1u_23CanonicalCombiningClassNCNvB1u_17sort_slice_by_cccs_0E0EB1u_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 11 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtB1b_23CanonicalCombiningClassNCNvB1b_17sort_slice_by_cccs_0E0EB1b_(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 4 %2, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtB1b_23CanonicalCombiningClassNCNvB1b_17sort_slice_by_cccs_0E0EB1b_(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa118, i64 4
  %.val8.i.i = load i32, ptr %i.p, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %.val9.i.i = load i32, ptr %.sroa.0.0.ph.lcssa118, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %i.q = lshr i32 %.val8.i.i, 24
  %i.r = lshr i32 %.val9.i.i, 24
  %i.s = icmp samesign ult i32 %i.q, %i.r         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa118, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa118, i64 8
  %.val6.i.i = load i32, ptr %i.t, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %.val7.i.i = load i32, ptr %i.u, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %i.v = lshr i32 %.val6.i.i, 24
  %i.w = lshr i32 %.val7.i.i, 24
  %i.x = icmp samesign ult i32 %i.v, %i.w         ; 2 uses
  %i.y = zext i1 %i.s to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.y ; 2 uses
  %i.aa = xor i1 %i.s, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ab ; 3 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ad ; 3 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.af ; 2 uses
  %.val4.i.i = load i32, ptr %i.ae, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %.val5.i.i = load i32, ptr %i.z, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %i.ah = lshr i32 %.val4.i.i, 24
  %i.ai = lshr i32 %.val5.i.i, 24
  %i.aj = icmp samesign ult i32 %i.ah, %i.ai      ; 3 uses
  %.val2.i.i = load i32, ptr %i.ag, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %.val3.i.i = load i32, ptr %i.ac, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %i.ak = lshr i32 %.val2.i.i, 24
  %i.al = lshr i32 %.val3.i.i, 24
  %i.am = icmp samesign ult i32 %i.ak, %i.al      ; 3 uses
  %i.an = select i1 %i.am, ptr %i.ae, ptr %i.ac, !unpredictable !18
  %i.ao = select i1 %i.aj, ptr %i.z, ptr %i.an, !unpredictable !18
  %i.ap = select i1 %i.aj, ptr %i.ac, ptr %i.ae, !unpredictable !18
  %i.aq = select i1 %i.am, ptr %i.ag, ptr %i.ap, !unpredictable !18
  %.val.i.i = load i32, ptr %i.aq, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 3 uses
  %.val1.i.i = load i32, ptr %i.ao, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 3 uses
  %i.ar = lshr i32 %.val.i.i, 24
  %i.as = lshr i32 %.val1.i.i, 24
  %i.at = icmp samesign ult i32 %i.ar, %i.as      ; 2 uses
  %i.au = select i1 %i.aj, i32 %.val4.i.i, i32 %.val5.i.i, !unpredictable !18
  store i32 %i.au, ptr %2, align 4, !alias.scope !50, !noalias !47
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aw = select i1 %i.at, i32 %.val.i.i, i32 %.val1.i.i, !unpredictable !18
  store i32 %i.aw, ptr %i.av, align 4, !alias.scope !50, !noalias !47
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = select i1 %i.at, i32 %.val1.i.i, i32 %.val.i.i, !unpredictable !18
  store i32 %i.ay, ptr %i.ax, align 4, !alias.scope !50, !noalias !47
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ba = select i1 %i.am, i32 %.val3.i.i, i32 %.val2.i.i, !unpredictable !18
  store i32 %i.ba, ptr %i.az, align 4, !alias.scope !50, !noalias !47
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.i ; 8 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.val8.i30.i = load i32, ptr %i.bd, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %.val9.i31.i = load i32, ptr %i.bb, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %i.be = lshr i32 %.val8.i30.i, 24
  %i.bf = lshr i32 %.val9.i31.i, 24
  %i.bg = icmp samesign ult i32 %i.be, %i.bf      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val6.i32.i = load i32, ptr %i.bh, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %.val7.i33.i = load i32, ptr %i.bi, align 4, !alias.scope !47, !noalias !50, !noundef !18
  %i.bj = lshr i32 %.val6.i32.i, 24
  %i.bk = lshr i32 %.val7.i33.i, 24
  %i.bl = icmp samesign ult i32 %i.bj, %i.bk      ; 2 uses
  %i.bm = zext i1 %i.bg to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bm ; 2 uses
  %i.bo = xor i1 %i.bg, true
  %i.bp = zext i1 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bp ; 3 uses
  %i.br = select i1 %i.bl, i64 3, i64 2
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.br ; 3 uses
  %i.bt = select i1 %i.bl, i64 2, i64 3
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bt ; 2 uses
  %.val4.i34.i = load i32, ptr %i.bs, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %.val5.i35.i = load i32, ptr %i.bn, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %i.bv = lshr i32 %.val4.i34.i, 24
  %i.bw = lshr i32 %.val5.i35.i, 24
  %i.bx = icmp samesign ult i32 %i.bv, %i.bw      ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bu, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %.val3.i37.i = load i32, ptr %i.bq, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 2 uses
  %i.by = lshr i32 %.val2.i36.i, 24
  %i.bz = lshr i32 %.val3.i37.i, 24
  %i.ca = icmp samesign ult i32 %i.by, %i.bz      ; 3 uses
  %i.cb = select i1 %i.ca, ptr %i.bs, ptr %i.bq, !unpredictable !18
  %i.cc = select i1 %i.bx, ptr %i.bn, ptr %i.cb, !unpredictable !18
  %i.cd = select i1 %i.bx, ptr %i.bq, ptr %i.bs, !unpredictable !18
  %i.ce = select i1 %i.ca, ptr %i.bu, ptr %i.cd, !unpredictable !18
  %.val.i38.i = load i32, ptr %i.ce, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 3 uses
  %.val1.i39.i = load i32, ptr %i.cc, align 4, !alias.scope !47, !noalias !50, !noundef !18 ; 3 uses
  %i.cf = lshr i32 %.val.i38.i, 24
  %i.cg = lshr i32 %.val1.i39.i, 24
  %i.ch = icmp samesign ult i32 %i.cf, %i.cg      ; 2 uses
  %i.ci = select i1 %i.bx, i32 %.val4.i34.i, i32 %.val5.i35.i, !unpredictable !18
  store i32 %i.ci, ptr %i.bc, align 4, !alias.scope !50, !noalias !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.ck = select i1 %i.ch, i32 %.val.i38.i, i32 %.val1.i39.i, !unpredictable !18
  store i32 %i.ck, ptr %i.cj, align 4, !alias.scope !50, !noalias !47
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cm = select i1 %i.ch, i32 %.val1.i39.i, i32 %.val.i38.i, !unpredictable !18
  store i32 %i.cm, ptr %i.cl, align 4, !alias.scope !50, !noalias !47
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.co = select i1 %i.ca, i32 %.val3.i37.i, i32 %.val2.i36.i, !unpredictable !18
  store i32 %i.co, ptr %i.cn, align 4, !alias.scope !50, !noalias !47
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.cp = load i32, ptr %.sroa.0.0.ph.lcssa118, align 4, !alias.scope !47, !noalias !50
  store i32 %i.cp, ptr %2, align 4, !alias.scope !50, !noalias !47
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.cs = load i32, ptr %i.cq, align 4, !alias.scope !47, !noalias !50
  store i32 %i.cs, ptr %i.cr, align 4, !alias.scope !50, !noalias !47
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 3 uses
  %i.ct = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.ct, label %.lr.ph.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.1.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.1.i
  %.idx329 = shl nuw nsw i64 %.sroa.05.08.1.i, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx329 ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !alias.scope !47, !noalias !50 ; 3 uses
  store i32 %i.cw, ptr %i.cv, align 4, !alias.scope !50, !noalias !47
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -4 ; 2 uses
  %.val10.i.1.i = load i32, ptr %i.cx, align 4, !alias.scope !50, !noalias !47, !noundef !18 ; 2 uses
  %i.cy = lshr i32 %i.cw, 24                      ; 2 uses
  %i.cz = lshr i32 %.val10.i.1.i, 24
  %i.da = icmp samesign ult i32 %i.cy, %i.cz
  br i1 %i.da, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  store i32 %.val10.i.1.i, ptr %i.cv, align 4, !alias.scope !50, !noalias !47
  %i.db = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.db, label %._crit_edge310, label %.lr.ph309

.preheader.1.i:                                   ; preds = %.lr.ph309
  store i32 %.val8.i48.1.i, ptr %.sroa.0.0.i47.1.i308, align 4, !alias.scope !50, !noalias !47
  %i.dc = icmp eq ptr %i.dd, %2
  br i1 %i.dc, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i47.1.i308 = phi ptr [ %i.dd, %.preheader.1.i ], [ %i.cx, %.preheader.1.i.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.0.i47.1.i308, i64 -4 ; 3 uses
  %.val8.i48.1.i = load i32, ptr %i.dd, align 4, !alias.scope !50, !noalias !47, !noundef !18 ; 2 uses
  %i.de = lshr i32 %.val8.i48.1.i, 24
  %i.df = icmp samesign ult i32 %i.cy, %i.de
  br i1 %i.df, label %.preheader.1.i, label %._crit_edge310

._crit_edge310:                                   ; preds = %.preheader.1.i, %.lr.ph309, %.preheader.1.i.preheader
  %.sroa.0.0.i47.lcssa.1.i = phi ptr [ %2, %.preheader.1.i.preheader ], [ %2, %.preheader.1.i ], [ %.sroa.0.0.i47.1.i308, %.lr.ph309 ]
  store i32 %i.cw, ptr %.sroa.0.0.i47.lcssa.1.i, align 4, !alias.scope !50, !noalias !52
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.1.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.1.i: ; preds = %._crit_edge310, %.lr.ph.1.i
  %i.dg = add nuw i64 %.sroa.05.08.1.i, 1         ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dg, %i.i
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.1.i, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.dh = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.dh
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  %i.dj = getelementptr [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dl = getelementptr i8, ptr %i.eg, i64 4      ; 2 uses
  %i.dm = getelementptr i8, ptr %i.ef, i64 4
  %i.dn = and i64 %.sroa.16.0.lcssa, 1
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.013.i.i = phi i64 [ %i.dp, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.012.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 2 uses
  %.sroa.011.011.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.dj, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.dk, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %i.di, %.loopexit.1.i ] ; 2 uses
  %.sroa.019.08.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %7, %.loopexit.1.i ] ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.04.013.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.011.i.i, align 4, !alias.scope !60, !noalias !47, !noundef !18 ; 2 uses
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.012.i.i, align 4, !alias.scope !60, !noalias !47, !noundef !18 ; 2 uses
  %i.dq = lshr i32 %.sroa.011.0.val.i.i, 24
  %i.dr = lshr i32 %.sroa.06.0.val.i.i, 24
  %i.ds = icmp samesign ult i32 %i.dq, %i.dr      ; 3 uses
  %i.dt = xor i1 %i.ds, true
  %i.du = select i1 %i.ds, i32 %.sroa.011.0.val.i.i, i32 %.sroa.06.0.val.i.i
  store i32 %i.du, ptr %.sroa.0.014.i.i, align 4, !alias.scope !47, !noalias !61
  %i.dv = zext i1 %i.ds to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.011.i.i, i64 %i.dv ; 4 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.012.i.i, i64 %i.dx ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 4 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.09.i.i, align 4, !alias.scope !60, !noalias !47, !noundef !18 ; 2 uses
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.010.i.i, align 4, !alias.scope !60, !noalias !47, !noundef !18 ; 2 uses
  %i.ea = lshr i32 %.sroa.017.0.val.i.i, 24
  %i.eb = lshr i32 %.sroa.015.0.val.i.i, 24
  %i.ec = icmp samesign ult i32 %i.ea, %i.eb      ; 3 uses
  %i.ed = xor i1 %i.ec, true
  %i.ee = select i1 %i.ec, i32 %.sroa.015.0.val.i.i, i32 %.sroa.017.0.val.i.i
  store i32 %i.ee, ptr %.sroa.019.08.i.i, align 4, !alias.scope !47, !noalias !65
  %.neg.i.i.i = sext i1 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr %.sroa.017.09.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.ec to i64
  %i.eg = getelementptr [4 x i8], ptr %.sroa.015.010.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.019.08.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %i.dp, %i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ei = icmp ult ptr %i.dy, %i.dl               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ei, ptr %i.dy, ptr %i.dw
  %i.ej = load i32, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !60, !noalias !47
  store i32 %i.ej, ptr %i.dz, align 4, !alias.scope !47, !noalias !60
  %i.ek = zext i1 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ek
  %i.em = xor i1 %i.ei, true
  %i.en = zext i1 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.en
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dw, %._crit_edge.i.i ], [ %i.eo, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dy, %._crit_edge.i.i ], [ %i.el, %bb.k ]
  %i.ep = icmp ne ptr %.sroa.06.1.i.i, %i.dl
  %i.eq = icmp ne ptr %.sroa.011.1.i.i, %i.dm
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq, !prof !30
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyNtB1u_23CanonicalCombiningClassNCNvB1u_17sort_slice_by_cccs_0E0EB1u_.exit, !prof !30

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #16
          to label %.noexc.i unwind label %bb.n, !noalias !69

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = shl nuw nsw i64 %.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa118, ptr nonnull align 4 %2, i64 %i.es, i1 false), !alias.scope !69, !noalias !70
  resume { ptr, i32 } %i.er

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ff, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ev = load i32, ptr %i.et, align 4, !alias.scope !47, !noalias !50 ; 3 uses
  store i32 %i.ev, ptr %i.eu, align 4, !alias.scope !50, !noalias !47
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4 ; 2 uses
  %.val10.i.i = load i32, ptr %i.ew, align 4, !alias.scope !50, !noalias !47, !noundef !18 ; 2 uses
  %i.ex = lshr i32 %i.ev, 24                      ; 2 uses
  %i.ey = lshr i32 %.val10.i.i, 24
  %i.ez = icmp samesign ult i32 %i.ex, %i.ey
  br i1 %i.ez, label %.preheader.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i32 %.val10.i.i, ptr %i.eu, align 4, !alias.scope !50, !noalias !47
  %i.fa = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.fa, label %._crit_edge305, label %.lr.ph304

.preheader.i:                                     ; preds = %.lr.ph304
  store i32 %.val8.i48.i, ptr %.sroa.0.0.i47.i303, align 4, !alias.scope !50, !noalias !47
  %i.fb = icmp eq ptr %i.fc, %2
  br i1 %i.fb, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i47.i303 = phi ptr [ %i.fc, %.preheader.i ], [ %i.ew, %.preheader.i.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.0.0.i47.i303, i64 -4 ; 3 uses
  %.val8.i48.i = load i32, ptr %i.fc, align 4, !alias.scope !50, !noalias !47, !noundef !18 ; 2 uses
  %i.fd = lshr i32 %.val8.i48.i, 24
  %i.fe = icmp samesign ult i32 %i.ex, %i.fd
  br i1 %i.fe, label %.preheader.i, label %._crit_edge305

._crit_edge305:                                   ; preds = %.preheader.i, %.lr.ph304, %.preheader.i.preheader
  %.sroa.0.0.i47.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i47.i303, %.lr.ph304 ]
  store i32 %i.ev, ptr %.sroa.0.0.i47.lcssa.i, align 4, !alias.scope !50, !noalias !52
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1a_23CanonicalCombiningClassNCNvB1a_17sort_slice_by_cccs_0E0EB1a_.exit.i: ; preds = %._crit_edge305, %.lr.ph.i
  %i.ff = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ff, %i.i
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0121.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtBY_23CanonicalCombiningClassNCNvBY_17sort_slice_by_cccs_0E0EBY_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph128, i64 noundef %.sroa.16.0121.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyNtB1u_23CanonicalCombiningClassNCNvB1u_17sort_slice_by_cccs_0E0EB1u_.exit

.lr.ph299:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0120298 = phi i32 [ %i.fg, %bb.b ], [ %.sroa.025.0.ph126, %.lr.ph ]
  %.sroa.16.0121297 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ] ; 19 uses
  %i.fg = add i32 %.sroa.025.0120298, -1          ; 4 uses
  %i.fh = lshr i64 %.sroa.16.0121297, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.fh, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.fh, 28
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx2.i ; 3 uses
  %i.fk = icmp samesign ult i64 %.sroa.16.0121297, 64
  br i1 %i.fk, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB11_23CanonicalCombiningClassNCNvB11_17sort_slice_by_cccs_0E0EB11_.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph299
  %i.fl = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB16_23CanonicalCombiningClassNCNvB16_17sort_slice_by_cccs_0E0EB16_(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph128, ptr noundef nonnull readonly %i.fi, ptr noundef nonnull readonly %i.fj, i64 noundef %i.fh, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB11_23CanonicalCombiningClassNCNvB11_17sort_slice_by_cccs_0E0EB11_.exit.i: ; preds = %.lr.ph299
  %.val6.i = load i32, ptr %.sroa.0.0.ph128, align 4, !alias.scope !75, !noalias !78, !noundef !18
  %.val7.i = load i32, ptr %i.fi, align 4, !alias.scope !75, !noalias !78, !noundef !18
  %i.fm = lshr i32 %.val6.i, 24                   ; 2 uses
  %i.fn = lshr i32 %.val7.i, 24                   ; 2 uses
  %i.fo = icmp samesign ult i32 %i.fm, %i.fn      ; 2 uses
  %.val5.i = load i32, ptr %i.fj, align 4, !alias.scope !75, !noalias !78, !noundef !18
  %i.fp = lshr i32 %.val5.i, 24                   ; 2 uses
  %i.fq = icmp samesign ult i32 %i.fm, %i.fp
  %i.fr = xor i1 %i.fo, %i.fq
  %i.fs = icmp samesign ult i32 %i.fn, %i.fp
  %i.ft = xor i1 %i.fo, %i.fs
  %..i.i = select i1 %i.ft, ptr %i.fj, ptr %i.fi
  %.sroa.0.0.i.i = select i1 %i.fr, ptr %.sroa.0.0.ph128, ptr %..i.i
  br label %bb.p

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyNtB1u_23CanonicalCombiningClassNCNvB1u_17sort_slice_by_cccs_0E0EB1u_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB11_23CanonicalCombiningClassNCNvB11_17sort_slice_by_cccs_0E0EB11_.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB11_23CanonicalCombiningClassNCNvB11_17sort_slice_by_cccs_0E0EB11_.exit.i ], [ %i.fl, %bb.o ]
  %i.fu = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fv = sub nuw i64 %i.fu, %i.c                 ; 3 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fv, 2        ; 3 uses
  %i.fw = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0121297
  call void @llvm.assume(i1 %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4            ; 3 uses
  store i32 %i.fy, ptr %i.a, align 4
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph125, align 4, !noundef !18
  %i.fz = lshr i32 %.sroa.028.0.val, 24
  %i.ga = lshr i32 %i.fy, 24
  %i.gb = icmp samesign ult i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0121297
  br i1 %.not83, label %bb.t, label %bb.s, !prof !30

bb.s:                                             ; preds = %bb.r
  %i.gc = getelementptr [4 x i8], ptr %2, i64 %.sroa.16.0121297 ; 3 uses
  %i.gd = lshr i32 %i.fy, 24                      ; 5 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.43.0.i = phi ptr [ %i.gc, %bb.s ], [ %i.hv, %bb.v ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.s ], [ %.sroa.27.2.lcssa.i, %bb.v ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.s ], [ %i.hy, %bb.v ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.s ], [ %.sroa.16.0121297, %bb.v ] ; 3 uses
  %i.ge = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph128, i64 %i.ge ; 2 uses
  %i.gg = icmp ult ptr %.sroa.9.0.i, %i.gf
  br i1 %i.gg, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.u, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.hi, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.u ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.hh, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.u ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.he, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.u ] ; 4 uses
  %.val21.i = load i32, ptr %.sroa.9.131.i, align 4, !alias.scope !80, !noalias !83, !noundef !18 ; 2 uses
  %i.gh = lshr i32 %.val21.i, 24
  %i.gi = icmp samesign ult i32 %i.gh, %i.gd      ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -4
  %.sroa.01.0.i.i = select i1 %i.gi, ptr %2, ptr %i.gj
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i32 %.val21.i, ptr %i.gk, align 4, !alias.scope !83, !noalias !85
  %i.gl = zext i1 %i.gi to i64
  %i.gm = add i64 %.sroa.27.130.i, %i.gl          ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 4
  %.val19.i = load i32, ptr %i.gn, align 4, !alias.scope !80, !noalias !83, !noundef !18 ; 2 uses
  %i.go = lshr i32 %.val19.i, 24
  %i.gp = icmp samesign ult i32 %i.go, %i.gd      ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i23.i = select i1 %i.gp, ptr %2, ptr %i.gq
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i23.i, i64 %i.gm
  store i32 %.val19.i, ptr %i.gr, align 4, !alias.scope !83, !noalias !88
  %i.gs = zext i1 %i.gp to i64
  %i.gt = add i64 %i.gm, %i.gs                    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %.val17.i = load i32, ptr %i.gu, align 4, !alias.scope !80, !noalias !83, !noundef !18 ; 2 uses
  %i.gv = lshr i32 %.val17.i, 24
  %i.gw = icmp samesign ult i32 %i.gv, %i.gd      ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -12
  %.sroa.01.0.i24.i = select i1 %i.gw, ptr %2, ptr %i.gx
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i24.i, i64 %i.gt
  store i32 %.val17.i, ptr %i.gy, align 4, !alias.scope !83, !noalias !91
  %i.gz = zext i1 %i.gw to i64
  %i.ha = add i64 %i.gt, %i.gz                    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 12
  %.val15.i = load i32, ptr %i.hb, align 4, !alias.scope !80, !noalias !83, !noundef !18 ; 2 uses
  %i.hc = lshr i32 %.val15.i, 24
  %i.hd = icmp samesign ult i32 %i.hc, %i.gd      ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.hd, ptr %2, ptr %i.he
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i25.i, i64 %i.ha
  store i32 %.val15.i, ptr %i.hf, align 4, !alias.scope !83, !noalias !94
  %i.hg = zext i1 %i.hd to i64
  %i.hh = add i64 %i.ha, %i.hg                    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 3 uses
  %i.hj = icmp ult ptr %i.hi, %i.gf
  br i1 %i.hj, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.u
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.u ], [ %i.he, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.u ], [ %i.hh, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.u ], [ %i.hi, %.lr.ph.i40 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i38 ; 2 uses
  %i.hl = icmp ult ptr %.sroa.9.1.lcssa.i, %i.hk
  br i1 %i.hl, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hp, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hs, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.ht, %.lr.ph38.i ] ; 2 uses
  %i.hm = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0121297
  br i1 %i.hm, label %bb.w, label %bb.v

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.ht, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.hs, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.hp, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !alias.scope !80, !noalias !83, !noundef !18 ; 2 uses
  %i.hn = lshr i32 %.val.i, 24
  %i.ho = icmp samesign ult i32 %i.hn, %i.gd      ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -4 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.ho, ptr %2, ptr %i.hp
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  store i32 %.val.i, ptr %i.hq, align 4, !alias.scope !83, !noalias !97
  %i.hr = zext i1 %i.ho to i64
  %i.hs = add i64 %.sroa.27.235.i, %i.hr          ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 4 ; 3 uses
  %i.hu = icmp ult ptr %i.ht, %i.hk
  br i1 %i.hu, label %.lr.ph38.i, label %._crit_edge39.i

bb.v:                                             ; preds = %._crit_edge39.i
  %i.hv = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -4 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.sroa.27.2.lcssa.i
  %i.hx = load i32, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !80, !noalias !100
  store i32 %i.hx, ptr %i.hw, align 4, !alias.scope !83, !noalias !103
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 4
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge39.i
  %i.hz = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph128, ptr nonnull align 4 %2, i64 %i.hz, i1 false), !alias.scope !104
  %i.ia = sub i64 %.sroa.16.0121297, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0121297, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.w
  %i.ib = getelementptr [4 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.ia, 8
  br i1 %min.iters.check316, label %scalar.ph315.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph45.i
  %n.vec318 = and i64 %i.ia, -8                   ; 3 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next325, %vector.body319 ] ; 3 uses
  %i.ic = xor i64 %index320, -1
  %i.id = getelementptr [4 x i8], ptr %i.gc, i64 %i.ic ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.ib, i64 %index320 ; 2 uses
  %i.if = getelementptr i8, ptr %i.id, i64 -12
  %i.ig = getelementptr i8, ptr %i.id, i64 -28
  %wide.load321.a = load <4 x i32>, ptr %i.if, align 4, !alias.scope !83, !noalias !80
  %wide.load322 = load <4 x i32>, ptr %i.ig, align 4, !alias.scope !83, !noalias !80
  %reverse323.a = shufflevector <4 x i32> %wide.load321.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse324 = shufflevector <4 x i32> %wide.load322, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
end_hunk_0
