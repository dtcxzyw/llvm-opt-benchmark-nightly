Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN12DataBlockPtrIiLb0EED2Ev:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13ObserverEvent, i64 16), ptr %1, align 8, !tbaa !227
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !573
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !171 ; 2 uses
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr @_ZN6Unique6next_sE, align 8, !tbaa !171
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !574
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !227
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1) #47, !inline_history !2982
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br label %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i

_ZN16SingleObservableIiED2Ev.exit.i.i.i.i:        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.af = getelementptr inbounds nuw i8, ptr %.pr9, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !496, !range !214, !noundef !215
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i

bb.j:                                             ; preds = %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr9, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !493 ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #48
  br label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i

_ZN19DataBlockControllerIiED2Ev.exit.i.i.i:       ; preds = %bb.k, %bb.j, %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr9, i64 noundef 72) #48
  br label %_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit

_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !576
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #48
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2983

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #34

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #30

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #30

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #31

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_emplace_uniqueIJRS2_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %1, align 4                ; 2 uses
  store i64 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.d, align 8, !tbaa !223 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !165  ; 2 uses
  %i.i = icmp sgt i32 %i.h, %i.f                  ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !223 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2984

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #50 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !165
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.h, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp slt i32 %i.n, %i.f
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !165
  %i.s = icmp sgt i32 %i.r, %i.f
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #47
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !228
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !228
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #48
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %.not88 = icmp eq ptr %2, %3
  br i1 %.not88, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 35 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 5 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 10 uses
  %i.q = add i64 %i.a, -8
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check215 = icmp ult i64 %i.r, 520
  br i1 %min.iters.check215, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck216

vector.memcheck216:                               ; preds = %bb.d
  %i.u = and i64 %i.r, -8                         ; 3 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 3 uses
  %i.x = getelementptr i8, ptr %i.h, i64 4        ; 3 uses
  %i.y = getelementptr i8, ptr %i.h, i64 %i.u
  %i.z = getelementptr i8, ptr %i.y, i64 8        ; 3 uses
  %i.aa = add i64 %i.u, %i.b                      ; 2 uses
  %i.ab = add i64 %i.aa, 4
  %i.ac = sub i64 %i.ab, %i.a
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ac   ; 2 uses
  %i.ae = add i64 %i.b, 4
  %i.af = sub i64 %i.ae, %i.a
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.af   ; 2 uses
  %i.ah = add i64 %i.aa, 8
  %i.ai = sub i64 %i.ah, %i.a
  %i.aj = getelementptr i8, ptr %i.h, i64 %i.ai   ; 2 uses
  %bound0217 = icmp ult ptr %i.h, %i.z
  %bound1218 = icmp ult ptr %i.x, %i.w
  %found.conflict219 = and i1 %bound0217, %bound1218
  %bound0220 = icmp ult ptr %i.h, %i.ad
  %bound1221 = icmp ult ptr %i.p, %i.w
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx = or i1 %found.conflict219, %found.conflict222
  %bound0223 = icmp ult ptr %i.h, %i.aj
  %bound1224 = icmp ult ptr %i.ag, %i.w
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx, %found.conflict225
  %bound0227 = icmp ult ptr %i.x, %i.ad
  %bound1228 = icmp ult ptr %i.p, %i.z
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %bound0231 = icmp ult ptr %i.x, %i.aj
  %bound1232 = icmp ult ptr %i.ag, %i.z
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  br i1 %conflict.rdx234, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck216
  %n.vec236 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.ak = shl i64 %n.vec236, 3                    ; 2 uses
  %i.al = getelementptr i8, ptr %i.h, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next251, %vector.body237 ] ; 2 uses
  %i.an = shl i64 %index238, 3                    ; 3 uses
  %i.ao = or disjoint i64 %i.an, 16               ; 2 uses
  %next.gep239 = getelementptr i8, ptr %i.h, i64 %i.an
  %next.gep240 = getelementptr i8, ptr %i.h, i64 %i.ao
  %next.gep241 = getelementptr i8, ptr %i.p, i64 %i.an
  %next.gep242 = getelementptr i8, ptr %i.p, i64 %i.ao
  %wide.vec243 = load <4 x i32>, ptr %next.gep241, align 4, !tbaa !340
  %wide.vec246 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !340
  store <4 x i32> %wide.vec243, ptr %next.gep239, align 4, !tbaa !165
  store <4 x i32> %wide.vec246, ptr %next.gep240, align 4, !tbaa !165
  %index.next251 = add nuw i64 %index238, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next251, %n.vec236
  br i1 %i.ap, label %middle.block252, label %vector.body237, !llvm.loop !2985

middle.block252:                                  ; preds = %vector.body237
  %cmp.n253 = icmp eq i64 %i.t, %n.vec236
  br i1 %cmp.n253, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck216, %bb.d, %middle.block252
  %.09.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck216 ], [ %i.h, %bb.d ], [ %i.al, %middle.block252 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck216 ], [ %i.p, %bb.d ], [ %i.am, %middle.block252 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aq = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.aq, ptr %.09.i.i.i.i.i, align 4, !tbaa !165
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !340
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !165
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2986

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block252
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.aw, ptr %i.g, align 8, !tbaa !359
  %i.ax = ptrtoint ptr %i.p to i64
  %i.ay = sub i64 %i.ax, %i.l
  %i.az = ashr exact i64 %i.ay, 3                 ; 5 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i43.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i43.prol ], [ %i.az, %.lr.ph.i.i.i.i.i43.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i43.prol ], [ %i.h, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i43.prol ], [ %i.p, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i43.prol ], [ 0, %.lr.ph.i.i.i.i.i43.preheader ]
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !340
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !165
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !340
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !165
  %i.bh = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol, !llvm.loop !2987

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bi = icmp ult i64 %i.az, 4
  br i1 %i.bi, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43
  %.010.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !340
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !165
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !340
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !165
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !340
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !165
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !340
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !165
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !340
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !165
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !340
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !165
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !340
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !165
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !340
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !165
  %i.ch = add nsw i64 %.010.i.i.i.i.i, -4
  %i.ci = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !2988

