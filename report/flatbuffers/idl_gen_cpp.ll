Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_cpp?download=true
inline.NumInlined: 10427
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_:bb.a
_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.aj ; 3 uses
  %i.al = ptrtoint ptr %3 to i64
  %i.am = ptrtoint ptr %.016.lcssa to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 6                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i19 ], [ %i.ao, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i19 ], [ %i.ak, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i19 ], [ %.016.lcssa, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i22) #28 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 64 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i20, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i20, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23, !llvm.loop !11

_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i18 = phi ptr [ %i.ak, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.as, %.lr.ph.i.i.i.i.i19 ]
  %i.av = ptrtoint ptr %.08.lcssa.i.i.i.i.i18 to i64
  %i.aw = sub i64 %i.av, %i.ah
  %i.ax = getelementptr inbounds i8, ptr %i.ak, i64 %i.aw
  ret ptr %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %4, %bb.b ]
  %.078.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %3, %bb.b ]
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.g) #28 ; 0 uses
  %i.j = add nsw i64 %.010.i.i.i.i.i, -1
  %i.k = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !13

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %2, %3
  br i1 %i.l, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %3, i64 -64
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.d
  %.sroa.027.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.027.0.ph, %bb.f ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.z, %bb.f ]
  %.0.ph = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.f ]
  %.sroa.027.0.ph = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -64 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -24
  %i.o = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -32
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.z, %bb.i ], [ %.sroa.0.0.ph, %.outer ]
  %.0 = phi ptr [ %i.ap, %bb.i ], [ %.0.ph, %.outer ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.e
  %i.x = sub i64 %i.q, %i.r
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i, 0
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -64 ; 5 uses
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.027.0.ph) #28 ; 0 uses
  %i.ab = icmp eq ptr %0, %.sroa.027.0.ph
  br i1 %i.ab, label %bb.g, label %.outer, !llvm.loop !1076

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 6                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i19
  %.010.i.i.i.i.i20 = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i19 ], [ %i.ag, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i19 ], [ %i.z, %bb.g ]
  %.078.i.i.i.i.i22 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i19 ], [ %i.ac, %bb.g ]
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -64 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -64 ; 2 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ai) #28 ; 0 uses
  %i.al = add nsw i64 %.010.i.i.i.i.i20, -1
  %i.am = icmp samesign ugt i64 %.010.i.i.i.i.i20, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !13

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %.0) #28 ; 0 uses
  %i.ao = icmp eq ptr %2, %.0
  br i1 %i.ao, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %.0, i64 -64
  br label %bb.e, !llvm.loop !1076

