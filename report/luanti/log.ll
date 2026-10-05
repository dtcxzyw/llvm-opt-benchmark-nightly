Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/log?download=true
inline.NumInlined: 820
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_Auto_nodeD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !77
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = icmp eq ptr %2, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  invoke void @_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.g)
          to label %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE5clearEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.f, align 8, !tbaa !20
  store ptr %i.d, ptr %i.a, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.j, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !109
  br label %.loopexit

.critedge:                                        ; preds = %bb.a, %bb.b
  %.not8 = icmp eq ptr %1, %2
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit
  %.sroa.06.09 = phi ptr [ %1, %.lr.ph ], [ %i.n, %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit ] ; 2 uses
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09) #36 ; 2 uses
  %i.o = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !77
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #32
  br label %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit

_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 72) #32
  %i.v = load i64, ptr %i.m, align 8, !tbaa !109
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.m, align 8, !tbaa !109
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !170

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit, %.critedge, %_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE5clearEv.exit
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN11StreamProxy16fix_stream_stateERSo.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef 0)
  %i.i = and i32 %i.g, 2
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.48, i64 noundef 16) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = and i32 %i.g, 1
  %.not7.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.49, i64 noundef 16) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = and i32 %i.g, 4
  %.not8.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i, label %_ZN11StreamProxy16fix_stream_stateERSo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.50, i64 noundef 17) ; 0 uses
  br label %_ZN11StreamProxy16fix_stream_stateERSo.exit

_ZN11StreamProxy16fix_stream_stateERSo.exit:      ; preds = %bb.h, %bb.g, %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !72     ; 3 uses
  %.not.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11StreamProxy16fix_stream_stateERSo.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !79
  %i.w = or i32 %i.v, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.t, i32 noundef %i.w)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %_ZN11StreamProxy16fix_stream_stateERSo.exit
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #4
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.p, i64 noundef %i.x) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j, %bb.i, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_log.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 232), align 8, !tbaa !171
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 240), align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) @g_logger, i8 0, i64 208, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 232), ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 248), align 8, !tbaa !110
  store ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 232), ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 256), align 8, !tbaa !111
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @g_logger, i64 264), align 8, !tbaa !109
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6LoggerD2Ev, ptr nonnull @g_logger, ptr nonnull @__dso_handle) #4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV15StreamLogOutput, i64 16), ptr @stdout_output, align 8, !tbaa !30
  store ptr @_ZSt4cout, ptr getelementptr inbounds nuw (i8, ptr @stdout_output, i64 8), align 8, !tbaa !92
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @stdout_output, i64 16), align 8, !tbaa !96
  %i.b = tail call i32 @isatty(i32 noundef 1) #4
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr getelementptr inbounds nuw (i8, ptr @stdout_output, i64 16), align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV15StreamLogOutput, i64 16), ptr @stderr_output, align 8, !tbaa !30
  store ptr @_ZSt4cerr, ptr getelementptr inbounds nuw (i8, ptr @stderr_output, i64 8), align 8, !tbaa !92
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @stderr_output, i64 16), align 8, !tbaa !96
  %i.e = tail call i32 @isatty(i32 noundef 2) #4
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr getelementptr inbounds nuw (i8, ptr @stderr_output, i64 16), align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @none_target_raw, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @none_target_raw, i64 8), align 8, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @none_target_raw, i64 16), align 8, !tbaa !102
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @none_target_raw, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @none_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @none_target, i64 8), align 8, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @none_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @none_target, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @error_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @error_target, i64 8), align 8, !tbaa !172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @error_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @error_target, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @warning_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @warning_target, i64 8), align 8, !tbaa !172
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @warning_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @warning_target, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @action_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @action_target, i64 8), align 8, !tbaa !172
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @action_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @action_target, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @info_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @info_target, i64 8), align 8, !tbaa !172
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @info_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @info_target, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @verbose_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @verbose_target, i64 8), align 8, !tbaa !172
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @verbose_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @verbose_target, i64 20), align 4, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11LevelTarget, i64 16), ptr @trace_target, align 8, !tbaa !30
  store ptr @g_logger, ptr getelementptr inbounds nuw (i8, ptr @trace_target, i64 8), align 8, !tbaa !172
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @trace_target, i64 16), align 8, !tbaa !102
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @trace_target, i64 20), align 4, !tbaa !103
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZTH12actionstream() #2 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !78

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.11()
  tail call fastcc void @__cxx_global_var_init.12()
  tail call fastcc void @__cxx_global_var_init.13()
  tail call fastcc void @__cxx_global_var_init.14()
  tail call fastcc void @__cxx_global_var_init.15()
  tail call fastcc void @__cxx_global_var_init.16()
  tail call fastcc void @__cxx_global_var_init.17()
  tail call fastcc void @__cxx_global_var_init.18()
  tail call fastcc void @__cxx_global_var_init.19()
  tail call fastcc void @__cxx_global_var_init.20()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW7dstream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @dstream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW9rawstream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @rawstream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW11errorstream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW13warningstream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW10infostream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW13verbosestream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW11tracestream() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tracestream)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW8derr_con() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @derr_con)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTW8dout_con() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @_ZTH12actionstream()
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @dout_con)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !62}
!1 = distinct !{!1, !62}
!2 = distinct !{!2, !62}
!3 = distinct !{null, null, null, null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
end_hunk_0
