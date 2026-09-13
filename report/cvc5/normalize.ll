Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/normalize?download=true
inline.NumInlined: 4351
inline.NumDeleted: 1781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS8_EES2_ISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_9Normalize13applyInternalEPNS5_17AssertionPipelineEE3$_0EEEvT_SM_T0_":bb.a
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclINS_17__normal_iteratorIPSt6vectorIPNS5_8NodeInfoESaISF_EESD_ISH_SaISH_EEEESL_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.o = sub i64 %i.f, %i.h
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclINS_17__normal_iteratorIPSt6vectorIPNS5_8NodeInfoESaISF_EESD_ISH_SaISH_EEEESL_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclINS_17__normal_iteratorIPSt6vectorIPNS5_8NodeInfoESaISF_EESD_ISH_SaISH_EEEESL_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp sgt i32 %.0.i.i.i.i, 0
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclINS_17__normal_iteratorIPSt6vectorIPNS5_8NodeInfoESaISF_EESD_ISH_SaISH_EEEESL_EEbT_T0_.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %.pn26, i64 32
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !206
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.027, i8 0, i64 24, i1 false)
  %i.s = ptrtoint ptr %.sroa.014.027 to i64
  %i.t = sub i64 %i.s, %i.b                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.pn26, i64 48
  %i.w = udiv exact i64 %i.t, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.014.027, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !200  ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.ac = load <2 x ptr>, ptr %i.x, align 8, !tbaa !206
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !206
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !199
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !199
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.z to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ah) #24
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i

_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ai = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !607

.loopexit:                                        ; preds = %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.i.i.i.i.i, %bb.c
  %i.ak = load ptr, ptr %0, align 8, !tbaa !200   ; 3 uses
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !199
  store ptr %.val.i, ptr %0, align 8, !tbaa !200
  store <2 x ptr> %i.r, ptr %i.c, align 8, !tbaa !206
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclINS_17__normal_iteratorIPSt6vectorIPNS5_8NodeInfoESaISF_EESD_ISH_SaISH_EEEESL_EEbT_T0_.exit"
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS8_EES2_ISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_9Normalize13applyInternalEPNS5_17AssertionPipelineEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.014.027)
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit

_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %.sroa.014.0 = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.014.0, %1
  br i1 %.not, label %.loopexit23, label %bb.b, !llvm.loop !608

.loopexit23:                                      ; preds = %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS8_EES2_ISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_9Normalize13applyInternalEPNS5_17AssertionPipelineEE3$_0EEEvT_T0_"(ptr nofree captures(none) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !tbaa !206
  %i.b = load ptr, ptr %0, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit

_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit: ; preds = %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.backedge, %bb.a
  %.sroa.08.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.backedge ] ; 8 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.08.0, i64 -24 ; 3 uses
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !128 ; 2 uses
  %.val2.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !200 ; 2 uses
  %.val2.val.i = load ptr, ptr %.val2.i, align 8, !tbaa !128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.val.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.val.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclISt6vectorIPNS5_8NodeInfoESaISE_EENS_17__normal_iteratorIPSG_SC_ISG_SaISG_EEEEEEbRT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit
  %i.o = sub i64 %i.f, %i.h
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclISt6vectorIPNS5_8NodeInfoESaISE_EENS_17__normal_iteratorIPSG_SC_ISG_SaISG_EEEEEEbRT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclISt6vectorIPNS5_8NodeInfoESaISE_EENS_17__normal_iteratorIPSG_SC_ISG_SaISG_EEEEEEbRT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp sgt i32 %.0.i.i.i.i, 0
  %i.q = load ptr, ptr %.sroa.08.0, align 8, !tbaa !200 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199  ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclISt6vectorIPNS5_8NodeInfoESaISE_EENS_17__normal_iteratorIPSG_SC_ISG_SaISG_EEEEEEbRT_T0_.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  store ptr %.val2.i, ptr %.sroa.08.0, align 8, !tbaa !200
  %i.u = getelementptr inbounds i8, ptr %.sroa.08.0, i64 -16
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !206
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !206
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.backedge, label %bb.c

_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.backedge: ; preds = %bb.b, %bb.c
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit, !llvm.loop !609

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.y) #24
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EEaSEOS7_.exit.backedge

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_0EclISt6vectorIPNS5_8NodeInfoESaISE_EENS_17__normal_iteratorIPSG_SC_ISG_SaISG_EEEEEEbRT_T0_.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  store <2 x ptr> %i.a, ptr %.sroa.08.0, align 8, !tbaa !206
  store ptr %i.d, ptr %i.z, align 8, !tbaa !199
  %.not.i.i.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i1, label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.s to i64
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ac) #24
  br label %_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit

_ZNSt6vectorIPN4cvc58internal13preprocessing6passes8NodeInfoESaIS5_EED2Ev.exit: ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.531") align 8 captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph556.preheader

