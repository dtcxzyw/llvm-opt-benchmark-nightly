Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Metadata?download=true
inline.NumInlined: 636
inline.NumDeleted: 291
begin_hunk_0_@_ZN7openvdb5v13_08Metadata12registerTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIS1_EvE:bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i8 0, i64 40, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 64), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 72), align 8, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 80), align 8, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_026LockedMetadataTypeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  br label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit

_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.e, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48)
  br i1 %i.r, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.z, label %select.unfold, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !24
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !24
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ad, i64 noundef %i.ae)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.1, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #22 ; 0 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.n

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.ao, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.an, %bb.i ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aq = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_08KeyErrorE, i64 16), ptr %i.ar, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN7openvdb5v13_08KeyErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #23
          to label %bb.s unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aa
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.o
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.r

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 40), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %select.unfold
  store ptr %1, ptr %i.ax, align 8, !tbaa !65
  %i.ay = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  ret void

bb.q:                                             ; preds = %select.unfold
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn11 = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.az, %bb.q ]
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  resume { ptr, i32 } %.pn11

bb.s:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.10", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE11lower_boundERSG_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE11lower_boundERSG_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE11lower_boundERSG_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE11lower_boundERSG_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE11lower_boundERSG_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESQ_IJEEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_08Metadata14unregisterTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i8 0, i64 40, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 64), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 72), align 8, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 80), align 8, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_026LockedMetadataTypeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  br label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit

_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 40), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 40), ptr %i.g, ptr %i.h)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  ret void

bb.f:                                             ; preds = %.noexc, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_08Metadata14createMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i8 0, i64 40, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 64), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 72), align 8, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 80), align 8, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_026LockedMetadataTypeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  br label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit

_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.p = sub i64 %i.k, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.e, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48)
  br i1 %i.r, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.z, label %select.unfold, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit.a

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !24
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %select.unfold
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.2, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %1, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #22 ; 0 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.n

bb.i:                                             ; preds = %select.unfold
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.ao, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.an, %bb.i ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aq = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.ar, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #23
          to label %bb.s unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aa
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.o
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.r

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit.a: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  invoke void %i.ay(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit.a
  %i.az = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  ret void

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE4findERSG_.exit.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn8 = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.ba, %bb.q ]
  %i.bb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  resume { ptr, i32 } %.pn8

bb.s:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_08Metadata13clearRegistryEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i8 0, i64 40, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), align 8, !tbaa !16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 64), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 72), align 8, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 80), align 8, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_026LockedMetadataTypeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22
  br label %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit

_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7openvdb5v13_0L23getMetadataTypeRegistryEv.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_08MetadataEEvEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 40), ptr noundef %i.f)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE5clearEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIN7openvdb5v13_08MetadataEEvESt4lessIS5_ESaISt4pairIKS5_SC_EEE5clearEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 56), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 64), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 72), align 8, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry, i64 80), align 8, !tbaa !20
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN7openvdb5v13_0L23getMetadataTypeRegistryEvE8registry) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_08MetadataeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.i = load ptr, ptr %1, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.l = load ptr, ptr %0, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.p, 0
  %.pre47 = load ptr, ptr %3, align 8, !tbaa !25  ; 3 uses
  br i1 %i.t, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %2, align 8, !tbaa !25
  %bcmp.i.i = call i32 @bcmp(ptr %i.u, ptr %.pre47, i64 %i.p)
  %i.v = icmp ne i32 %bcmp.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.d, %bb.e
  %i.w = phi ptr [ %.pre, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre47, %bb.e ], [ %.pre47, %bb.d ] ; 2 uses
  %i.x = phi i1 [ true, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.v, %bb.e ], [ false, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aa = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ad = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.x, label %bb.aa, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aj = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
end_hunk_0