_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %bb.h, %.lr.ph.i.i.i.i.i19, %.lr.ph.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond88 = or i1 %i.a, %i.b
  br i1 %or.cond88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8393 = phi i64 [ %4, %.lr.ph ], [ %i.bu, %tailrecurse ] ; 4 uses
  %.tr8292 = phi i64 [ %3, %.lr.ph ], [ %i.bt, %tailrecurse ] ; 4 uses
  %.tr8090 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.bs, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8393, %.tr8292
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr8090, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr89, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr89, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.tr8090, i64 32
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.p = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  tail call void @_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %.tr89, ptr noundef nonnull align 8 dereferenceable(64) %.tr8090) #28
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.r = icmp sgt i64 %.tr8292, %.tr8393
  %i.s = ptrtoint ptr %.tr8090 to i64             ; 4 uses
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.t = sdiv i64 %.tr8292, 2                     ; 2 uses
  %i.u = getelementptr inbounds [64 x i8], ptr %.tr89, i64 %i.t ; 3 uses
  %i.v = sub i64 %i.c, %i.s
  %i.w = ashr exact i64 %i.v, 6                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.w, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr8090, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ] ; 2 uses
  %i.ac = lshr i64 %.016.i, 1                     ; 3 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.015.i, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.af) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.aj = tail call i32 @memcmp(ptr noundef %i.ai, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ak = sub i64 %i.af, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.al = icmp slt i32 %.0.i.i.i.i.i, 0           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.an = xor i64 %i.ac, -1
  %i.ao = add nsw i64 %.016.i, %i.an
  %.sroa.011.1.i = select i1 %i.al, ptr %i.am, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.al, i64 %i.ao, i64 %i.ac   ; 2 uses
  %i.ap = icmp sgt i64 %.1.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !14

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.s, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8090, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aq = sub i64 %.pre-phi, %i.s
  %i.ar = ashr exact i64 %i.aq, 6
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.as = sdiv i64 %.tr8393, 2                    ; 2 uses
  %i.at = getelementptr inbounds [64 x i8], ptr %.tr8090, i64 %i.as ; 3 uses
  %i.au = ptrtoint ptr %.tr89 to i64              ; 3 uses
  %i.av = sub i64 %i.s, %i.au
  %i.aw = ashr exact i64 %i.av, 6                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51
  %.016.i53 = phi i64 [ %i.aw, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.1.i62, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ] ; 2 uses
  %.sroa.011.015.i54 = phi ptr [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.sroa.011.1.i61, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ] ; 2 uses
  %i.bc = lshr i64 %.016.i53, 1                   ; 3 uses
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.015.i54, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !53 ; 2 uses
  %.sroa.speculated.i.i.i.i.i57 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.az) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i.i.i57, 0
  br i1 %i.bg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i63, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i58

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i58: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.bj = tail call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.bi, i64 noundef %.sroa.speculated.i.i.i.i.i57) #28 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i59, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i63, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i63: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.bk = sub i64 %i.az, %i.bf
  %spec.select7.i.i.i.i.i.i64 = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 -2147483648)
  %.08.i.i.i.i.i.i65 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i64, i64 2147483647)
  %.0.i6.i.i.i.i.i66 = trunc nsw i64 %.08.i.i.i.i.i.i65 to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i63, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i58
  %.0.i.i.i.i.i60 = phi i32 [ %i.bj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i58 ], [ %.0.i6.i.i.i.i.i66, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i63 ]
  %i.bl = icmp slt i32 %.0.i.i.i.i.i60, 0         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bn = xor i64 %i.bc, -1
  %i.bo = add nsw i64 %.016.i53, %i.bn
  %.sroa.011.1.i61 = select i1 %i.bl, ptr %.sroa.011.015.i54, ptr %i.bm ; 3 uses
  %.1.i62 = select i1 %i.bl, i64 %i.bc, i64 %i.bo ; 2 uses
  %i.bp = icmp sgt i64 %.1.i62, 0
  br i1 %i.bp, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !15

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %.pre96 = ptrtoint ptr %.sroa.011.1.i61 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi97 = phi i64 [ %.pre96, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.au, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.bq = sub i64 %.pre-phi97, %i.au
  %i.br = ashr exact i64 %i.bq, 6
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit
  %.sroa.069.0 = phi ptr [ %i.u, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.ar, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.as, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.t, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.br, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bs = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.069.0, ptr %.tr8090, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %.tr89, ptr %.sroa.069.0, ptr %i.bs, i64 noundef %.0, i64 noundef %.043)
  %i.bt = sub nsw i64 %.tr8292, %.0               ; 2 uses
  %i.bu = sub nsw i64 %.tr8393, %.043             ; 2 uses
  %i.bv = icmp eq i64 %i.bt, 0
  %i.bw = icmp eq i64 %i.bu, 0
  %or.cond = or i1 %i.bv, %i.bw
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.flatbuffers::IncludedFile", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !31
  %i.b = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !37
  %i.i = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.i, ptr %i.a, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !53
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  store i64 0, ptr %i.k, align 8, !tbaa !53
  store i8 0, ptr %i.c, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !31
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN11flatbuffers12IncludedFileC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !37
  %i.w = load i64, ptr %i.q, align 8, !tbaa !32
  store i64 %i.w, ptr %i.o, align 8, !tbaa !32
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre5 = load i64, ptr %.phi.trans.insert4, align 8, !tbaa !53
  br label %_ZN11flatbuffers12IncludedFileC2EOS0_.exit

_ZN11flatbuffers12IncludedFileC2EOS0_.exit:       ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.x, ptr %i.z, align 8, !tbaa !53
  store ptr %i.q, ptr %i.n, align 8, !tbaa !37
  store i64 0, ptr %i.y, align 8, !tbaa !53
  store i8 0, ptr %i.q, align 8, !tbaa !32
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #28 ; 0 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #28 ; 0 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11flatbuffers12IncludedFileC2EOS0_.exit
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN11flatbuffers12IncludedFileC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZN11flatbuffers12IncludedFileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !32
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZN11flatbuffers12IncludedFileD2Ev.exit

_ZN11flatbuffers12IncludedFileD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.flatbuffers::IncludedFile", align 8 ; 16 uses
  %4 = alloca %"struct.flatbuffers::IncludedFile", align 8 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 6                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 6                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 2 uses
  %.sroa.04.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  tail call void @_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.08.i) #28
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 64
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !1077

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0124 = phi i64 [ %i.f, %bb.d ], [ %.0124.be, %.backedge ] ; 4 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %.sroa.094.0 = phi ptr [ %0, %bb.d ], [ %.sroa.094.0.be, %.backedge ] ; 5 uses
  %i.z = sub nsw i64 %.0124, %.0                  ; 6 uses
  %i.aa = icmp slt i64 %.0, %i.z
  br i1 %i.aa, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp sgt i64 %i.z, 0
  br i1 %i.ab, label %.lr.ph134.preheader, label %._crit_edge135

