Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/regression_obj?download=true
inline.NumInlined: 7707
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
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
define linkonce_odr void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost3obj12RegLossParamEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::obj::RegLossParam", align 4 ; 5 uses
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
  invoke void @_ZN7xgboost3obj12RegLossParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull %0)
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
define linkonce_odr void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost3obj12RegLossParamEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 {
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

declare noundef ptr @_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #37
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %.lr.ph.i.i.i

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
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !32

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.r, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
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
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  br label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.ad = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #38
          to label %bb.h unwind label %bb.r       ; 17 uses

bb.h:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread
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
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
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
  br label %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !41 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %.invoke, label %_ZNKSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #38
          to label %.noexc11 unwind label %bb.r   ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store ptr %i.ad, ptr %i.bf, align 8, !tbaa !34
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.l, label %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.l:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.l, %.noexc11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #36
  br label %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !41
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !40
  br label %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44
  %.not.i12 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE9push_backERKS3_.exit
  store ptr %i.ad, ptr %i.bk, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %_ZNSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE9push_backERKS3_.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !45    ; 4 uses
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %.invoke, label %_ZNKSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.o, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #37
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i13, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.bx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #38
          to label %.noexc17 unwind label %bb.r   ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store ptr %i.ad, ptr %i.ca, align 8, !tbaa !34
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.p, label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.p:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.p, %.noexc17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i15 = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i15, label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #36
  br label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bz, ptr %0, align 8, !tbaa !45
  store ptr %i.cc, ptr %i.bj, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !44
  br label %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %.invoke, %_ZNKSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPKN7xgboost14ObjFunctionRegESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f
  %.08 = phi ptr [ %i.ab, %bb.f ], [ %i.ad, %_ZNSt6vectorIPN7xgboost14ObjFunctionRegESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ad, %bb.n ]
  %i.cf = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret ptr %.08

bb.s:                                             ; preds = %bb.r, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.ce, %bb.r ]
  %i.cg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7xgboost3obj22PoissonRegressionParam11__MANAGER__Ev() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN7xgboost3obj22PoissonRegressionParam11__MANAGER__EvE4inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7xgboost3obj22PoissonRegressionParam11__MANAGER__EvE4inst) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost3obj22PoissonRegressionParamEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj22PoissonRegressionParam11__MANAGER__EvE4inst, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.i = call i32 @__cxa_atexit(ptr nonnull @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost3obj22PoissonRegressionParamEED2Ev, ptr nonnull @_ZZN7xgboost3obj22PoissonRegressionParam11__MANAGER__EvE4inst, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7xgboost3obj22PoissonRegressionParam11__MANAGER__EvE4inst) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost3obj22TweedieRegressionParamEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.c:                                             ; preds = %bb.a, %_ZN4dmlc9parameter12ParamManager8set_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #21
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost3obj22TweedieRegressionParamEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.i) #39
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.u = phi ptr [ %i.ac, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.e ], [ %i.c, %bb.a ]
  %.04 = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #21
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !50
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !53
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
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !59
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #39
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
define linkonce_odr void @_ZN7xgboost3obj12RegLossParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 16, ptr %i.b, align 8, !tbaa !17
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !9
  %i.e = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str.44, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !18
  %i.g = load ptr, ptr %3, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.i = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38
          to label %.noexc11 unwind label %bb.a   ; 16 uses

.noexc11:                                         ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.i, i8 0, i64 144, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 133
  store i8 0, ptr %i.q, align 1, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.i, align 16, !tbaa !57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc12 unwind label %bb.a

.noexc12:                                         ; preds = %.noexc11
  %i.r = load i64, ptr %i.n, align 16, !tbaa !18
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !16, !alias.scope !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) @.str.94, i64 5, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 5, ptr %i.u, align 8, !tbaa !18, !alias.scope !68
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.v, align 1, !tbaa !15, !alias.scope !68
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.94, i64 5, i1 false)
  %i.x = load i64, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  store i64 %i.x, ptr %i.n, align 16, !tbaa !18
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.u, align 8, !tbaa !18
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.aa = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i64 4, ptr %i.ae, align 8, !tbaa !73
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.i)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.a

_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store float 1.000000e+00, ptr %i.af, align 16, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 1, ptr %i.ag, align 8, !tbaa !75
  %i.ah = load ptr, ptr %i.i, align 16, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(144) %i.i, float noundef 0.000000e+00)
          to label %.noexc.i15 unwind label %bb.b

.noexc.i15:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 52, ptr %i.a, align 8, !tbaa !17
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.c   ; 3 uses

.noexc16:                                         ; preds = %.noexc.i15
  store ptr %i.am, ptr %4, align 8, !tbaa !9
  %i.an = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.am, ptr noundef nonnull align 1 dereferenceable(52) @.str.45, i64 52, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc16
  %i.ar = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.al
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.at = load i64, ptr %i.al, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.av = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.c
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !15
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.a:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i, %.noexc11, %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.b:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i15
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.d:                                             ; preds = %.noexc16
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.al
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  %i.bf = load i64, ptr %i.al, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.c ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.bc, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.a
  %.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.a ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ba, %bb.b ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.e
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 4 uses
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.v = sub i64 %i.q, %i.n
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.w, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !77

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.n) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.ae = sub i64 %i.n, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
end_hunk_1
begin_hunk_2_@_ZZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESA_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESA_OT_T0_T1_EUlmE_TnDaLi2EEEvSI_NS0_10TensorViewISJ_XT0_EEEOSM_ENKUlvE_clEv:bb.a
          cleanup
  br label %.body.i.i.i.i

bb.z:                                             ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_10RegLossObjINS8_13GammaDevianceEE12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_ZNKSD_12ProbToMarginESG_EUlfE0_PFNS2_10StringViewEvEEEvPKNS2_7ContextESG_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISP_XT0_EEEiOSS_EUlSQ_E_EEvSR_iSW_EUlSP_E_JmEEEvSP_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.z
  store ptr %.pr84.pr.i.i.i.i, ptr %6, align 8, !tbaa !392
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %6) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !392
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.z, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_10RegLossObjINS3_13GammaDevianceEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS8_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISK_XT0_EEEiOSN_.exit

