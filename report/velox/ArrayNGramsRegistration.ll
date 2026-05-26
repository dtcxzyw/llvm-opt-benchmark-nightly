inline.NumInlined: 37669
inline.NumDeleted: 9327
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #34, !inline_history !206
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #34, !inline_history !206
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bs, %bb.s ], [ %i.cc, %bb.t ]
  %i.cd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cd, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !104

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #34
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret void

bb.v:                                             ; preds = %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.x:                                             ; preds = %bb.f
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.g
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.y ], [ %i.cg, %bb.x ] ; 2 uses
  %i.ci = load i8, ptr %i.r, align 8, !tbaa !328, !range !131, !noundef !132
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.r, align 8, !tbaa !328
  br i1 %i.cj, label %bb.aa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %bb.aa
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !29
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #41
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18: ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.cp = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.f
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !29
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ce, %bb.v ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.ab
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !29
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #34 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !6105

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #34 ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !197
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !197
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16  ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !6106, !range !131, !noundef !132
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !6106, !range !131, !noundef !132
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !6107, !range !131, !noundef !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !6107, !range !131, !noundef !132
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1239

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !6108, !range !131, !noundef !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !6108, !range !131, !noundef !132
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !6109

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !6110
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !6110
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !6110
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !6110
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.196, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !6110
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.196) #42
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  unreachable

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !29
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #12