.lr.ph134.preheader:                              ; preds = %bb.f
  %i.ac = getelementptr inbounds [64 x i8], ptr %.sroa.094.0, i64 %.0
  br label %.lr.ph134

._crit_edge135:                                   ; preds = %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, %bb.f
  %.sroa.094.1.lcssa = phi ptr [ %.sroa.094.0, %bb.f ], [ %i.eg, %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ]
  %i.ad = srem i64 %.0124, %.0                    ; 2 uses
  %.not21 = icmp eq i64 %i.ad, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.ag

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit
  %.019132 = phi i64 [ %i.ei, %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ], [ 0, %.lr.ph134.preheader ]
  %.sroa.093.0131 = phi ptr [ %i.eh, %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ], [ %i.ac, %.lr.ph134.preheader ] ; 26 uses
  %.sroa.094.1130 = phi ptr [ %i.eg, %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ], [ %.sroa.094.0, %.lr.ph134.preheader ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.u, ptr %4, align 8, !tbaa !31
  %i.ae = load ptr, ptr %.sroa.094.1130, align 8, !tbaa !37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.094.1130, i64 16 ; 9 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag:bb.a
  br i1 %i.hh, label %bb.aw, label %.thread.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56: ; preds = %_ZN11flatbuffers12IncludedFileaSEOS0_.exit91
  br i1 %i.hh, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i57

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.hi = load i64, ptr %i.q, align 8, !tbaa !53  ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  %.not21.i.i68 = icmp eq ptr %3, %i.eq
  br i1 %.not21.i.i68, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59, label %bb.ax, !prof !276

bb.ax:                                            ; preds = %bb.aw
  switch i64 %i.hi, label %bb.az [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i69
    i64 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !32
  store i8 %i.hk, ptr %i.hd, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i69

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.hg, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i69: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.hl = load i64, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  store i64 %i.hl, ptr %i.gg, align 8, !tbaa !53
  %i.hm = load ptr, ptr %i.eq, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store i8 0, ptr %i.hn, align 1, !tbaa !32
  %.pre.i.i70 = load ptr, ptr %3, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59

.thread.i.i72:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  store ptr %i.hg, ptr %i.eq, align 8, !tbaa !37
  %i.ho = load i64, ptr %i.q, align 8, !tbaa !53
  store i64 %i.ho, ptr %i.gg, align 8, !tbaa !53
  %i.hp = load i64, ptr %i.p, align 8, !tbaa !32
  store i64 %i.hp, ptr %i.he, align 8, !tbaa !32
  br label %bb.bb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56
  %i.hq = load i64, ptr %i.he, align 8, !tbaa !32
  store ptr %i.hg, ptr %i.eq, align 8, !tbaa !37
  %i.hr = load i64, ptr %i.q, align 8, !tbaa !53
  store i64 %i.hr, ptr %i.gg, align 8, !tbaa !53
  %i.hs = load i64, ptr %i.p, align 8, !tbaa !32
  store i64 %i.hs, ptr %i.he, align 8, !tbaa !32
  %.not.i.i58 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i58, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i57
  store ptr %i.hd, ptr %3, align 8, !tbaa !37
  store i64 %i.hq, ptr %i.p, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i57, %.thread.i.i72
  store ptr %i.p, ptr %3, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59: ; preds = %bb.bb, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i69, %bb.aw
  %i.ht = phi ptr [ %.pre.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i69 ], [ %i.hd, %bb.ba ], [ %i.p, %bb.bb ], [ %i.hg, %bb.aw ]
  store i64 0, ptr %i.q, align 8, !tbaa !53
  store i8 0, ptr %i.ht, align 1, !tbaa !32
  %i.hu = load ptr, ptr %i.gh, align 8, !tbaa !37 ; 6 uses
  %i.hv = getelementptr inbounds i8, ptr %.sroa.0.0128, i64 -16 ; 4 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  %i.hx = load ptr, ptr %i.r, align 8, !tbaa !37  ; 6 uses
  %i.hy = icmp eq ptr %i.hx, %i.s                 ; 2 uses
  br i1 %i.hw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59
  br i1 %i.hy, label %bb.bc, label %.thread.i10.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i59
  br i1 %i.hy, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i61

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i66
  %i.hz = load i64, ptr %i.t, align 8, !tbaa !53  ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %.not21.i6.i63 = icmp eq ptr %3, %i.eq
  br i1 %.not21.i6.i63, label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit73, label %bb.bd, !prof !276

bb.bd:                                            ; preds = %bb.bc
  switch i64 %i.hz, label %bb.bf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i64
    i64 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ib = load i8, ptr %i.hx, align 1, !tbaa !32
  store i8 %i.ib, ptr %i.hu, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i64

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr align 1 %i.hx, i64 %i.hz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i64: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ic = load i64, ptr %i.t, align 8, !tbaa !53  ; 2 uses
  store i64 %i.ic, ptr %i.hc, align 8, !tbaa !53
  %i.id = load ptr, ptr %i.gh, align 8, !tbaa !37
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store i8 0, ptr %i.ie, align 1, !tbaa !32
  %.pre.i8.i65 = load ptr, ptr %i.r, align 8, !tbaa !37
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit73

.thread.i10.i67:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i66
  store ptr %i.hx, ptr %i.gh, align 8, !tbaa !37
  %i.if = load i64, ptr %i.t, align 8, !tbaa !53
  store i64 %i.if, ptr %i.hc, align 8, !tbaa !53
  %i.ig = load i64, ptr %i.s, align 8, !tbaa !32
  store i64 %i.ig, ptr %i.hv, align 8, !tbaa !32
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i60
  %i.ih = load i64, ptr %i.hv, align 8, !tbaa !32
  store ptr %i.hx, ptr %i.gh, align 8, !tbaa !37
  %i.ii = load i64, ptr %i.t, align 8, !tbaa !53
  store i64 %i.ii, ptr %i.hc, align 8, !tbaa !53
  %i.ij = load i64, ptr %i.s, align 8, !tbaa !32
  store i64 %i.ij, ptr %i.hv, align 8, !tbaa !32
  %.not.i5.i62 = icmp eq ptr %i.hu, null
  br i1 %.not.i5.i62, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i61
  store ptr %i.hu, ptr %i.r, align 8, !tbaa !37
  store i64 %i.ih, ptr %i.s, align 8, !tbaa !32
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit73

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i61, %.thread.i10.i67
  store ptr %i.s, ptr %i.r, align 8, !tbaa !37
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit73

_ZN11flatbuffers12IncludedFileaSEOS0_.exit73:     ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i64, %bb.bg, %bb.bh
  %i.ik = phi ptr [ %.pre.i8.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i64 ], [ %i.hu, %bb.bg ], [ %i.s, %bb.bh ], [ %i.hx, %bb.bc ]
  store i64 0, ptr %i.t, align 8, !tbaa !53
  store i8 0, ptr %i.ik, align 1, !tbaa !32
  %i.il = load ptr, ptr %i.r, align 8, !tbaa !37  ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.s
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32: ; preds = %_ZN11flatbuffers12IncludedFileaSEOS0_.exit73
  %i.in = load i64, ptr %i.s, align 8, !tbaa !32
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33: ; preds = %_ZN11flatbuffers12IncludedFileaSEOS0_.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32
  %i.ip = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.p
  br i1 %i.iq, label %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33
  %i.ir = load i64, ptr %i.p, align 8, !tbaa !32
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #27
  br label %_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit37

_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.it = add nuw nsw i64 %.018129, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.it, %.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1080

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge135, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge135 ], [ %i.o, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not97 = icmp sgt i64 %3, %6
  %.not5698 = icmp sgt i64 %4, %6
  %or.cond99 = and i1 %.not97, %.not5698
  br i1 %or.cond99, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bd, %tailrecurse ]
  %.tr91.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr93.lcssa = phi i64 [ %3, %bb.a ], [ %i.bc, %tailrecurse ]
  %.tr94.lcssa = phi i64 [ %4, %bb.a ], [ %i.be, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %.tr.lcssa, ptr %.tr91.lcssa, ptr %2, i64 noundef %.tr93.lcssa, i64 noundef %.tr94.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr94103 = phi i64 [ %4, %.lr.ph ], [ %i.be, %tailrecurse ] ; 3 uses
  %.tr93102 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 3 uses
  %.tr91101 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr93102, %.tr94103
  %i.c = ptrtoint ptr %.tr91101 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr93102, 2                    ; 2 uses
  %i.e = getelementptr inbounds [64 x i8], ptr %.tr100, i64 %i.d ; 3 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 6                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr91101, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ] ; 2 uses
  %i.m = lshr i64 %.016.i, 1                      ; 3 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.015.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.p) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.u = sub i64 %i.p, %i.j
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.x = xor i64 %i.m, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.011.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.m      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !14

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr91101, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.c
  %i.ab = ashr exact i64 %i.aa, 6
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ac = sdiv i64 %.tr94103, 2                   ; 2 uses
  %i.ad = getelementptr inbounds [64 x i8], ptr %.tr91101, i64 %i.ac ; 3 uses
  %i.ae = ptrtoint ptr %.tr100 to i64             ; 3 uses
  %i.af = sub i64 %i.c, %i.ae
  %i.ag = ashr exact i64 %i.af, 6                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.016.i64 = phi i64 [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i73, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ] ; 2 uses
  %.sroa.011.015.i65 = phi ptr [ %.tr100, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.sroa.011.1.i72, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ] ; 2 uses
  %i.am = lshr i64 %.016.i64, 1                   ; 3 uses
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.015.i65, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %.sroa.speculated.i.i.i.i.i68 = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aj) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i.i.i68, 0
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.at = tail call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.as, i64 noundef %.sroa.speculated.i.i.i.i.i68) #28 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i70, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.au = sub i64 %i.aj, %i.ap
  %spec.select7.i.i.i.i.i.i75 = tail call i64 @llvm.smax.i64(i64 %i.au, i64 -2147483648)
  %.08.i.i.i.i.i.i76 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i75, i64 2147483647)
  %.0.i6.i.i.i.i.i77 = trunc nsw i64 %.08.i.i.i.i.i.i76 to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69
  %.0.i.i.i.i.i71 = phi i32 [ %i.at, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69 ], [ %.0.i6.i.i.i.i.i77, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74 ]
  %i.av = icmp slt i32 %.0.i.i.i.i.i71, 0         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ax = xor i64 %i.am, -1
  %i.ay = add nsw i64 %.016.i64, %i.ax
  %.sroa.011.1.i72 = select i1 %i.av, ptr %.sroa.011.015.i65, ptr %i.aw ; 3 uses
  %.1.i73 = select i1 %i.av, i64 %i.am, i64 %i.ay ; 2 uses
  %i.az = icmp sgt i64 %.1.i73, 0
  br i1 %i.az, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !15

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN11flatbuffers12IncludedFileENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %.pre109 = ptrtoint ptr %.sroa.011.1.i72 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi110 = phi i64 [ %.pre109, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.sroa.011.0.lcssa.i61 = phi ptr [ %.sroa.011.1.i72, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr100, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ba = sub i64 %.pre-phi110, %i.ae
  %i.bb = ashr exact i64 %i.ba, 6
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit
  %.sroa.080.0 = phi ptr [ %i.e, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.bb, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bc = sub nsw i64 %.tr93102, %.0              ; 4 uses
  %i.bd = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %.sroa.080.0, ptr %.tr91101, ptr %.sroa.0.0, i64 noundef %i.bc, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %.tr100, ptr %.sroa.080.0, ptr %i.bd, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.be = sub nsw i64 %.tr94103, %.052            ; 3 uses
  %.not = icmp sgt i64 %i.bc, %6
  %.not56 = icmp sgt i64 %i.be, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %5, %bb.c ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %1, %bb.c ] ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i) #28 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.j = add nsw i64 %.012.i.i.i.i.i, -1
  %i.k = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.l = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.m = sub i64 %i.c, %i.l
  %i.n = ashr exact i64 %i.m, 6                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i37:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %.lr.ph.i.i.i.i.i37
  %.010.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i37 ], [ %i.n, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i37 ], [ %2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i37 ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ]
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.p) #28 ; 0 uses
  %i.s = add nsw i64 %.010.i.i.i.i.i, -1
  %i.t = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i37, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.u = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.v = ptrtoint ptr %5 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 6                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i39, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i39:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %.lr.ph.i.i.i.i.i39
  %.012.i.i.i.i.i40 = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i39 ], [ %i.x, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i41 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i39 ], [ %0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0910.i.i.i.i.i42 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i39 ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ] ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i41, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i42) #28 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i42, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i41, i64 64 ; 2 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i40, -1
  %i.ad = icmp samesign ugt i64 %.012.i.i.i.i.i40, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i39, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !11