.body.i.i.i.i:                                    ; preds = %bb.q, %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.v
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cb, %bb.ac ], [ %i.ca, %bb.y ], [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.bd, %bb.q ]
  %i.cd = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #21
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.ad, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.h
  %.pn64.pn.i.i.i.i = phi { ptr, i32 } [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %.pn.i.i.i.i, %bb.h ]
  resume { ptr, i32 } %.pn64.pn.i.i.i.i

bb.af:                                            ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #39
  unreachable

_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_10RegLossObjINS3_13GammaDevianceEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS8_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISK_XT0_EEEiOSN_.exit: ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_13GammaDevianceEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i, %.preheader.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_5EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
  br i1 %i.b, label %.noexc.i.i.i.i, label %bb.g

.noexc.i.i.i.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 63, ptr %i.a, align 8, !tbaa !17
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.c ; 3 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.d, ptr %2, align 8, !tbaa !9
  %i.e = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.d, ptr noundef nonnull align 1 dereferenceable(63) @.str.109, i64 63, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 275, i32 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.140, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %bb.b
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %1) #21
  %i.i = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.k = load i64, ptr %i.c, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.g

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %1) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i, %bb.c
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i ], [ %.pn.i.i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.a
  %i.t = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !190
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEEE, i64 16), ptr %i.t, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 2, float noundef 0.000000e+00, i32 -65536)
          to label %"_ZSt10__invoke_rIPN7xgboost11ObjFunctionERNS0_3obj3$_5EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 32) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i.i
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i.i ]
  resume { ptr, i32 } %.pn6.i.i.i

"_ZSt10__invoke_rIPN7xgboost11ObjFunctionERNS0_3obj3$_5EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !28
  ret ptr %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_5EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj3$_5E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_6EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj25SquaredLogErrorRegressionE, i64 16), ptr %i.a, align 16, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_6EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj3$_6E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_6EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj25SquaredLogErrorRegressionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj25SquaredLogErrorRegression10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj25SquaredLogErrorRegression10SaveConfigEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 19, ptr %i.a, align 8, !tbaa !17
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !9
  %i.d = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.42, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !18
  %i.f = load ptr, ptr %3, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.p, i1 false)
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !9
  %i.q = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.q, ptr %i.k, align 8, !tbaa !15
  %.pre = load i64, ptr %i.e, align 8, !tbaa !18
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = phi i64 [ %i.n, %bb.a ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  store ptr %i.b, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %i.e, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !16
  store i32 1701667182, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.v, align 4, !tbaa !15
  %i.w = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d, !inline_history !215 ; 2 uses

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38
          to label %.noexc12 unwind label %bb.d   ; 7 uses

.noexc12:                                         ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.ab, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !18
  store i8 0, ptr %i.af, align 8, !tbaa !15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #21
  %i.ah = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !216 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !216
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.c, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #21, !inline_history !217
  br label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

_ZN7xgboost4JsonaSEONS_10JsonStringE.exit:        ; preds = %bb.c, %bb.b, %.noexc12
  %i.ap = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.t
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.k
  br i1 %i.au, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.k, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.az = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.d:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.t
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.be = load i64, ptr %i.t, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
end_hunk_2
begin_hunk_3_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj25SquaredLogErrorRegression11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_:bb.a
  %i.ac = lshr i32 %i.v, %i.ab
  %i.ad = and i32 %i.aa, %i.v
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

.split.i8.i.i.i:                                  ; preds = %bb.d
  %i.ae = udiv i32 %i.v, %i.y                     ; 2 uses
  %i.af = mul i32 %i.ae, %i.y                     ; 0 uses
  %.recomposed28 = urem i32 %i.v, %i.y
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i: ; preds = %.split.i8.i.i.i, %.split.us.i11.i.i.i
  %.us-phi.i9.i.i.i = phi i32 [ %.recomposed28, %.split.i8.i.i.i ], [ %i.ad, %.split.us.i11.i.i.i ]
  %.us-phi23.i10.i.i.i = phi i32 [ %i.ae, %.split.i8.i.i.i ], [ %i.ac, %.split.us.i11.i.i.i ]
  %.sroa.5.1.le.i.i.i.i = zext i32 %.us-phi.i9.i.i.i to i64
  %i.ag = zext i32 %.us-phi23.i10.i.i.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i, %.split.i.i.i.i, %.split.us.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.recomposed, %.split.i.i.i.i ], [ %i.s, %.split.us.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.ag, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %i.t, %.split.i.i.i.i ], [ %i.r, %.split.us.i.i.i.i ]
  invoke void @_ZZN7xgboost3obj25SquaredLogErrorRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(240) %i.j, i64 noundef %.sink.i.i.i, i64 noundef %.sroa.5.1.le.i.sink.i.i.i)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  %i.ah = add nuw i64 %.05.i.i, 1                 ; 2 uses
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !449
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj25SquaredLogErrorRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, !llvm.loop !963

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj25SquaredLogErrorRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.s

.loopexit:                                        ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.ak = extractvalue { ptr, i32 } %lpad.phi, 0  ; 2 uses
  %i.al = extractvalue { ptr, i32 } %lpad.phi, 1  ; 2 uses
  %i.am = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #21
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.ak) #21 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #37
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %bb.g
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !392
  %.not23 = icmp eq ptr %i.ar, null
  br i1 %.not23, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.as = load ptr, ptr %8, align 8, !tbaa !392
  store ptr null, ptr %8, align 8, !tbaa !392
  %i.at = load ptr, ptr %0, align 8, !tbaa !392   ; 2 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !392
  store ptr %i.as, ptr %0, align 8, !tbaa !392
  %.not.i.i10 = icmp eq ptr %i.at, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %.pr = load ptr, ptr %8, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.r

bb.j:                                             ; preds = %bb.e
  %i.au = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.av = icmp eq i32 %i.al, %i.au
  br i1 %i.av, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.ak) #21 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #21 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ay) #37
          to label %.noexc12 unwind label %bb.o

.noexc12:                                         ; preds = %bb.l
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.k
  %i.az = load ptr, ptr %0, align 8, !tbaa !392
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ba = load ptr, ptr %7, align 8, !tbaa !392
  store ptr null, ptr %7, align 8, !tbaa !392
  %i.bb = load ptr, ptr %0, align 8, !tbaa !392   ; 2 uses
  store ptr %i.bb, ptr %4, align 8, !tbaa !392
  store ptr %i.ba, ptr %0, align 8, !tbaa !392
  %.not.i.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr21 = load ptr, ptr %7, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i16 = icmp eq ptr %.pr21, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.bd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.s

bb.q:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.r:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.s