_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.cj = icmp sgt i64 %i.d, 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2997

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader384

.lr.ph.i.i.i.i.preheader384:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader384, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader384 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader384 ] ; 3 uses
  %i.du = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !340
  store i32 %i.du, ptr %.09.i.i.i.i, align 4, !tbaa !165
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !340
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !165
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.dy, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2998

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ea = sub nsw i64 %i.d, %i.n
  %i.eb = getelementptr [8 x i8], ptr %i.h, i64 %i.ea ; 6 uses
  %.not7.i.i.i.i.i45 = icmp eq ptr %1, %i.h
  br i1 %.not7.i.i.i.i.i45, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i46.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ec = add i64 %i.j, -8
  %i.ed = sub i64 %i.ec, %i.l                     ; 3 uses
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check131 = icmp ult i64 %i.ed, 168
  br i1 %min.iters.check131, label %.lr.ph.i.i.i.i.i46.preheader383, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader
  %i.eg = and i64 %i.ed, -8                       ; 2 uses
  %i.eh = add i64 %i.c, %i.eg
  %i.ei = add i64 %i.eh, 8
  %i.ej = sub i64 %i.ei, %i.m
  %i.ek = getelementptr i8, ptr %i.h, i64 %i.ej
  %i.el = getelementptr i8, ptr %1, i64 %i.eg
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %bound0133 = icmp ult ptr %i.eb, %i.em
  %bound1134 = icmp ult ptr %1, %i.ek
  %found.conflict135 = and i1 %bound0133, %bound1134
  br i1 %found.conflict135, label %.lr.ph.i.i.i.i.i46.preheader383, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck132
  %n.vec137 = and i64 %i.ef, 4611686018427387900  ; 3 uses
  %i.en = shl i64 %n.vec137, 3                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.eb, i64 %i.en
  %i.ep = getelementptr i8, ptr %1, i64 %i.en
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next152, %vector.body138 ] ; 2 uses
  %i.eq = shl i64 %index139, 3                    ; 3 uses
  %i.er = or disjoint i64 %i.eq, 16               ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.eb, i64 %i.eq
  %next.gep141 = getelementptr i8, ptr %i.eb, i64 %i.er
  %next.gep142 = getelementptr i8, ptr %1, i64 %i.eq
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.er
  %wide.vec144 = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !340, !alias.scope !3025
  %wide.vec147 = load <4 x i32>, ptr %next.gep143, align 4, !tbaa !340, !alias.scope !3025
  store <4 x i32> %wide.vec144, ptr %next.gep140, align 4, !tbaa !165, !alias.scope !3026, !noalias !3025
  store <4 x i32> %wide.vec147, ptr %next.gep141, align 4, !tbaa !165, !alias.scope !3026, !noalias !3025
  %index.next152 = add nuw i64 %index139, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next152, %n.vec137
  br i1 %i.es, label %middle.block153, label %vector.body138, !llvm.loop !3002

middle.block153:                                  ; preds = %vector.body138
  %cmp.n154 = icmp eq i64 %i.ef, %n.vec137
  br i1 %cmp.n154, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader383

.lr.ph.i.i.i.i.i46.preheader383:                  ; preds = %vector.memcheck132, %.lr.ph.i.i.i.i.i46.preheader, %middle.block153
  %.09.i.i.i.i.i47.ph = phi ptr [ %i.eb, %vector.memcheck132 ], [ %i.eb, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.eo, %middle.block153 ]
  %.sroa.04.08.i.i.i.i.i48.ph = phi ptr [ %1, %vector.memcheck132 ], [ %1, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.ep, %middle.block153 ]
  br label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader383, %.lr.ph.i.i.i.i.i46
  %.09.i.i.i.i.i47 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i46 ], [ %.09.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i46.preheader383 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i48 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i46 ], [ %.sroa.04.08.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i46.preheader383 ] ; 3 uses
  %i.et = load i32, ptr %.sroa.04.08.i.i.i.i.i48, align 4, !tbaa !340
  store i32 %i.et, ptr %.09.i.i.i.i.i47, align 4, !tbaa !165
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !340
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !165
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 8
  %.not.i.i.i.i.i49 = icmp eq ptr %i.ex, %i.h
  br i1 %.not.i.i.i.i.i49, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46, !llvm.loop !3003

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51: ; preds = %.lr.ph.i.i.i.i.i46, %middle.block153, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.ez, ptr %i.g, align 8, !tbaa !359
  %i.fa = ashr exact i64 %i.m, 3                  ; 7 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  %min.iters.check163 = icmp ult i64 %i.fa, 6
  br i1 %min.iters.check163, label %.lr.ph.i.i.i.i.i53.preheader381, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader
  %i.fc = getelementptr i8, ptr %2, i64 %i.m
  %bound0165 = icmp ult ptr %1, %i.fc
  %bound1166 = icmp ult ptr %2, %i.h
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %.lr.ph.i.i.i.i.i53.preheader381, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck164
  %n.vec169 = and i64 %i.fa, 9223372036854775804  ; 3 uses
  %i.fd = and i64 %i.fa, 3
  %i.fe = shl i64 %n.vec169, 3                    ; 2 uses
  %i.ff = getelementptr i8, ptr %1, i64 %i.fe
  %i.fg = getelementptr i8, ptr %2, i64 %i.fe
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next184, %vector.body170 ] ; 2 uses
  %i.fh = shl i64 %index171, 3                    ; 3 uses
  %i.fi = or disjoint i64 %i.fh, 16               ; 2 uses
  %next.gep172 = getelementptr i8, ptr %1, i64 %i.fh
  %next.gep173 = getelementptr i8, ptr %1, i64 %i.fi
  %next.gep174 = getelementptr i8, ptr %2, i64 %i.fh
  %next.gep175 = getelementptr i8, ptr %2, i64 %i.fi
  %wide.vec176 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !340, !alias.scope !3027
  %wide.vec179 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !340, !alias.scope !3027
  store <4 x i32> %wide.vec176, ptr %next.gep172, align 4, !tbaa !165, !alias.scope !3028, !noalias !3027
  store <4 x i32> %wide.vec179, ptr %next.gep173, align 4, !tbaa !165, !alias.scope !3028, !noalias !3027
  %index.next184 = add nuw i64 %index171, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next184, %n.vec169
  br i1 %i.fj, label %middle.block185, label %vector.body170, !llvm.loop !3007