_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i39
  %.pre65 = ptrtoint ptr %i.ab to i64
  br label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %.pre-phi66 = phi i64 [ %.pre65, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit ], [ %i.l, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ]
  %i.ae = sub i64 %.pre-phi66, %i.l
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 6                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i44, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48

.lr.ph.i.i.i.i.i44:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i45 = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i44 ], [ %i.aj, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i46 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i44 ], [ %5, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i47 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i44 ], [ %0, %bb.f ] ; 2 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i46, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i47) #28 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 64 ; 2 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i45, -1
  %i.ap = icmp samesign ugt i64 %.012.i.i.i.i.i45, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i44, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48: ; preds = %.lr.ph.i.i.i.i.i44, %bb.f
  %.08.lcssa.i.i.i.i.i43 = phi ptr [ %5, %bb.f ], [ %i.an, %.lr.ph.i.i.i.i.i44 ] ; 2 uses
  %i.aq = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ag
  %i.as = ashr exact i64 %i.ar, 6                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i50:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48, %.lr.ph.i.i.i.i.i50
  %.012.i.i.i.i.i51 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i50 ], [ %i.as, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48 ] ; 2 uses
  %.0811.i.i.i.i.i52 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i50 ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48 ] ; 2 uses
  %.0910.i.i.i.i.i53 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i50 ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48 ] ; 2 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i52, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i53) #28 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 64
  %i.ax = add nsw i64 %.012.i.i.i.i.i51, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i51, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i50, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48
  %i.az = ptrtoint ptr %.08.lcssa.i.i.i.i.i43 to i64
  %i.ba = ptrtoint ptr %5 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 6                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i55:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %.lr.ph.i.i.i.i.i55
  %.010.i.i.i.i.i56 = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i55 ], [ %i.bc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ] ; 2 uses
  %.069.i.i.i.i.i57 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i55 ], [ %2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ]
  %.078.i.i.i.i.i58 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i55 ], [ %.08.lcssa.i.i.i.i.i43, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -64 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -64 ; 3 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.be) #28 ; 0 uses
  %i.bh = add nsw i64 %.010.i.i.i.i.i56, -1
  %i.bi = icmp samesign ugt i64 %.010.i.i.i.i.i56, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !13

_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i55
  %.pre = ptrtoint ptr %i.bf to i64
  br label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit ], [ %i.aq, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ]
  %i.bj = sub i64 %.pre-phi, %i.aq
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bl = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.g, %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.sroa.032.0 = phi ptr [ %i.af, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.bl, %bb.g ], [ %i.bk, %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %0, %bb.b ], [ %2, %bb.e ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers3cpp12CppGenerator13EscapeKeywordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1649) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.c = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  %i.f = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !54
  %i.i = icmp ugt i64 %i.h, 15
end_hunk_1
