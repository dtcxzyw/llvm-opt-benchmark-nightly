inline.NumInlined: 926
inline.NumDeleted: 399
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL20BM_DenseThreadRangesRN9benchmark5StateE:bb.a

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64, i32 noundef 267, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE) #23
  unreachable

bb.i:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE) #23
  unreachable

.critedge:                                        ; preds = %bb.c, %bb.g, %bb.g, %bb.g, %bb.g, %bb.e, %bb.e, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load i64, ptr %0, align 64, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark5State19KeepRunningInternalElb.exit, %.critedge
  %i.n = phi i64 [ %storemerge, %_ZN9benchmark5State19KeepRunningInternalElb.exit ], [ %.pre, %.critedge ] ; 2 uses
  %.not.i = icmp slt i64 %i.n, 1
  br i1 %.not.i, label %bb.k, label %_ZN9benchmark5State19KeepRunningInternalElb.exit, !prof !122

bb.k:                                             ; preds = %bb.j
  %i.o = load i8, ptr %i.l, align 8, !tbaa !77, !range !78, !noundef !79
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.q = load i32, ptr %i.m, align 4, !tbaa !8
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.r = load i64, ptr %0, align 64, !tbaa !82    ; 2 uses
  %.not14.i = icmp slt i64 %i.r, 1
  br i1 %.not14.i, label %bb.n, label %_ZN9benchmark5State19KeepRunningInternalElb.exit

_ZN9benchmark5State19KeepRunningInternalElb.exit: ; preds = %bb.m, %bb.j
  %storemerge.in = phi i64 [ %i.n, %bb.j ], [ %i.r, %bb.m ]
  %storemerge = add nsw i64 %storemerge.in, -1    ; 2 uses
  store i64 %storemerge, ptr %0, align 64, !tbaa !82
  br label %bb.j, !llvm.loop !124

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_BenchmarkNameRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1921 = icmp eq i64 %i.e, 0
  %.not.i.not19 = select i1 %.not, i1 true, i1 %.not.i.not1921
  br i1 %.not.i.not19, label %._crit_edge, label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader: ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %smin = tail call i64 @llvm.smin.i64(i64 %i.e, i64 0)
  %i.f = sub i64 %i.e, %smin
  %i.g = add i64 %i.e, -1
  %.not22.not = icmp ugt i64 %i.f, %i.g
  br i1 %.not22.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !42
  %i.j = load ptr, ptr %i.h, align 16, !tbaa !51  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.l, ptr %i.a, align 8, !tbaa !58
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !51
  %i.o = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.o, ptr %i.i, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %._crit_edge
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %._crit_edge ] ; 2 uses
  switch i64 %i.l, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !45
  store i8 %i.q, ptr %i.p, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b
  %i.r = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !44
  %i.t = load ptr, ptr %1, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.v = load i64, ptr %i.s, align 8, !tbaa !44
  %i.w = icmp eq i64 %i.v, 16
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread18

bb.c:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !51     ; 3 uses
  %i.y = load i128, ptr %i.x, align 1
  %i.z = icmp ne i128 %i.y, 134819961538638203381529702021220748610
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.64, i32 noundef 284, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE) #23
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.ac = icmp ne ptr %i.x, %i.i
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !45
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @__const.main.arg0_default, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %i.b, ptr %i.c, align 8, !tbaa !125
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %i.a, ptr noundef nonnull %.0, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4
  %i.e = call noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef %i.d, ptr noundef nonnull %.0)
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() ; 0 uses
  call void @_ZN9benchmark8ShutdownEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.03 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 %.03
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef, ptr noundef) local_unnamed_addr #0

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark8ShutdownEv() local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_19FactorialEi(i32 noundef range(i32 1, 9) %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %tailrecurse._crit_edge, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.rnd.up = add nuw nsw i32 %0, 2
  %n.vec = and i32 %n.rnd.up, 28
  %trip.count.minus.1 = add nsw i32 %0, -2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat6 = shufflevector <4 x i32> %broadcast.splatinsert5, <4 x i32> poison, <4 x i32> zeroinitializer
  %1 = add nsw <4 x i32> %broadcast.splat6, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %1, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %2, %vector.body ] ; 2 uses
  %vec.ind7 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next8, %vector.body ] ; 2 uses
  %2 = mul <4 x i32> %vec.ind, %vec.phi           ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 -4)
  %vec.ind.next8 = add nuw <4 x i32> %vec.ind7, splat (i32 4)
  %i.b = icmp eq i32 %index.next, %n.vec
  br i1 %i.b, label %tailrecurse._crit_edge.loopexit, label %vector.body, !llvm.loop !126

