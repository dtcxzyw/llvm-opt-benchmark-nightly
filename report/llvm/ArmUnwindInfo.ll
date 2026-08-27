Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ArmUnwindInfo?download=true
inline.NumInlined: 396
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.d = load i32, ptr %1, align 8, !tbaa !206
  store i32 %i.d, ptr %i.b, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !168
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !165 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.l, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.n = load i32, ptr %.034, align 8, !tbaa !206
  store i32 %i.n, ptr %i.l, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !165
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !207
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !168  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !165 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %4 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %5 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %6 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %7 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %8 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %9 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr46.i18 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr46.i18, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.ce, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr46.i21.lcssa = phi i64 [ %.fr46.i18, %.lr.ph ], [ %.fr46.i, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr46.i21.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i ; 3 uses
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.416.0.copyload.i.i = load i64, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !39
  %i.u = load <2 x i64>, ptr %i.t, align 8
  %.sroa.517.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.517.0.copyload.i.i = load i64, ptr %.sroa.517.0..sroa.0.0..sroa_idx.i.i, align 8
  %i.v = icmp slt i64 %.07.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.039.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.039.i.i.i, 1                   ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11
  %i.af = icmp ult i64 %i.ac, %i.ae
  %spec.select.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %.039.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, ptr noundef nonnull align 8 dereferenceable(20) %i.ag, i64 20, i1 false), !tbaa.struct !44
  %i.ai = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !211

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %i.r, i64 20, i1 false), !tbaa.struct !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = icmp ult i64 %i.an, %.sroa.416.0.copyload.i.i
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(20) %i.al, i64 20, i1 false), !tbaa.struct !44
  %i.aq = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !212

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.517.0.copyload.i.i to i32
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store <2 x i64> %i.u, ptr %i.ar, align 8
  %.sroa.5.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i.i, ptr %.sroa.5.0..sroa_idx37.i.i.i, align 8, !tbaa !37
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.as = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !213

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.at, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  %.sroa.48.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !39
  %i.au = load <2 x i64>, ptr %i.at, align 8
  %.sroa.59.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.59.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa.0.0..sroa_idx.i.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.at, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !44
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = sdiv exact i64 %i.aw, 24                ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = sdiv i64 %i.ay, 2
  %i.ba = icmp sgt i64 %i.aw, 48
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.039.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bb = shl i64 %.039.i.i.i.i, 1                ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [24 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = icmp ult i64 %i.bh, %i.bj
  %spec.select.i.i.i.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.039.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bm, ptr noundef nonnull align 8 dereferenceable(20) %i.bl, i64 20, i1 false), !tbaa.struct !44
  %i.bn = icmp slt i64 %spec.select.i.i.i.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !211

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bo = and i64 %i.ax, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i.i, %i.br
  br i1 %i.bs, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bw, ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i64 20, i1 false), !tbaa.struct !44
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bu, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1011.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1011.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i1011.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = icmp ult i64 %i.bz, %.sroa.48.0.copyload.i.i.i
  br i1 %i.ca, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = getelementptr inbounds [24 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cb, ptr noundef nonnull align 8 dereferenceable(20) %i.bx, i64 20, i1 false), !tbaa.struct !44
  %.not12.i.i.i = icmp eq i64 %.0919.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !212

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.59.0.copyload.i.i.i to i32
  %i.cc = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <2 x i64> %i.au, ptr %i.cc, align 8
  %.sroa.5.0..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i.i.i, ptr %.sroa.5.0..sroa_idx37.i.i.i.i, align 8, !tbaa !37
  %i.cd = icmp sgt i64 %i.aw, 24
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !214

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1939 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02038 = phi i64 [ %i.ce, %bb.b ], [ %2, %.lr.ph ]
  %.fr46.i2137 = phi i64 [ %.fr46.i, %bb.b ], [ %.fr46.i18, %.lr.ph ]
  %i.ce = add nsw i64 %.02038, -1                 ; 3 uses
  %i.cf = udiv i64 %.fr46.i2137, 48
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cf ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %storemerge1939, i64 -24 ; 4 uses
  %i.ci = load i64, ptr %i.f, align 8, !tbaa !11  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %storemerge1939, i64 -16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11 ; 4 uses
  br i1 %i.cl, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %i.co = icmp ult i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.cg, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cg, ptr noundef nonnull align 8 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cp = icmp ult i64 %i.ci, %i.cn
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.ch, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ch, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph40
  %i.cq = icmp ult i64 %i.ci, %i.cn
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cr = icmp ult i64 %i.ck, %i.cn
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.ch, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ch, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.cg, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cg, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cw, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1939, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.cw, %bb.t ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11
  %i.cv = icmp ult i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24 ; 2 uses
  br i1 %i.cv, label %bb.t, label %.preheader.i.i, !llvm.loop !215

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !11
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %.preheader.i.i, label %bb.u, !llvm.loop !216