middle.block185:                                  ; preds = %vector.body170
  %cmp.n186 = icmp eq i64 %i.fa, %n.vec169
  br i1 %cmp.n186, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i53.preheader381

.lr.ph.i.i.i.i.i53.preheader381:                  ; preds = %vector.memcheck164, %.lr.ph.i.i.i.i.i53.preheader, %middle.block185
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.fa, %vector.memcheck164 ], [ %i.fa, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fd, %middle.block185 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %vector.memcheck164 ], [ %1, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.ff, %middle.block185 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %vector.memcheck164 ], [ %2, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fg, %middle.block185 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader381, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader381 ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader381 ] ; 3 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader381 ] ; 3 uses
  %i.fk = load i32, ptr %.0910.i.i.i.i.i56, align 4, !tbaa !340
  store i32 %i.fk, ptr %.0811.i.i.i.i.i55, align 4, !tbaa !165
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !340
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !165
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.fq = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.fr = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !3008

bb.e:                                             ; preds = %bb.b
  %i.fs = load ptr, ptr %0, align 8, !tbaa !360   ; 8 uses
  %i.ft = ptrtoint ptr %i.fs to i64               ; 3 uses
  %i.fu = sub i64 %i.j, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 4 uses
  %i.fw = sub nsw i64 1152921504606846975, %i.fv
  %i.fx = icmp ult i64 %i.fw, %i.d
  br i1 %i.fx, label %bb.f, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fv, i64 %i.d)
  %i.fy = add nsw i64 %.sroa.speculated.i, %i.fv  ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fv
  %i.ga = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.ge = phi ptr [ %i.gd, %bb.g ], [ null, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fs, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %i.gf = add i64 %4, -8
  %i.gg = sub i64 %i.gf, %i.ft                    ; 2 uses
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check290 = icmp ult i64 %i.gg, 24
  br i1 %min.iters.check290, label %.lr.ph.i.i.i.i.i58.preheader378, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph.i.i.i.i.i58.preheader
  %n.vec292 = and i64 %i.gi, 4611686018427387900  ; 3 uses
  %i.gj = shl i64 %n.vec292, 3                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.ge, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fs, i64 %i.gj
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next307, %vector.body293 ] ; 2 uses
  %i.gm = shl i64 %index294, 3                    ; 3 uses
  %i.gn = or disjoint i64 %i.gm, 16               ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.ge, i64 %i.gm
  %next.gep296 = getelementptr i8, ptr %i.ge, i64 %i.gn
  %next.gep297 = getelementptr i8, ptr %i.fs, i64 %i.gm
  %next.gep298 = getelementptr i8, ptr %i.fs, i64 %i.gn
  %wide.vec299 = load <4 x i32>, ptr %next.gep297, align 4, !tbaa !340
  %wide.vec302 = load <4 x i32>, ptr %next.gep298, align 4, !tbaa !340
  store <4 x i32> %wide.vec299, ptr %next.gep295, align 4, !tbaa !165
  store <4 x i32> %wide.vec302, ptr %next.gep296, align 4, !tbaa !165
  %index.next307 = add nuw i64 %index294, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next307, %n.vec292
  br i1 %i.go, label %middle.block308, label %vector.body293, !llvm.loop !3009

middle.block308:                                  ; preds = %vector.body293
  %cmp.n309 = icmp eq i64 %i.gi, %n.vec292
  br i1 %cmp.n309, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader378

.lr.ph.i.i.i.i.i58.preheader378:                  ; preds = %.lr.ph.i.i.i.i.i58.preheader, %middle.block308
  %.011.i.i.i.i.i.ph = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gk, %middle.block308 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gl, %middle.block308 ]
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader378, %.lr.ph.i.i.i.i.i58
  %.011.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i58 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader378 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i58 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader378 ] ; 3 uses
  %i.gp = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.gp, ptr %.011.i.i.i.i.i, align 4, !tbaa !165
  %i.gq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !340
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !165
  %i.gt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gt, %1
  br i1 %.not.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58, !llvm.loop !3010

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i58, %middle.block308, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i60 = phi ptr [ %i.ge, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit ], [ %i.gk, %middle.block308 ], [ %i.gu, %.lr.ph.i.i.i.i.i58 ] ; 7 uses
  %i.gv = add i64 %i.a, -8
  %i.gw = sub i64 %i.gv, %i.b                     ; 3 uses
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check318 = icmp ult i64 %i.gw, 120
  br i1 %min.iters.check318, label %.lr.ph.i.i.i.i62.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.gz = and i64 %i.gw, -8
  %i.ha = add i64 %i.gz, 8                        ; 2 uses
  %i.hb = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.ha
  %i.hc = getelementptr i8, ptr %2, i64 %i.ha
  %bound0320 = icmp ult ptr %.0.lcssa.i.i.i.i.i60, %i.hc
  %bound1321 = icmp ult ptr %2, %i.hb
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph.i.i.i.i62.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck319
  %n.vec324 = and i64 %i.gy, 4611686018427387900  ; 3 uses
  %i.hd = shl i64 %n.vec324, 3                    ; 2 uses
  %i.he = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hd ; 2 uses
  %i.hf = getelementptr i8, ptr %2, i64 %i.hd
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next339, %vector.body325 ] ; 2 uses
  %i.hg = shl i64 %index326, 3                    ; 3 uses
  %i.hh = or disjoint i64 %i.hg, 16               ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hg
  %next.gep328 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hh
  %next.gep329 = getelementptr i8, ptr %2, i64 %i.hg
  %next.gep330 = getelementptr i8, ptr %2, i64 %i.hh
  %wide.vec331 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !340, !alias.scope !3029
  %wide.vec334 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !340, !alias.scope !3029
  store <4 x i32> %wide.vec331, ptr %next.gep327, align 4, !tbaa !165, !alias.scope !3030, !noalias !3029
  store <4 x i32> %wide.vec334, ptr %next.gep328, align 4, !tbaa !165, !alias.scope !3030, !noalias !3029
  %index.next339 = add nuw i64 %index326, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next339, %n.vec324
  br i1 %i.hi, label %middle.block340, label %vector.body325, !llvm.loop !3014