tailrecurse._crit_edge.loopexit:                  ; preds = %vector.body
  %.not = icmp ugt <4 x i32> %vec.ind7, %broadcast.splat
  %3 = select <4 x i1> %.not, <4 x i32> %vec.phi, <4 x i32> %2
  %4 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %3)
  br label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse._crit_edge.loopexit, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 1, %bb.a ], [ %4, %tailrecurse._crit_edge.loopexit ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State11PauseTimingEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setIlSt4lessIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  invoke void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable

_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN9benchmark5State12ResumeTimingEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  tail call void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.62", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !132

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8, !tbaa !133, !alias.scope !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8, !tbaa !138
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !133
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !42
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !51
  %i.m = load i64, ptr %i.g, align 8, !tbaa !45
  store i64 %i.m, ptr %i.e, align 8, !tbaa !45
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !44
  store ptr %i.g, ptr %i.d, align 8, !tbaa !51
  store i64 0, ptr %i.p, align 8, !tbaa !44
  store i8 0, ptr %i.g, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.s, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 1000, ptr %i.t, align 4, !tbaa !143
  store ptr %i.a, ptr %i.o, align 8, !tbaa !144
  %i.u = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 5 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.v, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ag = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ah = sub i64 %i.z, %i.ab
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !76
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !76
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.an

bb.h:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.v, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %.sroa.0.011
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !51
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44   ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #22 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.af = sub i64 %i.v, %i.x
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.ah = icmp slt i32 %i.ac, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !91 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i19, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %2, align 8, !tbaa !51
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.as = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.aq, i64 noundef %.sroa.speculated.i.i.i19) #22 ; 2 uses
  %.not.i.i.i21 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i21, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %bb.g
  %i.at = sub i64 %i.an, %i.v
  %spec.select7.i.i.i.i24 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i25 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i24, i64 2147483647)
  %.0.i6.i.i.i26 = trunc nsw i64 %.08.i.i.i.i25 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23
  %.0.i.i.i22 = phi i32 [ %i.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20 ], [ %.0.i6.i.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23 ]
  %i.au = icmp slt i32 %.0.i.i.i22, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !129
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select = select i1 %i.ax, ptr null, ptr %1
  %spec.select73 = select i1 %i.ax, ptr %i.al, ptr %1
  br label %bb.n

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread
  %i.bb = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i10) #22 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29
  %i.bc = sub i64 %i.x, %i.v
  %spec.select7.i.i.i.i33 = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 -2147483648)
  %.08.i.i.i.i34 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i33, i64 2147483647)
  %.0.i6.i.i.i35 = trunc nsw i64 %.08.i.i.i.i34 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32
  %.0.i.i.i31 = phi i32 [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29 ], [ %.0.i6.i.i.i35, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32 ]
  %i.bd = icmp slt i32 %.0.i.i.i31, 0
  br i1 %i.bd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.v) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i37, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51
  %i.bn = load ptr, ptr %2, align 8, !tbaa !51
  %i.bo = tail call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i37) #22 ; 2 uses
  %.not.i.i.i39 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i44 = trunc nsw i64 %.08.i.i.i.i43 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41
  %.0.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38 ], [ %.0.i6.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !129
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !91 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !91  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !147

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !51
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #22 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #9

declare void @_ZN9benchmark5State16SetIterationTimeEd(ptr noundef nonnull align 64 dereferenceable(184), double noundef) local_unnamed_addr #0

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN3$_08__invokeERN9benchmark5StateE"(ptr noundef nonnull align 64 dereferenceable(184) %0) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315.i.i = icmp eq i64 %i.d, 0
  %.not.i.not13.i.i = select i1 %.not.i.i, i1 true, i1 %.not.i.not1315.i.i
  br i1 %.not.i.not13.i.i, label %"_ZNK3$_0clERN9benchmark5StateE.exit", label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i: ; preds = %bb.a
  %smin.i.i = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.e = sub i64 %i.d, %smin.i.i
  %i.f = add i64 %i.d, -1
  %.not16.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not16.not.i.i, label %"_ZNK3$_0clERN9benchmark5StateE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

"_ZNK3$_0clERN9benchmark5StateE.exit":            ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN3$_18__invokeERN9benchmark5StateE"(ptr noundef nonnull align 64 dereferenceable(184) %0) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.60, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 16             ; 4 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %.noexc4.i unwind label %bb.c

.noexc4.i:                                        ; preds = %bb.a
  %.not.i.i = icmp ne i32 %i.e, 0
  %.not.i.not1315.i.i = icmp eq i64 %i.g, 0
  %.not.i.not13.i.i = select i1 %.not.i.i, i1 true, i1 %.not.i.not1315.i.i
  br i1 %.not.i.not13.i.i, label %._crit_edge.i.i, label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i: ; preds = %.noexc4.i
  %smin.i.i = call i64 @llvm.smin.i64(i64 %i.g, i64 0)
  %i.h = sub i64 %i.g, %smin.i.i
  %i.i = add i64 %i.g, -1
  %.not16.not.i.i = icmp ugt i64 %i.h, %i.i
  br i1 %.not16.not.i.i, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i, %.noexc4.i
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_Z12BM_with_argsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIidEEEvRN9benchmark5StateEDpOT_.exit.i unwind label %bb.c

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

_Z12BM_with_argsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIidEEEvRN9benchmark5StateEDpOT_.exit.i: ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %"_ZNK3$_1clERN9benchmark5StateE.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_Z12BM_with_argsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIidEEEvRN9benchmark5StateEDpOT_.exit.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !45
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #24
  br label %"_ZNK3$_1clERN9benchmark5StateE.exit"

bb.c:                                             ; preds = %._crit_edge.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8, !tbaa !45
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.n

"_ZNK3$_1clERN9benchmark5StateE.exit":            ; preds = %_Z12BM_with_argsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIidEEEvRN9benchmark5StateEDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN3$_28__invokeERN9benchmark5StateE"(ptr noundef nonnull align 64 dereferenceable(184) %0) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre.i.i = load i64, ptr %0, align 64, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State19KeepRunningInternalElb.exit.i.i, %bb.a
  %i.c = phi i64 [ %storemerge.i.i, %_ZN9benchmark5State19KeepRunningInternalElb.exit.i.i ], [ %.pre.i.i, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp slt i64 %i.c, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN9benchmark5State19KeepRunningInternalElb.exit.i.i, !prof !122
end_hunk_0
begin_hunk_1_@"_ZN3$_38__invokeERN9benchmark5StateE":bb.a
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN3$_48__invokeERN9benchmark5StateE"(ptr noundef nonnull align 64 dereferenceable(184) %0) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1416.i.i = icmp eq i64 %i.d, 0
  %.not.i.not14.i.i = select i1 %.not.i.i, i1 true, i1 %.not.i.not1416.i.i
  br i1 %.not.i.not14.i.i, label %"_ZNK3$_4clERN9benchmark5StateE.exit", label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i: ; preds = %bb.a
  %smin.i.i = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.e = sub i64 %i.d, %smin.i.i
  %i.f = add i64 %i.d, -1
  %.not17.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not17.not.i.i, label %"_ZNK3$_4clERN9benchmark5StateE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

"_ZNK3$_4clERN9benchmark5StateE.exit":            ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN3$_58__invokeERN9benchmark5StateE"(ptr noundef nonnull align 64 dereferenceable(184) %0) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1416.i.i = icmp eq i64 %i.d, 0
  %.not.i.not14.i.i = select i1 %.not.i.i, i1 true, i1 %.not.i.not1416.i.i
  br i1 %.not.i.not14.i.i, label %"_ZNK3$_5clERN9benchmark5StateE.exit", label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i: ; preds = %bb.a
  %smin.i.i = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.e = sub i64 %i.d, %smin.i.i
  %i.f = add i64 %i.d, -1
  %.not17.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not17.not.i.i, label %"_ZNK3$_5clERN9benchmark5StateE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

"_ZNK3$_5clERN9benchmark5StateE.exit":            ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN3$_68__invokeERN9benchmark5StateE"(ptr noundef nonnull align 64 dereferenceable(184) %0) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1416.i.i = icmp eq i64 %i.d, 0
  %.not.i.not14.i.i = select i1 %.not.i.i, i1 true, i1 %.not.i.not1416.i.i
  br i1 %.not.i.not14.i.i, label %"_ZNK3$_6clERN9benchmark5StateE.exit", label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i: ; preds = %bb.a
  %smin.i.i = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.e = sub i64 %i.d, %smin.i.i
  %i.f = add i64 %i.d, -1
  %.not17.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not17.not.i.i, label %"_ZNK3$_6clERN9benchmark5StateE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

"_ZNK3$_6clERN9benchmark5StateE.exit":            ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %1 = alloca %"class.std::complex", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %._crit_edge, label %_ZN9benchmark5State13StateIteratorppEv.exit, !prof !35

bb.a:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit
  %i.e = add nsw i64 %.sroa.08.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.e, 0
  br i1 %.not.i.not, label %._crit_edge, label %_ZN9benchmark5State13StateIteratorppEv.exit, !prof !61

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

_ZN9benchmark5State13StateIteratorppEv.exit:      ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %bb.a
  %.sroa.08.014 = phi i64 [ %i.e, %bb.a ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::complex") align 8 dereferenceable(16) %1, ptr nonnull elementtype(%"class.std::complex") align 8 dereferenceable(16) %1) #22, !srcloc !71
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.f = icmp sgt i64 %.sroa.08.014, 0
  br i1 %i.f, label %bb.a, label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #9

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_benchmark_test.cc() #18 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::vector.18", align 8   ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.t = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.u = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.v = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.v, ptr %28, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 12, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %28, i64 28
  store i8 0, ptr %i.x, align 4, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.u, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  store ptr @_ZL12BM_FactorialRN9benchmark5StateE, ptr %i.y, align 8, !tbaa !148
  %i.z = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.u)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %28, align 8, !tbaa !51   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !45
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %__cxx_global_var_init.1.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.af = load ptr, ptr %28, align 8, !tbaa !51   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !45
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br i1 %.0.i, label %bb.e, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br i1 %.0.i, label %bb.e, label %common.resume

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 232) #24
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i201, %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i192, %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183, %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i174, %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i165, %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156, %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i147, %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i138, %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i129, %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i120, %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i111, %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i102, %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i94, %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i89, %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i84, %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i75, %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i70, %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i61, %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i43, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34, %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i23, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i18, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i13, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.tl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i191 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7 ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i17 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i22 ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i42 ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i51 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i60 ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i69 ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i74 ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i83 ], [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i88 ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i93 ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i101 ], [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i110 ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i119 ], [ %i.od, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i128 ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i137 ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i146 ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i155 ], [ %i.rc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i164 ], [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i173 ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182 ], [ %i.ae, %bb.e ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.au, %bb.j ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8 ], [ %.pn12.i, %bb.o ], [ %i.ce, %bb.t ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i13 ], [ %i.cu, %bb.y ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i18 ], [ %i.dk, %bb.ad ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i23 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %i.eq, %bb.an ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34 ], [ %.pn12.i29, %bb.as ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i43 ], [ %.pn12.i38, %bb.ax ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52 ], [ %.pn12.i47, %bb.bc ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i61 ], [ %.pn12.i56, %bb.bh ], [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i70 ], [ %.pn12.i65, %bb.bm ], [ %i.je, %bb.br ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i75 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i84 ], [ %.pn12.i79, %bb.bx ], [ %i.kq, %bb.cd ], [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i89 ], [ %i.lh, %bb.cj ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i94 ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i102 ], [ %.pn13.i, %bb.cn ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i111 ], [ %.pn13.i106, %bb.cr ], [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i120 ], [ %.pn13.i115, %bb.cv ], [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i129 ], [ %.pn13.i124, %bb.cz ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i138 ], [ %.pn13.i133, %bb.dd ], [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i147 ], [ %.pn13.i142, %bb.dh ], [ %i.qh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156 ], [ %.pn13.i151, %bb.dl ], [ %i.rc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i165 ], [ %.pn12.i160, %bb.dr ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i174 ], [ %.pn12.i169, %bb.dx ], [ %i.ss, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183 ], [ %.pn12.i178, %bb.ed ], [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i192 ], [ %.pn12.i187, %bb.eh ], [ %i.ue, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i201 ], [ %.pn12.i196, %bb.el ], [ %i.ue, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i200 ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.1.exit:                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  store ptr %i.z, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !171
  %i.aj = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.ak, ptr %27, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 12, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %27, i64 28
  store i8 0, ptr %i.am, align 4, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %__cxx_global_var_init.1.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.aj, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  store ptr @_ZL12BM_FactorialRN9benchmark5StateE, ptr %i.an, align 8, !tbaa !148
  %i.ao = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.aj)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = invoke noundef ptr @_ZN9benchmark8internal9Benchmark11UseRealTimeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ao)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %27, align 8, !tbaa !51   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ak
  br i1 %i.ar, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.h
  %i.as = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %__cxx_global_var_init.2.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %__cxx_global_var_init.1.exit
  %.0.i1 = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ true, %__cxx_global_var_init.1.exit ] ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.av = load ptr, ptr %27, align 8, !tbaa !51   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ak
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2: ; preds = %bb.i
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br i1 %.0.i1, label %bb.j, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br i1 %.0.i1, label %bb.j, label %common.resume

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  store ptr %i.ap, ptr @_ZL27benchmark_uniq_3_benchmark_, align 8, !tbaa !171
  %i.az = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ba, ptr %26, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #22
  store i64 19, ptr %i.s, align 8, !tbaa !58
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ; 2 uses

