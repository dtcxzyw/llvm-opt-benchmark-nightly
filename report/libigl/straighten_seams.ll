Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/straighten_seams?download=true
inline.NumInlined: 5387
inline.NumDeleted: 2526
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN3igl16straighten_seamsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi1ELin1ELin1EEES4_dS4_S5_S4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EET3_RNS1_15PlainObjectBaseIT4_EERNSO_IT5_EERNSO_IT6_EE:bb.a
  %i.edt = load ptr, ptr %72, align 8, !tbaa !52
  call void @free(ptr noundef %i.edt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %70) #23
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %.body829
  %.pn450.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn450.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ob ], [ %i.cjm, %.body829 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %.body820, %bb.ha, %bb.eo
  %.sroa.0.0 = phi ptr [ %i.boj, %bb.ha ], [ %i.boj, %.body820 ], [ %i.boj, %bb.oc ], [ %.sroa.0.2, %bb.eo ]
  %.pn487 = phi { ptr, i32 } [ %.pn481.pn.pn, %bb.ha ], [ %.pn367.pn.pn.pn, %.body820 ], [ %.pn450.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.oc ], [ %.pn359.pn.pn.pn.pn, %bb.eo ]
  call void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %53) #23
  br label %.body773

.body773:                                         ; preds = %bb.dp, %bb.od
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.od ], [ %.sroa.0.2, %bb.dp ]
  %.pn487.pn = phi { ptr, i32 } [ %.pn487, %bb.od ], [ %i.blk, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @free(ptr noundef %.sroa.0.1) #23
  br label %.body754

.body754:                                         ; preds = %bb.dn, %.body773, %bb.cc
  %.pn491.pn = phi { ptr, i32 } [ %i.bgo, %bb.cc ], [ %i.ble, %bb.dn ], [ %.pn487.pn, %.body773 ]
  %i.edu = load ptr, ptr %52, align 8, !tbaa !56
  call void @free(ptr noundef %i.edu) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @free(ptr noundef %.sroa.01268.01629) #23
  br label %bb.oe

bb.oe:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit765, %.body754, %bb.dc
  %.pn491.pn.pn.pn = phi { ptr, i32 } [ %.pn348, %bb.dc ], [ %.pn491.pn, %.body754 ], [ %.pn350.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit765 ]
  %i.edv = load ptr, ptr %48, align 8, !tbaa !52
  call void @free(ptr noundef %i.edv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.cz
  %.pn491.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn, %bb.oe ], [ %i.bid, %bb.cz ]
  %i.edw = load ptr, ptr %47, align 8, !tbaa !52
  call void @free(ptr noundef %i.edw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  %i.edx = load ptr, ptr %46, align 8, !tbaa !52
  call void @free(ptr noundef %i.edx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.cy
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn, %bb.of ], [ %i.bic, %bb.cy ]
  %i.edy = load ptr, ptr %45, align 8, !tbaa !52
  call void @free(ptr noundef %i.edy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.cx
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn, %bb.og ], [ %i.bib, %bb.cx ]
  call void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %43) #23
  br label %.body735

.body735:                                         ; preds = %bb.bk, %bb.oh
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.oh ], [ %i.bbv, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  br label %bb.oi

bb.oi:                                            ; preds = %.body735, %.body729
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body735 ], [ %.pn345.pn, %.body729 ]
  call void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %38) #23
  br label %.body727