middle.block340:                                  ; preds = %vector.body325
  %cmp.n341 = icmp eq i64 %i.gy, %n.vec324
  br i1 %cmp.n341, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %vector.memcheck319, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block340
  %.09.i.i.i.i63.ph = phi ptr [ %.0.lcssa.i.i.i.i.i60, %vector.memcheck319 ], [ %.0.lcssa.i.i.i.i.i60, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.he, %middle.block340 ]
  %.sroa.04.08.i.i.i.i64.ph = phi ptr [ %2, %vector.memcheck319 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.hf, %middle.block340 ]
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %.09.i.i.i.i63 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i62 ], [ %.09.i.i.i.i63.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i64 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i62 ], [ %.sroa.04.08.i.i.i.i64.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %i.hj = load i32, ptr %.sroa.04.08.i.i.i.i64, align 4, !tbaa !340
  store i32 %i.hj, ptr %.09.i.i.i.i63, align 4, !tbaa !165
  %i.hk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !340
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !165
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.hn, %3
  br i1 %.not.i.i.i.i65, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62, !llvm.loop !3015

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i62, %middle.block340
  %.lcssa113 = phi ptr [ %i.he, %middle.block340 ], [ %i.ho, %.lr.ph.i.i.i.i62 ] ; 8 uses
  %.not9.i.i.i.i.i68 = icmp eq ptr %1, %i.h
  br i1 %.not9.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %i.hp = add i64 %i.j, -8
  %i.hq = sub i64 %i.hp, %4                       ; 3 uses
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check350 = icmp ult i64 %i.hq, 120
  br i1 %min.iters.check350, label %.lr.ph.i.i.i.i.i69.preheader376, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader
  %i.ht = and i64 %i.hq, -8
  %i.hu = add i64 %i.ht, 8                        ; 2 uses
  %i.hv = getelementptr i8, ptr %.lcssa113, i64 %i.hu
  %i.hw = getelementptr i8, ptr %1, i64 %i.hu
  %bound0352 = icmp ult ptr %.lcssa113, %i.hw
  %bound1353 = icmp ult ptr %1, %i.hv
  %found.conflict354 = and i1 %bound0352, %bound1353
  br i1 %found.conflict354, label %.lr.ph.i.i.i.i.i69.preheader376, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck351
  %n.vec356 = and i64 %i.hs, 4611686018427387900  ; 3 uses
  %i.hx = shl i64 %n.vec356, 3                    ; 2 uses
  %i.hy = getelementptr i8, ptr %.lcssa113, i64 %i.hx ; 2 uses
  %i.hz = getelementptr i8, ptr %1, i64 %i.hx
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next371, %vector.body357 ] ; 2 uses
  %i.ia = shl i64 %index358, 3                    ; 3 uses
  %i.ib = or disjoint i64 %i.ia, 16               ; 2 uses
  %next.gep359 = getelementptr i8, ptr %.lcssa113, i64 %i.ia
  %next.gep360 = getelementptr i8, ptr %.lcssa113, i64 %i.ib
  %next.gep361 = getelementptr i8, ptr %1, i64 %i.ia
  %next.gep362 = getelementptr i8, ptr %1, i64 %i.ib
  %wide.vec363 = load <4 x i32>, ptr %next.gep361, align 4, !tbaa !340, !alias.scope !3031
  %wide.vec366 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !340, !alias.scope !3031
  store <4 x i32> %wide.vec363, ptr %next.gep359, align 4, !tbaa !165, !alias.scope !3032, !noalias !3031
  store <4 x i32> %wide.vec366, ptr %next.gep360, align 4, !tbaa !165, !alias.scope !3032, !noalias !3031
  %index.next371 = add nuw i64 %index358, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next371, %n.vec356
  br i1 %i.ic, label %middle.block372, label %vector.body357, !llvm.loop !3019

middle.block372:                                  ; preds = %vector.body357
  %cmp.n373 = icmp eq i64 %i.hs, %n.vec356
  br i1 %cmp.n373, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader376