.noexc.i:                                         ; preds = %__cxx_global_var_init.2.exit
  store ptr %i.bb, ptr %26, align 8, !tbaa !51
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !58  ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bb, ptr noundef nonnull align 1 dereferenceable(19) @.str.4, i64 19, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !44
  %i.be = load ptr, ptr %26, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.az, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  store ptr @_ZL19BM_CalculatePiRangeRN9benchmark5StateE, ptr %i.bg, align 8, !tbaa !148
  %i.bh = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.bh, i64 noundef 1, i64 noundef 1048576)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %26, align 8, !tbaa !51   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bk, label %__cxx_global_var_init.3.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.m
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #24
  br label %__cxx_global_var_init.3.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i: ; preds = %__cxx_global_var_init.2.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k, %.noexc.i
  %.0.i6 = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ true, %.noexc.i ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %26, align 8, !tbaa !51   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ba
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7: ; preds = %bb.n
  %i.br = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br i1 %.0.i6, label %bb.o, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br i1 %.0.i6, label %bb.o, label %common.resume

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
  %.pn12.i = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.3.exit:                     ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  store ptr %i.bi, ptr @_ZL27benchmark_uniq_4_benchmark_, align 8, !tbaa !171
  %i.bt = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.bu, ptr %25, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bu, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 14, ptr %i.bv, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 30
  store i8 0, ptr %i.bw, align 2, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %__cxx_global_var_init.3.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.bt, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 224
  store ptr @_ZL14BM_CalculatePiRN9benchmark5StateE, ptr %i.bx, align 8, !tbaa !148
  %i.by = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.bt)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bz = invoke noundef ptr @_ZN9benchmark8internal9Benchmark7ThreadsEi(ptr noundef nonnull align 8 dereferenceable(224) %i.by, i32 noundef 8)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %25, align 8, !tbaa !51   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bu
  br i1 %i.cb, label %__cxx_global_var_init.5.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.r
  %i.cc = load i64, ptr %i.bu, align 8, !tbaa !45
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #24
  br label %__cxx_global_var_init.5.exit

bb.s:                                             ; preds = %bb.q, %bb.p, %__cxx_global_var_init.3.exit
  %.0.i11 = phi i1 [ false, %bb.q ], [ false, %bb.p ], [ true, %__cxx_global_var_init.3.exit ] ; 2 uses
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cf = load ptr, ptr %25, align 8, !tbaa !51   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bu
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12: ; preds = %bb.s
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !45
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br i1 %.0.i11, label %bb.t, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i13: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br i1 %.0.i11, label %bb.t, label %common.resume

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.5.exit:                     ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  store ptr %i.bz, ptr @_ZL27benchmark_uniq_5_benchmark_, align 8, !tbaa !171
  %i.cj = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ck, ptr %24, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ck, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 14, ptr %i.cl, align 8, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %24, i64 30
  store i8 0, ptr %i.cm, align 2, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %__cxx_global_var_init.5.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.cj, align 8, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 224
  store ptr @_ZL14BM_CalculatePiRN9benchmark5StateE, ptr %i.cn, align 8, !tbaa !148
  %i.co = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.cj)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cp = invoke noundef ptr @_ZN9benchmark8internal9Benchmark11ThreadRangeEii(ptr noundef nonnull align 8 dereferenceable(224) %i.co, i32 noundef 1, i32 noundef 32)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ck
  br i1 %i.cr, label %__cxx_global_var_init.7.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %bb.w
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !45
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #24
  br label %__cxx_global_var_init.7.exit

bb.x:                                             ; preds = %bb.v, %bb.u, %__cxx_global_var_init.5.exit
  %.0.i16 = phi i1 [ false, %bb.v ], [ false, %bb.u ], [ true, %__cxx_global_var_init.5.exit ] ; 2 uses
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cv = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ck
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i17: ; preds = %bb.x
  %i.cx = load i64, ptr %i.ck, align 8, !tbaa !45
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br i1 %.0.i16, label %bb.y, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i18: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br i1 %.0.i16, label %bb.y, label %common.resume

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i17
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.7.exit:                     ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  store ptr %i.cp, ptr @_ZL27benchmark_uniq_6_benchmark_, align 8, !tbaa !171
  %i.cz = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.da, ptr %23, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.da, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 14, ptr %i.db, align 8, !tbaa !44
  %i.dc = getelementptr inbounds nuw i8, ptr %23, i64 30
  store i8 0, ptr %i.dc, align 2, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %__cxx_global_var_init.7.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.cz, align 8, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 224
  store ptr @_ZL14BM_CalculatePiRN9benchmark5StateE, ptr %i.dd, align 8, !tbaa !148
  %i.de = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.cz)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.df = invoke noundef ptr @_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv(ptr noundef nonnull align 8 dereferenceable(224) %i.de)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load ptr, ptr %23, align 8, !tbaa !51   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.da
  br i1 %i.dh, label %__cxx_global_var_init.8.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.ab
  %i.di = load i64, ptr %i.da, align 8, !tbaa !45
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #24
  br label %__cxx_global_var_init.8.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z, %__cxx_global_var_init.7.exit
  %.0.i21 = phi i1 [ false, %bb.aa ], [ false, %bb.z ], [ true, %__cxx_global_var_init.7.exit ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dl = load ptr, ptr %23, align 8, !tbaa !51   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.da
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i22: ; preds = %bb.ac
  %i.dn = load i64, ptr %i.da, align 8, !tbaa !45
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br i1 %.0.i21, label %bb.ad, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i23: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br i1 %.0.i21, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i22
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.8.exit:                     ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  store ptr %i.df, ptr @_ZL27benchmark_uniq_7_benchmark_, align 8, !tbaa !171
  %i.dp = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  store ptr %i.dq, ptr %21, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dq, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 12, ptr %i.dr, align 8, !tbaa !44
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 28
  store i8 0, ptr %i.ds, align 4, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %__cxx_global_var_init.8.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.dp, align 8, !tbaa !52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  store ptr @_ZL12BM_SetInsertRN9benchmark5StateE, ptr %i.dt, align 8, !tbaa !148
  %i.du = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.dp)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.dv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %bb.ag unwind label %bb.aj     ; 6 uses

bb.ag:                                            ; preds = %bb.af
  store ptr %i.dv, ptr %22, align 8, !tbaa !173
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !176
  store i64 1024, ptr %i.dv, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 8192, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 128, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i64 512, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !177
  %i.dz = invoke noundef ptr @_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %22, align 8, !tbaa !173  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !176
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #24
  br label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i:      ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ef = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dq
  br i1 %i.eg, label %__cxx_global_var_init.9.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i
  %i.eh = load i64, ptr %i.dq, align 8, !tbaa !45
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #24
  br label %__cxx_global_var_init.9.exit

bb.aj:                                            ; preds = %bb.af
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %22, align 8, !tbaa !173  ; 3 uses
  %.not.i.i.i13.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i13.i, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = load ptr, ptr %i.dx, align 8, !tbaa !176
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #24
  br label %.thread.i

bb.am:                                            ; preds = %bb.ae, %__cxx_global_var_init.8.exit
  %.05.i = phi i1 [ false, %bb.ae ], [ true, %__cxx_global_var_init.8.exit ] ; 2 uses
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.er = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dq
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

.thread.i:                                        ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.et = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.dq
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i: ; preds = %.thread.i
  %i.ev = load i64, ptr %i.dq, align 8, !tbaa !45
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %bb.am
  %i.ex = load i64, ptr %i.dq, align 8, !tbaa !45
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ey) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br i1 %.05.i, label %bb.an, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br i1 %.05.i, label %bb.an, label %common.resume

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.9.exit:                     ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  store ptr %i.dz, ptr @_ZL27benchmark_uniq_8_benchmark_, align 8, !tbaa !171
  %i.ez = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.fa, ptr %20, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #22
  store i64 35, ptr %i.r, align 8, !tbaa !58
  %i.fb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc.i31 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28 ; 3 uses