bb.u:                                             ; preds = %.preheader.i.i
  %i.da = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.da, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.1.i.i, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !217

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1939, i64 noundef %i.ce)
  %i.db = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dc = sub i64 %i.db, %i.a
  %.fr46.i = freeze i64 %i.dc                     ; 3 uses
  %i.dd = icmp sgt i64 %.fr46.i, 384
  br i1 %i.dd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !210

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %3 = alloca %"struct.lldb_private::ArmUnwindInfo::ArmExidxEntry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !11
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.ptr, i64 24, i1 false), !tbaa.struct !44
  %i.j = icmp samesign ugt i64 %.sroa.0.018.i.idx, 24
  br i1 %i.j, label %bb.d, label %bb.e, !prof !218

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.k, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !44
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.l = load i64, ptr %.sroa.0.018.i.ptr, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  %i.m = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = icmp ult i64 %i.g, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.07.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.07.010.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false), !tbaa.struct !44
  %i.q = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = icmp ult i64 %i.g, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !219

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i64 %i.m to i32
  store i64 %i.l, ptr %.sroa.07.0.lcssa.i.i, align 8
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 16
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !220

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not4.i = icmp eq ptr %i.t, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.sroa.0.05.i = phi ptr [ %i.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.t, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 7 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39 ; 2 uses
  %i.u = load <2 x i64>, ptr %.sroa.0.05.i, align 8
  %.sroa.5.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %i.v = load i64, ptr %.sroa.5.0..sroa_idx.i.i7, align 8
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i14
  %.sroa.07.010.i.i15 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i15, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.07.010.i.i15, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i16, i64 20, i1 false), !tbaa.struct !44
  %i.z = getelementptr inbounds i8, ptr %.sroa.07.010.i.i15, i64 -40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !219

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i14, %.lr.ph.i6
  %.sroa.07.0.lcssa.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i10 = trunc i64 %i.v to i32
  store <2 x i64> %i.u, ptr %.sroa.07.0.lcssa.i.i9, align 8
  %.sroa.5.0..sroa_idx6.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i9, i64 16
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i10, ptr %.sroa.5.0..sroa_idx6.i.i12, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ac, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !221