bb.s:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj25SquaredLogErrorRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, %bb.r, %bb.p
  ret void

bb.t:                                             ; preds = %bb.q, %bb.o, %bb.j
  %.merged = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %lpad.phi, %bb.j ], [ %i.be, %bb.q ]
  resume { ptr, i32 } %.merged

bb.u:                                             ; preds = %bb.q, %bb.o
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_7EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj21PseudoHuberRegressionE, i64 16), ptr %i.a, align 16, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !982
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_7EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj3$_7E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_7EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj21PseudoHuberRegressionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj21PseudoHuberRegression10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.96", align 8    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !195
  %i.c = tail call noundef ptr @_ZN7xgboost4CastIKNS_10JsonObjectEKNS_5ValueEEEPT_PT0_(ptr noundef nonnull %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE10_M_find_trIA19_cvEESt23_Rb_tree_const_iteratorISA_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 1 dereferenceable(19) @.str.143)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 18, ptr %i.a, align 8, !tbaa !17
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !9
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.i, ptr noundef nonnull align 1 dereferenceable(18) @.str.143, i64 18, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %3, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.n = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e, !inline_history !215

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN7xgboost8FromJsonINS_16PseudoHuberParamEEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EERKNS_4JsonEPT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.96") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.s)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.t, %bb.b ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.ai = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.t, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !207
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.ao = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.e:                                             ; preds = %.noexc.i, %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.h
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  %i.av = load i64, ptr %i.h, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj21PseudoHuberRegression10SaveConfigEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.xgboost::JsonObject", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 20, ptr %i.b, align 8, !tbaa !17
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %3, align 8, !tbaa !9
  %i.e = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.d, ptr noundef nonnull align 1 dereferenceable(20) @.str.16, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !18
  %i.g = load ptr, ptr %3, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !208
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_3
begin_hunk_4_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj21PseudoHuberRegression11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_:bb.a

bb.l:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, %bb.o, %bb.m
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.e, %bb.g ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E0_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !447    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !449
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt5applyIRZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt5applyIRZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit
  %.05 = phi i64 [ %i.a, %.lr.ph ], [ %i.ci, %_ZSt5applyIRZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit ] ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1068, !nonnull !80, !align !289 ; 13 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1070, !nonnull !80, !align !289 ; 2 uses
  %i.h = icmp ugt i64 %.05, 4294967295
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17, !noalias !1071 ; 5 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %.not.i.i = icmp samesign ult i64 %i.k, 2
  br i1 %.not.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.c
  %i.l = add i64 %i.j, -1                         ; 2 uses
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = lshr i64 %.05, %i.m
  %i.o = and i64 %i.l, %.05
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

.split.i.i:                                       ; preds = %bb.c
  %i.p = udiv i64 %.05, %i.j                      ; 2 uses
  %i.q = mul i64 %i.p, %i.j                       ; 0 uses
  %.recomposed = urem i64 %.05, %i.j
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw i64 %.05 to i32                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !1076
  %i.u = trunc i64 %i.t to i32                    ; 5 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %.not.i7.i = icmp samesign ult i32 %i.v, 2
  br i1 %.not.i7.i, label %.split.us.i11.i, label %.split.i8.i

.split.us.i11.i:                                  ; preds = %bb.d
  %i.w = add i32 %i.u, -1                         ; 2 uses
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.w)
  %i.y = lshr i32 %i.r, %i.x
  %i.z = and i32 %i.w, %i.r
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i

.split.i8.i:                                      ; preds = %bb.d
  %i.aa = udiv i32 %i.r, %i.u                     ; 2 uses
  %i.ab = mul i32 %i.aa, %i.u                     ; 0 uses
  %.recomposed8 = urem i32 %i.r, %i.u
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i: ; preds = %.split.i8.i, %.split.us.i11.i
  %.us-phi.i9.i = phi i32 [ %.recomposed8, %.split.i8.i ], [ %i.z, %.split.us.i11.i ]
  %.us-phi23.i10.i = phi i32 [ %i.aa, %.split.i8.i ], [ %i.y, %.split.us.i11.i ]
  %.sroa.5.1.le.i.i = zext i32 %.us-phi.i9.i to i64
  %i.ac = zext i32 %.us-phi23.i10.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit: ; preds = %.split.us.i.i, %.split.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i
  %.sroa.5.1.le.i.sink.i = phi i64 [ %.sroa.5.1.le.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i ], [ %.recomposed, %.split.i.i ], [ %i.o, %.split.us.i.i ] ; 3 uses
  %.sink.i = phi i64 [ %i.ac, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i ], [ %i.p, %.split.i.i ], [ %i.n, %.split.us.i.i ] ; 5 uses
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !17
  %i.ae = mul i64 %i.ad, %.sink.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = mul i64 %i.ag, %.sroa.5.1.le.i.sink.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !378
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ae
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.ah
  %i.am = load float, ptr %i.al, align 4, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17
  %i.ap = mul i64 %i.ao, %.sink.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.as = mul i64 %i.ar, %.sroa.5.1.le.i.sink.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !378
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ap
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.as
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.az = load float, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !946 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  br label %_ZSt5applyIRZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit

bb.f:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit
  %i.be = icmp ult i64 %.sink.i, %i.bb
  br i1 %i.be, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !947
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.sink.i
  br label %_ZSt5applyIRZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit

_ZSt5applyIRZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit: ; preds = %bb.e, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i
  %.in.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %i.bh, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i ]
  %i.bi = fsub float %i.am, %i.ax                 ; 3 uses
  %i.bj = fmul float %i.bi, %i.bi                 ; 2 uses
  %i.bk = fmul float %i.az, %i.az                 ; 3 uses
  %i.bl = fdiv float %i.bj, %i.bk
  %i.bm = fadd float %i.bl, 1.000000e+00
  %sqrt.i.i.i.i.i = tail call float @llvm.sqrt.f32(float %i.bm) ; 2 uses
  %i.bn = fadd float %i.bk, %i.bj
  %i.bo = fmul float %i.bn, %sqrt.i.i.i.i.i
  %i.bp = load float, ptr %.in.i.i.i.i.i.i, align 4, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !17
  %i.bs = mul i64 %i.br, %.sink.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bv = mul i64 %i.bu, %.sroa.5.1.le.i.sink.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !916
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.bs
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.bv
  %i.ca = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bk, i64 1
  %i.cc = insertelement <2 x float> poison, float %sqrt.i.i.i.i.i, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bo, i64 1
  %i.ce = fdiv <2 x float> %i.cb, %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.ce, %i.cg
  store <2 x float> %i.ch, ptr %i.bz, align 4
  %i.ci = add nuw i64 %.05, 1                     ; 2 uses
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !449
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.b, label %._crit_edge, !llvm.loop !1079
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_8EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #38 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, i8 0, i64 88, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj19ExpectileRegressionE, i64 16), ptr %i.a, align 16, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !16, !alias.scope !1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, ptr noundef nonnull align 1 dereferenceable(15) @.str.148, i64 15, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 15, ptr %i.d, align 16, !tbaa !18, !alias.scope !1080
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.e, i8 0, i64 25, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
          to label %"_ZSt10__invoke_rIPN7xgboost11ObjFunctionERNS0_3obj3$_8EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit" unwind label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN7xgboost6common18ExpectileLossParamD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.h) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #36
  resume { ptr, i32 } %i.g