.noexc.i31:                                       ; preds = %__cxx_global_var_init.9.exit
  store ptr %i.fb, ptr %20, align 8, !tbaa !51
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !58  ; 3 uses
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.fb, ptr noundef nonnull align 1 dereferenceable(35) @.str.12, i64 35, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !44
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %.noexc.i31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.ez, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 224
  store ptr @_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE, ptr %i.ff, align 8, !tbaa !148
  %i.fg = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.ez)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fh = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.fg, i64 noundef 1, i64 noundef 1024)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fi = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.fa
  br i1 %i.fj, label %__cxx_global_var_init.11.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.aq
  %i.fk = load i64, ptr %i.fa, align 8, !tbaa !45
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #24
  br label %__cxx_global_var_init.11.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28: ; preds = %__cxx_global_var_init.9.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %.noexc.i31
  %.0.i32 = phi i1 [ false, %bb.ap ], [ false, %bb.ao ], [ true, %.noexc.i31 ] ; 2 uses
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fo = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.fa
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33: ; preds = %bb.ar
  %i.fq = load i64, ptr %i.fa, align 8, !tbaa !45
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br i1 %.0.i32, label %bb.as, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br i1 %.0.i32, label %bb.as, label %common.resume

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
  %.pn12.i29 = phi { ptr, i32 } [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34 ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  store ptr %i.fh, ptr @_ZL29benchmark_uniq_9BM_Sequential, align 8, !tbaa !171
  %i.fs = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.ft, ptr %19, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  store i64 29, ptr %i.q, align 8, !tbaa !58
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc.i40 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37 ; 2 uses

.noexc.i40:                                       ; preds = %__cxx_global_var_init.11.exit
  store ptr %i.fu, ptr %19, align 8, !tbaa !51
  %i.fv = load i64, ptr %i.q, align 8, !tbaa !58  ; 3 uses
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.fu, ptr noundef nonnull align 1 dereferenceable(29) @.str.14, i64 29, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !44
  %i.fx = load ptr, ptr %19, align 8, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fv
  store i8 0, ptr %i.fy, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %.noexc.i40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.fs, align 8, !tbaa !52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 224
  store ptr @_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE, ptr %i.fz, align 8, !tbaa !148
  %i.ga = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.fs)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gb = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.ga, i64 noundef 1, i64 noundef 1024)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gc = load ptr, ptr %19, align 8, !tbaa !51   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ft
  br i1 %i.gd, label %__cxx_global_var_init.13.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.av
  %i.ge = load i64, ptr %i.ft, align 8, !tbaa !45
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #24
  br label %__cxx_global_var_init.13.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37: ; preds = %__cxx_global_var_init.11.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au, %bb.at, %.noexc.i40
  %.0.i41 = phi i1 [ false, %bb.au ], [ false, %bb.at ], [ true, %.noexc.i40 ] ; 2 uses
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gi = load ptr, ptr %19, align 8, !tbaa !51   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ft
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i42: ; preds = %bb.aw
  %i.gk = load i64, ptr %i.ft, align 8, !tbaa !45
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br i1 %.0.i41, label %bb.ax, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i43: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br i1 %.0.i41, label %bb.ax, label %common.resume

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37
  %.pn12.i38 = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37 ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i43 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i42 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.13.exit:                    ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  store ptr %i.gb, ptr @_ZL30benchmark_uniq_10BM_Sequential, align 8, !tbaa !171
  %i.gm = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.gn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.gn, ptr %18, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  store i64 36, ptr %i.p, align 8, !tbaa !58
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc.i49 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46 ; 3 uses

.noexc.i49:                                       ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.go, ptr %18, align 8, !tbaa !51
  %i.gp = load i64, ptr %i.p, align 8, !tbaa !58  ; 3 uses
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.go, ptr noundef nonnull align 1 dereferenceable(36) @.str.16, i64 36, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !44
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  store i8 0, ptr %i.gr, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %.noexc.i49
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.gm, align 8, !tbaa !52
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 224
  store ptr @_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE, ptr %i.gs, align 8, !tbaa !148
  %i.gt = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.gm)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gu = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.gt, i64 noundef 512)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gn
  br i1 %i.gw, label %__cxx_global_var_init.15.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.ba
  %i.gx = load i64, ptr %i.gn, align 8, !tbaa !45
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #24
  br label %__cxx_global_var_init.15.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46: ; preds = %__cxx_global_var_init.13.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az, %bb.ay, %.noexc.i49
  %.0.i50 = phi i1 [ false, %bb.az ], [ false, %bb.ay ], [ true, %.noexc.i49 ] ; 2 uses
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hb = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gn
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i51: ; preds = %bb.bb
  %i.hd = load i64, ptr %i.gn, align 8, !tbaa !45
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %.0.i50, label %bb.bc, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %.0.i50, label %bb.bc, label %common.resume

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46
  %.pn12.i47 = phi { ptr, i32 } [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52 ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i51 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.15.exit:                    ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  store ptr %i.gu, ptr @_ZL30benchmark_uniq_11BM_Sequential, align 8, !tbaa !171
  %i.hf = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.hg, ptr %17, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  store i64 16, ptr %i.o, align 8, !tbaa !58
  %i.hh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc.i58 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55 ; 2 uses

.noexc.i58:                                       ; preds = %__cxx_global_var_init.15.exit
  store ptr %i.hh, ptr %17, align 8, !tbaa !51
  %i.hi = load i64, ptr %i.o, align 8, !tbaa !58  ; 3 uses
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hh, ptr noundef nonnull align 1 dereferenceable(16) @.str.18, i64 16, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !44
  %i.hk = load ptr, ptr %17, align 8, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %.noexc.i58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.hf, align 8, !tbaa !52
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 224
  store ptr @_ZL16BM_StringCompareRN9benchmark5StateE, ptr %i.hm, align 8, !tbaa !148
  %i.hn = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.hf)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ho = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.hn, i64 noundef 1, i64 noundef 1048576)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hp = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.hg
  br i1 %i.hq, label %__cxx_global_var_init.17.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.bf
  %i.hr = load i64, ptr %i.hg, align 8, !tbaa !45
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #24
  br label %__cxx_global_var_init.17.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55: ; preds = %__cxx_global_var_init.15.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be, %bb.bd, %.noexc.i58
  %.0.i59 = phi i1 [ false, %bb.be ], [ false, %bb.bd ], [ true, %.noexc.i58 ] ; 2 uses
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hv = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hg
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i60: ; preds = %bb.bg
  %i.hx = load i64, ptr %i.hg, align 8, !tbaa !45
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br i1 %.0.i59, label %bb.bh, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i61: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br i1 %.0.i59, label %bb.bh, label %common.resume

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55
  %.pn12.i56 = phi { ptr, i32 } [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i61 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i60 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.17.exit:                    ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  store ptr %i.ho, ptr @_ZL28benchmark_uniq_12_benchmark_, align 8, !tbaa !171
  %i.hz = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.ia = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ia, ptr %16, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  store i64 16, ptr %i.n, align 8, !tbaa !58
  %i.ib = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc.i67 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64 ; 2 uses

.noexc.i67:                                       ; preds = %__cxx_global_var_init.17.exit
  store ptr %i.ib, ptr %16, align 8, !tbaa !51
  %i.ic = load i64, ptr %i.n, align 8, !tbaa !58  ; 3 uses
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ib, ptr noundef nonnull align 1 dereferenceable(16) @.str.20, i64 16, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !44
  %i.ie = load ptr, ptr %16, align 8, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ic
  store i8 0, ptr %i.if, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %.noexc.i67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.hz, align 8, !tbaa !52
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 224
  store ptr @_ZL16BM_SetupTeardownRN9benchmark5StateE, ptr %i.ig, align 8, !tbaa !148
  %i.ih = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.hz)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ii = invoke noundef ptr @_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ih)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ij = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ia
  br i1 %i.ik, label %__cxx_global_var_init.19.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.bk
  %i.il = load i64, ptr %i.ia, align 8, !tbaa !45
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #24
  br label %__cxx_global_var_init.19.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64: ; preds = %__cxx_global_var_init.17.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %.noexc.i67
  %.0.i68 = phi i1 [ false, %bb.bj ], [ false, %bb.bi ], [ true, %.noexc.i67 ] ; 2 uses
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ip = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ia
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i69: ; preds = %bb.bl
  %i.ir = load i64, ptr %i.ia, align 8, !tbaa !45
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br i1 %.0.i68, label %bb.bm, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i70: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br i1 %.0.i68, label %bb.bm, label %common.resume

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64
  %.pn12.i65 = phi { ptr, i32 } [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64 ], [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i70 ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i69 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.19.exit:                    ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  store ptr %i.ii, ptr @_ZL28benchmark_uniq_13_benchmark_, align 8, !tbaa !171
  %i.it = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.iu, ptr %15, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.iu, ptr noundef nonnull align 1 dereferenceable(11) @.str.22, i64 11, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 11, ptr %i.iv, align 8, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %15, i64 27
  store i8 0, ptr %i.iw, align 1, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %__cxx_global_var_init.19.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.it, align 8, !tbaa !52
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 224
  store ptr @_ZL11BM_LongTestRN9benchmark5StateE, ptr %i.ix, align 8, !tbaa !148
  %i.iy = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.it)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.iz = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.iy, i64 noundef 65536, i64 noundef 268435456)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ja = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.iu
  br i1 %i.jb, label %__cxx_global_var_init.21.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.bp
  %i.jc = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #24
  br label %__cxx_global_var_init.21.exit

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %__cxx_global_var_init.19.exit
  %.0.i73 = phi i1 [ false, %bb.bo ], [ false, %bb.bn ], [ true, %__cxx_global_var_init.19.exit ] ; 2 uses
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jf = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.iu
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i74: ; preds = %bb.bq
  %i.jh = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %.0.i73, label %bb.br, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i75: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %.0.i73, label %bb.br, label %common.resume

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.21.exit:                    ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  store ptr %i.iz, ptr @_ZL28benchmark_uniq_14_benchmark_, align 8, !tbaa !171
  %i.jj = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.jk, ptr %14, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store i64 17, ptr %i.m, align 8, !tbaa !58
  %i.jl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc.i81 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i78 ; 2 uses

