inline.NumInlined: 39046
inline.NumDeleted: 11423
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_8VariadicIbEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  br i1 %.not.i.i.i20, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not7.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !161
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.bo = phi ptr [ %i.bi, %bb.i ], [ %i.bi, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bp, align 8, !tbaa !169
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !171
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !172
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !inline_history !207
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !172
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !inline_history !207
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i9.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bs, %bb.p ], [ %i.cc, %bb.q ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !155

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !161
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.s:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.z
  br i1 %i.cg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.d
  %.sink = phi ptr [ %i.an, %bb.d ], [ %i.cf, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.ce, %bb.s ]
  %i.ch = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.d
  %.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.ce, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.h, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.au, %bb.h ], [ %.pn, %.body ], [ %i.aq, %bb.f ]
  call void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !215  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.n = sub i64 %i.i, %i.f
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !394

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.f, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.d

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit
  %i.y = tail call { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE2atERSD_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !248
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !248
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !11, !noalias !395 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ak = load ptr, ptr %1, align 8, !tbaa !15
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !15
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !399, !range !182, !noundef !183
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !399, !range !182, !noundef !183
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !400, !range !182, !noundef !183
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !400, !range !182, !noundef !183
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !398

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !401, !range !182, !noundef !183
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !401, !range !182, !noundef !183
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !402

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !395
  %i.bm = load ptr, ptr %1, align 8, !tbaa !15, !noalias !395
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !395
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !395
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.29, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !395
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.29) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  unreachable

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !349

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRS7_RSB_EEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE2atERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
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
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !349

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.30) #38
  unreachable
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12resizeValuesEiiRKSt8optionalIS2_E:bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !618  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !619
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, label %bb.g, !prof !351

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !665
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1001
  br label %bb.s

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !618  ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !618    ; 3 uses
  br i1 %.not28, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !618
  store ptr %i.y, ptr %i.a, align 8, !tbaa !618
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !619
  %i.ab = and i8 %i.aa, 2
  %.not.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i13, label %bb.l, label %bb.j, !prof !351

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !665
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !665
  %i.ah = sext i32 %.sroa.speculated to i64
  %i.ai = shl nsw i64 %i.ah, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !618  ; 7 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !618
  store ptr null, ptr %4, align 8, !tbaa !618
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !618
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8, !tbaa !172
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !698

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !699
  %.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !172
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.n, !inline_history !698

bb.n:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %.thread, %bb.l, %bb.m, %.noexc.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !618 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !619
  %i.ba = and i8 %i.az, 2
  %.not.i15 = icmp eq i8 %i.ba, 0
  br i1 %.not.i15, label %bb.p, label %bb.o, !prof !351

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !665
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1001
  %i.be = load ptr, ptr %4, align 8, !tbaa !618   ; 7 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !172
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc.i unwind label %bb.r, !inline_history !698

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !699
  %.not.i.i19 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !172
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %..i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !698

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.p, %bb.q, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit
  ret void

bb.t:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.ac, %bb.k ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE17invalidateIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.e = load atomic i8, ptr %i.d seq_cst, align 1, !range !182, !noundef !183
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !1102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !1102
  %i.h = load atomic i32, ptr %i.g acquire, align 8, !noalias !1102 ; 4 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !3, !noalias !1102
  %i.i = and i32 %i.h, -1312
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !351

