inline.NumInlined: 92650
inline.NumDeleted: 25950
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE3runERNS1_19TypeAnalysisResultsE:bb.a
bb.y:                                             ; preds = %bb.g
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.y ], [ %i.cg, %bb.x ] ; 2 uses
  %i.ci = load i8, ptr %i.r, align 8, !tbaa !721, !range !551, !noundef !552
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.r, align 8, !tbaa !721
  br i1 %i.cj, label %bb.aa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %bb.aa
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !17
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #40
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18: ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.cp = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.f
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !17
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #40
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
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !17
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN8facebook5velox3MAPESt10shared_ptrIKNS0_4TypeEES4_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.44") align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8facebook5velox4core6detail14strToLowerCopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN8facebook5velox16createScalarTypeENS0_8TypeKindE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.19") align 8, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !541
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !inline_history !724
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !541
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !inline_history !724
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.126", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !584  ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !715 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !725

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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !617
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !617
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !726 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !730, !range !551, !noundef !552
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !730, !range !551, !noundef !552
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !731, !range !551, !noundef !552
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !731, !range !551, !noundef !552
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !729

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !732, !range !551, !noundef !552
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !732, !range !551, !noundef !552
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !733

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !726
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !726
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !726
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !726
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.40, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !726
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.40) #42
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
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !17
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.19") align 8) local_unnamed_addr #1

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !584  ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !715 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !716

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !584  ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !715 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !716

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
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12resizeValuesEiiRKSt8optionalIS2_E:bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1071 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !1078
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, label %bb.g, !prof !741

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1083
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.t, align 8, !tbaa !7187
  br label %bb.s

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1087
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !1071 ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !1071   ; 3 uses
  br i1 %.not28, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !1071
  store ptr %i.y, ptr %i.a, align 8, !tbaa !1071
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !1078
  %i.ab = and i8 %i.aa, 2
  %.not.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i13, label %bb.l, label %bb.j, !prof !741

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #42
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
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1083
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1083
  %i.ah = sext i32 %.sroa.speculated to i64
  %i.ai = shl nsw i64 %i.ah, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !1071 ; 7 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !1071
  store ptr null, ptr %4, align 8, !tbaa !1071
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1071
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8, !tbaa !541
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !1114

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1115
  %.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !541
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.n, !inline_history !1114

bb.n:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %.thread, %bb.l, %bb.m, %.noexc.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1071 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !1078
  %i.ba = and i8 %i.az, 2
  %.not.i15 = icmp eq i8 %i.ba, 0
  br i1 %.not.i15, label %bb.p, label %bb.o, !prof !741

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1083
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !7187
  %i.be = load ptr, ptr %4, align 8, !tbaa !1071  ; 7 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !541
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc.i unwind label %bb.r, !inline_history !1114

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1115
  %.not.i.i19 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !541
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %..i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !1114

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.p, %bb.q, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit
  ret void

bb.t:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.ac, %bb.k ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
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
  %i.e = load atomic i8, ptr %i.d seq_cst, align 1, !range !551, !noundef !552
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34, !noalias !7229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !7229
  %i.h = load atomic i32, ptr %i.g acquire, align 8, !noalias !7229 ; 4 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !3, !noalias !7229
  %i.i = and i32 %i.h, -1312
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !741

bb.c:                                             ; preds = %bb.b
  %i.k = or disjoint i32 %i.h, 128
  %i.l = cmpxchg ptr %i.g, i32 %i.h, i32 %i.k seq_cst seq_cst, align 4, !noalias !7229 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !729

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = extractvalue { i32, i1 } %i.l, 0
  store i32 %i.n, ptr %i.b, align 4, !noalias !7229
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.o = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !7229 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !7229
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34, !noalias !7229
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1034 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1459 ; 6 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %i.x, i1 false), !tbaa !612
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !612
  %i.ae = and i64 %i.ad, %notmask.i37.i.i.i
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !612
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.af, align 4, !tbaa !1415
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.ag, align 8, !tbaa !1417
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i16 256, ptr %i.ah, align 4
  store atomic i8 1, ptr %i.d seq_cst, align 1
  store atomic i8 0, ptr %i.c seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ai = atomicrmw and ptr %i.g, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aj = and i32 %i.ai, -401
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %i.ak = and i32 %i.ai, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.h, !prof !741

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #43
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
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
  %5 = alloca %"class.folly::LockedPtr.1684", align 8 ; 6 uses
  %6 = alloca %"class.folly::LockedPtr", align 8  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1, !range !551, !noundef !552
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7237)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !7240, !alias.scope !7245
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !7246, !alias.scope !7245
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !7247, !alias.scope !7245
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !7245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34, !noalias !7245
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !7245 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !7245
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !7245 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !7245
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !7246, !alias.scope !7245
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34, !noalias !7245
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !7245
  %i.u = load ptr, ptr %5, align 8, !tbaa !7240   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1415
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1417
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1459
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !7246
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !7248

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !7247
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !7248

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #43
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !7249)
  call void @llvm.experimental.noalias.scope.decl(metadata !7252)
  store ptr %i.j, ptr %6, align 8, !tbaa !7255, !alias.scope !7257
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !7258, !alias.scope !7257
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !7257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34, !noalias !7257
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !7257 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !7257
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !741

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !7257 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !729

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !7257
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !7257 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34, !noalias !7257
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !7257
  store i8 1, ptr %i.ay, align 8, !tbaa !7258, !alias.scope !7257
  %i.bh = load ptr, ptr %6, align 8, !tbaa !7255  ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1415
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !1417
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1459
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !551, !noundef !552
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = and i1 %2, %i.bs
  %i.bu = zext i1 %i.bt to i8
  store atomic i8 %i.bu, ptr %i.f seq_cst, align 8
  %i.bv = load ptr, ptr %6, align 8, !tbaa !7255  ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bv, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg.i.i24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1415
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1417
  %i.cb = icmp sge i32 %i.by, %i.ca
  %i.cc = zext i1 %i.cb to i8
  store atomic i8 %i.cc, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !7258, !range !551
  %i.cd = trunc nuw i8 %.pre to i1
  br i1 %i.cd, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.ce = phi ptr [ %i.bv, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.cf = atomicrmw and ptr %i.ce, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cg = and i32 %i.cf, -401
  store i32 %i.cg, ptr %i.c, align 4, !tbaa !3
  %i.ch = and i32 %i.cf, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !741

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #43
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.404", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1449
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1071 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !1078
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !1071 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1128
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !541
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !1071 ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !1071
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = atomicrmw add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  store ptr %i.w, ptr %1, align 8, !tbaa !1395
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1398
  %i.z = load ptr, ptr %2, align 8, !tbaa !1071   ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !1071
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !1396
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1395  ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1396 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1071 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !541
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !1114

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1115
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE8toStringB5cxx11Ei:bb.a

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.y, i64 %i.z, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !16, !alias.scope !7343
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.aj, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ak = load ptr, ptr %7, align 8, !tbaa !7
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.ak, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.n
  %i.an = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit

bb.o:                                             ; preds = %.noexc3.i.i, %.noexc.i.i, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.p:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aa
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.p
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.as, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.body

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !7346)
  call void @llvm.experimental.noalias.scope.decl(metadata !7349)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !523, !alias.scope !7352
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !16, !alias.scope !7352
  store i8 0, ptr %i.ax, align 8, !tbaa !17, !alias.scope !7352
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !598, !noalias !7352 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !7352 ; 2 uses
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  %.08.i.i.i = select i1 %i.bd, ptr %i.ba, ptr %i.bc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !602, !noalias !7352 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !7352 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !17, !alias.scope !7352
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #40
  br label %.body

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.s, %bb.q
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !541
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %6, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !541
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !541
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !541
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !7  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #40
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !541
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #34
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %6, align 8, !tbaa !541
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %6, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !541
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !887
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cl) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

.body:                                            ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn8 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.p, %bb.h ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.t

bb.t:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %.body ]
  resume { ptr, i32 } %.pn10
}

declare void @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resetDataDependentFlagsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.c, align 8, !tbaa !1478
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.d, align 8, !tbaa !1478
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.e, align 8, !tbaa !1478
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.f, align 8, !tbaa !1478
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 0, ptr %i.g, align 1, !tbaa !1072
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7356)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !7255, !alias.scope !7359
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !7258, !alias.scope !7359
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !7359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !7359
  %i.j = load atomic i32, ptr %i.h acquire, align 8, !noalias !7359 ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !3, !noalias !7359
  %i.k = and i32 %i.j, -1312
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !741

bb.c:                                             ; preds = %bb.b
  %i.m = or disjoint i32 %i.j, 128
  %i.n = cmpxchg ptr %i.h, i32 %i.j, i32 %i.m seq_cst seq_cst, align 4, !noalias !7359 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !729

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = extractvalue { i32, i1 } %i.n, 0
  store i32 %i.p, ptr %i.b, align 4, !noalias !7359
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.q = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !7359 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !7359
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !7359
  store i8 1, ptr %i.i, align 8, !tbaa !7258, !alias.scope !7359
  %i.r = load ptr, ptr %3, align 8, !tbaa !7255   ; 4 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i ; 3 uses
  invoke void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.s, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1415
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1417
  %i.x = icmp sge i32 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.z = zext i1 %i.x to i8
  store atomic i8 %i.z, ptr %i.y seq_cst, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.aa = atomicrmw and ptr %i.r, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ab = and i32 %i.aa, -401
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !3
  %i.ac = and i32 %i.aa, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.f, !prof !741

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #43
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.af

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE17invalidateIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE16retainedSizeImplERm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1071 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1128
  br label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit

_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1071 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1128
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit ]
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1449 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1449 ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.promoted = load i64, ptr %1, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i64 [ %i.k, %bb.d ], [ %i.u, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.011 = phi i64 [ %i.u, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.07.010 = phi ptr [ %i.w, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.v, %.lr.ph ], [ %.promoted, %.lr.ph.preheader ]
  %i.r = load ptr, ptr %.sroa.07.010, align 8, !tbaa !1071
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1128 ; 2 uses
  %i.u = add i64 %i.t, %.011                      ; 2 uses
  %i.v = add i64 %i.q, %i.t                       ; 2 uses
  store i64 %i.v, ptr %1, align 8, !tbaa !612
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.o
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE7valueAtEi(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7187
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7360
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !541
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.d = load atomic i32, ptr %i.c monotonic, align 8 ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !3
  %.not.i.i.i = icmp ult i32 %i.d, 2048
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i, label %bb.b, !prof !741

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #43
  unreachable

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !1034 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox9AsciiInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1036
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #40
  br label %_ZN8facebook5velox9AsciiInfoD2Ev.exit

_ZN8facebook5velox9AsciiInfoD2Ev.exit:            ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i, %bb.d
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions24RemapKeysVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EESL_:bb.a
bb.y:                                             ; preds = %.noexc84, %bb.w
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.bn

.critedge:                                        ; preds = %bb.i, %bb.o, %bb.x
  %i.ei = add nuw i64 %.036219, 1                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, 1
  %exitcond.not = icmp eq i64 %i.ei, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !11643

._crit_edge:                                      ; preds = %.critedge
  %.pre279 = load i32, ptr %i.a, align 4, !tbaa !11597, !noalias !11629 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !11596, !noalias !11629 ; 2 uses
  %i.el = add nsw i32 %.pre279, %i.ek
  %i.em = icmp eq i32 %.pre279, 0
  br i1 %i.em, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %i.en = phi i32 [ %i.o, %._crit_edge.thread ], [ %i.el, %._crit_edge ]
  %i.eo = phi i32 [ %i.n, %._crit_edge.thread ], [ %i.ek, %._crit_edge ]
  %i.ep = load ptr, ptr %2, align 8, !tbaa !11593, !noalias !11629
  %.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load ptr, ptr %.in, align 8, !tbaa !11595, !noalias !11629 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = getelementptr i8, ptr %i.eq, <2 x i64> <i64 8, i64 56>
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ex = sext i32 %i.eo to i64
  br label %bb.ab

._crit_edge256:                                   ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, %._crit_edge
  %i.ey = load ptr, ptr %i.d, align 8, !tbaa !11618 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 15
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !1391
  %i.fb = icmp eq i8 %i.fa, -1
  br i1 %i.fb, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge256
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !1394 ; 2 uses
  %i.fd = and i64 %i.fc, 255                      ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.fe, align 1
  %i.ff = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.fd
  %i.fg = xor i64 %notmask.i.i.i.i.i, -1
  %i.fh = lshr i64 %i.fg, 12
  %i.fi = add nuw nsw i64 %i.fh, 1
  %i.fj = icmp ult i64 %i.fc, 256
  br i1 %i.fj, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %i.fd, ptr %i.e, align 8, !tbaa !1394
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.fe, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.pre-phi21.i.i.i.i = phi i64 [ %.pre20.i.i.i.i, %bb.aa ], [ %i.ff, %bb.z ]
  %i.fk = icmp eq i64 %i.fd, 0
  %i.fl = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.fl
  %.neg18.i.i.i.i = shl i64 -64, %i.fd
  %.0.i.neg.i.i.i.i = select i1 %i.fk, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.d, align 8, !tbaa !11618
  store i64 0, ptr %i.e, align 8, !tbaa !1394
  %i.fm = and i64 %.0.i.neg.i.i.i.i, -8
  %i.fn = shl nuw nsw i64 %i.ff, 5
  %i.fo = mul i64 %i.fn, %i.fi
  %i.fp = sub i64 %i.fo, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fp) #34
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %._crit_edge256, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.bm

bb.ab:                                            ; preds = %.lr.ph255, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %indvars.iv276 = phi i64 [ %i.ex, %.lr.ph255 ], [ %indvars.iv.next277, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit ] ; 6 uses
  %i.fq = load ptr, ptr %i.ep, align 8, !tbaa !11633, !noalias !11644, !nonnull !552, !align !674 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !2367, !noalias !11644
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 58
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !2366, !range !551, !noalias !11644, !noundef !552
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = trunc nsw i64 %indvars.iv276 to i32     ; 2 uses
  br i1 %i.fv, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 59
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !2372, !range !551, !noalias !11644, !noundef !552
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !2373, !noalias !11644
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2377, !noalias !11644
  %i.ge = shl nsw i64 %indvars.iv276, 2
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3, !noalias !11644
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.ae ], [ %i.gb, %bb.ad ], [ %i.fw, %bb.ab ]
  %i.gh = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.gh ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.gi, align 8, !noalias !11644
  %.sroa.0.0.copyload.i.i.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 8 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !11644 ; 6 uses
  %i.gj = load i64, ptr %i.e, align 8, !tbaa !1394
  %i.gk = icmp ult i64 %i.gj, 256
  br i1 %i.gk, label %.noexc.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.er, align 8
  %i.gl = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 13                  ; 2 uses
  %i.gn = select i1 %i.gm, ptr %i.es, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295 ; 2 uses
  %i.gp = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gn, i64 noundef %i.go)
          to label %.noexc53 unwind label %bb.au  ; 2 uses

.noexc53:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gp) ; 2 uses
  %i.gr = lshr i64 %i.gq, 24
  %i.gs = or i64 %i.gr, 128                       ; 2 uses
  %i.gt = add i64 %i.gq, %i.gp                    ; 3 uses
  %i.gu = shl nuw nsw i64 %i.gs, 1
  %i.gv = or disjoint i64 %i.gu, 1                ; 3 uses
  %i.gw = trunc nuw i64 %i.gs to i8
  %i.gx = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !1394
  %i.ha = and i64 %i.gz, 255                      ; 4 uses
  %i.hb = shl nuw i64 1, %i.ha                    ; 3 uses
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !11618 ; 3 uses
  %i.hd = load ptr, ptr %10, align 8              ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.hf = add nsw i64 %i.go, -4
  %i.hg = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  br i1 %i.gm, label %.noexc53.split.us, label %.noexc55

.noexc53.split.us:                                ; preds = %.noexc53
  %i.hh = icmp samesign ult i32 %i.gl, 5
  br i1 %i.hh, label %.noexc55.us.us, label %.noexc55.us, !llvm.loop !11649

.noexc55.us.us:                                   ; preds = %.noexc53.split.us, %.noexc58.us.us
  %.0.i.i237.us.us = phi i64 [ %i.hr, %.noexc58.us.us ], [ %i.gt, %.noexc53.split.us ] ; 2 uses
  %.022.i.i236.us.us = phi i64 [ %i.hq, %.noexc58.us.us ], [ %i.hb, %.noexc53.split.us ]
  %i.hi = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i237.us.us, i64 range(i64 0, 256) %i.ha)
  %i.hj = getelementptr inbounds nuw [64 x i8], ptr %i.hc, i64 %i.hi ; 3 uses
  %i.hk = load <16 x i8>, ptr %i.hj, align 16     ; 2 uses
  %i.hl = icmp eq <16 x i8> %i.hk, %i.gy
  %i.hm = bitcast <16 x i1> %i.hl to i16
  %i.hn = and i16 %i.hm, 4095                     ; 2 uses
  %.not222.us.us = icmp eq i16 %i.hn, 0
  %i.ho = extractelement <16 x i8> %i.hk, i64 15
  br i1 %.not222.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.noexc56.lr.ph.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.noexc55.us.us
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %.noexc.thread, label %.noexc58.us.us, !prof !741

.noexc58.us.us:                                   ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.hq = add i64 %.022.i.i236.us.us, -1          ; 2 uses
  %i.hr = add i64 %i.gv, %.0.i.i237.us.us
  %.not.i.i.us.us = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.us.us, label %.noexc.thread, label %.noexc55.us.us, !llvm.loop !11650

.noexc56.lr.ph.us.us:                             ; preds = %.noexc55.us.us
  %i.hs = zext nneg i16 %i.hn to i32
  %i.ht = icmp ne ptr %i.hj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  br label %.noexc56.us.us.us.us

.noexc56.us.us.us.us:                             ; preds = %.critedge.i.i.backedge.us.us.us.us, %.noexc56.lr.ph.us.us
  %.sroa.0170.0223.us.us.us.us = phi i32 [ %i.hs, %.noexc56.lr.ph.us.us ], [ %i.id, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hv = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0170.0223.us.us.us.us, i1 true)
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.hz
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !612
  %.not.i.i.i88.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.ib
  br i1 %.not.i.i.i88.us.us.us.us, label %.noexc57.thread, label %.critedge.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us.us:               ; preds = %.noexc56.us.us.us.us
  %i.ic = add nsw i32 %.sroa.0170.0223.us.us.us.us, -1
  %i.id = and i32 %i.ic, %.sroa.0170.0223.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.id, 0
  br i1 %.not.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.noexc56.us.us.us.us, !llvm.loop !11649

.noexc55.us:                                      ; preds = %.noexc53.split.us, %.noexc58.us
  %.0.i.i237.us = phi i64 [ %i.in, %.noexc58.us ], [ %i.gt, %.noexc53.split.us ] ; 2 uses
  %.022.i.i236.us = phi i64 [ %i.im, %.noexc58.us ], [ %i.hb, %.noexc53.split.us ]
  %i.ie = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i237.us, i64 range(i64 0, 256) %i.ha)
  %i.if = getelementptr inbounds nuw [64 x i8], ptr %i.hc, i64 %i.ie ; 3 uses
  %i.ig = load <16 x i8>, ptr %i.if, align 16     ; 2 uses
  %i.ih = icmp eq <16 x i8> %i.ig, %i.gy
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = and i16 %i.ii, 4095                     ; 2 uses
  %.not222.us = icmp eq i16 %i.ij, 0
  %i.ik = extractelement <16 x i8> %i.ig, i64 15
  br i1 %.not222.us, label %.critedge.i.i._crit_edge.split.us.split.us243, label %.noexc56.lr.ph.us

.critedge.i.i._crit_edge.split.us.split.us243:    ; preds = %.critedge.i.i.backedge.us.us241, %.noexc55.us
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %.noexc.thread, label %.noexc58.us, !prof !741

.noexc58.us:                                      ; preds = %.critedge.i.i._crit_edge.split.us.split.us243
  %i.im = add i64 %.022.i.i236.us, -1             ; 2 uses
  %i.in = add i64 %i.gv, %.0.i.i237.us
  %.not.i.i.us = icmp eq i64 %i.im, 0
  br i1 %.not.i.i.us, label %.noexc.thread, label %.noexc55.us, !llvm.loop !11650

.noexc56.lr.ph.us:                                ; preds = %.noexc55.us
  %i.io = zext nneg i16 %i.ij to i32
  %i.ip = icmp ne ptr %i.if, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  br label %.noexc56.us.us238

.noexc56.us.us238:                                ; preds = %.noexc56.lr.ph.us, %.critedge.i.i.backedge.us.us241
  %.sroa.0170.0223.us.us239 = phi i32 [ %i.io, %.noexc56.lr.ph.us ], [ %i.it, %.critedge.i.i.backedge.us.us241 ] ; 3 uses
  %i.ir = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0170.0223.us.us239, i1 true)
  %i.is = add nsw i32 %.sroa.0170.0223.us.us239, -1
  %i.it = and i32 %i.is, %.sroa.0170.0223.us.us239 ; 2 uses
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.ix ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !612
  %.not.i.i.i88.us.us240 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.iz
  br i1 %.not.i.i.i88.us.us240, label %bb.ah, label %.critedge.i.i.backedge.us.us241, !prof !729

bb.ah:                                            ; preds = %.noexc56.us.us238
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !612
  %i.jc = icmp eq i64 %i.jb, %i.hg
  br i1 %i.jc, label %.noexc57.thread, label %.critedge.i.i.backedge.us.us241, !prof !11651

.critedge.i.i.backedge.us.us241:                  ; preds = %bb.ah, %.noexc56.us.us238
  %.not.us.us242 = icmp eq i32 %i.it, 0
  br i1 %.not.us.us242, label %.critedge.i.i._crit_edge.split.us.split.us243, label %.noexc56.us.us238, !llvm.loop !11649

.noexc55:                                         ; preds = %.noexc53, %.noexc58
  %.0.i.i237 = phi i64 [ %i.kc, %.noexc58 ], [ %i.gt, %.noexc53 ] ; 2 uses
  %.022.i.i236 = phi i64 [ %i.kb, %.noexc58 ], [ %i.hb, %.noexc53 ]
  %i.jd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i237, i64 range(i64 0, 256) %i.ha)
  %i.je = getelementptr inbounds nuw [64 x i8], ptr %i.hc, i64 %i.jd ; 3 uses
  %i.jf = load <16 x i8>, ptr %i.je, align 16     ; 2 uses
  %i.jg = icmp eq <16 x i8> %i.jf, %i.gy
  %i.jh = bitcast <16 x i1> %i.jg to i16
  %i.ji = and i16 %i.jh, 4095                     ; 2 uses
  %.not222 = icmp eq i16 %i.ji, 0
  %i.jj = extractelement <16 x i8> %i.jf, i64 15
  br i1 %.not222, label %.critedge.i.i._crit_edge.split, label %.noexc56.lr.ph

.noexc56.lr.ph:                                   ; preds = %.noexc55
  %i.jk = zext nneg i16 %i.ji to i32
  %i.jl = icmp ne ptr %i.je, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc56.lr.ph, %.critedge.i.i.backedge
  %.sroa.0170.0223 = phi i32 [ %i.jk, %.noexc56.lr.ph ], [ %i.jp, %.critedge.i.i.backedge ] ; 3 uses
  %i.jn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0170.0223, i1 true)
  %i.jo = add nsw i32 %.sroa.0170.0223, -1
  %i.jp = and i32 %i.jo, %.sroa.0170.0223         ; 2 uses
  %i.jq = zext nneg i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !3
  %i.jt = zext i32 %i.js to i64                   ; 2 uses
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.jt ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !612
  %.not.i.i.i88 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.jv
  br i1 %.not.i.i.i88, label %bb.ai, label %.critedge.i.i.backedge, !prof !729

bb.ai:                                            ; preds = %.noexc56
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !17
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.he, ptr nonnull %i.jy, i64 %i.hf)
  %i.jz = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.jz, label %.noexc57.thread, label %.critedge.i.i.backedge, !prof !11651

.critedge.i.i.backedge:                           ; preds = %bb.ai, %.noexc56
  %.not = icmp eq i32 %i.jp, 0
  br i1 %.not, label %.critedge.i.i._crit_edge.split, label %.noexc56, !llvm.loop !11649

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.noexc55
  %i.ka = icmp eq i8 %i.jj, 0
  br i1 %i.ka, label %.noexc.thread, label %.noexc58, !prof !741

.noexc58:                                         ; preds = %.critedge.i.i._crit_edge.split
  %i.kb = add i64 %.022.i.i236, -1                ; 2 uses
  %i.kc = add i64 %i.gv, %.0.i.i237
  %.not.i.i = icmp eq i64 %i.kb, 0
  br i1 %.not.i.i, label %.noexc.thread, label %.noexc55, !llvm.loop !11650

.noexc57.thread:                                  ; preds = %bb.ai, %bb.ah, %.noexc56.us.us.us.us
  %.pre-phi = phi i64 [ %i.ix, %bb.ah ], [ %i.hz, %.noexc56.us.us.us.us ], [ %i.jt, %bb.ai ]
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.pre-phi
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.critedge.i.i._crit_edge.split, %.noexc58, %.critedge.i.i._crit_edge.split.us.split.us243, %.noexc58.us, %.critedge.i.i._crit_edge.split.us.split.us.us.us, %.noexc58.us.us, %bb.af, %.noexc57.thread
  %.sroa.0.0.i = phi ptr [ %i.kd, %.noexc57.thread ], [ null, %bb.af ], [ null, %.critedge.i.i._crit_edge.split.us.split.us243 ], [ null, %.critedge.i.i._crit_edge.split.us.split.us.us.us ], [ null, %.noexc58.us.us ], [ null, %.noexc58.us ], [ null, %.noexc58 ], [ null, %.critedge.i.i._crit_edge.split ] ; 8 uses
  %i.ke = load ptr, ptr %i.eq, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i92 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i92, label %.thread208, label %bb.aj

bb.aj:                                            ; preds = %.noexc.thread
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 58
  %i.ki = load i8, ptr %i.kh, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.kj = trunc nuw i8 %i.ki to i1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 57
  %i.kl = load i8, ptr %i.kk, align 1, !range !551
  %i.km = trunc nuw i8 %i.kl to i1
  %or.cond.i.i.i93 = select i1 %i.kj, i1 true, i1 %i.km
  br i1 %or.cond.i.i.i93, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kn = lshr i64 %indvars.iv276, 6
  %i.ko = and i64 %i.kn, 67108863
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !612
  %i.kr = and i64 %indvars.iv276, 63
  %i.ks = shl nuw i64 1, %i.kr
  %i.kt = and i64 %i.kq, %i.ks
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 59
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kx = load i64, ptr %i.kg, align 8, !tbaa !612
  %i.ky = and i64 %i.kx, 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !2377
  %i.lb = shl nsw i64 %indvars.iv276, 2
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !3
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = lshr i64 %i.le, 6
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.lf
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !612
  %i.li = and i64 %i.le, 63
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = and i64 %i.lj, %i.lh
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak
  %.0.i.i.i95.in = phi i64 [ %i.kt, %bb.ak ], [ %i.ky, %bb.am ], [ %i.lk, %bb.an ]
  %.0.i.i.i95.not = icmp eq i64 %.0.i.i.i95.in, 0
  br i1 %.0.i.i.i95.not, label %bb.ap, label %.thread208

bb.ap:                                            ; preds = %bb.ao
  %i.ll = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.aq unwind label %.loopexit ; 8 uses

bb.aq:                                            ; preds = %bb.ap
  %.not210 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not210, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !7166 ; 2 uses
  %i.lp = load i32, ptr %i.lm, align 8, !tbaa !7659 ; 2 uses
  %i.lq = zext i32 %i.lp to i64
  %i.lr = add i64 %i.lo, %i.lq                    ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !7165
  %i.lu = icmp ugt i64 %i.lr, %i.lt
  br i1 %i.lu, label %bb.as, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.lv = load ptr, ptr %i.ll, align 8, !tbaa !541
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr noundef nonnull align 8 dereferenceable(96) %i.ll, i64 noundef %i.lr)
          to label %.noexc99 unwind label %.loopexit, !inline_history !11652

.noexc99:                                         ; preds = %bb.as
  %.pre.i.i = load i32, ptr %i.lm, align 8, !tbaa !7659
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %.noexc99, %bb.ar
  %i.ly = phi i32 [ %i.lp, %bb.ar ], [ %.pre.i.i, %.noexc99 ] ; 3 uses
  store i64 %i.lr, ptr %i.ln, align 8, !tbaa !7166
  %.not.i.i98 = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i98, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !7167
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lo
  %i.md = icmp ult i32 %i.ly, 13
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 20
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = select i1 %i.md, ptr %i.me, ptr %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mc, ptr align 1 %i.mh, i64 %i.lz, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

bb.au:                                            ; preds = %bb.ag
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit:                                        ; preds = %bb.ap, %bb.as, %bb.aw, %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp:                               ; preds = %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.av:                                            ; preds = %bb.aq
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !7174 ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !7181 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 216 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !7187
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.aw, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.mq = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %i.mk)
          to label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i unwind label %.loopexit ; 0 uses

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i: ; preds = %bb.aw, %bb.av
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 32 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !1071
  %.not.i.i100 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i100, label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 56
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !1068
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.mk, i32 noundef %i.mu, i1 noundef zeroext true)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %bb.ax
  %i.mv = load ptr, ptr %i.mr, align 8, !tbaa !1071 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 44
  %i.mx = load i8, ptr %i.mw, align 4, !tbaa !1078
  %i.my = and i8 %i.mx, 2
  %.not.i3.i.i = icmp eq i8 %i.my, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, label %bb.ay, !prof !741

bb.ay:                                            ; preds = %.noexc102
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc103 unwind label %.loopexit.split-lp

.noexc103:                                        ; preds = %bb.ay
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %.noexc102
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !1083
  %i.nb = lshr i32 %i.mm, 3
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nc ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !17
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv:bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !541
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i1 noundef zeroext true), !inline_history !11663
  store i8 0, ptr %i.l, align 1, !tbaa !11554
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11535 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !11558
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit, !prof !524

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11552 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !541
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i32 noundef %i.ac), !inline_history !11664
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11555 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !541
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.ac), !inline_history !11664
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !11558
  %.pre = load i32, ptr %i.t, align 4, !tbaa !11535
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !11534
  %i.ao = add i32 %i.an, %i.b
  store i8 1, ptr %i.d, align 4, !tbaa !11551
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11552 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !541
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(112) %i.aq, i32 noundef %i.ao), !inline_history !11665
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !11552
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.t, align 4, !tbaa !11535
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !11534
  %i.ax = add i32 %i.av, -1
  %i.ay = add i32 %i.ax, %i.aw
  store i8 1, ptr %i.l, align 1, !tbaa !11554
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11555 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !541
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i32 noundef %i.ay), !inline_history !11666
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !11555
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %0, align 8, !tbaa !8655, !alias.scope !11667
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bf, align 8, !tbaa !11670, !alias.scope !11667
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11618 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1391
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1394 ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1394
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !11618
  store i64 0, ptr %i.f, align 8, !tbaa !1394
  %i.q = and i64 %.0.i.neg.i.i.i, -8
  %i.r = shl nuw nsw i64 %i.j, 5
  %i.s = mul i64 %i.r, %i.m
  %i.t = sub i64 %i.s, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.t) #34
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %bb.a, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.3101") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1394 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread68_crit_edge, label %bb.b

..thread68_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11618
  %.pre133 = shl nuw i64 1, %i.b
  br label %.thread68

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.i = and i64 %i.b, 255                        ; 10 uses
  %i.j = shl nuw i64 1, %i.i                      ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11618 ; 9 uses
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = load i64, ptr %4, align 8
  %.fr = freeze i64 %i.n                          ; 5 uses
  %i.o = trunc i64 %.fr to i32                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = and i64 %.fr, 4294967295
  %i.u = add nsw i64 %i.t, -4
  %.cast = ptrtoint ptr %i.r to i64
  br i1 %i.p, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.o, 5
  br i1 %i.v, label %.split.us.split.us, label %.split.us.split, !llvm.loop !11649

.split.us.split.us:                               ; preds = %.split.us, %bb.c
  %.0.i96.us.us = phi i64 [ %i.af, %bb.c ], [ %2, %.split.us ] ; 2 uses
  %.022.i95.us.us = phi i64 [ %i.ae, %bb.c ], [ %i.j, %.split.us ]
  %i.w = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i96.us.us, i64 range(i64 0, 256) %i.i)
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = load <16 x i8>, ptr %i.x, align 16       ; 2 uses
  %i.z = icmp eq <16 x i8> %i.y, %i.h
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = and i16 %i.aa, 4095                     ; 2 uses
  %.not7078.us.us = icmp eq i16 %i.ab, 0
  %i.ac = extractelement <16 x i8> %i.y, i64 15
  br i1 %.not7078.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %.lr.ph.us.us

.critedge.i._crit_edge.split.us.split.us.us.us:   ; preds = %.critedge.i.backedge.us.us.us.us, %.split.us.split.us
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.thread68, label %bb.c, !prof !741

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ae = add i64 %.022.i95.us.us, -1             ; 2 uses
  %i.af = add i64 %i.e, %.0.i96.us.us
  %.not.i.us.us = icmp eq i64 %i.ae, 0
  br i1 %.not.i.us.us, label %.thread68, label %.split.us.split.us, !llvm.loop !11650

.lr.ph.us.us:                                     ; preds = %.split.us.split.us
  %i.ag = zext nneg i16 %i.ab to i32
  %i.ah = icmp ne ptr %i.x, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us.us.us, %.lr.ph.us.us
  %.sroa.042.079.us.us.us.us = phi i32 [ %i.ag, %.lr.ph.us.us ], [ %i.ar, %.critedge.i.backedge.us.us.us.us ] ; 3 uses
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.079.us.us.us.us, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !612
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ap
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !729

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.d
  %i.aq = add nsw i32 %.sroa.042.079.us.us.us.us, -1
  %i.ar = and i32 %i.aq, %.sroa.042.079.us.us.us.us ; 2 uses
  %.not70.us.us.us.us = icmp eq i32 %i.ar, 0
  br i1 %.not70.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.d, !llvm.loop !11649

.split.us.split:                                  ; preds = %.split.us, %bb.e
  %.0.i96.us = phi i64 [ %i.bb, %bb.e ], [ %2, %.split.us ] ; 2 uses
  %.022.i95.us = phi i64 [ %i.ba, %bb.e ], [ %i.j, %.split.us ]
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i96.us, i64 range(i64 0, 256) %i.i)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.as ; 3 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16     ; 2 uses
  %i.av = icmp eq <16 x i8> %i.au, %i.h
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 4095                     ; 2 uses
  %.not7078.us = icmp eq i16 %i.ax, 0
  %i.ay = extractelement <16 x i8> %i.au, i64 15
  br i1 %.not7078.us, label %.critedge.i._crit_edge.split.us.split.us101, label %.lr.ph.us

.critedge.i._crit_edge.split.us.split.us101:      ; preds = %.critedge.i.backedge.us.us99, %.split.us.split
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.thread68, label %bb.e, !prof !741

bb.e:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us101
  %i.ba = add i64 %.022.i95.us, -1                ; 2 uses
  %i.bb = add i64 %i.e, %.0.i96.us
  %.not.i.us = icmp eq i64 %i.ba, 0
  br i1 %.not.i.us, label %.thread68, label %.split.us.split, !llvm.loop !11650

.lr.ph.us:                                        ; preds = %.split.us.split
  %i.bc = zext nneg i16 %i.ax to i32
  %i.bd = icmp ne ptr %i.at, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %.critedge.i.backedge.us.us99
  %.sroa.042.079.us.us97 = phi i32 [ %i.bc, %.lr.ph.us ], [ %i.bh, %.critedge.i.backedge.us.us99 ] ; 3 uses
  %i.bf = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.079.us.us97, i1 true)
  %i.bg = add nsw i32 %.sroa.042.079.us.us97, -1
  %i.bh = and i32 %i.bg, %.sroa.042.079.us.us97   ; 2 uses
  %i.bi = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !612
  %.not.i.i.i.us.us98 = icmp eq i64 %.fr, %i.bn
  br i1 %.not.i.i.i.us.us98, label %bb.g, label %.critedge.i.backedge.us.us99, !prof !729

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !612
  %i.bq = icmp eq i64 %i.bp, %.cast
  br i1 %i.bq, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us99, !prof !11651

.critedge.i.backedge.us.us99:                     ; preds = %bb.g, %bb.f
  %.not70.us.us100 = icmp eq i32 %i.bh, 0
  br i1 %.not70.us.us100, label %.critedge.i._crit_edge.split.us.split.us101, label %bb.f, !llvm.loop !11649

.split:                                           ; preds = %bb.b, %bb.j
  %.0.i96 = phi i64 [ %i.cq, %bb.j ], [ %2, %bb.b ] ; 2 uses
  %.022.i95 = phi i64 [ %i.cp, %bb.j ], [ %i.j, %bb.b ]
  %i.br = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i96, i64 range(i64 0, 256) %i.i)
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.br ; 3 uses
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, %i.h
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not7078 = icmp eq i16 %i.bw, 0
  %i.bx = extractelement <16 x i8> %i.bt, i64 15
  br i1 %.not7078, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.by = zext nneg i16 %i.bw to i32
  %i.bz = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.042.079 = phi i32 [ %i.by, %.lr.ph ], [ %i.cd, %.critedge.i.backedge ] ; 3 uses
  %i.cb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.079, i1 true)
  %i.cc = add nsw i32 %.sroa.042.079, -1
  %i.cd = and i32 %i.cc, %.sroa.042.079           ; 2 uses
  %i.ce = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !612
  %.not.i.i.i = icmp eq i64 %.fr, %i.cj
  br i1 %.not.i.i.i, label %bb.i, label %.critedge.i.backedge, !prof !729

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.cm, i64 %i.u)
  %i.cn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cn, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !11651

.critedge.i.backedge:                             ; preds = %bb.i, %bb.h
  %.not70 = icmp eq i32 %i.cd, 0
  br i1 %.not70, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !11649

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.co = icmp eq i8 %i.bx, 0
  br i1 %i.co, label %.thread68, label %bb.j, !prof !741

bb.j:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cp = add i64 %.022.i95, -1                   ; 2 uses
  %i.cq = add i64 %i.e, %.0.i96
  %.not.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i, label %.thread68, label %.split, !llvm.loop !11650

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread: ; preds = %bb.i, %bb.g, %bb.d
  %.us-phi = phi i64 [ %i.bi, %bb.g ], [ %i.ak, %bb.d ], [ %i.ce, %bb.i ] ; 2 uses
  %.us-phi80 = phi ptr [ %i.be, %bb.g ], [ %i.ai, %bb.d ], [ %i.ca, %bb.i ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.us-phi80, i64 %.us-phi
  br label %bb.r

.thread68:                                        ; preds = %bb.j, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us101, %bb.e, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.c, %..thread68_crit_edge
  %.pre-phi134 = phi i64 [ %.pre133, %..thread68_crit_edge ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us101 ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.j ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread68_crit_edge ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us101 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.j ]
  %i.cs = phi ptr [ %.pre, %..thread68_crit_edge ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us101 ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.l, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.j ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ct, align 1
  %i.cu = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cv = add i64 %.pre-phi134, -1
  %i.cw = lshr i64 %i.cv, 12
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = mul i64 %i.cx, %i.cu                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.cy
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.k

bb.k:                                             ; preds = %.thread68
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi134, i64 noundef %i.cu, i64 noundef %i.cy)
  %.pre130 = load ptr, ptr %i.cz, align 8, !tbaa !11618
  %.pre131 = load i64, ptr %i.a, align 8, !tbaa !1394
  %.pre135 = and i64 %.pre131, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.k
  %.pre-phi136 = phi i64 [ %.pre-phi, %.thread68 ], [ %.pre135, %bb.k ] ; 2 uses
  %i.da = phi ptr [ %i.cs, %.thread68 ], [ %.pre130, %bb.k ] ; 3 uses
  %i.db = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi136) ; 2 uses
  %i.dc = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.dd = load <16 x i8>, ptr %i.dc, align 16, !tbaa !17
  %i.de = icmp slt <16 x i8> %i.dd, zeroinitializer
  %i.df = bitcast <16 x i1> %i.de to i16
  %i.dg = and i16 %i.df, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.dg, 4095
  br i1 %.not71, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.dh = shl i64 %3, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.l
  %i.dj = phi i64 [ %i.db, %bb.l ], [ %i.dp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.l ], [ %i.do, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 15 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !11022 ; 2 uses
  %.not.i33 = icmp eq i8 %i.dm, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = add i8 %i.dm, 1
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !11022
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.m, %bb.n
  %i.do = add i64 %i.di, %.030                    ; 2 uses
  %i.dp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.do, i64 range(i64 0, 256) %.pre-phi136) ; 2 uses
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.dp ; 3 uses
  %i.dr = load <16 x i8>, ptr %i.dq, align 16     ; 2 uses
  %i.ds = icmp slt <16 x i8> %i.dr, zeroinitializer
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %i.du = and i16 %i.dt, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.du, 4095
  br i1 %.not72, label %bb.m, label %bb.o, !llvm.loop !11671

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.dv = extractelement <16 x i8> %i.dr, i64 14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %i.dx = add i8 %i.dv, 16
  store i8 %i.dx, ptr %i.dw, align 2, !tbaa !11026
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.dg, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.du, %bb.o ]
  %.1 = phi ptr [ %i.dc, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dq, %bb.o ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.dy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.dz = zext nneg i16 %i.dy to i64              ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.p
  %i.ed = trunc i64 %3 to i8
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dz ; 2 uses
  %i.eg = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !1394
  %i.ei = lshr i64 %i.eh, 8                       ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !3
  %i.ek = load ptr, ptr %1, align 8, !tbaa !11615, !nonnull !552, !noundef !552
  %i.el = and i64 %i.ei, 4294967295
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = load i64, ptr %6, align 8, !tbaa !7299
  %i.eo = inttoptr i64 %i.en to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !7227
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !1394 ; 2 uses
  %i.er = and i64 %i.eq, -256
  %i.es = add i64 %i.er, 256
  %i.et = and i64 %i.eq, 255
  %i.eu = or disjoint i64 %i.es, %i.et
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !1394
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink167 = phi ptr [ %i.cr, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.ef, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.dz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink167, ptr %0, align 8, !tbaa !957
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ev, align 8, !tbaa !11027
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions27MapIntersectVarcharFunctionINS0_4exec10VectorExecEE10initializeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISA_EERKNS0_4core11QueryConfigEPKNS3_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEPKNS3_9ArrayViewILb1ESK_EE:bb.a
  store i32 %i.g, ptr %i.o, align 4, !tbaa !14813, !noalias !14807
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.i, ptr %i.p, align 8, !tbaa !14814, !noalias !14807
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.m, ptr %i.q, align 8, !tbaa !8505, !noalias !14807
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.e, ptr %i.r, align 8, !tbaa !14815, !noalias !14807
  call void @_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKS7_SA_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::SkipNullsIterator.4461") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !14807
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34, !noalias !14807
  %i.s = load i32, ptr %i.f, align 8, !tbaa !11632, !noalias !14817
  %i.t = load i32, ptr %i.b, align 4, !tbaa !11620, !noalias !14817
  %i.u = add nsw i32 %i.t, %i.s                   ; 2 uses
  %i.v = load i32, ptr %13, align 8, !tbaa !14810 ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %._crit_edge, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !14815
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.ak

bb.c:                                             ; preds = %.lr.ph115, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit
  %i.ao = phi ptr [ %.pre, %.lr.ph115 ], [ %i.ho, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ]
  %i.ap = phi i32 [ %i.v, %.lr.ph115 ], [ %.lcssa, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !11633, !nonnull !552, !align !674 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2367
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 58
  %i.av = load i8, ptr %i.au, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 59
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !2373
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2377
  %i.be = shl nsw i64 %i.aq, 2
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.f ], [ %i.bb, %bb.e ], [ %i.ap, %bb.c ]
  %i.bh = sext i32 %.0.i.i.i.i.i to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bi, align 8 ; 10 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !17 ; 7 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %14, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.y, align 8
  %i.bj = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 4 uses
  %i.bk = icmp ult i32 %i.bj, 13
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !14820
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !14823
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %9, align 8, !noalias !14823
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.al, align 8, !noalias !14823
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i, 15
  %i.bm = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef nonnull %i.am, i64 noundef %i.bl), !noalias !14823 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !14823
  %i.bn = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bm) ; 2 uses
  %i.bo = lshr i64 %i.bn, 24
  %i.bp = or i64 %i.bo, 128
  %i.bq = add i64 %i.bn, %i.bm
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 %i.bq, i64 %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %14), !noalias !14820
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !14820
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !1394
  %i.bs = lshr i64 %i.br, 8
  switch i64 %i.bs, label %bb.k [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !14830
  %i.bu = and i64 %i.bt, -16
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 16, !tbaa !612
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, %i.bw
  br i1 %.not.i.i.i, label %bb.j, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295
  %i.cc = add nsw i64 %i.cb, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.bx, ptr nonnull %i.ca, i64 %i.cc)
  %i.cd = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cd, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80

bb.k:                                             ; preds = %bb.h
  %i.ce = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295
  %i.cf = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.ce) ; 2 uses
  %i.cg = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cf) ; 2 uses
  %i.ch = lshr i64 %i.cg, 24
  %i.ci = or i64 %i.ch, 128                       ; 2 uses
  %i.cj = add i64 %i.cg, %i.cf                    ; 2 uses
  %i.ck = shl nuw nsw i64 %i.ci, 1
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.cm = trunc nuw i64 %i.ci to i8
  %i.cn = insertelement <16 x i8> poison, i8 %i.cm, i64 0
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cp = load i64, ptr %i.aa, align 8, !tbaa !1394
  %i.cq = and i64 %i.cp, 255                      ; 3 uses
  %i.cr = shl nuw i64 1, %i.cq                    ; 2 uses
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !14785 ; 2 uses
  %i.ct = load i64, ptr %14, align 8
  %.fr = freeze i64 %i.ct                         ; 10 uses
  %i.cu = trunc i64 %.fr to i32                   ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 13
  %i.cw = load ptr, ptr %i.y, align 8             ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = and i64 %.fr, 4294967295
  %i.cz = add nsw i64 %i.cy, -4
  %i.da = icmp ult i32 %i.cu, 5
  %.cast = ptrtoint ptr %i.cw to i64
  %i.db = trunc i64 %.fr to i32                   ; 4 uses
  br i1 %i.cv, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.k, %bb.l
  %.0.i.i106.us = phi i64 [ %i.dn, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %.023.i.i105.us = phi i64 [ %i.dm, %bb.l ], [ %i.cr, %bb.k ]
  %i.dc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i106.us, i64 range(i64 0, 256) %i.cq)
  %i.dd = getelementptr inbounds nuw [256 x i8], ptr %i.cs, i64 %i.dc ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.df, i32 0, i32 3, i32 1)
  %i.dg = load <16 x i8>, ptr %i.dd, align 16     ; 2 uses
  %i.dh = icmp eq <16 x i8> %i.dg, %i.co
  %i.di = bitcast <16 x i1> %i.dh to i16
  %i.dj = and i16 %i.di, 16383                    ; 2 uses
  %.not96102.us = icmp eq i16 %i.dj, 0
  %i.dk = extractelement <16 x i8> %i.dg, i64 15
  br i1 %.not96102.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us109, %.critedge.i.i.backedge.us.us.us, %.split.us
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %bb.l, !prof !741

bb.l:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.dm = add i64 %.023.i.i105.us, -1             ; 2 uses
  %i.dn = add i64 %i.cl, %.0.i.i106.us
  %.not.i.i.us = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %.split.us, !llvm.loop !14831

.lr.ph.us:                                        ; preds = %.split.us
  %i.do = zext nneg i16 %i.dj to i32              ; 2 uses
  %i.dp = icmp ne ptr %i.dd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.dp)
  br i1 %i.da, label %.lr.ph.split.us.split.us.us, label %.lr.ph.split.us.split.us112, !llvm.loop !14832

.lr.ph.split.us.split.us112:                      ; preds = %.lr.ph.us, %.critedge.i.i.backedge.us.us109
  %.sroa.048.0103.us.us107 = phi i32 [ %i.ds, %.critedge.i.i.backedge.us.us109 ], [ %i.do, %.lr.ph.us ] ; 3 uses
  %i.dq = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.048.0103.us.us107, i1 true)
  %i.dr = add nsw i32 %.sroa.048.0103.us.us107, -1
  %i.ds = and i32 %i.dr, %.sroa.048.0103.us.us107 ; 2 uses
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !612
  %.not.i.i.i16.us.us108 = icmp eq i64 %.fr, %i.dv
  br i1 %.not.i.i.i16.us.us108, label %bb.m, label %.critedge.i.i.backedge.us.us109, !prof !729

bb.m:                                             ; preds = %.lr.ph.split.us.split.us112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !612
  %i.dy = icmp eq i64 %i.dx, %.cast
  br i1 %i.dy, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us109, !prof !11651

.critedge.i.i.backedge.us.us109:                  ; preds = %bb.m, %.lr.ph.split.us.split.us112
  %.not96.us.us110 = icmp eq i32 %i.ds, 0
  br i1 %.not96.us.us110, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.split.us.split.us112, !llvm.loop !14832

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.us, %.critedge.i.i.backedge.us.us.us
  %.sroa.048.0103.us.us.us = phi i32 [ %i.ee, %.critedge.i.i.backedge.us.us.us ], [ %i.do, %.lr.ph.us ] ; 3 uses
  %i.dz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.048.0103.us.us.us, i1 true)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !612
  %.not.i.i.i16.us.us.us = icmp eq i64 %.fr, %i.ec
  br i1 %.not.i.i.i16.us.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us:                  ; preds = %.lr.ph.split.us.split.us.us
  %i.ed = add nsw i32 %.sroa.048.0103.us.us.us, -1
  %i.ee = and i32 %i.ed, %.sroa.048.0103.us.us.us ; 2 uses
  %.not96.us.us.us = icmp eq i32 %i.ee, 0
  br i1 %.not96.us.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.split.us.split.us.us, !llvm.loop !14832

.split:                                           ; preds = %bb.k, %bb.p
  %.0.i.i106 = phi i64 [ %i.fc, %bb.p ], [ %i.cj, %bb.k ] ; 2 uses
  %.023.i.i105 = phi i64 [ %i.fb, %bb.p ], [ %i.cr, %bb.k ]
  %i.ef = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i106, i64 range(i64 0, 256) %i.cq)
  %i.eg = getelementptr inbounds nuw [256 x i8], ptr %i.cs, i64 %i.ef ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ei, i32 0, i32 3, i32 1)
  %i.ej = load <16 x i8>, ptr %i.eg, align 16     ; 2 uses
  %i.ek = icmp eq <16 x i8> %i.ej, %i.co
  %i.el = bitcast <16 x i1> %i.ek to i16
  %i.em = and i16 %i.el, 16383                    ; 2 uses
  %.not96102 = icmp eq i16 %i.em, 0
  %i.en = extractelement <16 x i8> %i.ej, i64 15
  br i1 %.not96102, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.eo = zext nneg i16 %i.em to i32
  %i.ep = icmp ne ptr %i.eg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ep)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.048.0103 = phi i32 [ %i.eo, %.lr.ph ], [ %i.es, %.critedge.i.i.backedge ] ; 3 uses
  %i.eq = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.048.0103, i1 true)
  %i.er = add nsw i32 %.sroa.048.0103, -1
  %i.es = and i32 %i.er, %.sroa.048.0103          ; 2 uses
  %i.et = zext nneg i32 %i.eq to i64
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !612
  %.not.i.i.i16 = icmp eq i64 %.fr, %i.ev
  br i1 %.not.i.i.i16, label %bb.o, label %.critedge.i.i.backedge, !prof !729

bb.o:                                             ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %bcmp.i.i.i18 = call i32 @bcmp(ptr nonnull %i.cx, ptr nonnull %i.ey, i64 %i.cz)
  %i.ez = icmp eq i32 %bcmp.i.i.i18, 0
  br i1 %i.ez, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge, !prof !11651

.critedge.i.i.backedge:                           ; preds = %bb.o, %bb.n
  %.not96 = icmp eq i32 %i.es, 0
  br i1 %.not96, label %.critedge.i.i._crit_edge.split, label %bb.n, !llvm.loop !14832

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split
  %i.fa = icmp eq i8 %i.en, 0
  br i1 %i.fa, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %bb.p, !prof !741

bb.p:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.fb = add i64 %.023.i.i105, -1                ; 2 uses
  %i.fc = add i64 %i.cl, %.0.i.i106
  %.not.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %.split, !llvm.loop !14831

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80: ; preds = %.critedge.i.i._crit_edge.split, %bb.p, %bb.l, %.critedge.i.i._crit_edge.split.us.us, %bb.j, %bb.i, %bb.h
  %.in.in = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ], [ %.fr, %bb.l ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.j ], [ %.fr, %.critedge.i.i._crit_edge.split.us.us ], [ %.fr, %bb.p ], [ %.fr, %.critedge.i.i._crit_edge.split ]
  %i.fd = phi ptr [ %.sroa.2.0.copyload.i.i.i.i, %bb.h ], [ %i.cw, %bb.l ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.i ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.j ], [ %i.cw, %.critedge.i.i._crit_edge.split.us.us ], [ %i.cw, %bb.p ], [ %i.cw, %.critedge.i.i._crit_edge.split ]
  %i.fe = phi i32 [ %i.bj, %bb.h ], [ %i.db, %bb.l ], [ %i.bj, %bb.i ], [ %i.bj, %bb.j ], [ %i.db, %.critedge.i.i._crit_edge.split.us.us ], [ %i.db, %bb.p ], [ %i.db, %.critedge.i.i._crit_edge.split ] ; 4 uses
  %.in = lshr i64 %.in.in, 32
  %i.ff = trunc i64 %.in to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.fg = icmp ult i32 %i.fe, 13
  %i.fh = select i1 %i.fg, ptr %i.ac, ptr %i.fd   ; 2 uses
  %i.fi = zext i32 %i.fe to i64                   ; 5 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !523, !alias.scope !14833
  %i.fj = icmp eq ptr %i.fh, null
  br i1 %i.fj, label %.noexc.i, label %bb.q

.noexc.i:                                         ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #42
  unreachable

bb.q:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80
  %i.fk = icmp ugt i32 %i.fe, 15
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.q
  %i.fl = add nuw nsw i64 %i.fi, 1
  %i.fm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #41 ; 2 uses
  store ptr %i.fm, ptr %15, align 8, !tbaa !7, !alias.scope !14833
  store i64 %i.fi, ptr %i.ad, align 8, !tbaa !17, !alias.scope !14833
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.q
  %i.fn = phi ptr [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.ad, %bb.q ] ; 3 uses
  switch i32 %i.fe, label %bb.s [
    i32 1, label %bb.r
    i32 0, label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  store i8 %i.ff, ptr %i.fn, align 1, !tbaa !17
  br label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %i.fh, i64 %i.fi, i1 false)
  br label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit

_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.r, %bb.s
  store i64 %i.fi, ptr %i.ae, align 8, !tbaa !16, !alias.scope !14833
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fi
  store i8 0, ptr %i.fo, align 1, !tbaa !17
  %i.fp = load ptr, ptr %i.af, align 8, !tbaa !67 ; 6 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !66
  %.not.i.i20 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i20, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 3 uses
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !523
  %i.fs = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ad
  br i1 %i.ft, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !16 ; 3 uses
  %i.fv = icmp ult i64 %i.fu, 16
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add nuw nsw i64 %i.fu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  store ptr %i.fs, ptr %i.fp, align 8, !tbaa !7
  %i.fx = load i64, ptr %i.ad, align 8, !tbaa !17
  store i64 %i.fx, ptr %i.fr, align 8, !tbaa !17
  %.pre121 = load i64, ptr %i.ae, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.fy = phi i64 [ %.pre121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fu, %bb.u ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !16
  store ptr %i.ad, ptr %15, align 8, !tbaa !7
  store i64 0, ptr %i.ae, align 8, !tbaa !16
  %i.ga = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store ptr %i.gb, ptr %i.af, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ad

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.v
  %.pre122 = load ptr, ptr %15, align 8, !tbaa !7 ; 2 uses
  %i.gc = icmp eq ptr %.pre122, %i.ad
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gd = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %.pre122, i64 noundef %i.ge) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.gf = load ptr, ptr %i.af, align 8, !tbaa !529 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !7  ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !16 ; 2 uses
  %i.gk = trunc i64 %i.gj to i32                  ; 5 uses
  store i32 %i.gk, ptr %16, align 8, !tbaa !7659
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.w, label %bb.z, !prof !524

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !14836
  store i32 %i.gk, ptr %7, align 16, !tbaa !17, !noalias !14836
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.gm, align 16, !tbaa !17, !noalias !14836
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.67, i64 11, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !14836
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.67) #42
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %bb.y
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !17
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %common.resume

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gt = icmp samesign ult i32 %i.gk, 13
  br i1 %i.gt, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ah, align 4
  %i.gu = icmp eq i32 %i.gk, 0
  br i1 %i.gu, label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.ai, align 8, !tbaa !17
  %i.gv = and i64 %i.gj, 15
  %i.gw = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.gv) #34, !srcloc !7186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 1 %i.gh, i64 %i.gw, i1 false)
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ac:                                            ; preds = %bb.z
  %i.gx = load i32, ptr %i.gh, align 1
  store i32 %i.gx, ptr %i.ah, align 4
  store ptr %i.gh, ptr %i.ai, align 8, !tbaa !17
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !14839
  %.sroa.0.0.copyload.i.i.i.i.i.i22 = load i64, ptr %16, align 8, !noalias !14842 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i24 = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !14842 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !14842
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKS7_SA_:bb.a
  %i.t = and i64 %i.f, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = and i64 %i.s, %i.u
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 59
  %i.x = load i8, ptr %i.w, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.i, align 8, !tbaa !612
  %i.aa = and i64 %i.z, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2377
  %i.ad = shl nsw i64 %i.f, 2
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !612
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.al, %i.aj
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.in = phi i64 [ %i.v, %bb.d ], [ %i.aa, %bb.f ], [ %i.am, %bb.g ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.h, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit
  %i.an = load i32, ptr %0, align 8, !tbaa !14810, !noalias !14859
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !14810, !noalias !14864
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !14864
  %i.ar = sext i32 %i.an to i64
  %sext.i.i = sext i32 %i.ap to i64               ; 4 uses
  %indvars.iv.next.i.i9 = add nsw i64 %i.ar, 1    ; 2 uses
  %i.as = icmp eq i64 %indvars.iv.next.i.i9, %sext.i.i
  br i1 %i.as, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !11633, !noalias !14864, !nonnull !552, !align !674 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2365, !noalias !14864 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 59
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %.lr.ph

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i10, 1 ; 2 uses
  %i.ba = icmp eq i64 %indvars.iv.next.i.i, %sext.i.i
  br i1 %i.ba, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, label %.lr.ph, !llvm.loop !14852

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv.next.i.i10 = phi i64 [ %indvars.iv.next.i.i, %bb.i ], [ %indvars.iv.next.i.i9, %.lr.ph.preheader ] ; 6 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bb = load i8, ptr %i.aw, align 2, !tbaa !2366, !range !551, !noalias !14864, !noundef !552
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr %i.ax, align 1, !range !551, !noalias !14864
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i.i.i = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = lshr i64 %indvars.iv.next.i.i10, 6
  %i.bg = and i64 %i.bf, 67108863
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !612, !noalias !14864
  %i.bj = and i64 %indvars.iv.next.i.i10, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bi, %i.bk
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.ay, align 1, !tbaa !2372, !range !551, !noalias !14864, !noundef !552
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = load i64, ptr %i.av, align 8, !tbaa !612, !noalias !14864
  %i.bp = and i64 %i.bo, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !2377, !noalias !14864
  %i.br = shl nsw i64 %indvars.iv.next.i.i10, 2
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !14864
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 6
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !612, !noalias !14864
  %i.by = and i64 %i.bu, 63
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bx
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in.i.i = phi i64 [ %i.bl, %bb.k ], [ %i.bp, %bb.m ], [ %i.ca, %bb.n ]
  %.0.i.i.i.not.i.i = icmp eq i64 %.0.i.i.i.in.i.i, 0
  br i1 %.0.i.i.i.not.i.i, label %bb.i, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge, !llvm.loop !14852

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, !llvm.loop !14852

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit: ; preds = %.lr.ph, %bb.i, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge, %bb.h
  %indvars.iv.next.i.i.lcssa = phi i64 [ %sext.i.i, %bb.h ], [ %indvars.iv.next.i.i10, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge ], [ %indvars.iv.next.i.i10, %.lr.ph ], [ %sext.i.i, %bb.i ]
  %i.cb = trunc nsw i64 %indvars.iv.next.i.i.lcssa to i32
  store i32 %i.cb, ptr %0, align 8, !tbaa !14810, !noalias !14864
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, %bb.b, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.4467") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1394 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !14785 ; 5 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.i = and i64 %i.b, 255                        ; 10 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = load i64, ptr %4, align 8
  %.fr = freeze i64 %i.k                          ; 5 uses
  %i.l = trunc i64 %.fr to i32                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 13
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = and i64 %.fr, 4294967295
  %i.r = add nsw i64 %i.q, -4
  %.cast = ptrtoint ptr %i.o to i64
  br i1 %i.m, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.s = icmp samesign ult i32 %i.l, 5
  br i1 %i.s, label %.split.us.split.us, label %.split.us.split, !llvm.loop !14832

.split.us.split.us:                               ; preds = %.split.us, %bb.c
  %.0.i89.us.us = phi i64 [ %i.ae, %bb.c ], [ %2, %.split.us ] ; 2 uses
  %.023.i88.us.us = phi i64 [ %i.ad, %bb.c ], [ %i.j, %.split.us ]
  %i.t = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i89.us.us, i64 range(i64 0, 256) %i.i)
  %i.u = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.w, i32 0, i32 3, i32 1)
  %i.x = load <16 x i8>, ptr %i.u, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.h
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 16383                     ; 2 uses
  %.not6874.us.us = icmp eq i16 %i.aa, 0
  %i.ab = extractelement <16 x i8> %i.x, i64 15
  br i1 %.not6874.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %.lr.ph.us.us

.critedge.i._crit_edge.split.us.split.us.us.us:   ; preds = %.critedge.i.backedge.us.us.us.us, %.split.us.split.us
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.thread66, label %bb.c, !prof !741

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ad = add i64 %.023.i88.us.us, -1             ; 2 uses
  %i.ae = add i64 %i.e, %.0.i89.us.us
  %.not.i.us.us = icmp eq i64 %i.ad, 0
  br i1 %.not.i.us.us, label %.thread66, label %.split.us.split.us, !llvm.loop !14831

.lr.ph.us.us:                                     ; preds = %.split.us.split.us
  %i.af = zext nneg i16 %i.aa to i32
  %i.ag = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ag)
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us.us.us, %.lr.ph.us.us
  %.sroa.040.075.us.us.us.us = phi i32 [ %i.af, %.lr.ph.us.us ], [ %i.am, %.critedge.i.backedge.us.us.us.us ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.075.us.us.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !612
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ak
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !729

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.d
  %i.al = add nsw i32 %.sroa.040.075.us.us.us.us, -1
  %i.am = and i32 %i.al, %.sroa.040.075.us.us.us.us ; 2 uses
  %.not68.us.us.us.us = icmp eq i32 %i.am, 0
  br i1 %.not68.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.d, !llvm.loop !14832

.split.us.split:                                  ; preds = %.split.us, %bb.e
  %.0.i89.us = phi i64 [ %i.ay, %bb.e ], [ %2, %.split.us ] ; 2 uses
  %.023.i88.us = phi i64 [ %i.ax, %bb.e ], [ %i.j, %.split.us ]
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i89.us, i64 range(i64 0, 256) %i.i)
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aq, i32 0, i32 3, i32 1)
  %i.ar = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.as = icmp eq <16 x i8> %i.ar, %i.h
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = and i16 %i.at, 16383                    ; 2 uses
  %.not6874.us = icmp eq i16 %i.au, 0
  %i.av = extractelement <16 x i8> %i.ar, i64 15
  br i1 %.not6874.us, label %.critedge.i._crit_edge.split.us.split.us94, label %.lr.ph.us

.critedge.i._crit_edge.split.us.split.us94:       ; preds = %.critedge.i.backedge.us.us92, %.split.us.split
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.thread66, label %bb.e, !prof !741

bb.e:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us94
  %i.ax = add i64 %.023.i88.us, -1                ; 2 uses
  %i.ay = add i64 %i.e, %.0.i89.us
  %.not.i.us = icmp eq i64 %i.ax, 0
  br i1 %.not.i.us, label %.thread66, label %.split.us.split, !llvm.loop !14831

.lr.ph.us:                                        ; preds = %.split.us.split
  %i.az = zext nneg i16 %i.au to i32
  %i.ba = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ba)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %.critedge.i.backedge.us.us92
  %.sroa.040.075.us.us90 = phi i32 [ %i.az, %.lr.ph.us ], [ %i.bd, %.critedge.i.backedge.us.us92 ] ; 3 uses
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.075.us.us90, i1 true)
  %i.bc = add nsw i32 %.sroa.040.075.us.us90, -1
  %i.bd = and i32 %i.bc, %.sroa.040.075.us.us90   ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.be ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !612
  %.not.i.i.i.us.us91 = icmp eq i64 %.fr, %i.bg
  br i1 %.not.i.i.i.us.us91, label %bb.g, label %.critedge.i.backedge.us.us92, !prof !729

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !612
  %i.bj = icmp eq i64 %i.bi, %.cast
  br i1 %i.bj, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us92, !prof !11651

.critedge.i.backedge.us.us92:                     ; preds = %bb.g, %bb.f
  %.not68.us.us93 = icmp eq i32 %i.bd, 0
  br i1 %.not68.us.us93, label %.critedge.i._crit_edge.split.us.split.us94, label %bb.f, !llvm.loop !14832

.split:                                           ; preds = %bb.b, %bb.j
  %.0.i89 = phi i64 [ %i.ch, %bb.j ], [ %2, %bb.b ] ; 2 uses
  %.023.i88 = phi i64 [ %i.cg, %bb.j ], [ %i.j, %bb.b ]
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i89, i64 range(i64 0, 256) %i.i)
  %i.bl = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bn, i32 0, i32 3, i32 1)
  %i.bo = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bo, %i.h
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = and i16 %i.bq, 16383                    ; 2 uses
  %.not6874 = icmp eq i16 %i.br, 0
  %i.bs = extractelement <16 x i8> %i.bo, i64 15
  br i1 %.not6874, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.bt = zext nneg i16 %i.br to i32
  %i.bu = icmp ne ptr %i.bl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bu)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.040.075 = phi i32 [ %i.bt, %.lr.ph ], [ %i.bx, %.critedge.i.backedge ] ; 3 uses
  %i.bv = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.075, i1 true)
  %i.bw = add nsw i32 %.sroa.040.075, -1
  %i.bx = and i32 %i.bw, %.sroa.040.075           ; 2 uses
  %i.by = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.by ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !612
  %.not.i.i.i = icmp eq i64 %.fr, %i.ca
  br i1 %.not.i.i.i, label %bb.i, label %.critedge.i.backedge, !prof !729

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.cd, i64 %i.r)
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge, !prof !11651

.critedge.i.backedge:                             ; preds = %bb.i, %bb.h
  %.not68 = icmp eq i32 %i.bx, 0
  br i1 %.not68, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !14832

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.cf = icmp eq i8 %i.bs, 0
  br i1 %i.cf, label %.thread66, label %bb.j, !prof !741

bb.j:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cg = add i64 %.023.i88, -1                   ; 2 uses
  %i.ch = add i64 %i.e, %.0.i89
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %.thread66, label %.split, !llvm.loop !14831

.thread66:                                        ; preds = %bb.j, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us94, %bb.e, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.c, %bb.a
  %.pre-phi128 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us94 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.j ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = and i8 %i.cj, 15
  %i.cl = zext nneg i8 %i.ck to i64               ; 2 uses
  %i.cm = shl i64 %i.cl, %.pre-phi128             ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.cm
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit, label %bb.k

bb.k:                                             ; preds = %.thread66
  %i.cn = shl nuw i64 1, %.pre-phi128
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.cn, i64 noundef %i.cl, i64 noundef %i.cm)
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !14785
  %.pre125 = load i64, ptr %i.a, align 8, !tbaa !1394
  %.pre126 = and i64 %.pre125, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.k
  %.pre-phi = phi i64 [ %.pre-phi128, %.thread66 ], [ %.pre126, %bb.k ] ; 2 uses
  %i.co = phi ptr [ %.pre, %.thread66 ], [ %.pre124, %bb.k ] ; 3 uses
  %i.cp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.cq = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load <16 x i8>, ptr %i.cq, align 16, !tbaa !17
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.cu, 16383
  br i1 %.not69, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %i.cv = shl i64 %3, 1
  %i.cw = or disjoint i64 %i.cv, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit, %bb.l
  %i.cx = phi i64 [ %i.cp, %bb.l ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.l ], [ %i.dc, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit ]
  %i.cy = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14865 ; 2 uses
  %.not.i31 = icmp eq i8 %i.da, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !14865
  br label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.m, %bb.n
  %i.dc = add i64 %i.cw, %.028                    ; 2 uses
  %i.dd = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.dc, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.de = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.dd ; 3 uses
  %i.df = load <16 x i8>, ptr %i.de, align 16     ; 2 uses
  %i.dg = icmp slt <16 x i8> %i.df, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = and i16 %i.dh, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.di, 16383
  br i1 %.not70, label %bb.m, label %bb.o, !llvm.loop !14867

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit
  %i.dj = extractelement <16 x i8> %i.df, i64 14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dl = add i8 %i.dj, 16
  store i8 %i.dl, ptr %i.dk, align 2, !tbaa !14868
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.di, %bb.o ]
  %.1 = phi ptr [ %i.cq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.de, %bb.o ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64              ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.p
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dn ; 3 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7227
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = or i64 %i.dv, %i.dn                     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14830
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.r, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !1394 ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %i.ec = add i64 %i.eb, 256
  %i.ed = and i64 %i.ea, 255
  %i.ee = or disjoint i64 %i.ec, %i.ed
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !1394
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread: ; preds = %bb.i, %bb.g, %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.us-phi76.sink = phi ptr [ %i.dt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bf, %bb.g ], [ %i.aj, %bb.d ], [ %i.bz, %bb.i ]
  %.us-phi.sink = phi i64 [ %i.dn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.be, %bb.g ], [ %i.ai, %bb.d ], [ %i.by, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ]
  store ptr %.us-phi76.sink, ptr %0, align 8, !tbaa !7299
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ef, align 8, !tbaa !14869
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1394
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm:bb.a
bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0115, i64 noundef %4) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ad

bb.ac:                                            ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %.0115, i64 noundef %4) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit75

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit75: ; preds = %bb.ac, %bb.t, %bb.n
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.n ], [ %i.cz, %bb.t ], [ %i.cz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !526
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !612
  %.not.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !14872 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !612
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.ez) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2041, !range !551, !noundef !552
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14887, !nonnull !552
  %i.e = load i8, ptr %i.d, align 1, !tbaa !526, !range !551, !noundef !552
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !741

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14889, !nonnull !552, !align !674
  %i.i = load i64, ptr %i.h, align 8, !tbaa !612
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14890, !nonnull !552, !align !674
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14872
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14891, !nonnull !552, !align !674
  %i.o = load i64, ptr %i.n, align 8, !tbaa !612
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14892 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14893, !nonnull !552, !align !674
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1215
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14894, !nonnull !552, !align !674
  %i.w = load i64, ptr %i.v, align 8, !tbaa !612
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14890, !nonnull !552, !align !674
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14872
  store ptr %i.z, ptr %i.q, align 8, !tbaa !14785
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14895, !nonnull !552, !align !674
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !612 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !1394
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !1394
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.4467") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1394 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !14785 ; 5 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.i = and i64 %i.b, 255                        ; 10 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = load i64, ptr %4, align 8
  %.fr = freeze i64 %i.k                          ; 5 uses
  %i.l = trunc i64 %.fr to i32                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 13
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = and i64 %.fr, 4294967295
  %i.r = add nsw i64 %i.q, -4
  %.cast = ptrtoint ptr %i.o to i64
  br i1 %i.m, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.s = icmp samesign ult i32 %i.l, 5
  br i1 %i.s, label %.split.us.split.us, label %.split.us.split, !llvm.loop !14832

.split.us.split.us:                               ; preds = %.split.us, %bb.c
  %.0.i89.us.us = phi i64 [ %i.ae, %bb.c ], [ %2, %.split.us ] ; 2 uses
  %.023.i88.us.us = phi i64 [ %i.ad, %bb.c ], [ %i.j, %.split.us ]
  %i.t = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i89.us.us, i64 range(i64 0, 256) %i.i)
  %i.u = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.w, i32 0, i32 3, i32 1)
  %i.x = load <16 x i8>, ptr %i.u, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.h
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 16383                     ; 2 uses
  %.not6874.us.us = icmp eq i16 %i.aa, 0
  %i.ab = extractelement <16 x i8> %i.x, i64 15
  br i1 %.not6874.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %.lr.ph.us.us

.critedge.i._crit_edge.split.us.split.us.us.us:   ; preds = %.critedge.i.backedge.us.us.us.us, %.split.us.split.us
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.thread66, label %bb.c, !prof !741

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ad = add i64 %.023.i88.us.us, -1             ; 2 uses
  %i.ae = add i64 %i.e, %.0.i89.us.us
  %.not.i.us.us = icmp eq i64 %i.ad, 0
  br i1 %.not.i.us.us, label %.thread66, label %.split.us.split.us, !llvm.loop !14831

.lr.ph.us.us:                                     ; preds = %.split.us.split.us
  %i.af = zext nneg i16 %i.aa to i32
  %i.ag = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ag)
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us.us.us, %.lr.ph.us.us
  %.sroa.040.075.us.us.us.us = phi i32 [ %i.af, %.lr.ph.us.us ], [ %i.am, %.critedge.i.backedge.us.us.us.us ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.075.us.us.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !612
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ak
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !729

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.d
  %i.al = add nsw i32 %.sroa.040.075.us.us.us.us, -1
  %i.am = and i32 %i.al, %.sroa.040.075.us.us.us.us ; 2 uses
  %.not68.us.us.us.us = icmp eq i32 %i.am, 0
  br i1 %.not68.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.d, !llvm.loop !14832

.split.us.split:                                  ; preds = %.split.us, %bb.e
  %.0.i89.us = phi i64 [ %i.ay, %bb.e ], [ %2, %.split.us ] ; 2 uses
  %.023.i88.us = phi i64 [ %i.ax, %bb.e ], [ %i.j, %.split.us ]
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i89.us, i64 range(i64 0, 256) %i.i)
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aq, i32 0, i32 3, i32 1)
  %i.ar = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.as = icmp eq <16 x i8> %i.ar, %i.h
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = and i16 %i.at, 16383                    ; 2 uses
  %.not6874.us = icmp eq i16 %i.au, 0
  %i.av = extractelement <16 x i8> %i.ar, i64 15
  br i1 %.not6874.us, label %.critedge.i._crit_edge.split.us.split.us94, label %.lr.ph.us

.critedge.i._crit_edge.split.us.split.us94:       ; preds = %.critedge.i.backedge.us.us92, %.split.us.split
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.thread66, label %bb.e, !prof !741

bb.e:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us94
  %i.ax = add i64 %.023.i88.us, -1                ; 2 uses
  %i.ay = add i64 %i.e, %.0.i89.us
  %.not.i.us = icmp eq i64 %i.ax, 0
  br i1 %.not.i.us, label %.thread66, label %.split.us.split, !llvm.loop !14831

.lr.ph.us:                                        ; preds = %.split.us.split
  %i.az = zext nneg i16 %i.au to i32
  %i.ba = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ba)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %.critedge.i.backedge.us.us92
  %.sroa.040.075.us.us90 = phi i32 [ %i.az, %.lr.ph.us ], [ %i.bd, %.critedge.i.backedge.us.us92 ] ; 3 uses
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.075.us.us90, i1 true)
  %i.bc = add nsw i32 %.sroa.040.075.us.us90, -1
  %i.bd = and i32 %i.bc, %.sroa.040.075.us.us90   ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.be ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !612
  %.not.i.i.i.us.us91 = icmp eq i64 %.fr, %i.bg
  br i1 %.not.i.i.i.us.us91, label %bb.g, label %.critedge.i.backedge.us.us92, !prof !729

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !612
  %i.bj = icmp eq i64 %i.bi, %.cast
  br i1 %i.bj, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us92, !prof !11651

.critedge.i.backedge.us.us92:                     ; preds = %bb.g, %bb.f
  %.not68.us.us93 = icmp eq i32 %i.bd, 0
  br i1 %.not68.us.us93, label %.critedge.i._crit_edge.split.us.split.us94, label %bb.f, !llvm.loop !14832

.split:                                           ; preds = %bb.b, %bb.j
  %.0.i89 = phi i64 [ %i.ch, %bb.j ], [ %2, %bb.b ] ; 2 uses
  %.023.i88 = phi i64 [ %i.cg, %bb.j ], [ %i.j, %bb.b ]
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i89, i64 range(i64 0, 256) %i.i)
  %i.bl = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bn, i32 0, i32 3, i32 1)
  %i.bo = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bo, %i.h
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = and i16 %i.bq, 16383                    ; 2 uses
  %.not6874 = icmp eq i16 %i.br, 0
  %i.bs = extractelement <16 x i8> %i.bo, i64 15
  br i1 %.not6874, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.bt = zext nneg i16 %i.br to i32
  %i.bu = icmp ne ptr %i.bl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bu)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.040.075 = phi i32 [ %i.bt, %.lr.ph ], [ %i.bx, %.critedge.i.backedge ] ; 3 uses
  %i.bv = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.075, i1 true)
  %i.bw = add nsw i32 %.sroa.040.075, -1
  %i.bx = and i32 %i.bw, %.sroa.040.075           ; 2 uses
  %i.by = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.by ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !612
  %.not.i.i.i = icmp eq i64 %.fr, %i.ca
  br i1 %.not.i.i.i, label %bb.i, label %.critedge.i.backedge, !prof !729

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.cd, i64 %i.r)
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge, !prof !11651

.critedge.i.backedge:                             ; preds = %bb.i, %bb.h
  %.not68 = icmp eq i32 %i.bx, 0
  br i1 %.not68, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !14832

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.cf = icmp eq i8 %i.bs, 0
  br i1 %i.cf, label %.thread66, label %bb.j, !prof !741

bb.j:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cg = add i64 %.023.i88, -1                   ; 2 uses
  %i.ch = add i64 %i.e, %.0.i89
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %.thread66, label %.split, !llvm.loop !14831

.thread66:                                        ; preds = %bb.j, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us94, %bb.e, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.c, %bb.a
  %.pre-phi128 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us94 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.j ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = and i8 %i.cj, 15
  %i.cl = zext nneg i8 %i.ck to i64               ; 2 uses
  %i.cm = shl i64 %i.cl, %.pre-phi128             ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.cm
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit, label %bb.k

bb.k:                                             ; preds = %.thread66
  %i.cn = shl nuw i64 1, %.pre-phi128
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.cn, i64 noundef %i.cl, i64 noundef %i.cm)
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !14785
  %.pre125 = load i64, ptr %i.a, align 8, !tbaa !1394
  %.pre126 = and i64 %.pre125, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.k
  %.pre-phi = phi i64 [ %.pre-phi128, %.thread66 ], [ %.pre126, %bb.k ] ; 2 uses
  %i.co = phi ptr [ %.pre, %.thread66 ], [ %.pre124, %bb.k ] ; 3 uses
  %i.cp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.cq = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load <16 x i8>, ptr %i.cq, align 16, !tbaa !17
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.cu, 16383
  br i1 %.not69, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %i.cv = shl i64 %3, 1
  %i.cw = or disjoint i64 %i.cv, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit, %bb.l
  %i.cx = phi i64 [ %i.cp, %bb.l ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.l ], [ %i.dc, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit ]
  %i.cy = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14865 ; 2 uses
  %.not.i31 = icmp eq i8 %i.da, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !14865
  br label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.m, %bb.n
  %i.dc = add i64 %i.cw, %.028                    ; 2 uses
  %i.dd = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.dc, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.de = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.dd ; 3 uses
  %i.df = load <16 x i8>, ptr %i.de, align 16     ; 2 uses
  %i.dg = icmp slt <16 x i8> %i.df, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = and i16 %i.dh, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.di, 16383
  br i1 %.not70, label %bb.m, label %bb.o, !llvm.loop !14896

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit
  %i.dj = extractelement <16 x i8> %i.df, i64 14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dl = add i8 %i.dj, 16
  store i8 %i.dl, ptr %i.dk, align 2, !tbaa !14868
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.di, %bb.o ]
  %.1 = phi ptr [ %i.cq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.de, %bb.o ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64              ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.p
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dn ; 3 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7227
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = or i64 %i.dv, %i.dn                     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14830
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.r, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !1394 ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %i.ec = add i64 %i.eb, 256
  %i.ed = and i64 %i.ea, 255
  %i.ee = or disjoint i64 %i.ec, %i.ed
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !1394
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread: ; preds = %bb.i, %bb.g, %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.us-phi76.sink = phi ptr [ %i.dt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bf, %bb.g ], [ %i.aj, %bb.d ], [ %i.bz, %bb.i ]
  %.us-phi.sink = phi i64 [ %i.dn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.be, %bb.g ], [ %i.ai, %bb.d ], [ %i.by, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ]
  store ptr %.us-phi76.sink, ptr %0, align 8, !tbaa !7299
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ef, align 8, !tbaa !14869
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN8facebook5velox4core9UDFHolderINS1_9functions27MapIntersectVarcharFunctionINS1_4exec10VectorExecEEES7_NS1_3MapINS1_7VarcharENS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayISA_EEEEEJSF_SI_EEEEclEPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !17
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14785 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  %i.u = load i8, ptr %i.t, align 1, !tbaa !1391
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox9functions27MapIntersectVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EE:bb.a
  br i1 %.0.i.i.i.not.i, label %bb.n, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, !llvm.loop !14852

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  br label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, !llvm.loop !14852

_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit: ; preds = %.lr.ph175, %bb.n, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %.lcssa = phi i32 [ %i.cq, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit ], [ %i.db, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge ], [ %i.db, %.lr.ph175 ], [ %i.cz, %bb.n ] ; 2 uses
  %i.ec = icmp eq i32 %i.ba, %.lcssa
  br i1 %i.ec, label %._crit_edge, label %bb.j

bb.t:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1394
  %i.eg = icmp ult i64 %i.ef, 256
  br i1 %i.eg, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !11596, !noalias !14954 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !11597, !noalias !14954 ; 2 uses
  %i.el = load ptr, ptr %2, align 8, !tbaa !11593, !noalias !14954
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !11595, !noalias !14954 ; 4 uses
  %i.eo = add nsw i32 %i.ek, %i.ei
  %i.ep = icmp eq i32 %i.ek, 0
  br i1 %i.ep, label %.loopexit, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ey = getelementptr i8, ptr %i.en, <2 x i64> <i64 8, i64 56>
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fb = sext i32 %i.ei to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph138, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %i.fc = phi i64 [ %i.fb, %.lr.ph138 ], [ %indvars.iv.next, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !14957)
  call void @llvm.experimental.noalias.scope.decl(metadata !14960)
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !11633, !noalias !14963, !nonnull !552, !align !674 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !2367, !noalias !14963
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 58
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !2366, !range !551, !noalias !14963, !noundef !552
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fi, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 59
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !2372, !range !551, !noalias !14963, !noundef !552
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !2373, !noalias !14963
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.y:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !2377, !noalias !14963
  %i.fr = shl nsw i64 %i.fc, 2
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !14963
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ft, %bb.y ], [ %i.fo, %bb.x ], [ %i.fj, %bb.v ]
  %i.fu = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.fu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i22 = load i64, ptr %i.fv, align 8, !noalias !14963
  %.sroa.0.0.copyload.i.i.i.i.i.i22.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i22 ; 11 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i23, align 8, !tbaa !17, !noalias !14963 ; 8 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, ptr %11, align 8, !alias.scope !14963
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i24, ptr %i.eq, align 8, !alias.scope !14963
  store ptr %i.en, ptr %i.er, align 8, !alias.scope !14963
  store i64 %i.fc, ptr %i.es, align 8, !alias.scope !14963
  %i.fw = load i64, ptr %i.ee, align 8, !tbaa !1394
  %i.fx = lshr i64 %i.fw, 8
  %i.fy = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i24 to i64 ; 2 uses
  %i.fz = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr to i32 ; 8 uses
  switch i64 %i.fx, label %bb.ad [
    i64 0, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !14830
  %i.gb = and i64 %i.ga, -16
  %i.gc = inttoptr i64 %i.gb to ptr               ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 16, !tbaa !612
  %.not.i.i.i27 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, %i.gd
  br i1 %.not.i.i.i27, label %bb.aa, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ge = icmp ult i32 %i.fz, 13
  br i1 %i.ge, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gf = icmp samesign ult i32 %i.fz, 5
  br i1 %i.gf, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i24, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, 4294967295
  %i.gl = add nsw i64 %i.gk, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gg, ptr nonnull %i.gj, i64 %i.gl)
  %i.gm = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit: ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !612
  %i.gp = icmp eq i64 %i.go, %i.fy
  br i1 %i.gp, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

bb.ad:                                            ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i24, ptr %i.eu, align 8
  %i.gq = icmp ult i32 %i.fz, 13                  ; 2 uses
  %i.gr = select i1 %i.gq, ptr %i.ev, ptr %.sroa.2.0.copyload.i.i.i.i.i.i24
  %i.gs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, 4294967295 ; 2 uses
  %i.gt = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gr, i64 noundef %i.gs) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gu = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gt) ; 2 uses
  %i.gv = lshr i64 %i.gu, 24
  %i.gw = or i64 %i.gv, 128                       ; 2 uses
  %i.gx = add i64 %i.gu, %i.gt                    ; 3 uses
  %i.gy = shl nuw nsw i64 %i.gw, 1
  %i.gz = or disjoint i64 %i.gy, 1                ; 3 uses
  %i.ha = trunc nuw i64 %i.gw to i8
  %i.hb = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hc = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.hd = load i64, ptr %i.ee, align 8, !tbaa !1394
  %i.he = and i64 %i.hd, 255                      ; 4 uses
  %i.hf = shl nuw i64 1, %i.he                    ; 3 uses
  %i.hg = load ptr, ptr %i.ed, align 8, !tbaa !14785 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i24, i64 4
  %i.hi = add nsw i64 %i.gs, -4
  br i1 %i.gq, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ad
  %i.hj = icmp samesign ult i32 %i.fz, 5
  br i1 %i.hj, label %.split.us.split.us, label %.split.us.split, !llvm.loop !14832

.split.us.split.us:                               ; preds = %.split.us, %bb.ae
  %.0.i.i127.us.us = phi i64 [ %i.hv, %bb.ae ], [ %i.gx, %.split.us ] ; 2 uses
  %.023.i.i126.us.us = phi i64 [ %i.hu, %bb.ae ], [ %i.hf, %.split.us ]
  %i.hk = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i127.us.us, i64 range(i64 0, 256) %i.he)
  %i.hl = getelementptr inbounds nuw [256 x i8], ptr %i.hg, i64 %i.hk ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hn, i32 0, i32 3, i32 1)
  %i.ho = load <16 x i8>, ptr %i.hl, align 16     ; 2 uses
  %i.hp = icmp eq <16 x i8> %i.ho, %i.hc
  %i.hq = bitcast <16 x i1> %i.hp to i16
  %i.hr = and i16 %i.hq, 16383                    ; 2 uses
  %.not121.us.us = icmp eq i16 %i.hr, 0
  %i.hs = extractelement <16 x i8> %i.ho, i64 15
  br i1 %.not121.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.lr.ph124.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.split.us.split.us
  %i.ht = icmp eq i8 %i.hs, 0
  br i1 %i.ht, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.ae, !prof !741

bb.ae:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.hu = add i64 %.023.i.i126.us.us, -1          ; 2 uses
  %i.hv = add i64 %i.gz, %.0.i.i127.us.us
  %.not.i.i.us.us = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i.us.us, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %.split.us.split.us, !llvm.loop !14831

.lr.ph124.us.us:                                  ; preds = %.split.us.split.us
  %i.hw = zext nneg i16 %i.hr to i32
  %i.hx = icmp ne ptr %i.hl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hx)
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.backedge.us.us.us.us, %.lr.ph124.us.us
  %.sroa.070.0122.us.us.us.us = phi i32 [ %i.hw, %.lr.ph124.us.us ], [ %i.id, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0122.us.us.us.us, i1 true)
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hz
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !612
  %.not.i.i.i30.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, %i.ib
  br i1 %.not.i.i.i30.us.us.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us.us:               ; preds = %bb.af
  %i.ic = add nsw i32 %.sroa.070.0122.us.us.us.us, -1
  %i.id = and i32 %i.ic, %.sroa.070.0122.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.id, 0
  br i1 %.not.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %bb.af, !llvm.loop !14832

.split.us.split:                                  ; preds = %.split.us, %bb.ag
  %.0.i.i127.us = phi i64 [ %i.ip, %bb.ag ], [ %i.gx, %.split.us ] ; 2 uses
  %.023.i.i126.us = phi i64 [ %i.io, %bb.ag ], [ %i.hf, %.split.us ]
  %i.ie = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i127.us, i64 range(i64 0, 256) %i.he)
  %i.if = getelementptr inbounds nuw [256 x i8], ptr %i.hg, i64 %i.ie ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ih, i32 0, i32 3, i32 1)
  %i.ii = load <16 x i8>, ptr %i.if, align 16     ; 2 uses
  %i.ij = icmp eq <16 x i8> %i.ii, %i.hc
  %i.ik = bitcast <16 x i1> %i.ij to i16
  %i.il = and i16 %i.ik, 16383                    ; 2 uses
  %.not121.us = icmp eq i16 %i.il, 0
  %i.im = extractelement <16 x i8> %i.ii, i64 15
  br i1 %.not121.us, label %.critedge.i.i._crit_edge.split.us.split.us132, label %.lr.ph124.us

.critedge.i.i._crit_edge.split.us.split.us132:    ; preds = %.critedge.i.i.backedge.us.us130, %.split.us.split
  %i.in = icmp eq i8 %i.im, 0
  br i1 %i.in, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.ag, !prof !741

bb.ag:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us132
  %i.io = add i64 %.023.i.i126.us, -1             ; 2 uses
  %i.ip = add i64 %i.gz, %.0.i.i127.us
  %.not.i.i.us = icmp eq i64 %i.io, 0
  br i1 %.not.i.i.us, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %.split.us.split, !llvm.loop !14831

.lr.ph124.us:                                     ; preds = %.split.us.split
  %i.iq = zext nneg i16 %i.il to i32
  %i.ir = icmp ne ptr %i.if, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ir)
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph124.us, %.critedge.i.i.backedge.us.us130
  %.sroa.070.0122.us.us128 = phi i32 [ %i.iq, %.lr.ph124.us ], [ %i.iu, %.critedge.i.i.backedge.us.us130 ] ; 3 uses
  %i.is = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0122.us.us128, i1 true)
  %i.it = add nsw i32 %.sroa.070.0122.us.us128, -1
  %i.iu = and i32 %i.it, %.sroa.070.0122.us.us128 ; 2 uses
  %i.iv = zext nneg i32 %i.is to i64
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !612
  %.not.i.i.i30.us.us129 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, %i.ix
  br i1 %.not.i.i.i30.us.us129, label %bb.ai, label %.critedge.i.i.backedge.us.us130, !prof !729

bb.ai:                                            ; preds = %bb.ah
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !612
  %i.ja = icmp eq i64 %i.iz, %i.fy
  br i1 %i.ja, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us130, !prof !11651

.critedge.i.i.backedge.us.us130:                  ; preds = %bb.ai, %bb.ah
  %.not.us.us131 = icmp eq i32 %i.iu, 0
  br i1 %.not.us.us131, label %.critedge.i.i._crit_edge.split.us.split.us132, label %bb.ah, !llvm.loop !14832

.split:                                           ; preds = %bb.ad, %bb.al
  %.0.i.i127 = phi i64 [ %i.jy, %bb.al ], [ %i.gx, %bb.ad ] ; 2 uses
  %.023.i.i126 = phi i64 [ %i.jx, %bb.al ], [ %i.hf, %bb.ad ]
  %i.jb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i127, i64 range(i64 0, 256) %i.he)
  %i.jc = getelementptr inbounds nuw [256 x i8], ptr %i.hg, i64 %i.jb ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.je, i32 0, i32 3, i32 1)
  %i.jf = load <16 x i8>, ptr %i.jc, align 16     ; 2 uses
  %i.jg = icmp eq <16 x i8> %i.jf, %i.hc
  %i.jh = bitcast <16 x i1> %i.jg to i16
  %i.ji = and i16 %i.jh, 16383                    ; 2 uses
  %.not121 = icmp eq i16 %i.ji, 0
  %i.jj = extractelement <16 x i8> %i.jf, i64 15
  br i1 %.not121, label %.critedge.i.i._crit_edge.split, label %.lr.ph124

.lr.ph124:                                        ; preds = %.split
  %i.jk = zext nneg i16 %i.ji to i32
  %i.jl = icmp ne ptr %i.jc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jl)
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph124, %.critedge.i.i.backedge
  %.sroa.070.0122 = phi i32 [ %i.jk, %.lr.ph124 ], [ %i.jo, %.critedge.i.i.backedge ] ; 3 uses
  %i.jm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0122, i1 true)
  %i.jn = add nsw i32 %.sroa.070.0122, -1
  %i.jo = and i32 %i.jn, %.sroa.070.0122          ; 2 uses
  %i.jp = zext nneg i32 %i.jm to i64
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jp ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !612
  %.not.i.i.i30 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, %i.jr
  br i1 %.not.i.i.i30, label %bb.ak, label %.critedge.i.i.backedge, !prof !729

bb.ak:                                            ; preds = %bb.aj
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !17
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %bcmp.i.i.i32 = call i32 @bcmp(ptr nonnull %i.hh, ptr nonnull %i.ju, i64 %i.hi)
  %i.jv = icmp eq i32 %bcmp.i.i.i32, 0
  br i1 %i.jv, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge, !prof !11651

.critedge.i.i.backedge:                           ; preds = %bb.ak, %bb.aj
  %.not = icmp eq i32 %i.jo, 0
  br i1 %.not, label %.critedge.i.i._crit_edge.split, label %bb.aj, !llvm.loop !14832

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split
  %i.jw = icmp eq i8 %i.jj, 0
  br i1 %i.jw, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.al, !prof !741

bb.al:                                            ; preds = %.critedge.i.i._crit_edge.split
  %i.jx = add i64 %.023.i.i126, -1                ; 2 uses
  %i.jy = add i64 %i.gz, %.0.i.i127
  %.not.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %.split, !llvm.loop !14831

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread: ; preds = %bb.ak, %bb.ai, %bb.af, %bb.ab, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit, %bb.ac
  %i.jz = load ptr, ptr %i.en, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i34 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i34, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 58
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 57
  %i.kg = load i8, ptr %i.kf, align 1, !range !551
  %i.kh = trunc nuw i8 %i.kg to i1
  %or.cond.i.i.i = select i1 %i.ke, i1 true, i1 %i.kh
  br i1 %or.cond.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ki = lshr i64 %i.fc, 6
  %i.kj = and i64 %i.ki, 67108863
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !612
  %i.km = and i64 %i.fc, 63
  %i.kn = shl nuw i64 1, %i.km
  %i.ko = and i64 %i.kl, %i.kn
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 59
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ks = load i64, ptr %i.kb, align 8, !tbaa !612
  %i.kt = and i64 %i.ks, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !2377
  %sext.i35 = shl i64 %i.fc, 32
  %i.kw = ashr exact i64 %sext.i35, 30
  %i.kx = getelementptr inbounds i8, ptr %i.kv, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = lshr i64 %i.kz, 6
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !612
  %i.ld = and i64 %i.kz, 63
  %i.le = shl nuw i64 1, %i.ld
  %i.lf = and i64 %i.le, %i.lc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.an, %bb.ap, %bb.aq
  %.0.i.i.i36.in = phi i64 [ %i.ko, %bb.an ], [ %i.kt, %bb.ap ], [ %i.lf, %bb.aq ]
  %.0.i.i.i36.not = icmp eq i64 %.0.i.i.i36.in, 0
  br i1 %.0.i.i.i36.not, label %bb.ar, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.lg = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !7166 ; 2 uses
  %i.lj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, 4294967295 ; 2 uses
  %i.lk = add i64 %i.li, %i.lj                    ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !7165
  %i.ln = icmp ugt i64 %i.lk, %i.lm
  br i1 %i.ln, label %bb.as, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.lo = load ptr, ptr %i.lg, align 8, !tbaa !541
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(96) %i.lg, i64 noundef %i.lk), !inline_history !14964
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.as, %bb.ar
  store i64 %i.lk, ptr %i.lh, align 8, !tbaa !7166
  %.not.i.i38 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i38, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !7167
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.li
  %i.lu = icmp ult i32 %i.fz, 13
  %i.lv = select i1 %i.lu, ptr %i.ew, ptr %.sroa.2.0.copyload.i.i.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lt, ptr align 1 %i.lv, i64 %i.lj, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3328") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.lw = load ptr, ptr %i.ex, align 8, !tbaa !11653, !nonnull !552, !align !674 ; 5 uses
  %i.lx = load ptr, ptr %12, align 8, !tbaa !8637, !nonnull !552, !align !674
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !7166 ; 2 uses
  %i.ma = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i22.fr, 4294967295 ; 2 uses
  %i.mb = add i64 %i.lz, %i.ma                    ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !7165
  %i.me = icmp ugt i64 %i.mb, %i.md
  br i1 %i.me, label %bb.au, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i39

bb.au:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !541
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(96) %i.lw, i64 noundef %i.mb), !inline_history !14964
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i39

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i39: ; preds = %bb.au, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  store i64 %i.mb, ptr %i.ly, align 8, !tbaa !7166
  %.not.i.i40 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i40, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit42, label %bb.av

bb.av:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i39
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !7167
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.lz
  %i.ml = icmp ult i32 %i.fz, 13
  %i.mm = select i1 %i.ml, ptr %i.ew, ptr %.sroa.2.0.copyload.i.i.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mk, ptr align 1 %i.mm, i64 %i.ma, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit42

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit42: ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i39, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !14965)
  call void @llvm.experimental.noalias.scope.decl(metadata !14968)
  %i.mn = load ptr, ptr %i.en, align 8, !tbaa !8394, !noalias !14971, !nonnull !552, !align !674
  store ptr %i.mn, ptr %13, align 8, !tbaa !1033, !alias.scope !14971
  store <2 x ptr> %i.ey, ptr %i.ez, align 8, !tbaa !533, !alias.scope !14971
  store i32 %i.fj, ptr %i.fa, align 8, !tbaa !8647, !alias.scope !14971
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(28) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit: ; preds = %.critedge.i.i._crit_edge.split, %bb.al, %.critedge.i.i._crit_edge.split.us.split.us132, %bb.ag, %.critedge.i.i._crit_edge.split.us.split.us.us.us, %bb.ae, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit, %bb.ac, %bb.z, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %bb.at, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %indvars.iv.next = add nsw i64 %i.fc, 1         ; 2 uses
  %i.mo = trunc nsw i64 %indvars.iv.next to i32
  %i.mp = icmp eq i32 %i.eo, %i.mo
  br i1 %i.mp, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, %bb.u, %bb.t, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27MapIntersectVarcharFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISE_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.4499) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.4501, align 8           ; 6 uses
  %6 = alloca %class.anon.4500, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27MapIntersectVarcharFunctionINS4_10VectorExecEEESC_NS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISF_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox9functions24MapExceptVarcharFunctionINS0_4exec10VectorExecEE10initializeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISA_EERKNS0_4core11QueryConfigEPKNS3_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEPKNS3_9ArrayViewILb1ESK_EE:bb.a
  store i32 %i.cq, ptr %12, align 8, !tbaa !14810, !noalias !17076
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.co, ptr %i.cw, align 4, !tbaa !14813, !noalias !17076
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.cq, ptr %i.cx, align 8, !tbaa !14814, !noalias !17076
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.cu, ptr %i.cy, align 8, !tbaa !8505, !noalias !17076
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.cm, ptr %i.cz, align 8, !tbaa !14815, !noalias !17076
  call void @_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKS7_SA_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::SkipNullsIterator.4461") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !17076
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34, !noalias !17076
  %i.da = load i32, ptr %i.cn, align 8, !tbaa !11632, !noalias !17079
  %i.db = load i32, ptr %i.ap, align 4, !tbaa !11620, !noalias !17079
  %i.dc = add nsw i32 %i.db, %i.da                ; 2 uses
  %i.dd = load i32, ptr %13, align 8, !tbaa !14810 ; 2 uses
  %i.de = icmp eq i32 %i.dd, %i.dc
  br i1 %i.de, label %._crit_edge, label %.lr.ph120

.lr.ph120:                                        ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE7reserveEm.exit
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.pre = load ptr, ptr %i.df, align 8, !tbaa !14815
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.aw

bb.o:                                             ; preds = %.lr.ph120, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit
  %i.du = phi ptr [ %.pre, %.lr.ph120 ], [ %i.ku, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ]
  %i.dv = phi i32 [ %i.dd, %.lr.ph120 ], [ %.lcssa, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !11633, !nonnull !552, !align !674 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2367
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 58
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !2373
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

bb.r:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !2377
  %i.ek = shl nsw i64 %i.dw, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.em, %bb.r ], [ %i.eh, %bb.q ], [ %i.dv, %bb.o ]
  %i.en = sext i32 %.0.i.i.i.i.i to i64
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %i.en ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.eo, align 8 ; 10 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !17 ; 7 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %14, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.dg, align 8
  %i.ep = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 4 uses
  %i.eq = icmp ult i32 %i.ep, 13
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !17082
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !17085
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %9, align 8, !noalias !17085
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.dr, align 8, !noalias !17085
  %i.er = and i64 %.sroa.0.0.copyload.i.i.i.i, 15
  %i.es = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef nonnull %i.ds, i64 noundef %i.er), !noalias !17085 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !17085
  %i.et = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.es) ; 2 uses
  %i.eu = lshr i64 %i.et, 24
  %i.ev = or i64 %i.eu, 128
  %i.ew = add i64 %i.et, %i.es
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 %i.ew, i64 %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %14), !noalias !17082
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !17082
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %i.ex = load i64, ptr %i.dh, align 8, !tbaa !1394
  %i.ey = lshr i64 %i.ex, 8
  switch i64 %i.ey, label %bb.w [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.ez = load i64, ptr %i.di, align 8, !tbaa !14830
  %i.fa = and i64 %i.ez, -16
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 16, !tbaa !612
  %.not.i.i.i17 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, %i.fc
  br i1 %.not.i.i.i17, label %bb.v, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295
  %i.fi = add nsw i64 %i.fh, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.fd, ptr nonnull %i.fg, i64 %i.fi)
  %i.fj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.fj, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85

bb.w:                                             ; preds = %bb.t
  %i.fk = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295
  %i.fl = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.fk) ; 2 uses
  %i.fm = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fl) ; 2 uses
  %i.fn = lshr i64 %i.fm, 24
  %i.fo = or i64 %i.fn, 128                       ; 2 uses
  %i.fp = add i64 %i.fm, %i.fl                    ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fo, 1
  %i.fr = or disjoint i64 %i.fq, 1                ; 2 uses
  %i.fs = trunc nuw i64 %i.fo to i8
  %i.ft = insertelement <16 x i8> poison, i8 %i.fs, i64 0
  %i.fu = shufflevector <16 x i8> %i.ft, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.fv = load i64, ptr %i.dh, align 8, !tbaa !1394
  %i.fw = and i64 %i.fv, 255                      ; 3 uses
  %i.fx = shl nuw i64 1, %i.fw                    ; 2 uses
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !14785 ; 2 uses
  %i.fz = load i64, ptr %14, align 8
  %.fr = freeze i64 %i.fz                         ; 10 uses
  %i.ga = trunc i64 %.fr to i32                   ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 13
  %i.gc = load ptr, ptr %i.dg, align 8            ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = and i64 %.fr, 4294967295
  %i.gf = add nsw i64 %i.ge, -4
  %i.gg = icmp ult i32 %i.ga, 5
  %.cast = ptrtoint ptr %i.gc to i64
  %i.gh = trunc i64 %.fr to i32                   ; 4 uses
  br i1 %i.gb, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.w, %bb.x
  %.0.i.i111.us = phi i64 [ %i.gt, %bb.x ], [ %i.fp, %bb.w ] ; 2 uses
  %.023.i.i110.us = phi i64 [ %i.gs, %bb.x ], [ %i.fx, %bb.w ]
  %i.gi = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i111.us, i64 range(i64 0, 256) %i.fw)
  %i.gj = getelementptr inbounds nuw [256 x i8], ptr %i.fy, i64 %i.gi ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.gl, i32 0, i32 3, i32 1)
  %i.gm = load <16 x i8>, ptr %i.gj, align 16     ; 2 uses
  %i.gn = icmp eq <16 x i8> %i.gm, %i.fu
  %i.go = bitcast <16 x i1> %i.gn to i16
  %i.gp = and i16 %i.go, 16383                    ; 2 uses
  %.not101107.us = icmp eq i16 %i.gp, 0
  %i.gq = extractelement <16 x i8> %i.gm, i64 15
  br i1 %.not101107.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us114, %.critedge.i.i.backedge.us.us.us, %.split.us
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85, label %bb.x, !prof !741

bb.x:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.gs = add i64 %.023.i.i110.us, -1             ; 2 uses
  %i.gt = add i64 %i.fr, %.0.i.i111.us
  %.not.i.i.us = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85, label %.split.us, !llvm.loop !14831

.lr.ph.us:                                        ; preds = %.split.us
  %i.gu = zext nneg i16 %i.gp to i32              ; 2 uses
  %i.gv = icmp ne ptr %i.gj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gv)
  br i1 %i.gg, label %.lr.ph.split.us.split.us.us, label %.lr.ph.split.us.split.us117, !llvm.loop !14832

.lr.ph.split.us.split.us117:                      ; preds = %.lr.ph.us, %.critedge.i.i.backedge.us.us114
  %.sroa.053.0108.us.us112 = phi i32 [ %i.gy, %.critedge.i.i.backedge.us.us114 ], [ %i.gu, %.lr.ph.us ] ; 3 uses
  %i.gw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.053.0108.us.us112, i1 true)
  %i.gx = add nsw i32 %.sroa.053.0108.us.us112, -1
  %i.gy = and i32 %i.gx, %.sroa.053.0108.us.us112 ; 2 uses
  %i.gz = zext nneg i32 %i.gw to i64
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !612
  %.not.i.i.i20.us.us113 = icmp eq i64 %.fr, %i.hb
  br i1 %.not.i.i.i20.us.us113, label %bb.y, label %.critedge.i.i.backedge.us.us114, !prof !729

bb.y:                                             ; preds = %.lr.ph.split.us.split.us117
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !612
  %i.he = icmp eq i64 %i.hd, %.cast
  br i1 %i.he, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us114, !prof !11651

.critedge.i.i.backedge.us.us114:                  ; preds = %bb.y, %.lr.ph.split.us.split.us117
  %.not101.us.us115 = icmp eq i32 %i.gy, 0
  br i1 %.not101.us.us115, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.split.us.split.us117, !llvm.loop !14832

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.us, %.critedge.i.i.backedge.us.us.us
  %.sroa.053.0108.us.us.us = phi i32 [ %i.hk, %.critedge.i.i.backedge.us.us.us ], [ %i.gu, %.lr.ph.us ] ; 3 uses
  %i.hf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.053.0108.us.us.us, i1 true)
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !612
  %.not.i.i.i20.us.us.us = icmp eq i64 %.fr, %i.hi
  br i1 %.not.i.i.i20.us.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us:                  ; preds = %.lr.ph.split.us.split.us.us
  %i.hj = add nsw i32 %.sroa.053.0108.us.us.us, -1
  %i.hk = and i32 %i.hj, %.sroa.053.0108.us.us.us ; 2 uses
  %.not101.us.us.us = icmp eq i32 %i.hk, 0
  br i1 %.not101.us.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.split.us.split.us.us, !llvm.loop !14832

.split:                                           ; preds = %bb.w, %bb.ab
  %.0.i.i111 = phi i64 [ %i.ii, %bb.ab ], [ %i.fp, %bb.w ] ; 2 uses
  %.023.i.i110 = phi i64 [ %i.ih, %bb.ab ], [ %i.fx, %bb.w ]
  %i.hl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i111, i64 range(i64 0, 256) %i.fw)
  %i.hm = getelementptr inbounds nuw [256 x i8], ptr %i.fy, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ho, i32 0, i32 3, i32 1)
  %i.hp = load <16 x i8>, ptr %i.hm, align 16     ; 2 uses
  %i.hq = icmp eq <16 x i8> %i.hp, %i.fu
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = and i16 %i.hr, 16383                    ; 2 uses
  %.not101107 = icmp eq i16 %i.hs, 0
  %i.ht = extractelement <16 x i8> %i.hp, i64 15
  br i1 %.not101107, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.hu = zext nneg i16 %i.hs to i32
  %i.hv = icmp ne ptr %i.hm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hv)
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.053.0108 = phi i32 [ %i.hu, %.lr.ph ], [ %i.hy, %.critedge.i.i.backedge ] ; 3 uses
  %i.hw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.053.0108, i1 true)
  %i.hx = add nsw i32 %.sroa.053.0108, -1
  %i.hy = and i32 %i.hx, %.sroa.053.0108          ; 2 uses
  %i.hz = zext nneg i32 %i.hw to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.hz ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !612
  %.not.i.i.i20 = icmp eq i64 %.fr, %i.ib
  br i1 %.not.i.i.i20, label %bb.aa, label %.critedge.i.i.backedge, !prof !729

bb.aa:                                            ; preds = %bb.z
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !17
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %bcmp.i.i.i22 = call i32 @bcmp(ptr nonnull %i.gd, ptr nonnull %i.ie, i64 %i.gf)
  %i.if = icmp eq i32 %bcmp.i.i.i22, 0
  br i1 %i.if, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge, !prof !11651

.critedge.i.i.backedge:                           ; preds = %bb.aa, %bb.z
  %.not101 = icmp eq i32 %i.hy, 0
  br i1 %.not101, label %.critedge.i.i._crit_edge.split, label %bb.z, !llvm.loop !14832

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split
  %i.ig = icmp eq i8 %i.ht, 0
  br i1 %i.ig, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85, label %bb.ab, !prof !741

bb.ab:                                            ; preds = %.critedge.i.i._crit_edge.split
  %i.ih = add i64 %.023.i.i110, -1                ; 2 uses
  %i.ii = add i64 %i.fr, %.0.i.i111
  %.not.i.i = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85, label %.split, !llvm.loop !14831

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85: ; preds = %.critedge.i.i._crit_edge.split, %bb.ab, %bb.x, %.critedge.i.i._crit_edge.split.us.us, %bb.v, %bb.u, %bb.t
  %.in.in = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.t ], [ %.fr, %bb.x ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.u ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.v ], [ %.fr, %.critedge.i.i._crit_edge.split.us.us ], [ %.fr, %bb.ab ], [ %.fr, %.critedge.i.i._crit_edge.split ]
  %i.ij = phi ptr [ %.sroa.2.0.copyload.i.i.i.i, %bb.t ], [ %i.gc, %bb.x ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.u ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.v ], [ %i.gc, %.critedge.i.i._crit_edge.split.us.us ], [ %i.gc, %bb.ab ], [ %i.gc, %.critedge.i.i._crit_edge.split ]
  %i.ik = phi i32 [ %i.ep, %bb.t ], [ %i.gh, %bb.x ], [ %i.ep, %bb.u ], [ %i.ep, %bb.v ], [ %i.gh, %.critedge.i.i._crit_edge.split.us.us ], [ %i.gh, %bb.ab ], [ %i.gh, %.critedge.i.i._crit_edge.split ] ; 4 uses
  %.in = lshr i64 %.in.in, 32
  %i.il = trunc i64 %.in to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.im = icmp ult i32 %i.ik, 13
  %i.in = select i1 %i.im, ptr %i.dj, ptr %i.ij   ; 2 uses
  %i.io = zext i32 %i.ik to i64                   ; 5 uses
  store ptr %i.dk, ptr %15, align 8, !tbaa !523, !alias.scope !17092
  %i.ip = icmp eq ptr %i.in, null
  br i1 %i.ip, label %.noexc.i, label %bb.ac

.noexc.i:                                         ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #42
  unreachable

bb.ac:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread85
  %i.iq = icmp ugt i32 %i.ik, 15
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.ir = add nuw nsw i64 %i.io, 1
  %i.is = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #41 ; 2 uses
  store ptr %i.is, ptr %15, align 8, !tbaa !7, !alias.scope !17092
  store i64 %i.io, ptr %i.dk, align 8, !tbaa !17, !alias.scope !17092
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.ac
  %i.it = phi ptr [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.dk, %bb.ac ] ; 3 uses
  switch i32 %i.ik, label %bb.ae [
    i32 1, label %bb.ad
    i32 0, label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i
  store i8 %i.il, ptr %i.it, align 1, !tbaa !17
  br label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.it, ptr nonnull align 1 %i.in, i64 %i.io, i1 false)
  br label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit

_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.ad, %bb.ae
  store i64 %i.io, ptr %i.dl, align 8, !tbaa !16, !alias.scope !17092
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.io
  store i8 0, ptr %i.iu, align 1, !tbaa !17
  %i.iv = load ptr, ptr %i.ah, align 8, !tbaa !67 ; 6 uses
  %i.iw = load ptr, ptr %i.dm, align 8, !tbaa !66
  %.not.i.i24 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not.i.i24, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 3 uses
  store ptr %i.ix, ptr %i.iv, align 8, !tbaa !523
  %i.iy = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.dk
  br i1 %i.iz, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ja = load i64, ptr %i.dl, align 8, !tbaa !16 ; 3 uses
  %i.jb = icmp ult i64 %i.ja, 16
  call void @llvm.assume(i1 %i.jb)
  %i.jc = add nuw nsw i64 %i.ja, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ix, ptr noundef nonnull align 8 dereferenceable(1) %i.dk, i64 %i.jc, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  store ptr %i.iy, ptr %i.iv, align 8, !tbaa !7
  %i.jd = load i64, ptr %i.dk, align 8, !tbaa !17
  store i64 %i.jd, ptr %i.ix, align 8, !tbaa !17
  %.pre127 = load i64, ptr %i.dl, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.je = phi i64 [ %.pre127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ja, %bb.ag ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !16
  store ptr %i.dk, ptr %15, align 8, !tbaa !7
  store i64 0, ptr %i.dl, align 8, !tbaa !16
  %i.jg = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  store ptr %i.jh, ptr %i.ah, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ah:                                            ; preds = %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ap

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ah
  %.pre128 = load ptr, ptr %15, align 8, !tbaa !7 ; 2 uses
  %i.ji = icmp eq ptr %.pre128, %i.dk
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.jj = load i64, ptr %i.dk, align 8, !tbaa !17
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %.pre128, i64 noundef %i.jk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.jl = load ptr, ptr %i.ah, align 8, !tbaa !529 ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !7  ; 3 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 -24
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !16 ; 2 uses
  %i.jq = trunc i64 %i.jp to i32                  ; 5 uses
  store i32 %i.jq, ptr %16, align 8, !tbaa !7659
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %bb.ai, label %bb.al, !prof !524

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !17095
  store i32 %i.jq, ptr %7, align 16, !tbaa !17, !noalias !17095
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.js, align 16, !tbaa !17, !noalias !17095
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.67, i64 11, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !17095
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.67) #42
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.ak
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !17
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %common.resume

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jz = icmp samesign ult i32 %i.jq, 13
  br i1 %i.jz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dn, align 4
  %i.ka = icmp eq i32 %i.jq, 0
  br i1 %i.ka, label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.do, align 8, !tbaa !17
  %i.kb = and i64 %i.jp, 15
  %i.kc = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.kb) #34, !srcloc !7186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 1 %i.jn, i64 %i.kc, i1 false)
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ao:                                            ; preds = %bb.al
  %i.kd = load i32, ptr %i.jn, align 1
  store i32 %i.kd, ptr %i.dn, align 4
  store ptr %i.jn, ptr %i.do, align 8, !tbaa !17
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !17098
  %.sroa.0.0.copyload.i.i.i.i.i.i26 = load i64, ptr %16, align 8, !noalias !17101 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i28 = load ptr, ptr %i.do, align 8, !tbaa !17, !noalias !17101 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !17101
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox9functions24MapExceptVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EE:bb.a
  %.0.i.i.i.in.i = phi i64 [ %i.dk, %bb.o ], [ %i.do, %bb.q ], [ %i.dz, %bb.r ]
  %.0.i.i.i.not.i = icmp eq i64 %.0.i.i.i.in.i, 0
  br i1 %.0.i.i.i.not.i, label %bb.m, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, !llvm.loop !14852

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  br label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, !llvm.loop !14852

_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit: ; preds = %.lr.ph175, %bb.m, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %.lcssa = phi i32 [ %i.co, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit ], [ %i.cz, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge ], [ %i.cz, %.lr.ph175 ], [ %i.cx, %bb.m ] ; 2 uses
  %i.ea = icmp eq i32 %i.ay, %.lcssa
  br i1 %i.ea, label %._crit_edge, label %bb.i

bb.s:                                             ; preds = %._crit_edge, %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !11596, !noalias !17167 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !11597, !noalias !17167 ; 2 uses
  %i.ef = load ptr, ptr %2, align 8, !tbaa !11593, !noalias !17167
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !11595, !noalias !17167 ; 4 uses
  %i.ei = add nsw i32 %i.ee, %i.ec
  %i.ej = icmp eq i32 %i.ee, 0
  br i1 %i.ej, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = getelementptr i8, ptr %i.eh, <2 x i64> <i64 8, i64 56>
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ex = sext i32 %i.ec to i64
  br label %bb.t

._crit_edge138:                                   ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, %bb.s
  ret void

bb.t:                                             ; preds = %.lr.ph137, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %i.ey = phi i64 [ %i.ex, %.lr.ph137 ], [ %indvars.iv.next, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !17170)
  call void @llvm.experimental.noalias.scope.decl(metadata !17173)
  %i.ez = load ptr, ptr %i.ef, align 8, !tbaa !11633, !noalias !17176, !nonnull !552, !align !674 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2367, !noalias !17176
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 58
  %i.fd = load i8, ptr %i.fc, align 2, !tbaa !2366, !range !551, !noalias !17176, !noundef !552
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.fe, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 59
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !2372, !range !551, !noalias !17176, !noundef !552
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !2373, !noalias !17176
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.w:                                             ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2377, !noalias !17176
  %i.fn = shl nsw i64 %i.ey, 2
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !17176
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.t, %bb.v, %bb.w
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.w ], [ %i.fk, %bb.v ], [ %i.ff, %bb.t ]
  %i.fq = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fb, i64 %i.fq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i21 = load i64, ptr %i.fr, align 8, !noalias !17176
  %.sroa.0.0.copyload.i.i.i.i.i.i21.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i21 ; 11 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i22, align 8, !tbaa !17, !noalias !17176 ; 8 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, ptr %11, align 8, !alias.scope !17176
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i23, ptr %i.ek, align 8, !alias.scope !17176
  store ptr %i.eh, ptr %i.el, align 8, !alias.scope !17176
  store i64 %i.ey, ptr %i.em, align 8, !alias.scope !17176
  %i.fs = load i64, ptr %i.eo, align 8, !tbaa !1394
  %i.ft = lshr i64 %i.fs, 8
  %i.fu = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i23 to i64 ; 2 uses
  %i.fv = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr to i32 ; 8 uses
  switch i64 %i.ft, label %bb.ab [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.fw = load i64, ptr %i.ep, align 8, !tbaa !14830
  %i.fx = and i64 %i.fw, -16
  %i.fy = inttoptr i64 %i.fx to ptr               ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 16, !tbaa !612
  %.not.i.i.i26 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, %i.fz
  br i1 %.not.i.i.i26, label %bb.y, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103

bb.y:                                             ; preds = %bb.x
  %i.ga = icmp ult i32 %i.fv, 13
  br i1 %i.ga, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gb = icmp samesign ult i32 %i.fv, 5
  br i1 %i.gb, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit

bb.aa:                                            ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i23, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, 4294967295
  %i.gh = add nsw i64 %i.gg, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gc, ptr nonnull %i.gf, i64 %i.gh)
  %i.gi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gi, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit: ; preds = %bb.z
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !612
  %i.gl = icmp eq i64 %i.gk, %i.fu
  br i1 %i.gl, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i23, ptr %i.eq, align 8
  %i.gm = icmp ult i32 %i.fv, 13                  ; 2 uses
  %i.gn = select i1 %i.gm, ptr %i.er, ptr %.sroa.2.0.copyload.i.i.i.i.i.i23
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, 4294967295 ; 2 uses
  %i.gp = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gn, i64 noundef %i.go) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gp) ; 2 uses
  %i.gr = lshr i64 %i.gq, 24
  %i.gs = or i64 %i.gr, 128                       ; 2 uses
  %i.gt = add i64 %i.gq, %i.gp                    ; 3 uses
  %i.gu = shl nuw nsw i64 %i.gs, 1
  %i.gv = or disjoint i64 %i.gu, 1                ; 3 uses
  %i.gw = trunc nuw i64 %i.gs to i8
  %i.gx = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.gz = load i64, ptr %i.eo, align 8, !tbaa !1394
  %i.ha = and i64 %i.gz, 255                      ; 4 uses
  %i.hb = shl nuw i64 1, %i.ha                    ; 3 uses
  %i.hc = load ptr, ptr %i.en, align 8, !tbaa !14785 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i23, i64 4
  %i.he = add nsw i64 %i.go, -4
  br i1 %i.gm, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ab
  %i.hf = icmp samesign ult i32 %i.fv, 5
  br i1 %i.hf, label %.split.us.split.us, label %.split.us.split, !llvm.loop !14832

.split.us.split.us:                               ; preds = %.split.us, %bb.ac
  %.0.i.i126.us.us = phi i64 [ %i.hr, %bb.ac ], [ %i.gt, %.split.us ] ; 2 uses
  %.023.i.i125.us.us = phi i64 [ %i.hq, %bb.ac ], [ %i.hb, %.split.us ]
  %i.hg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i126.us.us, i64 range(i64 0, 256) %i.ha)
  %i.hh = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hj, i32 0, i32 3, i32 1)
  %i.hk = load <16 x i8>, ptr %i.hh, align 16     ; 2 uses
  %i.hl = icmp eq <16 x i8> %i.hk, %i.gy
  %i.hm = bitcast <16 x i1> %i.hl to i16
  %i.hn = and i16 %i.hm, 16383                    ; 2 uses
  %.not120.us.us = icmp eq i16 %i.hn, 0
  %i.ho = extractelement <16 x i8> %i.hk, i64 15
  br i1 %.not120.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.lr.ph123.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.split.us.split.us
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, label %bb.ac, !prof !741

bb.ac:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.hq = add i64 %.023.i.i125.us.us, -1          ; 2 uses
  %i.hr = add i64 %i.gv, %.0.i.i126.us.us
  %.not.i.i.us.us = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, label %.split.us.split.us, !llvm.loop !14831

.lr.ph123.us.us:                                  ; preds = %.split.us.split.us
  %i.hs = zext nneg i16 %i.hn to i32
  %i.ht = icmp ne ptr %i.hh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ht)
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.backedge.us.us.us.us, %.lr.ph123.us.us
  %.sroa.069.0121.us.us.us.us = phi i32 [ %i.hs, %.lr.ph123.us.us ], [ %i.hz, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0121.us.us.us.us, i1 true)
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !612
  %.not.i.i.i29.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, %i.hx
  br i1 %.not.i.i.i29.us.us.us.us, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %.critedge.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us.us:               ; preds = %bb.ad
  %i.hy = add nsw i32 %.sroa.069.0121.us.us.us.us, -1
  %i.hz = and i32 %i.hy, %.sroa.069.0121.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.hz, 0
  br i1 %.not.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %bb.ad, !llvm.loop !14832

.split.us.split:                                  ; preds = %.split.us, %bb.ae
  %.0.i.i126.us = phi i64 [ %i.il, %bb.ae ], [ %i.gt, %.split.us ] ; 2 uses
  %.023.i.i125.us = phi i64 [ %i.ik, %bb.ae ], [ %i.hb, %.split.us ]
  %i.ia = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i126.us, i64 range(i64 0, 256) %i.ha)
  %i.ib = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %i.ia ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.id, i32 0, i32 3, i32 1)
  %i.ie = load <16 x i8>, ptr %i.ib, align 16     ; 2 uses
  %i.if = icmp eq <16 x i8> %i.ie, %i.gy
  %i.ig = bitcast <16 x i1> %i.if to i16
  %i.ih = and i16 %i.ig, 16383                    ; 2 uses
  %.not120.us = icmp eq i16 %i.ih, 0
  %i.ii = extractelement <16 x i8> %i.ie, i64 15
  br i1 %.not120.us, label %.critedge.i.i._crit_edge.split.us.split.us131, label %.lr.ph123.us

.critedge.i.i._crit_edge.split.us.split.us131:    ; preds = %.critedge.i.i.backedge.us.us129, %.split.us.split
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, label %bb.ae, !prof !741

bb.ae:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us131
  %i.ik = add i64 %.023.i.i125.us, -1             ; 2 uses
  %i.il = add i64 %i.gv, %.0.i.i126.us
  %.not.i.i.us = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, label %.split.us.split, !llvm.loop !14831

.lr.ph123.us:                                     ; preds = %.split.us.split
  %i.im = zext nneg i16 %i.ih to i32
  %i.in = icmp ne ptr %i.ib, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.in)
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph123.us, %.critedge.i.i.backedge.us.us129
  %.sroa.069.0121.us.us127 = phi i32 [ %i.im, %.lr.ph123.us ], [ %i.iq, %.critedge.i.i.backedge.us.us129 ] ; 3 uses
  %i.io = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0121.us.us127, i1 true)
  %i.ip = add nsw i32 %.sroa.069.0121.us.us127, -1
  %i.iq = and i32 %i.ip, %.sroa.069.0121.us.us127 ; 2 uses
  %i.ir = zext nneg i32 %i.io to i64
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.ir ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !612
  %.not.i.i.i29.us.us128 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, %i.it
  br i1 %.not.i.i.i29.us.us128, label %bb.ag, label %.critedge.i.i.backedge.us.us129, !prof !729

bb.ag:                                            ; preds = %bb.af
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !612
  %i.iw = icmp eq i64 %i.iv, %i.fu
  br i1 %i.iw, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %.critedge.i.i.backedge.us.us129, !prof !11651

.critedge.i.i.backedge.us.us129:                  ; preds = %bb.ag, %bb.af
  %.not.us.us130 = icmp eq i32 %i.iq, 0
  br i1 %.not.us.us130, label %.critedge.i.i._crit_edge.split.us.split.us131, label %bb.af, !llvm.loop !14832

.split:                                           ; preds = %bb.ab, %bb.aj
  %.0.i.i126 = phi i64 [ %i.ju, %bb.aj ], [ %i.gt, %bb.ab ] ; 2 uses
  %.023.i.i125 = phi i64 [ %i.jt, %bb.aj ], [ %i.hb, %bb.ab ]
  %i.ix = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i126, i64 range(i64 0, 256) %i.ha)
  %i.iy = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ja, i32 0, i32 3, i32 1)
  %i.jb = load <16 x i8>, ptr %i.iy, align 16     ; 2 uses
  %i.jc = icmp eq <16 x i8> %i.jb, %i.gy
  %i.jd = bitcast <16 x i1> %i.jc to i16
  %i.je = and i16 %i.jd, 16383                    ; 2 uses
  %.not120 = icmp eq i16 %i.je, 0
  %i.jf = extractelement <16 x i8> %i.jb, i64 15
  br i1 %.not120, label %.critedge.i.i._crit_edge.split, label %.lr.ph123

.lr.ph123:                                        ; preds = %.split
  %i.jg = zext nneg i16 %i.je to i32
  %i.jh = icmp ne ptr %i.iy, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jh)
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph123, %.critedge.i.i.backedge
  %.sroa.069.0121 = phi i32 [ %i.jg, %.lr.ph123 ], [ %i.jk, %.critedge.i.i.backedge ] ; 3 uses
  %i.ji = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0121, i1 true)
  %i.jj = add nsw i32 %.sroa.069.0121, -1
  %i.jk = and i32 %i.jj, %.sroa.069.0121          ; 2 uses
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !612
  %.not.i.i.i29 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, %i.jn
  br i1 %.not.i.i.i29, label %bb.ai, label %.critedge.i.i.backedge, !prof !729

bb.ai:                                            ; preds = %bb.ah
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %bcmp.i.i.i31 = call i32 @bcmp(ptr nonnull %i.hd, ptr nonnull %i.jq, i64 %i.he)
  %i.jr = icmp eq i32 %bcmp.i.i.i31, 0
  br i1 %i.jr, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %.critedge.i.i.backedge, !prof !11651

.critedge.i.i.backedge:                           ; preds = %bb.ai, %bb.ah
  %.not = icmp eq i32 %i.jk, 0
  br i1 %.not, label %.critedge.i.i._crit_edge.split, label %bb.ah, !llvm.loop !14832

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split
  %i.js = icmp eq i8 %i.jf, 0
  br i1 %i.js, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, label %bb.aj, !prof !741

bb.aj:                                            ; preds = %.critedge.i.i._crit_edge.split
  %i.jt = add i64 %.023.i.i125, -1                ; 2 uses
  %i.ju = add i64 %i.gv, %.0.i.i126
  %.not.i.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, label %.split, !llvm.loop !14831

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103: ; preds = %.critedge.i.i._crit_edge.split, %bb.aj, %.critedge.i.i._crit_edge.split.us.split.us131, %bb.ae, %.critedge.i.i._crit_edge.split.us.split.us.us.us, %bb.ac, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit, %bb.aa, %bb.x, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.jv = load ptr, ptr %i.eh, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i33 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i33, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 58
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 57
  %i.kc = load i8, ptr %i.kb, align 1, !range !551
  %i.kd = trunc nuw i8 %i.kc to i1
  %or.cond.i.i.i = select i1 %i.ka, i1 true, i1 %i.kd
  br i1 %or.cond.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ke = lshr i64 %i.ey, 6
  %i.kf = and i64 %i.ke, 67108863
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !612
  %i.ki = and i64 %i.ey, 63
  %i.kj = shl nuw i64 1, %i.ki
  %i.kk = and i64 %i.kh, %i.kj
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.am:                                            ; preds = %bb.ak
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 59
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ko = load i64, ptr %i.jx, align 8, !tbaa !612
  %i.kp = and i64 %i.ko, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !2377
  %sext.i34 = shl i64 %i.ey, 32
  %i.ks = ashr exact i64 %sext.i34, 30
  %i.kt = getelementptr inbounds i8, ptr %i.kr, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = zext i32 %i.ku to i64                   ; 2 uses
  %i.kw = lshr i64 %i.kv, 6
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kw
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !612
  %i.kz = and i64 %i.kv, 63
  %i.la = shl nuw i64 1, %i.kz
  %i.lb = and i64 %i.la, %i.ky
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.al, %bb.an, %bb.ao
  %.0.i.i.i35.in = phi i64 [ %i.kk, %bb.al ], [ %i.kp, %bb.an ], [ %i.lb, %bb.ao ]
  %.0.i.i.i35.not = icmp eq i64 %.0.i.i.i35.in, 0
  br i1 %.0.i.i.i35.not, label %bb.ap, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.ap:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.lc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !7166 ; 2 uses
  %i.lf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, 4294967295 ; 2 uses
  %i.lg = add i64 %i.le, %i.lf                    ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !7165
  %i.lj = icmp ugt i64 %i.lg, %i.li
  br i1 %i.lj, label %bb.aq, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.lk = load ptr, ptr %i.lc, align 8, !tbaa !541
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(96) %i.lc, i64 noundef %i.lg), !inline_history !14964
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.aq, %bb.ap
  store i64 %i.lg, ptr %i.ld, align 8, !tbaa !7166
  %.not.i.i37 = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i37, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !7167
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.le
  %i.lq = icmp ult i32 %i.fv, 13
  %i.lr = select i1 %i.lq, ptr %i.es, ptr %.sroa.2.0.copyload.i.i.i.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr align 1 %i.lr, i64 %i.lf, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread103, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3328") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.ls = load ptr, ptr %i.et, align 8, !tbaa !11653, !nonnull !552, !align !674 ; 5 uses
  %i.lt = load ptr, ptr %12, align 8, !tbaa !8637, !nonnull !552, !align !674
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !7166 ; 2 uses
  %i.lw = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i21.fr, 4294967295 ; 2 uses
  %i.lx = add i64 %i.lv, %i.lw                    ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !7165
  %i.ma = icmp ugt i64 %i.lx, %i.lz
  br i1 %i.ma, label %bb.as, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i38

bb.as:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.mb = load ptr, ptr %i.ls, align 8, !tbaa !541
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(96) %i.ls, i64 noundef %i.lx), !inline_history !14964
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i38

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i38: ; preds = %bb.as, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  store i64 %i.lx, ptr %i.lu, align 8, !tbaa !7166
  %.not.i.i39 = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i39, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit41, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i38
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !7167
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.lv
  %i.mh = icmp ult i32 %i.fv, 13
  %i.mi = select i1 %i.mh, ptr %i.es, ptr %.sroa.2.0.copyload.i.i.i.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr align 1 %i.mi, i64 %i.lw, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit41

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit41: ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i38, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !17177)
  call void @llvm.experimental.noalias.scope.decl(metadata !17180)
  %i.mj = load ptr, ptr %i.eh, align 8, !tbaa !8394, !noalias !17183, !nonnull !552, !align !674
  store ptr %i.mj, ptr %13, align 8, !tbaa !1033, !alias.scope !17183
  store <2 x ptr> %i.eu, ptr %i.ev, align 8, !tbaa !533, !alias.scope !17183
  store i32 %i.ff, ptr %i.ew, align 8, !tbaa !8647, !alias.scope !17183
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.lt, ptr noundef nonnull align 8 dereferenceable(28) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit: ; preds = %bb.ai, %bb.ag, %bb.ad, %bb.z, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit, %bb.aa, %bb.ar, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %indvars.iv.next = add nsw i64 %i.ey, 1         ; 2 uses
  %i.mk = trunc nsw i64 %indvars.iv.next to i32
  %i.ml = icmp eq i32 %i.ei, %i.mk
  br i1 %i.ml, label %._crit_edge138, label %bb.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24MapExceptVarcharFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISE_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.5257) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.5259, align 8           ; 6 uses
  %6 = alloca %class.anon.5258, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24MapExceptVarcharFunctionINS4_10VectorExecEEESC_NS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISF_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISF_EEEEEJSK_SM_EEEE7iterateIJNS3_12VectorReaderISK_EENSR_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKS1_SZ_EUlSZ_E_EEvS13_SZ_T0_EUlSZ_E_EEvSZ_:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !19039
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !19044
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %3, align 8, !noalias !19044
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.al, align 8, !noalias !19044
  %i.eu = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.ev = icmp ult i32 %i.eu, 13
  %i.ew = select i1 %i.ev, ptr %i.am, ptr %.sroa.2.0.copyload.i.i.i
  %i.ex = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.ey = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.ew, i64 noundef %i.ex)
          to label %.noexc35 unwind label %bb.ac  ; 2 uses

.noexc35:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !19044
  %i.ez = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ey) ; 2 uses
  %i.fa = lshr i64 %i.ez, 24
  %i.fb = or i64 %i.fa, 128
  %i.fc = add i64 %i.ez, %i.ey
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %i.fc, i64 %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !19039
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc35, %bb.aa
  %i.fd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body

bb.ad:                                            ; preds = %bb.ab, %bb.w
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fe = trunc nsw i64 %indvars.iv.next to i32
  %i.ff = icmp eq i32 %i.cx, %i.fe
  br i1 %i.ff, label %.lr.ph.preheader, label %bb.q

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.fg = add nsw i32 %i.bv, %i.br
  %i.fh = sext i32 %i.br to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge.i
  %indvars.iv253 = phi i64 [ %i.fh, %.lr.ph.preheader ], [ %indvars.iv.next254, %.critedge.i ] ; 3 uses
  %i.fi = load ptr, ptr %i.bm, align 8, !tbaa !11633, !noalias !19051, !nonnull !552, !align !674 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !2367, !noalias !19051
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 58
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !2366, !range !551, !noalias !19051, !noundef !552
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = trunc nsw i64 %indvars.iv253 to i32
  br i1 %i.fn, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 59
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !2372, !range !551, !noalias !19051, !noundef !552
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !2373, !noalias !19051
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !2377, !noalias !19051
  %i.fw = shl nsw i64 %indvars.iv253, 2
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3, !noalias !19051
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.ag ], [ %i.ft, %bb.af ], [ %i.fo, %.lr.ph ]
  %i.fz = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.fz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !noalias !19051
  %.sroa.0.0.copyload.i.i.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !19051 ; 6 uses
  %i.gb = load i64, ptr %i.aj, align 8, !tbaa !1394
  %i.gc = lshr i64 %i.gb, 8
  switch i64 %i.gc, label %bb.am [
    i64 0, label %.critedge.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gd = load i64, ptr %i.an, align 8, !tbaa !14830
  %i.ge = and i64 %i.gd, -16
  %i.gf = inttoptr i64 %i.ge to ptr               ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 16, !tbaa !612
  %.not.i.i.i40 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.gg
  %i.gh = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  br i1 %.not.i.i.i40, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.gi = icmp ult i32 %i.gh, 13
  br i1 %i.gi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gj = icmp samesign ult i32 %i.gh, 5
  br i1 %i.gj, label %.critedge42.i, label %.noexc16

bb.al:                                            ; preds = %bb.aj
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295
  %i.gp = add nsw i64 %i.go, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gk, ptr nonnull %i.gn, i64 %i.gp)
  %i.gq = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gq, label %.critedge42.i, label %.critedge.i

.noexc16:                                         ; preds = %bb.ak
  %i.gr = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !612
  %i.gu = icmp eq i64 %i.gt, %i.gr
  br i1 %i.gu, label %.critedge42.i, label %.critedge.i

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, ptr %2, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.ao, align 8
  %i.gv = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  %i.gw = icmp ult i32 %i.gv, 13                  ; 2 uses
  %i.gx = select i1 %i.gw, ptr %i.ap, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.gy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295 ; 2 uses
  %i.gz = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gx, i64 noundef %i.gy)
          to label %.noexc18 unwind label %bb.ap  ; 2 uses

.noexc18:                                         ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ha = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gz) ; 2 uses
  %i.hb = lshr i64 %i.ha, 24
  %i.hc = or i64 %i.hb, 128                       ; 2 uses
  %i.hd = add i64 %i.ha, %i.gz                    ; 3 uses
  %i.he = shl nuw nsw i64 %i.hc, 1
  %i.hf = or disjoint i64 %i.he, 1                ; 3 uses
  %i.hg = trunc nuw i64 %i.hc to i8
  %i.hh = insertelement <16 x i8> poison, i8 %i.hg, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.hj = load i64, ptr %i.aj, align 8, !tbaa !1394
  %i.hk = and i64 %i.hj, 255                      ; 4 uses
  %i.hl = shl nuw i64 1, %i.hk                    ; 3 uses
  %i.hm = load ptr, ptr %5, align 8, !tbaa !14785 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.ho = add nsw i64 %i.gy, -4
  %i.hp = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  br i1 %i.gw, label %.noexc18.split.us, label %.noexc20

.noexc18.split.us:                                ; preds = %.noexc18
  %i.hq = icmp samesign ult i32 %i.gv, 5
  br i1 %i.hq, label %.noexc20.us.us, label %.noexc20.us, !llvm.loop !14832

.noexc20.us.us:                                   ; preds = %.noexc18.split.us, %.noexc23.us.us
  %.0.i.i.i216.us.us = phi i64 [ %i.ic, %.noexc23.us.us ], [ %i.hd, %.noexc18.split.us ] ; 2 uses
  %.023.i.i.i215.us.us = phi i64 [ %i.ib, %.noexc23.us.us ], [ %i.hl, %.noexc18.split.us ]
  %i.hr = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i216.us.us, i64 range(i64 0, 256) %i.hk)
  %i.hs = getelementptr inbounds nuw [256 x i8], ptr %i.hm, i64 %i.hr ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hu, i32 0, i32 3, i32 1)
  %i.hv = load <16 x i8>, ptr %i.hs, align 16     ; 2 uses
  %i.hw = icmp eq <16 x i8> %i.hv, %i.hi
  %i.hx = bitcast <16 x i1> %i.hw to i16
  %i.hy = and i16 %i.hx, 16383                    ; 2 uses
  %.not202.us.us = icmp eq i16 %i.hy, 0
  %i.hz = extractelement <16 x i8> %i.hv, i64 15
  br i1 %.not202.us.us, label %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc21.lr.ph.us.us

.critedge.i.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.i.backedge.us.us.us.us, %.noexc20.us.us
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %.critedge.i, label %.noexc23.us.us, !prof !741

.noexc23.us.us:                                   ; preds = %.critedge.i.i.i._crit_edge.split.us.split.us.us.us
  %i.ib = add i64 %.023.i.i.i215.us.us, -1        ; 2 uses
  %i.ic = add i64 %i.hf, %.0.i.i.i216.us.us
  %.not.i.i.i.us.us = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i.us.us, label %.critedge.i, label %.noexc20.us.us, !llvm.loop !14831

.noexc21.lr.ph.us.us:                             ; preds = %.noexc20.us.us
  %i.id = zext nneg i16 %i.hy to i32
  %i.ie = icmp ne ptr %i.hs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ie)
  br label %.noexc21.us.us.us.us

.noexc21.us.us.us.us:                             ; preds = %.critedge.i.i.i.backedge.us.us.us.us, %.noexc21.lr.ph.us.us
  %.sroa.0125.0203.us.us.us.us = phi i32 [ %i.id, %.noexc21.lr.ph.us.us ], [ %i.ik, %.critedge.i.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.if = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0125.0203.us.us.us.us, i1 true)
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !612
  %.not.i.i.i43.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.ii
  br i1 %.not.i.i.i43.us.us.us.us, label %.critedge42.i, label %.critedge.i.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.i.backedge.us.us.us.us:             ; preds = %.noexc21.us.us.us.us
  %i.ij = add nsw i32 %.sroa.0125.0203.us.us.us.us, -1
  %i.ik = and i32 %i.ij, %.sroa.0125.0203.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.ik, 0
  br i1 %.not.us.us.us.us, label %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc21.us.us.us.us, !llvm.loop !14832

.noexc20.us:                                      ; preds = %.noexc18.split.us, %.noexc23.us
  %.0.i.i.i216.us = phi i64 [ %i.iw, %.noexc23.us ], [ %i.hd, %.noexc18.split.us ] ; 2 uses
  %.023.i.i.i215.us = phi i64 [ %i.iv, %.noexc23.us ], [ %i.hl, %.noexc18.split.us ]
  %i.il = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i216.us, i64 range(i64 0, 256) %i.hk)
  %i.im = getelementptr inbounds nuw [256 x i8], ptr %i.hm, i64 %i.il ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.io, i32 0, i32 3, i32 1)
  %i.ip = load <16 x i8>, ptr %i.im, align 16     ; 2 uses
  %i.iq = icmp eq <16 x i8> %i.ip, %i.hi
  %i.ir = bitcast <16 x i1> %i.iq to i16
  %i.is = and i16 %i.ir, 16383                    ; 2 uses
  %.not202.us = icmp eq i16 %i.is, 0
  %i.it = extractelement <16 x i8> %i.ip, i64 15
  br i1 %.not202.us, label %.critedge.i.i.i._crit_edge.split.us.split.us222, label %.noexc21.lr.ph.us

.critedge.i.i.i._crit_edge.split.us.split.us222:  ; preds = %.critedge.i.i.i.backedge.us.us220, %.noexc20.us
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %.critedge.i, label %.noexc23.us, !prof !741

.noexc23.us:                                      ; preds = %.critedge.i.i.i._crit_edge.split.us.split.us222
  %i.iv = add i64 %.023.i.i.i215.us, -1           ; 2 uses
  %i.iw = add i64 %i.hf, %.0.i.i.i216.us
  %.not.i.i.i.us = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i.us, label %.critedge.i, label %.noexc20.us, !llvm.loop !14831

.noexc21.lr.ph.us:                                ; preds = %.noexc20.us
  %i.ix = zext nneg i16 %i.is to i32
  %i.iy = icmp ne ptr %i.im, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.iy)
  br label %.noexc21.us.us217

.noexc21.us.us217:                                ; preds = %.noexc21.lr.ph.us, %.critedge.i.i.i.backedge.us.us220
  %.sroa.0125.0203.us.us218 = phi i32 [ %i.ix, %.noexc21.lr.ph.us ], [ %i.jb, %.critedge.i.i.i.backedge.us.us220 ] ; 3 uses
  %i.iz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0125.0203.us.us218, i1 true)
  %i.ja = add nsw i32 %.sroa.0125.0203.us.us218, -1
  %i.jb = and i32 %i.ja, %.sroa.0125.0203.us.us218 ; 2 uses
  %i.jc = zext nneg i32 %i.iz to i64
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !612
  %.not.i.i.i43.us.us219 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.je
  br i1 %.not.i.i.i43.us.us219, label %bb.an, label %.critedge.i.i.i.backedge.us.us220, !prof !729

bb.an:                                            ; preds = %.noexc21.us.us217
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !612
  %i.jh = icmp eq i64 %i.jg, %i.hp
  br i1 %i.jh, label %.critedge42.i, label %.critedge.i.i.i.backedge.us.us220, !prof !11651

.critedge.i.i.i.backedge.us.us220:                ; preds = %bb.an, %.noexc21.us.us217
  %.not.us.us221 = icmp eq i32 %i.jb, 0
  br i1 %.not.us.us221, label %.critedge.i.i.i._crit_edge.split.us.split.us222, label %.noexc21.us.us217, !llvm.loop !14832

.noexc20:                                         ; preds = %.noexc18, %.noexc23
  %.0.i.i.i216 = phi i64 [ %i.kf, %.noexc23 ], [ %i.hd, %.noexc18 ] ; 2 uses
  %.023.i.i.i215 = phi i64 [ %i.ke, %.noexc23 ], [ %i.hl, %.noexc18 ]
  %i.ji = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i216, i64 range(i64 0, 256) %i.hk)
  %i.jj = getelementptr inbounds nuw [256 x i8], ptr %i.hm, i64 %i.ji ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.jl, i32 0, i32 3, i32 1)
  %i.jm = load <16 x i8>, ptr %i.jj, align 16     ; 2 uses
  %i.jn = icmp eq <16 x i8> %i.jm, %i.hi
  %i.jo = bitcast <16 x i1> %i.jn to i16
  %i.jp = and i16 %i.jo, 16383                    ; 2 uses
  %.not202 = icmp eq i16 %i.jp, 0
  %i.jq = extractelement <16 x i8> %i.jm, i64 15
  br i1 %.not202, label %.critedge.i.i.i._crit_edge.split, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %.noexc20
  %i.jr = zext nneg i16 %i.jp to i32
  %i.js = icmp ne ptr %i.jj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.js)
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.critedge.i.i.i.backedge
  %.sroa.0125.0203 = phi i32 [ %i.jr, %.noexc21.lr.ph ], [ %i.jv, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.jt = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0125.0203, i1 true)
  %i.ju = add nsw i32 %.sroa.0125.0203, -1
  %i.jv = and i32 %i.ju, %.sroa.0125.0203         ; 2 uses
  %i.jw = zext nneg i32 %i.jt to i64
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jk, i64 %i.jw ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !612
  %.not.i.i.i43 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.jy
  br i1 %.not.i.i.i43, label %bb.ao, label %.critedge.i.i.i.backedge, !prof !729

bb.ao:                                            ; preds = %.noexc21
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !17
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %bcmp.i.i.i45 = call i32 @bcmp(ptr nonnull %i.hn, ptr nonnull %i.kb, i64 %i.ho)
  %i.kc = icmp eq i32 %bcmp.i.i.i45, 0
  br i1 %i.kc, label %.critedge42.i, label %.critedge.i.i.i.backedge, !prof !11651

.critedge.i.i.i.backedge:                         ; preds = %bb.ao, %.noexc21
  %.not = icmp eq i32 %i.jv, 0
  br i1 %.not, label %.critedge.i.i.i._crit_edge.split, label %.noexc21, !llvm.loop !14832

.critedge.i.i.i._crit_edge.split:                 ; preds = %.critedge.i.i.i.backedge, %.noexc20
  %i.kd = icmp eq i8 %i.jq, 0
  br i1 %i.kd, label %.critedge.i, label %.noexc23, !prof !741

.noexc23:                                         ; preds = %.critedge.i.i.i._crit_edge.split
  %i.ke = add i64 %.023.i.i.i215, -1              ; 2 uses
  %i.kf = add i64 %i.hf, %.0.i.i.i216
  %.not.i.i.i = icmp eq i64 %i.ke, 0
  br i1 %.not.i.i.i, label %.critedge.i, label %.noexc20, !llvm.loop !14831

bb.ap:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.critedge.i:                                      ; preds = %.critedge.i.i.i._crit_edge.split, %.noexc23, %.critedge.i.i.i._crit_edge.split.us.split.us222, %.noexc23.us, %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, %.noexc23.us.us, %.noexc16, %bb.al, %bb.ai, %bb.ah
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.kh = trunc nsw i64 %indvars.iv.next254 to i32
  %.not189 = icmp eq i32 %i.fg, %i.kh
  br i1 %.not189, label %.critedge42.i, label %.lr.ph

.critedge42.i:                                    ; preds = %.critedge.i, %bb.al, %.noexc16, %bb.ak, %bb.ao, %bb.an, %.noexc21.us.us.us.us
  %.not189196 = phi i1 [ false, %.noexc21.us.us.us.us ], [ false, %bb.ao ], [ false, %bb.an ], [ true, %.critedge.i ], [ false, %bb.al ], [ false, %.noexc16 ], [ false, %bb.ak ]
  %i.ki = load ptr, ptr %5, align 8, !tbaa !14785 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 15
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !1391
  %i.kl = icmp eq i8 %i.kk, -1
  br i1 %i.kl, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.critedge42.i
  %i.km = load i64, ptr %i.aj, align 8, !tbaa !1394 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 14
  %i.ko = icmp ult i64 %i.km, 256
  br i1 %i.ko, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kp = and i64 %i.km, 255                      ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !612
  store i64 %i.kp, ptr %i.aj, align 8, !tbaa !1394
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kq = phi i64 [ %i.km, %bb.aq ], [ %i.kp, %bb.ar ] ; 2 uses
  %i.kr = load i8, ptr %i.kn, align 1, !tbaa !17
  %i.ks = icmp eq i64 %i.kq, 0
  %i.kt = shl i8 %i.kr, 4
  %i.ku = zext i8 %i.kt to i64
  %i.kv = add nuw nsw i64 %i.ku, 16
  %i.kw = shl i64 256, %i.kq
  %.0.i.i.i.i.i = select i1 %i.ks, i64 %i.kv, i64 %i.kw
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %5, align 8, !tbaa !14785
  store i64 0, ptr %i.aj, align 8, !tbaa !1394
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %.0.i.i.i.i.i) #34
  br label %bb.at

.body:                                            ; preds = %bb.ap, %bb.ac
  %.pn34.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fd, %bb.ac ], [ %i.kg, %bb.ap ] ; 3 uses
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.kx = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i, 0 ; 2 uses
  %i.ky = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i, 1 ; 2 uses
  %i.kz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.la = icmp eq i32 %i.ky, %i.kz
  br i1 %i.la, label %bb.ax, label %bb.ay

.thread179:                                       ; preds = %.noexc7
  store ptr null, ptr %7, align 8, !tbaa !8548, !alias.scope !19056
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !2046
  %i.lg = lshr i64 %indvars.iv256, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !17
  br label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  store ptr null, ptr %7, align 8, !tbaa !8548, !alias.scope !19062
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !2046
  %i.lo = lshr i64 %indvars.iv256, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo ; 3 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !17  ; 2 uses
  br i1 %.not189196, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lr = trunc i64 %indvars.iv256 to i8
  %i.ls = and i8 %i.lr, 7
  %i.lt = shl nuw i8 1, %i.ls
  %i.lu = or i8 %i.lq, %i.lt
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit

bb.av:                                            ; preds = %.thread179, %bb.at
  %i.lv = phi i8 [ %i.li, %.thread179 ], [ %i.lq, %bb.at ]
  %i.lw = phi ptr [ %i.lh, %.thread179 ], [ %i.lp, %bb.at ]
  %i.lx = and i64 %indvars.iv256, 7
  %i.ly = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !17
  %i.ma = and i8 %i.lz, %i.lv
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit: ; preds = %bb.av, %bb.au
  %i.mb = phi ptr [ %i.lw, %bb.av ], [ %i.lp, %bb.au ]
  %.sink.i = phi i8 [ %i.ma, %bb.av ], [ %i.lu, %bb.au ]
  store i8 %.sink.i, ptr %i.mb, align 1, !tbaa !17
  %i.mc = load ptr, ptr %7, align 8, !tbaa !8548
  %.not.i53 = icmp eq ptr %i.mc, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !19031
  br i1 %.not.i53, label %_ZN8facebook5velox6StatusD2Ev.exit54, label %bb.aw, !prof !741

bb.aw:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISD_EEEEEJSI_SK_EEEE7iterateIJNS1_12VectorReaderISI_EENSP_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_ENKUlSX_E_clIiEEDaSX_.exit

bb.ax:                                            ; preds = %.body
  %i.md = call ptr @__cxa_begin_catch(ptr %i.kx) #34
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !8592 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 144
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !7  ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 152
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !16
  %i.mk = icmp eq i64 %i.mj, 4
  br i1 %i.mk, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ax
  %i.ml = load i8, ptr %i.mh, align 1, !tbaa !17
  %or.cond.not.i.i.i = icmp eq i8 %i.ml, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !17
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.mn, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !17
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.mp, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !17
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.mr, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.as, i32 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bf unwind label %bb.bh

.loopexit:                                        ; preds = %bb.ax, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #42
          to label %bb.bl unwind label %bb.be

bb.ay:                                            ; preds = %.body
  %i.ms = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.mt = icmp eq i32 %i.ky, %i.ms
  br i1 %i.mt, label %bb.az, label %.loopexit192

bb.az:                                            ; preds = %bb.ay
  %i.mu = call ptr @__cxa_begin_catch(ptr %i.kx) #34 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.as, i32 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.mv = load ptr, ptr %8, align 8, !tbaa !910
  %.not.i55 = icmp eq ptr %i.mv, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISF_EEEEEJSK_SM_EEEE7iterateIJNS3_12VectorReaderISK_EENSR_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !19072
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !19077
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8, !noalias !19077
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.q, align 8, !noalias !19077
  %i.eb = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.ec = icmp ult i32 %i.eb, 13
  %i.ed = select i1 %i.ec, ptr %i.r, ptr %.sroa.2.0.copyload.i.i.i
  %i.ee = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.ef = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.ed, i64 noundef %i.ee)
          to label %.noexc40 unwind label %bb.v   ; 2 uses

.noexc40:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !19077
  %i.eg = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ef) ; 2 uses
  %i.eh = lshr i64 %i.eg, 24
  %i.ei = or i64 %i.eh, 128
  %i.ej = add i64 %i.eg, %i.ef
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %i.ej, i64 %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !19072
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.w

bb.v:                                             ; preds = %.noexc40, %bb.t
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.body

bb.w:                                             ; preds = %bb.u, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.el = trunc nsw i64 %indvars.iv.next to i32
  %i.em = icmp eq i32 %i.ce, %i.el
  br i1 %i.em, label %.lr.ph.preheader, label %bb.j

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.en = add nsw i32 %i.bc, %i.ay
  %i.eo = sext i32 %i.ay to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge.i
  %indvars.iv255 = phi i64 [ %i.eo, %.lr.ph.preheader ], [ %indvars.iv.next256, %.critedge.i ] ; 3 uses
  %i.ep = load ptr, ptr %i.at, align 8, !tbaa !11633, !noalias !19084, !nonnull !552, !align !674 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !2367, !noalias !19084
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 58
  %i.et = load i8, ptr %i.es, align 2, !tbaa !2366, !range !551, !noalias !19084, !noundef !552
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = trunc nsw i64 %indvars.iv255 to i32
  br i1 %i.eu, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 59
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !2372, !range !551, !noalias !19084, !noundef !552
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !2373, !noalias !19084
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !2377, !noalias !19084
  %i.fd = shl nsw i64 %indvars.iv255, 2
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !19084
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ff, %bb.z ], [ %i.fa, %bb.y ], [ %i.ev, %.lr.ph ]
  %i.fg = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.er, i64 %i.fg ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fh, align 8, !noalias !19084
  %.sroa.0.0.copyload.i.i.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !19084 ; 6 uses
  %i.fi = load i64, ptr %i.o, align 8, !tbaa !1394
  %i.fj = lshr i64 %i.fi, 8
  switch i64 %i.fj, label %bb.af [
    i64 0, label %.critedge.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fk = load i64, ptr %i.s, align 8, !tbaa !14830
  %i.fl = and i64 %i.fk, -16
  %i.fm = inttoptr i64 %i.fl to ptr               ; 3 uses
  %i.fn = load i64, ptr %i.fm, align 16, !tbaa !612
  %.not.i.i.i45 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.fn
  %i.fo = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  br i1 %.not.i.i.i45, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %i.fp = icmp ult i32 %i.fo, 13
  br i1 %i.fp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fq = icmp samesign ult i32 %i.fo, 5
  br i1 %i.fq, label %.critedge42.i, label %.noexc23

bb.ae:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295
  %i.fw = add nsw i64 %i.fv, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.fr, ptr nonnull %i.fu, i64 %i.fw)
  %i.fx = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.fx, label %.critedge42.i, label %.critedge.i

.noexc23:                                         ; preds = %bb.ad
  %i.fy = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !612
  %i.gb = icmp eq i64 %i.ga, %i.fy
  br i1 %i.gb, label %.critedge42.i, label %.critedge.i

bb.af:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.t, align 8
  %i.gc = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  %i.gd = icmp ult i32 %i.gc, 13                  ; 2 uses
  %i.ge = select i1 %i.gd, ptr %i.u, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.gf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295 ; 2 uses
  %i.gg = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.ge, i64 noundef %i.gf)
          to label %.noexc25 unwind label %bb.ai  ; 2 uses

.noexc25:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gh = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gg) ; 2 uses
  %i.gi = lshr i64 %i.gh, 24
  %i.gj = or i64 %i.gi, 128                       ; 2 uses
  %i.gk = add i64 %i.gh, %i.gg                    ; 3 uses
  %i.gl = shl nuw nsw i64 %i.gj, 1
  %i.gm = or disjoint i64 %i.gl, 1                ; 3 uses
  %i.gn = trunc nuw i64 %i.gj to i8
  %i.go = insertelement <16 x i8> poison, i8 %i.gn, i64 0
  %i.gp = shufflevector <16 x i8> %i.go, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.gq = load i64, ptr %i.o, align 8, !tbaa !1394
  %i.gr = and i64 %i.gq, 255                      ; 4 uses
  %i.gs = shl nuw i64 1, %i.gr                    ; 3 uses
  %i.gt = load ptr, ptr %6, align 8, !tbaa !14785 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.gv = add nsw i64 %i.gf, -4
  %i.gw = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  br i1 %i.gd, label %.noexc25.split.us, label %.noexc27

.noexc25.split.us:                                ; preds = %.noexc25
  %i.gx = icmp samesign ult i32 %i.gc, 5
  br i1 %i.gx, label %.noexc27.us.us, label %.noexc27.us, !llvm.loop !14832

.noexc27.us.us:                                   ; preds = %.noexc25.split.us, %.noexc30.us.us
  %.0.i.i.i222.us.us = phi i64 [ %i.hj, %.noexc30.us.us ], [ %i.gk, %.noexc25.split.us ] ; 2 uses
  %.023.i.i.i221.us.us = phi i64 [ %i.hi, %.noexc30.us.us ], [ %i.gs, %.noexc25.split.us ]
  %i.gy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i222.us.us, i64 range(i64 0, 256) %i.gr)
  %i.gz = getelementptr inbounds nuw [256 x i8], ptr %i.gt, i64 %i.gy ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hb, i32 0, i32 3, i32 1)
  %i.hc = load <16 x i8>, ptr %i.gz, align 16     ; 2 uses
  %i.hd = icmp eq <16 x i8> %i.hc, %i.gp
  %i.he = bitcast <16 x i1> %i.hd to i16
  %i.hf = and i16 %i.he, 16383                    ; 2 uses
  %.not194208.us.us = icmp eq i16 %i.hf, 0
  %i.hg = extractelement <16 x i8> %i.hc, i64 15
  br i1 %.not194208.us.us, label %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc28.lr.ph.us.us

.critedge.i.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.i.backedge.us.us.us.us, %.noexc27.us.us
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %.critedge.i, label %.noexc30.us.us, !prof !741

.noexc30.us.us:                                   ; preds = %.critedge.i.i.i._crit_edge.split.us.split.us.us.us
  %i.hi = add i64 %.023.i.i.i221.us.us, -1        ; 2 uses
  %i.hj = add i64 %i.gm, %.0.i.i.i222.us.us
  %.not.i.i.i.us.us = icmp eq i64 %i.hi, 0
  br i1 %.not.i.i.i.us.us, label %.critedge.i, label %.noexc27.us.us, !llvm.loop !14831

.noexc28.lr.ph.us.us:                             ; preds = %.noexc27.us.us
  %i.hk = zext nneg i16 %i.hf to i32
  %i.hl = icmp ne ptr %i.gz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hl)
  br label %.noexc28.us.us.us.us

.noexc28.us.us.us.us:                             ; preds = %.critedge.i.i.i.backedge.us.us.us.us, %.noexc28.lr.ph.us.us
  %.sroa.0130.0209.us.us.us.us = phi i32 [ %i.hk, %.noexc28.lr.ph.us.us ], [ %i.hr, %.critedge.i.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0130.0209.us.us.us.us, i1 true)
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !612
  %.not.i.i.i48.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.hp
  br i1 %.not.i.i.i48.us.us.us.us, label %.critedge42.i, label %.critedge.i.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.i.backedge.us.us.us.us:             ; preds = %.noexc28.us.us.us.us
  %i.hq = add nsw i32 %.sroa.0130.0209.us.us.us.us, -1
  %i.hr = and i32 %i.hq, %.sroa.0130.0209.us.us.us.us ; 2 uses
  %.not194.us.us.us.us = icmp eq i32 %i.hr, 0
  br i1 %.not194.us.us.us.us, label %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc28.us.us.us.us, !llvm.loop !14832

.noexc27.us:                                      ; preds = %.noexc25.split.us, %.noexc30.us
  %.0.i.i.i222.us = phi i64 [ %i.id, %.noexc30.us ], [ %i.gk, %.noexc25.split.us ] ; 2 uses
  %.023.i.i.i221.us = phi i64 [ %i.ic, %.noexc30.us ], [ %i.gs, %.noexc25.split.us ]
  %i.hs = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i222.us, i64 range(i64 0, 256) %i.gr)
  %i.ht = getelementptr inbounds nuw [256 x i8], ptr %i.gt, i64 %i.hs ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hv, i32 0, i32 3, i32 1)
  %i.hw = load <16 x i8>, ptr %i.ht, align 16     ; 2 uses
  %i.hx = icmp eq <16 x i8> %i.hw, %i.gp
  %i.hy = bitcast <16 x i1> %i.hx to i16
  %i.hz = and i16 %i.hy, 16383                    ; 2 uses
  %.not194208.us = icmp eq i16 %i.hz, 0
  %i.ia = extractelement <16 x i8> %i.hw, i64 15
  br i1 %.not194208.us, label %.critedge.i.i.i._crit_edge.split.us.split.us228, label %.noexc28.lr.ph.us

.critedge.i.i.i._crit_edge.split.us.split.us228:  ; preds = %.critedge.i.i.i.backedge.us.us226, %.noexc27.us
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %.critedge.i, label %.noexc30.us, !prof !741

.noexc30.us:                                      ; preds = %.critedge.i.i.i._crit_edge.split.us.split.us228
  %i.ic = add i64 %.023.i.i.i221.us, -1           ; 2 uses
  %i.id = add i64 %i.gm, %.0.i.i.i222.us
  %.not.i.i.i.us = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i.i.us, label %.critedge.i, label %.noexc27.us, !llvm.loop !14831

.noexc28.lr.ph.us:                                ; preds = %.noexc27.us
  %i.ie = zext nneg i16 %i.hz to i32
  %i.if = icmp ne ptr %i.ht, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.if)
  br label %.noexc28.us.us223

.noexc28.us.us223:                                ; preds = %.noexc28.lr.ph.us, %.critedge.i.i.i.backedge.us.us226
  %.sroa.0130.0209.us.us224 = phi i32 [ %i.ie, %.noexc28.lr.ph.us ], [ %i.ii, %.critedge.i.i.i.backedge.us.us226 ] ; 3 uses
  %i.ig = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0130.0209.us.us224, i1 true)
  %i.ih = add nsw i32 %.sroa.0130.0209.us.us224, -1
  %i.ii = and i32 %i.ih, %.sroa.0130.0209.us.us224 ; 2 uses
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.ij ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !612
  %.not.i.i.i48.us.us225 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.il
  br i1 %.not.i.i.i48.us.us225, label %bb.ag, label %.critedge.i.i.i.backedge.us.us226, !prof !729

bb.ag:                                            ; preds = %.noexc28.us.us223
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !612
  %i.io = icmp eq i64 %i.in, %i.gw
  br i1 %i.io, label %.critedge42.i, label %.critedge.i.i.i.backedge.us.us226, !prof !11651

.critedge.i.i.i.backedge.us.us226:                ; preds = %bb.ag, %.noexc28.us.us223
  %.not194.us.us227 = icmp eq i32 %i.ii, 0
  br i1 %.not194.us.us227, label %.critedge.i.i.i._crit_edge.split.us.split.us228, label %.noexc28.us.us223, !llvm.loop !14832

.noexc27:                                         ; preds = %.noexc25, %.noexc30
  %.0.i.i.i222 = phi i64 [ %i.jm, %.noexc30 ], [ %i.gk, %.noexc25 ] ; 2 uses
  %.023.i.i.i221 = phi i64 [ %i.jl, %.noexc30 ], [ %i.gs, %.noexc25 ]
  %i.ip = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i222, i64 range(i64 0, 256) %i.gr)
  %i.iq = getelementptr inbounds nuw [256 x i8], ptr %i.gt, i64 %i.ip ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.is, i32 0, i32 3, i32 1)
  %i.it = load <16 x i8>, ptr %i.iq, align 16     ; 2 uses
  %i.iu = icmp eq <16 x i8> %i.it, %i.gp
  %i.iv = bitcast <16 x i1> %i.iu to i16
  %i.iw = and i16 %i.iv, 16383                    ; 2 uses
  %.not194208 = icmp eq i16 %i.iw, 0
  %i.ix = extractelement <16 x i8> %i.it, i64 15
  br i1 %.not194208, label %.critedge.i.i.i._crit_edge.split, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %.noexc27
  %i.iy = zext nneg i16 %i.iw to i32
  %i.iz = icmp ne ptr %i.iq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.iz)
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %.critedge.i.i.i.backedge
  %.sroa.0130.0209 = phi i32 [ %i.iy, %.noexc28.lr.ph ], [ %i.jc, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.ja = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0130.0209, i1 true)
  %i.jb = add nsw i32 %.sroa.0130.0209, -1
  %i.jc = and i32 %i.jb, %.sroa.0130.0209         ; 2 uses
  %i.jd = zext nneg i32 %i.ja to i64
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.jd ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !612
  %.not.i.i.i48 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.jf
  br i1 %.not.i.i.i48, label %bb.ah, label %.critedge.i.i.i.backedge, !prof !729

bb.ah:                                            ; preds = %.noexc28
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !17
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %bcmp.i.i.i50 = call i32 @bcmp(ptr nonnull %i.gu, ptr nonnull %i.ji, i64 %i.gv)
  %i.jj = icmp eq i32 %bcmp.i.i.i50, 0
  br i1 %i.jj, label %.critedge42.i, label %.critedge.i.i.i.backedge, !prof !11651

.critedge.i.i.i.backedge:                         ; preds = %bb.ah, %.noexc28
  %.not194 = icmp eq i32 %i.jc, 0
  br i1 %.not194, label %.critedge.i.i.i._crit_edge.split, label %.noexc28, !llvm.loop !14832

.critedge.i.i.i._crit_edge.split:                 ; preds = %.critedge.i.i.i.backedge, %.noexc27
  %i.jk = icmp eq i8 %i.ix, 0
  br i1 %i.jk, label %.critedge.i, label %.noexc30, !prof !741

.noexc30:                                         ; preds = %.critedge.i.i.i._crit_edge.split
  %i.jl = add i64 %.023.i.i.i221, -1              ; 2 uses
  %i.jm = add i64 %i.gm, %.0.i.i.i222
  %.not.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i, label %.critedge.i, label %.noexc27, !llvm.loop !14831

bb.ai:                                            ; preds = %bb.af
  %i.jn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.critedge.i:                                      ; preds = %.critedge.i.i.i._crit_edge.split, %.noexc30, %.critedge.i.i.i._crit_edge.split.us.split.us228, %.noexc30.us, %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, %.noexc30.us.us, %.noexc23, %bb.ae, %bb.ab, %bb.aa
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.jo = trunc nsw i64 %indvars.iv.next256 to i32
  %.not195 = icmp eq i32 %i.en, %i.jo
  br i1 %.not195, label %.critedge42.i, label %.lr.ph

.critedge42.i:                                    ; preds = %.critedge.i, %bb.ae, %.noexc23, %bb.ad, %bb.ah, %bb.ag, %.noexc28.us.us.us.us
  %.not195202 = phi i1 [ false, %.noexc28.us.us.us.us ], [ false, %bb.ah ], [ false, %bb.ag ], [ true, %.critedge.i ], [ false, %bb.ae ], [ false, %.noexc23 ], [ false, %bb.ad ]
  %i.jp = load ptr, ptr %6, align 8, !tbaa !14785 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 15
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !1391
  %i.js = icmp eq i8 %i.jr, -1
  br i1 %i.js, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.critedge42.i
  %i.jt = load i64, ptr %i.o, align 8, !tbaa !1394 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 14
  %i.jv = icmp ult i64 %i.jt, 256
  br i1 %i.jv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jw = and i64 %i.jt, 255                      ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !612
  store i64 %i.jw, ptr %i.o, align 8, !tbaa !1394
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jx = phi i64 [ %i.jt, %bb.aj ], [ %i.jw, %bb.ak ] ; 2 uses
  %i.jy = load i8, ptr %i.ju, align 1, !tbaa !17
  %i.jz = icmp eq i64 %i.jx, 0
  %i.ka = shl i8 %i.jy, 4
  %i.kb = zext i8 %i.ka to i64
  %i.kc = add nuw nsw i64 %i.kb, 16
  %i.kd = shl i64 256, %i.jx
  %.0.i.i.i.i.i = select i1 %i.jz, i64 %i.kc, i64 %i.kd
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %6, align 8, !tbaa !14785
  store i64 0, ptr %i.o, align 8, !tbaa !1394
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %.0.i.i.i.i.i) #34
  br label %bb.am

.body:                                            ; preds = %bb.ai, %bb.v
  %.pn34.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ek, %bb.v ], [ %i.jn, %bb.ai ] ; 3 uses
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ke = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i, 0 ; 2 uses
  %i.kf = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i, 1 ; 2 uses
  %i.kg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.kh = icmp eq i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.aq, label %bb.ar

.thread184:                                       ; preds = %.noexc14
  store ptr null, ptr %8, align 8, !tbaa !8548, !alias.scope !19089
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !2046
  %i.kn = lshr i64 %i.aa, 3
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kn ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !17
  br label %bb.ao

bb.am:                                            ; preds = %bb.al, %.critedge42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  store ptr null, ptr %8, align 8, !tbaa !8548, !alias.scope !19092
  %i.kq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !2046
  %i.kv = lshr i64 %i.aa, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kv ; 3 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !17  ; 2 uses
  br i1 %.not195202, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = trunc nuw nsw i64 %i.v to i8
  %i.kz = and i8 %i.ky, 7
  %i.la = shl nuw i8 1, %i.kz
  %i.lb = or i8 %i.kx, %i.la
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit

bb.ao:                                            ; preds = %.thread184, %bb.am
  %i.lc = phi i8 [ %i.kp, %.thread184 ], [ %i.kx, %bb.am ]
  %i.ld = phi ptr [ %i.ko, %.thread184 ], [ %i.kw, %bb.am ]
  %i.le = and i64 %i.aa, 7
  %i.lf = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !17
  %i.lh = and i8 %i.lg, %i.lc
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit: ; preds = %bb.ao, %bb.an
  %i.li = phi ptr [ %i.ld, %bb.ao ], [ %i.kw, %bb.an ]
  %.sink.i = phi i8 [ %i.lh, %bb.ao ], [ %i.lb, %bb.an ]
  store i8 %.sink.i, ptr %i.li, align 1, !tbaa !17
  %i.lj = load ptr, ptr %8, align 8, !tbaa !8548
  %.not.i58 = icmp eq ptr %i.lj, null
  br i1 %.not.i58, label %_ZN8facebook5velox6StatusD2Ev.exit59, label %bb.ap, !prof !741

bb.ap:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit59

_ZN8facebook5velox6StatusD2Ev.exit59:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISD_EEEEEJSI_SK_EEEE7iterateIJNS1_12VectorReaderISI_EENSP_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_ENKUlSX_E_clIiEEDaSX_.exit

bb.aq:                                            ; preds = %.body
  %i.lk = call ptr @__cxa_begin_catch(ptr %i.ke) #34
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !8592 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 144
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !7  ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 152
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !16
  %i.lr = icmp eq i64 %i.lq, 4
  br i1 %i.lr, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.aq
  %i.ls = load i8, ptr %i.lo, align 1, !tbaa !17
  %or.cond.not.i.i.i = icmp eq i8 %i.ls, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !17
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.lu, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !17
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.lw, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !17
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ly, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.y, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ay unwind label %bb.ba

.loopexit:                                        ; preds = %bb.aq, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #42
          to label %bb.be unwind label %bb.ax

bb.ar:                                            ; preds = %.body
  %i.lz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.ma = icmp eq i32 %i.kf, %i.lz
  br i1 %i.ma, label %bb.as, label %.loopexit198

bb.as:                                            ; preds = %bb.ar
  %i.mb = call ptr @__cxa_begin_catch(ptr %i.ke) #34 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.y, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.mc = load ptr, ptr %9, align 8, !tbaa !910
  %.not.i60 = icmp eq ptr %i.mc, null
  br i1 %.not.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #34
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISF_EEEEEJSK_SM_EEEE7iterateIJNS3_12VectorReaderISK_EENSR_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %9, align 8, !noalias !19101
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ab, align 8, !noalias !19101
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !19104
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !19109
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8, !noalias !19109
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ac, align 8, !noalias !19109
  %i.ek = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.el = icmp ult i32 %i.ek, 13
  %i.em = select i1 %i.el, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i
  %i.en = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.eo = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.em, i64 noundef %i.en)
          to label %.noexc63 unwind label %bb.w   ; 2 uses

.noexc63:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !19109
  %i.ep = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.eo) ; 2 uses
  %i.eq = lshr i64 %i.ep, 24
  %i.er = or i64 %i.eq, 128
  %i.es = add i64 %i.ep, %i.eo
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %i.es, i64 %i.er, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !19104
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !19101
  br label %bb.x

bb.w:                                             ; preds = %.noexc63, %bb.u
  %i.et = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !19101
  br label %.body50

bb.x:                                             ; preds = %bb.v, %bb.q
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.eu = trunc nsw i64 %indvars.iv.next to i32
  %i.ev = icmp eq i32 %i.cn, %i.eu
  br i1 %i.ev, label %.lr.ph550.preheader, label %bb.k

.lr.ph550.preheader:                              ; preds = %bb.x
  %i.ew = add nsw i32 %i.bl, %i.bh
  %i.ex = sext i32 %i.bh to i64
  br label %.lr.ph550

.lr.ph550:                                        ; preds = %.lr.ph550.preheader, %.critedge.i.i
  %indvars.iv587 = phi i64 [ %i.ex, %.lr.ph550.preheader ], [ %indvars.iv.next588, %.critedge.i.i ] ; 3 uses
  %i.ey = load ptr, ptr %i.bc, align 8, !tbaa !11633, !noalias !19116, !nonnull !552, !align !674 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2367, !noalias !19116
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 58
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !2366, !range !551, !noalias !19116, !noundef !552
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = trunc nsw i64 %indvars.iv587 to i32
  br i1 %i.fd, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph550
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 59
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !2372, !range !551, !noalias !19116, !noundef !552
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !2373, !noalias !19116
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2377, !noalias !19116
  %i.fm = shl nsw i64 %indvars.iv587, 2
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !19116
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph550
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.aa ], [ %i.fj, %bb.z ], [ %i.fe, %.lr.ph550 ]
  %i.fp = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %i.fp ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !noalias !19116
  %.sroa.0.0.copyload.i.i.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !19116 ; 6 uses
  %i.fr = load i64, ptr %i.aa, align 8, !tbaa !1394
  %i.fs = lshr i64 %i.fr, 8
  switch i64 %i.fs, label %bb.ag [
    i64 0, label %.critedge.i.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load i64, ptr %i.ae, align 8, !tbaa !14830
  %i.fu = and i64 %i.ft, -16
  %i.fv = inttoptr i64 %i.fu to ptr               ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 16, !tbaa !612
  %.not.i.i.i68 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.fw
  %i.fx = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  br i1 %.not.i.i.i68, label %bb.ad, label %.critedge.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fy = icmp ult i32 %i.fx, 13
  br i1 %i.fy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fz = icmp samesign ult i32 %i.fx, 5
  br i1 %i.fz, label %.critedge42.i.i, label %.noexc9.i

bb.af:                                            ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295
  %i.gf = add nsw i64 %i.ge, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.ga, ptr nonnull %i.gd, i64 %i.gf)
  %i.gg = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gg, label %.critedge42.i.i, label %.critedge.i.i

.noexc9.i:                                        ; preds = %bb.ae
  %i.gh = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !612
  %i.gk = icmp eq i64 %i.gj, %i.gh
  br i1 %i.gk, label %.critedge42.i.i, label %.critedge.i.i

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.af, align 8
  %i.gl = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr to i32 ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 13                  ; 2 uses
  %i.gn = select i1 %i.gm, ptr %i.ag, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 4294967295 ; 2 uses
  %i.gp = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gn, i64 noundef %i.go)
          to label %.noexc11.i unwind label %bb.aj ; 2 uses

.noexc11.i:                                       ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gp) ; 2 uses
  %i.gr = lshr i64 %i.gq, 24
  %i.gs = or i64 %i.gr, 128                       ; 2 uses
  %i.gt = add i64 %i.gq, %i.gp                    ; 3 uses
  %i.gu = shl nuw nsw i64 %i.gs, 1
  %i.gv = or disjoint i64 %i.gu, 1                ; 3 uses
  %i.gw = trunc nuw i64 %i.gs to i8
  %i.gx = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.gz = load i64, ptr %i.aa, align 8, !tbaa !1394
  %i.ha = and i64 %i.gz, 255                      ; 4 uses
  %i.hb = shl nuw i64 1, %i.ha                    ; 3 uses
  %i.hc = load ptr, ptr %8, align 8, !tbaa !14785 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 4
  %i.he = add nsw i64 %i.go, -4
  %i.hf = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  br i1 %i.gm, label %.noexc11.i.split.us, label %.noexc13.i

.noexc11.i.split.us:                              ; preds = %.noexc11.i
  %i.hg = icmp samesign ult i32 %i.gl, 5
  br i1 %i.hg, label %.noexc13.i.us.us, label %.noexc13.i.us, !llvm.loop !14832

.noexc13.i.us.us:                                 ; preds = %.noexc11.i.split.us, %.noexc16.i.us.us
  %.0.i.i.i.i534.us.us = phi i64 [ %i.hs, %.noexc16.i.us.us ], [ %i.gt, %.noexc11.i.split.us ] ; 2 uses
  %.023.i.i.i.i533.us.us = phi i64 [ %i.hr, %.noexc16.i.us.us ], [ %i.hb, %.noexc11.i.split.us ]
  %i.hh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i.i534.us.us, i64 range(i64 0, 256) %i.ha)
  %i.hi = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %i.hh ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hk, i32 0, i32 3, i32 1)
  %i.hl = load <16 x i8>, ptr %i.hi, align 16     ; 2 uses
  %i.hm = icmp eq <16 x i8> %i.hl, %i.gy
  %i.hn = bitcast <16 x i1> %i.hm to i16
  %i.ho = and i16 %i.hn, 16383                    ; 2 uses
  %.not455518.us.us = icmp eq i16 %i.ho, 0
  %i.hp = extractelement <16 x i8> %i.hl, i64 15
  br i1 %.not455518.us.us, label %.critedge.i.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc14.i.lr.ph.us.us

.critedge.i.i.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.i.i.backedge.us.us.us.us, %.noexc13.i.us.us
  %i.hq = icmp eq i8 %i.hp, 0
  br i1 %i.hq, label %.critedge.i.i, label %.noexc16.i.us.us, !prof !741

.noexc16.i.us.us:                                 ; preds = %.critedge.i.i.i.i._crit_edge.split.us.split.us.us.us
  %i.hr = add i64 %.023.i.i.i.i533.us.us, -1      ; 2 uses
  %i.hs = add i64 %i.gv, %.0.i.i.i.i534.us.us
  %.not.i.i.i.i.us.us = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i.us.us, label %.critedge.i.i, label %.noexc13.i.us.us, !llvm.loop !14831

.noexc14.i.lr.ph.us.us:                           ; preds = %.noexc13.i.us.us
  %i.ht = zext nneg i16 %i.ho to i32
  %i.hu = icmp ne ptr %i.hi, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hu)
  br label %.noexc14.i.us.us.us.us

.noexc14.i.us.us.us.us:                           ; preds = %.critedge.i.i.i.i.backedge.us.us.us.us, %.noexc14.i.lr.ph.us.us
  %.sroa.0328.0519.us.us.us.us = phi i32 [ %i.ht, %.noexc14.i.lr.ph.us.us ], [ %i.ia, %.critedge.i.i.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hv = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0328.0519.us.us.us.us, i1 true)
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !612
  %.not.i.i.i73.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.hy
  br i1 %.not.i.i.i73.us.us.us.us, label %.critedge42.i.i, label %.critedge.i.i.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.i.i.backedge.us.us.us.us:           ; preds = %.noexc14.i.us.us.us.us
  %i.hz = add nsw i32 %.sroa.0328.0519.us.us.us.us, -1
  %i.ia = and i32 %i.hz, %.sroa.0328.0519.us.us.us.us ; 2 uses
  %.not455.us.us.us.us = icmp eq i32 %i.ia, 0
  br i1 %.not455.us.us.us.us, label %.critedge.i.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc14.i.us.us.us.us, !llvm.loop !14832

.noexc13.i.us:                                    ; preds = %.noexc11.i.split.us, %.noexc16.i.us
  %.0.i.i.i.i534.us = phi i64 [ %i.im, %.noexc16.i.us ], [ %i.gt, %.noexc11.i.split.us ] ; 2 uses
  %.023.i.i.i.i533.us = phi i64 [ %i.il, %.noexc16.i.us ], [ %i.hb, %.noexc11.i.split.us ]
  %i.ib = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i.i534.us, i64 range(i64 0, 256) %i.ha)
  %i.ic = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %i.ib ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ie, i32 0, i32 3, i32 1)
  %i.if = load <16 x i8>, ptr %i.ic, align 16     ; 2 uses
  %i.ig = icmp eq <16 x i8> %i.if, %i.gy
  %i.ih = bitcast <16 x i1> %i.ig to i16
  %i.ii = and i16 %i.ih, 16383                    ; 2 uses
  %.not455518.us = icmp eq i16 %i.ii, 0
  %i.ij = extractelement <16 x i8> %i.if, i64 15
  br i1 %.not455518.us, label %.critedge.i.i.i.i._crit_edge.split.us.split.us540, label %.noexc14.i.lr.ph.us

.critedge.i.i.i.i._crit_edge.split.us.split.us540: ; preds = %.critedge.i.i.i.i.backedge.us.us538, %.noexc13.i.us
  %i.ik = icmp eq i8 %i.ij, 0
  br i1 %i.ik, label %.critedge.i.i, label %.noexc16.i.us, !prof !741

.noexc16.i.us:                                    ; preds = %.critedge.i.i.i.i._crit_edge.split.us.split.us540
  %i.il = add i64 %.023.i.i.i.i533.us, -1         ; 2 uses
  %i.im = add i64 %i.gv, %.0.i.i.i.i534.us
  %.not.i.i.i.i.us = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.us, label %.critedge.i.i, label %.noexc13.i.us, !llvm.loop !14831

.noexc14.i.lr.ph.us:                              ; preds = %.noexc13.i.us
  %i.in = zext nneg i16 %i.ii to i32
  %i.io = icmp ne ptr %i.ic, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.io)
  br label %.noexc14.i.us.us535

.noexc14.i.us.us535:                              ; preds = %.noexc14.i.lr.ph.us, %.critedge.i.i.i.i.backedge.us.us538
  %.sroa.0328.0519.us.us536 = phi i32 [ %i.in, %.noexc14.i.lr.ph.us ], [ %i.ir, %.critedge.i.i.i.i.backedge.us.us538 ] ; 3 uses
  %i.ip = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0328.0519.us.us536, i1 true)
  %i.iq = add nsw i32 %.sroa.0328.0519.us.us536, -1
  %i.ir = and i32 %i.iq, %.sroa.0328.0519.us.us536 ; 2 uses
  %i.is = zext nneg i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.is ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !612
  %.not.i.i.i73.us.us537 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.iu
  br i1 %.not.i.i.i73.us.us537, label %bb.ah, label %.critedge.i.i.i.i.backedge.us.us538, !prof !729

bb.ah:                                            ; preds = %.noexc14.i.us.us535
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !612
  %i.ix = icmp eq i64 %i.iw, %i.hf
  br i1 %i.ix, label %.critedge42.i.i, label %.critedge.i.i.i.i.backedge.us.us538, !prof !11651

.critedge.i.i.i.i.backedge.us.us538:              ; preds = %bb.ah, %.noexc14.i.us.us535
  %.not455.us.us539 = icmp eq i32 %i.ir, 0
  br i1 %.not455.us.us539, label %.critedge.i.i.i.i._crit_edge.split.us.split.us540, label %.noexc14.i.us.us535, !llvm.loop !14832

.noexc13.i:                                       ; preds = %.noexc11.i, %.noexc16.i
  %.0.i.i.i.i534 = phi i64 [ %i.jv, %.noexc16.i ], [ %i.gt, %.noexc11.i ] ; 2 uses
  %.023.i.i.i.i533 = phi i64 [ %i.ju, %.noexc16.i ], [ %i.hb, %.noexc11.i ]
  %i.iy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i.i534, i64 range(i64 0, 256) %i.ha)
  %i.iz = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.jb, i32 0, i32 3, i32 1)
  %i.jc = load <16 x i8>, ptr %i.iz, align 16     ; 2 uses
  %i.jd = icmp eq <16 x i8> %i.jc, %i.gy
  %i.je = bitcast <16 x i1> %i.jd to i16
  %i.jf = and i16 %i.je, 16383                    ; 2 uses
  %.not455518 = icmp eq i16 %i.jf, 0
  %i.jg = extractelement <16 x i8> %i.jc, i64 15
  br i1 %.not455518, label %.critedge.i.i.i.i._crit_edge.split, label %.noexc14.i.lr.ph

.noexc14.i.lr.ph:                                 ; preds = %.noexc13.i
  %i.jh = zext nneg i16 %i.jf to i32
  %i.ji = icmp ne ptr %i.iz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ji)
  br label %.noexc14.i

.noexc14.i:                                       ; preds = %.noexc14.i.lr.ph, %.critedge.i.i.i.i.backedge
  %.sroa.0328.0519 = phi i32 [ %i.jh, %.noexc14.i.lr.ph ], [ %i.jl, %.critedge.i.i.i.i.backedge ] ; 3 uses
  %i.jj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0328.0519, i1 true)
  %i.jk = add nsw i32 %.sroa.0328.0519, -1
  %i.jl = and i32 %i.jk, %.sroa.0328.0519         ; 2 uses
  %i.jm = zext nneg i32 %i.jj to i64
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.jm ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !612
  %.not.i.i.i73 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, %i.jo
  br i1 %.not.i.i.i73, label %bb.ai, label %.critedge.i.i.i.i.backedge, !prof !729

bb.ai:                                            ; preds = %.noexc14.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %bcmp.i.i.i75 = call i32 @bcmp(ptr nonnull %i.hd, ptr nonnull %i.jr, i64 %i.he)
  %i.js = icmp eq i32 %bcmp.i.i.i75, 0
  br i1 %i.js, label %.critedge42.i.i, label %.critedge.i.i.i.i.backedge, !prof !11651

.critedge.i.i.i.i.backedge:                       ; preds = %bb.ai, %.noexc14.i
  %.not455 = icmp eq i32 %i.jl, 0
  br i1 %.not455, label %.critedge.i.i.i.i._crit_edge.split, label %.noexc14.i, !llvm.loop !14832

.critedge.i.i.i.i._crit_edge.split:               ; preds = %.critedge.i.i.i.i.backedge, %.noexc13.i
  %i.jt = icmp eq i8 %i.jg, 0
  br i1 %i.jt, label %.critedge.i.i, label %.noexc16.i, !prof !741

.noexc16.i:                                       ; preds = %.critedge.i.i.i.i._crit_edge.split
  %i.ju = add i64 %.023.i.i.i.i533, -1            ; 2 uses
  %i.jv = add i64 %i.gv, %.0.i.i.i.i534
  %.not.i.i.i.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i, label %.noexc13.i, !llvm.loop !14831

bb.aj:                                            ; preds = %bb.ag
  %i.jw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body50

.critedge.i.i:                                    ; preds = %.critedge.i.i.i.i._crit_edge.split, %.noexc16.i, %.critedge.i.i.i.i._crit_edge.split.us.split.us540, %.noexc16.i.us, %.critedge.i.i.i.i._crit_edge.split.us.split.us.us.us, %.noexc16.i.us.us, %.noexc9.i, %bb.af, %bb.ac, %bb.ab
  %indvars.iv.next588 = add nsw i64 %indvars.iv587, 1 ; 2 uses
  %i.jx = trunc nsw i64 %indvars.iv.next588 to i32
  %.not456 = icmp eq i32 %i.ew, %i.jx
  br i1 %.not456, label %.critedge42.i.i, label %.lr.ph550

.critedge42.i.i:                                  ; preds = %.critedge.i.i, %bb.af, %.noexc9.i, %bb.ae, %bb.ai, %bb.ah, %.noexc14.i.us.us.us.us
  %.not456467 = phi i1 [ false, %.noexc14.i.us.us.us.us ], [ false, %bb.ai ], [ false, %bb.ah ], [ true, %.critedge.i.i ], [ false, %bb.af ], [ false, %.noexc9.i ], [ false, %bb.ae ]
  %i.jy = load ptr, ptr %8, align 8, !tbaa !14785, !noalias !19101 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 15
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !1391, !noalias !19101
  %i.kb = icmp eq i8 %i.ka, -1
  br i1 %i.kb, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.critedge42.i.i
  %i.kc = load i64, ptr %i.aa, align 8, !tbaa !1394, !noalias !19101 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 14
  %i.ke = icmp ult i64 %i.kc, 256
  br i1 %i.ke, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kf = and i64 %i.kc, 255                      ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !612, !noalias !19101
  store i64 %i.kf, ptr %i.aa, align 8, !tbaa !1394, !noalias !19101
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.kg = phi i64 [ %i.kc, %bb.ak ], [ %i.kf, %bb.al ] ; 2 uses
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !17, !noalias !19101
  %i.ki = icmp eq i64 %i.kg, 0
  %i.kj = shl i8 %i.kh, 4
  %i.kk = zext i8 %i.kj to i64
  %i.kl = add nuw nsw i64 %i.kk, 16
  %i.km = shl i64 256, %i.kg
  %.0.i.i.i.i.i = select i1 %i.ki, i64 %i.kl, i64 %i.km
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %8, align 8, !tbaa !14785, !noalias !19101
  store i64 0, ptr %i.aa, align 8, !tbaa !1394, !noalias !19101
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %.0.i.i.i.i.i) #34, !noalias !19101
  br label %bb.an

.body50:                                          ; preds = %bb.aj, %bb.w
  %.pn34.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.et, %bb.w ], [ %i.jw, %bb.aj ] ; 3 uses
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #34, !noalias !19101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !19101
  %i.kn = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i.i, 0 ; 2 uses
  %i.ko = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i.i, 1 ; 2 uses
  %i.kp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.kq = icmp eq i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.ar, label %bb.as

.thread381:                                       ; preds = %.noexc49
  store ptr null, ptr %10, align 8, !tbaa !8548, !alias.scope !19121
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !2046
  %i.kw = lshr i64 %.0557, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kw ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !17
  br label %bb.ap

bb.an:                                            ; preds = %bb.am, %.critedge42.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !19101
  store ptr null, ptr %10, align 8, !tbaa !8548, !alias.scope !19124
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !2046
  %i.le = lshr i64 %.0557, 3
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le ; 3 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !17  ; 2 uses
  br i1 %.not456467, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lh = trunc i64 %.0557 to i8
  %i.li = and i8 %i.lh, 7
  %i.lj = shl nuw i8 1, %i.li
  %i.lk = or i8 %i.lg, %i.lj
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSV_.exit

bb.ap:                                            ; preds = %.thread381, %bb.an
  %i.ll = phi i8 [ %i.ky, %.thread381 ], [ %i.lg, %bb.an ]
  %i.lm = phi ptr [ %i.kx, %.thread381 ], [ %i.lf, %bb.an ]
  %i.ln = and i64 %.0557, 7
  %i.lo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !17
  %i.lq = and i8 %i.lp, %i.ll
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSV_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSV_.exit: ; preds = %bb.ap, %bb.ao
  %i.lr = phi ptr [ %i.lm, %bb.ap ], [ %i.lf, %bb.ao ]
  %.sink.i = phi i8 [ %i.lq, %bb.ap ], [ %i.lk, %bb.ao ]
  store i8 %.sink.i, ptr %i.lr, align 1, !tbaa !17
  %i.ls = load ptr, ptr %10, align 8, !tbaa !8548
  %.not.i83 = icmp eq ptr %i.ls, null
  br i1 %.not.i83, label %_ZN8facebook5velox6StatusD2Ev.exit84, label %bb.aq, !prof !741

bb.aq:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSV_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit84

_ZN8facebook5velox6StatusD2Ev.exit84:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSV_.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISD_EEEEEJSI_SK_EEEE7iterateIJNS1_12VectorReaderISI_EENSP_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_ENKUlSX_E_clImEEDaSX_.exit

bb.ar:                                            ; preds = %.body50
  %i.lt = call ptr @__cxa_begin_catch(ptr %i.kn) #34
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !8592 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 144
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !7  ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 152
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !16
  %i.ma = icmp eq i64 %i.lz, 4
  br i1 %i.ma, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ar
  %i.mb = load i8, ptr %i.lx, align 1, !tbaa !17
  %or.cond.not.i.i.i = icmp eq i8 %i.mb, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !17
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.md, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !17
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.mf, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lx, i64 3
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !17
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.mh, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.az unwind label %bb.bb

.loopexit:                                        ; preds = %bb.ar, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #42
          to label %bb.bf unwind label %bb.ay

bb.as:                                            ; preds = %.body50
  %i.mi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.mj = icmp eq i32 %i.ko, %i.mi
  br i1 %i.mj, label %bb.at, label %common.resume

bb.at:                                            ; preds = %bb.as
  %i.mk = call ptr @__cxa_begin_catch(ptr %i.kn) #34 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ml = load ptr, ptr %11, align 8, !tbaa !910
  %.not.i85 = icmp eq ptr %i.ml, null
  br i1 %.not.i85, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #34
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISF_EEEEEJSK_SM_EEEE7iterateIJNS3_12VectorReaderISK_EENSR_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i117, ptr %14, align 8
  store ptr %.sroa.2.0.copyload.i.i.i119, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !19130
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !19135
  store i64 %.sroa.0.0.copyload.i.i.i117, ptr %3, align 8, !noalias !19135
  store ptr %.sroa.2.0.copyload.i.i.i119, ptr %i.p, align 8, !noalias !19135
  %i.rc = trunc i64 %.sroa.0.0.copyload.i.i.i117 to i32
  %i.rd = icmp ult i32 %i.rc, 13
  %i.re = select i1 %i.rd, ptr %i.q, ptr %.sroa.2.0.copyload.i.i.i119
  %i.rf = and i64 %.sroa.0.0.copyload.i.i.i117, 4294967295
  %i.rg = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.re, i64 noundef %i.rf)
          to label %.noexc130 unwind label %bb.ca ; 2 uses

.noexc130:                                        ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !19135
  %i.rh = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rg) ; 2 uses
  %i.ri = lshr i64 %i.rh, 24
  %i.rj = or i64 %i.ri, 128
  %i.rk = add i64 %i.rh, %i.rg
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 %i.rk, i64 %i.rj, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !19130
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc130, %bb.by
  %i.rl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %.body

bb.cb:                                            ; preds = %bb.bz, %bb.bu
  %indvars.iv.next591 = add nsw i64 %indvars.iv590, 1 ; 2 uses
  %i.rm = trunc nsw i64 %indvars.iv.next591 to i32
  %i.rn = icmp eq i32 %i.pf, %i.rm
  br i1 %i.rn, label %.lr.ph.preheader, label %bb.bo

.lr.ph.preheader:                                 ; preds = %bb.cb
  %i.ro = add nsw i32 %i.od, %i.nz
  %i.rp = sext i32 %i.nz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge.i
  %indvars.iv593 = phi i64 [ %i.rp, %.lr.ph.preheader ], [ %indvars.iv.next594, %.critedge.i ] ; 3 uses
  %i.rq = load ptr, ptr %i.nu, align 8, !tbaa !11633, !noalias !19142, !nonnull !552, !align !674 ; 5 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !2367, !noalias !19142
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 58
  %i.ru = load i8, ptr %i.rt, align 2, !tbaa !2366, !range !551, !noalias !19142, !noundef !552
  %i.rv = trunc nuw i8 %i.ru to i1
  %i.rw = trunc nsw i64 %indvars.iv593 to i32
  br i1 %i.rv, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 59
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !2372, !range !551, !noalias !19142, !noundef !552
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rq, i64 64
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !2373, !noalias !19142
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !2377, !noalias !19142
  %i.se = shl nsw i64 %indvars.iv593, 2
  %i.sf = getelementptr inbounds i8, ptr %i.sd, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !3, !noalias !19142
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %.lr.ph
  %.0.i.i.i.i.i.i.i134 = phi i32 [ %i.sg, %bb.ce ], [ %i.sb, %bb.cd ], [ %i.rw, %.lr.ph ]
  %i.sh = sext i32 %.0.i.i.i.i.i.i.i134 to i64
  %i.si = getelementptr inbounds [16 x i8], ptr %i.rs, i64 %i.sh ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i135 = load i64, ptr %i.si, align 8, !noalias !19142
  %.sroa.0.0.copyload.i.i.i.i.i.i135.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i135 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i136 = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i137 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i136, align 8, !tbaa !17, !noalias !19142 ; 6 uses
  %i.sj = load i64, ptr %i.n, align 8, !tbaa !1394
  %i.sk = lshr i64 %i.sj, 8
  switch i64 %i.sk, label %bb.ck [
    i64 0, label %.critedge.i
    i64 1, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.sl = load i64, ptr %i.r, align 8, !tbaa !14830
  %i.sm = and i64 %i.sl, -16
  %i.sn = inttoptr i64 %i.sm to ptr               ; 3 uses
  %i.so = load i64, ptr %i.sn, align 16, !tbaa !612
  %.not.i.i.i141 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, %i.so
  %i.sp = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr to i32 ; 2 uses
  br i1 %.not.i.i.i141, label %bb.ch, label %.critedge.i

bb.ch:                                            ; preds = %bb.cg
  %i.sq = icmp ult i32 %i.sp, 13
  br i1 %i.sq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.sr = icmp samesign ult i32 %i.sp, 5
  br i1 %i.sr, label %.critedge42.i, label %.noexc29

bb.cj:                                            ; preds = %bb.ch
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i137, i64 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !17
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sw = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, 4294967295
  %i.sx = add nsw i64 %i.sw, -4
  %bcmp.i.i.i143 = call i32 @bcmp(ptr nonnull %i.ss, ptr nonnull %i.sv, i64 %i.sx)
  %i.sy = icmp eq i32 %bcmp.i.i.i143, 0
  br i1 %i.sy, label %.critedge42.i, label %.critedge.i

.noexc29:                                         ; preds = %bb.ci
  %i.sz = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i137 to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !612
  %i.tc = icmp eq i64 %i.tb, %i.sz
  br i1 %i.tc, label %.critedge42.i, label %.critedge.i

bb.ck:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, ptr %2, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i137, ptr %i.s, align 8
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr to i32 ; 2 uses
  %i.te = icmp ult i32 %i.td, 13                  ; 2 uses
  %i.tf = select i1 %i.te, ptr %i.t, ptr %.sroa.2.0.copyload.i.i.i.i.i.i137
  %i.tg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, 4294967295 ; 2 uses
  %i.th = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.tf, i64 noundef %i.tg)
          to label %.noexc31 unwind label %bb.cn  ; 2 uses

.noexc31:                                         ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ti = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.th) ; 2 uses
  %i.tj = lshr i64 %i.ti, 24
  %i.tk = or i64 %i.tj, 128                       ; 2 uses
  %i.tl = add i64 %i.ti, %i.th                    ; 3 uses
  %i.tm = shl nuw nsw i64 %i.tk, 1
  %i.tn = or disjoint i64 %i.tm, 1                ; 3 uses
  %i.to = trunc nuw i64 %i.tk to i8
  %i.tp = insertelement <16 x i8> poison, i8 %i.to, i64 0
  %i.tq = shufflevector <16 x i8> %i.tp, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.tr = load i64, ptr %i.n, align 8, !tbaa !1394
  %i.ts = and i64 %i.tr, 255                      ; 4 uses
  %i.tt = shl nuw i64 1, %i.ts                    ; 3 uses
  %i.tu = load ptr, ptr %13, align 8, !tbaa !14785 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i137, i64 4
  %i.tw = add nsw i64 %i.tg, -4
  %i.tx = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i137 to i64
  br i1 %i.te, label %.noexc31.split.us, label %.noexc33

.noexc31.split.us:                                ; preds = %.noexc31
  %i.ty = icmp samesign ult i32 %i.td, 5
  br i1 %i.ty, label %.noexc33.us.us, label %.noexc33.us, !llvm.loop !14832

.noexc33.us.us:                                   ; preds = %.noexc31.split.us, %.noexc36.us.us
  %.0.i.i.i494.us.us = phi i64 [ %i.uk, %.noexc36.us.us ], [ %i.tl, %.noexc31.split.us ] ; 2 uses
  %.023.i.i.i493.us.us = phi i64 [ %i.uj, %.noexc36.us.us ], [ %i.tt, %.noexc31.split.us ]
  %i.tz = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i494.us.us, i64 range(i64 0, 256) %i.ts)
  %i.ua = getelementptr inbounds nuw [256 x i8], ptr %i.tu, i64 %i.tz ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.uc, i32 0, i32 3, i32 1)
  %i.ud = load <16 x i8>, ptr %i.ua, align 16     ; 2 uses
  %i.ue = icmp eq <16 x i8> %i.ud, %i.tq
  %i.uf = bitcast <16 x i1> %i.ue to i16
  %i.ug = and i16 %i.uf, 16383                    ; 2 uses
  %.not453480.us.us = icmp eq i16 %i.ug, 0
  %i.uh = extractelement <16 x i8> %i.ud, i64 15
  br i1 %.not453480.us.us, label %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc34.lr.ph.us.us

.critedge.i.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.i.backedge.us.us.us.us, %.noexc33.us.us
  %i.ui = icmp eq i8 %i.uh, 0
  br i1 %i.ui, label %.critedge.i, label %.noexc36.us.us, !prof !741

.noexc36.us.us:                                   ; preds = %.critedge.i.i.i._crit_edge.split.us.split.us.us.us
  %i.uj = add i64 %.023.i.i.i493.us.us, -1        ; 2 uses
  %i.uk = add i64 %i.tn, %.0.i.i.i494.us.us
  %.not.i.i.i.us.us = icmp eq i64 %i.uj, 0
  br i1 %.not.i.i.i.us.us, label %.critedge.i, label %.noexc33.us.us, !llvm.loop !14831

.noexc34.lr.ph.us.us:                             ; preds = %.noexc33.us.us
  %i.ul = zext nneg i16 %i.ug to i32
  %i.um = icmp ne ptr %i.ua, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.um)
  br label %.noexc34.us.us.us.us

.noexc34.us.us.us.us:                             ; preds = %.critedge.i.i.i.backedge.us.us.us.us, %.noexc34.lr.ph.us.us
  %.sroa.0248.0481.us.us.us.us = phi i32 [ %i.ul, %.noexc34.lr.ph.us.us ], [ %i.us, %.critedge.i.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.un = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0248.0481.us.us.us.us, i1 true)
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = getelementptr inbounds nuw [16 x i8], ptr %i.ub, i64 %i.uo
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !612
  %.not.i.i.i152.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, %i.uq
  br i1 %.not.i.i.i152.us.us.us.us, label %.critedge42.i, label %.critedge.i.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.i.backedge.us.us.us.us:             ; preds = %.noexc34.us.us.us.us
  %i.ur = add nsw i32 %.sroa.0248.0481.us.us.us.us, -1
  %i.us = and i32 %i.ur, %.sroa.0248.0481.us.us.us.us ; 2 uses
  %.not453.us.us.us.us = icmp eq i32 %i.us, 0
  br i1 %.not453.us.us.us.us, label %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, label %.noexc34.us.us.us.us, !llvm.loop !14832

.noexc33.us:                                      ; preds = %.noexc31.split.us, %.noexc36.us
  %.0.i.i.i494.us = phi i64 [ %i.ve, %.noexc36.us ], [ %i.tl, %.noexc31.split.us ] ; 2 uses
  %.023.i.i.i493.us = phi i64 [ %i.vd, %.noexc36.us ], [ %i.tt, %.noexc31.split.us ]
  %i.ut = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i494.us, i64 range(i64 0, 256) %i.ts)
  %i.uu = getelementptr inbounds nuw [256 x i8], ptr %i.tu, i64 %i.ut ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.uw, i32 0, i32 3, i32 1)
  %i.ux = load <16 x i8>, ptr %i.uu, align 16     ; 2 uses
  %i.uy = icmp eq <16 x i8> %i.ux, %i.tq
  %i.uz = bitcast <16 x i1> %i.uy to i16
  %i.va = and i16 %i.uz, 16383                    ; 2 uses
  %.not453480.us = icmp eq i16 %i.va, 0
  %i.vb = extractelement <16 x i8> %i.ux, i64 15
  br i1 %.not453480.us, label %.critedge.i.i.i._crit_edge.split.us.split.us500, label %.noexc34.lr.ph.us

.critedge.i.i.i._crit_edge.split.us.split.us500:  ; preds = %.critedge.i.i.i.backedge.us.us498, %.noexc33.us
  %i.vc = icmp eq i8 %i.vb, 0
  br i1 %i.vc, label %.critedge.i, label %.noexc36.us, !prof !741

.noexc36.us:                                      ; preds = %.critedge.i.i.i._crit_edge.split.us.split.us500
  %i.vd = add i64 %.023.i.i.i493.us, -1           ; 2 uses
  %i.ve = add i64 %i.tn, %.0.i.i.i494.us
  %.not.i.i.i.us = icmp eq i64 %i.vd, 0
  br i1 %.not.i.i.i.us, label %.critedge.i, label %.noexc33.us, !llvm.loop !14831

.noexc34.lr.ph.us:                                ; preds = %.noexc33.us
  %i.vf = zext nneg i16 %i.va to i32
  %i.vg = icmp ne ptr %i.uu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vg)
  br label %.noexc34.us.us495

.noexc34.us.us495:                                ; preds = %.noexc34.lr.ph.us, %.critedge.i.i.i.backedge.us.us498
  %.sroa.0248.0481.us.us496 = phi i32 [ %i.vf, %.noexc34.lr.ph.us ], [ %i.vj, %.critedge.i.i.i.backedge.us.us498 ] ; 3 uses
  %i.vh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0248.0481.us.us496, i1 true)
  %i.vi = add nsw i32 %.sroa.0248.0481.us.us496, -1
  %i.vj = and i32 %i.vi, %.sroa.0248.0481.us.us496 ; 2 uses
  %i.vk = zext nneg i32 %i.vh to i64
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %i.vk ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !612
  %.not.i.i.i152.us.us497 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, %i.vm
  br i1 %.not.i.i.i152.us.us497, label %bb.cl, label %.critedge.i.i.i.backedge.us.us498, !prof !729

bb.cl:                                            ; preds = %.noexc34.us.us495
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !612
  %i.vp = icmp eq i64 %i.vo, %i.tx
  br i1 %i.vp, label %.critedge42.i, label %.critedge.i.i.i.backedge.us.us498, !prof !19147

.critedge.i.i.i.backedge.us.us498:                ; preds = %bb.cl, %.noexc34.us.us495
  %.not453.us.us499 = icmp eq i32 %i.vj, 0
  br i1 %.not453.us.us499, label %.critedge.i.i.i._crit_edge.split.us.split.us500, label %.noexc34.us.us495, !llvm.loop !14832

.noexc33:                                         ; preds = %.noexc31, %.noexc36
  %.0.i.i.i494 = phi i64 [ %i.wn, %.noexc36 ], [ %i.tl, %.noexc31 ] ; 2 uses
  %.023.i.i.i493 = phi i64 [ %i.wm, %.noexc36 ], [ %i.tt, %.noexc31 ]
  %i.vq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i.i494, i64 range(i64 0, 256) %i.ts)
  %i.vr = getelementptr inbounds nuw [256 x i8], ptr %i.tu, i64 %i.vq ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.vt, i32 0, i32 3, i32 1)
  %i.vu = load <16 x i8>, ptr %i.vr, align 16     ; 2 uses
  %i.vv = icmp eq <16 x i8> %i.vu, %i.tq
  %i.vw = bitcast <16 x i1> %i.vv to i16
  %i.vx = and i16 %i.vw, 16383                    ; 2 uses
  %.not453480 = icmp eq i16 %i.vx, 0
  %i.vy = extractelement <16 x i8> %i.vu, i64 15
  br i1 %.not453480, label %.critedge.i.i.i._crit_edge.split, label %.noexc34.lr.ph

.noexc34.lr.ph:                                   ; preds = %.noexc33
  %i.vz = zext nneg i16 %i.vx to i32
  %i.wa = icmp ne ptr %i.vr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wa)
  br label %.noexc34

.noexc34:                                         ; preds = %.noexc34.lr.ph, %.critedge.i.i.i.backedge
  %.sroa.0248.0481 = phi i32 [ %i.vz, %.noexc34.lr.ph ], [ %i.wd, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.wb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0248.0481, i1 true)
  %i.wc = add nsw i32 %.sroa.0248.0481, -1
  %i.wd = and i32 %i.wc, %.sroa.0248.0481         ; 2 uses
  %i.we = zext nneg i32 %i.wb to i64
  %i.wf = getelementptr inbounds nuw [16 x i8], ptr %i.vs, i64 %i.we ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !612
  %.not.i.i.i152 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i135.fr, %i.wg
  br i1 %.not.i.i.i152, label %bb.cm, label %.critedge.i.i.i.backedge, !prof !729

bb.cm:                                            ; preds = %.noexc34
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !17
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %bcmp.i.i.i154 = call i32 @bcmp(ptr nonnull %i.tv, ptr nonnull %i.wj, i64 %i.tw)
  %i.wk = icmp eq i32 %bcmp.i.i.i154, 0
  br i1 %i.wk, label %.critedge42.i, label %.critedge.i.i.i.backedge, !prof !19147

.critedge.i.i.i.backedge:                         ; preds = %bb.cm, %.noexc34
  %.not453 = icmp eq i32 %i.wd, 0
  br i1 %.not453, label %.critedge.i.i.i._crit_edge.split, label %.noexc34, !llvm.loop !14832

.critedge.i.i.i._crit_edge.split:                 ; preds = %.critedge.i.i.i.backedge, %.noexc33
  %i.wl = icmp eq i8 %i.vy, 0
  br i1 %i.wl, label %.critedge.i, label %.noexc36, !prof !741

.noexc36:                                         ; preds = %.critedge.i.i.i._crit_edge.split
  %i.wm = add i64 %.023.i.i.i493, -1              ; 2 uses
  %i.wn = add i64 %i.tn, %.0.i.i.i494
  %.not.i.i.i = icmp eq i64 %i.wm, 0
  br i1 %.not.i.i.i, label %.critedge.i, label %.noexc33, !llvm.loop !14831

bb.cn:                                            ; preds = %bb.ck
  %i.wo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.critedge.i:                                      ; preds = %.critedge.i.i.i._crit_edge.split, %.noexc36, %.critedge.i.i.i._crit_edge.split.us.split.us500, %.noexc36.us, %.critedge.i.i.i._crit_edge.split.us.split.us.us.us, %.noexc36.us.us, %.noexc29, %bb.cj, %bb.cg, %bb.cf
  %indvars.iv.next594 = add nsw i64 %indvars.iv593, 1 ; 2 uses
  %i.wp = trunc nsw i64 %indvars.iv.next594 to i32
  %.not454 = icmp eq i32 %i.ro, %i.wp
  br i1 %.not454, label %.critedge42.i, label %.lr.ph

.critedge42.i:                                    ; preds = %.critedge.i, %bb.cj, %.noexc29, %bb.ci, %bb.cm, %bb.cl, %.noexc34.us.us.us.us
  %.not454474 = phi i1 [ false, %.noexc34.us.us.us.us ], [ false, %bb.cm ], [ false, %bb.cl ], [ true, %.critedge.i ], [ false, %bb.cj ], [ false, %.noexc29 ], [ false, %bb.ci ]
  %i.wq = load ptr, ptr %13, align 8, !tbaa !14785 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 15
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !1391
  %i.wt = icmp eq i8 %i.ws, -1
  br i1 %i.wt, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %.critedge42.i
  %i.wu = load i64, ptr %i.n, align 8, !tbaa !1394 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wq, i64 14
  %i.ww = icmp ult i64 %i.wu, 256
  br i1 %i.ww, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wx = and i64 %i.wu, 255                      ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !612
  store i64 %i.wx, ptr %i.n, align 8, !tbaa !1394
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.wy = phi i64 [ %i.wu, %bb.co ], [ %i.wx, %bb.cp ] ; 2 uses
  %i.wz = load i8, ptr %i.wv, align 1, !tbaa !17
  %i.xa = icmp eq i64 %i.wy, 0
  %i.xb = shl i8 %i.wz, 4
  %i.xc = zext i8 %i.xb to i64
  %i.xd = add nuw nsw i64 %i.xc, 16
  %i.xe = shl i64 256, %i.wy
  %.0.i.i.i.i.i156 = select i1 %i.xa, i64 %i.xd, i64 %i.xe
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !14785
  store i64 0, ptr %i.n, align 8, !tbaa !1394
  call void @_ZdlPvm(ptr noundef nonnull %i.wq, i64 noundef %.0.i.i.i.i.i156) #34
  br label %bb.cr

.body:                                            ; preds = %bb.cn, %bb.ca
  %.pn34.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.rl, %bb.ca ], [ %i.wo, %bb.cn ] ; 3 uses
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.xf = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i, 0 ; 2 uses
  %i.xg = extractvalue { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.i, 1 ; 2 uses
  %i.xh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.xi = icmp eq i32 %i.xg, %i.xh
  br i1 %i.xi, label %bb.cv, label %bb.cw

.thread442:                                       ; preds = %.noexc20
  store ptr null, ptr %15, align 8, !tbaa !8548, !alias.scope !19148
  %i.xj = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !2046
  %i.xo = lshr i64 %i.nb, 3
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xo ; 2 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !17
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cq, %.critedge42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  store ptr null, ptr %15, align 8, !tbaa !8548, !alias.scope !19151
  %i.xr = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !19059, !nonnull !552, !align !674
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !19060, !nonnull !552, !align !674
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !2046
  %i.xw = lshr i64 %i.nb, 3
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xw ; 3 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !17  ; 2 uses
  br i1 %.not454474, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.xz = trunc nuw nsw i64 %i.mw to i8
  %i.ya = and i8 %i.xz, 7
  %i.yb = shl nuw i8 1, %i.ya
  %i.yc = or i8 %i.xy, %i.yb
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit

bb.ct:                                            ; preds = %.thread442, %bb.cr
  %i.yd = phi i8 [ %i.xq, %.thread442 ], [ %i.xy, %bb.cr ]
  %i.ye = phi ptr [ %i.xp, %.thread442 ], [ %i.xx, %bb.cr ]
  %i.yf = and i64 %i.nb, 7
  %i.yg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !17
  %i.yi = and i8 %i.yh, %i.yd
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit: ; preds = %bb.ct, %bb.cs
  %i.yj = phi ptr [ %i.ye, %bb.ct ], [ %i.xx, %bb.cs ]
  %.sink.i164 = phi i8 [ %i.yi, %bb.ct ], [ %i.yc, %bb.cs ]
  store i8 %.sink.i164, ptr %i.yj, align 1, !tbaa !17
  %i.yk = load ptr, ptr %15, align 8, !tbaa !8548
  %.not.i170 = icmp eq ptr %i.yk, null
  br i1 %.not.i170, label %_ZN8facebook5velox6StatusD2Ev.exit171, label %bb.cu, !prof !741

bb.cu:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %_ZN8facebook5velox6StatusD2Ev.exit171

_ZN8facebook5velox6StatusD2Ev.exit171:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISB_EEEEEJSG_SI_EEEE7iterateIJNS1_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSV_.exit, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapKeysOverlapVarcharFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_5ArrayISD_EEEEEJSI_SK_EEEE7iterateIJNS1_12VectorReaderISI_EENSP_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_ENKUlSX_E_clIiEEDaSX_.exit

bb.cv:                                            ; preds = %.body
  %i.yl = call ptr @__cxa_begin_catch(ptr %i.xf) #34
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !8592 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 144
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !7  ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 152
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !16
  %i.ys = icmp eq i64 %i.yr, 4
  br i1 %i.ys, label %.lr.ph.i.i.i.preheader.i172.preheader, label %.loopexit460

.lr.ph.i.i.i.preheader.i172.preheader:            ; preds = %bb.cv
  %i.yt = load i8, ptr %i.yp, align 1, !tbaa !17
  %or.cond.not.i.i.i174 = icmp eq i8 %i.yt, 85
  br i1 %or.cond.not.i.i.i174, label %tailrecurse.i.i.i.i175, label %.loopexit460

tailrecurse.i.i.i.i175:                           ; preds = %.lr.ph.i.i.i.preheader.i172.preheader
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yp, i64 1
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !17
  %or.cond.not.i.i.i174.1 = icmp eq i8 %i.yv, 83
  br i1 %or.cond.not.i.i.i174.1, label %tailrecurse.i.i.i.i175.1, label %.loopexit460

tailrecurse.i.i.i.i175.1:                         ; preds = %tailrecurse.i.i.i.i175
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yp, i64 2
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !17
  %or.cond.not.i.i.i174.2 = icmp eq i8 %i.yx, 69
  br i1 %or.cond.not.i.i.i174.2, label %tailrecurse.i.i.i.i175.2, label %.loopexit460

tailrecurse.i.i.i.i175.2:                         ; preds = %tailrecurse.i.i.i.i175.1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yp, i64 3
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !17
  %or.cond.not.i.i.i174.3 = icmp eq i8 %i.yz, 82
  br i1 %or.cond.not.i.i.i174.3, label %tailrecurse.i.i.i.i175.3, label %.loopexit460

tailrecurse.i.i.i.i175.3:                         ; preds = %tailrecurse.i.i.i.i175.2
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.mz, i32 noundef %i.my, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.dd unwind label %bb.df

.loopexit460:                                     ; preds = %bb.cv, %.lr.ph.i.i.i.preheader.i172.preheader, %tailrecurse.i.i.i.i175, %tailrecurse.i.i.i.i175.1, %tailrecurse.i.i.i.i175.2
  invoke void @__cxa_rethrow() #42
          to label %bb.dj unwind label %bb.dc

bb.cw:                                            ; preds = %.body
  %i.za = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.zb = icmp eq i32 %i.xg, %i.za
  br i1 %i.zb, label %bb.cx, label %common.resume

bb.cx:                                            ; preds = %bb.cw
  %i.zc = call ptr @__cxa_begin_catch(ptr %i.xf) #34 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %16) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.mz, i32 noundef %i.my, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.zd = load ptr, ptr %16, align 8, !tbaa !910
  %.not.i177 = icmp eq ptr %i.zd, null
  br i1 %.not.i177, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit178, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #34
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox9functions24MapAppendVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EE:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ce = lshr i64 %indvars.iv369, 6
  %i.cf = and i64 %i.ce, 67108863
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !612
  %i.ci = and i64 %indvars.iv369, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 59
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.bz, align 8, !tbaa !612
  %i.cp = and i64 %i.co, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2377
  %i.cs = shl nsw i64 %indvars.iv369, 2
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !612
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.da, %i.cy
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.in = phi i64 [ %i.ck, %bb.o ], [ %i.cp, %bb.q ], [ %i.db, %bb.r ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.ao, label %.thread

.thread:                                          ; preds = %bb.m, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2367
  %i.de = trunc nuw i8 %.pre382 to i1
  %i.df = trunc nsw i64 %indvars.iv369 to i32
  br i1 %i.de, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bx, i64 59
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !2373
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2377
  %i.dn = shl nsw i64 %indvars.iv369, 2
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread
  %.0.i.i.i.i = phi i32 [ %i.dp, %bb.v ], [ %i.dk, %bb.u ], [ %i.df, %.thread ]
  %i.dq = sext i32 %.0.i.i.i.i to i64
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.dq ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dr, align 8 ; 11 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !17 ; 9 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %15, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.bn, align 8
  %i.ds = load i64, ptr %i.l, align 8, !tbaa !1394
  %i.dt = lshr i64 %i.ds, 8
  %i.du = ptrtoint ptr %.sroa.2.0.copyload.i.i.i to i64
  switch i64 %i.dt, label %bb.ab [
    i64 0, label %.thread312
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.dv = load i64, ptr %i.bo, align 8, !tbaa !14830
  %i.dw = and i64 %i.dv, -16
  %i.dx = inttoptr i64 %i.dw to ptr               ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 16, !tbaa !612
  %.not.i.i.i98 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %i.dy
  %i.dz = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i.i98, label %bb.y, label %.thread312

bb.y:                                             ; preds = %bb.x
  %i.ea = icmp ult i32 %i.dz, 13
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = icmp samesign ult i32 %i.dz, 5
  br i1 %i.eb, label %.thread304, label %.noexc

bb.aa:                                            ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.eh = add nsw i64 %i.eg, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.ec, ptr nonnull %i.ef, i64 %i.eh)
  %i.ei = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ei, label %.thread304, label %.thread312

.noexc:                                           ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !612
  %i.el = icmp eq i64 %i.ek, %i.du
  br i1 %i.el, label %.thread304, label %.thread312

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.bp, align 8
  %i.em = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.en = icmp ult i32 %i.em, 13
  %i.eo = select i1 %i.en, ptr %i.bq, ptr %.sroa.2.0.copyload.i.i.i
  %i.ep = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.eq = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.eo, i64 noundef %i.ep)
          to label %.noexc78 unwind label %bb.af  ; 2 uses

.noexc78:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.er = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.eq) ; 2 uses
  %i.es = lshr i64 %i.er, 24
  %i.et = or i64 %i.es, 128                       ; 2 uses
  %i.eu = add i64 %i.er, %i.eq                    ; 3 uses
  %i.ev = shl nuw nsw i64 %i.et, 1
  %i.ew = or disjoint i64 %i.ev, 1                ; 3 uses
  %i.ex = trunc nuw i64 %i.et to i8
  %i.ey = insertelement <16 x i8> poison, i8 %i.ex, i64 0
  %i.ez = shufflevector <16 x i8> %i.ey, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.fa = load i64, ptr %i.l, align 8, !tbaa !1394
  %i.fb = and i64 %i.fa, 255                      ; 4 uses
  %i.fc = shl nuw i64 1, %i.fb                    ; 3 uses
  %i.fd = load ptr, ptr %12, align 8, !tbaa !14785 ; 3 uses
  %i.fe = load i64, ptr %15, align 8
  %.fr = freeze i64 %i.fe                         ; 11 uses
  %i.ff = trunc i64 %.fr to i32                   ; 2 uses
  %i.fg = icmp ult i32 %i.ff, 13
  %i.fh = load ptr, ptr %i.bn, align 8            ; 8 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = and i64 %.fr, 4294967295
  %i.fk = add nsw i64 %i.fj, -4
  %.cast = ptrtoint ptr %i.fh to i64
  br i1 %i.fg, label %.noexc78.split.us, label %.noexc80

.noexc78.split.us:                                ; preds = %.noexc78
  %i.fl = icmp samesign ult i32 %i.ff, 5
  br i1 %i.fl, label %.noexc80.us.us, label %.noexc80.us, !llvm.loop !14832

.noexc80.us.us:                                   ; preds = %.noexc78.split.us, %.noexc83.us.us
  %.0.i.i341.us.us = phi i64 [ %i.fx, %.noexc83.us.us ], [ %i.eu, %.noexc78.split.us ] ; 2 uses
  %.023.i.i340.us.us = phi i64 [ %i.fw, %.noexc83.us.us ], [ %i.fc, %.noexc78.split.us ]
  %i.fm = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i341.us.us, i64 range(i64 0, 256) %i.fb)
  %i.fn = getelementptr inbounds nuw [256 x i8], ptr %i.fd, i64 %i.fm ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.fp, i32 0, i32 3, i32 1)
  %i.fq = load <16 x i8>, ptr %i.fn, align 16     ; 2 uses
  %i.fr = icmp eq <16 x i8> %i.fq, %i.ez
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %i.ft = and i16 %i.fs, 16383                    ; 2 uses
  %.not334337.us.us = icmp eq i16 %i.ft, 0
  %i.fu = extractelement <16 x i8> %i.fq, i64 15
  br i1 %.not334337.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.noexc81.lr.ph.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.noexc80.us.us
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %.thread312, label %.noexc83.us.us, !prof !741

.noexc83.us.us:                                   ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.fw = add i64 %.023.i.i340.us.us, -1          ; 2 uses
  %i.fx = add i64 %i.ew, %.0.i.i341.us.us
  %.not.i.i.us.us = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.us.us, label %.thread312, label %.noexc80.us.us, !llvm.loop !14831

.noexc81.lr.ph.us.us:                             ; preds = %.noexc80.us.us
  %i.fy = zext nneg i16 %i.ft to i32
  %i.fz = icmp ne ptr %i.fn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fz)
  br label %.noexc81.us.us.us.us

.noexc81.us.us.us.us:                             ; preds = %.critedge.i.i.backedge.us.us.us.us, %.noexc81.lr.ph.us.us
  %.sroa.0278.0338.us.us.us.us = phi i32 [ %i.fy, %.noexc81.lr.ph.us.us ], [ %i.gf, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.ga = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0278.0338.us.us.us.us, i1 true)
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !612
  %.not.i.i.i101.us.us.us.us = icmp eq i64 %.fr, %i.gd
  br i1 %.not.i.i.i101.us.us.us.us, label %.thread304, label %.critedge.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us.us:               ; preds = %.noexc81.us.us.us.us
  %i.ge = add nsw i32 %.sroa.0278.0338.us.us.us.us, -1
  %i.gf = and i32 %i.ge, %.sroa.0278.0338.us.us.us.us ; 2 uses
  %.not334.us.us.us.us = icmp eq i32 %i.gf, 0
  br i1 %.not334.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.noexc81.us.us.us.us, !llvm.loop !14832

.noexc80.us:                                      ; preds = %.noexc78.split.us, %.noexc83.us
  %.0.i.i341.us = phi i64 [ %i.gr, %.noexc83.us ], [ %i.eu, %.noexc78.split.us ] ; 2 uses
  %.023.i.i340.us = phi i64 [ %i.gq, %.noexc83.us ], [ %i.fc, %.noexc78.split.us ]
  %i.gg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i341.us, i64 range(i64 0, 256) %i.fb)
  %i.gh = getelementptr inbounds nuw [256 x i8], ptr %i.fd, i64 %i.gg ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.gj, i32 0, i32 3, i32 1)
  %i.gk = load <16 x i8>, ptr %i.gh, align 16     ; 2 uses
  %i.gl = icmp eq <16 x i8> %i.gk, %i.ez
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %i.gn = and i16 %i.gm, 16383                    ; 2 uses
  %.not334337.us = icmp eq i16 %i.gn, 0
  %i.go = extractelement <16 x i8> %i.gk, i64 15
  br i1 %.not334337.us, label %.critedge.i.i._crit_edge.split.us.split.us347, label %.noexc81.lr.ph.us

.critedge.i.i._crit_edge.split.us.split.us347:    ; preds = %.critedge.i.i.backedge.us.us345, %.noexc80.us
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %.thread312, label %.noexc83.us, !prof !741

.noexc83.us:                                      ; preds = %.critedge.i.i._crit_edge.split.us.split.us347
  %i.gq = add i64 %.023.i.i340.us, -1             ; 2 uses
  %i.gr = add i64 %i.ew, %.0.i.i341.us
  %.not.i.i.us = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.us, label %.thread312, label %.noexc80.us, !llvm.loop !14831

.noexc81.lr.ph.us:                                ; preds = %.noexc80.us
  %i.gs = zext nneg i16 %i.gn to i32
  %i.gt = icmp ne ptr %i.gh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gt)
  br label %.noexc81.us.us342

.noexc81.us.us342:                                ; preds = %.noexc81.lr.ph.us, %.critedge.i.i.backedge.us.us345
  %.sroa.0278.0338.us.us343 = phi i32 [ %i.gs, %.noexc81.lr.ph.us ], [ %i.gw, %.critedge.i.i.backedge.us.us345 ] ; 3 uses
  %i.gu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0278.0338.us.us343, i1 true)
  %i.gv = add nsw i32 %.sroa.0278.0338.us.us343, -1
  %i.gw = and i32 %i.gv, %.sroa.0278.0338.us.us343 ; 2 uses
  %i.gx = zext nneg i32 %i.gu to i64
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gx ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !612
  %.not.i.i.i101.us.us344 = icmp eq i64 %.fr, %i.gz
  br i1 %.not.i.i.i101.us.us344, label %bb.ac, label %.critedge.i.i.backedge.us.us345, !prof !729

bb.ac:                                            ; preds = %.noexc81.us.us342
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !612
  %i.hc = icmp eq i64 %i.hb, %.cast
  br i1 %i.hc, label %.thread304, label %.critedge.i.i.backedge.us.us345, !prof !11651

.critedge.i.i.backedge.us.us345:                  ; preds = %bb.ac, %.noexc81.us.us342
  %.not334.us.us346 = icmp eq i32 %i.gw, 0
  br i1 %.not334.us.us346, label %.critedge.i.i._crit_edge.split.us.split.us347, label %.noexc81.us.us342, !llvm.loop !14832

.noexc80:                                         ; preds = %.noexc78, %.noexc83
  %.0.i.i341 = phi i64 [ %i.ia, %.noexc83 ], [ %i.eu, %.noexc78 ] ; 2 uses
  %.023.i.i340 = phi i64 [ %i.hz, %.noexc83 ], [ %i.fc, %.noexc78 ]
  %i.hd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i341, i64 range(i64 0, 256) %i.fb)
  %i.he = getelementptr inbounds nuw [256 x i8], ptr %i.fd, i64 %i.hd ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.hg, i32 0, i32 3, i32 1)
  %i.hh = load <16 x i8>, ptr %i.he, align 16     ; 2 uses
  %i.hi = icmp eq <16 x i8> %i.hh, %i.ez
  %i.hj = bitcast <16 x i1> %i.hi to i16
  %i.hk = and i16 %i.hj, 16383                    ; 2 uses
  %.not334337 = icmp eq i16 %i.hk, 0
  %i.hl = extractelement <16 x i8> %i.hh, i64 15
  br i1 %.not334337, label %.critedge.i.i._crit_edge.split, label %.noexc81.lr.ph

.noexc81.lr.ph:                                   ; preds = %.noexc80
  %i.hm = zext nneg i16 %i.hk to i32
  %i.hn = icmp ne ptr %i.he, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hn)
  br label %.noexc81

.noexc81:                                         ; preds = %.noexc81.lr.ph, %.critedge.i.i.backedge
  %.sroa.0278.0338 = phi i32 [ %i.hm, %.noexc81.lr.ph ], [ %i.hq, %.critedge.i.i.backedge ] ; 3 uses
  %i.ho = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0278.0338, i1 true)
  %i.hp = add nsw i32 %.sroa.0278.0338, -1
  %i.hq = and i32 %i.hp, %.sroa.0278.0338         ; 2 uses
  %i.hr = zext nneg i32 %i.ho to i64
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hr ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !612
  %.not.i.i.i101 = icmp eq i64 %.fr, %i.ht
  br i1 %.not.i.i.i101, label %bb.ad, label %.critedge.i.i.backedge, !prof !729

bb.ad:                                            ; preds = %.noexc81
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %bcmp.i.i.i103 = call i32 @bcmp(ptr nonnull %i.fi, ptr nonnull %i.hw, i64 %i.fk)
  %i.hx = icmp eq i32 %bcmp.i.i.i103, 0
  br i1 %i.hx, label %.thread304, label %.critedge.i.i.backedge, !prof !11651

.critedge.i.i.backedge:                           ; preds = %bb.ad, %.noexc81
  %.not334 = icmp eq i32 %i.hq, 0
  br i1 %.not334, label %.critedge.i.i._crit_edge.split, label %.noexc81, !llvm.loop !14832

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.noexc80
  %i.hy = icmp eq i8 %i.hl, 0
  br i1 %i.hy, label %.thread312, label %.noexc83, !prof !741

.noexc83:                                         ; preds = %.critedge.i.i._crit_edge.split
  %i.hz = add i64 %.023.i.i340, -1                ; 2 uses
  %i.ia = add i64 %i.ew, %.0.i.i341
  %.not.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i, label %.thread312, label %.noexc80, !llvm.loop !14831

.thread304:                                       ; preds = %bb.z, %.noexc, %bb.aa, %bb.ad, %bb.ac, %.noexc81.us.us.us.us
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions24MapAppendVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EEE18veloxCheckFailArgs_1, ptr noundef nonnull @.str.268) #42
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.thread304
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ag:                                            ; preds = %.thread304
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.thread312:                                       ; preds = %.critedge.i.i._crit_edge.split, %.noexc83, %.critedge.i.i._crit_edge.split.us.split.us347, %.noexc83.us, %.critedge.i.i._crit_edge.split.us.split.us.us.us, %.noexc83.us.us, %.noexc, %bb.aa, %bb.x, %bb.w
  %.sroa.2.0.copyload.i.i.i.i.i.i107 = phi ptr [ %i.fh, %.critedge.i.i._crit_edge.split.us.split.us347 ], [ %i.fh, %.critedge.i.i._crit_edge.split.us.split.us.us.us ], [ %.sroa.2.0.copyload.i.i.i, %bb.w ], [ %.sroa.2.0.copyload.i.i.i, %.noexc ], [ %.sroa.2.0.copyload.i.i.i, %bb.aa ], [ %.sroa.2.0.copyload.i.i.i, %bb.x ], [ %i.fh, %.noexc83.us.us ], [ %i.fh, %.noexc83.us ], [ %i.fh, %.noexc83 ], [ %i.fh, %.critedge.i.i._crit_edge.split ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i105 = phi i64 [ %.fr, %.critedge.i.i._crit_edge.split.us.split.us347 ], [ %.fr, %.critedge.i.i._crit_edge.split.us.split.us.us.us ], [ %.sroa.0.0.copyload.i.i.i, %bb.w ], [ %.sroa.0.0.copyload.i.i.i, %.noexc ], [ %.sroa.0.0.copyload.i.i.i, %bb.aa ], [ %.sroa.0.0.copyload.i.i.i, %bb.x ], [ %.fr, %.noexc83.us.us ], [ %.fr, %.noexc83.us ], [ %.fr, %.noexc83 ], [ %.fr, %.critedge.i.i._crit_edge.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !22143
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !22146
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i105, ptr %5, align 8, !noalias !22146
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i107, ptr %i.br, align 8, !noalias !22146
  %i.id = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i105 to i32
  %i.ie = icmp ult i32 %i.id, 13
  %i.if = select i1 %i.ie, ptr %i.bs, ptr %.sroa.2.0.copyload.i.i.i.i.i.i107
  %i.ig = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i105, 4294967295
  %i.ih = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.if, i64 noundef %i.ig)
          to label %.noexc112 unwind label %bb.ak ; 2 uses

.noexc112:                                        ; preds = %.thread312
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !22146
  %i.ii = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ih) ; 2 uses
  %i.ij = lshr i64 %i.ii, 24
  %i.ik = or i64 %i.ij, 128
  %i.il = add i64 %i.ii, %i.ih
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %i.il, i64 %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %.noexc112
  %i.im = load i8, ptr %i.bt, align 8, !tbaa !526, !range !551, !noalias !22153, !noundef !552
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !22143
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.am, label %bb.ai, !prof !741

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions24MapAppendVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EEE18veloxCheckFailArgs_2, ptr noundef nonnull @.str.270) #42
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %.noexc112, %.thread312
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %.pre385 = load i32, ptr %i.bi, align 8, !tbaa !11632, !noalias !22137
  %.pre386 = load i32, ptr %i.a, align 4, !tbaa !11620, !noalias !22137
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.ag, %bb.af
  %.pn65 = phi { ptr, i32 } [ %i.ic, %bb.ag ], [ %i.ip, %bb.al ], [ %i.io, %bb.ak ], [ %i.ib, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.dg

bb.ao:                                            ; preds = %bb.s, %bb.am
  %i.iq = phi i32 [ %i.bv, %bb.s ], [ %.pre386, %bb.am ] ; 3 uses
  %i.ir = phi i32 [ %i.bw, %bb.s ], [ %.pre385, %bb.am ] ; 2 uses
  %indvars.iv.next370 = add nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.is = add nsw i32 %i.iq, %i.ir
  %i.it = trunc nsw i64 %indvars.iv.next370 to i32
  %i.iu = icmp eq i32 %i.is, %i.it
  br i1 %i.iu, label %._crit_edge352, label %bb.m, !llvm.loop !22156

._crit_edge352:                                   ; preds = %bb.ao, %._crit_edge
  %i.iv = phi i32 [ 0, %._crit_edge ], [ %i.iq, %bb.ao ]
  %i.iw = load i32, ptr %i.m, align 8, !tbaa !11596, !noalias !22157 ; 2 uses
  %i.ix = load i32, ptr %i.o, align 4, !tbaa !11597, !noalias !22157 ; 2 uses
  %i.iy = load ptr, ptr %2, align 8, !tbaa !11593, !noalias !22157
  %i.iz = load ptr, ptr %i.r, align 8, !tbaa !11595, !noalias !22157 ; 4 uses
  %i.ja = add nsw i32 %i.ix, %i.iw
  %i.jb = icmp eq i32 %i.ix, 0
  br i1 %i.jb, label %._crit_edge356, label %.lr.ph355

.lr.ph355:                                        ; preds = %._crit_edge352
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jh = getelementptr i8, ptr %i.iz, <2 x i64> <i64 8, i64 56>
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.jk = sext i32 %i.iw to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph355, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %indvars.iv372 = phi i64 [ %i.jk, %.lr.ph355 ], [ %indvars.iv.next373, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22160)
  call void @llvm.experimental.noalias.scope.decl(metadata !22163)
  %i.jl = load ptr, ptr %i.iy, align 8, !tbaa !11633, !noalias !22166, !nonnull !552, !align !674 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !2367, !noalias !22166
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 58
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !2366, !range !551, !noalias !22166, !noundef !552
  %i.jq = trunc nuw i8 %i.jp to i1
  %i.jr = trunc nsw i64 %indvars.iv372 to i32     ; 2 uses
  br i1 %i.jq, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 59
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !2372, !range !551, !noalias !22166, !noundef !552
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !2373, !noalias !22166
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !2377, !noalias !22166
  %i.jz = shl nsw i64 %indvars.iv372, 2
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !3, !noalias !22166
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %.0.i.i.i.i.i.i.i117 = phi i32 [ %i.kb, %bb.as ], [ %i.jw, %bb.ar ], [ %i.jr, %bb.ap ]
  %i.kc = sext i32 %.0.i.i.i.i.i.i.i117 to i64
  %i.kd = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.kc ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i118 = load i64, ptr %i.kd, align 8, !noalias !22166 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i119 = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i120 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i119, align 8, !tbaa !17, !noalias !22166 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i118, ptr %16, align 8, !alias.scope !22166
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i120, ptr %i.jc, align 8, !alias.scope !22166
  store ptr %i.iz, ptr %i.jd, align 8, !alias.scope !22166
  store i64 %indvars.iv372, ptr %i.je, align 8, !alias.scope !22166
  %i.ke = load ptr, ptr %i.iz, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i122 = icmp eq ptr %i.kg, null
  %i.kh = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i118 to i32 ; 4 uses
  br i1 %.not.i.i.i122, label %.thread328, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 58
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.kk = trunc nuw i8 %i.kj to i1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 57
  %i.km = load i8, ptr %i.kl, align 1, !range !551
  %i.kn = trunc nuw i8 %i.km to i1
  %or.cond.i.i.i123 = select i1 %i.kk, i1 true, i1 %i.kn
  br i1 %or.cond.i.i.i123, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ko = lshr i64 %indvars.iv372, 6
  %i.kp = and i64 %i.ko, 67108863
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !612
  %i.ks = and i64 %indvars.iv372, 63
  %i.kt = shl nuw i64 1, %i.ks
  %i.ku = and i64 %i.kr, %i.kt
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox9functions24MapUpdateVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EE:bb.a
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions24MapUpdateVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EEE18veloxCheckFailArgs_1, ptr noundef nonnull @.str.270) #42
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %.noexc125, %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.noexc126._crit_edge, %bb.l
  %i.cg = phi i32 [ %.pre525, %.noexc126._crit_edge ], [ %i.t, %bb.l ] ; 3 uses
  %i.ch = phi i64 [ %.pre524, %.noexc126._crit_edge ], [ %storemerge436, %bb.l ]
  %i.ci = add i64 %i.ch, 1                        ; 3 uses
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !612
  %i.cj = sext i32 %i.cg to i64
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.f, label %._crit_edge, !llvm.loop !25629

bb.v:                                             ; preds = %bb.t, %bb.s
  %.pn82 = phi { ptr, i32 } [ %i.cf, %bb.t ], [ %i.ce, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.dy

._crit_edge:                                      ; preds = %bb.u, %bb.e
  %i.cl = phi i32 [ 0, %bb.e ], [ %i.cg, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !14785
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !11596, !noalias !25630 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11597, !noalias !25630 ; 2 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !11593, !noalias !25630
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !11595, !noalias !25630
  %i.cu = add nsw i32 %i.cq, %i.co
  %i.cv = icmp eq i32 %i.cq, 0
  br i1 %i.cv, label %._crit_edge473, label %.lr.ph472

.lr.ph472:                                        ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dn = sext i32 %i.co to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph472, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %indvars.iv = phi i64 [ %i.dn, %.lr.ph472 ], [ %indvars.iv.next, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !25633)
  call void @llvm.experimental.noalias.scope.decl(metadata !25636)
  %i.do = load ptr, ptr %i.cr, align 8, !tbaa !11633, !noalias !25639, !nonnull !552, !align !674 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2367, !noalias !25639
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 58
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !2366, !range !551, !noalias !25639, !noundef !552
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = trunc nsw i64 %indvars.iv to i32
  br i1 %i.dt, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 59
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !2372, !range !551, !noalias !25639, !noundef !552
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !2373, !noalias !25639
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !2377, !noalias !25639
  %i.ec = shl nsw i64 %indvars.iv, 2
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !25639
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.z ], [ %i.dz, %bb.y ], [ %i.du, %bb.w ]
  %i.ef = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.ef ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.eg, align 8, !noalias !25639 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !25639 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %16, align 8, !alias.scope !25639
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.cw, align 8, !alias.scope !25639
  store ptr %i.ct, ptr %i.cx, align 8, !alias.scope !25639
  store i64 %indvars.iv, ptr %i.cy, align 8, !alias.scope !25639
  %i.eh = load i64, ptr %i.n, align 8, !tbaa !1394
  %i.ei = icmp ult i64 %i.eh, 256
  br i1 %i.ei, label %.noexc94.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.cz, align 8
  %i.ej = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i32
  %i.ek = icmp ult i32 %i.ej, 13
  %i.el = select i1 %i.ek, ptr %i.da, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4294967295
  %i.en = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.el, i64 noundef %i.em)
          to label %.noexc113 unwind label %bb.ap ; 2 uses

.noexc113:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.eo = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.en) ; 2 uses
  %i.ep = lshr i64 %i.eo, 24
  %i.eq = or i64 %i.ep, 128                       ; 2 uses
  %i.er = add i64 %i.eo, %i.en                    ; 3 uses
  %i.es = shl nuw nsw i64 %i.eq, 1
  %i.et = or disjoint i64 %i.es, 1                ; 3 uses
  %i.eu = trunc nuw i64 %i.eq to i8
  %i.ev = insertelement <16 x i8> poison, i8 %i.eu, i64 0
  %i.ew = shufflevector <16 x i8> %i.ev, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ex = load i64, ptr %i.n, align 8, !tbaa !1394
  %i.ey = and i64 %i.ex, 255                      ; 4 uses
  %i.ez = shl nuw i64 1, %i.ey                    ; 3 uses
  %i.fa = load ptr, ptr %i.m, align 8, !tbaa !25610 ; 3 uses
  %i.fb = load ptr, ptr %13, align 8              ; 4 uses
  %i.fc = load i64, ptr %16, align 8
  %.fr = freeze i64 %i.fc                         ; 8 uses
  %i.fd = trunc i64 %.fr to i32                   ; 2 uses
  %i.fe = icmp ult i32 %i.fd, 13
  %i.ff = load ptr, ptr %i.cw, align 8            ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = and i64 %.fr, 4294967295
  %i.fi = add nsw i64 %i.fh, -4
  %.cast = ptrtoint ptr %i.ff to i64
  br i1 %i.fe, label %.noexc113.split.us, label %.noexc115

.noexc113.split.us:                               ; preds = %.noexc113
  %i.fj = icmp samesign ult i32 %i.fd, 5
  br i1 %i.fj, label %.noexc115.us.us, label %.noexc115.us, !llvm.loop !25640

.noexc115.us.us:                                  ; preds = %.noexc113.split.us, %.noexc118.us.us
  %.0.i.i96454.us.us = phi i64 [ %i.ft, %.noexc118.us.us ], [ %i.er, %.noexc113.split.us ] ; 2 uses
  %.022.i.i453.us.us = phi i64 [ %i.fs, %.noexc118.us.us ], [ %i.ez, %.noexc113.split.us ]
  %i.fk = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i96454.us.us, i64 range(i64 0, 256) %i.ey)
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %i.fk ; 3 uses
  %i.fm = load <16 x i8>, ptr %i.fl, align 16     ; 2 uses
  %i.fn = icmp eq <16 x i8> %i.fm, %i.ew
  %i.fo = bitcast <16 x i1> %i.fn to i16
  %i.fp = and i16 %i.fo, 4095                     ; 2 uses
  %.not434439.us.us = icmp eq i16 %i.fp, 0
  %i.fq = extractelement <16 x i8> %i.fm, i64 15
  br i1 %.not434439.us.us, label %.critedge.i.i98._crit_edge.split.us.split.us.us.us, label %.noexc116.lr.ph.us.us

.critedge.i.i98._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i98.backedge.us.us.us.us, %.noexc115.us.us
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %.noexc94.thread, label %.noexc118.us.us, !prof !741

.noexc118.us.us:                                  ; preds = %.critedge.i.i98._crit_edge.split.us.split.us.us.us
  %i.fs = add i64 %.022.i.i453.us.us, -1          ; 2 uses
  %i.ft = add i64 %i.et, %.0.i.i96454.us.us
  %.not.i.i97.us.us = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i97.us.us, label %.noexc94.thread, label %.noexc115.us.us, !llvm.loop !25641

.noexc116.lr.ph.us.us:                            ; preds = %.noexc115.us.us
  %i.fu = zext nneg i16 %i.fp to i32
  %i.fv = icmp ne ptr %i.fl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  br label %.noexc116.us.us.us.us

.noexc116.us.us.us.us:                            ; preds = %.critedge.i.i98.backedge.us.us.us.us, %.noexc116.lr.ph.us.us
  %.sroa.0332.0440.us.us.us.us = phi i32 [ %i.fu, %.noexc116.lr.ph.us.us ], [ %i.gf, %.critedge.i.i98.backedge.us.us.us.us ] ; 3 uses
  %i.fx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0332.0440.us.us.us.us, i1 true)
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !612
  %.not.i.i.i129.us.us.us.us = icmp eq i64 %.fr, %i.gd
  br i1 %.not.i.i.i129.us.us.us.us, label %.noexc117.thread, label %.critedge.i.i98.backedge.us.us.us.us, !prof !729

.critedge.i.i98.backedge.us.us.us.us:             ; preds = %.noexc116.us.us.us.us
  %i.ge = add nsw i32 %.sroa.0332.0440.us.us.us.us, -1
  %i.gf = and i32 %i.ge, %.sroa.0332.0440.us.us.us.us ; 2 uses
  %.not434.us.us.us.us = icmp eq i32 %i.gf, 0
  br i1 %.not434.us.us.us.us, label %.critedge.i.i98._crit_edge.split.us.split.us.us.us, label %.noexc116.us.us.us.us, !llvm.loop !25640

.noexc115.us:                                     ; preds = %.noexc113.split.us, %.noexc118.us
  %.0.i.i96454.us = phi i64 [ %i.gp, %.noexc118.us ], [ %i.er, %.noexc113.split.us ] ; 2 uses
  %.022.i.i453.us = phi i64 [ %i.go, %.noexc118.us ], [ %i.ez, %.noexc113.split.us ]
  %i.gg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i96454.us, i64 range(i64 0, 256) %i.ey)
  %i.gh = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %i.gg ; 3 uses
  %i.gi = load <16 x i8>, ptr %i.gh, align 16     ; 2 uses
  %i.gj = icmp eq <16 x i8> %i.gi, %i.ew
  %i.gk = bitcast <16 x i1> %i.gj to i16
  %i.gl = and i16 %i.gk, 4095                     ; 2 uses
  %.not434439.us = icmp eq i16 %i.gl, 0
  %i.gm = extractelement <16 x i8> %i.gi, i64 15
  br i1 %.not434439.us, label %.critedge.i.i98._crit_edge.split.us.split.us460, label %.noexc116.lr.ph.us

.critedge.i.i98._crit_edge.split.us.split.us460:  ; preds = %.critedge.i.i98.backedge.us.us458, %.noexc115.us
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %.noexc94.thread, label %.noexc118.us, !prof !741

.noexc118.us:                                     ; preds = %.critedge.i.i98._crit_edge.split.us.split.us460
  %i.go = add i64 %.022.i.i453.us, -1             ; 2 uses
  %i.gp = add i64 %i.et, %.0.i.i96454.us
  %.not.i.i97.us = icmp eq i64 %i.go, 0
  br i1 %.not.i.i97.us, label %.noexc94.thread, label %.noexc115.us, !llvm.loop !25641

.noexc116.lr.ph.us:                               ; preds = %.noexc115.us
  %i.gq = zext nneg i16 %i.gl to i32
  %i.gr = icmp ne ptr %i.gh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  br label %.noexc116.us.us455

.noexc116.us.us455:                               ; preds = %.noexc116.lr.ph.us, %.critedge.i.i98.backedge.us.us458
  %.sroa.0332.0440.us.us456 = phi i32 [ %i.gq, %.noexc116.lr.ph.us ], [ %i.gv, %.critedge.i.i98.backedge.us.us458 ] ; 3 uses
  %i.gt = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0332.0440.us.us456, i1 true)
  %i.gu = add nsw i32 %.sroa.0332.0440.us.us456, -1
  %i.gv = and i32 %i.gu, %.sroa.0332.0440.us.us456 ; 2 uses
  %i.gw = zext nneg i32 %i.gt to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !612
  %.not.i.i.i129.us.us457 = icmp eq i64 %.fr, %i.hb
  br i1 %.not.i.i.i129.us.us457, label %bb.ac, label %.critedge.i.i98.backedge.us.us458, !prof !729

bb.ac:                                            ; preds = %.noexc116.us.us455
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !612
  %i.he = icmp eq i64 %i.hd, %.cast
  br i1 %i.he, label %.noexc117.thread, label %.critedge.i.i98.backedge.us.us458, !prof !11651

.critedge.i.i98.backedge.us.us458:                ; preds = %bb.ac, %.noexc116.us.us455
  %.not434.us.us459 = icmp eq i32 %i.gv, 0
  br i1 %.not434.us.us459, label %.critedge.i.i98._crit_edge.split.us.split.us460, label %.noexc116.us.us455, !llvm.loop !25640

.noexc115:                                        ; preds = %.noexc113, %.noexc118
  %.0.i.i96454 = phi i64 [ %i.ie, %.noexc118 ], [ %i.er, %.noexc113 ] ; 2 uses
  %.022.i.i453 = phi i64 [ %i.id, %.noexc118 ], [ %i.ez, %.noexc113 ]
  %i.hf = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i96454, i64 range(i64 0, 256) %i.ey)
  %i.hg = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %i.hf ; 3 uses
  %i.hh = load <16 x i8>, ptr %i.hg, align 16     ; 2 uses
  %i.hi = icmp eq <16 x i8> %i.hh, %i.ew
  %i.hj = bitcast <16 x i1> %i.hi to i16
  %i.hk = and i16 %i.hj, 4095                     ; 2 uses
  %.not434439 = icmp eq i16 %i.hk, 0
  %i.hl = extractelement <16 x i8> %i.hh, i64 15
  br i1 %.not434439, label %.critedge.i.i98._crit_edge.split, label %.noexc116.lr.ph

.noexc116.lr.ph:                                  ; preds = %.noexc115
  %i.hm = zext nneg i16 %i.hk to i32
  %i.hn = icmp ne ptr %i.hg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  br label %.noexc116

.noexc116:                                        ; preds = %.noexc116.lr.ph, %.critedge.i.i98.backedge
  %.sroa.0332.0440 = phi i32 [ %i.hm, %.noexc116.lr.ph ], [ %i.hr, %.critedge.i.i98.backedge ] ; 3 uses
  %i.hp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0332.0440, i1 true)
  %i.hq = add nsw i32 %.sroa.0332.0440, -1
  %i.hr = and i32 %i.hq, %.sroa.0332.0440         ; 2 uses
  %i.hs = zext nneg i32 %i.hp to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.hv ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !612
  %.not.i.i.i129 = icmp eq i64 %.fr, %i.hx
  br i1 %.not.i.i.i129, label %bb.ad, label %.critedge.i.i98.backedge, !prof !729

bb.ad:                                            ; preds = %.noexc116
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.fg, ptr nonnull %i.ia, i64 %i.fi)
  %i.ib = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ib, label %.noexc117.thread, label %.critedge.i.i98.backedge, !prof !11651

.critedge.i.i98.backedge:                         ; preds = %bb.ad, %.noexc116
  %.not434 = icmp eq i32 %i.hr, 0
  br i1 %.not434, label %.critedge.i.i98._crit_edge.split, label %.noexc116, !llvm.loop !25640

.critedge.i.i98._crit_edge.split:                 ; preds = %.critedge.i.i98.backedge, %.noexc115
  %i.ic = icmp eq i8 %i.hl, 0
  br i1 %i.ic, label %.noexc94.thread, label %.noexc118, !prof !741

.noexc118:                                        ; preds = %.critedge.i.i98._crit_edge.split
  %i.id = add i64 %.022.i.i453, -1                ; 2 uses
  %i.ie = add i64 %i.et, %.0.i.i96454
  %.not.i.i97 = icmp eq i64 %i.id, 0
  br i1 %.not.i.i97, label %.noexc94.thread, label %.noexc115, !llvm.loop !25641

.noexc117.thread:                                 ; preds = %bb.ad, %bb.ac, %.noexc116.us.us.us.us
  %.pre-phi = phi i64 [ %i.gz, %bb.ac ], [ %i.gb, %.noexc116.us.us.us.us ], [ %i.hv, %bb.ad ]
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %.pre-phi
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !25642
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !25647
  store i64 %.fr, ptr %6, align 8, !noalias !25647
  store ptr %i.ff, ptr %i.db, align 8, !noalias !25647
  %i.ig = trunc i64 %.fr to i32
  %i.ih = icmp ult i32 %i.ig, 13
  %i.ii = select i1 %i.ih, ptr %i.dc, ptr %i.ff
  %i.ij = and i64 %.fr, 4294967295
  %i.ik = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.ii, i64 noundef %i.ij)
          to label %.noexc133 unwind label %bb.aq ; 2 uses

.noexc133:                                        ; preds = %.noexc117.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !25647
  %i.il = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ik) ; 2 uses
  %i.im = lshr i64 %i.il, 24
  %i.in = or i64 %i.im, 128
  %i.io = add i64 %i.il, %i.ik
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4467") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 %i.io, i64 %i.in, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %.noexc133
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !25642
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !25654
  %i.ir = trunc i64 %i.iq to i32                  ; 2 uses
  %i.is = load ptr, ptr %4, align 8, !tbaa !12099
  %i.it = load i32, ptr %i.dd, align 8, !tbaa !12103
  %i.iu = add nsw i32 %i.it, %i.ir
  %i.iv = sext i32 %i.iu to i64                   ; 3 uses
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i137 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i137, label %.thread380, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 58
  %i.ja = load i8, ptr %i.iz, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 57
  %i.jd = load i8, ptr %i.jc, align 1, !range !551
  %i.je = trunc nuw i8 %i.jd to i1
  %or.cond.i.i.i138 = select i1 %i.jb, i1 true, i1 %i.je
  br i1 %or.cond.i.i.i138, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jf = lshr i64 %i.iv, 6
  %i.jg = and i64 %i.jf, 67108863
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !612
  %i.jj = and i64 %i.iv, 63
  %i.jk = shl nuw i64 1, %i.jj
  %i.jl = and i64 %i.ji, %i.jk
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iw, i64 59
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jp = load i64, ptr %i.iy, align 8, !tbaa !612
  %i.jq = and i64 %i.jp, 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !2377
  %i.jt = shl nsw i64 %i.iv, 2
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  %i.jw = zext i32 %i.jv to i64                   ; 2 uses
  %i.jx = lshr i64 %i.jw, 6
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !612
  %i.ka = and i64 %i.jw, 63
  %i.kb = shl nuw i64 1, %i.ka
  %i.kc = and i64 %i.kb, %i.jz
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i.i.i140.in = phi i64 [ %i.jl, %bb.ag ], [ %i.jq, %bb.ai ], [ %i.kc, %bb.aj ]
  %.0.i.i.i140.not = icmp eq i64 %.0.i.i.i140.in, 0
  br i1 %.0.i.i.i140.not, label %bb.al, label %.thread380

bb.al:                                            ; preds = %bb.ak
  %i.kd = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.am unwind label %bb.ar     ; 5 uses

bb.am:                                            ; preds = %bb.al
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !7166 ; 2 uses
  %i.kg = load i32, ptr %16, align 8, !tbaa !7659 ; 2 uses
  %i.kh = zext i32 %i.kg to i64
  %i.ki = add i64 %i.kf, %i.kh                    ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !7165
  %i.kl = icmp ugt i64 %i.ki, %i.kk
  br i1 %i.kl, label %bb.an, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.km = load ptr, ptr %i.kd, align 8, !tbaa !541
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  invoke void %i.ko(ptr noundef nonnull align 8 dereferenceable(96) %i.kd, i64 noundef %i.ki)
          to label %.noexc144 unwind label %bb.ar, !inline_history !11652

.noexc144:                                        ; preds = %bb.an
  %.pre.i.i = load i32, ptr %16, align 8, !tbaa !7659
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %.noexc144, %bb.am
  %i.kp = phi i32 [ %i.kg, %bb.am ], [ %.pre.i.i, %.noexc144 ] ; 3 uses
  store i64 %i.ki, ptr %i.ke, align 8, !tbaa !7166
  %.not.i.i143 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i143, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !7167
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kf
  %i.ku = icmp ult i32 %i.kp, 13
  %i.kv = load ptr, ptr %i.cw, align 8
  %i.kw = select i1 %i.ku, ptr %i.de, ptr %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kt, ptr align 1 %i.kw, i64 %i.kq, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

bb.ap:                                            ; preds = %bb.ab
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aq:                                            ; preds = %.noexc133, %.noexc117.thread
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ar:                                            ; preds = %bb.an, %bb.al
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.thread380:                                       ; preds = %bb.ae, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  invoke void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3328") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %.thread380
  %i.la = load ptr, ptr %i.df, align 8, !tbaa !11653, !nonnull !552, !align !674 ; 5 uses
  %i.lb = load ptr, ptr %17, align 8, !tbaa !8637, !nonnull !552, !align !674
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !7166 ; 2 uses
  %i.le = load i32, ptr %16, align 8, !tbaa !7659 ; 2 uses
  %i.lf = zext i32 %i.le to i64
  %i.lg = add i64 %i.ld, %i.lf                    ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !7165
  %i.lj = icmp ugt i64 %i.lg, %i.li
  br i1 %i.lj, label %bb.at, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i145

bb.at:                                            ; preds = %bb.as
  %i.lk = load ptr, ptr %i.la, align 8, !tbaa !541
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(96) %i.la, i64 noundef %i.lg)
          to label %.noexc148 unwind label %bb.ay, !inline_history !11652

.noexc148:                                        ; preds = %bb.at
  %.pre.i.i147 = load i32, ptr %16, align 8, !tbaa !7659
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i145

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i145: ; preds = %.noexc148, %bb.as
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox9functions24MapUpdateVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EE:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.qm = trunc nuw i8 %.pre528 to i1
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 57
  %i.qo = load i8, ptr %i.qn, align 1, !range !551
  %i.qp = trunc nuw i8 %i.qo to i1
  %or.cond.i.i.i173 = select i1 %i.qm, i1 true, i1 %i.qp
  br i1 %or.cond.i.i.i173, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qq = lshr i64 %indvars.iv517, 6
  %i.qr = and i64 %i.qq, 67108863
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qr
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !612
  %i.qu = and i64 %indvars.iv517, 63
  %i.qv = shl nuw i64 1, %i.qu
  %i.qw = and i64 %i.qt, %i.qv
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qj, i64 59
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ra = load i64, ptr %i.ql, align 8, !tbaa !612
  %i.rb = and i64 %i.ra, 1
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !2377
  %i.re = shl nsw i64 %indvars.iv517, 2
  %i.rf = getelementptr inbounds i8, ptr %i.rd, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3
  %i.rh = zext i32 %i.rg to i64                   ; 2 uses
  %i.ri = lshr i64 %i.rh, 6
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.ri
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !612
  %i.rl = and i64 %i.rh, 63
  %i.rm = shl nuw i64 1, %i.rl
  %i.rn = and i64 %i.rm, %i.rk
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.by
  %.0.i.i.i176.in = phi i64 [ %i.qw, %bb.by ], [ %i.rb, %bb.ca ], [ %i.rn, %bb.cb ]
  %.0.i.i.i176.not = icmp eq i64 %.0.i.i.i176.in, 0
  br i1 %.0.i.i.i176.not, label %.critedge, label %.thread384

.thread384:                                       ; preds = %bb.bw, %bb.cc
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !2367
  %i.rq = trunc nuw i8 %.pre528 to i1
  %i.rr = trunc nsw i64 %indvars.iv517 to i32     ; 3 uses
  br i1 %i.rq, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.thread384
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qj, i64 59
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qj, i64 64
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !2373
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !2377
  %i.rz = shl nsw i64 %indvars.iv517, 2
  %i.sa = getelementptr inbounds i8, ptr %i.ry, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.thread384
  %.0.i.i.i.i183 = phi i32 [ %i.sb, %bb.cf ], [ %i.rw, %bb.ce ], [ %i.rr, %.thread384 ]
  %i.sc = sext i32 %.0.i.i.i.i183 to i64
  %i.sd = getelementptr inbounds [16 x i8], ptr %i.rp, i64 %i.sc ; 2 uses
  %.sroa.0.0.copyload.i.i.i184 = load i64, ptr %i.sd, align 8
  %.sroa.0.0.copyload.i.i.i184.fr = freeze i64 %.sroa.0.0.copyload.i.i.i184 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i185 = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %.sroa.2.0.copyload.i.i.i186 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i185, align 8, !tbaa !17 ; 6 uses
  %i.se = load i64, ptr %i.cm, align 8, !tbaa !1394
  %i.sf = lshr i64 %i.se, 8
  switch i64 %i.sf, label %bb.cl [
    i64 0, label %.thread416
    i64 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.sg = load i64, ptr %i.pw, align 8, !tbaa !14830
  %i.sh = and i64 %i.sg, -16
  %i.si = inttoptr i64 %i.sh to ptr               ; 3 uses
  %i.sj = load i64, ptr %i.si, align 16, !tbaa !612
  %.not.i.i.i192 = icmp eq i64 %.sroa.0.0.copyload.i.i.i184.fr, %i.sj
  %i.sk = trunc i64 %.sroa.0.0.copyload.i.i.i184.fr to i32 ; 2 uses
  br i1 %.not.i.i.i192, label %bb.ci, label %.thread416

bb.ci:                                            ; preds = %bb.ch
  %i.sl = icmp ult i32 %i.sk, 13
  br i1 %i.sl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sm = icmp samesign ult i32 %i.sk, 5
  br i1 %i.sm, label %.critedge, label %.noexc

bb.ck:                                            ; preds = %bb.ci
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i186, i64 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !17
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.sr = and i64 %.sroa.0.0.copyload.i.i.i184.fr, 4294967295
  %i.ss = add nsw i64 %i.sr, -4
  %bcmp.i.i.i194 = call i32 @bcmp(ptr nonnull %i.sn, ptr nonnull %i.sq, i64 %i.ss)
  %i.st = icmp eq i32 %bcmp.i.i.i194, 0
  br i1 %i.st, label %.critedge, label %.thread416

.noexc:                                           ; preds = %bb.cj
  %i.su = ptrtoint ptr %.sroa.2.0.copyload.i.i.i186 to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !612
  %i.sx = icmp eq i64 %i.sw, %i.su
  br i1 %i.sx, label %.critedge, label %.thread416

bb.cl:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.0.0.copyload.i.i.i184.fr, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i.i186, ptr %i.px, align 8
  %i.sy = trunc i64 %.sroa.0.0.copyload.i.i.i184.fr to i32 ; 2 uses
  %i.sz = icmp ult i32 %i.sy, 13                  ; 2 uses
  %i.ta = select i1 %i.sz, ptr %i.py, ptr %.sroa.2.0.copyload.i.i.i186
  %i.tb = and i64 %.sroa.0.0.copyload.i.i.i184.fr, 4294967295 ; 2 uses
  %i.tc = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.ta, i64 noundef %i.tb)
          to label %.noexc88 unwind label %bb.dc  ; 2 uses

.noexc88:                                         ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.td = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tc) ; 2 uses
  %i.te = lshr i64 %i.td, 24
  %i.tf = or i64 %i.te, 128                       ; 2 uses
  %i.tg = add i64 %i.td, %i.tc                    ; 3 uses
  %i.th = shl nuw nsw i64 %i.tf, 1
  %i.ti = or disjoint i64 %i.th, 1                ; 3 uses
  %i.tj = trunc nuw i64 %i.tf to i8
  %i.tk = insertelement <16 x i8> poison, i8 %i.tj, i64 0
  %i.tl = shufflevector <16 x i8> %i.tk, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.tm = load i64, ptr %i.cm, align 8, !tbaa !1394
  %i.tn = and i64 %i.tm, 255                      ; 4 uses
  %i.to = shl nuw i64 1, %i.tn                    ; 3 uses
  %i.tp = load ptr, ptr %15, align 8, !tbaa !14785 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i186, i64 4
  %i.tr = add nsw i64 %i.tb, -4
  %i.ts = ptrtoint ptr %.sroa.2.0.copyload.i.i.i186 to i64
  br i1 %i.sz, label %.noexc88.split.us, label %.noexc90

.noexc88.split.us:                                ; preds = %.noexc88
  %i.tt = icmp samesign ult i32 %i.sy, 5
  br i1 %i.tt, label %.noexc90.us.us, label %.noexc90.us, !llvm.loop !14832

.noexc90.us.us:                                   ; preds = %.noexc88.split.us, %.noexc93.us.us
  %.0.i.i479.us.us = phi i64 [ %i.uf, %.noexc93.us.us ], [ %i.tg, %.noexc88.split.us ] ; 2 uses
  %.023.i.i478.us.us = phi i64 [ %i.ue, %.noexc93.us.us ], [ %i.to, %.noexc88.split.us ]
  %i.tu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i479.us.us, i64 range(i64 0, 256) %i.tn)
  %i.tv = getelementptr inbounds nuw [256 x i8], ptr %i.tp, i64 %i.tu ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.tx, i32 0, i32 3, i32 1)
  %i.ty = load <16 x i8>, ptr %i.tv, align 16     ; 2 uses
  %i.tz = icmp eq <16 x i8> %i.ty, %i.tl
  %i.ua = bitcast <16 x i1> %i.tz to i16
  %i.ub = and i16 %i.ua, 16383                    ; 2 uses
  %.not435474.us.us = icmp eq i16 %i.ub, 0
  %i.uc = extractelement <16 x i8> %i.ty, i64 15
  br i1 %.not435474.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.noexc91.lr.ph.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.noexc90.us.us
  %i.ud = icmp eq i8 %i.uc, 0
  br i1 %i.ud, label %.thread416, label %.noexc93.us.us, !prof !741

.noexc93.us.us:                                   ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.ue = add i64 %.023.i.i478.us.us, -1          ; 2 uses
  %i.uf = add i64 %i.ti, %.0.i.i479.us.us
  %.not.i.i.us.us = icmp eq i64 %i.ue, 0
  br i1 %.not.i.i.us.us, label %.thread416, label %.noexc90.us.us, !llvm.loop !14831

.noexc91.lr.ph.us.us:                             ; preds = %.noexc90.us.us
  %i.ug = zext nneg i16 %i.ub to i32
  %i.uh = icmp ne ptr %i.tv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.uh)
  br label %.noexc91.us.us.us.us

.noexc91.us.us.us.us:                             ; preds = %.critedge.i.i.backedge.us.us.us.us, %.noexc91.lr.ph.us.us
  %.sroa.0324.0475.us.us.us.us = phi i32 [ %i.ug, %.noexc91.lr.ph.us.us ], [ %i.un, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.ui = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0324.0475.us.us.us.us, i1 true)
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [16 x i8], ptr %i.tw, i64 %i.uj
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !612
  %.not.i.i.i201.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i184.fr, %i.ul
  br i1 %.not.i.i.i201.us.us.us.us, label %.critedge, label %.critedge.i.i.backedge.us.us.us.us, !prof !729

.critedge.i.i.backedge.us.us.us.us:               ; preds = %.noexc91.us.us.us.us
  %i.um = add nsw i32 %.sroa.0324.0475.us.us.us.us, -1
  %i.un = and i32 %i.um, %.sroa.0324.0475.us.us.us.us ; 2 uses
  %.not435.us.us.us.us = icmp eq i32 %i.un, 0
  br i1 %.not435.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.noexc91.us.us.us.us, !llvm.loop !14832

.noexc90.us:                                      ; preds = %.noexc88.split.us, %.noexc93.us
  %.0.i.i479.us = phi i64 [ %i.uz, %.noexc93.us ], [ %i.tg, %.noexc88.split.us ] ; 2 uses
  %.023.i.i478.us = phi i64 [ %i.uy, %.noexc93.us ], [ %i.to, %.noexc88.split.us ]
  %i.uo = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i479.us, i64 range(i64 0, 256) %i.tn)
  %i.up = getelementptr inbounds nuw [256 x i8], ptr %i.tp, i64 %i.uo ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ur, i32 0, i32 3, i32 1)
  %i.us = load <16 x i8>, ptr %i.up, align 16     ; 2 uses
  %i.ut = icmp eq <16 x i8> %i.us, %i.tl
  %i.uu = bitcast <16 x i1> %i.ut to i16
  %i.uv = and i16 %i.uu, 16383                    ; 2 uses
  %.not435474.us = icmp eq i16 %i.uv, 0
  %i.uw = extractelement <16 x i8> %i.us, i64 15
  br i1 %.not435474.us, label %.critedge.i.i._crit_edge.split.us.split.us485, label %.noexc91.lr.ph.us

.critedge.i.i._crit_edge.split.us.split.us485:    ; preds = %.critedge.i.i.backedge.us.us483, %.noexc90.us
  %i.ux = icmp eq i8 %i.uw, 0
  br i1 %i.ux, label %.thread416, label %.noexc93.us, !prof !741

.noexc93.us:                                      ; preds = %.critedge.i.i._crit_edge.split.us.split.us485
  %i.uy = add i64 %.023.i.i478.us, -1             ; 2 uses
  %i.uz = add i64 %i.ti, %.0.i.i479.us
  %.not.i.i.us = icmp eq i64 %i.uy, 0
  br i1 %.not.i.i.us, label %.thread416, label %.noexc90.us, !llvm.loop !14831

.noexc91.lr.ph.us:                                ; preds = %.noexc90.us
  %i.va = zext nneg i16 %i.uv to i32
  %i.vb = icmp ne ptr %i.up, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vb)
  br label %.noexc91.us.us480

.noexc91.us.us480:                                ; preds = %.noexc91.lr.ph.us, %.critedge.i.i.backedge.us.us483
  %.sroa.0324.0475.us.us481 = phi i32 [ %i.va, %.noexc91.lr.ph.us ], [ %i.ve, %.critedge.i.i.backedge.us.us483 ] ; 3 uses
  %i.vc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0324.0475.us.us481, i1 true)
  %i.vd = add nsw i32 %.sroa.0324.0475.us.us481, -1
  %i.ve = and i32 %i.vd, %.sroa.0324.0475.us.us481 ; 2 uses
  %i.vf = zext nneg i32 %i.vc to i64
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.uq, i64 %i.vf ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !612
  %.not.i.i.i201.us.us482 = icmp eq i64 %.sroa.0.0.copyload.i.i.i184.fr, %i.vh
  br i1 %.not.i.i.i201.us.us482, label %bb.cm, label %.critedge.i.i.backedge.us.us483, !prof !729

bb.cm:                                            ; preds = %.noexc91.us.us480
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !612
  %i.vk = icmp eq i64 %i.vj, %i.ts
  br i1 %i.vk, label %.critedge, label %.critedge.i.i.backedge.us.us483, !prof !19147

.critedge.i.i.backedge.us.us483:                  ; preds = %bb.cm, %.noexc91.us.us480
  %.not435.us.us484 = icmp eq i32 %i.ve, 0
  br i1 %.not435.us.us484, label %.critedge.i.i._crit_edge.split.us.split.us485, label %.noexc91.us.us480, !llvm.loop !14832

.noexc90:                                         ; preds = %.noexc88, %.noexc93
  %.0.i.i479 = phi i64 [ %i.wi, %.noexc93 ], [ %i.tg, %.noexc88 ] ; 2 uses
  %.023.i.i478 = phi i64 [ %i.wh, %.noexc93 ], [ %i.to, %.noexc88 ]
  %i.vl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i479, i64 range(i64 0, 256) %i.tn)
  %i.vm = getelementptr inbounds nuw [256 x i8], ptr %i.tp, i64 %i.vl ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.vo, i32 0, i32 3, i32 1)
  %i.vp = load <16 x i8>, ptr %i.vm, align 16     ; 2 uses
  %i.vq = icmp eq <16 x i8> %i.vp, %i.tl
  %i.vr = bitcast <16 x i1> %i.vq to i16
  %i.vs = and i16 %i.vr, 16383                    ; 2 uses
  %.not435474 = icmp eq i16 %i.vs, 0
  %i.vt = extractelement <16 x i8> %i.vp, i64 15
  br i1 %.not435474, label %.critedge.i.i._crit_edge.split, label %.noexc91.lr.ph

.noexc91.lr.ph:                                   ; preds = %.noexc90
  %i.vu = zext nneg i16 %i.vs to i32
  %i.vv = icmp ne ptr %i.vm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vv)
  br label %.noexc91

.noexc91:                                         ; preds = %.noexc91.lr.ph, %.critedge.i.i.backedge
  %.sroa.0324.0475 = phi i32 [ %i.vu, %.noexc91.lr.ph ], [ %i.vy, %.critedge.i.i.backedge ] ; 3 uses
  %i.vw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0324.0475, i1 true)
  %i.vx = add nsw i32 %.sroa.0324.0475, -1
  %i.vy = and i32 %i.vx, %.sroa.0324.0475         ; 2 uses
  %i.vz = zext nneg i32 %i.vw to i64
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.vn, i64 %i.vz ; 2 uses
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !612
  %.not.i.i.i201 = icmp eq i64 %.sroa.0.0.copyload.i.i.i184.fr, %i.wb
  br i1 %.not.i.i.i201, label %bb.cn, label %.critedge.i.i.backedge, !prof !729

bb.cn:                                            ; preds = %.noexc91
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !17
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %bcmp.i.i.i203 = call i32 @bcmp(ptr nonnull %i.tq, ptr nonnull %i.we, i64 %i.tr)
  %i.wf = icmp eq i32 %bcmp.i.i.i203, 0
  br i1 %i.wf, label %.critedge, label %.critedge.i.i.backedge, !prof !19147

.critedge.i.i.backedge:                           ; preds = %bb.cn, %.noexc91
  %.not435 = icmp eq i32 %i.vy, 0
  br i1 %.not435, label %.critedge.i.i._crit_edge.split, label %.noexc91, !llvm.loop !14832

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.noexc90
  %i.wg = icmp eq i8 %i.vt, 0
  br i1 %i.wg, label %.thread416, label %.noexc93, !prof !741

.noexc93:                                         ; preds = %.critedge.i.i._crit_edge.split
  %i.wh = add i64 %.023.i.i478, -1                ; 2 uses
  %i.wi = add i64 %i.ti, %.0.i.i479
  %.not.i.i = icmp eq i64 %i.wh, 0
  br i1 %.not.i.i, label %.thread416, label %.noexc90, !llvm.loop !14831

.thread416:                                       ; preds = %.critedge.i.i._crit_edge.split, %.noexc93, %.critedge.i.i._crit_edge.split.us.split.us485, %.noexc93.us, %.critedge.i.i._crit_edge.split.us.split.us.us.us, %.noexc93.us.us, %.noexc, %bb.ck, %bb.ch, %bb.cg
  %i.wj = load ptr, ptr %i.pr, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i207 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i207, label %.thread432, label %bb.co

bb.co:                                            ; preds = %.thread416
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 58
  %i.wn = load i8, ptr %i.wm, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.wo = trunc nuw i8 %i.wn to i1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wj, i64 57
  %i.wq = load i8, ptr %i.wp, align 1, !range !551
  %i.wr = trunc nuw i8 %i.wq to i1
  %or.cond.i.i.i208 = select i1 %i.wo, i1 true, i1 %i.wr
  br i1 %or.cond.i.i.i208, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ws = lshr i64 %indvars.iv519, 6
  %i.wt = and i64 %i.ws, 67108863
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.wt
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !612
  %i.ww = and i64 %indvars.iv519, 63
  %i.wx = shl nuw i64 1, %i.ww
  %i.wy = and i64 %i.wv, %i.wx
  br label %bb.ct

bb.cq:                                            ; preds = %bb.co
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wj, i64 59
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.xb = trunc nuw i8 %i.xa to i1
  br i1 %i.xb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.xc = load i64, ptr %i.wl, align 8, !tbaa !612
  %i.xd = and i64 %i.xc, 1
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !2377
  %i.xg = shl nsw i64 %indvars.iv519, 2
  %i.xh = getelementptr inbounds i8, ptr %i.xf, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !3
  %i.xj = zext i32 %i.xi to i64                   ; 2 uses
  %i.xk = lshr i64 %i.xj, 6
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.xk
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !612
  %i.xn = and i64 %i.xj, 63
  %i.xo = shl nuw i64 1, %i.xn
  %i.xp = and i64 %i.xo, %i.xm
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cp
  %.0.i.i.i211.in = phi i64 [ %i.wy, %bb.cp ], [ %i.xd, %bb.cr ], [ %i.xp, %bb.cs ]
  %.0.i.i.i211.not = icmp eq i64 %.0.i.i.i211.in, 0
  br i1 %.0.i.i.i211.not, label %bb.cu, label %.thread432

bb.cu:                                            ; preds = %bb.ct
  %i.xq = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cv unwind label %bb.dd     ; 5 uses

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  %i.xr = load ptr, ptr %i.pq, align 8, !tbaa !11633, !nonnull !552, !align !674 ; 5 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !2367
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 58
  %i.xv = load i8, ptr %i.xu, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.xw = trunc nuw i8 %i.xv to i1
  br i1 %i.xw, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xr, i64 59
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.xz = trunc nuw i8 %i.xy to i1
  br i1 %i.xz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xr, i64 64
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !2373
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !2377
  %i.ye = shl nsw i64 %indvars.iv517, 2
  %i.yf = getelementptr inbounds i8, ptr %i.yd, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !3
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cv
  %.0.i.i.i.i218 = phi i32 [ %i.yg, %bb.cy ], [ %i.yb, %bb.cx ], [ %i.rr, %bb.cv ]
  %i.yh = sext i32 %.0.i.i.i.i218 to i64
  %i.yi = getelementptr inbounds [16 x i8], ptr %i.xt, i64 %i.yh ; 2 uses
  %.sroa.0.0.copyload.i.i.i219 = load i64, ptr %i.yi, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i220 = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %.sroa.2.0.copyload.i.i.i221 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i220, align 8, !tbaa !17 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i219, ptr %21, align 8
  store ptr %.sroa.2.0.copyload.i.i.i221, ptr %i.pz, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xq, i64 16 ; 2 uses
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !7166 ; 2 uses
  %i.yl = trunc i64 %.sroa.0.0.copyload.i.i.i219 to i32 ; 2 uses
  %i.ym = and i64 %.sroa.0.0.copyload.i.i.i219, 4294967295 ; 2 uses
  %i.yn = add i64 %i.yk, %i.ym                    ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !7165
  %i.yq = icmp ugt i64 %i.yn, %i.yp
  br i1 %i.yq, label %bb.da, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i225

bb.da:                                            ; preds = %bb.cz
  %i.yr = load ptr, ptr %i.xq, align 8, !tbaa !541
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8
  invoke void %i.yt(ptr noundef nonnull align 8 dereferenceable(96) %i.xq, i64 noundef %i.yn)
          to label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i225 unwind label %bb.de, !inline_history !11652

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i225: ; preds = %bb.da, %bb.cz
  store i64 %i.yn, ptr %i.yj, align 8, !tbaa !7166
  %.not.i.i226 = icmp eq i32 %i.yl, 0
  br i1 %.not.i.i226, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit229, label %bb.db

bb.db:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i225
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !7167
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yk
  %i.yx = icmp ult i32 %i.yl, 13
  %i.yy = select i1 %i.yx, ptr %i.qa, ptr %.sroa.2.0.copyload.i.i.i221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yw, ptr align 1 %i.yy, i64 %i.ym, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit229

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit229: ; preds = %bb.db, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %.critedge

bb.dc:                                            ; preds = %bb.cl
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dd:                                            ; preds = %bb.cu
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.de:                                            ; preds = %bb.da
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %bb.dx

.thread432:                                       ; preds = %.thread416, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  invoke void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3328") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.df unwind label %bb.do

bb.df:                                            ; preds = %.thread432
  %i.zc = load ptr, ptr %i.qb, align 8, !tbaa !11653, !nonnull !552, !align !674 ; 5 uses
  %i.zd = load ptr, ptr %22, align 8, !tbaa !8637, !nonnull !552, !align !674
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %i.ze = load ptr, ptr %i.pq, align 8, !tbaa !11633, !nonnull !552, !align !674 ; 5 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !2367
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 58
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 59
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.zm = trunc nuw i8 %i.zl to i1
  br i1 %i.zm, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.zn = getelementptr inbounds nuw i8, ptr %i.ze, i64 64
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !2373
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox9functions24MapUpdateVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EERKNSI_ILb1ESB_EE:bb.a
  store i64 0, ptr %i.cm, align 8, !tbaa !1394
  call void @_ZdlPvm(ptr noundef nonnull %i.aaw, i64 noundef %.0.i.i.i.i.i) #34
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev.exit: ; preds = %._crit_edge496, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.abm = load ptr, ptr %i.m, align 8, !tbaa !25610 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 15
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !1391
  %i.abp = icmp eq i8 %i.abo, -1
  br i1 %i.abp, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev.exit
  %i.abq = load i64, ptr %i.n, align 8, !tbaa !1394 ; 2 uses
  %i.abr = and i64 %i.abq, 255                    ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.abs, align 1
  %i.abt = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.abr
  %i.abu = xor i64 %notmask.i.i.i.i.i, -1
  %i.abv = lshr i64 %i.abu, 12
  %i.abw = add nuw nsw i64 %i.abv, 1
  %i.abx = icmp ult i64 %i.abq, 256
  br i1 %i.abx, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i64 %i.abr, ptr %i.n, align 8, !tbaa !1394
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.abs, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.dw, %bb.dv
  %.pre-phi21.i.i.i.i = phi i64 [ %.pre20.i.i.i.i, %bb.dw ], [ %i.abt, %bb.dv ]
  %i.aby = icmp eq i64 %i.abr, 0
  %i.abz = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.abz
  %.neg18.i.i.i.i = shl i64 -64, %i.abr
  %.0.i.neg.i.i.i.i = select i1 %i.aby, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.m, align 8, !tbaa !25610
  store i64 0, ptr %i.n, align 8, !tbaa !1394
  %i.aca = and i64 %.0.i.neg.i.i.i.i, -8
  %i.acb = mul nuw nsw i64 %i.abt, 24
  %i.acc = mul i64 %i.acb, %i.abw
  %i.acd = sub i64 %i.acc, %i.aca
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef %i.acd) #34
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  ret void

bb.dx:                                            ; preds = %bb.dc, %bb.dd, %bb.de, %bb.dr, %bb.bv
  %.pn75.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zb, %bb.de ], [ %.pn62.pn, %bb.dr ], [ %i.yz, %bb.dc ], [ %.pn75.pn, %bb.bv ], [ %i.za, %bb.dd ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.v
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.v ], [ %.pn75.pn.pn.pn.pn.pn, %bb.dx ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn85 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn82.pn, %bb.dy ]
  resume { ptr, i32 } %.pn85
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25610 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1391
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1394 ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1394
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !25610
  store i64 0, ptr %i.f, align 8, !tbaa !1394
  %i.q = and i64 %.0.i.neg.i.i.i, -8
  %i.r = mul nuw nsw i64 %i.j, 24
  %i.s = mul i64 %i.r, %i.m
  %i.t = sub i64 %i.s, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.t) #34
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %bb.a, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.3101") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1394 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25610
  %.pre132 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.i = and i64 %i.b, 255                        ; 10 uses
  %i.j = shl nuw i64 1, %i.i                      ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25610 ; 9 uses
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = load i64, ptr %4, align 8
  %.fr = freeze i64 %i.n                          ; 5 uses
  %i.o = trunc i64 %.fr to i32                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = and i64 %.fr, 4294967295
  %i.u = add nsw i64 %i.t, -4
  %.cast = ptrtoint ptr %i.r to i64
  br i1 %i.p, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.o, 5
  br i1 %i.v, label %.split.us.split.us, label %.split.us.split, !llvm.loop !25640

.split.us.split.us:                               ; preds = %.split.us, %bb.c
  %.0.i95.us.us = phi i64 [ %i.af, %bb.c ], [ %2, %.split.us ] ; 2 uses
  %.022.i94.us.us = phi i64 [ %i.ae, %bb.c ], [ %i.j, %.split.us ]
  %i.w = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i95.us.us, i64 range(i64 0, 256) %i.i)
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = load <16 x i8>, ptr %i.x, align 16       ; 2 uses
  %i.z = icmp eq <16 x i8> %i.y, %i.h
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = and i16 %i.aa, 4095                     ; 2 uses
  %.not6977.us.us = icmp eq i16 %i.ab, 0
  %i.ac = extractelement <16 x i8> %i.y, i64 15
  br i1 %.not6977.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %.lr.ph.us.us

.critedge.i._crit_edge.split.us.split.us.us.us:   ; preds = %.critedge.i.backedge.us.us.us.us, %.split.us.split.us
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.thread67, label %bb.c, !prof !741

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ae = add i64 %.022.i94.us.us, -1             ; 2 uses
  %i.af = add i64 %i.e, %.0.i95.us.us
  %.not.i.us.us = icmp eq i64 %i.ae, 0
  br i1 %.not.i.us.us, label %.thread67, label %.split.us.split.us, !llvm.loop !25641

.lr.ph.us.us:                                     ; preds = %.split.us.split.us
  %i.ag = zext nneg i16 %i.ab to i32
  %i.ah = icmp ne ptr %i.x, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us.us.us, %.lr.ph.us.us
  %.sroa.041.078.us.us.us.us = phi i32 [ %i.ag, %.lr.ph.us.us ], [ %i.ar, %.critedge.i.backedge.us.us.us.us ] ; 3 uses
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us.us.us, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !612
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ap
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !729

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.d
  %i.aq = add nsw i32 %.sroa.041.078.us.us.us.us, -1
  %i.ar = and i32 %i.aq, %.sroa.041.078.us.us.us.us ; 2 uses
  %.not69.us.us.us.us = icmp eq i32 %i.ar, 0
  br i1 %.not69.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.d, !llvm.loop !25640

.split.us.split:                                  ; preds = %.split.us, %bb.e
  %.0.i95.us = phi i64 [ %i.bb, %bb.e ], [ %2, %.split.us ] ; 2 uses
  %.022.i94.us = phi i64 [ %i.ba, %bb.e ], [ %i.j, %.split.us ]
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i95.us, i64 range(i64 0, 256) %i.i)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.as ; 3 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16     ; 2 uses
  %i.av = icmp eq <16 x i8> %i.au, %i.h
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 4095                     ; 2 uses
  %.not6977.us = icmp eq i16 %i.ax, 0
  %i.ay = extractelement <16 x i8> %i.au, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.split.us100, label %.lr.ph.us

.critedge.i._crit_edge.split.us.split.us100:      ; preds = %.critedge.i.backedge.us.us98, %.split.us.split
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.thread67, label %bb.e, !prof !741

bb.e:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us100
  %i.ba = add i64 %.022.i94.us, -1                ; 2 uses
  %i.bb = add i64 %i.e, %.0.i95.us
  %.not.i.us = icmp eq i64 %i.ba, 0
  br i1 %.not.i.us, label %.thread67, label %.split.us.split, !llvm.loop !25641

.lr.ph.us:                                        ; preds = %.split.us.split
  %i.bc = zext nneg i16 %i.ax to i32
  %i.bd = icmp ne ptr %i.at, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %.critedge.i.backedge.us.us98
  %.sroa.041.078.us.us96 = phi i32 [ %i.bc, %.lr.ph.us ], [ %i.bh, %.critedge.i.backedge.us.us98 ] ; 3 uses
  %i.bf = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us96, i1 true)
  %i.bg = add nsw i32 %.sroa.041.078.us.us96, -1
  %i.bh = and i32 %i.bg, %.sroa.041.078.us.us96   ; 2 uses
  %i.bi = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !612
  %.not.i.i.i.us.us97 = icmp eq i64 %.fr, %i.bn
  br i1 %.not.i.i.i.us.us97, label %bb.g, label %.critedge.i.backedge.us.us98, !prof !729

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !612
  %i.bq = icmp eq i64 %i.bp, %.cast
  br i1 %i.bq, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us98, !prof !11651

.critedge.i.backedge.us.us98:                     ; preds = %bb.g, %bb.f
  %.not69.us.us99 = icmp eq i32 %i.bh, 0
  br i1 %.not69.us.us99, label %.critedge.i._crit_edge.split.us.split.us100, label %bb.f, !llvm.loop !25640

.split:                                           ; preds = %bb.b, %bb.j
  %.0.i95 = phi i64 [ %i.cq, %bb.j ], [ %2, %bb.b ] ; 2 uses
  %.022.i94 = phi i64 [ %i.cp, %bb.j ], [ %i.j, %bb.b ]
  %i.br = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i95, i64 range(i64 0, 256) %i.i)
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.br ; 3 uses
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, %i.h
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.bw, 0
  %i.bx = extractelement <16 x i8> %i.bt, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.by = zext nneg i16 %i.bw to i32
  %i.bz = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.by, %.lr.ph ], [ %i.cd, %.critedge.i.backedge ] ; 3 uses
  %i.cb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.cc = add nsw i32 %.sroa.041.078, -1
  %i.cd = and i32 %i.cc, %.sroa.041.078           ; 2 uses
  %i.ce = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !612
  %.not.i.i.i = icmp eq i64 %.fr, %i.cj
  br i1 %.not.i.i.i, label %bb.i, label %.critedge.i.backedge, !prof !729

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.cm, i64 %i.u)
  %i.cn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cn, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !11651

.critedge.i.backedge:                             ; preds = %bb.i, %bb.h
  %.not69 = icmp eq i32 %i.cd, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !25640

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.co = icmp eq i8 %i.bx, 0
  br i1 %i.co, label %.thread67, label %bb.j, !prof !741

bb.j:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cp = add i64 %.022.i94, -1                   ; 2 uses
  %i.cq = add i64 %i.e, %.0.i95
  %.not.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i, label %.thread67, label %.split, !llvm.loop !25641

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread: ; preds = %bb.i, %bb.g, %bb.d
  %.us-phi = phi i64 [ %i.bi, %bb.g ], [ %i.ak, %bb.d ], [ %i.ce, %bb.i ] ; 2 uses
  %.us-phi79 = phi ptr [ %i.be, %bb.g ], [ %i.ai, %bb.d ], [ %i.ca, %bb.i ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.us-phi79, i64 %.us-phi
  br label %bb.r

.thread67:                                        ; preds = %bb.j, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us100, %bb.e, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.c, %..thread67_crit_edge
  %.pre-phi133 = phi i64 [ %.pre132, %..thread67_crit_edge ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us100 ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.j ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us100 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.j ]
  %i.cs = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us100 ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.l, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.j ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ct, align 1
  %i.cu = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cv = add i64 %.pre-phi133, -1
  %i.cw = lshr i64 %i.cv, 12
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = mul i64 %i.cx, %i.cu                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.cy
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.k

bb.k:                                             ; preds = %.thread67
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi133, i64 noundef %i.cu, i64 noundef %i.cy)
  %.pre129 = load ptr, ptr %i.cz, align 8, !tbaa !25610
  %.pre130 = load i64, ptr %i.a, align 8, !tbaa !1394
  %.pre134 = and i64 %.pre130, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.k
  %.pre-phi135 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre134, %bb.k ] ; 2 uses
  %i.da = phi ptr [ %i.cs, %.thread67 ], [ %.pre129, %bb.k ] ; 3 uses
  %i.db = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi135) ; 2 uses
  %i.dc = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.dd = load <16 x i8>, ptr %i.dc, align 16, !tbaa !17
  %i.de = icmp slt <16 x i8> %i.dd, zeroinitializer
  %i.df = bitcast <16 x i1> %i.de to i16
  %i.dg = and i16 %i.df, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.dg, 4095
  br i1 %.not70, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.dh = shl i64 %3, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.l
  %i.dj = phi i64 [ %i.db, %bb.l ], [ %i.dp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.l ], [ %i.do, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 15 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !11022 ; 2 uses
  %.not.i32 = icmp eq i8 %i.dm, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = add i8 %i.dm, 1
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !11022
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.m, %bb.n
  %i.do = add i64 %i.di, %.029                    ; 2 uses
  %i.dp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.do, i64 range(i64 0, 256) %.pre-phi135) ; 2 uses
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.dp ; 3 uses
  %i.dr = load <16 x i8>, ptr %i.dq, align 16     ; 2 uses
  %i.ds = icmp slt <16 x i8> %i.dr, zeroinitializer
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %i.du = and i16 %i.dt, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.du, 4095
  br i1 %.not71, label %bb.m, label %bb.o, !llvm.loop !25687

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.dv = extractelement <16 x i8> %i.dr, i64 14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %i.dx = add i8 %i.dv, 16
  store i8 %i.dx, ptr %i.dw, align 2, !tbaa !11026
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.dg, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.du, %bb.o ]
  %.1 = phi ptr [ %i.dc, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dq, %bb.o ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.dy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.dz = zext nneg i16 %i.dy to i64              ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.p
  %i.ed = trunc i64 %3 to i8
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dz ; 2 uses
  %i.eg = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !1394
  %i.ei = lshr i64 %i.eh, 8                       ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !3
  %i.ek = load ptr, ptr %1, align 8, !tbaa !25607, !nonnull !552, !noundef !552
  %i.el = and i64 %i.ei, 4294967295
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7227
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.eo, ptr %i.en, align 8, !tbaa !25654
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !1394 ; 2 uses
  %i.eq = and i64 %i.ep, -256
  %i.er = add i64 %i.eq, 256
  %i.es = and i64 %i.ep, 255
  %i.et = or disjoint i64 %i.er, %i.es
  store i64 %i.et, ptr %i.a, align 8, !tbaa !1394
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink166 = phi ptr [ %i.cr, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.ef, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.dz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink166, ptr %0, align 8, !tbaa !957
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eu, align 8, !tbaa !11027
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
end_hunk_18
begin_hunk_19_@llvm.ucmp.i32.i32
!526 = !{!527, !527, i64 0}
!527 = !{!"bool", !5, i64 0}
!528 = !{!"branch_weights", i32 1, i32 1048575}
!529 = !{!65, !65, i64 0}
!530 = !{!531, !532, i64 0}
!531 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !532, i64 0}
!532 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!533 = !{!11, !11, i64 0}
!534 = !{!535, !11, i64 24}
!535 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEE", !536, i64 0, !11, i64 24}
!536 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!537 = !{!536, !11, i64 16}
!538 = !{!539, !4, i64 8}
!539 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!540 = !{!539, !4, i64 12}
!541 = !{!542, !542, i64 0}
!542 = !{!"vtable pointer", !6, i64 0}
!543 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!544 = distinct !{null, null}
!545 = !{!546, !547, i64 0}
!546 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions26RemapKeysPrimitiveFunctionINS1_4exec10VectorExecEbEENS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEESH_EEEJSE_SH_SH_EEELN9__gnu_cxx12_Lock_policyE2EE", !547, i64 0, !531, i64 8}
!547 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEESG_EEEJSD_SG_SG_EEE", !11, i64 0}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions26RemapKeysPrimitiveFunctionINS2_4exec10VectorExecEbEENS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSF_NS2_5ArrayIbEESI_EEEJSF_SI_SI_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSS_: argument 0"}
!550 = distinct !{!550, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions26RemapKeysPrimitiveFunctionINS2_4exec10VectorExecEbEENS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSF_NS2_5ArrayIbEESI_EEEJSF_SI_SI_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSS_"}
!551 = !{i8 0, i8 2}
!552 = !{}
!553 = !{!547, !547, i64 0}
!554 = distinct !{null, null}
!555 = !{!556, !10, i64 8}
!556 = !{!"_ZTSSt9type_info", !10, i64 8}
!557 = !{!558, !527, i64 8}
!558 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEESG_EEEJSD_SG_SG_EEE", !559, i64 0, !527, i64 8, !560, i64 16, !4, i64 32, !563, i64 40, !566, i64 56}
!559 = !{!"_ZTSN8facebook5velox4core23ISimpleFunctionMetadataE"}
!560 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !561, i64 0}
!561 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !562, i64 0, !531, i64 8}
!562 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !11, i64 0}
!563 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !564, i64 0}
!564 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !565, i64 0, !531, i64 8}
!565 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!566 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !567, i64 0}
!567 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !568, i64 0}
!568 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !569, i64 0}
!569 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !570, i64 0, !570, i64 8, !570, i64 16}
!570 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !11, i64 0}
!571 = !{!572, !527, i64 1}
!572 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !527, i64 0, !527, i64 1, !527, i64 2, !12, i64 8}
!573 = !{!572, !12, i64 8}
!574 = !{!558, !4, i64 32}
!575 = !{!564, !565, i64 0}
!576 = distinct !{null, null, null, null}
!577 = !{!572, !527, i64 0}
!578 = !{!572, !527, i64 2}
!579 = !{!580, !582, i64 0}
!580 = !{!"_ZTSSt15_Rb_tree_header", !581, i64 0, !12, i64 32}
!581 = !{!"_ZTSSt18_Rb_tree_node_base", !582, i64 0, !583, i64 8, !583, i64 16, !583, i64 24}
!582 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!583 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!584 = !{!580, !583, i64 8}
!585 = !{!580, !583, i64 16}
!586 = !{!580, !583, i64 24}
!587 = !{!580, !12, i64 32}
!588 = !{!589}
!589 = distinct !{!589, !590, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!590 = distinct !{!590, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!591 = !{!592}
!592 = distinct !{!592, !593, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!593 = distinct !{!593, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!594 = !{!595}
!595 = distinct !{!595, !596, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!596 = distinct !{!596, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!597 = !{!595, !592, !589}
!598 = !{!599, !10, i64 40}
!599 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !600, i64 56}
!600 = !{!"_ZTSSt6locale", !601, i64 0}
!601 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!602 = !{!599, !10, i64 32}
!603 = !{!604, !604, i64 0}
!604 = !{!"p1 _ZTSN8facebook5velox4core19TypeAnalysisResultsE", !11, i64 0}
!605 = !{!606, !606, i64 0}
!606 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !11, i64 0}
!607 = !{!608, !608, i64 0}
!608 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !11, i64 0}
!609 = !{!70, !70, i64 0}
!610 = !{!581, !583, i64 8}
!611 = !{i64 0, i64 1, !526, i64 1, i64 1, !526, i64 2, i64 1, !526, i64 8, i64 8, !612}
!612 = !{!12, !12, i64 0}
!613 = !{!569, !570, i64 8}
!614 = !{!569, !570, i64 0}
!615 = !{!569, !570, i64 16}
!616 = distinct !{!616, !73}
!617 = !{!618, !619, i64 64}
!618 = !{!"_ZTSN8facebook5velox4exec17SignatureVariableE", !8, i64 0, !8, i64 32, !619, i64 64, !527, i64 65, !527, i64 66, !527, i64 67}
!619 = !{!"_ZTSN8facebook5velox4exec13ParameterTypeE", !5, i64 0}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!622 = distinct !{!622, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!623 = distinct !{!623, !73}
!624 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!625 = distinct !{!625, !73}
!626 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!627 = !{!628, !629, i64 0}
!628 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!629 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !630, i64 0}
!630 = !{!"any p2 pointer", !11, i64 0}
!631 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !632, i64 0}
!632 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!633 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !634, i64 0, !12, i64 8}
!634 = !{!"float", !5, i64 0}
!635 = !{!628, !12, i64 8}
!636 = !{!633, !634, i64 0}
!637 = !{!638, !639, i64 0}
!638 = !{!"_ZTSSt18_Bit_iterator_base", !639, i64 0, !4, i64 8}
!639 = !{!"p1 long", !11, i64 0}
!640 = !{!641, !639, i64 32}
!641 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !642, i64 0, !642, i64 16, !639, i64 32}
!642 = !{!"_ZTSSt13_Bit_iterator", !638, i64 0}
!643 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!644 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!645 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!646 = distinct !{null, null, null, null, null, null, null, null, null}
!647 = distinct !{!647, !73}
!648 = !{!570, !570, i64 0}
!649 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!650 = distinct !{!650, !73}
!651 = distinct !{null, null, null, null, null, null, null, null, null}
!652 = distinct !{!652, !73}
!653 = distinct !{!653, !73}
!654 = distinct !{!654, !73}
!655 = !{!561, !562, i64 0}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!658 = distinct !{!658, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!659 = !{!660, !12, i64 8}
!660 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResultsE", !572, i64 0, !661, i64 16, !563, i64 392, !665, i64 408}
!661 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !662, i64 0, !663, i64 8}
!662 = !{!"_ZTSSo"}
!663 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !599, i64 0, !664, i64 64, !8, i64 72}
!664 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!665 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !666, i64 0}
!666 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !667, i64 0}
!667 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !668, i64 0, !580, i64 8}
!668 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !669, i64 0}
!669 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!670 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!671 = distinct !{null, null, null}
!672 = !{!673, !604, i64 0}
!673 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEESG_EEEJSD_SG_SG_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISK_EEEUlvE1_", !604, i64 0, !606, i64 8, !608, i64 16}
!674 = !{i64 8}
!675 = !{!673, !606, i64 8}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!678 = distinct !{!678, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!681 = distinct !{!681, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!684 = distinct !{!684, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!685 = !{!683, !680, !677}
!686 = !{!673, !608, i64 16}
!687 = !{!688, !604, i64 0}
!688 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEESG_EEEJSD_SG_SG_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISK_EEEUlvE0_", !604, i64 0, !606, i64 8, !608, i64 16}
!689 = !{!688, !606, i64 8}
!690 = !{!691}
!691 = distinct !{!691, !692, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!692 = distinct !{!692, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!695 = distinct !{!695, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!698 = distinct !{!698, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!699 = !{!697, !694, !691}
!700 = !{!688, !608, i64 16}
!701 = !{!702, !604, i64 0}
!702 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEESG_EEEJSD_SG_SG_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISK_EEEUlvE_", !604, i64 0, !606, i64 8, !608, i64 16}
!703 = !{!702, !606, i64 8}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!706 = distinct !{!706, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!709 = distinct !{!709, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!710 = !{!711}
!711 = distinct !{!711, !712, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!712 = distinct !{!712, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!713 = !{!711, !708, !705}
!714 = !{!702, !608, i64 16}
!715 = !{!583, !583, i64 0}
!716 = distinct !{!716, !73}
!717 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!720 = distinct !{!720, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!721 = !{!722, !527, i64 32}
!722 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !527, i64 32}
!723 = !{!660, !527, i64 1}
!724 = distinct !{null}
!725 = distinct !{!725, !73}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!728 = distinct !{!728, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!729 = !{!"branch_weights", i32 2146410443, i32 1073205}
!730 = !{!618, !527, i64 65}
!731 = !{!618, !527, i64 66}
!732 = !{!618, !527, i64 67}
!733 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!734 = !{!735, !735, i64 0}
!735 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !11, i64 0}
!736 = !{!737, !738, i64 8}
!737 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !735, i64 0, !738, i64 8}
!738 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEEE", !11, i64 0}
!739 = !{!581, !583, i64 24}
!740 = distinct !{!740, !73}
!741 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!742 = !{!743}
!743 = distinct !{!743, !744, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!744 = distinct !{!744, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!745 = !{!746}
!746 = distinct !{!746, !744, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!747 = !{!743, !746}
!748 = distinct !{!748, !73}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!751 = distinct !{!751, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!752 = !{!753}
!753 = distinct !{!753, !751, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!754 = !{!750, !753}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!757 = distinct !{!757, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!758 = !{!759}
!759 = distinct !{!759, !757, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!760 = distinct !{!760, !73, !761, !762}
!761 = !{!"llvm.loop.isvectorized", i32 1}
!762 = !{!"llvm.loop.unroll.runtime.disable"}
!763 = distinct !{!763, !73, !761}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!766 = distinct !{!766, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!767 = !{!768}
!768 = distinct !{!768, !766, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!769 = distinct !{!769, !73, !761, !762}
!770 = distinct !{!770, !73, !761}
!771 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!772 = distinct !{null, null, null}
!773 = !{!581, !583, i64 16}
!774 = distinct !{!774, !73}
!775 = distinct !{!775, !73}
!776 = distinct !{!776, !73}
!777 = !{!778, !527, i64 104}
!778 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !527, i64 104}
!779 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!780 = !{!781, !782, i64 0}
!781 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !782, i64 0, !782, i64 8, !782, i64 16}
!782 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !11, i64 0}
!783 = !{!781, !782, i64 8}
!784 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!785 = distinct !{!785, !73}
!786 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!787 = !{!781, !782, i64 16}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!790 = distinct !{!790, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!791 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!792 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!793 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!794 = !{!795, !527, i64 96}
!795 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !8, i64 0, !796, i64 32, !799, i64 56, !527, i64 96}
!796 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !797, i64 0}
!797 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !798, i64 0}
!798 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !781, i64 0}
!799 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !800, i64 0}
!800 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !801, i64 0}
!801 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !802, i64 0}
!802 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !722, i64 0}
!803 = !{!782, !782, i64 0}
!804 = distinct !{null, null, null, null}
!805 = distinct !{!805, !73}
!806 = distinct !{null, null, null}
!807 = distinct !{null, null, null, null}
!808 = distinct !{null}
!809 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!810 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!811 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!812 = !{!813, !527, i64 232}
!813 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !814, i64 0, !815, i64 56, !796, i64 168, !819, i64 192, !527, i64 232}
!814 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !628, i64 0}
!815 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !816, i64 0}
!816 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !817, i64 0}
!817 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !818, i64 0}
!818 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !778, i64 0}
!819 = !{!"_ZTSSt6vectorIbSaIbEE", !820, i64 0}
!820 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !821, i64 0}
!821 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !641, i64 0}
!822 = !{!638, !4, i64 8}
!823 = distinct !{null}
!824 = distinct !{!824, !73}
!825 = distinct !{null, null}
!826 = distinct !{!826, !73}
!827 = distinct !{!827, !73}
!828 = distinct !{!828, !73}
!829 = !{!628, !12, i64 24}
!830 = !{!631, !632, i64 0}
!831 = distinct !{!831, !73}
!832 = !{!632, !632, i64 0}
!833 = !{!834, !12, i64 0}
!834 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !12, i64 0}
!835 = distinct !{!835, !73}
!836 = !{!837, !838, i64 0}
!837 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !838, i64 0, !839, i64 8}
!838 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !11, i64 0}
!839 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !11, i64 0}
!840 = !{!837, !839, i64 8}
!841 = distinct !{!841, !73}
!842 = !{!633, !12, i64 8}
!843 = !{!628, !632, i64 16}
!844 = !{!628, !632, i64 48}
!845 = distinct !{!845, !73}
!846 = distinct !{!846, !73}
!847 = !{!848, !629, i64 0}
!848 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!849 = !{!848, !12, i64 8}
!850 = !{!851, !629, i64 0}
!851 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!852 = !{!851, !12, i64 8}
!853 = !{!854, !629, i64 0}
!854 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!855 = !{!854, !12, i64 8}
!856 = !{!857, !629, i64 0}
!857 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!858 = !{!857, !12, i64 8}
!859 = !{!854, !632, i64 16}
!860 = distinct !{!860, !73}
!861 = !{!851, !632, i64 16}
!862 = distinct !{!862, !73}
!863 = !{!857, !632, i64 16}
!864 = distinct !{!864, !73}
!865 = !{!866, !632, i64 16}
!866 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!867 = distinct !{!867, !73}
!868 = !{!866, !629, i64 0}
!869 = !{!866, !12, i64 8}
!870 = !{!871, !632, i64 16}
!871 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !629, i64 0, !12, i64 8, !631, i64 16, !12, i64 24, !633, i64 32, !632, i64 48}
!872 = distinct !{!872, !73}
!873 = !{!871, !629, i64 0}
!874 = !{!871, !12, i64 8}
!875 = !{!848, !632, i64 16}
!876 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!877 = distinct !{!877, !73}
!878 = distinct !{!878, !879}
!879 = !{!"llvm.loop.peeled.count", i32 1}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!882 = distinct !{!882, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!883 = !{!884}
!884 = distinct !{!884, !885, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!885 = distinct !{!885, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!886 = !{!884, !881}
!887 = !{!888, !12, i64 8}
!888 = !{!"_ZTSSi", !12, i64 8}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26RemapKeysPrimitiveFunctionINS3_10VectorExecEbEESF_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSM_NS2_5ArrayIbEESP_EEEJSM_SP_SP_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISZ_EERKST_INS3_17SignatureVariableESaIS14_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1C_E4typeEOS1D_DpOS1E_: argument 0"}
!891 = distinct !{!891, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26RemapKeysPrimitiveFunctionINS3_10VectorExecEbEESF_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSM_NS2_5ArrayIbEESP_EEEJSM_SP_SP_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISZ_EERKST_INS3_17SignatureVariableESaIS14_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1C_E4typeEOS1D_DpOS1E_"}
!892 = !{!893, !895, !897, !890}
!893 = distinct !{!893, !894, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions26RemapKeysPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEESI_EEEJSF_SI_SI_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!894 = distinct !{!894, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions26RemapKeysPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEESI_EEEJSF_SI_SI_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!895 = distinct !{!895, !896, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions26RemapKeysPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEESJ_EEEJSG_SJ_SJ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS1_17SignatureVariableESaISY_EEbENKUlvE_clEv: argument 0"}
!896 = distinct !{!896, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions26RemapKeysPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEESJ_EEEJSG_SJ_SJ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS1_17SignatureVariableESaISY_EEbENKUlvE_clEv"}
!897 = distinct !{!897, !898, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26RemapKeysPrimitiveFunctionINS3_10VectorExecEbEES9_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSG_NS2_5ArrayIbEESJ_EEEJSG_SJ_SJ_EEEEESt14default_deleteISM_EERZNS3_22SimpleFunctionRegistry16registerFunctionISM_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!898 = distinct !{!898, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26RemapKeysPrimitiveFunctionINS3_10VectorExecEbEES9_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSG_NS2_5ArrayIbEESJ_EEEJSG_SJ_SJ_EEEEESt14default_deleteISM_EERZNS3_22SimpleFunctionRegistry16registerFunctionISM_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!899 = !{!900, !901, i64 0}
!900 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec28SimpleFunctionAdapterFactoryELb0EE", !901, i64 0}
!901 = !{!"p1 _ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE", !11, i64 0}
!902 = !{!903}
!903 = distinct !{!903, !904, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions26RemapKeysPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEESI_EEEJSF_SI_SI_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISQ_EERKNS4_11QueryConfigERKSM_ISN_INS1_10BaseVectorEESaISZ_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!904 = distinct !{!904, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions26RemapKeysPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEESI_EEEJSF_SI_SI_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISQ_EERKNS4_11QueryConfigERKSM_ISN_INS1_10BaseVectorEESaISZ_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!905 = !{!906, !906, i64 0}
!906 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecEbEES6_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEESG_EEEJSD_SG_SG_EEE", !11, i64 0}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions26RemapKeysPrimitiveFunctionINS1_4exec10VectorExecEbEES7_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEESH_EEEJSE_SH_SH_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!909 = distinct !{!909, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions26RemapKeysPrimitiveFunctionINS1_4exec10VectorExecEbEES7_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEESH_EEEJSE_SH_SH_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!910 = !{!911, !11, i64 0}
!911 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !11, i64 0}
!912 = !{!913, !914, i64 0}
!913 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !914, i64 0}
!914 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !11, i64 0}
!915 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26RemapKeysPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEESH_EEEJSE_SH_SH_EEEED2Ev}
!916 = !{!917, !918, i64 8}
!917 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !918, i64 0, !918, i64 8, !918, i64 16}
!918 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !11, i64 0}
!919 = !{!917, !918, i64 0}
!920 = !{!921, !922, i64 0}
!921 = !{!"_ZTSNSt12_Vector_baseISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE17_Vector_impl_dataE", !922, i64 0, !922, i64 8, !922, i64 16}
!922 = !{!"p1 _ZTSSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE", !11, i64 0}
!923 = !{!921, !922, i64 8}
!924 = !{!925, !527, i64 16}
!925 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec18LocalDecodedVectorEE", !5, i64 0, !527, i64 16}
!926 = distinct !{!926, !73}
!927 = !{!921, !922, i64 16}
!928 = distinct !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26RemapKeysPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEESH_EEEJSE_SH_SH_EEEE12ApplyContextD2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!929 = !{ptr @_ZN8facebook5velox4exec12VectorWriterINS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev}
!930 = distinct !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26RemapKeysPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEESH_EEEJSE_SH_SH_EEEE12ApplyContextD2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEvED2Ev, null, null, null}
!931 = !{!932, !527, i64 24}
!932 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorImSaImEEE", !5, i64 0, !527, i64 24}
!933 = !{!934, !935, i64 0}
end_hunk_19