.noexc.i81:                                       ; preds = %__cxx_global_var_init.21.exit
  store ptr %i.jl, ptr %14, align 8, !tbaa !51
  %i.jm = load i64, ptr %i.m, align 8, !tbaa !58  ; 3 uses
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.jl, ptr noundef nonnull align 1 dereferenceable(17) @.str.24, i64 17, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !44
  %i.jo = load ptr, ptr %14, align 8, !tbaa !51
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jm
  store i8 0, ptr %i.jp, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %.noexc.i81
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.jj, align 8, !tbaa !52
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 224
  store ptr @_ZL17BM_ParallelMemsetRN9benchmark5StateE, ptr %i.jq, align 8, !tbaa !148
  %i.jr = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.jj)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.js = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.jr, i64 noundef 10485760)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jt = invoke noundef ptr @_ZN9benchmark8internal9Benchmark11ThreadRangeEii(ptr noundef nonnull align 8 dereferenceable(224) %i.js, i32 noundef 1, i32 noundef 4)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ju = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.jk
  br i1 %i.jv, label %__cxx_global_var_init.23.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.bv
  %i.jw = load i64, ptr %i.jk, align 8, !tbaa !45
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #24
  br label %__cxx_global_var_init.23.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i78: ; preds = %__cxx_global_var_init.21.exit
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %.noexc.i81
  %.0.i82 = phi i1 [ false, %bb.bu ], [ false, %bb.bt ], [ false, %bb.bs ], [ true, %.noexc.i81 ] ; 2 uses
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ka = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jk
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i83: ; preds = %bb.bw
  %i.kc = load i64, ptr %i.jk, align 8, !tbaa !45
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0.i82, label %bb.bx, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i84: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0.i82, label %bb.bx, label %common.resume

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i78
  %.pn12.i79 = phi { ptr, i32 } [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i78 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i84 ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i83 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.23.exit:                    ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  store ptr %i.jt, ptr @_ZL28benchmark_uniq_15_benchmark_, align 8, !tbaa !171
  %i.ke = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.kf, ptr %13, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.kf, ptr noundef nonnull align 1 dereferenceable(15) @.str.26, i64 15, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 15, ptr %i.kg, align 8, !tbaa !44
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 31
  store i8 0, ptr %i.kh, align 1, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %__cxx_global_var_init.23.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.ke, align 8, !tbaa !52
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 224
  store ptr @_ZL15BM_ManualTimingRN9benchmark5StateE, ptr %i.ki, align 8, !tbaa !148
  %i.kj = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.ke)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.kk = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.kj, i64 noundef 1, i64 noundef 16384)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.kl = invoke noundef ptr @_ZN9benchmark8internal9Benchmark11UseRealTimeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.kk)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.km = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.kf
  br i1 %i.kn, label %__cxx_global_var_init.25.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90: ; preds = %bb.cb
  %i.ko = load i64, ptr %i.kf, align 8, !tbaa !45
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #24
  br label %__cxx_global_var_init.25.exit

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %__cxx_global_var_init.23.exit
  %.0.i87 = phi i1 [ false, %bb.ca ], [ false, %bb.bz ], [ false, %bb.by ], [ true, %__cxx_global_var_init.23.exit ] ; 2 uses
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kr = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.kf
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i88: ; preds = %bb.cc
  %i.kt = load i64, ptr %i.kf, align 8, !tbaa !45
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.0.i87, label %bb.cd, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i89: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.0.i87, label %bb.cd, label %common.resume

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i88
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.25.exit:                    ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  store ptr %i.kl, ptr @_ZL28benchmark_uniq_16_benchmark_, align 8, !tbaa !171
  %i.kv = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.kw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.kw, ptr %12, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.kw, ptr noundef nonnull align 1 dereferenceable(15) @.str.26, i64 15, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 15, ptr %i.kx, align 8, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 31
  store i8 0, ptr %i.ky, align 1, !tbaa !45
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %__cxx_global_var_init.25.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.kv, align 8, !tbaa !52
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 224
  store ptr @_ZL15BM_ManualTimingRN9benchmark5StateE, ptr %i.kz, align 8, !tbaa !148
  %i.la = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.kv)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.lb = invoke noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224) %i.la, i64 noundef 1, i64 noundef 16384)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.lc = invoke noundef ptr @_ZN9benchmark8internal9Benchmark13UseManualTimeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.lb)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ld = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.kw
  br i1 %i.le, label %__cxx_global_var_init.27.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %bb.ch
  %i.lf = load i64, ptr %i.kw, align 8, !tbaa !45
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #24
  br label %__cxx_global_var_init.27.exit

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %__cxx_global_var_init.25.exit
  %.0.i92 = phi i1 [ false, %bb.cg ], [ false, %bb.cf ], [ false, %bb.ce ], [ true, %__cxx_global_var_init.25.exit ] ; 2 uses
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.li = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.kw
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i93: ; preds = %bb.ci
  %i.lk = load i64, ptr %i.kw, align 8, !tbaa !45
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.0.i92, label %bb.cj, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i94: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.0.i92, label %bb.cj, label %common.resume

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.27.exit:                    ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  store ptr %i.lc, ptr @_ZL28benchmark_uniq_17_benchmark_, align 8, !tbaa !171
  %i.lm = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ln, ptr %11, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i64 21, ptr %i.l, align 8, !tbaa !58
  %i.lo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc.i99 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i97 ; 2 uses