.lr.ph.i.i.i.i.i69.preheader376:                  ; preds = %vector.memcheck351, %.lr.ph.i.i.i.i.i69.preheader, %middle.block372
  %.011.i.i.i.i.i70.ph = phi ptr [ %.lcssa113, %vector.memcheck351 ], [ %.lcssa113, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.hy, %middle.block372 ]
  %.0810.i.i.i.i.i71.ph = phi ptr [ %1, %vector.memcheck351 ], [ %1, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.hz, %middle.block372 ]
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader376, %.lr.ph.i.i.i.i.i69
  %.011.i.i.i.i.i70 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i69 ], [ %.011.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i69.preheader376 ] ; 3 uses
  %.0810.i.i.i.i.i71 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i69 ], [ %.0810.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i69.preheader376 ] ; 3 uses
  %i.id = load i32, ptr %.0810.i.i.i.i.i71, align 4, !tbaa !340
  store i32 %i.id, ptr %.011.i.i.i.i.i70, align 4, !tbaa !165
  %i.ie = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !340
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !165
  %i.ih = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.ih, %i.h
  br i1 %.not.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69, !llvm.loop !3020

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block372, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa113, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67 ], [ %i.hy, %middle.block372 ], [ %i.ii, %.lr.ph.i.i.i.i.i69 ]
  %.not.i75 = icmp eq ptr %i.fs, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74
  %i.ij = load ptr, ptr %i.e, align 8, !tbaa !362
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ik, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.il) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, %bb.h
  store ptr %i.ge, ptr %0, align 8, !tbaa !360
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.g, align 8, !tbaa !359
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gb
  store ptr %i.im, ptr %i.e, align 8, !tbaa !362
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i44, %middle.block185, %middle.block284, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !365  ; 35 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 11 uses
  %i.q = add i64 %i.a, -16
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check178 = icmp ult i64 %i.r, 1008
  br i1 %min.iters.check178, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %bb.d
  %i.u = and i64 %i.r, -16                        ; 3 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 8        ; 3 uses
  %i.x = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.y = getelementptr i8, ptr %i.h, i64 %i.u
  %i.z = getelementptr i8, ptr %i.y, i64 16       ; 3 uses
  %i.aa = add i64 %i.u, %i.b                      ; 2 uses
  %i.ab = add i64 %i.aa, 8
  %i.ac = sub i64 %i.ab, %i.a
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ac   ; 2 uses
  %i.ae = add i64 %i.b, 8
  %i.af = sub i64 %i.ae, %i.a
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.af   ; 2 uses
  %i.ah = add i64 %i.aa, 16
  %i.ai = sub i64 %i.ah, %i.a
  %i.aj = getelementptr i8, ptr %i.h, i64 %i.ai   ; 2 uses
  %bound0180 = icmp ult ptr %i.h, %i.z
  %bound1181 = icmp ult ptr %i.x, %i.w
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0183 = icmp ult ptr %i.h, %i.ad
  %bound1184 = icmp ult ptr %i.p, %i.w
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx = or i1 %found.conflict182, %found.conflict185
  %bound0186 = icmp ult ptr %i.h, %i.aj
  %bound1187 = icmp ult ptr %i.ag, %i.w
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx, %found.conflict188
  %bound0190 = icmp ult ptr %i.x, %i.ad
  %bound1191 = icmp ult ptr %i.p, %i.z
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %i.x, %i.aj
  %bound1195 = icmp ult ptr %i.ag, %i.z
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  br i1 %conflict.rdx197, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck179
  %n.vec199 = and i64 %i.t, 2305843009213693950   ; 3 uses
  %i.ak = shl i64 %n.vec199, 4                    ; 2 uses
  %i.al = getelementptr i8, ptr %i.h, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %i.an = shl i64 %index201, 4                    ; 3 uses
  %i.ao = or disjoint i64 %i.an, 16               ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.h, i64 %i.an
  %next.gep203 = getelementptr i8, ptr %i.h, i64 %i.ao
  %next.gep204 = getelementptr i8, ptr %i.p, i64 %i.an
  %next.gep205 = getelementptr i8, ptr %i.p, i64 %i.ao
  %wide.load206 = load <2 x double>, ptr %next.gep204, align 8, !tbaa !350
  %wide.load207 = load <2 x double>, ptr %next.gep205, align 8, !tbaa !350
  store <2 x double> %wide.load206, ptr %next.gep202, align 8, !tbaa !350
  store <2 x double> %wide.load207, ptr %next.gep203, align 8, !tbaa !350
  %index.next208 = add nuw i64 %index201, 2       ; 2 uses
  %i.ap = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.ap, label %middle.block209, label %vector.body200, !llvm.loop !3033

middle.block209:                                  ; preds = %vector.body200
  %cmp.n210 = icmp eq i64 %i.t, %n.vec199
  br i1 %cmp.n210, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck179, %bb.d, %middle.block209
  %.09.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck179 ], [ %i.h, %bb.d ], [ %i.al, %middle.block209 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck179 ], [ %i.p, %bb.d ], [ %i.am, %middle.block209 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aq = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !350
  store double %i.aq, ptr %.09.i.i.i.i.i, align 8, !tbaa !350
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !350
  store double %i.at, ptr %i.ar, align 8, !tbaa !350
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3034

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block209
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.aw, ptr %i.g, align 8, !tbaa !365
  %i.ax = ptrtoint ptr %i.p to i64
  %i.ay = sub i64 %i.ax, %i.l                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bb = and i64 %i.ay, 16
  %lcmp.mod290.not = icmp eq i64 %i.bb, 0
  br i1 %lcmp.mod290.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader
  %i.bc = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !350
  store double %i.be, ptr %i.bd, align 8, !tbaa !350
  %i.bf = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.bg = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !350
  store double %i.bh, ptr %i.bf, align 8, !tbaa !350
  %i.bi = add nsw i64 %i.az, -1
  br label %.lr.ph.i.i.i.i.i43.prol.loopexit

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bj = icmp eq i64 %i.ay, 16
  br i1 %i.bj, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.010.i.i.i.i.i = phi i64 [ %i.bw, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.br, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bq, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !350
  store double %i.bm, ptr %i.bl, align 8, !tbaa !350
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !350
  store double %i.bp, ptr %i.bn, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !350
  store double %i.bs, ptr %i.br, align 8, !tbaa !350
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !350
  store double %i.bv, ptr %i.bt, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bw = add nsw i64 %.010.i.i.i.i.i, -2
  %i.bx = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !3035

_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.by = icmp sgt i64 %i.d, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.bz = and i64 %i.c, 16
  %lcmp.mod292.not = icmp eq i64 %i.bz, 0
  br i1 %lcmp.mod292.not, label %.lr.ph.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i44.prol

.lr.ph.i.i.i.i.i44.prol:                          ; preds = %.lr.ph.i.i.i.i.i44.preheader
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag:bb.a
  %.09.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader288, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader288 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader288 ] ; 3 uses
  %i.dq = load double, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !350
  store double %i.dq, ptr %.09.i.i.i.i, align 8, !tbaa !350
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !350
  store double %i.dt, ptr %i.dr, align 8, !tbaa !350
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.du, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3040

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dw = sub nsw i64 %i.d, %i.n
  %i.dx = getelementptr [16 x i8], ptr %i.h, i64 %i.dw ; 6 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.h
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.dy = add i64 %i.j, -16
  %i.dz = sub i64 %i.dy, %i.l                     ; 3 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check133 = icmp ult i64 %i.dz, 304
  br i1 %min.iters.check133, label %.lr.ph.i.i.i.i.i49.preheader287, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.ec = and i64 %i.dz, -16                      ; 2 uses
  %i.ed = add i64 %i.c, %i.ec
  %i.ee = add i64 %i.ed, 16
  %i.ef = sub i64 %i.ee, %i.m
  %i.eg = getelementptr i8, ptr %i.h, i64 %i.ef
  %i.eh = getelementptr i8, ptr %1, i64 %i.ec
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %bound0135 = icmp ult ptr %i.dx, %i.ei
  %bound1136 = icmp ult ptr %1, %i.eg
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %.lr.ph.i.i.i.i.i49.preheader287, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck134
  %n.vec139 = and i64 %i.eb, 2305843009213693950  ; 3 uses
  %i.ej = shl i64 %n.vec139, 4                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dx, i64 %i.ej
  %i.el = getelementptr i8, ptr %1, i64 %i.ej
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next148, %vector.body140 ] ; 2 uses
  %i.em = shl i64 %index141, 4                    ; 3 uses
  %i.en = or disjoint i64 %i.em, 16               ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.dx, i64 %i.em
  %next.gep143 = getelementptr i8, ptr %i.dx, i64 %i.en
  %next.gep144 = getelementptr i8, ptr %1, i64 %i.em
  %next.gep145 = getelementptr i8, ptr %1, i64 %i.en
  %wide.load146 = load <2 x double>, ptr %next.gep144, align 8, !tbaa !350, !alias.scope !3060
  %wide.load147 = load <2 x double>, ptr %next.gep145, align 8, !tbaa !350, !alias.scope !3060
  store <2 x double> %wide.load146, ptr %next.gep142, align 8, !tbaa !350, !alias.scope !3061, !noalias !3060
  store <2 x double> %wide.load147, ptr %next.gep143, align 8, !tbaa !350, !alias.scope !3061, !noalias !3060
  %index.next148 = add nuw i64 %index141, 2       ; 2 uses
  %i.eo = icmp eq i64 %index.next148, %n.vec139
  br i1 %i.eo, label %middle.block149, label %vector.body140, !llvm.loop !3044

