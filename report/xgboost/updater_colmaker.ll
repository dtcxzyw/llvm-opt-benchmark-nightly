Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_colmaker?download=true
inline.NumInlined: 4971
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.i, ptr %i.h, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost4tree18ColMakerTrainParamEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::tree::ColMakerTrainParam", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.h, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 0, ptr %2, align 4, !tbaa !28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4dmlc9parameter12ParamManager8set_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN4dmlc9parameter12ParamManager8set_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  invoke void @_ZN7xgboost4tree18ColMakerTrainParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN4dmlc9parameter12ParamManager8set_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4dmlc9parameter12ParamManager8set_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #21
  resume { ptr, i32 } %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost4tree18ColMakerTrainParamEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

declare noundef ptr @_ZN4dmlc8RegistryIN7xgboost14TreeUpdaterRegEE3GetEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost14TreeUpdaterRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #36
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 4 uses
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.p = sub i64 %i.k, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14TreeUpdaterRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !32

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14TreeUpdaterRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.r, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14TreeUpdaterRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.x = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  br label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14TreeUpdaterRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.ad = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #37
          to label %bb.h unwind label %bb.r       ; 17 uses

bb.h:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.ae, i8 0, i64 136, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ad, align 16, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !16
  store i8 0, ptr %i.ai, align 16, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.aj, i8 0, i64 56, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !16
  store i8 0, ptr %i.al, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.ad, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ad, ptr %i.ap, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !36
  br label %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !41 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %.invoke, label %_ZNKSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #37
          to label %.noexc11 unwind label %bb.r   ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store ptr %i.ad, ptr %i.bf, align 8, !tbaa !34
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.l, label %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.l:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.l, %.noexc11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #35
  br label %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !41
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !40
  br label %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44
  %.not.i12 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE9push_backERKS3_.exit
  store ptr %i.ad, ptr %i.bk, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %_ZNSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE9push_backERKS3_.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !45    ; 4 uses
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %.invoke, label %_ZNKSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.o, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #36
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i13, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.bx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #37
          to label %.noexc17 unwind label %bb.r   ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store ptr %i.ad, ptr %i.ca, align 8, !tbaa !34
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.p, label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.p:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.p, %.noexc17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i15 = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i15, label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #35
  br label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bz, ptr %0, align 8, !tbaa !45
  store ptr %i.cc, ptr %i.bj, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !44
  br label %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %.invoke, %_ZNKSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPKN7xgboost14TreeUpdaterRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14TreeUpdaterRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f
  %.08 = phi ptr [ %i.ab, %bb.f ], [ %i.ad, %_ZNSt6vectorIPN7xgboost14TreeUpdaterRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ad, %bb.n ]
  %i.cf = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret ptr %.08

bb.s:                                             ; preds = %bb.r, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.ce, %bb.r ]
  %i.cg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #38
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.u = phi ptr [ %i.ac, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.e ], [ %i.c, %bb.a ]
  %.04 = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #21
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.ac = phi ptr [ %i.u, %.lr.ph ], [ %.pre5, %bb.d ] ; 2 uses
  %i.ad = phi ptr [ %i.v, %.lr.ph ], [ %.pre, %bb.d ] ; 2 uses
  %i.ae = add nuw i64 %.04, 1                     ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ult i64 %i.ae, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !55
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #35
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #38
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree18ColMakerTrainParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !15
  %i.g = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
          to label %.noexc31 unwind label %bb.a   ; 14 uses

.noexc31:                                         ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.g, i8 0, i64 144, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.n, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 133
  store i8 0, ptr %i.o, align 1, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.g, align 16, !tbaa !53
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc32 unwind label %bb.a

.noexc32:                                         ; preds = %.noexc31
  %i.p = load i64, ptr %i.l, align 16, !tbaa !18
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !16, !alias.scope !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.r, ptr noundef nonnull align 1 dereferenceable(5) @.str.60, i64 5, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 5, ptr %i.s, align 8, !tbaa !18, !alias.scope !64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.t, align 1, !tbaa !15, !alias.scope !64
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.60, i64 5, i1 false)
  %i.v = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  store i64 %i.v, ptr %i.l, align 16, !tbaa !18
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.s, align 8, !tbaa !18
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.y = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i64 4, ptr %i.ac, align 8, !tbaa !69
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.g)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree18ColMakerTrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.a

_ZN4dmlc9ParameterIN7xgboost4tree18ColMakerTrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i
  %i.ad = load ptr, ptr %i.g, align 16, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(144) %i.g, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc.i35 unwind label %bb.a ; 3 uses

.noexc.i35:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree18ColMakerTrainParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store float 1.000000e+00, ptr %i.ah, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.ai, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 47, ptr %i.c, align 8, !tbaa !17
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc36 unwind label %bb.b   ; 3 uses

.noexc36:                                         ; preds = %.noexc.i35
  store ptr %i.ak, ptr %4, align 8, !tbaa !9
  %i.al = load i64, ptr %i.c, align 8, !tbaa !17  ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ak, ptr noundef nonnull align 1 dereferenceable(47) @.str.6, i64 47, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc36
  %i.ap = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.aj
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ar = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.at = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.d, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 17, ptr %i.b, align 8, !tbaa !17
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc44 unwind label %bb.e   ; 2 uses

.noexc44:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  store ptr %i.ay, ptr %5, align 8, !tbaa !9
  %i.az = load i64, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ay, ptr noundef nonnull align 1 dereferenceable(17) @.str.7, i64 17, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !18
  %i.bb = load ptr, ptr %5, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost4tree18ColMakerTrainParamEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.bd)
          to label %._crit_edge.i.i46 unwind label %bb.f ; 3 uses

._crit_edge.i.i46:                                ; preds = %.noexc44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  store i32 0, ptr %i.bf, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 1, ptr %i.bg, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bh, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.bi, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.bj, align 1, !tbaa !15
  %i.bk = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %._crit_edge.i.i50 unwind label %bb.g

._crit_edge.i.i50:                                ; preds = %._crit_edge.i.i46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bl, ptr %7, align 8, !tbaa !16
  store i32 1952867692, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.bm, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.bn, align 4, !tbaa !15
  %i.bo = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 1)
          to label %._crit_edge.i.i54 unwind label %bb.h

._crit_edge.i.i54:                                ; preds = %._crit_edge.i.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bp, ptr %8, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bp, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.bq, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 0, ptr %i.br, align 1, !tbaa !15
  %i.bs = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 2)
          to label %.noexc.i59 unwind label %bb.i

.noexc.i59:                                       ; preds = %._crit_edge.i.i54
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bt, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 58, ptr %i.a, align 8, !tbaa !17
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc60 unwind label %bb.j   ; 3 uses

.noexc60:                                         ; preds = %.noexc.i59
  store ptr %i.bu, ptr %9, align 8, !tbaa !9
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.bu, ptr noundef nonnull align 1 dereferenceable(58) @.str.11, i64 58, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc60
  %i.bz = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bt
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.cd = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bp
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.cf = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ch = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bl
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.cj = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cl = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bh
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.cn = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.cp = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ax
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.cr = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #35
end_hunk_0