.noexc.i99:                                       ; preds = %__cxx_global_var_init.27.exit
  store ptr %i.lo, ptr %11, align 8, !tbaa !51
  %i.lp = load i64, ptr %i.l, align 8, !tbaa !58  ; 3 uses
  store i64 %i.lp, ptr %i.ln, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.lo, ptr noundef nonnull align 1 dereferenceable(21) @.str.29, i64 21, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !44
  %i.lr = load ptr, ptr %11, align 8, !tbaa !51
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp
  store i8 0, ptr %i.ls, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %.noexc.i99
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.lm, align 8, !tbaa !52
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 224
  store ptr @"_ZN3$_08__invokeERN9benchmark5StateE", ptr %i.lt, align 8, !tbaa !148
  %i.lu = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.lm)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lv = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.ln
  br i1 %i.lw, label %__cxx_global_var_init.28.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103: ; preds = %bb.cl
  %i.lx = load i64, ptr %i.ln, align 8, !tbaa !45
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #24
  br label %__cxx_global_var_init.28.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i97: ; preds = %__cxx_global_var_init.27.exit
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %.noexc.i99
  %.0.i100 = phi i1 [ false, %bb.ck ], [ true, %.noexc.i99 ] ; 2 uses
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mb = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ln
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i101: ; preds = %bb.cm
  %i.md = load i64, ptr %i.ln, align 8, !tbaa !45
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.0.i100, label %bb.cn, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i102: ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.0.i100, label %bb.cn, label %common.resume

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i97
  %.pn13.i = phi { ptr, i32 } [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i97 ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i102 ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i101 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.28.exit:                    ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  store ptr %i.lu, ptr @_ZL28benchmark_uniq_18_benchmark_, align 8, !tbaa !171
  %i.mf = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.mg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.mg, ptr %10, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i64 33, ptr %i.k, align 8, !tbaa !58
  %i.mh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc.i108 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i105 ; 3 uses

.noexc.i108:                                      ; preds = %__cxx_global_var_init.28.exit
  store ptr %i.mh, ptr %10, align 8, !tbaa !51
  %i.mi = load i64, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  store i64 %i.mi, ptr %i.mg, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.mh, ptr noundef nonnull align 1 dereferenceable(33) @.str.31, i64 33, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !44
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mi
  store i8 0, ptr %i.mk, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %.noexc.i108
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.mf, align 8, !tbaa !52
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 224
  store ptr @"_ZN3$_18__invokeERN9benchmark5StateE", ptr %i.ml, align 8, !tbaa !148
  %i.mm = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.mf)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mn = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.mg
  br i1 %i.mo, label %__cxx_global_var_init.30.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112: ; preds = %bb.cp
  %i.mp = load i64, ptr %i.mg, align 8, !tbaa !45
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #24
  br label %__cxx_global_var_init.30.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i105: ; preds = %__cxx_global_var_init.28.exit
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co, %.noexc.i108
  %.0.i109 = phi i1 [ false, %bb.co ], [ true, %.noexc.i108 ] ; 2 uses
  %i.ms = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mt = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.mg
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i110: ; preds = %bb.cq
  %i.mv = load i64, ptr %i.mg, align 8, !tbaa !45
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %.0.i109, label %bb.cr, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i111: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %.0.i109, label %bb.cr, label %common.resume

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i105
  %.pn13.i106 = phi { ptr, i32 } [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i105 ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i111 ], [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i110 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.30.exit:                    ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store ptr %i.mm, ptr @_ZL28benchmark_uniq_19_benchmark_, align 8, !tbaa !171
  %i.mx = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.my, ptr %9, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store i64 31, ptr %i.j, align 8, !tbaa !58
  %i.mz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc.i117 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i114 ; 2 uses

.noexc.i117:                                      ; preds = %__cxx_global_var_init.30.exit
  store ptr %i.mz, ptr %9, align 8, !tbaa !51
  %i.na = load i64, ptr %i.j, align 8, !tbaa !58  ; 3 uses
  store i64 %i.na, ptr %i.my, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.mz, ptr noundef nonnull align 1 dereferenceable(31) @.str.33, i64 31, i1 false)
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !44
  %i.nc = load ptr, ptr %9, align 8, !tbaa !51
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.na
  store i8 0, ptr %i.nd, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.mx, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %.noexc.i117
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.mx, align 8, !tbaa !52
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mx, i64 224
  store ptr @"_ZN3$_28__invokeERN9benchmark5StateE", ptr %i.ne, align 8, !tbaa !148
  %i.nf = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.mx)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ng = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.nh = icmp eq ptr %i.ng, %i.my
  br i1 %i.nh, label %__cxx_global_var_init.32.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121: ; preds = %bb.ct
  %i.ni = load i64, ptr %i.my, align 8, !tbaa !45
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nj) #24
  br label %__cxx_global_var_init.32.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i114: ; preds = %__cxx_global_var_init.30.exit
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs, %.noexc.i117
  %.0.i118 = phi i1 [ false, %bb.cs ], [ true, %.noexc.i117 ] ; 2 uses
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nm = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.my
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i119: ; preds = %bb.cu
  %i.no = load i64, ptr %i.my, align 8, !tbaa !45
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0.i118, label %bb.cv, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i120: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0.i118, label %bb.cv, label %common.resume

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i114
  %.pn13.i115 = phi { ptr, i32 } [ %i.nk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i114 ], [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i120 ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i119 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.32.exit:                    ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  store ptr %i.nf, ptr @_ZL28benchmark_uniq_20_benchmark_, align 8, !tbaa !171
  %i.nq = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.nr, ptr %8, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i64 36, ptr %i.i, align 8, !tbaa !58
  %i.ns = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc.i126 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i123 ; 3 uses

.noexc.i126:                                      ; preds = %__cxx_global_var_init.32.exit
  store ptr %i.ns, ptr %8, align 8, !tbaa !51
  %i.nt = load i64, ptr %i.i, align 8, !tbaa !58  ; 3 uses
  store i64 %i.nt, ptr %i.nr, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ns, ptr noundef nonnull align 1 dereferenceable(36) @.str.35, i64 36, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !44
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nt
  store i8 0, ptr %i.nv, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.nq, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %.noexc.i126
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.nq, align 8, !tbaa !52
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 224
  store ptr @"_ZN3$_38__invokeERN9benchmark5StateE", ptr %i.nw, align 8, !tbaa !148
  %i.nx = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.nq)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ny = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.nr
  br i1 %i.nz, label %__cxx_global_var_init.34.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %bb.cx
  %i.oa = load i64, ptr %i.nr, align 8, !tbaa !45
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #24
  br label %__cxx_global_var_init.34.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i123: ; preds = %__cxx_global_var_init.32.exit
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %.noexc.i126
  %.0.i127 = phi i1 [ false, %bb.cw ], [ true, %.noexc.i126 ] ; 2 uses
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.oe = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.nr
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i128: ; preds = %bb.cy
  %i.og = load i64, ptr %i.nr, align 8, !tbaa !45
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i127, label %bb.cz, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i129: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0.i127, label %bb.cz, label %common.resume

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i123
  %.pn13.i124 = phi { ptr, i32 } [ %i.oc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i123 ], [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i129 ], [ %i.od, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i128 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.34.exit:                    ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  store ptr %i.nx, ptr @_ZL37benchmark_uniq_21BM_template2_capture, align 8, !tbaa !171
  %i.oi = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.oj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.oj, ptr %7, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i64 39, ptr %i.h, align 8, !tbaa !58
  %i.ok = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc.i135 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i132 ; 3 uses

.noexc.i135:                                      ; preds = %__cxx_global_var_init.34.exit
  store ptr %i.ok, ptr %7, align 8, !tbaa !51
  %i.ol = load i64, ptr %i.h, align 8, !tbaa !58  ; 3 uses
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.ok, ptr noundef nonnull align 1 dereferenceable(39) @.str.37, i64 39, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !44
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ol
  store i8 0, ptr %i.on, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %.noexc.i135
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.oi, align 8, !tbaa !52
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 224
  store ptr @"_ZN3$_48__invokeERN9benchmark5StateE", ptr %i.oo, align 8, !tbaa !148
  %i.op = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.oi)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.oq = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.oj
  br i1 %i.or, label %__cxx_global_var_init.36.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.db
  %i.os = load i64, ptr %i.oj, align 8, !tbaa !45
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #24
  br label %__cxx_global_var_init.36.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i132: ; preds = %__cxx_global_var_init.34.exit
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da, %.noexc.i135
  %.0.i136 = phi i1 [ false, %bb.da ], [ true, %.noexc.i135 ] ; 2 uses
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ow = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.oj
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i137: ; preds = %bb.dc
  %i.oy = load i64, ptr %i.oj, align 8, !tbaa !45
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i136, label %bb.dd, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i138: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i136, label %bb.dd, label %common.resume

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i132
  %.pn13.i133 = phi { ptr, i32 } [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i132 ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i138 ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i137 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.oi, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.36.exit:                    ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  store ptr %i.op, ptr @_ZL28benchmark_uniq_22_benchmark_, align 8, !tbaa !171
  %i.pa = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.pb, ptr %6, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 30, ptr %i.g, align 8, !tbaa !58
  %i.pc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc.i144 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i141 ; 2 uses

.noexc.i144:                                      ; preds = %__cxx_global_var_init.36.exit
  store ptr %i.pc, ptr %6, align 8, !tbaa !51
  %i.pd = load i64, ptr %i.g, align 8, !tbaa !58  ; 3 uses
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.pc, ptr noundef nonnull align 1 dereferenceable(30) @.str.39, i64 30, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.pd, ptr %i.pe, align 8, !tbaa !44
  %i.pf = load ptr, ptr %6, align 8, !tbaa !51
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pd
  store i8 0, ptr %i.pg, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.pa, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %.noexc.i144
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.pa, align 8, !tbaa !52
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 224
  store ptr @"_ZN3$_58__invokeERN9benchmark5StateE", ptr %i.ph, align 8, !tbaa !148
  %i.pi = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.pa)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pj = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.pb
  br i1 %i.pk, label %__cxx_global_var_init.38.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %bb.df
  %i.pl = load i64, ptr %i.pb, align 8, !tbaa !45
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #24
  br label %__cxx_global_var_init.38.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i141: ; preds = %__cxx_global_var_init.36.exit
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de, %.noexc.i144
  %.0.i145 = phi i1 [ false, %bb.de ], [ true, %.noexc.i144 ] ; 2 uses
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pp = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.pb
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i146: ; preds = %bb.dg
  %i.pr = load i64, ptr %i.pb, align 8, !tbaa !45
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i145, label %bb.dh, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i147: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0.i145, label %bb.dh, label %common.resume

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i141
  %.pn13.i142 = phi { ptr, i32 } [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i141 ], [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i147 ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i146 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.38.exit:                    ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  store ptr %i.pi, ptr @_ZL28benchmark_uniq_23_benchmark_, align 8, !tbaa !171
  %i.pt = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.pu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.pu, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 30, ptr %i.f, align 8, !tbaa !58
  %i.pv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc.i153 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i150 ; 2 uses

.noexc.i153:                                      ; preds = %__cxx_global_var_init.38.exit
  store ptr %i.pv, ptr %5, align 8, !tbaa !51
  %i.pw = load i64, ptr %i.f, align 8, !tbaa !58  ; 3 uses
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.pv, ptr noundef nonnull align 1 dereferenceable(30) @.str.39, i64 30, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !44
  %i.py = load ptr, ptr %5, align 8, !tbaa !51
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.pw
  store i8 0, ptr %i.pz, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %.noexc.i153
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.pt, align 8, !tbaa !52
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 224
  store ptr @"_ZN3$_68__invokeERN9benchmark5StateE", ptr %i.qa, align 8, !tbaa !148
  %i.qb = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.pt)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.qc = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.pu
  br i1 %i.qd, label %__cxx_global_var_init.40.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.dj
  %i.qe = load i64, ptr %i.pu, align 8, !tbaa !45
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #24
  br label %__cxx_global_var_init.40.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i150: ; preds = %__cxx_global_var_init.38.exit
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di, %.noexc.i153
  %.0.i154 = phi i1 [ false, %bb.di ], [ true, %.noexc.i153 ] ; 2 uses
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qi = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.pu
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i155: ; preds = %bb.dk
  %i.qk = load i64, ptr %i.pu, align 8, !tbaa !45
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i154, label %bb.dl, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i154, label %bb.dl, label %common.resume

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i150
  %.pn13.i151 = phi { ptr, i32 } [ %i.qg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i150 ], [ %i.qh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156 ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i155 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.40.exit:                    ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  store ptr %i.qb, ptr @_ZL28benchmark_uniq_24_benchmark_, align 8, !tbaa !171
  %i.qm = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.qn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.qn, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 20, ptr %i.e, align 8, !tbaa !58
  %i.qo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i162 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i159 ; 2 uses

.noexc.i162:                                      ; preds = %__cxx_global_var_init.40.exit
  store ptr %i.qo, ptr %4, align 8, !tbaa !51
  %i.qp = load i64, ptr %i.e, align 8, !tbaa !58  ; 3 uses
  store i64 %i.qp, ptr %i.qn, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.qo, ptr noundef nonnull align 1 dereferenceable(20) @.str.42, i64 20, i1 false)
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.qp, ptr %i.qq, align 8, !tbaa !44
  %i.qr = load ptr, ptr %4, align 8, !tbaa !51
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qp
  store i8 0, ptr %i.qs, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.qm, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %.noexc.i162
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.qm, align 8, !tbaa !52
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qm, i64 224
  store ptr @_ZL20BM_DenseThreadRangesRN9benchmark5StateE, ptr %i.qt, align 8, !tbaa !148
  %i.qu = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.qm)
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.qv = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.qu, i64 noundef 1)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.qw = invoke noundef ptr @_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii(ptr noundef nonnull align 8 dereferenceable(224) %i.qv, i32 noundef 1, i32 noundef 3, i32 noundef 1)
          to label %bb.dp unwind label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.qx = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.qn
  br i1 %i.qy, label %__cxx_global_var_init.41.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166: ; preds = %bb.dp
  %i.qz = load i64, ptr %i.qn, align 8, !tbaa !45
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #24
  br label %__cxx_global_var_init.41.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i159: ; preds = %__cxx_global_var_init.40.exit
  %i.rb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %.noexc.i162
  %.0.i163 = phi i1 [ false, %bb.do ], [ false, %bb.dn ], [ false, %bb.dm ], [ true, %.noexc.i162 ] ; 2 uses
  %i.rc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rd = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.qn
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i164: ; preds = %bb.dq
  %i.rf = load i64, ptr %i.qn, align 8, !tbaa !45
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i163, label %bb.dr, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i165: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i163, label %bb.dr, label %common.resume

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i159
  %.pn12.i160 = phi { ptr, i32 } [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i159 ], [ %i.rc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i165 ], [ %i.rc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i164 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.41.exit:                    ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.qw, ptr @_ZL28benchmark_uniq_25_benchmark_, align 8, !tbaa !171
  %i.rh = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ri, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 20, ptr %i.d, align 8, !tbaa !58
  %i.rj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i171 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i168 ; 2 uses

.noexc.i171:                                      ; preds = %__cxx_global_var_init.41.exit
  store ptr %i.rj, ptr %3, align 8, !tbaa !51
  %i.rk = load i64, ptr %i.d, align 8, !tbaa !58  ; 3 uses
  store i64 %i.rk, ptr %i.ri, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.rj, ptr noundef nonnull align 1 dereferenceable(20) @.str.42, i64 20, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.rk, ptr %i.rl, align 8, !tbaa !44
  %i.rm = load ptr, ptr %3, align 8, !tbaa !51
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rk
  store i8 0, ptr %i.rn, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.rh, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %.noexc.i171
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.rh, align 8, !tbaa !52
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 224
  store ptr @_ZL20BM_DenseThreadRangesRN9benchmark5StateE, ptr %i.ro, align 8, !tbaa !148
  %i.rp = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.rh)
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.rq = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.rp, i64 noundef 2)
          to label %bb.du unwind label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.rr = invoke noundef ptr @_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii(ptr noundef nonnull align 8 dereferenceable(224) %i.rq, i32 noundef 1, i32 noundef 4, i32 noundef 2)
          to label %bb.dv unwind label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.rs = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.ri
  br i1 %i.rt, label %__cxx_global_var_init.43.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175: ; preds = %bb.dv
  %i.ru = load i64, ptr %i.ri, align 8, !tbaa !45
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #24
  br label %__cxx_global_var_init.43.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i168: ; preds = %__cxx_global_var_init.41.exit
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %.noexc.i171
  %.0.i172 = phi i1 [ false, %bb.du ], [ false, %bb.dt ], [ false, %bb.ds ], [ true, %.noexc.i171 ] ; 2 uses
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ry = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.ri
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i173: ; preds = %bb.dw
  %i.sa = load i64, ptr %i.ri, align 8, !tbaa !45
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sb) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i172, label %bb.dx, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i174: ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i172, label %bb.dx, label %common.resume

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i168
  %.pn12.i169 = phi { ptr, i32 } [ %i.rw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i168 ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i174 ], [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i173 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.43.exit:                    ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.rr, ptr @_ZL28benchmark_uniq_26_benchmark_, align 8, !tbaa !171
  %i.sc = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.sd, ptr %2, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 20, ptr %i.c, align 8, !tbaa !58
  %i.se = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i180 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i177 ; 2 uses

.noexc.i180:                                      ; preds = %__cxx_global_var_init.43.exit
  store ptr %i.se, ptr %2, align 8, !tbaa !51
  %i.sf = load i64, ptr %i.c, align 8, !tbaa !58  ; 3 uses
  store i64 %i.sf, ptr %i.sd, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.se, ptr noundef nonnull align 1 dereferenceable(20) @.str.42, i64 20, i1 false)
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !44
  %i.sh = load ptr, ptr %2, align 8, !tbaa !51
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sf
  store i8 0, ptr %i.si, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.sc, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %.noexc.i180
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.sc, align 8, !tbaa !52
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 224
  store ptr @_ZL20BM_DenseThreadRangesRN9benchmark5StateE, ptr %i.sj, align 8, !tbaa !148
  %i.sk = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.sc)
          to label %bb.dz unwind label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.sl = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.sk, i64 noundef 3)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.sm = invoke noundef ptr @_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii(ptr noundef nonnull align 8 dereferenceable(224) %i.sl, i32 noundef 5, i32 noundef 14, i32 noundef 3)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.sn = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.sd
  br i1 %i.so, label %__cxx_global_var_init.44.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184: ; preds = %bb.eb
  %i.sp = load i64, ptr %i.sd, align 8, !tbaa !45
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #24
  br label %__cxx_global_var_init.44.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i177: ; preds = %__cxx_global_var_init.43.exit
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %.noexc.i180
  %.0.i181 = phi i1 [ false, %bb.ea ], [ false, %bb.dz ], [ false, %bb.dy ], [ true, %.noexc.i180 ] ; 2 uses
  %i.ss = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.st = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.sd
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182: ; preds = %bb.ec
  %i.sv = load i64, ptr %i.sd, align 8, !tbaa !45
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i181, label %bb.ed, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i181, label %bb.ed, label %common.resume

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i177
  %.pn12.i178 = phi { ptr, i32 } [ %i.sr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i177 ], [ %i.ss, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i183 ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i182 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.44.exit:                    ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %i.sm, ptr @_ZL28benchmark_uniq_27_benchmark_, align 8, !tbaa !171
  %i.sx = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.sy, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 16, ptr %i.b, align 8, !tbaa !58
  %i.sz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i189 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i186 ; 2 uses

.noexc.i189:                                      ; preds = %__cxx_global_var_init.44.exit
  store ptr %i.sz, ptr %1, align 8, !tbaa !51
  %i.ta = load i64, ptr %i.b, align 8, !tbaa !58  ; 3 uses
  store i64 %i.ta, ptr %i.sy, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sz, ptr noundef nonnull align 1 dereferenceable(16) @.str.46, i64 16, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ta, ptr %i.tb, align 8, !tbaa !44
  %i.tc = load ptr, ptr %1, align 8, !tbaa !51
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.ta
  store i8 0, ptr %i.td, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.sx, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %.noexc.i189
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.sx, align 8, !tbaa !52
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 224
  store ptr @_ZL16BM_BenchmarkNameRN9benchmark5StateE, ptr %i.te, align 8, !tbaa !148
  %i.tf = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.sx)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.tg = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.sy
  br i1 %i.th, label %__cxx_global_var_init.45.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193: ; preds = %bb.ef
  %i.ti = load i64, ptr %i.sy, align 8, !tbaa !45
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tj) #24
  br label %__cxx_global_var_init.45.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i186: ; preds = %__cxx_global_var_init.44.exit
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee, %.noexc.i189
  %.0.i190 = phi i1 [ false, %bb.ee ], [ true, %.noexc.i189 ] ; 2 uses
  %i.tl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tm = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.sy
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i191: ; preds = %bb.eg
  %i.to = load i64, ptr %i.sy, align 8, !tbaa !45
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i190, label %bb.eh, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i192: ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i190, label %bb.eh, label %common.resume