"_ZSt10__invoke_rIPN7xgboost11ObjFunctionERNS0_3obj3$_8EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_8EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj3$_8E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_8EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6common18ExpectileLossParamD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1083
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7xgboost6common10ParamArrayIfED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #36
  br label %_ZN7xgboost6common10ParamArrayIfED2Ev.exit

_ZN7xgboost6common10ParamArrayIfED2Ev.exit:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj19ExpectileRegressionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj19ExpectileRegressionE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1083
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN7xgboost6common18ExpectileLossParamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !15
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #36
  br label %_ZN7xgboost6common18ExpectileLossParamD2Ev.exit

_ZN7xgboost6common18ExpectileLossParamD2Ev.exit:  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj19ExpectileRegressionD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj19ExpectileRegressionE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21, !inline_history !1084
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1083
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #36, !inline_history !1084
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN7xgboost3obj19ExpectileRegressionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !15
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #36, !inline_history !1084
  br label %_ZN7xgboost3obj19ExpectileRegressionD2Ev.exit

_ZN7xgboost3obj19ExpectileRegressionD2Ev.exit:    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj19ExpectileRegression10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.std::vector.96", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !16
  store i32 1701667182, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !15
  %i.d = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c, !inline_history !215

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.j = invoke noundef ptr @_ZN7xgboost4CastIKNS_10JsonStringENS_5ValueEEEPT_PT0_(ptr noundef nonnull %i.i)
          to label %bb.a unwind label %bb.c       ; 2 uses

bb.a:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !1085
  %i.n = icmp eq i64 %i.m, 18
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !9, !noalias !1085 ; 2 uses
  %i.p = load i128, ptr %i.o, align 1
  %i.q = xor i128 %i.p, 152125969920319630519911351306909345138
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i128
  %i.u = xor i128 %i.t, 29295
  %i.v = or i128 %i.q, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store ptr null, ptr %2, align 8, !tbaa !1088
  br label %_ZN4dmlc11LogCheck_EQINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cEESt10unique_ptrIS6_St14default_deleteIS6_EERKT_RKT0_.exit

end_hunk_4
begin_hunk_5_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelINS2_6detail20GradientPairInternalIfEELi2EZNKS2_3obj19ExpectileRegression14InitEstimationERKNS2_8MetaInfoEPNS5_6TensorIfLi1EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E0_EEvT0_iSO_EUlSL_E_JmEEEvSL_DpT0_:bb.a

bb.p:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelINS_6detail20GradientPairInternalIfEELi2EZNKS_3obj19ExpectileRegression14InitEstimationERKNS_8MetaInfoEPNS2_6TensorIfLi1EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSI_E0_EEvT0_iSL_ENKUlSI_E_clImEEDaSI_.exit, %bb.o, %bb.m
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.e, %bb.g ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelINS_6detail20GradientPairInternalIfEELi2EZNKS_3obj19ExpectileRegression14InitEstimationERKNS_8MetaInfoEPNS0_6TensorIfLi1EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSG_E0_clINS_6common7Range1dEEEDaSK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !447    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !449
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt5applyIRZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS0_8MetaInfoEPNS0_6linalg6TensorIfLi1EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt5applyIRZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS0_8MetaInfoEPNS0_6linalg6TensorIfLi1EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit
  %.05 = phi i64 [ %i.a, %.lr.ph ], [ %i.bs, %_ZSt5applyIRZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS0_8MetaInfoEPNS0_6linalg6TensorIfLi1EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit ] ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1324, !nonnull !80, !align !289 ; 11 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1326, !nonnull !80, !align !289 ; 2 uses
  %i.h = icmp ugt i64 %.05, 4294967295
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17, !noalias !1327 ; 5 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %.not.i.i = icmp samesign ult i64 %i.k, 2
  br i1 %.not.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.c
  %i.l = add i64 %i.j, -1                         ; 2 uses
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = lshr i64 %.05, %i.m
  %i.o = and i64 %i.l, %.05
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

.split.i.i:                                       ; preds = %bb.c
  %i.p = udiv i64 %.05, %i.j                      ; 2 uses
  %i.q = mul i64 %i.p, %i.j                       ; 0 uses
  %.recomposed = urem i64 %.05, %i.j
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw i64 %.05 to i32                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !1332
  %i.u = trunc i64 %i.t to i32                    ; 5 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %.not.i7.i = icmp samesign ult i32 %i.v, 2
  br i1 %.not.i7.i, label %.split.us.i11.i, label %.split.i8.i

.split.us.i11.i:                                  ; preds = %bb.d
  %i.w = add i32 %i.u, -1                         ; 2 uses
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.w)
  %i.y = lshr i32 %i.r, %i.x
  %i.z = and i32 %i.w, %i.r
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i