.body727:                                         ; preds = %bb.as, %bb.oi
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.oi ], [ %i.ayq, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %i.edz = load ptr, ptr %36, align 8, !tbaa !52
  call void @free(ptr noundef %i.edz) #23
  br label %bb.oj

bb.oj:                                            ; preds = %.body727, %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal11SingleRangeEED2Ev.exit761
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body727 ], [ %.pn341, %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal11SingleRangeEED2Ev.exit761 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEESt6vectorIiSaIiEENS_8internal8AllRangeILi2EEEED2Ev.exit759
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.oj ], [ %.pn339, %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEESt6vectorIiSaIiEENS_8internal8AllRangeILi2EEEED2Ev.exit759 ]
  %i.eea = load ptr, ptr %33, align 8, !tbaa !24
  call void @free(ptr noundef %i.eea) #23
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEESt6vectorIiSaIiEENS_8internal8AllRangeILi2EEEED2Ev.exit757
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ok ], [ %.pn337, %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEESt6vectorIiSaIiEENS_8internal8AllRangeILi2EEEED2Ev.exit757 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.eeb = load ptr, ptr %32, align 8, !tbaa !64  ; 3 uses
  %.not.i.i.i1008 = icmp eq ptr %i.eeb, null
  br i1 %.not.i.i.i1008, label %_ZNSt6vectorIiSaIiEED2Ev.exit1010, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.eec = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.eed = load ptr, ptr %i.eec, align 8, !tbaa !66
  %i.eee = ptrtoint ptr %i.eed to i64
  %i.eef = ptrtoint ptr %i.eeb to i64
  %i.eeg = sub i64 %i.eee, %i.eef
  call void @_ZdlPvm(ptr noundef nonnull %i.eeb, i64 noundef %i.eeg) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1010

_ZNSt6vectorIiSaIiEED2Ev.exit1010:                ; preds = %bb.om, %bb.ol, %bb.cj
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bhb, %bb.cj ], [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ol ], [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.om ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %.body707

.body707:                                         ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEED2Ev.exit1010
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit1010 ], [ %i.aqf, %bb.ah ]
  %i.eeh = load ptr, ptr %31, align 8, !tbaa !56
  call void @free(ptr noundef %i.eeh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.body695

.body695:                                         ; preds = %bb.ac, %.body707
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body707 ], [ %i.anv, %bb.ac ]
  %i.eei = load ptr, ptr %30, align 8, !tbaa !56
  call void @free(ptr noundef %i.eei) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.on

bb.on:                                            ; preds = %.body695, %bb.ci
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body695 ], [ %i.bgy, %bb.ci ]
  %i.eej = load ptr, ptr %27, align 8, !tbaa !52
  call void @free(ptr noundef %i.eej) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.eek = load ptr, ptr %25, align 8, !tbaa !24
  call void @free(ptr noundef %i.eek) #23
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %.body595
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.on ], [ %.pn323.pn.pn.pn.pn.pn, %.body595 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @free(ptr noundef %.0.i.i1624) #23
  br label %bb.op

bb.op:                                            ; preds = %.body, %bb.oo, %bb.cd
  %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bgr, %bb.cd ], [ %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.oo ], [ %.pn.pn.pn.pn.pn.pn, %.body ]
  %i.eel = load ptr, ptr %23, align 8, !tbaa !474
  call void @free(ptr noundef %i.eel) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.eem = load ptr, ptr %22, align 8, !tbaa !474
  call void @free(ptr noundef %i.eem) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.een = load ptr, ptr %21, align 8, !tbaa !56
  call void @free(ptr noundef %i.een) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  resume { ptr, i32 } %.pn491.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl11on_boundaryIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS4_IbLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl16unique_simplicesIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63, !noalias !531 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !64, !noalias !531 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !124

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25, !noalias !531
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27, !noalias !531
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !125, !noalias !531 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !125, !noalias !531
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 9 uses
  %i.l = icmp sgt i64 %i.k, 4                     ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !126

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !531
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.i, align 4, !tbaa !43, !noalias !531
  store i32 %i.o, ptr %i.j, align 4, !tbaa !43, !noalias !531
  store ptr %1, ptr %0, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !66
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !127

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.u = phi ptr [ %i.p, %.thread23 ], [ %i.n, %bb.g ]
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.v, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !66
  br i1 %i.l, label %bb.h, label %bb.i, !prof !128

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.z = icmp eq i64 %i.k, 4
  br i1 %i.z, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !43
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !43
  store ptr %i.x, ptr %i.w, align 8, !tbaa !63
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ab = phi ptr [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.r, %.thread ]
  %i.ac = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.q, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEEEENS_8internal9enable_ifIXaantLNS3_Ut_E0Entooeqsr8internal21get_compile_time_incrINS3_7IvcTypeIT_E4typeEEE5valueLi1Esr8internal19is_valid_index_typeISC_EE5valueENS_11IndexedViewIS2_SE_NS8_11SingleRangeEEEE4typeERKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.56") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63, !noalias !534 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !64, !noalias !534 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !124

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25, !noalias !534
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27, !noalias !534
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !125, !noalias !534 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !125, !noalias !534
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 9 uses
  %i.l = icmp sgt i64 %i.k, 4                     ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !126

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !534
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread21, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit: ; preds = %bb.d, %bb.e
  store ptr %1, ptr %0, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i3, label %.thread, label %bb.f

