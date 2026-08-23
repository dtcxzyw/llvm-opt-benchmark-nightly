Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/version?download=true
inline.NumInlined: 768
inline.NumDeleted: 440
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7xgboost4CastIKNS_10JsonObjectEKNS_5ValueEEEPT_PT0_:bb.a
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

_ZN7xgboost10JsonObjectD2Ev.exit:                 ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.ab = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7xgboost5ValueE, ptr nonnull @_ZTIN7xgboost10JsonObjectE, i64 0) #11
  br label %bb.k

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit, %bb.d, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ac, %bb.g ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.b, %_ZN7xgboost10JsonObjectD2Ev.exit
  %.0 = phi ptr [ %i.ab, %_ZN7xgboost10JsonObjectD2Ev.exit ], [ %i.d, %bb.b ]
  ret ptr %.0

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #23

declare { i64, ptr } @_ZNK7xgboost5Value7TypeStrEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost4JsonD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw sub ptr %i.h, i32 1 release, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN7xgboost4JsonD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #11, !inline_history !131
  br label %_ZN7xgboost4JsonD2Ev.exit.i.i.i

_ZN7xgboost4JsonD2Ev.exit.i.i.i:                  ; preds = %bb.c, %bb.b, %.lr.ph
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN7xgboost4JsonD2Ev.exit.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN7xgboost4JsonD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE10_M_find_trIA8_cvEESt23_Rb_tree_const_iteratorISA_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.0810.i = load ptr, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %.not11.i = icmp eq ptr %.0810.i, null
  br i1 %.not11.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %1) #11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i, %.lr.ph.i
  %.0813.i = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.08.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i ] ; 4 uses
  %.012.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0813.i, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.e) ; 2 uses
  %i.f = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef nonnull align 1 dereferenceable(8) %1, i64 noundef %.sroa.speculated.i.i.i.i.i) #11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.j = sub i64 %i.e, %i.c
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.k = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %.19.in.v.i = select i1 %i.k, i64 24, i64 16
  %.19.in.i = getelementptr inbounds nuw i8, ptr %.0813.i, i64 %.19.in.v.i
  %.1.i = select i1 %i.k, ptr %.012.i, ptr %.0813.i ; 6 uses
  %.08.i = load ptr, ptr %.19.in.i, align 8, !tbaa !133 ; 2 uses
  %.not.i = icmp eq ptr %.08.i, null
  br i1 %.not.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trIA8_cvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit, label %bb.b, !llvm.loop !134

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trIA8_cvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i
  %.not = icmp eq ptr %.1.i, %i.b
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trIA8_cvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %1) #11 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef nonnull align 1 dereferenceable(8) %1, i64 noundef %.sroa.speculated.i.i.i.i) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessIvEclIRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.s = sub i64 %i.m, %i.n
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit

_ZNKSt4lessIvEclIRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.t = icmp sgt i32 %.0.i.i.i.i, 0
  %spec.select = select i1 %i.t, ptr %i.b, ptr %.1.i
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt4lessIvEclIRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit, %bb.a, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trIA8_cvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit
  %.sroa.03.0 = phi ptr [ %i.b, %bb.a ], [ %spec.select, %_ZNKSt4lessIvEclIRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit ], [ %.1.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trIA8_cvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7xgboost4CastIKNS_9JsonArrayENS_5ValueEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %2 = alloca %"class.xgboost::JsonArray", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7xgboost5ValueE, ptr nonnull @_ZTIN7xgboost9JsonArrayE, i64 0) #11
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.e = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.30, i32 noundef 89)
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.31, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke { i64, ptr } @_ZNK7xgboost5Value7TypeStrEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.32, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost9JsonArrayE, i64 16), ptr %2, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = invoke { i64, ptr } @_ZNK7xgboost5Value7TypeStrEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.r, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13 unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost9JsonArrayE, i64 16), ptr %2, align 8, !tbaa !19
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !26   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i ], [ %i.t, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13 ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !8 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw sub ptr %i.x, i32 1 release, align 4
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.g, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #11, !inline_history !58
  br label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i:  ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.o, align 8, !tbaa !26
  br label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13
  %i.ae = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.t, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i, label %_ZN7xgboost9JsonArrayD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #28
  br label %_ZN7xgboost9JsonArrayD2Ev.exit

_ZN7xgboost9JsonArrayD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.ak = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7xgboost5ValueE, ptr nonnull @_ZTIN7xgboost9JsonArrayE, i64 0) #11
  br label %bb.m

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit, %bb.d, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost9JsonArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.al, %bb.i ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.b, %_ZN7xgboost9JsonArrayD2Ev.exit
  %.0 = phi ptr [ %i.ak, %_ZN7xgboost9JsonArrayD2Ev.exit ], [ %i.d, %bb.b ]
  ret ptr %.0

bb.n:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7xgboost4CastIKNS_11JsonIntegerEKNS_5ValueEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %2 = alloca %"class.xgboost::JsonInteger", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7xgboost5ValueE, ptr nonnull @_ZTIN7xgboost11JsonIntegerE, i64 0) #11
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.e = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.30, i32 noundef 89)
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.31, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke { i64, ptr } @_ZNK7xgboost5Value7TypeStrEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.32, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 2, ptr %i.n, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost11JsonIntegerE, i64 16), ptr %2, align 8, !tbaa !19
end_hunk_0