.split.i8.i:                                      ; preds = %bb.d
  %i.aa = udiv i32 %i.r, %i.u                     ; 2 uses
  %i.ab = mul i32 %i.aa, %i.u                     ; 0 uses
  %.recomposed8 = urem i32 %i.r, %i.u
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i: ; preds = %.split.i8.i, %.split.us.i11.i
  %.us-phi.i9.i = phi i32 [ %.recomposed8, %.split.i8.i ], [ %i.z, %.split.us.i11.i ]
  %.us-phi23.i10.i = phi i32 [ %i.aa, %.split.i8.i ], [ %i.y, %.split.us.i11.i ]
  %.sroa.5.1.le.i.i = zext i32 %.us-phi.i9.i to i64
  %i.ac = zext i32 %.us-phi23.i10.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit: ; preds = %.split.us.i.i, %.split.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i
  %.sroa.5.1.le.i.sink.i = phi i64 [ %.sroa.5.1.le.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i ], [ %.recomposed, %.split.i.i ], [ %i.o, %.split.us.i.i ] ; 3 uses
  %.sink.i = phi i64 [ %i.ac, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i ], [ %i.p, %.split.i.i ], [ %i.n, %.split.us.i.i ] ; 4 uses
  %i.ad = load float, ptr %i.f, align 8, !tbaa !1162
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = mul i64 %i.af, %.sink.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !378
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.am = load i64, ptr %i.al, align 8, !tbaa !946
  %i.an = icmp ult i64 %.sroa.5.1.le.i.sink.i, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i, label %bb.e, !prof !271

bb.e:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !947
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.5.1.le.i.sink.i
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !81 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.at = load i64, ptr %i.as, align 8, !tbaa !946 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  br label %_ZSt5applyIRZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS0_8MetaInfoEPNS0_6linalg6TensorIfLi1EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i
  %i.aw = icmp ult i64 %.sink.i, %i.at
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i, label %bb.h, !prof !271

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !947
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sink.i
  br label %_ZSt5applyIRZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS0_8MetaInfoEPNS0_6linalg6TensorIfLi1EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit

_ZSt5applyIRZNK7xgboost3obj19ExpectileRegression14InitEstimationERKNS0_8MetaInfoEPNS0_6linalg6TensorIfLi1EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit: ; preds = %bb.f, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i
  %.in.i.i.i.i.i.i = phi ptr [ %i.av, %bb.f ], [ %i.az, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i ]
  %i.ba = fsub float %i.ad, %i.ak                 ; 2 uses
  %i.bb = fcmp oge float %i.ba, 0.000000e+00
  %i.bc = fsub float 1.000000e+00, %i.ar
  %i.bd = select i1 %i.bb, float %i.bc, float %i.ar ; 2 uses
  %i.be = load float, ptr %.in.i.i.i.i.i.i, align 4, !tbaa !81 ; 2 uses
  %i.bf = fmul float %i.ba, %i.bd
  %i.bg = fmul float %i.bf, %i.be
  %i.bh = fmul float %i.bd, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.bk = mul i64 %i.bj, %.sink.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.bn = mul i64 %i.bm, %.sroa.5.1.le.i.sink.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !916
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bk
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bn ; 2 uses
  store float %i.bg, ptr %i.br, align 4
  %.sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bh, ptr %.sroa_idx11.i.i.i.i.i, align 4
  %i.bs = add nuw i64 %.05, 1                     ; 2 uses
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !449
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.b, label %._crit_edge, !llvm.loop !1335
}

; Function Attrs: nounwind
declare void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj22PoissonRegressionParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.175, i64 14, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.d, align 2, !tbaa !15
  %i.e = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38
          to label %.noexc9 unwind label %bb.a    ; 14 uses

.noexc9:                                          ; preds = %._crit_edge.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, i8 0, i64 144, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.i, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.l, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 133
  store i8 0, ptr %i.m, align 1, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.e, align 16, !tbaa !57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc10 unwind label %bb.a

.noexc10:                                         ; preds = %.noexc9
  %i.n = load i64, ptr %i.j, align 16, !tbaa !18
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !16, !alias.scope !1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) @.str.94, i64 5, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 5, ptr %i.q, align 8, !tbaa !18, !alias.scope !1336
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.r, align 1, !tbaa !15, !alias.scope !1336
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, ptr noundef nonnull align 1 dereferenceable(5) @.str.94, i64 5, i1 false)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  store i64 %i.t, ptr %i.j, align 16, !tbaa !18
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.q, align 8, !tbaa !18
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.w = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.p
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.y = load i64, ptr %i.p, align 8, !tbaa !15
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 4, ptr %i.aa, align 8, !tbaa !73
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.e)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj22PoissonRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.a

_ZN4dmlc9ParameterIN7xgboost3obj22PoissonRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i
  %i.ab = load ptr, ptr %i.e, align 16, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(144) %i.e, float noundef 0.000000e+00)
          to label %.noexc.i13 unwind label %bb.a ; 3 uses

.noexc.i13:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost3obj22PoissonRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store float f0x3F333333, ptr %i.af, align 8, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 1, ptr %i.ag, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 108, ptr %i.a, align 8, !tbaa !17
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.b   ; 3 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.ai, ptr %4, align 8, !tbaa !9
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.ai, ptr noundef nonnull align 1 dereferenceable(108) @.str.176, i64 108, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc14
  %i.an = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ar = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.b, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.a:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i, %.noexc9, %._crit_edge.i.i, %_ZN4dmlc9ParameterIN7xgboost3obj22PoissonRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.b:                                             ; preds = %.noexc.i13
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.c:                                             ; preds = %.noexc14
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ah
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.c
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.b
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.b ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ax, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.a
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.av, %bb.a ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.b
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.d
  %i.be = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_9EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj17PoissonRegressionE, i64 16), ptr %i.a, align 16, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_9EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj3$_9E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj3$_9EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj17PoissonRegressionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj17PoissonRegression10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.96", align 8    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 24, ptr %i.a, align 8, !tbaa !17
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !9
  %i.d = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.177, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !18
  %i.f = load ptr, ptr %3, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c, !inline_history !215

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN7xgboost8FromJsonINS_3obj22PoissonRegressionParamEEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EERKNS_4JsonEPT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.96") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.m)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %bb.a ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.c:                                             ; preds = %.noexc.i, %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.b
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj17PoissonRegression10SaveConfigEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.xgboost::JsonObject", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.24, i64 13, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.d, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.h, ptr noundef nonnull align 8 dereferenceable(14) %i.b, i64 14, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 13, ptr %i.i, align 8, !tbaa !18
  store ptr %i.b, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %i.c, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !16
  store i32 1701667182, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.l, align 4, !tbaa !15
  %i.m = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f, !inline_history !215 ; 2 uses

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38
end_hunk_5
begin_hunk_6_@_ZZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_17PoissonRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSB_INS_10StringViewEEEEEvPKNS_7ContextES8_OT_T0_T1_EUlmE_TnDaLi2EEEvSH_NS0_10TensorViewISI_XT0_EEEOSL_ENKUlvE_clEv:bb.a
  %i.bj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bj) #37
          to label %.noexc9.i.i.i unwind label %bb.w