bb.h:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %0, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.015.i18 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not16.i19 = icmp eq ptr %.sroa.0.015.i18, %1
  br i1 %.not16.i19, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.preheader.i17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i20
  %.sroa.0.018.i21 = phi ptr [ %.sroa.0.015.i18, %.lr.ph.i20 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn17.i22 = phi ptr [ %0, %.lr.ph.i20 ], [ %.sroa.0.018.i21, %bb.o ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pn17.i22, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 4 uses
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i21, i64 24, i1 false), !tbaa.struct !44
  %i.aj = ptrtoint ptr %.sroa.0.018.i21 to i64
  %i.ak = sub i64 %i.aj, %i.b                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %bb.k, label %bb.l, !prof !218

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pn17.i22, i64 48
  %.neg23.i35 = udiv exact i64 %i.ak, 24
  %.neg23.neg.i36 = sub nsw i64 0, %.neg23.i35
  %i.an = getelementptr inbounds [24 x i8], ptr %i.am, i64 %.neg23.neg.i36
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ak, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.ak, 24
  br i1 %i.ao, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn17.i22, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !44
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %.sroa.0.018.i21, align 8
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn17.i22, i64 40
  %i.ar = load i64, ptr %.sroa.5.0..sroa_idx.i.i23, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.pn17.i22, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = icmp ult i64 %i.ag, %i.at
  br i1 %i.au, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %.sroa.07.010.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.i.i31 ], [ %.sroa.0.018.i21, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i32, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.07.010.i.i32, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i33, i64 20, i1 false), !tbaa.struct !44
  %i.av = getelementptr inbounds i8, ptr %.sroa.07.010.i.i32, i64 -40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = icmp ult i64 %i.ag, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, !llvm.loop !219

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.07.0.lcssa.i.i25 = phi ptr [ %.sroa.0.018.i21, %bb.n ], [ %.sroa.0.0.i.i33, %.lr.ph.i.i31 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i26 = trunc i64 %i.ar to i32
  store i64 %i.aq, ptr %.sroa.07.0.lcssa.i.i25, align 8
  %.sroa.4.0..sroa_idx4.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i25, i64 8
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx4.i.i27, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx6.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i25, i64 16
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i26, ptr %.sroa.5.0..sroa_idx6.i.i28, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i21, i64 24 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !220

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private13ArmUnwindInfo13ArmExidxEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN12lldb_private13ArmUnwindInfo13ArmExidxEntryE", !5, i64 0, !10, i64 8, !5, i64 16}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !5, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN12lldb_private13ArmUnwindInfoE", !17, i64 0, !18, i64 8, !18, i64 24, !24, i64 40, !24, i64 88, !29, i64 136}
!17 = !{!"_ZTSN4lldb9ByteOrderE", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN12lldb_private7SectionEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !22, i64 8}
!20 = !{!"p1 _ZTSN12lldb_private7SectionE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!24 = !{!"_ZTSN12lldb_private13DataExtractorE", !25, i64 8, !25, i64 16, !17, i64 24, !5, i64 28, !26, i64 32}
!25 = !{!"p1 omnipotent char", !21, i64 0}
!26 = !{!"_ZTSSt10shared_ptrIN12lldb_private10DataBufferEE", !27, i64 0}
!27 = !{!"_ZTSSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSN12lldb_private10DataBufferE", !21, i64 0}
!29 = !{!"_ZTSSt6vectorIN12lldb_private13ArmUnwindInfo13ArmExidxEntryESaIS2_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN12lldb_private13ArmUnwindInfo13ArmExidxEntryESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN12lldb_private13ArmUnwindInfo13ArmExidxEntryESaIS2_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN12lldb_private13ArmUnwindInfo13ArmExidxEntryESaIS2_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSN12lldb_private13ArmUnwindInfo13ArmExidxEntryE", !21, i64 0}
!34 = !{!22, !23, i64 0}
!35 = !{!21, !21, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{!5, !5, i64 0}
!38 = !{!19, !20, i64 0}
!39 = !{!10, !10, i64 0}
!40 = distinct !{null}
!41 = !{!32, !33, i64 8}
!42 = !{!32, !33, i64 16}
!43 = !{!32, !33, i64 0}
!44 = !{i64 0, i64 4, !37, i64 8, i64 8, !39, i64 16, i64 4, !37}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"_ZSt19__relocate_object_aIN12lldb_private13ArmUnwindInfo13ArmExidxEntryES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!47 = distinct !{!47, !"_ZSt19__relocate_object_aIN12lldb_private13ArmUnwindInfo13ArmExidxEntryES2_SaIS2_EEvPT_PT0_RT1_"}
!48 = distinct !{!48, !47, !"_ZSt19__relocate_object_aIN12lldb_private13ArmUnwindInfo13ArmExidxEntryES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!33, !33, i64 0}
!53 = !{!54, !5, i64 8}
!54 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!55 = !{!54, !5, i64 12}
!56 = distinct !{null, null, null}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !6, i64 0}
!60 = distinct !{!60, !50}
!61 = !{!24, !25, i64 8}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSNSt12_Vector_baseISt4pairIjiESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSSt4pairIjiE", !21, i64 0}
!65 = !{!63, !64, i64 16}
!66 = !{!67, !5, i64 0}
!67 = !{!"_ZTSSt4pairIjiE", !5, i64 0, !5, i64 4}
!68 = !{!67, !5, i64 4}
!69 = !{!63, !64, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!75 = distinct !{!75, !50, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !50, !76}
!79 = distinct !{!79, !50}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!82 = distinct !{!82, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!85 = distinct !{!85, !50, !76, !77}
!86 = distinct !{!86, !50, !76}
!87 = distinct !{!87, !50}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!90 = distinct !{!90, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !50, !76, !77}
!94 = distinct !{!94, !50, !76}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!97 = distinct !{!97, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!100 = distinct !{!100, !50, !76, !77}
!101 = distinct !{!101, !50, !76}
!102 = distinct !{!102, !50}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!108 = distinct !{!108, !50, !76, !77}
!109 = distinct !{!109, !50, !76}
!110 = !{!111}
!111 = distinct !{!111, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It1"}
!112 = !{!113}
!113 = distinct !{!113, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It1"}
!114 = distinct !{!114, !50, !76, !77}
!115 = distinct !{!115, !50, !76}
!116 = !{!117}
!117 = distinct !{!117, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It2"}
!118 = !{!119}
!119 = distinct !{!119, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It2"}
!120 = distinct !{!120, !50, !76, !77}
!121 = distinct !{!121, !50, !76}
!122 = !{!123}
!123 = distinct !{!123, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It3"}
!124 = !{!125}
!125 = distinct !{!125, !105, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It3"}
!126 = distinct !{!126, !50, !76, !77}
!127 = distinct !{!127, !50, !76}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!130 = distinct !{!130, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !50, !76, !77}
!134 = distinct !{!134, !50, !76}
!135 = distinct !{!135, !50}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aISt4pairIjiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!141 = distinct !{!141, !50, !76, !77}
!142 = distinct !{!142, !50, !76}
end_hunk_0
