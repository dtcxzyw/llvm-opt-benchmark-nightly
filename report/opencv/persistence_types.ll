Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence_types?download=true
inline.NumInlined: 558
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2cv8internal14VecWriterProxyINS_6DMatchELi0EEclERKSt6vectorIS2_SaIS2_EE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.j, align 8, !tbaa !24
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.val15.i.i = load i32, ptr %i.n, align 4, !tbaa !26
  invoke void @_ZN2cv11writeScalarERNS_11FileStorageEi(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i32 noundef %.val15.i.i)
          to label %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit.i.i unwind label %bb.e

_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val14.i.i = load i32, ptr %i.s, align 4, !tbaa !26
  invoke void @_ZN2cv11writeScalarERNS_11FileStorageEi(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i32 noundef %.val14.i.i)
          to label %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit16.i.i unwind label %bb.e

_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit16.i.i: ; preds = %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val13.i.i = load i32, ptr %i.t, align 4, !tbaa !26
  invoke void @_ZN2cv11writeScalarERNS_11FileStorageEi(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i32 noundef %.val13.i.i)
          to label %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit17.i.i unwind label %bb.e

_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit17.i.i: ; preds = %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit16.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.val.i.i = load float, ptr %i.u, align 4, !tbaa !37
  invoke void @_ZN2cv11writeScalarERNS_11FileStorageEf(ptr noundef nonnull align 8 dereferenceable(64) %i.l, float noundef %.val.i.i)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.j, align 8, !tbaa !24
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.body.i

bb.e:                                             ; preds = %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit17.i.i, %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit16.i.i, %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv8internal18WriteStructContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #13
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.ab = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.f:                                             ; preds = %_ZN2cvL5writeIiEEvRNS_11FileStorageERKT_.exit17.i.i
  call void @_ZN2cv8internal18WriteStructContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.ad = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZN2cvL5writeERNS_11FileStorageERKNS_6DMatchE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.h, align 8, !tbaa !24
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #14
  br label %_ZN2cvL5writeERNS_11FileStorageERKNS_6DMatchE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %.body.i
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !24
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ai) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.i.i

_ZN2cvL5writeERNS_11FileStorageERKNS_6DMatchE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.aj = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !141
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph.preheader, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_T0_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph36
  %i.g = icmp eq i64 %i.t, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph36, !llvm.loop !142

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.h = add nsw i64 %.lcssa, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.09.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, ptr noundef %i.k, i32 %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.l = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.b, !llvm.loop !143

.lr.ph.i9.i:                                      ; preds = %bb.b, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %i.o, ptr %i.m, align 8, !tbaa !35
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, ptr noundef %i.n, i32 %3)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_T0_.exit, !llvm.loop !144