.noexc9.i.i.i:                                    ; preds = %bb.n
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.m
  %i.bk = load ptr, ptr %10, align 8, !tbaa !392
  %.not23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not23.i.i.i, label %bb.o, label %.invoke.i.i

bb.o:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bl = load ptr, ptr %5, align 8, !tbaa !392
  store ptr null, ptr %5, align 8, !tbaa !392
  %i.bm = load ptr, ptr %10, align 8, !tbaa !392  ; 2 uses
  store ptr %i.bm, ptr %2, align 8, !tbaa !392
  store ptr %i.bl, ptr %10, align 8, !tbaa !392
  %.not.i.i10.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i10.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i: ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.invoke.i.i

bb.q:                                             ; preds = %bb.l
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.bo = icmp eq i32 %i.bf, %i.bn
  br i1 %i.bo, label %bb.r, label %.body.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.be) #21 ; 0 uses
  %i.bq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 2 uses
  %.not.i.i11.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #37
          to label %.noexc12.i.i.i unwind label %bb.v

.noexc12.i.i.i:                                   ; preds = %bb.s
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i:  ; preds = %bb.r
  %i.br = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.t, label %.invoke.i.i

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.bs = load ptr, ptr %4, align 8, !tbaa !392
  store ptr null, ptr %4, align 8, !tbaa !392
  %i.bt = load ptr, ptr %10, align 8, !tbaa !392  ; 2 uses
  store ptr %i.bt, ptr %1, align 8, !tbaa !392
  store ptr %i.bs, ptr %10, align 8, !tbaa !392
  %.not.i.i14.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i14.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i: ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %.pr21.i.i.i = load ptr, ptr %4, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.not.i16.i.i.i = icmp eq ptr %.pr21.i.i.i, null
  br i1 %.not.i16.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i: ; preds = %bb.u, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.invoke.i.i

bb.v:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.x

bb.w:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.x

.invoke.i.i:                                      ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_17PoissonRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #39
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_17PoissonRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i: ; preds = %.invoke.i.i, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_17PoissonRegression12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_NS0_4NoOpIbEENSD_INS_10StringViewEEEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISK_XT0_EEEiOSN_EUlSL_E_EEvSM_iSR_ENKUlSK_E_clImEEDaSK_.exit.i.i.i
  %i.bz = add nuw i64 %.06099.i.i.i.i, 1          ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.bz, %i.m
  br i1 %exitcond122.not.i.i.i.i, label %bb.z, label %.lr.ph100.i.i.i.i, !llvm.loop !1484

bb.y:                                             ; preds = %.invoke.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.z:                                             ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_17PoissonRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.z
  store ptr %.pr84.pr.i.i.i.i, ptr %6, align 8, !tbaa !392
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %6) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !392
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.z, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_17PoissonRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSC_INS_10StringViewEEEEEvPKNS_7ContextES9_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISJ_XT0_EEEiOSM_.exit

.body.i.i.i.i:                                    ; preds = %bb.q, %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.v
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cb, %bb.ac ], [ %i.ca, %bb.y ], [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.bd, %bb.q ]
  %i.cd = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #21
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.ad, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.h
  %.pn64.pn.i.i.i.i = phi { ptr, i32 } [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %.pn.i.i.i.i, %bb.h ]
  resume { ptr, i32 } %.pn64.pn.i.i.i.i

bb.af:                                            ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #39
  unreachable

_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_17PoissonRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSC_INS_10StringViewEEEEEvPKNS_7ContextES9_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISJ_XT0_EEEiOSM_.exit: ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_17PoissonRegression12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_NS0_4NoOpIbEENSD_INS_10StringViewEEEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISK_XT0_EEEiOSN_EUlSL_E_EEvSM_iSR_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i, %.preheader.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj4$_10EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj13CoxRegressionE, i64 16), ptr %i.a, align 16, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj4$_10EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj4$_10E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_10EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj13CoxRegressionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj13CoxRegression10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj13CoxRegression10SaveConfigEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit:
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.27, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !208
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.g, ptr noundef nonnull align 8 dereferenceable(13) %i.a, i64 13, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 12, ptr %i.h, align 8, !tbaa !18
  store ptr %i.a, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !16
  store i32 1701667182, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.k, align 4, !tbaa !15
  %i.l = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c, !inline_history !215 ; 2 uses

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38
          to label %.noexc12 unwind label %bb.c   ; 7 uses

.noexc12:                                         ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.s, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.q, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 0, ptr %i.v, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #21
  %i.w = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !216  ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !216
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, label %bb.a

bb.a:                                             ; preds = %.noexc12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw sub ptr %i.y, i32 1 release, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.b, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #21, !inline_history !217
  br label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

_ZN7xgboost4JsonaSEONS_10JsonStringE.exit:        ; preds = %bb.b, %bb.a, %.noexc12
  %i.ae = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.i
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.c:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.i
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.c
  %i.at = load i64, ptr %i.i, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.g
  br i1 %i.aw, label %_ZN7xgboost10JsonStringD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit22

_ZN7xgboost10JsonStringD2Ev.exit22:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  %i.az = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit22
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj13CoxRegression9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 {
end_hunk_6
begin_hunk_7_@_ZZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_13CoxRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSB_INS_10StringViewEEEEEvPKNS_7ContextES8_OT_T0_T1_EUlmE_TnDaLi2EEEvSH_NS0_10TensorViewISI_XT0_EEEOSL_ENKUlvE_clEv:bb.a
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.invoke.i.i

bb.q:                                             ; preds = %bb.l
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.bo = icmp eq i32 %i.bf, %i.bn
  br i1 %i.bo, label %bb.r, label %.body.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.be) #21 ; 0 uses
  %i.bq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 2 uses
  %.not.i.i11.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #37
          to label %.noexc12.i.i.i unwind label %bb.v

.noexc12.i.i.i:                                   ; preds = %bb.s
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i:  ; preds = %bb.r
  %i.br = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.t, label %.invoke.i.i

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.bs = load ptr, ptr %4, align 8, !tbaa !392
  store ptr null, ptr %4, align 8, !tbaa !392
  %i.bt = load ptr, ptr %10, align 8, !tbaa !392  ; 2 uses
  store ptr %i.bt, ptr %1, align 8, !tbaa !392
  store ptr %i.bs, ptr %10, align 8, !tbaa !392
  %.not.i.i14.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i14.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i: ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %.pr21.i.i.i = load ptr, ptr %4, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.not.i16.i.i.i = icmp eq ptr %.pr21.i.i.i, null
  br i1 %.not.i16.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i: ; preds = %bb.u, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.invoke.i.i