.thread21:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.i, align 4, !tbaa !43, !noalias !534
  store i32 %i.o, ptr %i.j, align 4, !tbaa !43, !noalias !534
  store ptr %1, ptr %0, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !66
  br label %bb.i

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit
  %i.t = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i5, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4, !prof !127

.noexc.i.i.i5:                                    ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i5
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4: ; preds = %.thread21, %bb.f
  %i.u = phi ptr [ %i.p, %.thread21 ], [ %i.n, %bb.f ]
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27
          to label %.noexc6 unwind label %bb.k    ; 4 uses

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4
  store ptr %i.v, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !66
  br i1 %i.l, label %bb.g, label %bb.h, !prof !128

bb.g:                                             ; preds = %.noexc6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc6
  %i.z = icmp eq i64 %i.k, 4
  br i1 %i.z, label %.thread15, label %bb.i

.thread15:                                        ; preds = %bb.h
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !43
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !43
  store ptr %i.x, ptr %i.w, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !98
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.r, %.thread ]
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ %i.q, %.thread ]
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ae, align 8, !tbaa !98
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread15, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4, %.noexc.i.i.i5
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i7 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.af
}

declare void @_ZN3igl6sparseIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS1_14CwiseNullaryOpINS1_8internal18scalar_constant_opIbEENS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEEbEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(10), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.30") align 8 %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.d

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef 1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !69 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.e = icmp sgt i64 %.pr.i.i.i.i.i.i, 0
  br i1 %i.e, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.c
  %min.iters.check162 = icmp ult i64 %.pr.i.i.i.i.i.i, 8
  br i1 %min.iters.check162, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174, label %vector.ph163

vector.ph163:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader
  %n.vec164 = and i64 %.pr.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body165 ] ; 2 uses
  %vec.ind167 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph163 ], [ %vec.ind.next170, %vector.body165 ] ; 3 uses
  %step.add168 = add <4 x i32> %vec.ind167, splat (i32 4)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index166 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind167, ptr %i.f, align 4, !tbaa !43
  store <4 x i32> %step.add168, ptr %i.g, align 4, !tbaa !43
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %vec.ind.next170 = add <4 x i32> %vec.ind167, splat (i32 8)
  %i.h = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.h, label %middle.block171, label %vector.body165, !llvm.loop !535

middle.block171:                                  ; preds = %vector.body165
  %cmp.n172 = icmp eq i64 %.pr.i.i.i.i.i.i, %n.vec164
  br i1 %cmp.n172, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, %middle.block171
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader ], [ %n.vec164, %middle.block171 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.k, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174 ] ; 3 uses
  %i.i = trunc i64 %.05.i.i.i.i.i.i.i to i32
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.05.i.i.i.i.i.i.i
  store i32 %i.i, ptr %i.j, align 4, !tbaa !43
  %i.k = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.k, %.pr.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, !llvm.loop !536

common.resume:                                    ; preds = %bb.m, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.bu, %bb.i ], [ %i.du, %bb.m ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.l) #23
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.n = load i32, ptr %3, align 4, !tbaa !43     ; 6 uses
  %i.o = load i32, ptr %2, align 4, !tbaa !43     ; 8 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i32 %i.o, %i.n                   ; 4 uses
  %i.r = icmp sgt i64 %1, 1
  br i1 %i.r, label %bb.g, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.t = add nuw nsw i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = icmp samesign ugt i64 %1, %i.u
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit: ; preds = %bb.f, %bb.g
  %i.w = phi i1 [ false, %bb.f ], [ %i.v, %bb.g ]
  %i.x = icmp eq i64 %1, 1
  %i.y = select i1 %i.x, i32 %i.q, i32 0          ; 6 uses
  %i.z = sub nsw i32 %i.q, %i.y                   ; 3 uses
  %.not.i.i.i13 = icmp slt i32 %i.q, %i.y
  %i.aa = sub nsw i64 0, %1
  %i.ab = select i1 %.not.i.i.i13, i64 %i.aa, i64 %1
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.z, %i.ac
  %i.ae = tail call noundef i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.af = tail call i64 @llvm.smax.i64(i64 %1, i64 2)
  %i.ag = trunc i64 %i.af to i32
  %i.ah = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.ag, i64 1
  %i.aj = add <2 x i32> %i.ai, <i32 1, i32 -1>
  %i.ak = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.z, i64 1
  %i.am = sdiv <2 x i32> %i.al, %i.aj             ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !69
  %.not.i.i.i.i.i.i.i17 = icmp eq i64 %i.ao, %1
  br i1 %.not.i.i.i.i.i.i.i17, label %bb.h, label %thread-pre-split.i.i.i.i.i.i18