middle.block149:                                  ; preds = %vector.body140
  %cmp.n150 = icmp eq i64 %i.eb, %n.vec139
  br i1 %cmp.n150, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader287

.lr.ph.i.i.i.i.i49.preheader287:                  ; preds = %vector.memcheck134, %.lr.ph.i.i.i.i.i49.preheader, %middle.block149
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.dx, %vector.memcheck134 ], [ %i.dx, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.ek, %middle.block149 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck134 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.el, %middle.block149 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader287, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader287 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader287 ] ; 3 uses
  %i.ep = load double, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !350
  store double %i.ep, ptr %.09.i.i.i.i.i50, align 8, !tbaa !350
  %i.eq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !350
  store double %i.es, ptr %i.eq, align 8, !tbaa !350
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 16
  %.not.i.i.i.i.i52 = icmp eq ptr %i.et, %i.h
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !3045

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block149, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.ev, ptr %i.g, align 8, !tbaa !365
  %i.ew = ashr exact i64 %i.m, 4                  ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54
  %i.ey = and i64 %i.m, 16
  %lcmp.mod.not = icmp eq i64 %i.ey, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i56.prol.loopexit, label %.lr.ph.i.i.i.i.i56.prol

.lr.ph.i.i.i.i.i56.prol:                          ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %.not.i.i.i.i.i.i60.prol = icmp eq ptr %1, %2
  br i1 %.not.i.i.i.i.i.i60.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol: ; preds = %.lr.ph.i.i.i.i.i56.prol
  %i.ez = load double, ptr %2, align 8, !tbaa !350
  store double %i.ez, ptr %1, align 8, !tbaa !350
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !350
  store double %i.fc, ptr %i.fa, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i56.prol
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i.i.i.i56.prol.loopexit

.lr.ph.i.i.i.i.i56.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, %.lr.ph.i.i.i.i.i56.preheader
  %.012.i.i.i.i.i57.unr = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ff, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0811.i.i.i.i.i58.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.fe, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0910.i.i.i.i.i59.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.fd, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %i.fg = icmp eq i64 %i.m, 16
  br i1 %i.fg, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1
  %.012.i.i.i.i.i57 = phi i64 [ %i.ft, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.012.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.fs, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0811.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.fr, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0910.i.i.i.i.i59.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.fh = load double, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !350
  store double %i.fh, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !350
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !350
  store double %i.fk, ptr %i.fi, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %.not.i.i.i.i.i.i60.1 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !350
  store double %i.fn, ptr %i.fl, align 8, !tbaa !350
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !350
  store double %i.fq, ptr %i.fo, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 32
  %i.ft = add nsw i64 %.012.i.i.i.i.i57, -2
  %i.fu = icmp sgt i64 %.012.i.i.i.i.i57, 2
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !16

bb.e:                                             ; preds = %bb.b
  %i.fv = load ptr, ptr %0, align 8, !tbaa !366   ; 8 uses
  %i.fw = ptrtoint ptr %i.fv to i64               ; 3 uses
  %i.fx = sub i64 %i.j, %i.fw
  %i.fy = ashr exact i64 %i.fx, 4                 ; 4 uses
  %i.fz = sub nsw i64 576460752303423487, %i.fy
  %i.ga = icmp ult i64 %i.fz, %i.d
  br i1 %i.ga, label %bb.f, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.d)
  %i.gb = add nsw i64 %.sroa.speculated.i, %i.fy  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fy
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 576460752303423487)
  %i.ge = select i1 %i.gc, i64 576460752303423487, i64 %i.gd ; 3 uses
  %.not.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #45
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.gh = phi ptr [ %i.gg, %bb.g ], [ null, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fv, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %i.gi = add i64 %4, -16
  %i.gj = sub i64 %i.gi, %i.fw                    ; 2 uses
  %i.gk = lshr i64 %i.gj, 4
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %i.gj, 48
  br i1 %min.iters.check214, label %.lr.ph.i.i.i.i.i64.preheader284, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec216 = and i64 %i.gl, 2305843009213693950  ; 3 uses
  %i.gm = shl i64 %n.vec216, 4                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gh, i64 %i.gm  ; 2 uses
  %i.go = getelementptr i8, ptr %i.fv, i64 %i.gm
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next225, %vector.body217 ] ; 2 uses
  %i.gp = shl i64 %index218, 4                    ; 3 uses
  %i.gq = or disjoint i64 %i.gp, 16               ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.gh, i64 %i.gp
  %next.gep220 = getelementptr i8, ptr %i.gh, i64 %i.gq
  %next.gep221 = getelementptr i8, ptr %i.fv, i64 %i.gp
  %next.gep222 = getelementptr i8, ptr %i.fv, i64 %i.gq
  %wide.load223 = load <2 x double>, ptr %next.gep221, align 8, !tbaa !350
  %wide.load224 = load <2 x double>, ptr %next.gep222, align 8, !tbaa !350
  store <2 x double> %wide.load223, ptr %next.gep219, align 8, !tbaa !350
  store <2 x double> %wide.load224, ptr %next.gep220, align 8, !tbaa !350
  %index.next225 = add nuw i64 %index218, 2       ; 2 uses
  %i.gr = icmp eq i64 %index.next225, %n.vec216
  br i1 %i.gr, label %middle.block226, label %vector.body217, !llvm.loop !3046