bb.v:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.x

bb.w:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.x

.invoke.i.i:                                      ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_13CoxRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #39
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_13CoxRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i: ; preds = %.invoke.i.i, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_13CoxRegression12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_NS0_4NoOpIbEENSD_INS_10StringViewEEEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISK_XT0_EEEiOSN_EUlSL_E_EEvSM_iSR_ENKUlSK_E_clImEEDaSK_.exit.i.i.i
  %i.bz = add nuw i64 %.06099.i.i.i.i, 1          ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.bz, %i.m
  br i1 %exitcond122.not.i.i.i.i, label %bb.z, label %.lr.ph100.i.i.i.i, !llvm.loop !1537

bb.y:                                             ; preds = %.invoke.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.z:                                             ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_13CoxRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.z
  store ptr %.pr84.pr.i.i.i.i, ptr %6, align 8, !tbaa !392
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %6) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !392
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.z, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_13CoxRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSC_INS_10StringViewEEEEEvPKNS_7ContextES9_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISJ_XT0_EEEiOSM_.exit

.body.i.i.i.i:                                    ; preds = %bb.q, %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.v
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cb, %bb.ac ], [ %i.ca, %bb.y ], [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.bd, %bb.q ]
  %i.cd = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #21
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.ad, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.h
  %.pn64.pn.i.i.i.i = phi { ptr, i32 } [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %.pn.i.i.i.i, %bb.h ]
  resume { ptr, i32 } %.pn64.pn.i.i.i.i

bb.af:                                            ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #39
  unreachable

_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_13CoxRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSC_INS_10StringViewEEEEEvPKNS_7ContextES9_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISJ_XT0_EEEiOSM_.exit: ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_13CoxRegression12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_NS0_4NoOpIbEENSD_INS_10StringViewEEEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISK_XT0_EEEiOSN_EUlSL_E_EEvSM_iSR_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i, %.preheader.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj22TweedieRegressionParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 22, ptr %i.b, align 8, !tbaa !17
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !9
  %i.e = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.d, ptr noundef nonnull align 1 dereferenceable(22) @.str.191, i64 22, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !18
  %i.g = load ptr, ptr %3, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.i = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38
          to label %.noexc9 unwind label %bb.a    ; 14 uses

.noexc9:                                          ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.i, i8 0, i64 144, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 133
  store i8 0, ptr %i.q, align 1, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIfEE, i64 16), ptr %i.i, align 16, !tbaa !57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc10 unwind label %bb.a

.noexc10:                                         ; preds = %.noexc9
  %i.r = load i64, ptr %i.n, align 16, !tbaa !18
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !16, !alias.scope !1538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) @.str.94, i64 5, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 5, ptr %i.u, align 8, !tbaa !18, !alias.scope !1538
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.v, align 1, !tbaa !15, !alias.scope !1538
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.94, i64 5, i1 false)
  %i.x = load i64, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  store i64 %i.x, ptr %i.n, align 16, !tbaa !18
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.u, align 8, !tbaa !18
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.aa = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i64 4, ptr %i.ae, align 8, !tbaa !73
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.i)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.a

_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i
  %i.af = load ptr, ptr %i.i, align 16, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(144) %i.i, float noundef 1.000000e+00, float noundef 2.000000e+00)
          to label %.noexc.i13 unwind label %bb.a ; 3 uses

.noexc.i13:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  store float 1.500000e+00, ptr %i.aj, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 1, ptr %i.ak, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 57, ptr %i.a, align 8, !tbaa !17
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.b   ; 3 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.am, ptr %4, align 8, !tbaa !9
  %i.an = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.am, ptr noundef nonnull align 1 dereferenceable(57) @.str.192, i64 57, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc14
  %i.ar = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.al
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.at = load i64, ptr %i.al, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.av = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.c
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !15
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.a:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRf.exit.i, %.noexc9, %.noexc.i, %_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE7DECLAREIfEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.b:                                             ; preds = %.noexc.i13
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.c:                                             ; preds = %.noexc14
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.al
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.c
  %i.be = load i64, ptr %i.al, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.b ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bb, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.a
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.az, %bb.a ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.c
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.d
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj4$_11EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj17TweedieRegressionE, i64 16), ptr %i.a, align 16, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.b, align 16, !tbaa !16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj4$_11EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj4$_11E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj17TweedieRegressionD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj17TweedieRegressionE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj17TweedieRegressionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj17TweedieRegressionE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7xgboost3obj17TweedieRegressionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36, !inline_history !1543
  br label %_ZN7xgboost3obj17TweedieRegressionD2Ev.exit

_ZN7xgboost3obj17TweedieRegressionD2Ev.exit:      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj17TweedieRegression10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.96", align 8    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 24, ptr %i.a, align 8, !tbaa !17
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !9
  %i.d = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.193, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !18
  %i.f = load ptr, ptr %3, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c, !inline_history !215

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN7xgboost8FromJsonINS_3obj22TweedieRegressionParamEEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EERKNS_4JsonEPT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.96") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.m)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %bb.a ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.c:                                             ; preds = %.noexc.i, %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.b
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj17TweedieRegression10SaveConfigEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.xgboost::JsonObject", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.32, i64 11, i1 false)
end_hunk_7
begin_hunk_8_@_ZZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_17TweedieRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSB_INS_10StringViewEEEEEvPKNS_7ContextES8_OT_T0_T1_EUlmE_TnDaLi2EEEvSH_NS0_10TensorViewISI_XT0_EEEOSL_ENKUlvE_clEv:bb.a
  %i.bj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bj) #37
          to label %.noexc9.i.i.i unwind label %bb.w

.noexc9.i.i.i:                                    ; preds = %bb.n
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.m
  %i.bk = load ptr, ptr %10, align 8, !tbaa !392
  %.not23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not23.i.i.i, label %bb.o, label %.invoke.i.i