.lr.ph36:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge2235 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02334 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.02334, -1                  ; 3 uses
  %i.u = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_T0_(ptr %0, ptr %storemerge2235, i32 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_T1_(ptr %i.u, ptr %storemerge2235, i64 noundef %i.t, i32 %3)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_T0_.exit, !llvm.loop !142

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_T0_.exit: ; preds = %.lr.ph36, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.m

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = icmp sgt i32 %2, 0
  %wide.trip.count.i.i.i = zext nneg i32 %2 to i64 ; 3 uses
  br i1 %i.f, label %.lr.ph.i.i.us.i.preheader, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit

.lr.ph.i.i.us.i.preheader:                        ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i
  %.sroa.0.031.us.i.idx = phi i64 [ %.sroa.0.031.us.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i ], [ 8, %.lr.ph.i.i.us.i.preheader ] ; 4 uses
  %.pn30.us.i = phi ptr [ %.sroa.0.031.us.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i ], [ %0, %.lr.ph.i.i.us.i.preheader ]
  %.sroa.0.031.us.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.031.us.i.idx ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.031.us.i.ptr, align 8, !tbaa !35 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.us.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.us.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26   ; 2 uses
  %.not.i.i.us.i = icmp eq i32 %i.l, %i.n
  br i1 %.not.i.i.us.i, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.us.i, label %.lr.ph.i.i.us.i.us.i.preheader, label %bb.b, !llvm.loop !2

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i: ; preds = %bb.b
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.us.i.us.i.preheader

.lr.ph.i.i.us.i.us.i.preheader:                   ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i
  br label %.lr.ph.i.i.us.i.us.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i
  %i.p = icmp samesign ugt i64 %.sroa.0.031.us.i.idx, 8
  br i1 %i.p, label %bb.f, label %bb.e, !prof !147

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pn30.us.i, i64 8
  store ptr %i.i, ptr %i.q, align 8, !tbaa !35
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.031.us.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i

.lr.ph.i.i.us.i.us.i:                             ; preds = %.lr.ph.i.i.us.i.us.i.preheader, %bb.i
  %.sroa.05.015.us.i.us.i = phi ptr [ %.sroa.0.016.us.i.us.i, %bb.i ], [ %.sroa.0.031.us.i.ptr, %.lr.ph.i.i.us.i.us.i.preheader ] ; 4 uses
  %.sroa.0.016.us.i.us.i = getelementptr inbounds i8, ptr %.sroa.05.015.us.i.us.i, i64 -8 ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.016.us.i.us.i, align 8, !tbaa !35 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.us.i.us.i
  %indvars.iv.i.i.us.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i ], [ %indvars.iv.next.i.i.us.i.us.i, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.us.i.us.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26   ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.us.i.us.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26   ; 2 uses
  %.not.i.i.us.i.us.i = icmp eq i32 %i.u, %i.w
  br i1 %.not.i.i.us.i.us.i, label %bb.h, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.us.i.us.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i, label %bb.g, !llvm.loop !2

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i: ; preds = %bb.g
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i
  store ptr %i.r, ptr %.sroa.05.015.us.i.us.i, align 8, !tbaa !35
  br label %.lr.ph.i.i.us.i.us.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i, %bb.h, %bb.f, %bb.e
  %.sroa.05.015.us.i.us58.sink.i = phi ptr [ %.sroa.05.015.us.i.us.i, %bb.h ], [ %0, %bb.f ], [ %0, %bb.e ], [ %.sroa.05.015.us.i.us.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i ]
  store ptr %i.g, ptr %.sroa.05.015.us.i.us58.sink.i, align 8, !tbaa !35
  %.sroa.0.031.us.i.add = add nuw nsw i64 %.sroa.0.031.us.i.idx, 8 ; 2 uses
  %.not.us.i = icmp eq i64 %.sroa.0.031.us.i.add, 128
  br i1 %.not.us.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, label %.lr.ph.i.i.us.i, !llvm.loop !145

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i
  %.not12.i = icmp eq ptr %i.e, %1
  br i1 %.not12.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, label %.lr.ph.i.i.lr.ph.i.us.i13

.lr.ph.i.i.lr.ph.i.us.i13:                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_.exit.us.i
  %.sroa.0.013.us.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_.exit.us.i ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit ] ; 3 uses
  %i.y = load ptr, ptr %.sroa.0.013.us.i, align 8, !tbaa !35 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %.lr.ph.i.i.us.i.us.i14