.lr.ph556.preheader:                              ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.lr.ph556

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.ks, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph556, !llvm.loop !610

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa552 = phi i64 [ %i.d, %.lr.ph ], [ %i.rb, %bb.b ] ; 2 uses
  %.lcssa550 = phi i64 [ %i.c, %.lr.ph ], [ %i.ra, %bb.b ] ; 2 uses
  %storemerge134.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.039.175.i.i, %bb.b ]
  %.sroa.012.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !618 ; 8 uses
  %.sroa.012.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.012.sroa.2.0.copyload = load ptr, ptr %.sroa.012.sroa.2.0..sroa_idx, align 8, !tbaa !619 ; 8 uses
  %.sroa.012.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.012.sroa.3.0.copyload = load ptr, ptr %.sroa.012.sroa.3.0..sroa_idx, align 8, !tbaa !620 ; 8 uses
  %i.i = add nsw i64 %.lcssa552, -2               ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %.lcssa552, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa550, 8
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ex, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %.08.i.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128  ; 3 uses
  %i.t = icmp slt i64 %.08.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i"
  %.033.i.i.i.i = phi i64 [ %i.cf, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i" ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.033.i.i.i.i, 1                 ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 6 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126
  %.not93110.i.i10.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not93110.i.i10.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i", label %.lr.ph114.i.i11.i.i.i

.lr.ph114.i.i11.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !126
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  br label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i, %.lr.ph114.i.i11.i.i.i
  %.sroa.069.0112.i.i12.i.i.i = phi ptr [ %i.aa, %.lr.ph114.i.i11.i.i.i ], [ %.sroa.069.1.i.i26.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i ] ; 4 uses
  %.sroa.064.0111.i.i13.i.i.i = phi ptr [ %i.ag, %.lr.ph114.i.i11.i.i.i ], [ %.sroa.064.1.i.i27.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i ] ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !126
  %.not94.i.i14.i.i.i = icmp eq ptr %.sroa.064.0111.i.i13.i.i.i, %i.ai
  br i1 %.not94.i.i14.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i12.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !56 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i13.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !56
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i15.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i64 %i.ak, 0
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i36.i.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i36.i.i.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %.sroa.064.0111.i.i13.i.i.i, align 8, !tbaa !58
  %i.aq = load ptr, ptr %.sroa.069.0112.i.i12.i.i.i, align 8, !tbaa !58
  %bcmp.i.i.i37.i.i.i = tail call i32 @bcmp(ptr %i.aq, ptr %i.ap, i64 %i.ak)
  %i.ar = icmp eq i32 %bcmp.i.i.i37.i.i.i, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i15.i.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i15.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i36.i.i.i, %bb.e
  %i.as = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.069.0112.i.i12.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.3.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.2.0.copyload) ; 2 uses
  %i.at = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.064.0111.i.i13.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.3.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.2.0.copyload)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !215 ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !216 ; 3 uses
  %.not117.i.i16.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not117.i.i16.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i, label %.lr.ph109.i.i17.i.i.i

.lr.ph109.i.i17.i.i.i:                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i15.i.i.i
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !216
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i22.i.i.i
  %i.bc = add nuw i64 %.052108.i.i18.i.i.i, 1     ; 2 uses
  %exitcond134.not.i.i24.i.i.i = icmp eq i64 %i.bc, %i.ba
  br i1 %exitcond134.not.i.i24.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i, label %bb.h, !llvm.loop !20