middle.block226:                                  ; preds = %vector.body217
  %cmp.n227 = icmp eq i64 %i.gl, %n.vec216
  br i1 %cmp.n227, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader284

.lr.ph.i.i.i.i.i64.preheader284:                  ; preds = %.lr.ph.i.i.i.i.i64.preheader, %middle.block226
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gn, %middle.block226 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.go, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader284, %.lr.ph.i.i.i.i.i64
  %.011.i.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i64 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader284 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i64 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader284 ] ; 3 uses
  %i.gs = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !350
  store double %i.gs, ptr %.011.i.i.i.i.i, align 8, !tbaa !350
  %i.gt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !350
  store double %i.gv, ptr %i.gt, align 8, !tbaa !350
  %i.gw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.gw, %1
  br i1 %.not.i.i.i.i.i65, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64, !llvm.loop !3047

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block226, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i66 = phi ptr [ %i.gh, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit ], [ %i.gn, %middle.block226 ], [ %i.gx, %.lr.ph.i.i.i.i.i64 ] ; 7 uses
  %i.gy = add i64 %i.a, -16
  %i.gz = sub i64 %i.gy, %i.b                     ; 3 uses
  %i.ha = lshr i64 %i.gz, 4
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.gz, 208
  br i1 %min.iters.check236, label %.lr.ph.i.i.i.i68.preheader, label %vector.memcheck237

vector.memcheck237:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.hc = and i64 %i.gz, -16
  %i.hd = add i64 %i.hc, 16                       ; 2 uses
  %i.he = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hd
  %i.hf = getelementptr i8, ptr %2, i64 %i.hd
  %bound0238 = icmp ult ptr %.0.lcssa.i.i.i.i.i66, %i.hf
  %bound1239 = icmp ult ptr %2, %i.he
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph.i.i.i.i68.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck237
  %n.vec242 = and i64 %i.hb, 2305843009213693950  ; 3 uses
  %i.hg = shl i64 %n.vec242, 4                    ; 2 uses
  %i.hh = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hg ; 2 uses
  %i.hi = getelementptr i8, ptr %2, i64 %i.hg
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next251, %vector.body243 ] ; 2 uses
  %i.hj = shl i64 %index244, 4                    ; 3 uses
  %i.hk = or disjoint i64 %i.hj, 16               ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hj
  %next.gep246 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hk
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.hj
  %next.gep248 = getelementptr i8, ptr %2, i64 %i.hk
  %wide.load249 = load <2 x double>, ptr %next.gep247, align 8, !tbaa !350, !alias.scope !3062
  %wide.load250 = load <2 x double>, ptr %next.gep248, align 8, !tbaa !350, !alias.scope !3062
  store <2 x double> %wide.load249, ptr %next.gep245, align 8, !tbaa !350, !alias.scope !3063, !noalias !3062
  store <2 x double> %wide.load250, ptr %next.gep246, align 8, !tbaa !350, !alias.scope !3063, !noalias !3062
  %index.next251 = add nuw i64 %index244, 2       ; 2 uses
  %i.hl = icmp eq i64 %index.next251, %n.vec242
  br i1 %i.hl, label %middle.block252, label %vector.body243, !llvm.loop !3051

middle.block252:                                  ; preds = %vector.body243
  %cmp.n253 = icmp eq i64 %i.hb, %n.vec242
  br i1 %cmp.n253, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68.preheader