bb.c:                                             ; preds = %bb.b
  %i.k = or disjoint i32 %i.h, 128
  %i.l = cmpxchg ptr %i.g, i32 %i.h, i32 %i.k seq_cst seq_cst, align 4, !noalias !1102 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !398

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = extractvalue { i32, i1 } %i.l, 0
  store i32 %i.n, ptr %i.b, align 4, !noalias !1102
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.o = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !1102 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !1102
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !1102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !638  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i32, ptr %i.r, align 8, !tbaa !954  ; 6 uses
  %.not.i.i.i = icmp sgt i32 %i.s, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.s, 2147483584                 ; 2 uses
  %.not3347.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.e
  %i.u = add nsw i32 %i.s, -64
  %i.v = lshr i32 %i.u, 3
  %i.w = and i32 %i.v, 536870904
  %narrow.i = add nuw nsw i32 %i.w, 8
  %i.x = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %i.x, i1 false), !tbaa !243
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.preheader.i, %bb.e
  %.not34.i.i.i = icmp eq i32 %i.s, %i.t
  br i1 %.not34.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = lshr i32 %i.s, 6
  %i.z = and i32 %i.s, 63
  %i.aa = zext nneg i32 %i.z to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.aa
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = and i64 %i.ad, %notmask.i37.i.i.i
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !243
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.af, align 4, !tbaa !951
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.ag, align 8, !tbaa !953
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i16 256, ptr %i.ah, align 4
  store atomic i8 1, ptr %i.d seq_cst, align 1
  store atomic i8 0, ptr %i.c seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ai = atomicrmw and ptr %i.g, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aj = and i32 %i.ai, -401
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %i.ak = and i32 %i.ai, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.h, !prof !351

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::LockedPtr.772", align 8 ; 6 uses
  %6 = alloca %"class.folly::LockedPtr", align 8  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1, !range !182, !noundef !183
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !1113, !alias.scope !1119
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !1120, !alias.scope !1119
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !1121, !alias.scope !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !1119
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !1119 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !1119
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !1119 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !1119
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !1120, !alias.scope !1119
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31, !noalias !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1119
  %i.u = load ptr, ptr %5, align 8, !tbaa !1113   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !951
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !953
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !954
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !1120
  switch i16 %i.ad, label %bb.n [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load atomic i32, ptr %i.u acquire, align 4
  %i.af = and i32 %i.ae, 768
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !1122

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !1121
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !1122

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #37
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  store ptr %i.j, ptr %6, align 8, !tbaa !1129, !alias.scope !1131
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !1132, !alias.scope !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !1131
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !1131 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !1131
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !351

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !1131 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !398

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !1131
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !1131 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1131
  store i8 1, ptr %i.ay, align 8, !tbaa !1132, !alias.scope !1131
  %i.bh = load ptr, ptr %6, align 8, !tbaa !1129  ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !951
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !953
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !954
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !182, !noundef !183
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = and i1 %2, %i.bs
  %i.bu = zext i1 %i.bt to i8
  store atomic i8 %i.bu, ptr %i.f seq_cst, align 8
  %i.bv = load ptr, ptr %6, align 8, !tbaa !1129  ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bv, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg.i.i24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !951
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !953
  %i.cb = icmp sge i32 %i.by, %i.ca
  %i.cc = zext i1 %i.cb to i8
  store atomic i8 %i.cc, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !1132, !range !182
  %i.cd = trunc nuw i8 %.pre to i1
  br i1 %i.cd, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.ce = phi ptr [ %i.bv, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.cf = atomicrmw and ptr %i.ce, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cg = and i32 %i.cf, -401
  store i32 %i.cg, ptr %i.c, align 4, !tbaa !3
  %i.ch = and i32 %i.cf, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !351

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.357", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1133 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1133
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !618  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !619
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !618  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !706
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !618  ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !618
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = atomicrmw add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  store ptr %i.w, ptr %1, align 8, !tbaa !1014
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1017
  %i.z = load ptr, ptr %2, align 8, !tbaa !618    ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !618
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !1015
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1014  ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1015 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !618 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !172
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !698

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !699
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
end_hunk_1
begin_hunk_2_@llvm.ucmp.i32.i32
!195 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !196, i64 0, !162, i64 8}
!196 = !{!"p1 _ZTSN8facebook5velox4TypeE", !10, i64 0}
!197 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !198, i64 0}
!198 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !199, i64 0}
!199 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !200, i64 0}
!200 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !201, i64 0, !201, i64 8, !201, i64 16}
!201 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !10, i64 0}
!202 = !{!203, !158, i64 1}
!203 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !158, i64 0, !158, i64 1, !158, i64 2, !13, i64 8}
!204 = !{!203, !13, i64 8}
!205 = !{!189, !4, i64 32}
!206 = !{!195, !196, i64 0}
!207 = distinct !{null, null, null, null}
!208 = !{!203, !158, i64 0}
!209 = !{!203, !158, i64 2}
!210 = !{!211, !213, i64 0}
!211 = !{!"_ZTSSt15_Rb_tree_header", !212, i64 0, !13, i64 32}
!212 = !{!"_ZTSSt18_Rb_tree_node_base", !213, i64 0, !214, i64 8, !214, i64 16, !214, i64 24}
!213 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!214 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!215 = !{!211, !214, i64 8}
!216 = !{!211, !214, i64 16}
!217 = !{!211, !214, i64 24}
!218 = !{!211, !13, i64 32}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!221 = distinct !{!221, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!224 = distinct !{!224, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!227 = distinct !{!227, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!228 = !{!226, !223, !220}
!229 = !{!230, !9, i64 40}
!230 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !231, i64 56}
!231 = !{!"_ZTSSt6locale", !232, i64 0}
!232 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!233 = !{!230, !9, i64 32}
!234 = !{!235, !235, i64 0}
!235 = !{!"p1 _ZTSN8facebook5velox4core19TypeAnalysisResultsE", !10, i64 0}
!236 = !{!237, !237, i64 0}
!237 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !10, i64 0}
!238 = !{!239, !239, i64 0}
!239 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !10, i64 0}
!240 = !{!23, !23, i64 0}
!241 = !{!212, !214, i64 8}
!242 = !{i64 0, i64 1, !157, i64 1, i64 1, !157, i64 2, i64 1, !157, i64 8, i64 8, !243}
!243 = !{!13, !13, i64 0}
!244 = !{!200, !201, i64 8}
!245 = !{!200, !201, i64 0}
!246 = !{!200, !201, i64 16}
!247 = distinct !{!247, !26}
!248 = !{!249, !250, i64 64}
!249 = !{!"_ZTSN8facebook5velox4exec17SignatureVariableE", !12, i64 0, !12, i64 32, !250, i64 64, !158, i64 65, !158, i64 66, !158, i64 67}
!250 = !{!"_ZTSN8facebook5velox4exec13ParameterTypeE", !5, i64 0}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!253 = distinct !{!253, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!254 = distinct !{!254, !26}
!255 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!256 = distinct !{!256, !26}
!257 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!258 = !{!259, !260, i64 0}
!259 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!260 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !261, i64 0}
!261 = !{!"any p2 pointer", !10, i64 0}
!262 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !263, i64 0}
!263 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!264 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !265, i64 0, !13, i64 8}
!265 = !{!"float", !5, i64 0}
!266 = !{!259, !13, i64 8}
!267 = !{!264, !265, i64 0}
!268 = !{!269, !270, i64 0}
!269 = !{!"_ZTSSt18_Bit_iterator_base", !270, i64 0, !4, i64 8}
!270 = !{!"p1 long", !10, i64 0}
!271 = !{!272, !270, i64 32}
!272 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !273, i64 0, !273, i64 16, !270, i64 32}
!273 = !{!"_ZTSSt13_Bit_iterator", !269, i64 0}
!274 = !{!275, !158, i64 232}
!275 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !276, i64 0, !277, i64 56, !282, i64 168, !287, i64 192, !158, i64 232}
!276 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !259, i64 0}
!277 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !278, i64 0}
!278 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !279, i64 0}
!279 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !280, i64 0}
!280 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !281, i64 0}
!281 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !158, i64 104}
!282 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !283, i64 0}
!283 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !284, i64 0}
!284 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !285, i64 0}
!285 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !286, i64 0, !286, i64 8, !286, i64 16}
!286 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !10, i64 0}
!287 = !{!"_ZTSSt6vectorIbSaIbEE", !288, i64 0}
!288 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !289, i64 0}
!289 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !272, i64 0}
!290 = !{!286, !286, i64 0}
!291 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!292 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!293 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!294 = distinct !{null, null, null, null, null, null, null, null, null}
!295 = distinct !{!295, !26}
!296 = !{!201, !201, i64 0}
!297 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!298 = distinct !{!298, !26}
!299 = distinct !{null, null, null, null, null, null, null, null, null}
!300 = distinct !{!300, !26}
!301 = distinct !{!301, !26}
!302 = distinct !{!302, !26}
!303 = !{!192, !193, i64 0}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!306 = distinct !{!306, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!307 = !{!308, !13, i64 8}
!308 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResultsE", !203, i64 0, !309, i64 16, !194, i64 392, !313, i64 408}
!309 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !310, i64 0, !311, i64 8}
!310 = !{!"_ZTSSo"}
!311 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !230, i64 0, !312, i64 64, !12, i64 72}
!312 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!313 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !314, i64 0}
!314 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !315, i64 0}
!315 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !316, i64 0, !211, i64 8}
!316 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !317, i64 0}
!317 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!318 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!319 = !{!320, !235, i64 0}
!320 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7details20ExtremeValueFunctionINS0_4exec10VectorExecEbLb0EEEbNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSB_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISF_EEEUlvE0_", !235, i64 0, !237, i64 8, !239, i64 16}
!321 = !{i64 8}
!322 = !{!320, !237, i64 8}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!325 = distinct !{!325, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!328 = distinct !{!328, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!331 = distinct !{!331, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!332 = !{!330, !327, !324}
!333 = !{!320, !239, i64 16}
!334 = !{!335, !235, i64 0}
!335 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7details20ExtremeValueFunctionINS0_4exec10VectorExecEbLb0EEEbNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSB_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISF_EEEUlvE_", !235, i64 0, !237, i64 8, !239, i64 16}
!336 = !{!335, !237, i64 8}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!339 = distinct !{!339, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!342 = distinct !{!342, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!345 = distinct !{!345, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!346 = !{!344, !341, !338}
!347 = !{!335, !239, i64 16}
!348 = !{!214, !214, i64 0}
!349 = distinct !{!349, !26}
!350 = distinct !{null}
!351 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!354 = distinct !{!354, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!355 = !{!356}
!356 = distinct !{!356, !354, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!357 = !{!353, !356}
!358 = distinct !{!358, !26}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!361 = distinct !{!361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!364 = !{!360, !363}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!367 = distinct !{!367, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!368 = !{!369}
!369 = distinct !{!369, !367, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!370 = distinct !{!370, !26, !371, !372}
!371 = !{!"llvm.loop.isvectorized", i32 1}
!372 = !{!"llvm.loop.unroll.runtime.disable"}
!373 = distinct !{!373, !26, !371}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!376 = distinct !{!376, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!379 = distinct !{!379, !26, !371, !372}
!380 = distinct !{!380, !26, !371}
!381 = !{!308, !158, i64 0}
!382 = !{!308, !158, i64 1}
!383 = !{!308, !158, i64 2}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!386 = distinct !{!386, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!389 = distinct !{!389, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!392 = distinct !{!392, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!393 = !{!391, !388, !385}
!394 = distinct !{!394, !26}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!397 = distinct !{!397, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!398 = !{!"branch_weights", i32 2146410443, i32 1073205}
!399 = !{!249, !158, i64 65}
!400 = !{!249, !158, i64 66}
!401 = !{!249, !158, i64 67}
!402 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!403 = !{!404, !404, i64 0}
!404 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !10, i64 0}
!405 = !{!406, !407, i64 8}
!406 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !404, i64 0, !407, i64 8}
!407 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEEE", !10, i64 0}
!408 = !{!212, !214, i64 24}
!409 = distinct !{!409, !26}
!410 = !{!212, !214, i64 16}
!411 = distinct !{!411, !26}
!412 = distinct !{!412, !26}
!413 = distinct !{!413, !26}
!414 = !{!281, !158, i64 104}
!415 = !{!416, !158, i64 32}
!416 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !158, i64 32}
!417 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!418 = !{!285, !286, i64 0}
!419 = !{!285, !286, i64 8}
!420 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!421 = distinct !{!421, !26}
!422 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!423 = !{!285, !286, i64 16}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!426 = distinct !{!426, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!427 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!428 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!429 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!430 = !{!431, !158, i64 96}
!431 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !12, i64 0, !282, i64 32, !432, i64 56, !158, i64 96}
!432 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !433, i64 0}
!433 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !434, i64 0}
!434 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !435, i64 0}
!435 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !416, i64 0}
!436 = distinct !{null, null, null, null}
!437 = distinct !{!437, !26}
!438 = distinct !{null, null, null}
!439 = distinct !{null, null, null, null}
!440 = distinct !{null}
!441 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!442 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!443 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!444 = !{!269, !4, i64 8}
!445 = distinct !{null}
!446 = distinct !{!446, !26}
!447 = distinct !{null, null}
!448 = distinct !{!448, !26}
!449 = distinct !{!449, !26}
!450 = distinct !{!450, !26}
!451 = !{!259, !13, i64 24}
!452 = !{!262, !263, i64 0}
!453 = distinct !{!453, !26}
!454 = !{!263, !263, i64 0}
!455 = !{!456, !13, i64 0}
!456 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !13, i64 0}
!457 = distinct !{!457, !26}
!458 = !{!459, !460, i64 0}
!459 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !460, i64 0, !461, i64 8}
!460 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !10, i64 0}
!461 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !10, i64 0}
!462 = !{!459, !461, i64 8}
!463 = distinct !{!463, !26}
!464 = !{!264, !13, i64 8}
!465 = !{!259, !263, i64 16}
!466 = !{!259, !263, i64 48}
!467 = distinct !{!467, !26}
!468 = distinct !{!468, !26}
!469 = !{!470, !260, i64 0}
!470 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!471 = !{!470, !13, i64 8}
!472 = !{!473, !260, i64 0}
!473 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!474 = !{!473, !13, i64 8}
!475 = !{!476, !260, i64 0}
!476 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!477 = !{!476, !13, i64 8}
!478 = !{!479, !260, i64 0}
!479 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!480 = !{!479, !13, i64 8}
!481 = !{!476, !263, i64 16}
!482 = distinct !{!482, !26}
!483 = !{!473, !263, i64 16}
!484 = distinct !{!484, !26}
!485 = !{!479, !263, i64 16}
!486 = distinct !{!486, !26}
!487 = !{!488, !263, i64 16}
!488 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!489 = distinct !{!489, !26}
!490 = !{!488, !260, i64 0}
!491 = !{!488, !13, i64 8}
!492 = !{!493, !263, i64 16}
!493 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !13, i64 8, !262, i64 16, !13, i64 24, !264, i64 32, !263, i64 48}
!494 = distinct !{!494, !26}
!495 = !{!493, !260, i64 0}
!496 = !{!493, !13, i64 8}
!497 = !{!470, !263, i64 16}
!498 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!499 = distinct !{!499, !26}
!500 = distinct !{!500, !501}
!501 = !{!"llvm.loop.peeled.count", i32 1}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!504 = distinct !{!504, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!507 = distinct !{!507, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!508 = !{!506, !503}
!509 = !{!510, !13, i64 8}
!510 = !{!"_ZTSSi", !13, i64 8}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7details20ExtremeValueFunctionINS3_10VectorExecEbLb0EEESG_bNS2_15ConstantCheckerIJbNS2_8VariadicIbEEEEEJbSK_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES17_E4typeEOS18_DpOS19_: argument 0"}
!513 = distinct !{!513, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7details20ExtremeValueFunctionINS3_10VectorExecEbLb0EEESG_bNS2_15ConstantCheckerIJbNS2_8VariadicIbEEEEEJbSK_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES17_E4typeEOS18_DpOS19_"}
!514 = !{!515, !517, !519, !512}
!515 = distinct !{!515, !516, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions7details20ExtremeValueFunctionINS2_10VectorExecEbLb0EEES9_bNS1_15ConstantCheckerIJbNS1_8VariadicIbEEEEEJbSD_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!516 = distinct !{!516, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions7details20ExtremeValueFunctionINS2_10VectorExecEbLb0EEES9_bNS1_15ConstantCheckerIJbNS1_8VariadicIbEEEEEJbSD_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!517 = distinct !{!517, !518, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecEbLb0EEESA_bNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbENKUlvE_clEv: argument 0"}
!518 = distinct !{!518, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecEbLb0EEESA_bNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbENKUlvE_clEv"}
!519 = distinct !{!519, !520, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7details20ExtremeValueFunctionINS3_10VectorExecEbLb0EEESA_bNS2_15ConstantCheckerIJbNS2_8VariadicIbEEEEEJbSE_EEEEESt14default_deleteISH_EERZNS3_22SimpleFunctionRegistry16registerFunctionISH_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS3_17SignatureVariableESaISY_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!520 = distinct !{!520, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7details20ExtremeValueFunctionINS3_10VectorExecEbLb0EEESA_bNS2_15ConstantCheckerIJbNS2_8VariadicIbEEEEEJbSE_EEEEESt14default_deleteISH_EERZNS3_22SimpleFunctionRegistry16registerFunctionISH_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS3_17SignatureVariableESaISY_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!521 = !{!522, !523, i64 0}
!522 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec28SimpleFunctionAdapterFactoryELb0EE", !523, i64 0}
!523 = !{!"p1 _ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE", !10, i64 0}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions7details20ExtremeValueFunctionINS2_10VectorExecEbLb0EEES9_bNS1_15ConstantCheckerIJbNS1_8VariadicIbEEEEEJbSD_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISL_EERKNS4_11QueryConfigERKSH_ISI_INS1_10BaseVectorEESaISU_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!526 = distinct !{!526, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions7details20ExtremeValueFunctionINS2_10VectorExecEbLb0EEES9_bNS1_15ConstantCheckerIJbNS1_8VariadicIbEEEEEJbSD_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISL_EERKNS4_11QueryConfigERKSH_ISI_INS1_10BaseVectorEESaISU_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!527 = !{!528, !528, i64 0}
!528 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS0_4exec10VectorExecEbLb0EEES7_bNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSB_EEE", !10, i64 0}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions7details20ExtremeValueFunctionINS1_4exec10VectorExecEbLb0EEES8_bNS1_15ConstantCheckerIJbNS1_8VariadicIbEEEEEJbSC_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!531 = distinct !{!531, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions7details20ExtremeValueFunctionINS1_4exec10VectorExecEbLb0EEES8_bNS1_15ConstantCheckerIJbNS1_8VariadicIbEEEEEJbSC_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!532 = !{!533, !10, i64 0}
!533 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !10, i64 0}
!534 = !{!535, !536, i64 0}
!535 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !536, i64 0}
!536 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !10, i64 0}
!537 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecEbLb0EEES8_bNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSC_EEEED2Ev}
!538 = !{!539, !540, i64 0}
!539 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !540, i64 0, !162, i64 8}
!540 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!541 = !{!542, !543, i64 0}
!542 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecEbLb0EEES8_bNS0_15ConstantCheckerIJbNS0_8VariadicIbEEEEEJbSC_EEEE12ApplyContextE", !543, i64 0, !544, i64 8, !545, i64 16, !547, i64 40, !158, i64 48, !158, i64 49}
!543 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !10, i64 0}
!544 = !{!"p1 _ZTSN8facebook5velox10FlatVectorIbEE", !10, i64 0}
!545 = !{!"_ZTSN8facebook5velox4exec12VectorWriterIbvEE", !546, i64 0, !158, i64 12, !544, i64 16}
!546 = !{!"_ZTSN8facebook5velox4exec16VectorWriterBaseE", !4, i64 8}
!547 = !{!"p1 _ZTSN8facebook5velox4exec7EvalCtxE", !10, i64 0}
!548 = !{!546, !4, i64 8}
!549 = !{!547, !547, i64 0}
!550 = !{!542, !158, i64 48}
!551 = !{!542, !158, i64 49}
!552 = !{!542, !544, i64 8}
!553 = !{!545, !544, i64 16}
!554 = !{!555, !556, i64 0}
!555 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !556, i64 0, !557, i64 8, !558, i64 16, !158, i64 24, !158, i64 25, !559, i64 32, !564, i64 56, !158, i64 72, !158, i64 73, !158, i64 74, !158, i64 75, !543, i64 80, !567, i64 88}
!556 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !10, i64 0}
!557 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !10, i64 0}
!558 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !10, i64 0}
!559 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !560, i64 0}
!560 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !561, i64 0}
!561 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_Vector_implE", !562, i64 0}
!562 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !563, i64 0, !563, i64 8, !563, i64 16}
!563 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !10, i64 0}
!564 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec14PeeledEncodingEE", !565, i64 0}
!565 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EE", !566, i64 0, !162, i64 8}
!566 = !{!"p1 _ZTSN8facebook5velox4exec14PeeledEncodingE", !10, i64 0}
!567 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec10EvalErrorsEE", !568, i64 0}
!568 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EE", !569, i64 0, !162, i64 8}
!569 = !{!"p1 _ZTSN8facebook5velox4exec10EvalErrorsE", !10, i64 0}
!570 = !{!571, !572, i64 0}
!571 = !{!"_ZTSN8facebook5velox4core7ExecCtxE", !572, i64 0, !573, i64 8, !574, i64 16, !575, i64 32, !580, i64 56, !585, i64 80}
!572 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!573 = !{!"p1 _ZTSN8facebook5velox4core8QueryCtxE", !10, i64 0}
!574 = !{!"_ZTSN8facebook5velox4core7ExecCtx18OptimizationParamsE", !158, i64 0, !158, i64 1, !158, i64 2, !158, i64 3, !158, i64 4, !4, i64 8}
!575 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !576, i64 0}
!576 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !577, i64 0}
!577 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !578, i64 0}
!578 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !579, i64 0, !579, i64 8, !579, i64 16}
!579 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !10, i64 0}
!580 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !581, i64 0}
!581 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !582, i64 0}
!582 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !583, i64 0}
!583 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !584, i64 0, !584, i64 8, !584, i64 16}
!584 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !10, i64 0}
!585 = !{!"_ZTSSt10unique_ptrIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !586, i64 0}
!586 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox10VectorPoolESt14default_deleteIS2_ELb1ELb1EE", !587, i64 0}
!587 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !588, i64 0}
!588 = !{!"_ZTSSt5tupleIJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !589, i64 0}
!589 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !590, i64 0}
!590 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox10VectorPoolELb0EE", !591, i64 0}
!591 = !{!"p1 _ZTSN8facebook5velox10VectorPoolE", !10, i64 0}
!592 = !{!591, !591, i64 0}
!593 = !{!562, !563, i64 8}
!594 = !{!562, !563, i64 0}
!595 = distinct !{null, null, null, null, null}
!596 = !{!597, !598, i64 0}
!597 = !{!"_ZTSNSt12_Vector_baseISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE17_Vector_impl_dataE", !598, i64 0, !598, i64 8, !598, i64 16}
!598 = !{!"p1 _ZTSSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE", !10, i64 0}
!599 = !{!597, !598, i64 8}
!600 = !{!601, !158, i64 16}
!601 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec18LocalDecodedVectorEE", !5, i64 0, !158, i64 16}
!602 = distinct !{!602, !26}
end_hunk_2