bb.h:                                             ; preds = %bb.g, %.lr.ph109.i.i17.i.i.i
  %.052108.i.i18.i.i.i = phi i64 [ 0, %.lr.ph109.i.i17.i.i.i ], [ %i.bc, %bb.g ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.052108.i.i18.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.052108.i.i18.i.i.i ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !93 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !219 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !93 ; 2 uses
  %.not.i.i19.i.i.i = icmp eq i32 %i.bg, %i.bi
  br i1 %.not.i.i19.i.i.i, label %.preheader.i.i21.i.i.i, label %.split55.i.i.i

.preheader.i.i21.i.i.i:                           ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !220
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2                 ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !220
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bh to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2                 ; 3 uses
  br i1 %i.bp, label %.lr.ph.i.i29.i.i.i, label %._crit_edge.i.i22.i.i.i

.lr.ph.i.i29.i.i.i:                               ; preds = %.preheader.i.i21.i.i.i
  %umax.i.i30.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  br label %bb.j

.split55.i.i.i:                                   ; preds = %bb.h
  %i.bw = icmp slt i32 %i.bg, %i.bi
  %cond.fr56.i.i.i = freeze i1 %i.bw
  br i1 %cond.fr56.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i"

bb.i:                                             ; preds = %bb.k
  %i.bx = add nuw i64 %.0105.i.i31.i.i.i, 1       ; 2 uses
  %exitcond132.not.i.i35.i.i.i = icmp eq i64 %i.bx, %i.bo
  br i1 %exitcond132.not.i.i35.i.i.i, label %._crit_edge.i.i22.i.i.i, label %bb.j, !llvm.loop !21

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i29.i.i.i
  %.0105.i.i31.i.i.i = phi i64 [ 1, %.lr.ph.i.i29.i.i.i ], [ %i.bx, %bb.i ] ; 4 uses
  %exitcond.not.i.i32.i.i.i = icmp eq i64 %.0105.i.i31.i.i.i, %umax.i.i30.i.i.i
  br i1 %exitcond.not.i.i32.i.i.i, label %._crit_edge.i.i22.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.0105.i.i31.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !93 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0105.i.i31.i.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !93 ; 2 uses
  %.not59.i.i33.i.i.i = icmp eq i32 %i.bz, %i.cb
  br i1 %.not59.i.i33.i.i.i, label %bb.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.i.i.i"

._crit_edge.i.i22.i.i.i:                          ; preds = %bb.j, %bb.i, %.preheader.i.i21.i.i.i
  %.not60.i.i23.i.i.i = icmp eq i64 %i.bo, %i.bv
  br i1 %.not60.i.i23.i.i.i, label %bb.g, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %._crit_edge.i.i22.i.i.i
  %i.cc = icmp ult i64 %i.bo, %i.bv
  %cond.fr54.i.i.i = freeze i1 %i.cc
  br i1 %cond.fr54.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i: ; preds = %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i15.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i36.i.i.i, %bb.f
  %.sroa.069.1.i.i26.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i12.i.i.i, i64 40 ; 2 uses
  %.sroa.064.1.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i13.i.i.i, i64 40
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !126
  %.not93.i.i28.i.i.i = icmp eq ptr %.sroa.069.1.i.i26.i.i.i, %i.cd
  br i1 %.not93.i.i28.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i", label %bb.d

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.i.i.i": ; preds = %bb.k
  %i.ce = icmp slt i32 %i.bz, %i.cb
  %cond.fr.i.i.i = freeze i1 %i.ce
  br i1 %cond.fr.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i": ; preds = %bb.d, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.i.i.i", %.split.i.i.i, %.split55.i.i.i
  br label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.i.i.i", %.split.i.i.i, %.split55.i.i.i, %.lr.ph.i.i.i.i
  %i.cf = phi i64 [ %i.x, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread51.i.i.i" ], [ %i.v, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.i.i.i" ], [ %i.v, %.split55.i.i.i ], [ %i.v, %.split.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i ], [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i25.i.i.i ] ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !128
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.i.i.i.i
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !128
  %i.cj = icmp slt i64 %i.cf, %i.l
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !611

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i", %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %i.cf, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit38.thread.i.i.i" ] ; 2 uses
  %i.ck = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.n, i1 %i.ck, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !128
  store ptr %i.cl, ptr %i.q, align 8, !tbaa !128
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.o, %bb.l ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cm = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.cm, label %.lr.ph.i.i.preheader.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i"

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i", %.lr.ph.i.i.preheader.i.i.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i.i.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i" ], [ %.1.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 7 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i.i, 2 ; 4 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %.0919.i.i.i.i.i ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !128 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !126 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 112 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !126
  %.not93110.i.i.i.i.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not93110.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i", label %.lr.ph114.i.i.i.i.i

.lr.ph114.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !126
  br label %bb.n

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, %.lr.ph114.i.i.i.i.i
  %.sroa.069.0112.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph114.i.i.i.i.i ], [ %.sroa.069.1.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.064.0111.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph114.i.i.i.i.i ], [ %.sroa.064.1.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !126
  %.not94.i.i.i.i.i = icmp eq ptr %.sroa.064.0111.i.i.i.i.i, %i.cw
  br i1 %.not94.i.i.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i.i.i.i, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !56 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i.i.i.i, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !56
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dc = icmp eq i64 %i.cy, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %.sroa.064.0111.i.i.i.i.i, align 8, !tbaa !58
  %i.de = load ptr, ptr %.sroa.069.0112.i.i.i.i.i, align 8, !tbaa !58
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.de, ptr %i.dd, i64 %i.cy)
  %i.df = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.df, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i.i.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, %bb.o
  %i.dg = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.069.0112.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.3.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.2.0.copyload) ; 2 uses
  %i.dh = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.064.0111.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.3.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.2.0.copyload)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !215 ; 2 uses
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !216 ; 3 uses
  %.not117.i.i.i.i.i = icmp eq ptr %i.dj, %i.dk
  br i1 %.not117.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %.lr.ph109.i.i.i.i.i

.lr.ph109.i.i.i.i.i:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i.i.i.i
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 24
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !216
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dq = add nuw i64 %.052108.i.i.i.i.i, 1       ; 2 uses
  %exitcond134.not.i.i.i.i.i = icmp eq i64 %i.dq, %i.do
  br i1 %exitcond134.not.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %bb.r, !llvm.loop !20

bb.r:                                             ; preds = %bb.q, %.lr.ph109.i.i.i.i.i
  %.052108.i.i.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i.i ], [ %i.dq, %bb.q ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.052108.i.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %.052108.i.i.i.i.i ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !219 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !93 ; 2 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !219 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.du, %i.dw
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.split61.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !220
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 2                 ; 4 uses
  %i.ed = icmp ugt i64 %i.ec, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !220
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.dv to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2                 ; 3 uses
  br i1 %i.ed, label %.lr.ph.i.i9.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i9.i.i.i:                                ; preds = %.preheader.i.i.i.i.i
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  br label %bb.t

.split61.i.i.i:                                   ; preds = %bb.r
  %i.ek = icmp slt i32 %i.du, %i.dw
  br i1 %i.ek, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i", label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i"

bb.s:                                             ; preds = %bb.u
  %i.el = add nuw i64 %.0105.i.i.i.i.i, 1         ; 2 uses
  %exitcond132.not.i.i.i.i.i = icmp eq i64 %i.el, %i.ec
  br i1 %exitcond132.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.t, !llvm.loop !21

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i9.i.i.i
  %.0105.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i9.i.i.i ], [ %i.el, %bb.s ] ; 4 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.0105.i.i.i.i.i, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.0105.i.i.i.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !93 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0105.i.i.i.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !93 ; 2 uses
  %.not59.i.i.i.i.i = icmp eq i32 %i.en, %i.ep
  br i1 %.not59.i.i.i.i.i, label %bb.s, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i.i"