bb.eh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i186
  %.pn12.i187 = phi { ptr, i32 } [ %i.tk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i186 ], [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i192 ], [ %i.tl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i191 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.45.exit:                    ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store ptr %i.tf, ptr @_ZL28benchmark_uniq_28_benchmark_, align 8, !tbaa !171
  %i.tq = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.tr, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 24, ptr %i.a, align 8, !tbaa !58
  %i.ts = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i198 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i195 ; 2 uses

.noexc.i198:                                      ; preds = %__cxx_global_var_init.45.exit
  store ptr %i.ts, ptr %0, align 8, !tbaa !51
  %i.tt = load i64, ptr %i.a, align 8, !tbaa !58  ; 3 uses
  store i64 %i.tt, ptr %i.tr, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ts, ptr noundef nonnull align 1 dereferenceable(24) @.str.48, i64 24, i1 false)
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.tt, ptr %i.tu, align 8, !tbaa !44
  %i.tv = load ptr, ptr %0, align 8, !tbaa !51
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tt
  store i8 0, ptr %i.tw, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %.noexc.i198
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.tq, align 8, !tbaa !52
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 224
  store ptr @_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE, ptr %i.tx, align 8, !tbaa !148
  %i.ty = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.tq)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.tz = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.tr
  br i1 %i.ua, label %__cxx_global_var_init.47.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202: ; preds = %bb.ej
  %i.ub = load i64, ptr %i.tr, align 8, !tbaa !45
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.uc) #24
  br label %__cxx_global_var_init.47.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i195: ; preds = %__cxx_global_var_init.45.exit
  %i.ud = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei, %.noexc.i198
  %.0.i199 = phi i1 [ false, %bb.ei ], [ true, %.noexc.i198 ] ; 2 uses
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.uf = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.tr
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i200: ; preds = %bb.ek
  %i.uh = load i64, ptr %i.tr, align 8, !tbaa !45
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.ui) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br i1 %.0.i199, label %bb.el, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i201: ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br i1 %.0.i199, label %bb.el, label %common.resume

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i195
  %.pn12.i196 = phi { ptr, i32 } [ %i.ud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i195 ], [ %i.ue, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i201 ], [ %i.ue, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i200 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef 232) #24
  br label %common.resume