.lr.ph.i.i.i.i68.preheader:                       ; preds = %vector.memcheck237, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %middle.block252
  %.09.i.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i.i.i.i66, %vector.memcheck237 ], [ %.0.lcssa.i.i.i.i.i66, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hh, %middle.block252 ]
  %.sroa.04.08.i.i.i.i70.ph = phi ptr [ %2, %vector.memcheck237 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hi, %middle.block252 ]
  br label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68
  %.09.i.i.i.i69 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i68 ], [ %.09.i.i.i.i69.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i70 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i68 ], [ %.sroa.04.08.i.i.i.i70.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %i.hm = load double, ptr %.sroa.04.08.i.i.i.i70, align 8, !tbaa !350
  store double %i.hm, ptr %.09.i.i.i.i69, align 8, !tbaa !350
  %i.hn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 8
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !350
  store double %i.hp, ptr %i.hn, align 8, !tbaa !350
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 16 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.hq, %3
  br i1 %.not.i.i.i.i71, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68, !llvm.loop !3052

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73: ; preds = %.lr.ph.i.i.i.i68, %middle.block252
  %.lcssa119 = phi ptr [ %i.hh, %middle.block252 ], [ %i.hr, %.lr.ph.i.i.i.i68 ] ; 8 uses
  %.not9.i.i.i.i.i74 = icmp eq ptr %1, %i.h
  br i1 %.not9.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %i.hs = add i64 %i.j, -16
  %i.ht = sub i64 %i.hs, %4                       ; 3 uses
  %i.hu = lshr i64 %i.ht, 4
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check262 = icmp ult i64 %i.ht, 208
  br i1 %min.iters.check262, label %.lr.ph.i.i.i.i.i75.preheader282, label %vector.memcheck263

vector.memcheck263:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %i.hw = and i64 %i.ht, -16
  %i.hx = add i64 %i.hw, 16                       ; 2 uses
  %i.hy = getelementptr i8, ptr %.lcssa119, i64 %i.hx
  %i.hz = getelementptr i8, ptr %1, i64 %i.hx
  %bound0264 = icmp ult ptr %.lcssa119, %i.hz
  %bound1265 = icmp ult ptr %1, %i.hy
  %found.conflict266 = and i1 %bound0264, %bound1265
  br i1 %found.conflict266, label %.lr.ph.i.i.i.i.i75.preheader282, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck263
  %n.vec268 = and i64 %i.hv, 2305843009213693950  ; 3 uses
  %i.ia = shl i64 %n.vec268, 4                    ; 2 uses
  %i.ib = getelementptr i8, ptr %.lcssa119, i64 %i.ia ; 2 uses
  %i.ic = getelementptr i8, ptr %1, i64 %i.ia
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next277, %vector.body269 ] ; 2 uses
  %i.id = shl i64 %index270, 4                    ; 3 uses
  %i.ie = or disjoint i64 %i.id, 16               ; 2 uses
  %next.gep271 = getelementptr i8, ptr %.lcssa119, i64 %i.id
  %next.gep272 = getelementptr i8, ptr %.lcssa119, i64 %i.ie
  %next.gep273 = getelementptr i8, ptr %1, i64 %i.id
  %next.gep274 = getelementptr i8, ptr %1, i64 %i.ie
  %wide.load275 = load <2 x double>, ptr %next.gep273, align 8, !tbaa !350, !alias.scope !3064
  %wide.load276 = load <2 x double>, ptr %next.gep274, align 8, !tbaa !350, !alias.scope !3064
  store <2 x double> %wide.load275, ptr %next.gep271, align 8, !tbaa !350, !alias.scope !3065, !noalias !3064
  store <2 x double> %wide.load276, ptr %next.gep272, align 8, !tbaa !350, !alias.scope !3065, !noalias !3064
  %index.next277 = add nuw i64 %index270, 2       ; 2 uses
  %i.if = icmp eq i64 %index.next277, %n.vec268
  br i1 %i.if, label %middle.block278, label %vector.body269, !llvm.loop !3056

middle.block278:                                  ; preds = %vector.body269
  %cmp.n279 = icmp eq i64 %i.hv, %n.vec268
  br i1 %cmp.n279, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader282

.lr.ph.i.i.i.i.i75.preheader282:                  ; preds = %vector.memcheck263, %.lr.ph.i.i.i.i.i75.preheader, %middle.block278
  %.011.i.i.i.i.i76.ph = phi ptr [ %.lcssa119, %vector.memcheck263 ], [ %.lcssa119, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.ib, %middle.block278 ]
  %.0810.i.i.i.i.i77.ph = phi ptr [ %1, %vector.memcheck263 ], [ %1, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.ic, %middle.block278 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader282, %.lr.ph.i.i.i.i.i75
  %.011.i.i.i.i.i76 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i75 ], [ %.011.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader282 ] ; 3 uses
  %.0810.i.i.i.i.i77 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i75 ], [ %.0810.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader282 ] ; 3 uses
  %i.ig = load double, ptr %.0810.i.i.i.i.i77, align 8, !tbaa !350
  store double %i.ig, ptr %.011.i.i.i.i.i76, align 8, !tbaa !350
  %i.ih = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 8
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !350
  store double %i.ij, ptr %i.ih, align 8, !tbaa !350
  %i.ik = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 16 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 16 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ik, %i.h
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !3057

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block278, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %.lcssa119, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ], [ %i.ib, %middle.block278 ], [ %i.il, %.lr.ph.i.i.i.i.i75 ]
  %.not.i81 = icmp eq ptr %i.fv, null
  br i1 %.not.i81, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80
  %i.im = load ptr, ptr %i.e, align 8, !tbaa !368
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.in, %i.fw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.io) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, %bb.h
  store ptr %i.gh, ptr %0, align 8, !tbaa !366
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.g, align 8, !tbaa !365
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ge
  store ptr %i.ip, ptr %i.e, align 8, !tbaa !368
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, %.lr.ph.i.i.i.i.i44.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !360    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x i32>, ptr %2, align 4, !tbaa !340
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !165
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 3 uses
  %i.aa = or disjoint i64 %i.z, 16                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z
  %next.gep37 = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep38 = getelementptr i8, ptr %i.c, i64 %i.z
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.aa
  %wide.vec = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !340
  %wide.vec41 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !340
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !165
  store <4 x i32> %wide.vec41, ptr %next.gep37, align 4, !tbaa !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3066

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 3 uses
  %i.ac = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.ac, ptr %.011.i.i.i.i.i, align 4, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !340
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3067

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 7 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.aj = add i64 %i.d, -8
  %i.ak = sub i64 %i.aj, %i.m                     ; 3 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check48 = icmp ult i64 %i.ak, 136
  br i1 %min.iters.check48, label %.lr.ph.i.i.i.i.i19.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.an = and i64 %i.ak, -8                       ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %bound0 = icmp ult ptr %i.ai, %i.ar
  %bound1 = icmp ult ptr %1, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i19.preheader70, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck
  %n.vec50 = and i64 %i.am, 4611686018427387900   ; 3 uses
end_hunk_2