._crit_edge.i.i.i.i.i:                            ; preds = %bb.t, %bb.s, %.preheader.i.i.i.i.i
  %.not60.i.i.i.i.i = icmp eq i64 %i.ec, %i.ej
  br i1 %.not60.i.i.i.i.i, label %bb.q, label %.split60.i.i.i

.split60.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i
  %i.eq = icmp ult i64 %i.ec, %i.ej
  br i1 %i.eq, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i", label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i: ; preds = %bb.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, %bb.p
  %.sroa.069.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i.i.i.i, i64 40 ; 2 uses
  %.sroa.064.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i.i.i.i, i64 40
  %i.er = load ptr, ptr %i.ct, align 8, !tbaa !126
  %.not93.i.i.i.i.i = icmp eq ptr %.sroa.069.1.i.i.i.i.i, %i.er
  br i1 %.not93.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i", label %bb.n

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i.i": ; preds = %bb.u
  %i.es = icmp slt i32 %i.en, %i.ep
  br i1 %i.es, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i", label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i": ; preds = %bb.n, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i.i", %.split60.i.i.i, %.split61.i.i.i
  %i.et = load ptr, ptr %i.cp, align 8, !tbaa !128
  %i.eu = getelementptr inbounds [8 x i8], ptr %0, i64 %.018.i.i.i.i.i
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !128
  %i.ev = icmp sgt i64 %.0919.i.i.i.i.i, %.08.i.i.i
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i", !llvm.loop !612

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i": ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i.i", %.split60.i.i.i, %.split61.i.i.i, %.lr.ph.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.m ], [ %.018.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i ], [ %.0919.i.i.i.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread58.i.i.i" ], [ %.018.i.i.i.i.i, %.split61.i.i.i ], [ %.018.i.i.i.i.i, %.split60.i.i.i ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.018.i.i.i.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i.i" ]
  %i.ew = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.s, ptr %i.ew, align 8, !tbaa !128
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ex = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_RT0_.exit.i.i", label %bb.c, !llvm.loop !613

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_T0_SL_T1_T2_.exit.i.i.i"
  %4 = icmp sgt i64 %.lcssa550, 8
  br i1 %4, label %.lr.ph.i8.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_T0_.exit"

.lr.ph.i8.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_RT0_.exit.i32.i"
  %.sroa.0.087.i.i = phi ptr [ %i.ey, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_RT0_.exit.i32.i" ], [ %storemerge134.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_RT0_.exit.i.i" ]
  %i.ey = getelementptr inbounds i8, ptr %.sroa.0.087.i.i, i64 -8 ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !128 ; 3 uses
  %i.fa = load ptr, ptr %0, align 8, !tbaa !128
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !128
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fb, %i.a                     ; 3 uses
  %i.fd = ashr exact i64 %i.fc, 3                 ; 3 uses
  %i.fe = add nsw i64 %i.fd, -1
  %i.ff = lshr i64 %i.fe, 1
  %i.fg = icmp sgt i64 %i.fd, 2
  br i1 %i.fg, label %.lr.ph.i.i.i51.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i51.i:                                 ; preds = %.lr.ph.i8.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i"
  %.033.i.i.i52.i = phi i64 [ %i.hs, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i" ], [ 0, %.lr.ph.i8.i ] ; 2 uses
  %i.fh = shl i64 %.033.i.i.i52.i, 1              ; 2 uses
  %i.fi = add i64 %i.fh, 2                        ; 6 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fi
  %i.fk = or disjoint i64 %i.fh, 1                ; 2 uses
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !128 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !126 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 112 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !126
  %.not93110.i.i5.i.i = icmp eq ptr %i.fn, %i.fp
  br i1 %.not93110.i.i5.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i", label %.lr.ph114.i.i6.i.i

.lr.ph114.i.i6.i.i:                               ; preds = %.lr.ph.i.i.i51.i
  %i.fq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fk
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !128 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 104
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !126
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  br label %bb.v

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i, %.lr.ph114.i.i6.i.i
  %.sroa.069.0112.i.i7.i.i = phi ptr [ %i.fn, %.lr.ph114.i.i6.i.i ], [ %.sroa.069.1.i.i21.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i ] ; 4 uses
  %.sroa.064.0111.i.i8.i.i = phi ptr [ %i.ft, %.lr.ph114.i.i6.i.i ], [ %.sroa.064.1.i.i22.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i ] ; 5 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !126
  %.not94.i.i9.i.i = icmp eq ptr %.sroa.064.0111.i.i8.i.i, %i.fv
  br i1 %.not94.i.i9.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i7.i.i, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !56 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i8.i.i, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !56
  %i.ga = icmp eq i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i10.i.i

bb.x:                                             ; preds = %bb.w
  %i.gb = icmp eq i64 %i.fx, 0
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i31.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i31.i.i: ; preds = %bb.x
  %i.gc = load ptr, ptr %.sroa.064.0111.i.i8.i.i, align 8, !tbaa !58
  %i.gd = load ptr, ptr %.sroa.069.0112.i.i7.i.i, align 8, !tbaa !58
  %bcmp.i.i.i32.i.i = tail call i32 @bcmp(ptr %i.gd, ptr %i.gc, i64 %i.fx)
  %i.ge = icmp eq i32 %bcmp.i.i.i32.i.i, 0
  br i1 %i.ge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i10.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i31.i.i, %bb.w
  %i.gf = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.069.0112.i.i7.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.3.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.2.0.copyload) ; 2 uses
  %i.gg = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.064.0111.i.i8.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.3.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.sroa.2.0.copyload)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !215 ; 2 uses
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !216 ; 3 uses
  %.not117.i.i11.i.i = icmp eq ptr %i.gi, %i.gj
  br i1 %.not117.i.i11.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i, label %.lr.ph109.i.i12.i.i