bb.o:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bl = load ptr, ptr %5, align 8, !tbaa !392
  store ptr null, ptr %5, align 8, !tbaa !392
  %i.bm = load ptr, ptr %10, align 8, !tbaa !392  ; 2 uses
  store ptr %i.bm, ptr %2, align 8, !tbaa !392
  store ptr %i.bl, ptr %10, align 8, !tbaa !392
  %.not.i.i10.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i10.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i: ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.invoke.i.i

bb.q:                                             ; preds = %bb.l
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.bo = icmp eq i32 %i.bf, %i.bn
  br i1 %i.bo, label %bb.r, label %.body.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.be) #21 ; 0 uses
  %i.bq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 2 uses
  %.not.i.i11.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #37
          to label %.noexc12.i.i.i unwind label %bb.v

.noexc12.i.i.i:                                   ; preds = %bb.s
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i:  ; preds = %bb.r
  %i.br = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.t, label %.invoke.i.i

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.bs = load ptr, ptr %4, align 8, !tbaa !392
  store ptr null, ptr %4, align 8, !tbaa !392
  %i.bt = load ptr, ptr %10, align 8, !tbaa !392  ; 2 uses
  store ptr %i.bt, ptr %1, align 8, !tbaa !392
  store ptr %i.bs, ptr %10, align 8, !tbaa !392
  %.not.i.i14.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i14.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i: ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %.pr21.i.i.i = load ptr, ptr %4, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.not.i16.i.i.i = icmp eq ptr %.pr21.i.i.i, null
  br i1 %.not.i16.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i: ; preds = %bb.u, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.invoke.i.i

bb.v:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.x

bb.w:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.x

.invoke.i.i:                                      ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_17TweedieRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #39
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_17TweedieRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i: ; preds = %.invoke.i.i, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_17TweedieRegression12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_NS0_4NoOpIbEENSD_INS_10StringViewEEEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISK_XT0_EEEiOSN_EUlSL_E_EEvSM_iSR_ENKUlSK_E_clImEEDaSK_.exit.i.i.i
  %i.bz = add nuw i64 %.06099.i.i.i.i, 1          ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.bz, %i.m
  br i1 %exitcond122.not.i.i.i.i, label %bb.z, label %.lr.ph100.i.i.i.i, !llvm.loop !1679

bb.y:                                             ; preds = %.invoke.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.z:                                             ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS2_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS8_17TweedieRegression12ProbToMarginEPNS5_6TensorIfLi1EEEEUlfE_NS3_4NoOpIbEENSG_INS2_10StringViewEEEEEvPKNS2_7ContextESE_OT_T0_T1_EUlmE_EEvNS5_10TensorViewISN_XT0_EEEiOSQ_EUlSO_E_EEvSP_iSU_EUlSN_E_JmEEEvSN_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.z
  store ptr %.pr84.pr.i.i.i.i, ptr %6, align 8, !tbaa !392
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %6) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !392
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.z, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_17TweedieRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSC_INS_10StringViewEEEEEvPKNS_7ContextES9_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISJ_XT0_EEEiOSM_.exit

.body.i.i.i.i:                                    ; preds = %bb.q, %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.v
  %.pn64.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cb, %bb.ac ], [ %i.ca, %bb.y ], [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.bd, %bb.q ]
  %i.cd = load ptr, ptr %10, align 8, !tbaa !392
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i79.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #21
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i:        ; preds = %bb.ad, %.body.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i, %bb.h
  %.pn64.pn.i.i.i.i = phi { ptr, i32 } [ %.pn64.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i ], [ %.pn.i.i.i.i, %bb.h ]
  resume { ptr, i32 } %.pn64.pn.i.i.i.i

bb.af:                                            ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #39
  unreachable

_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_17TweedieRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSC_INS_10StringViewEEEEEvPKNS_7ContextES9_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISJ_XT0_EEEiOSM_.exit: ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_17TweedieRegression12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_NS0_4NoOpIbEENSD_INS_10StringViewEEEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISK_XT0_EEEiOSN_EUlSL_E_EEvSM_iSR_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i, %.preheader.i.i.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj4$_12EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7xgboost3obj17MeanAbsoluteErrorE, i64 16), ptr %i.a, align 16, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj4$_12EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost3obj4$_12E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !149
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost3obj4$_12EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost12ConfigurableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj17MeanAbsoluteErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj17MeanAbsoluteError10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %3 = alloca %"struct.xgboost::StringView", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"struct.xgboost::StringView", align 8 ; 6 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !16
  store i32 1701667182, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !15
  %i.d = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c, !inline_history !215

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.j = invoke noundef ptr @_ZN7xgboost4CastIKNS_10JsonStringENS_5ValueEEEPT_PT0_(ptr noundef nonnull %i.i)
          to label %bb.a unwind label %bb.c       ; 2 uses

bb.a:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !1680
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !1682
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.35, ptr %5, align 8, !tbaa !1680
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 17, ptr %i.p, align 8, !tbaa !1682
  %.not.i = icmp eq i64 %i.o, 17
  br i1 %.not.i, label %.noexc, label %.noexc.thread29

.noexc:                                           ; preds = %bb.a
  %i.q = load i128, ptr %i.l, align 1
  %i.r = xor i128 %i.q, 148138549602136638377290362572088239474
  %i.s = getelementptr i8, ptr %i.l, i64 16
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i128
  %i.v = xor i128 %i.u, 114
  %i.w = or i128 %i.r, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i.i.i.i, label %.noexc.thread, label %.noexc.thread29

.noexc.thread:                                    ; preds = %.noexc
  store ptr null, ptr %2, align 8, !tbaa !1088
  br label %_ZN4dmlc11LogCheck_EQIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_.exit

.noexc.thread29:                                  ; preds = %bb.a, %.noexc
  invoke void @_ZN4dmlc14LogCheckFormatIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN4dmlc11LogCheck_EQIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_.exit unwind label %bb.d

_ZN4dmlc11LogCheck_EQIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_.exit: ; preds = %.noexc.thread, %.noexc.thread29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.z = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc11LogCheck_EQIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ad = load ptr, ptr %2, align 8, !tbaa !85
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ae = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ae, ptr noundef nonnull @.str.109, i32 noundef 994)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc15
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.g ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.195, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.f

bb.c:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %._crit_edge.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc.thread29
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.d ], [ %i.ao, %bb.c ]
  %i.aq = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.e
  %i.as = load i64, ptr %i.a, align 8, !tbaa !15
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.k

bb.f:                                             ; preds = %.noexc15, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.au, %bb.f ], [ %i.av, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
end_hunk_8