declare void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #34 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !282

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #34 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #34 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !282

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #34 ; 2 uses
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
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!5906 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINSD_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSF_iEEEJSF_iEEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISF_EENS3_24ConstantFlatVectorReaderIiEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSL_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_", !107, i64 0, !219, i64 8, !5803, i64 16}
!5907 = !{!5906, !219, i64 8}
!5908 = !{!5909}
!5909 = distinct !{!5909, !5910, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENS1_24ConstantFlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSS_SU_SV_: argument 0"}
!5910 = distinct !{!5910, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENS1_24ConstantFlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSS_SU_SV_"}
!5911 = !{!5912}
!5912 = distinct !{!5912, !5913, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNS1_24ConstantFlatVectorReaderIiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5913 = distinct !{!5913, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNS1_24ConstantFlatVectorReaderIiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5914 = !{!5915}
!5915 = distinct !{!5915, !5916, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_24ConstantFlatVectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5916 = distinct !{!5916, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_24ConstantFlatVectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5917 = !{!5918}
!5918 = distinct !{!5918, !5919, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!5919 = distinct !{!5919, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!5920 = !{!5921}
!5921 = distinct !{!5921, !5922, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!5922 = distinct !{!5922, !"_ZN8facebook5velox6Status2OKEv"}
!5923 = !{!5803, !11, i64 8}
!5924 = distinct !{!5924, !31}
!5925 = !{!5926, !107, i64 0}
!5926 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINSD_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSF_iEEEJSF_iEEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISF_EENS3_24ConstantFlatVectorReaderIiEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSL_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUliE_", !107, i64 0, !219, i64 8, !5803, i64 16}
!5927 = !{!5926, !219, i64 8}
!5928 = !{!5929}
!5929 = distinct !{!5929, !5930, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENS1_24ConstantFlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbmEEDaSS_SU_SV_: argument 0"}
!5930 = distinct !{!5930, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENS1_24ConstantFlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbmEEDaSS_SU_SV_"}
!5931 = !{!5932, !5929}
!5932 = distinct !{!5932, !5933, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNS1_24ConstantFlatVectorReaderIiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5933 = distinct !{!5933, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNS1_24ConstantFlatVectorReaderIiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5934 = !{!5935, !5929}
!5935 = distinct !{!5935, !5936, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_24ConstantFlatVectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5936 = distinct !{!5936, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_24ConstantFlatVectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5937 = !{!5938, !5929}
!5938 = distinct !{!5938, !5939, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!5939 = distinct !{!5939, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!5940 = !{!5941}
!5941 = distinct !{!5941, !5942, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!5942 = distinct !{!5942, !"_ZN8facebook5velox6Status2OKEv"}
!5943 = distinct !{!5943, !31}
!5944 = !{!5945}
!5945 = distinct !{!5945, !5946, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENS1_24ConstantFlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSS_SU_SV_: argument 0"}
!5946 = distinct !{!5946, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENS1_24ConstantFlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSS_SU_SV_"}
!5947 = !{!5948}
!5948 = distinct !{!5948, !5949, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNS1_24ConstantFlatVectorReaderIiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5949 = distinct !{!5949, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNS1_24ConstantFlatVectorReaderIiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5950 = !{!5951}
!5951 = distinct !{!5951, !5952, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_24ConstantFlatVectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5952 = distinct !{!5952, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_24ConstantFlatVectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5953 = !{!5954}
!5954 = distinct !{!5954, !5955, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!5955 = distinct !{!5955, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!5956 = !{!5957}
!5957 = distinct !{!5957, !5958, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!5958 = distinct !{!5958, !"_ZN8facebook5velox6Status2OKEv"}
!5959 = distinct !{!5959, !31}
!5960 = !{!5961, !510, i64 16}
!5961 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINSB_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISD_EENSL_IiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_EUlST_E_", !11, i64 0, !11, i64 8, !510, i64 16}
!5962 = distinct !{null, null, null, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_9VarbinaryEEEEEvE6finishEv}
!5963 = !{!5961, !11, i64 0}
!5964 = !{!5965, !5853, i64 0}
!5965 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISB_EENSJ_IiEEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_", !5853, i64 0, !11, i64 8}
!5966 = !{!5965, !11, i64 8}
!5967 = !{!5968, !5857, i64 0}
!5968 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_", !5857, i64 0, !5858, i64 8, !1036, i64 16}
!5969 = !{!5970}
!5970 = distinct !{!5970, !5971, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSR_ST_SU_: argument 0"}
!5971 = distinct !{!5971, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSR_ST_SU_"}
!5972 = !{!5968, !5858, i64 8}
!5973 = !{!5968, !1036, i64 16}
!5974 = !{!5975}
!5975 = distinct !{!5975, !5976, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5976 = distinct !{!5976, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5977 = !{!5978}
!5978 = distinct !{!5978, !5979, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5979 = distinct !{!5979, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5980 = !{!5981, !5978}
!5981 = distinct !{!5981, !5982, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!5982 = distinct !{!5982, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!5983 = !{!5984}
!5984 = distinct !{!5984, !5985, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!5985 = distinct !{!5985, !"_ZN8facebook5velox6Status2OKEv"}
!5986 = !{!5987, !5853, i64 0}
!5987 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISB_EENSJ_IiEEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E0_", !5853, i64 0}
!5988 = distinct !{!5988, !31}
!5989 = distinct !{!5989, !31}
!5990 = !{!5991, !107, i64 0}
!5991 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINSD_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSF_iEEEJSF_iEEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISF_EENSN_IiEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_EUlimE_", !107, i64 0, !219, i64 8, !5961, i64 16}
!5992 = !{!5991, !219, i64 8}
!5993 = !{!5994}
!5994 = distinct !{!5994, !5995, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSR_ST_SU_: argument 0"}
!5995 = distinct !{!5995, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSR_ST_SU_"}
!5996 = !{!5997}
!5997 = distinct !{!5997, !5998, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!5998 = distinct !{!5998, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!5999 = !{!6000}
!6000 = distinct !{!6000, !6001, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!6001 = distinct !{!6001, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!6002 = !{!6003, !6000}
!6003 = distinct !{!6003, !6004, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!6004 = distinct !{!6004, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!6005 = !{!6006}
!6006 = distinct !{!6006, !6007, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!6007 = distinct !{!6007, !"_ZN8facebook5velox6Status2OKEv"}
!6008 = !{!5961, !11, i64 8}
!6009 = distinct !{!6009, !31}
!6010 = !{!6011, !107, i64 0}
!6011 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINSD_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSF_iEEEJSF_iEEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISF_EENSN_IiEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_EUliE_", !107, i64 0, !219, i64 8, !5961, i64 16}
!6012 = !{!6011, !219, i64 8}
!6013 = !{!6014}
!6014 = distinct !{!6014, !6015, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbmEEDaSR_ST_SU_: argument 0"}
!6015 = distinct !{!6015, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbmEEDaSR_ST_SU_"}
!6016 = !{!6017, !6014}
!6017 = distinct !{!6017, !6018, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!6018 = distinct !{!6018, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!6019 = !{!6020, !6014}
!6020 = distinct !{!6020, !6021, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!6021 = distinct !{!6021, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!6022 = !{!6023, !6020, !6014}
!6023 = distinct !{!6023, !6024, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!6024 = distinct !{!6024, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!6025 = !{!6026}
!6026 = distinct !{!6026, !6027, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!6027 = distinct !{!6027, !"_ZN8facebook5velox6Status2OKEv"}
!6028 = distinct !{!6028, !31}
!6029 = !{!6030}
!6030 = distinct !{!6030, !6031, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSR_ST_SU_: argument 0"}
!6031 = distinct !{!6031, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE7iterateIJNS1_12VectorReaderISB_EENSI_IiEEEEEvRNSG_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_11ArrayWriterISB_EEbiEEDaSR_ST_SU_"}
!6032 = !{!6033}
!6033 = distinct !{!6033, !6034, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!6034 = distinct !{!6034, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm0ENS1_12VectorReaderISB_EEJNSI_IiEEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!6035 = !{!6036}
!6036 = distinct !{!6036, !6037, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_: argument 0"}
!6037 = distinct !{!6037, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIiEEJNS1_9ArrayViewILb1ESA_EEETnNSt9enable_ifIXneT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbRT0_DpRKT1_"}
!6038 = !{!6039, !6036}
!6039 = distinct !{!6039, !6040, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_: argument 0"}
!6040 = distinct !{!6040, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_9VarbinaryEEEEENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE14doApplyNotNullILm2EJNS1_9ArrayViewILb1ESA_EEiETnNSt9enable_ifIXeqT_L_ZNSF_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_11ArrayWriterISB_EERbDpRKT0_"}
!6041 = !{!6042}
!6042 = distinct !{!6042, !6043, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!6043 = distinct !{!6043, !"_ZN8facebook5velox6Status2OKEv"}
!6044 = distinct !{!6044, !31}
!6045 = !{!6046, !6047, i64 0}
!6046 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions19ArrayNGramsFunctionINS1_4exec10VectorExecEEENS1_5ArrayINS9_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSE_iEEEJSE_iEEELN9__gnu_cxx12_Lock_policyE2EE", !6047, i64 0, !111, i64 8}
!6047 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions19ArrayNGramsFunctionINS0_4exec10VectorExecEEENS0_5ArrayINS8_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSD_iEEEJSD_iEEE", !11, i64 0}
!6048 = !{!6049}
!6049 = distinct !{!6049, !6050, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions19ArrayNGramsFunctionINS2_4exec10VectorExecEEENS2_5ArrayINSA_INS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEENS2_15ConstantCheckerIJSF_iEEEJSF_iEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSR_: argument 0"}
!6050 = distinct !{!6050, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions19ArrayNGramsFunctionINS2_4exec10VectorExecEEENS2_5ArrayINSA_INS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEENS2_15ConstantCheckerIJSF_iEEEJSF_iEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSR_"}
!6051 = !{!6047, !6047, i64 0}
!6052 = distinct !{null, null}
!6053 = !{!6054, !107, i64 8}
!6054 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions19ArrayNGramsFunctionINS0_4exec10VectorExecEEENS0_5ArrayINS8_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSD_iEEEJSD_iEEE", !139, i64 0, !107, i64 8, !140, i64 16, !4, i64 32, !143, i64 40, !146, i64 56}
!6055 = !{!6054, !4, i64 32}
!6056 = !{!6057}
!6057 = distinct !{!6057, !6058, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!6058 = distinct !{!6058, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!6059 = !{!6060}
!6060 = distinct !{!6060, !6061, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!6061 = distinct !{!6061, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!6062 = !{!6063}
!6063 = distinct !{!6063, !6064, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!6064 = distinct !{!6064, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!6065 = !{!6063, !6060, !6057}
!6066 = !{!6067}
!6067 = distinct !{!6067, !6068, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6068 = distinct !{!6068, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6069 = distinct !{!6069, !31}
!6070 = !{!6071}
!6071 = distinct !{!6071, !6072, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!6072 = distinct !{!6072, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!6073 = !{!6074, !184, i64 0}
!6074 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions19ArrayNGramsFunctionINS0_4exec10VectorExecEEENS0_5ArrayINS8_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSD_iEEEJSD_iEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISJ_EEEUlvE0_", !184, i64 0, !186, i64 8, !188, i64 16}
!6075 = !{!6074, !186, i64 8}
!6076 = !{!6077}
!6077 = distinct !{!6077, !6078, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!6078 = distinct !{!6078, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!6079 = !{!6080}
!6080 = distinct !{!6080, !6081, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!6081 = distinct !{!6081, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!6082 = !{!6083}
!6083 = distinct !{!6083, !6084, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!6084 = distinct !{!6084, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!6085 = !{!6083, !6080, !6077}
!6086 = !{!6074, !188, i64 16}
!6087 = !{!6088, !184, i64 0}
!6088 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions19ArrayNGramsFunctionINS0_4exec10VectorExecEEENS0_5ArrayINS8_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSD_iEEEJSD_iEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISJ_EEEUlvE_", !184, i64 0, !186, i64 8, !188, i64 16}
!6089 = !{!6088, !186, i64 8}
!6090 = !{!6091}
!6091 = distinct !{!6091, !6092, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!6092 = distinct !{!6092, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!6093 = !{!6094}
!6094 = distinct !{!6094, !6095, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!6095 = distinct !{!6095, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!6096 = !{!6097}
!6097 = distinct !{!6097, !6098, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!6098 = distinct !{!6098, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!6099 = !{!6097, !6094, !6091}
!6100 = !{!6088, !188, i64 16}
!6101 = !{!6102}
!6102 = distinct !{!6102, !6103, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!6103 = distinct !{!6103, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!6104 = !{!240, !107, i64 1}
!6105 = distinct !{!6105, !31}
!6106 = !{!198, !107, i64 65}
!6107 = !{!198, !107, i64 66}
!6108 = !{!198, !107, i64 67}
!6109 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!6110 = !{!6111}
!6111 = distinct !{!6111, !6112, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6112 = distinct !{!6112, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6113 = !{!6114}
!6114 = distinct !{!6114, !6115, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19ArrayNGramsFunctionINS3_10VectorExecEEESF_NS2_5ArrayINSH_INS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEENS2_15ConstantCheckerIJSM_iEEEJSM_iEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1B_E4typeEOS1C_DpOS1D_: argument 0"}
!6115 = distinct !{!6115, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19ArrayNGramsFunctionINS3_10VectorExecEEESF_NS2_5ArrayINSH_INS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEENS2_15ConstantCheckerIJSM_iEEEJSM_iEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1B_E4typeEOS1C_DpOS1D_"}
!6116 = !{!6117, !6119, !6121, !6114}
!6117 = distinct !{!6117, !6118, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions19ArrayNGramsFunctionINS2_10VectorExecEEES8_NS1_5ArrayINSA_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSF_iEEEJSF_iEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6118 = distinct !{!6118, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions19ArrayNGramsFunctionINS2_10VectorExecEEES8_NS1_5ArrayINSA_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSF_iEEEJSF_iEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6119 = distinct !{!6119, !6120, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINSB_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSG_iEEEJSG_iEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS1_17SignatureVariableESaISX_EEbENKUlvE_clEv: argument 0"}
!6120 = distinct !{!6120, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINSB_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSG_iEEEJSG_iEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS1_17SignatureVariableESaISX_EEbENKUlvE_clEv"}
!6121 = distinct !{!6121, !6122, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19ArrayNGramsFunctionINS3_10VectorExecEEES9_NS2_5ArrayINSB_INS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEENS2_15ConstantCheckerIJSG_iEEEJSG_iEEEEESt14default_deleteISL_EERZNS3_22SimpleFunctionRegistry16registerFunctionISL_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!6122 = distinct !{!6122, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19ArrayNGramsFunctionINS3_10VectorExecEEES9_NS2_5ArrayINSB_INS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEENS2_15ConstantCheckerIJSG_iEEEJSG_iEEEEESt14default_deleteISL_EERZNS3_22SimpleFunctionRegistry16registerFunctionISL_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!6123 = !{!6124}
!6124 = distinct !{!6124, !6125, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions19ArrayNGramsFunctionINS2_10VectorExecEEES8_NS1_5ArrayINSA_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSF_iEEEJSF_iEEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISP_EERKNS4_11QueryConfigERKSL_ISM_INS1_10BaseVectorEESaISY_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6125 = distinct !{!6125, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions19ArrayNGramsFunctionINS2_10VectorExecEEES8_NS1_5ArrayINSA_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSF_iEEEJSF_iEEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISP_EERKNS4_11QueryConfigERKSL_ISM_INS1_10BaseVectorEESaISY_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6126 = !{!6127, !6127, i64 0}
!6127 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS0_4exec10VectorExecEEES6_NS0_5ArrayINS8_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSD_iEEEJSD_iEEE", !11, i64 0}
!6128 = !{!6129}
!6129 = distinct !{!6129, !6130, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions19ArrayNGramsFunctionINS1_4exec10VectorExecEEES7_NS1_5ArrayINS9_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSE_iEEEJSE_iEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6130 = distinct !{!6130, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions19ArrayNGramsFunctionINS1_4exec10VectorExecEEES7_NS1_5ArrayINS9_INS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEENS1_15ConstantCheckerIJSE_iEEEJSE_iEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6131 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEED2Ev}
!6132 = !{!6133, !499, i64 0}
!6133 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayNGramsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS9_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE12ApplyContextE", !499, i64 0, !500, i64 8, !6134, i64 16, !510, i64 264, !107, i64 272, !107, i64 273}
!6134 = !{!"_ZTSN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEvEE", !502, i64 0, !500, i64 16, !6135, i64 24, !6137, i64 64}
!6135 = !{!"_ZTSN8facebook5velox4exec11ArrayWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEE", !500, i64 0, !6136, i64 8, !107, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !107, i64 33}
!6136 = !{!"p1 _ZTSN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvEE", !11, i64 0}
!6137 = !{!"_ZTSN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvEE", !502, i64 0, !500, i64 16, !6138, i64 24, !6140, i64 88}
!6138 = !{!"_ZTSN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEE", !472, i64 0, !6139, i64 8, !107, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5771, i64 32, !107, i64 56}
!6139 = !{!"p1 _ZTSN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvEE", !11, i64 0}
!6140 = !{!"_ZTSN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvEE", !502, i64 0, !472, i64 16, !6141, i64 24, !4, i64 56, !6143, i64 64, !143, i64 80}
!6141 = !{!"_ZTSN8facebook5velox4exec13GenericWriterE", !472, i64 0, !6142, i64 8, !150, i64 16, !587, i64 24}
!6142 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec16VectorWriterBaseEE", !11, i64 0}
!6143 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec16VectorWriterBaseEE", !6144, i64 0}
!6144 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec16VectorWriterBaseELN9__gnu_cxx12_Lock_policyE2EE", !6145, i64 0, !111, i64 8}
!6145 = !{!"p1 _ZTSN8facebook5velox4exec16VectorWriterBaseE", !11, i64 0}
!6146 = !{!6135, !4, i64 20}
!6147 = !{!6135, !4, i64 24}
!6148 = !{!6135, !4, i64 28}
!6149 = !{!6142, !6142, i64 0}
!6150 = !{!6140, !4, i64 56}
!6151 = !{!6133, !107, i64 272}
!6152 = !{!6133, !107, i64 273}
!6153 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEvED2Ev}
!6154 = !{!6133, !500, i64 8}
!6155 = distinct !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6156 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev}
!6157 = distinct !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev, null, null, null}
!6158 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS3_INS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEvED2Ev}
!6159 = !{!6133, !510, i64 264}
!6160 = !{!6161, !587, i64 136}
!6161 = !{!"_ZTSN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEE", !590, i64 0, !579, i64 120, !500, i64 128, !587, i64 136, !587, i64 144, !6162, i64 152, !611, i64 224}
!6162 = !{!"_ZTSN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEE", !579, i64 0, !6163, i64 8, !6164, i64 56}
!6163 = !{!"_ZTSSt5arrayISt10shared_ptrIvELm3EE", !5, i64 0}
!6164 = !{!"_ZTSSt8optionalIPKSt9type_infoE", !6165, i64 0}
!6165 = !{!"_ZTSSt14_Optional_baseIPKSt9type_infoLb1ELb1EE", !6166, i64 0}
!6166 = !{!"_ZTSSt17_Optional_payloadIPKSt9type_infoLb1ELb1ELb1EE", !6167, i64 0}
!6167 = !{!"_ZTSSt22_Optional_payload_baseIPKSt9type_infoE", !5, i64 0, !107, i64 8}
!6168 = !{!6161, !587, i64 144}
!6169 = !{!6134, !500, i64 16}
!6170 = !{!6137, !500, i64 16}
!6171 = !{!6140, !472, i64 16}
!6172 = !{!6141, !472, i64 0}
!6173 = distinct !{null, null}
!6174 = !{!6175, !6139, i64 8}
!6175 = !{!"_ZTSZZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvE4initERNS0_10BaseVectorEENKUlvE_clEvEUlvE_", !11, i64 0, !6139, i64 8}
!6176 = !{!6138, !6139, i64 8}
!6177 = !{!6138, !472, i64 0}
!6178 = !{!6138, !4, i64 24}
!6179 = distinct !{null, null}
!6180 = !{!6138, !4, i64 28}
!6181 = !{!6138, !107, i64 56}
!6182 = !{!6135, !6136, i64 8}
!6183 = !{!6135, !500, i64 0}
!6184 = distinct !{null}
!6185 = !{!6135, !107, i64 33}
!6186 = !{!6134, !4, i64 44}
!6187 = !{!6134, !4, i64 48}
!6188 = distinct !{null}
!6189 = !{!6135, !107, i64 16}
!6190 = distinct !{null, null, null}
!6191 = distinct !{null}
!6192 = !{!6193}
!6193 = distinct !{!6193, !6194, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6194 = distinct !{!6194, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6195 = !{!6137, !4, i64 48}
!6196 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvE6finishEv}
!6197 = !{!6144, !6145, i64 0}
!6198 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvE6finishEv, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvE6finishEv}
!6199 = !{!6138, !4, i64 20}
!6200 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvE12finalizeNullEv, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvE12finalizeNullEv}
!6201 = !{!6137, !4, i64 44}
!6202 = distinct !{null}
!6203 = !{!6138, !107, i64 16}
!6204 = distinct !{null, null, null}
!6205 = distinct !{null}
!6206 = !{!6207}
!6207 = distinct !{!6207, !6208, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6208 = distinct !{!6208, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6209 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvE6finishEv}
!6210 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvE12finalizeNullEv}
!6211 = distinct !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6212 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev}
!6213 = distinct !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev, null, null, null}
!6214 = distinct !{null}
!6215 = !{!6216}
!6216 = distinct !{!6216, !6217, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6217 = distinct !{!6217, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6218 = distinct !{null, null, null}
!6219 = !{!6175, !11, i64 0}
!6220 = !{!6221}
!6221 = distinct !{!6221, !6222, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6222 = distinct !{!6222, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6223 = !{!6141, !150, i64 16}
!6224 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6225 = !{!6226, !6228}
!6226 = distinct !{!6226, !6227, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorWriterINS2_12UnknownValueEvEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!6227 = distinct !{!6227, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorWriterINS2_12UnknownValueEvEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!6228 = distinct !{!6228, !6229, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorWriterINS1_12UnknownValueEvEEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!6229 = distinct !{!6229, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorWriterINS1_12UnknownValueEvEEJEESt10shared_ptrIT_EDpOT0_"}
!6230 = !{!6228}
!6231 = !{!6141, !6142, i64 8}
!6232 = !{!6145, !6145, i64 0}
!6233 = distinct !{null, null, null, null, null}
!6234 = !{!6235, !6236, i64 16}
!6235 = !{!"_ZTSN8facebook5velox4exec12VectorWriterINS0_12UnknownValueEvEE", !502, i64 0, !6236, i64 16, !6237, i64 24}
!6236 = !{!"p1 _ZTSN8facebook5velox10FlatVectorINS0_12UnknownValueEEE", !11, i64 0}
!6237 = !{!"p1 _ZTSN8facebook5velox12UnknownValueE", !11, i64 0}
!6238 = !{!6235, !6237, i64 24}
!6239 = !{!6240}
!6240 = distinct !{!6240, !6241, !"_ZN8facebook5velox12errorMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6241 = distinct !{!6241, !"_ZN8facebook5velox12errorMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6242 = !{!6243}
!6243 = distinct !{!6243, !6244, !"_ZN8facebook5velox12errorMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6244 = distinct !{!6244, !"_ZN8facebook5velox12errorMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6245 = !{!6246, !6247, i64 0}
!6246 = !{!"_ZTSN5folly7dynamicE", !6247, i64 0, !5, i64 8}
!6247 = !{!"_ZTSN5folly7dynamic4TypeE", !5, i64 0}
!6248 = !{!6249, !6250, i64 0}
!6249 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEEE", !6250, i64 0, !6251, i64 8}
!6250 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !11, i64 0}
!6251 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES6_EEEEELb1EEE", !633, i64 0, !6252, i64 8}
!6252 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNS_7dynamicES4_EEE", !12, i64 0}
!6253 = distinct !{null, null}
!6254 = !{!6255}
!6255 = distinct !{!6255, !6256, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6256 = distinct !{!6256, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6257 = !{!6258, !107, i64 1}
!6258 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox12UnknownValueEE", !5, i64 0, !107, i64 1}
!6259 = !{!6260, !6237, i64 120}
!6260 = !{!"_ZTSN8facebook5velox10FlatVectorINS0_12UnknownValueEEE", !6261, i64 0, !477, i64 112, !6237, i64 120, !622, i64 128, !627, i64 152}
!6261 = !{!"_ZTSN8facebook5velox12SimpleVectorINS0_12UnknownValueEEE", !474, i64 0, !611, i64 94, !5, i64 96, !4, i64 100, !6262, i64 104}
!6262 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsINS0_12UnknownValueEEE", !6263, i64 0, !6263, i64 2}
!6263 = !{!"_ZTSSt8optionalIN8facebook5velox12UnknownValueEE", !6264, i64 0}
!6264 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox12UnknownValueELb1ELb1EE", !6265, i64 0}
!6265 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox12UnknownValueELb1ELb1ELb1EE", !6258, i64 0}
!6266 = !{!6267}
!6267 = distinct !{!6267, !6268, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6268 = distinct !{!6268, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6269 = !{!6270}
!6270 = distinct !{!6270, !6271, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6271 = distinct !{!6271, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6272 = !{!6273}
!6273 = distinct !{!6273, !6274, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6274 = distinct !{!6274, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6275 = !{!6276}
!6276 = distinct !{!6276, !6277, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!6277 = distinct !{!6277, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!6278 = !{!6237, !6237, i64 0}
!6279 = distinct !{!6279, !31}
!6280 = !{!6281}
!6281 = distinct !{!6281, !6282, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6282 = distinct !{!6282, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6283 = distinct !{null, null}
!6284 = distinct !{!6284, !31}
!6285 = !{!6286}
!6286 = distinct !{!6286, !6287, !"_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE: argument 0"}
!6287 = distinct !{!6287, !"_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE"}
!6288 = !{!6289}
!6289 = distinct !{!6289, !6290, !"_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE: argument 0"}
!6290 = distinct !{!6290, !"_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE"}
!6291 = distinct !{null}
!6292 = !{!6293}
!6293 = distinct !{!6293, !6294, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_12UnknownValueEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERKiSJ_St6vectorISJ_SaISJ_EERKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESW_RKST_IbESW_SW_EESA_IT_EDpOT0_: argument 0"}
!6294 = distinct !{!6294, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_12UnknownValueEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERKiSJ_St6vectorISJ_SaISJ_EERKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESW_RKST_IbESW_SW_EESA_IT_EDpOT0_"}
!6295 = distinct !{null, null, null, null, null}
!6296 = distinct !{null, null, null, null}
!6297 = !{!6298}
!6298 = distinct !{!6298, !6299, !"_ZN8facebook5velox13AlignedBuffer4copyINS0_12UnknownValueEEEN5boost13intrusive_ptrINS0_6BufferEEERKS7_PNS0_6memory10MemoryPoolE: argument 0"}
!6299 = distinct !{!6299, !"_ZN8facebook5velox13AlignedBuffer4copyINS0_12UnknownValueEEEN5boost13intrusive_ptrINS0_6BufferEEERKS7_PNS0_6memory10MemoryPoolE"}
!6300 = !{!6301}
!6301 = distinct !{!6301, !6302, !"_ZNK8facebook5velox10BaseVector10sliceNullsEii: argument 0"}
!6302 = distinct !{!6302, !"_ZNK8facebook5velox10BaseVector10sliceNullsEii"}
!6303 = distinct !{null}
!6304 = !{!6305}
!6305 = distinct !{!6305, !6306, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_12UnknownValueEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSJ_St6vectorISJ_SaISJ_EEEESA_IT_EDpOT0_: argument 0"}
!6306 = distinct !{!6306, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_12UnknownValueEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSJ_St6vectorISJ_SaISJ_EEEESA_IT_EDpOT0_"}
!6307 = distinct !{null, null, null, null, null}
!6308 = distinct !{null, null, null, null}
!6309 = !{!6310}
!6310 = distinct !{!6310, !6311, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!6311 = distinct !{!6311, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!6312 = !{!6313, !6315, !6317}
end_hunk_1