.lr.ph109.i.i12.i.i:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i10.i.i
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 24
  %i.go = load ptr, ptr %i.gg, align 8, !tbaa !216
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i17.i.i
  %i.gp = add nuw i64 %.052108.i.i13.i.i, 1       ; 2 uses
  %exitcond134.not.i.i19.i.i = icmp eq i64 %i.gp, %i.gn
  br i1 %exitcond134.not.i.i19.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i, label %bb.z, !llvm.loop !20

bb.z:                                             ; preds = %bb.y, %.lr.ph109.i.i12.i.i
  %.052108.i.i13.i.i = phi i64 [ 0, %.lr.ph109.i.i12.i.i ], [ %i.gp, %bb.y ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.052108.i.i13.i.i ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.052108.i.i13.i.i ; 2 uses
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !219 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !93 ; 2 uses
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !219 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !93 ; 2 uses
  %.not.i.i14.i.i = icmp eq i32 %i.gt, %i.gv
  br i1 %.not.i.i14.i.i, label %.preheader.i.i16.i.i, label %.split46.i.i

.preheader.i.i16.i.i:                             ; preds = %bb.z
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !220
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gs to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 2                 ; 4 uses
  %i.hc = icmp ugt i64 %i.hb, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !220
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.gu to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = ashr exact i64 %i.hh, 2                 ; 3 uses
  br i1 %i.hc, label %.lr.ph.i.i24.i.i, label %._crit_edge.i.i17.i.i

.lr.ph.i.i24.i.i:                                 ; preds = %.preheader.i.i16.i.i
  %umax.i.i25.i.i = tail call i64 @llvm.umax.i64(i64 %i.hi, i64 1)
  br label %bb.ab

.split46.i.i:                                     ; preds = %bb.z
  %i.hj = icmp slt i32 %i.gt, %i.gv
  %cond.fr47.i.i = freeze i1 %i.hj
  br i1 %cond.fr47.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i"

bb.aa:                                            ; preds = %bb.ac
  %i.hk = add nuw i64 %.0105.i.i26.i.i, 1         ; 2 uses
  %exitcond132.not.i.i30.i.i = icmp eq i64 %i.hk, %i.hb
  br i1 %exitcond132.not.i.i30.i.i, label %._crit_edge.i.i17.i.i, label %bb.ab, !llvm.loop !21

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i24.i.i
  %.0105.i.i26.i.i = phi i64 [ 1, %.lr.ph.i.i24.i.i ], [ %i.hk, %bb.aa ] ; 4 uses
  %exitcond.not.i.i27.i.i = icmp eq i64 %.0105.i.i26.i.i, %umax.i.i25.i.i
  br i1 %exitcond.not.i.i27.i.i, label %._crit_edge.i.i17.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.0105.i.i26.i.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !93 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.0105.i.i26.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !93 ; 2 uses
  %.not59.i.i28.i.i = icmp eq i32 %i.hm, %i.ho
  br i1 %.not59.i.i28.i.i, label %bb.aa, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.i.i"

._crit_edge.i.i17.i.i:                            ; preds = %bb.ab, %bb.aa, %.preheader.i.i16.i.i
  %.not60.i.i18.i.i = icmp eq i64 %i.hb, %i.hi
  br i1 %.not60.i.i18.i.i, label %bb.y, label %.split.i53.i

.split.i53.i:                                     ; preds = %._crit_edge.i.i17.i.i
  %i.hp = icmp ult i64 %i.hb, %i.hi
  %cond.fr45.i.i = freeze i1 %i.hp
  br i1 %cond.fr45.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i: ; preds = %bb.y, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i31.i.i, %bb.x
  %.sroa.069.1.i.i21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i7.i.i, i64 40 ; 2 uses
  %.sroa.064.1.i.i22.i.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i8.i.i, i64 40
  %i.hq = load ptr, ptr %i.fo, align 8, !tbaa !126
  %.not93.i.i23.i.i = icmp eq ptr %.sroa.069.1.i.i21.i.i, %i.hq
  br i1 %.not93.i.i23.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i", label %bb.v

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.i.i": ; preds = %bb.ac
  %i.hr = icmp slt i32 %i.hm, %i.ho
  %cond.fr.i54.i = freeze i1 %i.hr
  br i1 %cond.fr.i54.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i": ; preds = %bb.v, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.i.i", %.split.i53.i, %.split46.i.i
  br label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.i.i", %.split.i53.i, %.split46.i.i, %.lr.ph.i.i.i51.i
  %i.hs = phi i64 [ %i.fk, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread42.i.i" ], [ %i.fi, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.i.i" ], [ %i.fi, %.split46.i.i ], [ %i.fi, %.split.i53.i ], [ %i.fi, %.lr.ph.i.i.i51.i ], [ %i.fi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i20.i.i ] ; 4 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !128
  %i.hv = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.i.i.i52.i
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !128
  %i.hw = icmp slt i64 %i.hs, %i.ff
  br i1 %i.hw, label %.lr.ph.i.i.i51.i, label %._crit_edge.i.i.i13.i, !llvm.loop !611

._crit_edge.i.i.i13.i:                            ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i", %.lr.ph.i8.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i8.i ], [ %i.hs, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit33.thread.i.i" ] ; 5 uses
  %i.hx = and i64 %i.fc, 8
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i13.i
  %i.hz = add nsw i64 %i.fd, -2
  %i.ia = ashr exact i64 %i.hz, 1
  %i.ib = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.ia
  br i1 %i.ib, label %.thread.i.i50.i, label %bb.ae