__cxx_global_var_init.47.exit:                    ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  store ptr %i.ty, ptr @_ZL28benchmark_uniq_29_benchmark_, align 8, !tbaa !171
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #21

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 28}
!9 = !{!"_ZTSN9benchmark5StateE", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 25, !12, i64 28, !13, i64 32, !10, i64 56, !19, i64 64, !28, i64 112, !5, i64 144, !5, i64 148, !31, i64 152, !32, i64 160, !33, i64 168, !34, i64 176}
!10 = !{!"long", !6, i64 0}
!11 = !{!"bool", !6, i64 0}
!12 = !{!"_ZTSN9benchmark8internal7SkippedE", !6, i64 0}
!13 = !{!"_ZTSSt6vectorIlSaIlEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !20, i64 0}
!20 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !21, i64 0}
!21 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !22, i64 0, !24, i64 8}
!22 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !23, i64 0}
!23 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!24 = !{!"_ZTSSt15_Rb_tree_header", !25, i64 0, !10, i64 32}
!25 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!26 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!27 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !10, i64 8, !6, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !18, i64 0}
!31 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !18, i64 0}
!32 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !18, i64 0}
!33 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !18, i64 0}
!34 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !18, i64 0}
!35 = !{!"branch_weights", i32 1, i32 127}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!38 = distinct !{!38, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!41 = distinct !{!41, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!42 = !{!29, !30, i64 0}
!43 = !{!40, !37}
!44 = !{!28, !10, i64 8}
!45 = !{!6, !6, i64 0}
!46 = !{!47, !30, i64 40}
!47 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !48, i64 56}
!48 = !{!"_ZTSSt6locale", !49, i64 0}
!49 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!50 = !{!47, !30, i64 32}
!51 = !{!28, !30, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !7, i64 0}
!54 = !{!55, !10, i64 8}
!55 = !{!"_ZTSSi", !10, i64 8}
!56 = !{!16, !17, i64 8}
!57 = !{!16, !17, i64 0}
!58 = !{!10, !10, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"branch_weights", i32 127, i32 255873}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63}
!69 = !{!70, !70, i64 0}
!70 = !{!"double", !6, i64 0}
!71 = !{i64 48760}
!72 = !{!24, !26, i64 0}
!73 = !{!24, !27, i64 8}
!74 = !{!24, !27, i64 16}
!75 = !{!24, !27, i64 24}
!76 = !{!24, !10, i64 32}
!77 = !{!9, !11, i64 24}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = !{!9, !10, i64 16}
!82 = !{!9, !10, i64 0}
!83 = !{!9, !10, i64 8}
!84 = !{!85, !85, i64 0}
!85 = !{!"_ZTSN9benchmark7Counter5FlagsE", !6, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"_ZTSN9benchmark7Counter4OneKE", !6, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN12_GLOBAL__N_118ConstructRandomSetEl: argument 0"}
!90 = distinct !{!90, !"_ZN12_GLOBAL__N_118ConstructRandomSetEl"}
!91 = !{!27, !27, i64 0}
!92 = distinct !{!92, !60}
!93 = distinct !{!93, !60}
!94 = !{!25, !27, i64 8}
!95 = distinct !{!95, !60}
!96 = !{!97, !98, i64 8}
!97 = !{!"_ZTSNSt8__detail15_List_node_baseE", !98, i64 0, !98, i64 8}
!98 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !18, i64 0}
!99 = !{!97, !98, i64 0}
!100 = !{!101, !10, i64 16}
!101 = !{!"_ZTSNSt8__detail17_List_node_headerE", !97, i64 0, !10, i64 16}
!102 = distinct !{!102, !60}
!103 = !{!104, !10, i64 16}
!104 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEEE", !105, i64 0}
!105 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEE10_List_implE", !101, i64 0}
!106 = !{!9, !5, i64 144}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !18, i64 0}
!109 = !{!"branch_weights", i32 0, i32 -2147483648}
!110 = !{!111, !112, i64 8}
!111 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!112 = !{!"p1 int", !18, i64 0}
!113 = !{!111, !112, i64 16}
!114 = !{!111, !112, i64 0}
!115 = distinct !{!115, !60}
!116 = !{!9, !5, i64 148}
!117 = distinct !{!117, !60}
!118 = !{!119, !10, i64 0}
!119 = !{!"_ZTS8timespec", !10, i64 0, !10, i64 8}
!120 = !{!119, !10, i64 8}
!121 = distinct !{!121, !60}
!122 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!123 = distinct !{!123, !60}
!124 = distinct !{!124, !60}
!125 = !{!30, !30, i64 0}
!126 = distinct !{!126, !127, !128}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = !{!25, !27, i64 24}
!130 = !{!25, !27, i64 16}
!131 = distinct !{!131, !60}
!132 = distinct !{!132, !60}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!137 = distinct !{!137, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !18, i64 0}
!140 = !{!141, !70, i64 0}
!141 = !{!"_ZTSN9benchmark7CounterE", !70, i64 0, !85, i64 8, !87, i64 12}
!142 = !{!141, !85, i64 8}
!143 = !{!141, !87, i64 12}
!144 = !{!145, !146, i64 8}
!145 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !139, i64 0, !146, i64 8}
!146 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEEE", !18, i64 0}
!147 = distinct !{!147, !60}
!148 = !{!149, !18, i64 224}
!149 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !150, i64 0, !18, i64 224}
!150 = !{!"_ZTSN9benchmark8internal9BenchmarkE", !28, i64 8, !151, i64 40, !152, i64 48, !156, i64 72, !161, i64 96, !11, i64 100, !5, i64 104, !70, i64 112, !70, i64 120, !10, i64 128, !5, i64 136, !11, i64 140, !11, i64 141, !11, i64 142, !162, i64 144, !18, i64 152, !163, i64 160, !168, i64 184, !18, i64 208, !18, i64 216}
!151 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!152 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !153, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !154, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!156 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !157, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !158, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !159, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !160, i64 0, !160, i64 8, !160, i64 16}
!160 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !18, i64 0}
!161 = !{!"_ZTSN9benchmark8TimeUnitE", !6, i64 0}
!162 = !{!"_ZTSN9benchmark4BigOE", !6, i64 0}
!163 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !164, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !165, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!167 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !18, i64 0}
!168 = !{!"_ZTSSt6vectorIiSaIiEE", !169, i64 0}
!169 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !170, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !111, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !18, i64 0}
!173 = !{!174, !175, i64 0}
!174 = !{!"_ZTSNSt12_Vector_baseISt4pairIllESaIS1_EE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!175 = !{!"p1 _ZTSSt4pairIllE", !18, i64 0}
!176 = !{!174, !175, i64 16}
!177 = !{!174, !175, i64 8}
end_hunk_1