thread-pre-split.i.i.i.i.i.i18:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %.noexc.i.i19 unwind label %bb.i

.noexc.i.i19:                                     ; preds = %thread-pre-split.i.i.i.i.i.i18
  %.pr.i.i.i.i.i.i20 = load i64, ptr %i.an, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %.noexc.i.i19, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.ap = phi i64 [ %.pr.i.i.i.i.i.i20, %.noexc.i.i19 ], [ %1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 9 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !52    ; 4 uses
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.h
  br i1 %i.w, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %min.iters.check125 = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check125, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177, label %vector.ph126

vector.ph126:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader
  %n.vec127 = and i64 %i.ap, 9223372036854775800  ; 3 uses
  %broadcast.splat129 = shufflevector <2 x i32> %i.am, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert132 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat133 = shufflevector <4 x i32> %broadcast.splatinsert132, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen12SparseMatrixIbLi0EiEaSIS1_NS_9TransposeIS1_EEEERS1_RKNS_7ProductIT_T0_Li2EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.i, align 8, !tbaa !98
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !98
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !98
  store <2 x i64> %i.w, ptr %i.i, align 8, !tbaa !98
  %i.x = load <2 x ptr>, ptr %i.l, align 8, !tbaa !125
  %i.y = load <2 x ptr>, ptr %i.t, align 8, !tbaa !125
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !125
  store <2 x ptr> %i.x, ptr %i.t, align 8, !tbaa !125
  store <2 x ptr> %i.y, ptr %i.l, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !136
  %i.ae = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !136
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !136
  store <2 x ptr> %i.ae, ptr %i.ab, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.k, align 8, !tbaa !98
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !98
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !98
  store <2 x i64> %i.ah, ptr %i.k, align 8, !tbaa !98
  call void @free(ptr noundef %i.z) #23
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !81
  call void @free(ptr noundef %i.ai) #23
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !82 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5Eigen12SparseMatrixIbLi0EiED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.al) #26
  br label %_ZN5Eigen12SparseMatrixIbLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIbLi0EiED2Ev.exit:         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %0

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiEC2Ell.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.d) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIbiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #26
  br label %_ZN5Eigen8internal17CompressedStorageIbiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIbiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

declare void @_ZN3igl6sparseIN5Eigen10MatrixBaseINS1_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEES5_NS1_14CwiseNullaryOpINS1_8internal18scalar_constant_opIbEENS1_5ArrayIbLin1ELi3ELi0ELin1ELi3EEEEEbEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(10), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN3igl5countIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl3maxIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclIS2_NS_8internal5all_tEEENS5_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeIS8_S9_E4typeEEE19ReturnAsIndexedViewESC_E4typeERKS8_RKS9_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.91") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69, !noalias !550 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread, label %bb.b

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread: ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.e, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #23, !noalias !550 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !50, !noalias !550
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25, !noalias !550
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 2                      ; 4 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #24, !noalias !550 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23, !noalias !550 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !50, !noalias !550
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25, !noalias !550
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !52, !noalias !550
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.k, i64 %i.g, i1 false), !noalias !550
  store ptr %1, ptr %0, align 8, !tbaa !92
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.g) #24 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.p, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %i.h, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread
  %.sroa.06.01217 = phi ptr [ null, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.h, %bb.f ]
  tail call void @free(ptr noundef %.sroa.06.01217) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.h) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEEEENS_8internal9enable_ifIXaantLNS3_Ut_E0Entooeqsr8internal21get_compile_time_incrINS3_7IvcTypeIT_E4typeEEE5valueLi1Esr8internal19is_valid_index_typeISC_EE5valueENS_11IndexedViewIS2_SE_NS8_11SingleRangeEEEE4typeERKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.99") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63, !noalias !553 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !64, !noalias !553 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !124

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25, !noalias !553
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27, !noalias !553
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !125, !noalias !553 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !125, !noalias !553
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 9 uses
  %i.l = icmp sgt i64 %i.k, 4                     ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !126

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !553
  br label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread21, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit: ; preds = %bb.d, %bb.e
  store ptr %1, ptr %0, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i3, label %.thread, label %bb.f