.thread.i.i50.i:                                  ; preds = %bb.ad
  %i.ic = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.id = or disjoint i64 %i.ic, 1                ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !128
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !128
  br label %.lr.ph.i.i.preheader.i.i16.i

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_RT0_.exit.i32.i", label %.lr.ph.i.i.preheader.i.i16.i

.lr.ph.i.i.preheader.i.i16.i:                     ; preds = %bb.ae, %.thread.i.i50.i
  %.1.i12.i.i17.i = phi i64 [ %i.id, %.thread.i.i50.i ], [ %.0.lcssa.i.i.i14.i, %bb.ae ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  br label %.lr.ph.i.i.i.i18.i

end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_T0_T1_":bb.a
  %.not60.i.i.i.i = icmp eq i64 %i.nl, %i.ns
  br i1 %.not60.i.i.i.i, label %bb.bb, label %.split.i.i

.split.i.i:                                       ; preds = %._crit_edge.i.i.i.i10
  %i.nz = icmp ult i64 %i.nl, %i.ns
  br i1 %i.nz, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread43.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i: ; preds = %bb.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.ba
  %.sroa.069.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i.i.i, i64 40 ; 2 uses
  %.sroa.064.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i.i.i, i64 40
  %i.oa = load ptr, ptr %i.lz, align 8, !tbaa !126
  %.not93.i.i.i.i = icmp eq ptr %.sroa.069.1.i.i.i.i, %i.oa
  br i1 %.not93.i.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i", label %bb.ay

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i": ; preds = %bb.bf
  %i.ob = icmp slt i32 %i.nw, %i.ny
  br i1 %i.ob, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread43.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread43.i.i": ; preds = %bb.ay, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i", %.split.i.i, %.split45.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.039.195.i.i, i64 8 ; 3 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !128 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 104
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !126 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 112 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !126
  %.not93110.i.i.i.i = icmp eq ptr %i.of, %i.oh
  br i1 %.not93110.i.i.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i", label %.lr.ph114.i.i.i.i, !llvm.loop !615

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i": ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread43.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i", %.split.i.i, %.split45.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, %bb.ax
  %.sroa.039.175.i.i = phi ptr [ %.sroa.039.195.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i ], [ %.sroa.039.0.i.i, %bb.ax ], [ %.sroa.039.195.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.i.i" ], [ %.sroa.039.195.i.i, %.split.i.i ], [ %.sroa.039.195.i.i, %.split45.i.i ], [ %i.oc, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread43.i.i" ] ; 8 uses
  %.sroa.0.1111.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -8 ; 2 uses
  %i.oi = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 104
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !126 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 112 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !126
  %.not93110.i.i8112.i.i = icmp eq ptr %i.ok, %i.om
  br i1 %.not93110.i.i8112.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i", label %.lr.ph114.i.i9.i.i

.lr.ph114.i.i9.i.i:                               ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i"
  %i.on = phi ptr [ %i.qt, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i" ], [ %i.ol, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i" ]
  %i.oo = phi ptr [ %i.qs, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i" ], [ %i.ok, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i" ]
  %.sroa.0.1113.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i" ], [ %.sroa.0.1111.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i" ] ; 6 uses
  %i.op = load ptr, ptr %.sroa.0.1113.i.i, align 8, !tbaa !128 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 104
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !126
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 112
  br label %bb.bg

bb.bg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, %.lr.ph114.i.i9.i.i
  %.sroa.069.0112.i.i10.i.i = phi ptr [ %i.oo, %.lr.ph114.i.i9.i.i ], [ %.sroa.069.1.i.i24.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i ] ; 4 uses
  %.sroa.064.0111.i.i11.i.i = phi ptr [ %i.or, %.lr.ph114.i.i9.i.i ], [ %.sroa.064.1.i.i25.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i ] ; 5 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !126
  %.not94.i.i12.i.i = icmp eq ptr %.sroa.064.0111.i.i11.i.i, %i.ot
  br i1 %.not94.i.i12.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i10.i.i, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !56 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i11.i.i, i64 8
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !56
  %i.oy = icmp eq i64 %i.ov, %i.ox
  br i1 %i.oy, label %bb.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i13.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.oz = icmp eq i64 %i.ov, 0
  br i1 %i.oz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i34.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i34.i.i: ; preds = %bb.bi
  %i.pa = load ptr, ptr %.sroa.064.0111.i.i11.i.i, align 8, !tbaa !58
  %i.pb = load ptr, ptr %.sroa.069.0112.i.i10.i.i, align 8, !tbaa !58
  %bcmp.i.i.i35.i.i = tail call i32 @bcmp(ptr %i.pb, ptr %i.pa, i64 %i.ov)
  %i.pc = icmp eq i32 %bcmp.i.i.i35.i.i, 0
  br i1 %i.pc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i13.i.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i13.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i34.i.i, %bb.bh
  %i.pd = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.069.0112.i.i10.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.copyload) ; 2 uses
  %i.pe = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.064.0111.i.i11.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.copyload)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !215 ; 2 uses
  %i.ph = load ptr, ptr %i.pd, align 8, !tbaa !216 ; 3 uses
  %.not117.i.i14.i.i = icmp eq ptr %i.pg, %i.ph
  br i1 %.not117.i.i14.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, label %.lr.ph109.i.i15.i.i