.lr.ph.i.i.us.i.us.i14:                           ; preds = %bb.l, %.lr.ph.i.i.lr.ph.i.us.i13
  %.sroa.05.015.us.i.us.i15 = phi ptr [ %.sroa.0.013.us.i, %.lr.ph.i.i.lr.ph.i.us.i13 ], [ %.sroa.0.016.us.i.us.i16, %bb.l ] ; 3 uses
  %.sroa.0.016.us.i.us.i16 = getelementptr inbounds i8, ptr %.sroa.05.015.us.i.us.i15, i64 -8 ; 2 uses
  %i.aa = load ptr, ptr %.sroa.0.016.us.i.us.i16, align 8, !tbaa !35 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.us.i.us.i14
  %indvars.iv.i.i.us.i.us.i17 = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i14 ], [ %indvars.iv.next.i.i.us.i.us.i21, %bb.k ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i.us.i.us.i17
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i.us.i.us.i17
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.us.i.us.i18 = icmp eq i32 %i.ad, %i.af
  br i1 %.not.i.i.us.i.us.i18, label %bb.k, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i19

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.us.i.us.i21 = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i17, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i22 = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i21, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.us.i.us.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_.exit.us.i, label %bb.j, !llvm.loop !2

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i19: ; preds = %bb.j
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.l, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_.exit.us.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i19
  store ptr %i.aa, ptr %.sroa.05.015.us.i.us.i15, align 8, !tbaa !35
  br label %.lr.ph.i.i.us.i.us.i14

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_.exit.us.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i19, %bb.k
  store ptr %i.y, ptr %.sroa.05.015.us.i.us.i15, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.013.us.i, i64 8 ; 2 uses
  %.not.us.i20 = icmp eq ptr %i.ah, %1
  br i1 %.not.us.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, label %.lr.ph.i.i.lr.ph.i.us.i13, !llvm.loop !146

bb.m:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.m
  %.sroa.0.028.i24 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not29.i25 = icmp eq ptr %.sroa.0.028.i24, %1
  br i1 %.not29.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i23
  %i.aj = icmp sgt i32 %2, 0
  %wide.trip.count.i.i.i27 = zext nneg i32 %2 to i64 ; 2 uses
  br i1 %i.aj, label %.lr.ph.i.i.us.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit

.lr.ph.i.i.us.i28:                                ; preds = %.lr.ph.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41
  %.sroa.0.031.us.i29 = phi ptr [ %.sroa.0.0.us.i43, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41 ], [ %.sroa.0.028.i24, %.lr.ph.i26 ] ; 5 uses
  %.pn30.us.i30 = phi ptr [ %.sroa.0.031.us.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41 ], [ %0, %.lr.ph.i26 ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.031.us.i29, align 8, !tbaa !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i28
  %indvars.iv.i.i.us.i31 = phi i64 [ 0, %.lr.ph.i.i.us.i28 ], [ %indvars.iv.next.i.i.us.i47, %bb.o ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i.us.i31
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !26 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i.us.i31
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.us.i32 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not.i.i.us.i32, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i33

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.i.us.i47 = add nuw nsw i64 %indvars.iv.i.i.us.i31, 1 ; 2 uses
  %exitcond.not.i.i.us.i48 = icmp eq i64 %indvars.iv.next.i.i.us.i47, %wide.trip.count.i.i.i27
  br i1 %exitcond.not.i.i.us.i48, label %.lr.ph.i.i.us.i.us.i35.preheader, label %bb.n, !llvm.loop !2

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i33: ; preds = %bb.n
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.p, label %.lr.ph.i.i.us.i.us.i35.preheader

.lr.ph.i.i.us.i.us.i35.preheader:                 ; preds = %bb.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i33
  br label %.lr.ph.i.i.us.i.us.i35

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.i33
  %i.at = ptrtoint ptr %.sroa.0.031.us.i29 to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %bb.q, !prof !147

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq i64 %i.au, 8
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.us.i30, i64 8
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !35
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41

bb.s:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.us.i30, i64 16
  %i.ba = sub nsw i64 0, %i.av
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41

.lr.ph.i.i.us.i.us.i35:                           ; preds = %.lr.ph.i.i.us.i.us.i35.preheader, %bb.v
  %.sroa.05.015.us.i.us.i36 = phi ptr [ %.sroa.0.016.us.i.us.i37, %bb.v ], [ %.sroa.0.031.us.i29, %.lr.ph.i.i.us.i.us.i35.preheader ] ; 4 uses
  %.sroa.0.016.us.i.us.i37 = getelementptr inbounds i8, ptr %.sroa.05.015.us.i.us.i36, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.016.us.i.us.i37, align 8, !tbaa !35 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.us.i.us.i35
  %indvars.iv.i.i.us.i.us.i38 = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i35 ], [ %indvars.iv.next.i.i.us.i.us.i45, %bb.u ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i.us.i.us.i38
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.i.us.i.us.i38
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.us.i.us.i39 = icmp eq i32 %i.bf, %i.bh
  br i1 %.not.i.i.us.i.us.i39, label %bb.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i40

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.us.i.us.i45 = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i38, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i46 = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i45, %wide.trip.count.i.i.i27
  br i1 %exitcond.not.i.i.us.i.us.i46, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41, label %bb.t, !llvm.loop !2

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i40: ; preds = %bb.t
  %i.bi = icmp slt i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.v, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i40
  store ptr %i.bc, ptr %.sroa.05.015.us.i.us.i36, align 8, !tbaa !35
  br label %.lr.ph.i.i.us.i.us.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i40, %bb.u, %bb.s, %bb.r, %bb.q
  %.sroa.05.015.us.i.us58.sink.i42 = phi ptr [ %0, %bb.q ], [ %0, %bb.s ], [ %0, %bb.r ], [ %.sroa.05.015.us.i.us.i36, %bb.u ], [ %.sroa.05.015.us.i.us.i36, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN2cv13SparseNodeCmpEEclIPKNS2_9SparseMat4NodeENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.i.us.i40 ]
  store ptr %i.ak, ptr %.sroa.05.015.us.i.us58.sink.i42, align 8, !tbaa !35
  %.sroa.0.0.us.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i29, i64 8 ; 2 uses
  %.not.us.i44 = icmp eq ptr %.sroa.0.0.us.i43, %1
  br i1 %.not.us.i44, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, label %.lr.ph.i.i.us.i28, !llvm.loop !145

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.us.i41, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_.exit.us.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_T0_.exit, %.lr.ph.i, %.lr.ph.i26, %.preheader.i23, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = icmp sgt i32 %2, 0
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !35   ; 5 uses
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread: ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %i.l, ptr %0, align 8, !tbaa !35
  store ptr %i.m, ptr %i.f, align 8, !tbaa !35
  %i.n = icmp ult ptr %i.g, %i.h
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_SG_T0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %2 to i64 ; 7 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i42.i, label %bb.c, !llvm.loop !2

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i

end_hunk_0