.thread21:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.i, align 4, !tbaa !43, !noalias !553
  store i32 %i.o, ptr %i.j, align 4, !tbaa !43, !noalias !553
  store ptr %1, ptr %0, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !66
  br label %bb.i

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_.exit
  %i.t = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i5, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4, !prof !127

.noexc.i.i.i5:                                    ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i5
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4: ; preds = %.thread21, %bb.f
  %i.u = phi ptr [ %i.p, %.thread21 ], [ %i.n, %bb.f ]
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27
          to label %.noexc6 unwind label %bb.k    ; 4 uses

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4
  store ptr %i.v, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !66
  br i1 %i.l, label %bb.g, label %bb.h, !prof !128

bb.g:                                             ; preds = %.noexc6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc6
  %i.z = icmp eq i64 %i.k, 4
  br i1 %i.z, label %.thread15, label %bb.i

.thread15:                                        ; preds = %bb.h
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !43
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !43
  store ptr %i.x, ptr %i.w, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !98
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.r, %.thread ]
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ %i.q, %.thread ]
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ae, align 8, !tbaa !98
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread15, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i4, %.noexc.i.i.i5
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i7 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.af
}

declare void @_ZN3igl6sparseIN5Eigen15PlainObjectBaseINS1_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEES4_NS1_14CwiseNullaryOpINS1_8internal18scalar_constant_opIbEENS1_5ArrayIbLin1ELi2ELi0ELin1ELi2EEEEEbEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(10), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN3igl5countIbN5Eigen5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl4earsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl16adjacency_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEbEEvRKNS1_10MatrixBaseIT_EERNS1_12SparseMatrixIT0_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN3igl10slice_maskIbbEEvRKN5Eigen12SparseMatrixIT_Li0EiEERKNS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEiRNS2_IT0_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN3igl3anyIbN5Eigen5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl17vertex_componentsIN5Eigen12SparseMatrixIbLi0EiEENS1_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_20SparseCompressedBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107  ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !50
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load ptr, ptr %1, align 8, !tbaa !108    ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !88   ; 6 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !107  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.s = icmp eq i64 %i.m, 0
  %i.t = icmp eq i64 %i.n, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 9223372036854775807, %i.n
  %i.v = icmp sgt i64 %i.m, %i.u
  br i1 %i.v, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !50
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = mul nsw i64 %i.n, %i.m
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.m, i64 noundef %i.n)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !88
  %.pre20.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.y = phi i64 [ %.pre20.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit ]
  %i.z = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !108   ; 8 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = mul nsw i64 %i.z, %i.y                  ; 7 uses
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = shl nsw i64 %i.ad, 1                    ; 6 uses
  %i.af = icmp sgt i64 %i.ac, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.ag = icmp slt i64 %i.ae, %i.ac
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ah = sub i64 %i.ac, %i.ae                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  %i.ai = sub i64 %i.l, %i.ab
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.aj = add i64 %i.ae, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add i64 %i.ae, %index                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !105
  %wide.load10 = load <2 x double>, ptr %i.an, align 8, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %wide.load, ptr %i.al, align 8, !tbaa !105
  store <2 x double> %wide.load10, ptr %i.ao, align 8, !tbaa !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.i.preheader11:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ] ; 4 uses
  %i.aq = sub i64 %i.ac, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.as = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !105
  store double %i.at, ptr %i.ar, align 8, !tbaa !105
  %i.au = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !555

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.av = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.ac
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
end_hunk_1