.lr.ph109.i.i15.i.i:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i13.i.i
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = sdiv exact i64 %i.pk, 24
  %i.pm = load ptr, ptr %i.pe, align 8, !tbaa !216
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge.i.i20.i.i
  %i.pn = add nuw i64 %.052108.i.i16.i.i, 1       ; 2 uses
  %exitcond134.not.i.i22.i.i = icmp eq i64 %i.pn, %i.pl
  br i1 %exitcond134.not.i.i22.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, label %bb.bk, !llvm.loop !20

bb.bk:                                            ; preds = %bb.bj, %.lr.ph109.i.i15.i.i
  %.052108.i.i16.i.i = phi i64 [ 0, %.lr.ph109.i.i15.i.i ], [ %i.pn, %bb.bj ] ; 3 uses
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %.052108.i.i16.i.i ; 2 uses
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %i.pm, i64 %.052108.i.i16.i.i ; 2 uses
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !219 ; 3 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !93 ; 2 uses
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !219 ; 3 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !93 ; 2 uses
  %.not.i.i17.i.i = icmp eq i32 %i.pr, %i.pt
  br i1 %.not.i.i17.i.i, label %.preheader.i.i19.i.i, label %.split50.i.i

.preheader.i.i19.i.i:                             ; preds = %bb.bk
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !220
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pq to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = ashr exact i64 %i.py, 2                 ; 4 uses
  %i.qa = icmp ugt i64 %i.pz, 1
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !220
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.ps to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = ashr exact i64 %i.qf, 2                 ; 3 uses
  br i1 %i.qa, label %.lr.ph.i.i27.i.i, label %._crit_edge.i.i20.i.i

.lr.ph.i.i27.i.i:                                 ; preds = %.preheader.i.i19.i.i
  %umax.i.i28.i.i = tail call i64 @llvm.umax.i64(i64 %i.qg, i64 1)
  br label %bb.bm

.split50.i.i:                                     ; preds = %bb.bk
  %i.qh = icmp slt i32 %i.pr, %i.pt
  br i1 %i.qh, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"

bb.bl:                                            ; preds = %bb.bn
  %i.qi = add nuw i64 %.0105.i.i29.i.i, 1         ; 2 uses
  %exitcond132.not.i.i33.i.i = icmp eq i64 %i.qi, %i.pz
  br i1 %exitcond132.not.i.i33.i.i, label %._crit_edge.i.i20.i.i, label %bb.bm, !llvm.loop !21

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.i.i27.i.i
  %.0105.i.i29.i.i = phi i64 [ 1, %.lr.ph.i.i27.i.i ], [ %i.qi, %bb.bl ] ; 4 uses
  %exitcond.not.i.i30.i.i = icmp eq i64 %.0105.i.i29.i.i, %umax.i.i28.i.i
  br i1 %exitcond.not.i.i30.i.i, label %._crit_edge.i.i20.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %.0105.i.i29.i.i
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !93 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %.0105.i.i29.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !93 ; 2 uses
  %.not59.i.i31.i.i = icmp eq i32 %i.qk, %i.qm
  br i1 %.not59.i.i31.i.i, label %bb.bl, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i"

._crit_edge.i.i20.i.i:                            ; preds = %bb.bm, %bb.bl, %.preheader.i.i19.i.i
  %.not60.i.i21.i.i = icmp eq i64 %i.pz, %i.qg
  br i1 %.not60.i.i21.i.i, label %bb.bj, label %.split49.i.i

