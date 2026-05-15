inline.NumInlined: 67966
inline.NumDeleted: 17055
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !242
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !242
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
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
  br i1 %i.cd, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !140

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
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
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.y ], [ %i.cg, %bb.x ] ; 2 uses
  %i.ci = load i8, ptr %i.r, align 8, !tbaa !362, !range !167, !noundef !168
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.r, align 8, !tbaa !362
  br i1 %i.cj, label %bb.aa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %bb.aa
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18: ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.cp = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.f
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !26
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ce, %bb.v ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.ab
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !26
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200  ; 2 uses
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
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !3248

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
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !233
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !233
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16  ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !3250, !range !167, !noundef !168
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !3250, !range !167, !noundef !168
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !3251, !range !167, !noundef !168
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !3251, !range !167, !noundef !168
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3249

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !3252, !range !167, !noundef !168
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !3252, !range !167, !noundef !168
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !3253

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3254
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !3254
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !3254
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !3254
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.191, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3254
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.191) #31
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
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !317

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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !317

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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
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
begin_hunk_1_@llvm.ucmp.i32.i32
!3049 = distinct !{!3049, !3050, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!3050 = distinct !{!3050, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!3051 = !{!3052}
!3052 = distinct !{!3052, !3053, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3053 = distinct !{!3053, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!3054 = !{!3055}
!3055 = distinct !{!3055, !3056, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3056 = distinct !{!3056, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!3057 = !{!3055, !3052, !3049}
!3058 = !{!3046, !224, i64 16}
!3059 = !{!3060}
!3060 = distinct !{!3060, !3061, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEESF_bNS2_15ConstantCheckerIJNS2_10CustomTypeINS2_10IPAddressTELb1EEESK_EEEJSK_SK_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES17_E4typeEOS18_DpOS19_: argument 0"}
!3061 = distinct !{!3061, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEESF_bNS2_15ConstantCheckerIJNS2_10CustomTypeINS2_10IPAddressTELb1EEESK_EEEJSK_SK_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES17_E4typeEOS18_DpOS19_"}
!3062 = !{!3063, !3065, !3067, !3060}
!3063 = distinct !{!3063, !3064, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_10IPAddressTELb1EEESD_EEEJSD_SD_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3064 = distinct !{!3064, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_10IPAddressTELb1EEESD_EEEJSD_SD_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3065 = distinct !{!3065, !3066, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESE_EEEJSE_SE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbENKUlvE_clEv: argument 0"}
!3066 = distinct !{!3066, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESE_EEEJSE_SE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbENKUlvE_clEv"}
!3067 = distinct !{!3067, !3068, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEES9_bNS2_15ConstantCheckerIJNS2_10CustomTypeINS2_10IPAddressTELb1EEESE_EEEJSE_SE_EEEEESt14default_deleteISH_EERZNS3_22SimpleFunctionRegistry16registerFunctionISH_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS3_17SignatureVariableESaISY_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!3068 = distinct !{!3068, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEES9_bNS2_15ConstantCheckerIJNS2_10CustomTypeINS2_10IPAddressTELb1EEESE_EEEJSE_SE_EEEEESt14default_deleteISH_EERZNS3_22SimpleFunctionRegistry16registerFunctionISH_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS3_17SignatureVariableESaISY_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!3069 = !{!3070}
!3070 = distinct !{!3070, !3071, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_10IPAddressTELb1EEESD_EEEJSD_SD_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISL_EERKNS4_11QueryConfigERKSH_ISI_INS1_10BaseVectorEESaISU_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3071 = distinct !{!3071, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_10IPAddressTELb1EEESD_EEEJSD_SD_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISL_EERKNS4_11QueryConfigERKSH_ISI_INS1_10BaseVectorEESaISU_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3072 = !{!3073, !3073, i64 0}
!3073 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions10EqFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESB_EEEJSB_SB_EEE", !11, i64 0}
!3074 = !{!3075}
!3075 = distinct !{!3075, !3076, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions10EqFunctionINS1_4exec10VectorExecEEES7_bNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_10IPAddressTELb1EEESC_EEEJSC_SC_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3076 = distinct !{!3076, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions10EqFunctionINS1_4exec10VectorExecEEES7_bNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_10IPAddressTELb1EEESC_EEEJSC_SC_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3077 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEED2Ev}
!3078 = !{!3079, !503, i64 0}
!3079 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE12ApplyContextE", !503, i64 0, !504, i64 8, !505, i64 16, !507, i64 40, !143, i64 48, !143, i64 49}
!3080 = !{!3079, !143, i64 48}
!3081 = !{!3079, !143, i64 49}
!3082 = !{!3079, !504, i64 8}
!3083 = !{!3079, !507, i64 40}
!3084 = !{!3085}
!3085 = distinct !{!3085, !3086, !"_ZSt20dynamic_pointer_castIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEKNS1_4TypeEESt10shared_ptrIT_ERKS8_IT0_E: argument 0"}
!3086 = distinct !{!3086, !"_ZSt20dynamic_pointer_castIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEKNS1_4TypeEESt10shared_ptrIT_ERKS8_IT0_E"}
!3087 = !{!3088, !3089, i64 0}
!3088 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EE", !3089, i64 0, !147, i64 8}
!3089 = !{!"p1 _ZTSN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE10EEE", !11, i64 0}
!3090 = distinct !{ptr @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev, null, null, null}
!3091 = !{!3092}
!3092 = distinct !{!3092, !3093, !"_ZSt20dynamic_pointer_castIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEKNS1_4TypeEESt10shared_ptrIT_ERKS8_IT0_E: argument 0"}
!3093 = distinct !{!3093, !"_ZSt20dynamic_pointer_castIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEKNS1_4TypeEESt10shared_ptrIT_ERKS8_IT0_E"}
!3094 = !{!3095, !3095, i64 0}
!3095 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE12ApplyContextE", !11, i64 0}
!3096 = !{!3097, !507, i64 16}
!3097 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_", !11, i64 0, !11, i64 8, !507, i64 16}
!3098 = distinct !{null, null, null}
!3099 = !{!3097, !11, i64 0}
!3100 = !{!3101, !3103, i64 8}
!3101 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_", !3102, i64 0, !3103, i64 8, !3103, i64 16, !3095, i64 24, !11, i64 32}
!3102 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEEE", !11, i64 0}
!3103 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEE", !11, i64 0}
!3104 = !{!3101, !3103, i64 16}
!3105 = !{!3106}
!3106 = distinct !{!3106, !3107, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_: argument 0"}
!3107 = distinct !{!3107, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_"}
!3108 = !{!3109}
!3109 = distinct !{!3109, !3110, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3110 = distinct !{!3110, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3111 = !{!3112, !636, i64 0}
!3112 = !{!"_ZTSN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEE", !636, i64 0, !3113, i64 8}
!3113 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEE", !3088, i64 0}
!3114 = !{!3115, !3116, i64 0}
!3115 = !{!"_ZTSN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInEE", !3116, i64 0, !3113, i64 16}
!3116 = !{!"__int128", !5, i64 0}
!3117 = !{!3118}
!3118 = distinct !{!3118, !3119, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_: argument 0"}
!3119 = distinct !{!3119, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_"}
!3120 = !{!3121}
!3121 = distinct !{!3121, !3122, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3122 = distinct !{!3122, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3123 = distinct !{null}
!3124 = !{!3125}
!3125 = distinct !{!3125, !3126, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!3126 = distinct !{!3126, !"_ZN8facebook5velox6Status2OKEv"}
!3127 = distinct !{ptr @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev, null, null, null}
!3128 = !{!3101, !3095, i64 24}
!3129 = !{!3101, !11, i64 32}
!3130 = !{!3131, !864, i64 16}
!3131 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextEDpRT_EUlT_bT0_E_", !3095, i64 0, !862, i64 8, !864, i64 16}
!3132 = distinct !{!3132, !28}
!3133 = distinct !{!3133, !28}
!3134 = !{!3135, !143, i64 0}
!3135 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESG_EEEJSG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_", !143, i64 0, !255, i64 8, !3097, i64 16}
!3136 = !{!3135, !255, i64 8}
!3137 = !{!3138}
!3138 = distinct !{!3138, !3139, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_: argument 0"}
!3139 = distinct !{!3139, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_"}
!3140 = !{!3141}
!3141 = distinct !{!3141, !3142, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3142 = distinct !{!3142, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3143 = !{!3144}
!3144 = distinct !{!3144, !3145, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_: argument 0"}
!3145 = distinct !{!3145, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_"}
!3146 = !{!3147}
!3147 = distinct !{!3147, !3148, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3148 = distinct !{!3148, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3149 = !{!3150}
!3150 = distinct !{!3150, !3151, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!3151 = distinct !{!3151, !"_ZN8facebook5velox6Status2OKEv"}
!3152 = distinct !{!3152, !28}
!3153 = !{!3154, !143, i64 0}
!3154 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESG_EEEJSG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUliE_", !143, i64 0, !255, i64 8, !3097, i64 16}
!3155 = !{!3154, !255, i64 8}
!3156 = !{!3157}
!3157 = distinct !{!3157, !3158, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_: argument 0"}
!3158 = distinct !{!3158, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_"}
!3159 = !{!3160}
!3160 = distinct !{!3160, !3161, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3161 = distinct !{!3161, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3162 = !{!3163}
!3163 = distinct !{!3163, !3164, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_: argument 0"}
!3164 = distinct !{!3164, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_"}
!3165 = !{!3166}
!3166 = distinct !{!3166, !3167, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3167 = distinct !{!3167, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3168 = !{!3169}
!3169 = distinct !{!3169, !3170, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!3170 = distinct !{!3170, !"_ZN8facebook5velox6Status2OKEv"}
!3171 = distinct !{!3171, !28}
!3172 = !{!3173}
!3173 = distinct !{!3173, !3174, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_: argument 0"}
!3174 = distinct !{!3174, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISC_EEJSI_ETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSN_RT0_DpRKT1_"}
!3175 = !{!3176}
!3176 = distinct !{!3176, !3177, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3177 = distinct !{!3177, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3178 = !{!3179}
!3179 = distinct !{!3179, !3180, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_: argument 0"}
!3180 = distinct !{!3180, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_10IPAddressTELb1EEESC_EEEJSC_SC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJNS1_34CustomTypeWithCustomComparisonViewInEEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSQ_RT0_DpRKT1_"}
!3181 = !{!3182}
!3182 = distinct !{!3182, !3183, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm: argument 0"}
!3183 = distinct !{!3183, !"_ZNK8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEixEm"}
!3184 = !{!3185}
!3185 = distinct !{!3185, !3186, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!3186 = distinct !{!3186, !"_ZN8facebook5velox6Status2OKEv"}
!3187 = distinct !{!3187, !28}
!3188 = !{!3189, !3190, i64 0}
!3189 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions10EqFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEELN9__gnu_cxx12_Lock_policyE2EE", !3190, i64 0, !147, i64 8}
!3190 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions10EqFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESC_EEEJSC_SC_EEE", !11, i64 0}
!3191 = !{!3192}
!3192 = distinct !{!3192, !3193, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions10EqFunctionINS2_4exec10VectorExecEEEbNS2_15ConstantCheckerIJNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEESE_EEEJSE_SE_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSO_: argument 0"}
!3193 = distinct !{!3193, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions10EqFunctionINS2_4exec10VectorExecEEEbNS2_15ConstantCheckerIJNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEESE_EEEJSE_SE_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSO_"}
!3194 = !{!3190, !3190, i64 0}
!3195 = distinct !{null, null}
!3196 = !{!3197, !143, i64 8}
!3197 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions10EqFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESC_EEEJSC_SC_EEE", !175, i64 0, !143, i64 8, !176, i64 16, !4, i64 32, !179, i64 40, !182, i64 56}
!3198 = !{!3197, !4, i64 32}
!3199 = !{!3200}
!3200 = distinct !{!3200, !3201, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!3201 = distinct !{!3201, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!3202 = !{!3203}
!3203 = distinct !{!3203, !3204, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3204 = distinct !{!3204, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!3205 = !{!3206}
!3206 = distinct !{!3206, !3207, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3207 = distinct !{!3207, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!3208 = !{!3206, !3203, !3200}
!3209 = !{!3210}
!3210 = distinct !{!3210, !3211, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3211 = distinct !{!3211, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3212 = distinct !{!3212, !28}
!3213 = !{!3214}
!3214 = distinct !{!3214, !3215, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!3215 = distinct !{!3215, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!3216 = !{!3217, !220, i64 0}
!3217 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions10EqFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESC_EEEJSC_SC_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISG_EEEUlvE0_", !220, i64 0, !222, i64 8, !224, i64 16}
!3218 = !{!3217, !222, i64 8}
!3219 = !{!3220}
!3220 = distinct !{!3220, !3221, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!3221 = distinct !{!3221, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!3222 = !{!3223}
!3223 = distinct !{!3223, !3224, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3224 = distinct !{!3224, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!3225 = !{!3226}
!3226 = distinct !{!3226, !3227, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3227 = distinct !{!3227, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!3228 = !{!3226, !3223, !3220}
!3229 = !{!3217, !224, i64 16}
!3230 = !{!3231, !220, i64 0}
!3231 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions10EqFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESC_EEEJSC_SC_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISG_EEEUlvE_", !220, i64 0, !222, i64 8, !224, i64 16}
!3232 = !{!3231, !222, i64 8}
!3233 = !{!3234}
!3234 = distinct !{!3234, !3235, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!3235 = distinct !{!3235, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!3236 = !{!3237}
!3237 = distinct !{!3237, !3238, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3238 = distinct !{!3238, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!3239 = !{!3240}
!3240 = distinct !{!3240, !3241, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3241 = distinct !{!3241, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!3242 = !{!3240, !3237, !3234}
!3243 = !{!3231, !224, i64 16}
!3244 = !{!3245}
!3245 = distinct !{!3245, !3246, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!3246 = distinct !{!3246, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!3247 = !{!276, !143, i64 1}
!3248 = distinct !{!3248, !28}
!3249 = !{!"branch_weights", i32 2146410443, i32 1073205}
!3250 = !{!234, !143, i64 65}
!3251 = !{!234, !143, i64 66}
!3252 = !{!234, !143, i64 67}
!3253 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!3254 = !{!3255}
!3255 = distinct !{!3255, !3256, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3256 = distinct !{!3256, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3257 = !{!3258}
!3258 = distinct !{!3258, !3259, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEESF_bNS2_15ConstantCheckerIJNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEESL_EEEJSL_SL_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EERKSP_INS3_17SignatureVariableESaIS10_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES18_E4typeEOS19_DpOS1A_: argument 0"}
!3259 = distinct !{!3259, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEESF_bNS2_15ConstantCheckerIJNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEESL_EEEJSL_SL_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EERKSP_INS3_17SignatureVariableESaIS10_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES18_E4typeEOS19_DpOS1A_"}
!3260 = !{!3261, !3263, !3265, !3258}
!3261 = distinct !{!3261, !3262, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESE_EEEJSE_SE_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3262 = distinct !{!3262, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESE_EEEJSE_SE_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3263 = distinct !{!3263, !3264, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbENKUlvE_clEv: argument 0"}
!3264 = distinct !{!3264, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbENKUlvE_clEv"}
!3265 = distinct !{!3265, !3266, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEES9_bNS2_15ConstantCheckerIJNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEEESt14default_deleteISI_EERZNS3_22SimpleFunctionRegistry16registerFunctionISI_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!3266 = distinct !{!3266, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions10EqFunctionINS3_10VectorExecEEES9_bNS2_15ConstantCheckerIJNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEEESt14default_deleteISI_EERZNS3_22SimpleFunctionRegistry16registerFunctionISI_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!3267 = !{!3268}
!3268 = distinct !{!3268, !3269, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESE_EEEJSE_SE_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISM_EERKNS4_11QueryConfigERKSI_ISJ_INS1_10BaseVectorEESaISV_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3269 = distinct !{!3269, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions10EqFunctionINS2_10VectorExecEEES8_bNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESE_EEEJSE_SE_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISM_EERKNS4_11QueryConfigERKSI_ISJ_INS1_10BaseVectorEESaISV_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3270 = !{!3271, !3271, i64 0}
!3271 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions10EqFunctionINS0_4exec10VectorExecEEES6_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESC_EEEJSC_SC_EEE", !11, i64 0}
!3272 = !{!3273}
!3273 = distinct !{!3273, !3274, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions10EqFunctionINS1_4exec10VectorExecEEES7_bNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3274 = distinct !{!3274, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions10EqFunctionINS1_4exec10VectorExecEEES7_bNS1_15ConstantCheckerIJNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3275 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEED2Ev}
!3276 = !{!3277, !503, i64 0}
!3277 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE12ApplyContextE", !503, i64 0, !504, i64 8, !505, i64 16, !507, i64 40, !143, i64 48, !143, i64 49}
!3278 = !{!3277, !143, i64 48}
!3279 = !{!3277, !143, i64 49}
!3280 = !{!3277, !504, i64 8}
!3281 = !{!3277, !507, i64 40}
!3282 = !{!3283, !143, i64 8}
!3283 = !{!"_ZTSSt22_Optional_payload_baseIPKSt9type_infoE", !5, i64 0, !143, i64 8}
!3284 = !{!653, !4, i64 0}
!3285 = !{!558, !559, i64 24}
!3286 = !{!559, !559, i64 0}
!3287 = !{!3288, !11, i64 0}
!3288 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !147, i64 8}
!3289 = !{!3290, !636, i64 0}
!3290 = !{!"_ZTSN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEE", !636, i64 0, !3291, i64 8, !3292, i64 56}
!3291 = !{!"_ZTSSt5arrayISt10shared_ptrIvELm3EE", !5, i64 0}
!3292 = !{!"_ZTSSt8optionalIPKSt9type_infoE", !3293, i64 0}
!3293 = !{!"_ZTSSt14_Optional_baseIPKSt9type_infoLb1ELb1EE", !3294, i64 0}
!3294 = !{!"_ZTSSt17_Optional_payloadIPKSt9type_infoLb1ELb1ELb1EE", !3283, i64 0}
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3297 = distinct !{!3297, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3298 = !{!3299}
!3299 = distinct !{!3299, !3300, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_12UnknownValueEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3300 = distinct !{!3300, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_12UnknownValueEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3301 = !{!3302, !3302, i64 0}
!3302 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderINS0_12UnknownValueEEE", !11, i64 0}
!3303 = !{!3304, !3305, i64 8}
!3304 = !{!"_ZTSZZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEC1EPKNS0_13DecodedVectorEENKUlvE_clEvEUlvE_", !11, i64 0, !3305, i64 8}
!3305 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEE", !11, i64 0}
!3306 = !{!3307, !3307, i64 0}
!3307 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE12ApplyContextE", !11, i64 0}
!3308 = !{!3309, !507, i64 16}
!3309 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_", !11, i64 0, !11, i64 8, !507, i64 16}
!3310 = distinct !{null, null, null}
!3311 = !{!3304, !11, i64 0}
!3312 = !{!3313}
!3313 = distinct !{!3313, !3314, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3314 = distinct !{!3314, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3315 = !{!3316}
!3316 = distinct !{!3316, !3317, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIbEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3317 = distinct !{!3317, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIbEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3318 = !{!3319, !3316}
!3319 = distinct !{!3319, !3320, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3320 = distinct !{!3320, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3321 = !{!1654, !1654, i64 0}
!3322 = !{!3323}
!3323 = distinct !{!3323, !3324, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3324 = distinct !{!3324, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3325 = !{!3326}
!3326 = distinct !{!3326, !3327, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIiEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3327 = distinct !{!3327, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIiEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3328 = !{!3329, !3326}
!3329 = distinct !{!3329, !3330, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3330 = distinct !{!3330, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3331 = !{!3332, !3332, i64 0}
!3332 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderIiEE", !11, i64 0}
!3333 = !{!3334}
!3334 = distinct !{!3334, !3335, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3335 = distinct !{!3335, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3336 = !{!3337}
!3337 = distinct !{!3337, !3338, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIaEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3338 = distinct !{!3338, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIaEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3339 = !{!3340, !3337}
!3340 = distinct !{!3340, !3341, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIaEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3341 = distinct !{!3341, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIaEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3342 = !{!3343, !3343, i64 0}
!3343 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderIaEE", !11, i64 0}
!3344 = !{!3345}
!3345 = distinct !{!3345, !3346, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3346 = distinct !{!3346, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3347 = !{!3348}
!3348 = distinct !{!3348, !3349, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIsEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3349 = distinct !{!3349, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIsEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3350 = !{!3351, !3348}
!3351 = distinct !{!3351, !3352, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIsEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3352 = distinct !{!3352, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIsEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3353 = !{!3354, !3354, i64 0}
!3354 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderIsEE", !11, i64 0}
!3355 = !{!3356}
!3356 = distinct !{!3356, !3357, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3357 = distinct !{!3357, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3358 = !{!3359}
!3359 = distinct !{!3359, !3360, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIlEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3360 = distinct !{!3360, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIlEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3361 = !{!3362, !3359}
!3362 = distinct !{!3362, !3363, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3363 = distinct !{!3363, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3364 = !{!3365, !3365, i64 0}
!3365 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderIlEE", !11, i64 0}
!3366 = !{!3367}
!3367 = distinct !{!3367, !3368, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3368 = distinct !{!3368, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3369 = !{!3370}
!3370 = distinct !{!3370, !3371, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderInEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3371 = distinct !{!3371, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderInEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3372 = !{!3373, !3370}
!3373 = distinct !{!3373, !3374, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderInEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3374 = distinct !{!3374, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderInEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3375 = !{!3376, !3376, i64 0}
!3376 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderInEE", !11, i64 0}
!3377 = !{!3378}
!3378 = distinct !{!3378, !3379, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3379 = distinct !{!3379, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3380 = !{!3381}
!3381 = distinct !{!3381, !3382, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIfEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3382 = distinct !{!3382, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIfEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3383 = !{!3384, !3381}
!3384 = distinct !{!3384, !3385, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3385 = distinct !{!3385, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3386 = !{!3387, !3387, i64 0}
!3387 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderIfEE", !11, i64 0}
!3388 = !{!3389}
!3389 = distinct !{!3389, !3390, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3390 = distinct !{!3390, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3391 = !{!3392}
!3392 = distinct !{!3392, !3393, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIdEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3393 = distinct !{!3393, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderIdEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3394 = !{!3395, !3392}
!3395 = distinct !{!3395, !3396, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!3396 = distinct !{!3396, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!3397 = !{!3398, !3398, i64 0}
!3398 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderIdEE", !11, i64 0}
!3399 = !{!3400}
!3400 = distinct !{!3400, !3401, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3401 = distinct !{!3401, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3402 = !{!3403}
!3403 = distinct !{!3403, !3404, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_7VarcharEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3404 = distinct !{!3404, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_7VarcharEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3405 = !{!3406, !3403}
!3406 = distinct !{!3406, !3407, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_7VarcharEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!3407 = distinct !{!3407, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_7VarcharEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!3408 = !{!1163, !1163, i64 0}
!3409 = !{!3410}
!3410 = distinct !{!3410, !3411, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3411 = distinct !{!3411, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3412 = !{!3413}
!3413 = distinct !{!3413, !3414, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_9VarbinaryEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3414 = distinct !{!3414, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_9VarbinaryEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3415 = !{!3416, !3413}
!3416 = distinct !{!3416, !3417, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_9VarbinaryEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!3417 = distinct !{!3417, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_9VarbinaryEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!3418 = !{!1534, !1534, i64 0}
!3419 = !{!3420}
!3420 = distinct !{!3420, !3421, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3421 = distinct !{!3421, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3422 = !{!3423}
!3423 = distinct !{!3423, !3424, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!3424 = distinct !{!3424, !"_ZSt11make_sharedIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEEJPKNS1_13DecodedVectorEEESt10shared_ptrIT_EDpOT0_"}
!3425 = !{!3426, !3423}
!3426 = distinct !{!3426, !3427, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!3427 = distinct !{!3427, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!3428 = !{!2112, !2112, i64 0}
!3429 = !{!3430}
!3430 = distinct !{!3430, !3431, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3431 = distinct !{!3431, !"_ZN8facebook5velox12errorMessageIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS4_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3432 = distinct !{null, null, null, null}
!3433 = distinct !{null, null, null, null}
!3434 = distinct !{null, null, null, null}
!3435 = distinct !{null, null, null, null}
!3436 = distinct !{null, null, null, null}
!3437 = distinct !{null, null, null, null}
!3438 = distinct !{null, null, null, null}
!3439 = distinct !{null, null, null, null}
!3440 = distinct !{null, null, null, null}
!3441 = distinct !{null, null, null, null}
!3442 = distinct !{null, null, null, null}
!3443 = distinct !{null, null, null, null}
!3444 = !{!3309, !11, i64 0}
!3445 = !{!3446, !3305, i64 8}
!3446 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_", !3447, i64 0, !3305, i64 8, !3305, i64 16, !3307, i64 24, !11, i64 32}
!3447 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions10EqFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEEE", !11, i64 0}
!3448 = !{!3446, !3305, i64 16}
!3449 = !{!3450}
!3450 = distinct !{!3450, !3451, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3451 = distinct !{!3451, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3452 = !{!3453}
!3453 = distinct !{!3453, !3454, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi: argument 0"}
!3454 = distinct !{!3454, !"_ZNK8facebook5velox4exec12VectorReaderINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEixEi"}
!3455 = distinct !{null}
!3456 = !{!3457}
end_hunk_1
