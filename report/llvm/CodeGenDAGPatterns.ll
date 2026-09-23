Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenDAGPatterns?download=true
inline.NumInlined: 10200
inline.NumDeleted: 3855
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS5_:bb.a
  %.sroa.12.2 = phi ptr [ %i.bk, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.an, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKPKN4llvm6RecordENS0_14DAGInstructionEEC2IJOS3_EJLm0EEJOSt6vectorIS3_SaIS3_EESC_SC_RNS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEESG_EJLm0ELm1ELm2ELm3ELm4EEEERSt5tupleIJDpT_EERSH_IJDpT1_EESt12_Index_tupleIJXspT0_EEESQ_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1755, !nonnull !113, !align !121
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  store ptr %i.b, ptr %0, align 8, !tbaa !532
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1757, !nonnull !113, !align !121 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1759, !nonnull !113, !align !121 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1761, !nonnull !113, !align !121 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1763, !nonnull !113, !align !121
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !230  ; 10 uses
  %.not.i.i = icmp eq ptr %i.l, null              ; 3 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !316
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !316
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !1765, !nonnull !113, !align !121
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !230  ; 7 uses
  %.not.i.i7 = icmp eq ptr %i.p, null             ; 2 uses
  br i1 %.not.i.i7, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit8, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit
  %i.q = load i32, ptr %i.p, align 4, !tbaa !316
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !316
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit8

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit8: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit, %bb.c
  %i.s = load <2 x ptr>, ptr %i.e, align 8, !tbaa !281
  store <2 x ptr> %i.s, ptr %i.c, align 8, !tbaa !281
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !283
  store ptr %i.v, ptr %i.t, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x ptr>, ptr %i.g, align 8, !tbaa !281
  store <2 x ptr> %i.x, ptr %i.w, align 8, !tbaa !281
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !283
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load <2 x ptr>, ptr %i.i, align 8, !tbaa !281
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !281
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !283
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !230
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit8
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !316
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.l, align 4, !tbaa !316
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit.i

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit.i: ; preds = %bb.d, %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.p, ptr %i.aj, align 8, !tbaa !230
  br i1 %.not.i.i7, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit.i
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !316
  %.not.i.i.i10 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i10, label %bb.f, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm15TreePatternNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.p) #29, !inline_history !13
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.p, i64 noundef 168) #33, !inline_history !13
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEEC2ERKS2_.exit.i, %bb.e, %bb.f
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit13, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit
  %i.al = load i32, ptr %i.l, align 4, !tbaa !316
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.l, align 4, !tbaa !316
  %.not.i.i.i12 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i12, label %bb.h, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit13

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm15TreePatternNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.l) #29, !inline_history !13
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef 168) #33, !inline_history !13
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit13

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit13: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DAGInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !316
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !316
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15TreePatternNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.b) #29, !inline_history !13
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 168) #33, !inline_history !13
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !230  ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit
  %i.g = load i32, ptr %i.f, align 4, !tbaa !316
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !316
  %.not.i.i.i2 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i2, label %bb.e, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit3

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm15TreePatternNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.f) #29, !inline_history !13
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i64 noundef 168) #33, !inline_history !13
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit3

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit3: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit, %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !283
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit:   ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit3, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !283
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #33
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit6

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit6:  ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, %bb.g
  %i.w = load ptr, ptr %0, align 8, !tbaa !282    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !283
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit8

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit8:  ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit6, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJOSt6vectorIS3_SaIS3_EESN_SN_EEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !281
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %4, align 8, !tbaa !534
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !534
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !534
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !232
  %5 = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !281
  %6 = insertelement <4 x ptr> poison, ptr %i.m, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %5, i64 1
  %8 = shufflevector <2 x ptr> %i.o, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %9, ptr %i.b, align 8, !tbaa !557
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.q = load <2 x ptr>, ptr %i.i, align 8, !tbaa !281
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !281
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !283
  store ptr %i.t, ptr %i.r, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.v = load <2 x ptr>, ptr %i.f, align 8, !tbaa !281
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !281
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !283
  store ptr %i.y, ptr %i.w, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1      ; 4 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.ae
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !231
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !231
  %i.am = icmp ult i32 %i.aj, %i.al
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.an = phi i1 [ %i.am, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !97
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !97
  br label %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN4llvm14DAGInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %10) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #33
  br label %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.d
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.ab, %bb.d ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_S2_IPNS0_15TreePatternNodeEjEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !327
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !552
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.e, align 8, !tbaa !556
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !558
  %i.g = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_S2_IPNS0_15TreePatternNodeEjEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !46 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !46 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.22.0.copyload.i.i.i) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.l, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !192
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.n = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #30
  %.fr.i.i.i.i.i = freeze i32 %i.n                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.o = icmp eq i64 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i
  br i1 %i.o, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i.i.i.i
  %i.p = icmp ult i64 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i
  %i.q = select i1 %i.p, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i: ; preds = %bb.d, %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %i.q, %bb.d ], [ 0, %.thread.i.i.i.i.i ]
  %i.r = icmp slt i32 %.1.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i, %bb.b
  %i.s = phi i1 [ %i.r, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !97
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !97
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_S2_IPNS0_15TreePatternNodeEjEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_S2_IPNS0_15TreePatternNodeEjEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_S2_IPNS0_15TreePatternNodeEjEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.h, %bb.e ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm14PatternToMatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(100) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !535  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !536    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm14PatternToMatchESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.329) #31
  unreachable

_ZNKSt6vectorIN4llvm14PatternToMatchESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 88686269585142075)
  %i.l = select i1 %i.j, i64 88686269585142075, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 104
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.q, ptr noundef nonnull align 8 dereferenceable(100) %2, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load <2 x ptr>, ptr %i.s, align 8, !tbaa !230
  store ptr null, ptr %i.s, align 8, !tbaa !230
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !230
  store ptr null, ptr %i.t, align 8, !tbaa !230
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !281
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !281
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !283
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !215
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !111 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm14PatternToMatchESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZN4llvm14PatternToMatchC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN4llvm14PatternToMatchESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !111
  %i.al = load i64, ptr %i.af, align 8, !tbaa !59
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !112
  br label %_ZN4llvm14PatternToMatchC2EOS0_.exit

_ZN4llvm14PatternToMatchC2EOS0_.exit:             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = phi i64 [ %i.ai, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !112
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !111
  store i64 0, ptr %i.an, align 8, !tbaa !112
  store i8 0, ptr %i.af, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false)
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm14PatternToMatchC2EOS0_.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZN4llvm14PatternToMatchC2EOS0_.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZN4llvm14PatternToMatchC2EOS0_.exit ] ; 2 uses
  tail call void @_ZN4llvm14PatternToMatchC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(100) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(100) %.0810.i.i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm14PatternToMatchC2EOS0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvm14PatternToMatchC2EOS0_.exit ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 104 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i19 ], [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvm14PatternToMatchC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(100) %.011.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(100) %.0810.i.i.i.i.i21)
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 104 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 104 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !35

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm14PatternToMatchES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.av, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm14PatternToMatchEEvT_S3_.exit, label %.lr.ph.i.i
end_hunk_0