.split49.i.i:                                     ; preds = %._crit_edge.i.i20.i.i
  %i.qn = icmp ult i64 %i.pz, %i.qg
  br i1 %i.qn, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i: ; preds = %bb.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i13.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i34.i.i, %bb.bi
  %.sroa.069.1.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i10.i.i, i64 40 ; 2 uses
  %.sroa.064.1.i.i25.i.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i11.i.i, i64 40
  %i.qo = load ptr, ptr %i.on, align 8, !tbaa !126
  %.not93.i.i26.i.i = icmp eq ptr %.sroa.069.1.i.i24.i.i, %i.qo
  br i1 %.not93.i.i26.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i", label %bb.bg

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i": ; preds = %bb.bn
  %i.qp = icmp slt i32 %i.qk, %i.qm
  br i1 %i.qp, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i": ; preds = %bb.bg, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i", %.split49.i.i, %.split50.i.i
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.1113.i.i, i64 -8 ; 2 uses
  %i.qq = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 104
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !126 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 112 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !126
  %.not93110.i.i8.i.i = icmp eq ptr %i.qs, %i.qu
  br i1 %.not93110.i.i8.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i", label %.lr.ph114.i.i9.i.i, !llvm.loop !616

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i": ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i", %.split49.i.i, %.split50.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i"
  %.sroa.0.193.i.i = phi ptr [ %.sroa.0.1113.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i ], [ %.sroa.0.1111.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i" ], [ %.sroa.0.1113.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i" ], [ %.sroa.0.1113.i.i, %.split49.i.i ], [ %.sroa.0.1113.i.i, %.split50.i.i ], [ %.sroa.0.1.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i" ] ; 4 uses
  %i.qv = icmp ult ptr %.sroa.039.175.i.i, %.sroa.0.193.i.i
  br i1 %i.qv, label %bb.bo, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit"

bb.bo:                                            ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"
  %i.qw = load ptr, ptr %.sroa.039.175.i.i, align 8, !tbaa !128
  %i.qx = load ptr, ptr %.sroa.0.193.i.i, align 8, !tbaa !128
  store ptr %i.qx, ptr %.sroa.039.175.i.i, align 8, !tbaa !128
  store ptr %i.qw, ptr %.sroa.0.193.i.i, align 8, !tbaa !128
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.039.175.i.i, i64 8
  br label %bb.ax, !llvm.loop !617

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit": ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_T0_T1_"(ptr %.sroa.039.175.i.i, ptr %storemerge134555, i64 noundef %i.ks, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.531") align 8 %3)
  %i.qz = ptrtoint ptr %.sroa.039.175.i.i to i64
  %i.ra = sub i64 %i.qz, %i.a                     ; 2 uses
  %i.rb = ashr exact i64 %i.ra, 3                 ; 3 uses
  %i.rc = icmp sgt i64 %i.rb, 16
  br i1 %i.rc, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_T0_.exit", !llvm.loop !610

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_RT0_.exit.i32.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !622, !nonnull !99, !align !623 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !624, !nonnull !99, !align !623 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !625, !nonnull !99, !align !623 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %.not93110.i = icmp eq ptr %i.g, %i.i
  br i1 %.not93110.i, label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  br label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.lr.ph114.i
  %.sroa.069.0112.i = phi ptr [ %i.g, %.lr.ph114.i ], [ %.sroa.069.1.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 4 uses
  %.sroa.064.0111.i = phi ptr [ %i.k, %.lr.ph114.i ], [ %.sroa.064.1.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %.not94.i = icmp eq ptr %.sroa.064.0111.i, %i.m ; 3 uses
  br i1 %.not94.i, label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !56
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.d
  %i.t = load ptr, ptr %.sroa.064.0111.i, align 8, !tbaa !58
  %i.u = load ptr, ptr %.sroa.069.0112.i, align 8, !tbaa !58
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.u, ptr %i.t, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.c
  %i.w = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.069.0112.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c) ; 2 uses
  %i.x = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.064.0111.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !215  ; 2 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !216 ; 3 uses
  %.not117.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not117.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !216
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = add nuw i64 %.052108.i, 1               ; 2 uses
  %exitcond134.not.i = icmp eq i64 %i.ag, %i.ae
  br i1 %exitcond134.not.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %bb.f, !llvm.loop !20

bb.f:                                             ; preds = %bb.e, %.lr.ph109.i
  %.052108.i = phi i64 [ 0, %.lr.ph109.i ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.052108.i ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.052108.i ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !219 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !93 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !219 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !93 ; 2 uses
  %.not.i = icmp eq i32 %i.ak, %i.am
  br i1 %.not.i, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 4 uses
  %i.at = icmp ugt i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !220
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.al to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 3 uses
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i32 %i.ak, %i.am
  br label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit

bb.h:                                             ; preds = %bb.j
  %i.bb = add nuw i64 %.0105.i, 1                 ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.bb, %i.as
  br i1 %exitcond132.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !21

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.0105.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bb, %bb.h ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.0105.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.0105.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !93 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0105.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !93 ; 2 uses
  %.not59.i = icmp eq i32 %i.bd, %i.bf
  br i1 %.not59.i, label %bb.h, label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.j
  %i.bg = icmp slt i32 %i.bd, %i.bf
  br label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit

._crit_edge.i:                                    ; preds = %bb.i, %bb.h, %.preheader.i
  %.not60.i = icmp eq i64 %i.as, %i.az
  br i1 %.not60.i, label %bb.e, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.bh = icmp ult i64 %i.as, %i.az
  br label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.d
  %.sroa.069.1.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i, i64 40 ; 2 uses
  %.sroa.064.1.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i, i64 40
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !126
  %.not93.i = icmp eq ptr %.sroa.069.1.i, %i.bi
  br i1 %.not93.i, label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit, label %bb.b

_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.a, %bb.g, %.critedge4.i, %bb.k
  %.6.i = phi i1 [ %i.bh, %bb.k ], [ %i.bg, %.critedge4.i ], [ %i.ba, %bb.g ], [ false, %bb.a ], [ %.not94.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.not94.i, %bb.b ]
  ret i1 %.6.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.478", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS8_IiSaIiEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  store i64 0, ptr %4, align 8
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !216
  %i.m = getelementptr i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.i, i1 false)
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %i.n = phi ptr [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.o = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !241
  store ptr %i.o, ptr %i.p, align 8, !tbaa !215
  %i.r = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit unwind label %bb.d ; 2 uses

end_hunk_1
