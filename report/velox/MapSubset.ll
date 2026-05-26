inline.NumInlined: 38214
inline.NumDeleted: 10273
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #35
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.y ], [ %i.cg, %bb.x ] ; 2 uses
  %i.ci = load i8, ptr %i.r, align 8, !tbaa !212, !range !56, !noundef !57
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.r, align 8, !tbaa !212
  br i1 %i.cj, label %bb.aa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %bb.aa
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #42
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18: ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.cp = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.f
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !16
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ce, %bb.v ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.ab
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN8facebook5velox3MAPESt10shared_ptrIKNS0_4TypeEES4_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.42") align 8, ptr noundef, ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare void @_ZN8facebook5velox4core6detail14strToLowerCopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

declare void @_ZN8facebook5velox16createScalarTypeENS0_8TypeKindE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8, i8 noundef signext) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #35, !inline_history !215
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #35, !inline_history !215
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.124", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !216

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !122
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !14, !noalias !217 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ak = load ptr, ptr %1, align 8, !tbaa !11
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !11
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !221, !range !56, !noundef !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !221, !range !56, !noundef !57
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !222, !range !56, !noundef !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !222, !range !56, !noundef !57
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !220

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !223, !range !56, !noundef !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !223, !range !56, !noundef !57
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !224

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !217
  %i.bm = load ptr, ptr %1, align 8, !tbaa !11, !noalias !217
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !217
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !217
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.14, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !217
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.14) #40
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  unreachable

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #11

declare void @_ZN8facebook5velox7UNKNOWNEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8) local_unnamed_addr #11

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !207

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #35 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !207

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #35 ; 2 uses
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
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !870  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !875
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #40
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !880
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.t, align 8, !tbaa !6940
  br label %bb.s

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !884
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !870  ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !870    ; 3 uses
  br i1 %.not28, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !870
  store ptr %i.y, ptr %i.a, align 8, !tbaa !870
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !875
  %i.ab = and i8 %i.aa, 2
  %.not.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i13, label %bb.l, label %bb.j, !prof !232

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #40
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
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !880
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !880
  %i.ah = sext i32 %.sroa.speculated to i64
  %i.ai = shl nsw i64 %i.ah, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !870  ; 7 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !870
  store ptr null, ptr %4, align 8, !tbaa !870
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !870
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !906

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !907
  %.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !46
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.n, !inline_history !906

bb.n:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %.thread, %bb.l, %bb.m, %.noexc.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !870 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !875
  %i.ba = and i8 %i.az, 2
  %.not.i15 = icmp eq i8 %i.ba, 0
  br i1 %.not.i15, label %bb.p, label %bb.o, !prof !232

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #40
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !880
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !6940
  %i.be = load ptr, ptr %4, align 8, !tbaa !870   ; 7 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc.i unwind label %bb.r, !inline_history !906

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !907
  %.not.i.i19 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !46
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %..i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !906

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.p, %bb.q, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit
  ret void

bb.t:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.ac, %bb.k ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
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
  %i.e = load atomic i8, ptr %i.d seq_cst, align 1, !range !56, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35, !noalias !6982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35, !noalias !6982
  %i.h = load atomic i32, ptr %i.g acquire, align 8, !noalias !6982 ; 4 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !3, !noalias !6982
  %i.i = and i32 %i.h, -1312
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !232

bb.c:                                             ; preds = %bb.b
  %i.k = or disjoint i32 %i.h, 128
  %i.l = cmpxchg ptr %i.g, i32 %i.h, i32 %i.k seq_cst seq_cst, align 4, !noalias !6982 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !220

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = extractvalue { i32, i1 } %i.l, 0
  store i32 %i.n, ptr %i.b, align 4, !noalias !6982
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.o = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !6982 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35, !noalias !6982
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35, !noalias !6982
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !421  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i32, ptr %i.r, align 8, !tbaa !424  ; 6 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %i.x, i1 false), !tbaa !117
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !117
  %i.ae = and i64 %i.ad, %notmask.i37.i.i.i
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !117
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.af, align 4, !tbaa !432
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.ag, align 8, !tbaa !433
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i16 256, ptr %i.ah, align 4
  store atomic i8 1, ptr %i.d seq_cst, align 1
  store atomic i8 0, ptr %i.c seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.ai = atomicrmw and ptr %i.g, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aj = and i32 %i.ai, -401
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %i.ak = and i32 %i.ai, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.h, !prof !232

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
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
  %5 = alloca %"class.folly::LockedPtr.1860", align 8 ; 6 uses
  %6 = alloca %"class.folly::LockedPtr", align 8  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1, !range !56, !noundef !57
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6990)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !6993, !alias.scope !6998
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !6999, !alias.scope !6998
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !7000, !alias.scope !6998
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !6998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35, !noalias !6998
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !6998 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !6998
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !6998 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !6998
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !6999, !alias.scope !6998
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35, !noalias !6998
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !6998
  %i.u = load ptr, ptr %5, align 8, !tbaa !6993   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !432
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !433
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !424
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !6999
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !7001

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !7000
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !7001

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #43
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !7002)
  call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  store ptr %i.j, ptr %6, align 8, !tbaa !7008, !alias.scope !7010
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !7011, !alias.scope !7010
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !7010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35, !noalias !7010
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !7010 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !7010
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !232

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !7010 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !220

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !7010
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !7010 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35, !noalias !7010
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !7010
  store i8 1, ptr %i.ay, align 8, !tbaa !7011, !alias.scope !7010
  %i.bh = load ptr, ptr %6, align 8, !tbaa !7008  ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !432
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !433
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !424
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !56, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = and i1 %2, %i.bs
  %i.bu = zext i1 %i.bt to i8
  store atomic i8 %i.bu, ptr %i.f seq_cst, align 8
  %i.bv = load ptr, ptr %6, align 8, !tbaa !7008  ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bv, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg.i.i24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !432
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !433
  %i.cb = icmp sge i32 %i.by, %i.ca
  %i.cc = zext i1 %i.cb to i8
  store atomic i8 %i.cc, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !7011, !range !56
  %i.cd = trunc nuw i8 %.pre to i1
  br i1 %i.cd, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.ce = phi ptr [ %i.bv, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.cf = atomicrmw and ptr %i.ce, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cg = and i32 %i.cf, -401
  store i32 %i.cg, ptr %i.c, align 4, !tbaa !3
  %i.ch = and i32 %i.cf, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !232

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #43
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.582", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1231 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1231
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !870  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !875
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !870  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !920
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !870  ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !870
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
  store ptr %i.w, ptr %1, align 8, !tbaa !1180
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1183
  %i.z = load ptr, ptr %2, align 8, !tbaa !870    ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !870
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !1181
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1180  ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1181 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !870 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !906

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !907
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE8toStringB5cxx11Ei:bb.a

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.y, i64 %i.z, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !14, !alias.scope !7096
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ak = load ptr, ptr %7, align 8, !tbaa !11
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.ak, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.n
  %i.an = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit

bb.o:                                             ; preds = %.noexc3.i.i, %.noexc.i.i, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.p:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aa
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.p
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.as, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %.body

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !7099)
  call void @llvm.experimental.noalias.scope.decl(metadata !7102)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !7, !alias.scope !7105
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !14, !alias.scope !7105
  store i8 0, ptr %i.ax, align 8, !tbaa !16, !alias.scope !7105
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !103, !noalias !7105 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !7105 ; 2 uses
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  %.08.i.i.i = select i1 %i.bd, ptr %i.ba, ptr %i.bc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107, !noalias !7105 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !7105 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !16, !alias.scope !7105
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #42
  br label %.body

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.s, %bb.q
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !46
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %6, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !46
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #42
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #35
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %6, align 8, !tbaa !46
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %6, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !378
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cl) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

.body:                                            ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn8 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.p, %bb.h ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.t

bb.t:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %.body ]
  resume { ptr, i32 } %.pn10
}

declare void @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resetDataDependentFlagsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.c, align 8, !tbaa !1259
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.d, align 8, !tbaa !1259
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.e, align 8, !tbaa !1259
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.f, align 8, !tbaa !1259
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 0, ptr %i.g, align 1, !tbaa !419
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7109)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !7008, !alias.scope !7112
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !7011, !alias.scope !7112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !7112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35, !noalias !7112
  %i.j = load atomic i32, ptr %i.h acquire, align 8, !noalias !7112 ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !3, !noalias !7112
  %i.k = and i32 %i.j, -1312
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !232

bb.c:                                             ; preds = %bb.b
  %i.m = or disjoint i32 %i.j, 128
  %i.n = cmpxchg ptr %i.h, i32 %i.j, i32 %i.m seq_cst seq_cst, align 4, !noalias !7112 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !220

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = extractvalue { i32, i1 } %i.n, 0
  store i32 %i.p, ptr %i.b, align 4, !noalias !7112
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.q = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !7112 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35, !noalias !7112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !7112
  store i8 1, ptr %i.i, align 8, !tbaa !7011, !alias.scope !7112
  %i.r = load ptr, ptr %3, align 8, !tbaa !7008   ; 4 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i ; 3 uses
  invoke void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.s, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !432
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !433
  %i.x = icmp sge i32 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.z = zext i1 %i.x to i8
  store atomic i8 %i.z, ptr %i.y seq_cst, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.aa = atomicrmw and ptr %i.r, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ab = and i32 %i.aa, -401
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !3
  %i.ac = and i32 %i.aa, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.f, !prof !232

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.af

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE17invalidateIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE16retainedSizeImplERm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !870  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !920
  br label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit

_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !870  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !920
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit ]
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1231 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1231 ; 2 uses
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
  %i.r = load ptr, ptr %.sroa.07.010, align 8, !tbaa !870
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !920  ; 2 uses
  %i.u = add i64 %i.t, %.011                      ; 2 uses
  %i.v = add i64 %i.q, %i.t                       ; 2 uses
  store i64 %i.v, ptr %1, align 8, !tbaa !117
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.o
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE7valueAtEi(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6940
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7113
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.d = load atomic i32, ptr %i.c monotonic, align 8 ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !3
  %.not.i.i.i = icmp ult i32 %i.d, 2048
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i, label %bb.b, !prof !232

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !421  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox9AsciiInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !423
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #42
  br label %_ZN8facebook5velox9AsciiInfoD2Ev.exit

_ZN8facebook5velox9AsciiInfoD2Ev.exit:            ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i.i, %bb.d
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions24MapSubsetVarcharFunctionINS0_4exec10VectorExecEE10initializeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISA_EERKNS0_4core11QueryConfigEPKNS3_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEPKNS3_9ArrayViewILb1ESK_EE:bb.a
  store i32 %i.g, ptr %i.o, align 4, !tbaa !11020, !noalias !11012
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.i, ptr %i.p, align 8, !tbaa !11021, !noalias !11012
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.m, ptr %i.q, align 8, !tbaa !671, !noalias !11012
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.e, ptr %i.r, align 8, !tbaa !11022, !noalias !11012
  call void @_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKS7_SA_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::SkipNullsIterator.3229") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35, !noalias !11012
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35, !noalias !11012
  %i.s = load i32, ptr %i.f, align 8, !tbaa !11016, !noalias !11024
  %i.t = load i32, ptr %i.b, align 4, !tbaa !11010, !noalias !11024
  %i.u = add nsw i32 %i.t, %i.s                   ; 2 uses
  %i.v = load i32, ptr %13, align 8, !tbaa !11017 ; 2 uses
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
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !11022
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.ak

bb.c:                                             ; preds = %.lr.ph115, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit
  %i.ao = phi ptr [ %.pre, %.lr.ph115 ], [ %i.ho, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ]
  %i.ap = phi i32 [ %i.v, %.lr.ph115 ], [ %.lcssa, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !11027, !nonnull !57, !align !179 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !728
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 58
  %i.av = load i8, ptr %i.au, align 2, !tbaa !458, !range !56, !noundef !57
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 59
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !459, !range !56, !noundef !57
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !460
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !461
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
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !16 ; 7 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %14, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.y, align 8
  %i.bj = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 4 uses
  %i.bk = icmp ult i32 %i.bj, 13
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35, !noalias !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !11031
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %9, align 8, !noalias !11031
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.al, align 8, !noalias !11031
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i, 15
  %i.bm = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef nonnull %i.am, i64 noundef %i.bl), !noalias !11031 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !11031
  %i.bn = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bm) ; 2 uses
  %i.bo = lshr i64 %i.bn, 24
  %i.bp = or i64 %i.bo, 128
  %i.bq = add i64 %i.bn, %i.bm
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3236") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 %i.bq, i64 %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %14), !noalias !11028
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35, !noalias !11028
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !476
  %i.bs = lshr i64 %i.br, 8
  switch i64 %i.bs, label %bb.k [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !11038
  %i.bu = and i64 %i.bt, -16
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 16, !tbaa !117
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, %i.bw
  br i1 %.not.i.i.i, label %bb.j, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !16
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
  %i.cp = load i64, ptr %i.aa, align 8, !tbaa !476
  %i.cq = and i64 %i.cp, 255                      ; 3 uses
  %i.cr = shl nuw i64 1, %i.cq                    ; 2 uses
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !10966 ; 2 uses
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
  br i1 %i.dl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %bb.l, !prof !232

bb.l:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.dm = add i64 %.023.i.i105.us, -1             ; 2 uses
  %i.dn = add i64 %i.cl, %.0.i.i106.us
  %.not.i.i.us = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %.split.us, !llvm.loop !11039

.lr.ph.us:                                        ; preds = %.split.us
  %i.do = zext nneg i16 %i.dj to i32              ; 2 uses
  %i.dp = icmp ne ptr %i.dd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.dp)
  br i1 %i.da, label %.lr.ph.split.us.split.us.us, label %.lr.ph.split.us.split.us112, !llvm.loop !11040

.lr.ph.split.us.split.us112:                      ; preds = %.lr.ph.us, %.critedge.i.i.backedge.us.us109
  %.sroa.048.0103.us.us107 = phi i32 [ %i.ds, %.critedge.i.i.backedge.us.us109 ], [ %i.do, %.lr.ph.us ] ; 3 uses
  %i.dq = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.048.0103.us.us107, i1 true)
  %i.dr = add nsw i32 %.sroa.048.0103.us.us107, -1
  %i.ds = and i32 %i.dr, %.sroa.048.0103.us.us107 ; 2 uses
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !117
  %.not.i.i.i16.us.us108 = icmp eq i64 %.fr, %i.dv
  br i1 %.not.i.i.i16.us.us108, label %bb.m, label %.critedge.i.i.backedge.us.us109, !prof !220

bb.m:                                             ; preds = %.lr.ph.split.us.split.us112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !117
  %i.dy = icmp eq i64 %i.dx, %.cast
  br i1 %i.dy, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us109, !prof !11041

.critedge.i.i.backedge.us.us109:                  ; preds = %bb.m, %.lr.ph.split.us.split.us112
  %.not96.us.us110 = icmp eq i32 %i.ds, 0
  br i1 %.not96.us.us110, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.split.us.split.us112, !llvm.loop !11040

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.us, %.critedge.i.i.backedge.us.us.us
  %.sroa.048.0103.us.us.us = phi i32 [ %i.ee, %.critedge.i.i.backedge.us.us.us ], [ %i.do, %.lr.ph.us ] ; 3 uses
  %i.dz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.048.0103.us.us.us, i1 true)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !117
  %.not.i.i.i16.us.us.us = icmp eq i64 %.fr, %i.ec
  br i1 %.not.i.i.i16.us.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us.us, !prof !220

.critedge.i.i.backedge.us.us.us:                  ; preds = %.lr.ph.split.us.split.us.us
  %i.ed = add nsw i32 %.sroa.048.0103.us.us.us, -1
  %i.ee = and i32 %i.ed, %.sroa.048.0103.us.us.us ; 2 uses
  %.not96.us.us.us = icmp eq i32 %i.ee, 0
  br i1 %.not96.us.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.split.us.split.us.us, !llvm.loop !11040

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
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !117
  %.not.i.i.i16 = icmp eq i64 %.fr, %i.ev
  br i1 %.not.i.i.i16, label %bb.o, label %.critedge.i.i.backedge, !prof !220

bb.o:                                             ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %bcmp.i.i.i18 = call i32 @bcmp(ptr nonnull %i.cx, ptr nonnull %i.ey, i64 %i.cz)
  %i.ez = icmp eq i32 %bcmp.i.i.i18, 0
  br i1 %i.ez, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge, !prof !11041

.critedge.i.i.backedge:                           ; preds = %bb.o, %bb.n
  %.not96 = icmp eq i32 %i.es, 0
  br i1 %.not96, label %.critedge.i.i._crit_edge.split, label %bb.n, !llvm.loop !11040

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split
  %i.fa = icmp eq i8 %i.en, 0
  br i1 %i.fa, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %bb.p, !prof !232

bb.p:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.fb = add i64 %.023.i.i105, -1                ; 2 uses
  %i.fc = add i64 %i.cl, %.0.i.i106
  %.not.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80, label %.split, !llvm.loop !11039

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80: ; preds = %.critedge.i.i._crit_edge.split, %bb.p, %bb.l, %.critedge.i.i._crit_edge.split.us.us, %bb.j, %bb.i, %bb.h
  %.in.in = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ], [ %.fr, %bb.l ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.j ], [ %.fr, %.critedge.i.i._crit_edge.split.us.us ], [ %.fr, %bb.p ], [ %.fr, %.critedge.i.i._crit_edge.split ]
  %i.fd = phi ptr [ %.sroa.2.0.copyload.i.i.i.i, %bb.h ], [ %i.cw, %bb.l ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.i ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.j ], [ %i.cw, %.critedge.i.i._crit_edge.split.us.us ], [ %i.cw, %bb.p ], [ %i.cw, %.critedge.i.i._crit_edge.split ]
  %i.fe = phi i32 [ %i.bj, %bb.h ], [ %i.db, %bb.l ], [ %i.bj, %bb.i ], [ %i.bj, %bb.j ], [ %i.db, %.critedge.i.i._crit_edge.split.us.us ], [ %i.db, %bb.p ], [ %i.db, %.critedge.i.i._crit_edge.split ] ; 4 uses
  %.in = lshr i64 %.in.in, 32
  %i.ff = trunc i64 %.in to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.fg = icmp ult i32 %i.fe, 13
  %i.fh = select i1 %i.fg, ptr %i.ac, ptr %i.fd   ; 2 uses
  %i.fi = zext i32 %i.fe to i64                   ; 5 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !7, !alias.scope !11042
  %i.fj = icmp eq ptr %i.fh, null
  br i1 %i.fj, label %.noexc.i, label %bb.q

.noexc.i:                                         ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #40
  unreachable

bb.q:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread80
  %i.fk = icmp ugt i32 %i.fe, 15
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.q
  %i.fl = add nuw nsw i64 %i.fi, 1
  %i.fm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #41 ; 2 uses
  store ptr %i.fm, ptr %15, align 8, !tbaa !11, !alias.scope !11042
  store i64 %i.fi, ptr %i.ad, align 8, !tbaa !16, !alias.scope !11042
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.q
  %i.fn = phi ptr [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.ad, %bb.q ] ; 3 uses
  switch i32 %i.fe, label %bb.s [
    i32 1, label %bb.r
    i32 0, label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  store i8 %i.ff, ptr %i.fn, align 1, !tbaa !16
  br label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %i.fh, i64 %i.fi, i1 false)
  br label %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit

_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.r, %bb.s
  store i64 %i.fi, ptr %i.ae, align 8, !tbaa !14, !alias.scope !11042
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fi
  store i8 0, ptr %i.fo, align 1, !tbaa !16
  %i.fp = load ptr, ptr %i.af, align 8, !tbaa !21 ; 6 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !20
  %.not.i.i20 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i20, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 3 uses
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !7
  %i.fs = load ptr, ptr %15, align 8, !tbaa !11   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ad
  br i1 %i.ft, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !14 ; 3 uses
  %i.fv = icmp ult i64 %i.fu, 16
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add nuw nsw i64 %i.fu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  store ptr %i.fs, ptr %i.fp, align 8, !tbaa !11
  %i.fx = load i64, ptr %i.ad, align 8, !tbaa !16
  store i64 %i.fx, ptr %i.fr, align 8, !tbaa !16
  %.pre121 = load i64, ptr %i.ae, align 8, !tbaa !14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.fy = phi i64 [ %.pre121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fu, %bb.u ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !14
  store ptr %i.ad, ptr %15, align 8, !tbaa !11
  store i64 0, ptr %i.ae, align 8, !tbaa !14
  %i.ga = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store ptr %i.gb, ptr %i.af, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %_ZNK8facebook5velox10StringView3strB5cxx11Ev.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ad

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.v
  %.pre122 = load ptr, ptr %15, align 8, !tbaa !11 ; 2 uses
  %i.gc = icmp eq ptr %.pre122, %i.ad
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gd = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %.pre122, i64 noundef %i.ge) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.gf = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !11 ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !14 ; 2 uses
  %i.gk = trunc i64 %i.gj to i32                  ; 5 uses
  store i32 %i.gk, ptr %16, align 8, !tbaa !7412
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.w, label %bb.z, !prof !15

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !11045
  store i32 %i.gk, ptr %7, align 16, !tbaa !16, !noalias !11045
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.gm, align 16, !tbaa !16, !noalias !11045
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.53, i64 11, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !11045
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.53) #40
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %bb.y
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !16
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %common.resume

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gt = icmp samesign ult i32 %i.gk, 13
  br i1 %i.gt, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ah, align 4
  %i.gu = icmp eq i32 %i.gk, 0
  br i1 %i.gu, label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.ai, align 8, !tbaa !16
  %i.gv = and i64 %i.gj, 15
  %i.gw = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.gv) #35, !srcloc !6939
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 1 %i.gh, i64 %i.gw, i1 false)
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ac:                                            ; preds = %bb.z
  %i.gx = load i32, ptr %i.gh, align 1
  store i32 %i.gx, ptr %i.ah, align 4
  store ptr %i.gh, ptr %i.ai, align 8, !tbaa !16
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !11048
  %.sroa.0.0.copyload.i.i.i.i.i.i22 = load i64, ptr %16, align 8, !noalias !11051 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i24 = load ptr, ptr %i.ai, align 8, !tbaa !16, !noalias !11051 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !11051
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKS7_SA_:bb.a
  %i.t = and i64 %i.f, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = and i64 %i.s, %i.u
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 59
  %i.x = load i8, ptr %i.w, align 1, !tbaa !459, !range !56, !noundef !57
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.i, align 8, !tbaa !117
  %i.aa = and i64 %i.z, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !461
  %i.ad = shl nsw i64 %i.f, 2
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !117
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.al, %i.aj
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.in = phi i64 [ %i.v, %bb.d ], [ %i.aa, %bb.f ], [ %i.am, %bb.g ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.h, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit
  %i.an = load i32, ptr %0, align 8, !tbaa !11017, !noalias !11068
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !11017, !noalias !11073
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !11073
  %i.ar = sext i32 %i.an to i64
  %sext.i.i = sext i32 %i.ap to i64               ; 4 uses
  %indvars.iv.next.i.i9 = add nsw i64 %i.ar, 1    ; 2 uses
  %i.as = icmp eq i64 %indvars.iv.next.i.i9, %sext.i.i
  br i1 %i.as, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !11027, !noalias !11073, !nonnull !57, !align !179 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !735, !noalias !11073 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 59
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %.lr.ph

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i10, 1 ; 2 uses
  %i.ba = icmp eq i64 %indvars.iv.next.i.i, %sext.i.i
  br i1 %i.ba, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, label %.lr.ph, !llvm.loop !11061

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv.next.i.i10 = phi i64 [ %indvars.iv.next.i.i, %bb.i ], [ %indvars.iv.next.i.i9, %.lr.ph.preheader ] ; 6 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bb = load i8, ptr %i.aw, align 2, !tbaa !458, !range !56, !noalias !11073, !noundef !57
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr %i.ax, align 1, !range !56, !noalias !11073
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i.i.i = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = lshr i64 %indvars.iv.next.i.i10, 6
  %i.bg = and i64 %i.bf, 67108863
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !117, !noalias !11073
  %i.bj = and i64 %indvars.iv.next.i.i10, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bi, %i.bk
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.ay, align 1, !tbaa !459, !range !56, !noalias !11073, !noundef !57
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = load i64, ptr %i.av, align 8, !tbaa !117, !noalias !11073
  %i.bp = and i64 %i.bo, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !461, !noalias !11073
  %i.br = shl nsw i64 %indvars.iv.next.i.i10, 2
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !11073
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 6
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !117, !noalias !11073
  %i.by = and i64 %i.bu, 63
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bx
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in.i.i = phi i64 [ %i.bl, %bb.k ], [ %i.bp, %bb.m ], [ %i.ca, %bb.n ]
  %.0.i.i.i.not.i.i = icmp eq i64 %.0.i.i.i.in.i.i, 0
  br i1 %.0.i.i.i.not.i.i, label %bb.i, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge, !llvm.loop !11061

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, !llvm.loop !11061

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit: ; preds = %.lr.ph, %bb.i, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge, %bb.h
  %indvars.iv.next.i.i.lcssa = phi i64 [ %sext.i.i, %bb.h ], [ %indvars.iv.next.i.i10, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i.i._ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit_crit_edge ], [ %indvars.iv.next.i.i10, %.lr.ph ], [ %sext.i.i, %bb.i ]
  %i.cb = trunc nsw i64 %indvars.iv.next.i.i.lcssa to i32
  store i32 %i.cb, ptr %0, align 8, !tbaa !11017, !noalias !11073
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.thread.loopexit, %bb.b, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.3236") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !476  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !10966 ; 5 uses
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
  br i1 %i.s, label %.split.us.split.us, label %.split.us.split, !llvm.loop !11040

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
  br i1 %i.ac, label %.thread66, label %bb.c, !prof !232

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ad = add i64 %.023.i88.us.us, -1             ; 2 uses
  %i.ae = add i64 %i.e, %.0.i89.us.us
  %.not.i.us.us = icmp eq i64 %i.ad, 0
  br i1 %.not.i.us.us, label %.thread66, label %.split.us.split.us, !llvm.loop !11039

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
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !117
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ak
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !220

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.d
  %i.al = add nsw i32 %.sroa.040.075.us.us.us.us, -1
  %i.am = and i32 %i.al, %.sroa.040.075.us.us.us.us ; 2 uses
  %.not68.us.us.us.us = icmp eq i32 %i.am, 0
  br i1 %.not68.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.d, !llvm.loop !11040

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
  br i1 %i.aw, label %.thread66, label %bb.e, !prof !232

bb.e:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us94
  %i.ax = add i64 %.023.i88.us, -1                ; 2 uses
  %i.ay = add i64 %i.e, %.0.i89.us
  %.not.i.us = icmp eq i64 %i.ax, 0
  br i1 %.not.i.us, label %.thread66, label %.split.us.split, !llvm.loop !11039

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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !117
  %.not.i.i.i.us.us91 = icmp eq i64 %.fr, %i.bg
  br i1 %.not.i.i.i.us.us91, label %bb.g, label %.critedge.i.backedge.us.us92, !prof !220

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !117
  %i.bj = icmp eq i64 %i.bi, %.cast
  br i1 %i.bj, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us92, !prof !11041

.critedge.i.backedge.us.us92:                     ; preds = %bb.g, %bb.f
  %.not68.us.us93 = icmp eq i32 %i.bd, 0
  br i1 %.not68.us.us93, label %.critedge.i._crit_edge.split.us.split.us94, label %bb.f, !llvm.loop !11040

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
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !117
  %.not.i.i.i = icmp eq i64 %.fr, %i.ca
  br i1 %.not.i.i.i, label %bb.i, label %.critedge.i.backedge, !prof !220

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.cd, i64 %i.r)
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge, !prof !11041

.critedge.i.backedge:                             ; preds = %bb.i, %bb.h
  %.not68 = icmp eq i32 %i.bx, 0
  br i1 %.not68, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !11040

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.cf = icmp eq i8 %i.bs, 0
  br i1 %i.cf, label %.thread66, label %bb.j, !prof !232

bb.j:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cg = add i64 %.023.i88, -1                   ; 2 uses
  %i.ch = add i64 %i.e, %.0.i89
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %.thread66, label %.split, !llvm.loop !11039

.thread66:                                        ; preds = %bb.j, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us94, %bb.e, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.c, %bb.a
  %.pre-phi128 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us94 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.j ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = and i8 %i.cj, 15
  %i.cl = zext nneg i8 %i.ck to i64               ; 2 uses
  %i.cm = shl i64 %i.cl, %.pre-phi128             ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.cm
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit, label %bb.k

bb.k:                                             ; preds = %.thread66
  %i.cn = shl nuw i64 1, %.pre-phi128
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.cn, i64 noundef %i.cl, i64 noundef %i.cm)
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !10966
  %.pre125 = load i64, ptr %i.a, align 8, !tbaa !476
  %.pre126 = and i64 %.pre125, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.k
  %.pre-phi = phi i64 [ %.pre-phi128, %.thread66 ], [ %.pre126, %bb.k ] ; 2 uses
  %i.co = phi ptr [ %.pre, %.thread66 ], [ %.pre124, %bb.k ] ; 3 uses
  %i.cp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.cq = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load <16 x i8>, ptr %i.cq, align 16, !tbaa !16
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
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11074 ; 2 uses
  %.not.i31 = icmp eq i8 %i.da, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !11074
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
  br i1 %.not70, label %bb.m, label %bb.o, !llvm.loop !11076

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit
  %i.dj = extractelement <16 x i8> %i.df, i64 14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dl = add i8 %i.dj, 16
  store i8 %i.dl, ptr %i.dk, align 2, !tbaa !11077
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.di, %bb.o ]
  %.1 = phi ptr [ %i.cq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.de, %bb.o ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64              ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.33) #46
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.p
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dn ; 3 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !6980
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = or i64 %i.dv, %i.dn                     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11038
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.r, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !117
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !476 ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %i.ec = add i64 %i.eb, 256
  %i.ed = and i64 %i.ea, 255
  %i.ee = or disjoint i64 %i.ec, %i.ed
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !476
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread: ; preds = %bb.i, %bb.g, %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.us-phi76.sink = phi ptr [ %i.dt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bf, %bb.g ], [ %i.aj, %bb.d ], [ %i.bz, %bb.i ]
  %.us-phi.sink = phi i64 [ %i.dn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.be, %bb.g ], [ %i.ai, %bb.d ], [ %i.by, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ]
  store ptr %.us-phi76.sink, ptr %0, align 8, !tbaa !7052
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !117
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ef, align 8, !tbaa !11078
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !476
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm:bb.a
bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0115, i64 noundef %4) #42
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.ad

bb.ac:                                            ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %.0115, i64 noundef %4) #42
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit75

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit75: ; preds = %bb.ac, %bb.t, %bb.n
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.n ], [ %i.cz, %bb.t ], [ %i.cz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !31
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !117
  %.not.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !11081 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !117
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.ez) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !762, !range !56, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11096, !nonnull !57
  %i.e = load i8, ptr %i.d, align 1, !tbaa !31, !range !56, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !232

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11098, !nonnull !57, !align !179
  %i.i = load i64, ptr %i.h, align 8, !tbaa !117
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11099, !nonnull !57, !align !179
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11081
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11100, !nonnull !57, !align !179
  %i.o = load i64, ptr %i.n, align 8, !tbaa !117
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11101 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11102, !nonnull !57, !align !179
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !758
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11103, !nonnull !57, !align !179
  %i.w = load i64, ptr %i.v, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11099, !nonnull !57, !align !179
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11081
  store ptr %i.z, ptr %i.q, align 8, !tbaa !10966
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11104, !nonnull !57, !align !179
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !476
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !476
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.3236") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !476  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !10966 ; 5 uses
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
  br i1 %i.s, label %.split.us.split.us, label %.split.us.split, !llvm.loop !11040

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
  br i1 %i.ac, label %.thread66, label %bb.c, !prof !232

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ad = add i64 %.023.i88.us.us, -1             ; 2 uses
  %i.ae = add i64 %i.e, %.0.i89.us.us
  %.not.i.us.us = icmp eq i64 %i.ad, 0
  br i1 %.not.i.us.us, label %.thread66, label %.split.us.split.us, !llvm.loop !11039

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
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !117
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ak
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !220

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.d
  %i.al = add nsw i32 %.sroa.040.075.us.us.us.us, -1
  %i.am = and i32 %i.al, %.sroa.040.075.us.us.us.us ; 2 uses
  %.not68.us.us.us.us = icmp eq i32 %i.am, 0
  br i1 %.not68.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.d, !llvm.loop !11040

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
  br i1 %i.aw, label %.thread66, label %bb.e, !prof !232

bb.e:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us94
  %i.ax = add i64 %.023.i88.us, -1                ; 2 uses
  %i.ay = add i64 %i.e, %.0.i89.us
  %.not.i.us = icmp eq i64 %i.ax, 0
  br i1 %.not.i.us, label %.thread66, label %.split.us.split, !llvm.loop !11039

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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !117
  %.not.i.i.i.us.us91 = icmp eq i64 %.fr, %i.bg
  br i1 %.not.i.i.i.us.us91, label %bb.g, label %.critedge.i.backedge.us.us92, !prof !220

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !117
  %i.bj = icmp eq i64 %i.bi, %.cast
  br i1 %i.bj, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge.us.us92, !prof !11041

.critedge.i.backedge.us.us92:                     ; preds = %bb.g, %bb.f
  %.not68.us.us93 = icmp eq i32 %i.bd, 0
  br i1 %.not68.us.us93, label %.critedge.i._crit_edge.split.us.split.us94, label %bb.f, !llvm.loop !11040

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
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !117
  %.not.i.i.i = icmp eq i64 %.fr, %i.ca
  br i1 %.not.i.i.i, label %bb.i, label %.critedge.i.backedge, !prof !220

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.cd, i64 %i.r)
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread, label %.critedge.i.backedge, !prof !11041

.critedge.i.backedge:                             ; preds = %bb.i, %bb.h
  %.not68 = icmp eq i32 %i.bx, 0
  br i1 %.not68, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !11040

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.cf = icmp eq i8 %i.bs, 0
  br i1 %i.cf, label %.thread66, label %bb.j, !prof !232

bb.j:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cg = add i64 %.023.i88, -1                   ; 2 uses
  %i.ch = add i64 %i.e, %.0.i89
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %.thread66, label %.split, !llvm.loop !11039

.thread66:                                        ; preds = %bb.j, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us94, %bb.e, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.c, %bb.a
  %.pre-phi128 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us94 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.j ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = and i8 %i.cj, 15
  %i.cl = zext nneg i8 %i.ck to i64               ; 2 uses
  %i.cm = shl i64 %i.cl, %.pre-phi128             ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.cm
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit, label %bb.k

bb.k:                                             ; preds = %.thread66
  %i.cn = shl nuw i64 1, %.pre-phi128
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.cn, i64 noundef %i.cl, i64 noundef %i.cm)
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !10966
  %.pre125 = load i64, ptr %i.a, align 8, !tbaa !476
  %.pre126 = and i64 %.pre125, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.k
  %.pre-phi = phi i64 [ %.pre-phi128, %.thread66 ], [ %.pre126, %bb.k ] ; 2 uses
  %i.co = phi ptr [ %.pre, %.thread66 ], [ %.pre124, %bb.k ] ; 3 uses
  %i.cp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.cq = getelementptr inbounds nuw [256 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load <16 x i8>, ptr %i.cq, align 16, !tbaa !16
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
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11074 ; 2 uses
  %.not.i31 = icmp eq i8 %i.da, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !11074
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
  br i1 %.not70, label %bb.m, label %bb.o, !llvm.loop !11105

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit
  %i.dj = extractelement <16 x i8> %i.df, i64 14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dl = add i8 %i.dj, 16
  store i8 %i.dl, ptr %i.dk, align 2, !tbaa !11077
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.di, %bb.o ]
  %.1 = phi ptr [ %i.cq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.de, %bb.o ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64              ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.33) #46
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.p
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dn ; 3 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !6980
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = or i64 %i.dv, %i.dn                     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11038
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.r, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !117
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !476 ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %i.ec = add i64 %i.eb, 256
  %i.ed = and i64 %i.ea, 255
  %i.ee = or disjoint i64 %i.ec, %i.ed
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !476
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread: ; preds = %bb.i, %bb.g, %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.us-phi76.sink = phi ptr [ %i.dt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bf, %bb.g ], [ %i.aj, %bb.d ], [ %i.bz, %bb.i ]
  %.us-phi.sink = phi i64 [ %i.dn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.be, %bb.g ], [ %i.ai, %bb.d ], [ %i.by, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ]
  store ptr %.us-phi76.sink, ptr %0, align 8, !tbaa !7052
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !117
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ef, align 8, !tbaa !11078
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN8facebook5velox4core9UDFHolderINS1_9functions24MapSubsetVarcharFunctionINS1_4exec10VectorExecEEES7_NS1_3MapINS1_7VarcharENS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayISA_EEEEEJSF_SI_EEEEclEPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #42
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10966 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  %i.u = load i8, ptr %i.t, align 1, !tbaa !473
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox9functions24MapSubsetVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EE:bb.a
_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  br label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, !llvm.loop !11061

_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit: ; preds = %.lr.ph195, %bb.n, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %.lcssa = phi i32 [ %i.cq, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit ], [ %i.db, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge ], [ %i.db, %.lr.ph195 ], [ %i.cz, %bb.n ] ; 2 uses
  %i.ec = icmp eq i32 %i.ba, %.lcssa
  br i1 %i.ec, label %._crit_edge, label %bb.j

bb.t:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !476 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 256
  br i1 %i.eg, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !10984, !noalias !11185 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !10985, !noalias !11185 ; 2 uses
  %i.el = load ptr, ptr %2, align 8, !tbaa !10981, !noalias !11185
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10983, !noalias !11185 ; 4 uses
  %i.eo = add nsw i32 %i.ek, %i.ei
  %i.ep = icmp eq i32 %i.ek, 0
  br i1 %i.ep, label %.loopexit, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.u
  %i.eq = lshr i64 %i.ef, 8
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, <2 x i64> <i64 8, i64 56>
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fc = sext i32 %i.ei to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph156, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112
  %i.fd = phi i64 [ %i.fc, %.lr.ph156 ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112 ] ; 7 uses
  %.0152 = phi i64 [ %i.eq, %.lr.ph156 ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !11188)
  call void @llvm.experimental.noalias.scope.decl(metadata !11191)
  %i.fe = load ptr, ptr %i.el, align 8, !tbaa !11027, !noalias !11194, !nonnull !57, !align !179 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !728, !noalias !11194
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 58
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !458, !range !56, !noalias !11194, !noundef !57
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fj, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 59
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !459, !range !56, !noalias !11194, !noundef !57
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !460, !noalias !11194
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.y:                                             ; preds = %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !461, !noalias !11194
  %i.fs = shl nsw i64 %i.fd, 2
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3, !noalias !11194
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fu, %bb.y ], [ %i.fp, %bb.x ], [ %i.fk, %bb.v ]
  %i.fv = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fg, i64 %i.fv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i28 = load i64, ptr %i.fw, align 8, !noalias !11194
  %.sroa.0.0.copyload.i.i.i.i.i.i28.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i28 ; 11 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i30 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i29, align 8, !tbaa !16, !noalias !11194 ; 8 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, ptr %11, align 8, !alias.scope !11194
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, ptr %i.er, align 8, !alias.scope !11194
  store ptr %i.en, ptr %i.es, align 8, !alias.scope !11194
  store i64 %i.fd, ptr %i.et, align 8, !alias.scope !11194
  %i.fx = load i64, ptr %i.ee, align 8, !tbaa !476
  %i.fy = lshr i64 %i.fx, 8
  %i.fz = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr to i32 ; 8 uses
  switch i64 %i.fy, label %bb.ad [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.gb = load i64, ptr %i.eu, align 8, !tbaa !11038
  %i.gc = and i64 %i.gb, -16
  %i.gd = inttoptr i64 %i.gc to ptr               ; 3 uses
  %i.ge = load i64, ptr %i.gd, align 16, !tbaa !117
  %.not.i.i.i33 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, %i.ge
  br i1 %.not.i.i.i33, label %bb.aa, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

bb.aa:                                            ; preds = %bb.z
  %i.gf = icmp ult i32 %i.ga, 13
  br i1 %i.gf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gg = icmp samesign ult i32 %i.ga, 5
  br i1 %i.gg, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, 4294967295
  %i.gm = add nsw i64 %i.gl, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gh, ptr nonnull %i.gk, i64 %i.gm)
  %i.gn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit: ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !117
  %i.gq = icmp eq i64 %i.gp, %i.fz
  br i1 %i.gq, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

bb.ad:                                            ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, ptr %i.ev, align 8
  %i.gr = icmp ult i32 %i.ga, 13                  ; 2 uses
  %i.gs = select i1 %i.gr, ptr %i.ew, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30
  %i.gt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, 4294967295 ; 2 uses
  %i.gu = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gs, i64 noundef %i.gt) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gv = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gu) ; 2 uses
  %i.gw = lshr i64 %i.gv, 24
  %i.gx = or i64 %i.gw, 128                       ; 2 uses
  %i.gy = add i64 %i.gv, %i.gu                    ; 3 uses
  %i.gz = shl nuw nsw i64 %i.gx, 1
  %i.ha = or disjoint i64 %i.gz, 1                ; 3 uses
  %i.hb = trunc nuw i64 %i.gx to i8
  %i.hc = insertelement <16 x i8> poison, i8 %i.hb, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.he = load i64, ptr %i.ee, align 8, !tbaa !476
  %i.hf = and i64 %i.he, 255                      ; 4 uses
  %i.hg = shl nuw i64 1, %i.hf                    ; 3 uses
  %i.hh = load ptr, ptr %i.ed, align 8, !tbaa !10966 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, i64 4
  %i.hj = add nsw i64 %i.gt, -4
  br i1 %i.gr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ad
  %i.hk = icmp samesign ult i32 %i.ga, 5
  br i1 %i.hk, label %.split.us.split.us, label %.split.us.split, !llvm.loop !11040

.split.us.split.us:                               ; preds = %.split.us, %bb.ae
  %.0.i.i142.us.us = phi i64 [ %i.hw, %bb.ae ], [ %i.gy, %.split.us ] ; 2 uses
  %.023.i.i141.us.us = phi i64 [ %i.hv, %bb.ae ], [ %i.hg, %.split.us ]
  %i.hl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i142.us.us, i64 range(i64 0, 256) %i.hf)
  %i.hm = getelementptr inbounds nuw [256 x i8], ptr %i.hh, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ho, i32 0, i32 3, i32 1)
  %i.hp = load <16 x i8>, ptr %i.hm, align 16     ; 2 uses
  %i.hq = icmp eq <16 x i8> %i.hp, %i.hd
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = and i16 %i.hr, 16383                    ; 2 uses
  %.not136.us.us = icmp eq i16 %i.hs, 0
  %i.ht = extractelement <16 x i8> %i.hp, i64 15
  br i1 %.not136.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.lr.ph139.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.split.us.split.us
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %bb.ae, !prof !232

bb.ae:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.hv = add i64 %.023.i.i141.us.us, -1          ; 2 uses
  %i.hw = add i64 %i.ha, %.0.i.i142.us.us
  %.not.i.i.us.us = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %.split.us.split.us, !llvm.loop !11039

.lr.ph139.us.us:                                  ; preds = %.split.us.split.us
  %i.hx = zext nneg i16 %i.hs to i32
  %i.hy = icmp ne ptr %i.hm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hy)
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.backedge.us.us.us.us, %.lr.ph139.us.us
  %.sroa.076.0137.us.us.us.us = phi i32 [ %i.hx, %.lr.ph139.us.us ], [ %i.ie, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.076.0137.us.us.us.us, i1 true)
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !117
  %.not.i.i.i36.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, %i.ic
  br i1 %.not.i.i.i36.us.us.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us.us.us, !prof !220

.critedge.i.i.backedge.us.us.us.us:               ; preds = %bb.af
  %i.id = add nsw i32 %.sroa.076.0137.us.us.us.us, -1
  %i.ie = and i32 %i.id, %.sroa.076.0137.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.ie, 0
  br i1 %.not.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %bb.af, !llvm.loop !11040

.split.us.split:                                  ; preds = %.split.us, %bb.ag
  %.0.i.i142.us = phi i64 [ %i.iq, %bb.ag ], [ %i.gy, %.split.us ] ; 2 uses
  %.023.i.i141.us = phi i64 [ %i.ip, %bb.ag ], [ %i.hg, %.split.us ]
  %i.if = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i142.us, i64 range(i64 0, 256) %i.hf)
  %i.ig = getelementptr inbounds nuw [256 x i8], ptr %i.hh, i64 %i.if ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ii, i32 0, i32 3, i32 1)
  %i.ij = load <16 x i8>, ptr %i.ig, align 16     ; 2 uses
  %i.ik = icmp eq <16 x i8> %i.ij, %i.hd
  %i.il = bitcast <16 x i1> %i.ik to i16
  %i.im = and i16 %i.il, 16383                    ; 2 uses
  %.not136.us = icmp eq i16 %i.im, 0
  %i.in = extractelement <16 x i8> %i.ij, i64 15
  br i1 %.not136.us, label %.critedge.i.i._crit_edge.split.us.split.us147, label %.lr.ph139.us

.critedge.i.i._crit_edge.split.us.split.us147:    ; preds = %.critedge.i.i.backedge.us.us145, %.split.us.split
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %bb.ag, !prof !232

bb.ag:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us147
  %i.ip = add i64 %.023.i.i141.us, -1             ; 2 uses
  %i.iq = add i64 %i.ha, %.0.i.i142.us
  %.not.i.i.us = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %.split.us.split, !llvm.loop !11039

.lr.ph139.us:                                     ; preds = %.split.us.split
  %i.ir = zext nneg i16 %i.im to i32
  %i.is = icmp ne ptr %i.ig, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.is)
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph139.us, %.critedge.i.i.backedge.us.us145
  %.sroa.076.0137.us.us143 = phi i32 [ %i.ir, %.lr.ph139.us ], [ %i.iv, %.critedge.i.i.backedge.us.us145 ] ; 3 uses
  %i.it = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.076.0137.us.us143, i1 true)
  %i.iu = add nsw i32 %.sroa.076.0137.us.us143, -1
  %i.iv = and i32 %i.iu, %.sroa.076.0137.us.us143 ; 2 uses
  %i.iw = zext nneg i32 %i.it to i64
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %i.iw ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !117
  %.not.i.i.i36.us.us144 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, %i.iy
  br i1 %.not.i.i.i36.us.us144, label %bb.ai, label %.critedge.i.i.backedge.us.us145, !prof !220

bb.ai:                                            ; preds = %bb.ah
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !117
  %i.jb = icmp eq i64 %i.ja, %i.fz
  br i1 %i.jb, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us145, !prof !11041

.critedge.i.i.backedge.us.us145:                  ; preds = %bb.ai, %bb.ah
  %.not.us.us146 = icmp eq i32 %i.iv, 0
  br i1 %.not.us.us146, label %.critedge.i.i._crit_edge.split.us.split.us147, label %bb.ah, !llvm.loop !11040

.split:                                           ; preds = %bb.ad, %bb.al
  %.0.i.i142 = phi i64 [ %i.jz, %bb.al ], [ %i.gy, %bb.ad ] ; 2 uses
  %.023.i.i141 = phi i64 [ %i.jy, %bb.al ], [ %i.hg, %bb.ad ]
  %i.jc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i142, i64 range(i64 0, 256) %i.hf)
  %i.jd = getelementptr inbounds nuw [256 x i8], ptr %i.hh, i64 %i.jc ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.jf, i32 0, i32 3, i32 1)
  %i.jg = load <16 x i8>, ptr %i.jd, align 16     ; 2 uses
  %i.jh = icmp eq <16 x i8> %i.jg, %i.hd
  %i.ji = bitcast <16 x i1> %i.jh to i16
  %i.jj = and i16 %i.ji, 16383                    ; 2 uses
  %.not136 = icmp eq i16 %i.jj, 0
  %i.jk = extractelement <16 x i8> %i.jg, i64 15
  br i1 %.not136, label %.critedge.i.i._crit_edge.split, label %.lr.ph139

.lr.ph139:                                        ; preds = %.split
  %i.jl = zext nneg i16 %i.jj to i32
  %i.jm = icmp ne ptr %i.jd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jm)
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph139, %.critedge.i.i.backedge
  %.sroa.076.0137 = phi i32 [ %i.jl, %.lr.ph139 ], [ %i.jp, %.critedge.i.i.backedge ] ; 3 uses
  %i.jn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.076.0137, i1 true)
  %i.jo = add nsw i32 %.sroa.076.0137, -1
  %i.jp = and i32 %i.jo, %.sroa.076.0137          ; 2 uses
  %i.jq = zext nneg i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.jq ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !117
  %.not.i.i.i36 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, %i.js
  br i1 %.not.i.i.i36, label %bb.ak, label %.critedge.i.i.backedge, !prof !220

bb.ak:                                            ; preds = %bb.aj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %bcmp.i.i.i38 = call i32 @bcmp(ptr nonnull %i.hi, ptr nonnull %i.jv, i64 %i.hj)
  %i.jw = icmp eq i32 %bcmp.i.i.i38, 0
  br i1 %i.jw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge, !prof !11041

.critedge.i.i.backedge:                           ; preds = %bb.ak, %bb.aj
  %.not = icmp eq i32 %i.jp, 0
  br i1 %.not, label %.critedge.i.i._crit_edge.split, label %bb.aj, !llvm.loop !11040

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split
  %i.jx = icmp eq i8 %i.jk, 0
  br i1 %i.jx, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %bb.al, !prof !232

bb.al:                                            ; preds = %.critedge.i.i._crit_edge.split
  %i.jy = add i64 %.023.i.i141, -1                ; 2 uses
  %i.jz = add i64 %i.ha, %.0.i.i142
  %.not.i.i = icmp eq i64 %i.jy, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %.split, !llvm.loop !11039

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread: ; preds = %bb.ak, %bb.ai, %bb.af, %bb.ab, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit, %bb.ac
  %i.ka = load ptr, ptr %i.en, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i40 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i40, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 58
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !458, !range !56, !noundef !57
  %i.kf = trunc nuw i8 %i.ke to i1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 57
  %i.kh = load i8, ptr %i.kg, align 1, !range !56
  %i.ki = trunc nuw i8 %i.kh to i1
  %or.cond.i.i.i = select i1 %i.kf, i1 true, i1 %i.ki
  br i1 %or.cond.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kj = lshr i64 %i.fd, 6
  %i.kk = and i64 %i.kj, 67108863
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !117
  %i.kn = and i64 %i.fd, 63
  %i.ko = shl nuw i64 1, %i.kn
  %i.kp = and i64 %i.km, %i.ko
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 59
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.kt = load i64, ptr %i.kc, align 8, !tbaa !117
  %i.ku = and i64 %i.kt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.aq:                                            ; preds = %bb.ao
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !461
  %sext.i41 = shl i64 %i.fd, 32
  %i.kx = ashr exact i64 %sext.i41, 30
  %i.ky = getelementptr inbounds i8, ptr %i.kw, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = lshr i64 %i.la, 6
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !117
  %i.le = and i64 %i.la, 63
  %i.lf = shl nuw i64 1, %i.le
  %i.lg = and i64 %i.lf, %i.ld
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.an, %bb.ap, %bb.aq
  %.0.i.i.i42.in = phi i64 [ %i.kp, %bb.an ], [ %i.ku, %bb.ap ], [ %i.lg, %bb.aq ]
  %.0.i.i.i42.not = icmp eq i64 %.0.i.i.i42.in, 0
  br i1 %.0.i.i.i42.not, label %bb.ar, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.lh = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !6919 ; 2 uses
  %i.lk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, 4294967295 ; 2 uses
  %i.ll = add i64 %i.lj, %i.lk                    ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !6918
  %i.lo = icmp ugt i64 %i.ll, %i.ln
  br i1 %i.lo, label %bb.as, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.lp = load ptr, ptr %i.lh, align 8, !tbaa !46
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(96) %i.lh, i64 noundef %i.ll), !inline_history !11195
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.as, %bb.ar
  store i64 %i.ll, ptr %i.li, align 8, !tbaa !6919
  %.not.i.i44 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i44, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !6920
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lj
  %i.lv = icmp ult i32 %i.ga, 13
  %i.lw = select i1 %i.lv, ptr %i.ex, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lu, ptr align 1 %i.lw, i64 %i.lk, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3274") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.lx = load ptr, ptr %i.ey, align 8, !tbaa !11196, !nonnull !57, !align !179 ; 5 uses
  %i.ly = load ptr, ptr %12, align 8, !tbaa !8178, !nonnull !57, !align !179
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !6919 ; 2 uses
  %i.mb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, 4294967295 ; 2 uses
  %i.mc = add i64 %i.ma, %i.mb                    ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.me = load i64, ptr %i.md, align 8, !tbaa !6918
  %i.mf = icmp ugt i64 %i.mc, %i.me
  br i1 %i.mf, label %bb.au, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i45

bb.au:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.mg = load ptr, ptr %i.lx, align 8, !tbaa !46
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(96) %i.lx, i64 noundef %i.mc), !inline_history !11195
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i45

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i45: ; preds = %bb.au, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  store i64 %i.mc, ptr %i.lz, align 8, !tbaa !6919
  %.not.i.i46 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i46, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit48, label %bb.av

bb.av:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i45
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !6920
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ma
  %i.mm = icmp ult i32 %i.ga, 13
  %i.mn = select i1 %i.mm, ptr %i.ex, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mn, i64 %i.mb, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit48

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit48: ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i45, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !11199)
  call void @llvm.experimental.noalias.scope.decl(metadata !11202)
  %i.mo = load ptr, ptr %i.en, align 8, !tbaa !562, !noalias !11205, !nonnull !57, !align !179
  store ptr %i.mo, ptr %13, align 8, !tbaa !509, !alias.scope !11205
  store <2 x ptr> %i.ez, ptr %i.fa, align 8, !tbaa !38, !alias.scope !11205
  store i32 %i.fk, ptr %i.fb, align 8, !tbaa !8188, !alias.scope !11205
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ly, ptr noundef nonnull align 8 dereferenceable(28) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit: ; preds = %bb.at, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit48
  %i.mp = add nsw i64 %.0152, -1                  ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %bb.aw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

bb.aw:                                            ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.loopexit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112: ; preds = %.critedge.i.i._crit_edge.split, %bb.al, %.critedge.i.i._crit_edge.split.us.split.us147, %bb.ag, %.critedge.i.i._crit_edge.split.us.split.us.us.us, %bb.ae, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit, %bb.ac, %bb.z, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %.1.ph = phi i64 [ %i.mp, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit ], [ %.0152, %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit ], [ %.0152, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit ], [ %.0152, %bb.z ], [ %.0152, %bb.ac ], [ %.0152, %.critedge.i.i._crit_edge.split.us.split.us147 ], [ %.0152, %.critedge.i.i._crit_edge.split.us.split.us.us.us ], [ %.0152, %bb.ae ], [ %.0152, %bb.ag ], [ %.0152, %bb.al ], [ %.0152, %.critedge.i.i._crit_edge.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %indvars.iv.next = add nsw i64 %i.fd, 1         ; 2 uses
  %i.mr = trunc nsw i64 %indvars.iv.next to i32
  %i.ms = icmp eq i32 %i.eo, %i.mr
  br i1 %i.ms, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, %bb.u, %bb.aw, %bb.t, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11106 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !11121, !range !56, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11122 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
end_hunk_6
begin_hunk_7_@llvm.ucmp.i32.i32
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!20 = !{!18, !19, i64 16}
!21 = !{!18, !19, i64 8}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !10, i64 0}
!25 = !{!23, !24, i64 8}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!23, !24, i64 16}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = !{!32, !32, i64 0}
!32 = !{!"bool", !5, i64 0}
!33 = !{!"branch_weights", i32 1, i32 1048575}
!34 = !{!19, !19, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!40, !10, i64 24}
!40 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEE", !41, i64 0, !10, i64 24}
!41 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!42 = !{!41, !10, i64 16}
!43 = !{!44, !4, i64 8}
!44 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!45 = !{!44, !4, i64 12}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !6, i64 0}
!48 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!49 = distinct !{null, null}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions26MapSubsetPrimitiveFunctionINS1_4exec10VectorExecEbEENS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEEEEEJSE_SH_EEELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !36, i64 8}
!52 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EEE", !10, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions26MapSubsetPrimitiveFunctionINS2_4exec10VectorExecEbEENS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSF_NS2_5ArrayIbEEEEEJSF_SI_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSS_: argument 0"}
!55 = distinct !{!55, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions26MapSubsetPrimitiveFunctionINS2_4exec10VectorExecEbEENS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSF_NS2_5ArrayIbEEEEEJSF_SI_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSS_"}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!52, !52, i64 0}
!59 = distinct !{null, null}
!60 = !{!61, !9, i64 8}
!61 = !{!"_ZTSSt9type_info", !9, i64 8}
!62 = !{!63, !32, i64 8}
!63 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EEE", !64, i64 0, !32, i64 8, !65, i64 16, !4, i64 32, !68, i64 40, !71, i64 56}
!64 = !{!"_ZTSN8facebook5velox4core23ISimpleFunctionMetadataE"}
!65 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !66, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !36, i64 8}
!67 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !10, i64 0}
!68 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !69, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !36, i64 8}
!70 = !{!"p1 _ZTSN8facebook5velox4TypeE", !10, i64 0}
!71 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !10, i64 0}
!76 = !{!77, !32, i64 1}
!77 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !32, i64 0, !32, i64 1, !32, i64 2, !13, i64 8}
!78 = !{!77, !13, i64 8}
!79 = !{!63, !4, i64 32}
!80 = !{!69, !70, i64 0}
!81 = distinct !{null, null, null, null}
!82 = !{!77, !32, i64 0}
!83 = !{!77, !32, i64 2}
!84 = !{!85, !87, i64 0}
!85 = !{!"_ZTSSt15_Rb_tree_header", !86, i64 0, !13, i64 32}
!86 = !{!"_ZTSSt18_Rb_tree_node_base", !87, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
!87 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!88 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!89 = !{!85, !88, i64 8}
!90 = !{!85, !88, i64 16}
!91 = !{!85, !88, i64 24}
!92 = !{!85, !13, i64 32}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!95 = distinct !{!95, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!98 = distinct !{!98, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = distinct !{!101, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!102 = !{!100, !97, !94}
!103 = !{!104, !9, i64 40}
!104 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !105, i64 56}
!105 = !{!"_ZTSSt6locale", !106, i64 0}
!106 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!107 = !{!104, !9, i64 32}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 _ZTSN8facebook5velox4core19TypeAnalysisResultsE", !10, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !10, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !10, i64 0}
!114 = !{!24, !24, i64 0}
!115 = !{!86, !88, i64 8}
!116 = !{i64 0, i64 1, !31, i64 1, i64 1, !31, i64 2, i64 1, !31, i64 8, i64 8, !117}
!117 = !{!13, !13, i64 0}
!118 = !{!74, !75, i64 8}
!119 = !{!74, !75, i64 0}
!120 = !{!74, !75, i64 16}
!121 = distinct !{!121, !27}
!122 = !{!123, !124, i64 64}
!123 = !{!"_ZTSN8facebook5velox4exec17SignatureVariableE", !12, i64 0, !12, i64 32, !124, i64 64, !32, i64 65, !32, i64 66, !32, i64 67}
!124 = !{!"_ZTSN8facebook5velox4exec13ParameterTypeE", !5, i64 0}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!127 = distinct !{!127, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!128 = distinct !{!128, !27}
!129 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!130 = distinct !{!130, !27}
!131 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!132 = !{!133, !134, i64 0}
!133 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!134 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !135, i64 0}
!135 = !{!"any p2 pointer", !10, i64 0}
!136 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !137, i64 0}
!137 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!138 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !139, i64 0, !13, i64 8}
!139 = !{!"float", !5, i64 0}
!140 = !{!133, !13, i64 8}
!141 = !{!138, !139, i64 0}
!142 = !{!143, !144, i64 0}
!143 = !{!"_ZTSSt18_Bit_iterator_base", !144, i64 0, !4, i64 8}
!144 = !{!"p1 long", !10, i64 0}
!145 = !{!146, !144, i64 32}
!146 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !147, i64 0, !147, i64 16, !144, i64 32}
!147 = !{!"_ZTSSt13_Bit_iterator", !143, i64 0}
!148 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!149 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!150 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!151 = distinct !{null, null, null, null, null, null, null, null, null}
!152 = distinct !{!152, !27}
!153 = !{!75, !75, i64 0}
!154 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!155 = distinct !{!155, !27}
!156 = distinct !{null, null, null, null, null, null, null, null, null}
!157 = distinct !{!157, !27}
!158 = distinct !{!158, !27}
!159 = distinct !{!159, !27}
!160 = !{!66, !67, i64 0}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!163 = distinct !{!163, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!164 = !{!165, !13, i64 8}
!165 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResultsE", !77, i64 0, !166, i64 16, !68, i64 392, !170, i64 408}
!166 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !167, i64 0, !168, i64 8}
!167 = !{!"_ZTSSo"}
!168 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !104, i64 0, !169, i64 64, !12, i64 72}
!169 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!170 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !171, i64 0}
!171 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !172, i64 0}
!172 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !173, i64 0, !85, i64 8}
!173 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !174, i64 0}
!174 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!175 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!176 = distinct !{null, null, null}
!177 = !{!178, !109, i64 0}
!178 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISK_EEEUlvE0_", !109, i64 0, !111, i64 8, !113, i64 16}
!179 = !{i64 8}
!180 = !{!178, !111, i64 8}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!183 = distinct !{!183, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!186 = distinct !{!186, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!189 = distinct !{!189, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!190 = !{!188, !185, !182}
!191 = !{!178, !113, i64 16}
!192 = !{!193, !109, i64 0}
!193 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISK_EEEUlvE_", !109, i64 0, !111, i64 8, !113, i64 16}
!194 = !{!193, !111, i64 8}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!197 = distinct !{!197, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!200 = distinct !{!200, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!203 = distinct !{!203, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!204 = !{!202, !199, !196}
!205 = !{!193, !113, i64 16}
!206 = !{!88, !88, i64 0}
!207 = distinct !{!207, !27}
!208 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!211 = distinct !{!211, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!212 = !{!213, !32, i64 32}
!213 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !32, i64 32}
!214 = !{!165, !32, i64 1}
!215 = distinct !{null}
!216 = distinct !{!216, !27}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!219 = distinct !{!219, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!220 = !{!"branch_weights", i32 2146410443, i32 1073205}
!221 = !{!123, !32, i64 65}
!222 = !{!123, !32, i64 66}
!223 = !{!123, !32, i64 67}
!224 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!225 = !{!226, !226, i64 0}
!226 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !10, i64 0}
!227 = !{!228, !229, i64 8}
!228 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !226, i64 0, !229, i64 8}
!229 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEEE", !10, i64 0}
!230 = !{!86, !88, i64 24}
!231 = distinct !{!231, !27}
!232 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!235 = distinct !{!235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!238 = !{!234, !237}
!239 = distinct !{!239, !27}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!242 = distinct !{!242, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!245 = !{!241, !244}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!248 = distinct !{!248, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!251 = distinct !{!251, !27, !252, !253}
!252 = !{!"llvm.loop.isvectorized", i32 1}
!253 = !{!"llvm.loop.unroll.runtime.disable"}
!254 = distinct !{!254, !27, !252}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!257 = distinct !{!257, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!260 = distinct !{!260, !27, !252, !253}
!261 = distinct !{!261, !27, !252}
!262 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!263 = distinct !{null, null, null}
!264 = !{!86, !88, i64 16}
!265 = distinct !{!265, !27}
!266 = distinct !{!266, !27}
!267 = distinct !{!267, !27}
!268 = !{!269, !32, i64 104}
!269 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !32, i64 104}
!270 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!271 = !{!272, !273, i64 0}
!272 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !273, i64 0, !273, i64 8, !273, i64 16}
!273 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !10, i64 0}
!274 = !{!272, !273, i64 8}
!275 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!276 = distinct !{!276, !27}
!277 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!278 = !{!272, !273, i64 16}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!281 = distinct !{!281, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!282 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!283 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!284 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!285 = !{!286, !32, i64 96}
!286 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !12, i64 0, !287, i64 32, !290, i64 56, !32, i64 96}
!287 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !288, i64 0}
!288 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !289, i64 0}
!289 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !272, i64 0}
!290 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !291, i64 0}
!291 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !292, i64 0}
!292 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !293, i64 0}
!293 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !213, i64 0}
!294 = !{!273, !273, i64 0}
!295 = distinct !{null, null, null, null}
!296 = distinct !{!296, !27}
!297 = distinct !{null, null, null}
!298 = distinct !{null, null, null, null}
!299 = distinct !{null}
!300 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!301 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!302 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!303 = !{!304, !32, i64 232}
!304 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !305, i64 0, !306, i64 56, !287, i64 168, !310, i64 192, !32, i64 232}
!305 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !133, i64 0}
!306 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !307, i64 0}
!307 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !308, i64 0}
!308 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !309, i64 0}
!309 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !269, i64 0}
!310 = !{!"_ZTSSt6vectorIbSaIbEE", !311, i64 0}
!311 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !312, i64 0}
!312 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !146, i64 0}
!313 = !{!143, !4, i64 8}
!314 = distinct !{null}
!315 = distinct !{!315, !27}
!316 = distinct !{null, null}
!317 = distinct !{!317, !27}
!318 = distinct !{!318, !27}
!319 = distinct !{!319, !27}
!320 = !{!133, !13, i64 24}
!321 = !{!136, !137, i64 0}
!322 = distinct !{!322, !27}
!323 = !{!137, !137, i64 0}
!324 = !{!325, !13, i64 0}
!325 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !13, i64 0}
!326 = distinct !{!326, !27}
!327 = !{!328, !329, i64 0}
!328 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !329, i64 0, !330, i64 8}
!329 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !10, i64 0}
!330 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !10, i64 0}
!331 = !{!328, !330, i64 8}
!332 = distinct !{!332, !27}
!333 = !{!138, !13, i64 8}
!334 = !{!133, !137, i64 16}
!335 = !{!133, !137, i64 48}
!336 = distinct !{!336, !27}
!337 = distinct !{!337, !27}
!338 = !{!339, !134, i64 0}
!339 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!340 = !{!339, !13, i64 8}
!341 = !{!342, !134, i64 0}
!342 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!343 = !{!342, !13, i64 8}
!344 = !{!345, !134, i64 0}
!345 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!346 = !{!345, !13, i64 8}
!347 = !{!348, !134, i64 0}
!348 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!349 = !{!348, !13, i64 8}
!350 = !{!345, !137, i64 16}
!351 = distinct !{!351, !27}
!352 = !{!342, !137, i64 16}
!353 = distinct !{!353, !27}
!354 = !{!348, !137, i64 16}
!355 = distinct !{!355, !27}
!356 = !{!357, !137, i64 16}
!357 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!358 = distinct !{!358, !27}
!359 = !{!357, !134, i64 0}
!360 = !{!357, !13, i64 8}
!361 = !{!362, !137, i64 16}
!362 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !134, i64 0, !13, i64 8, !136, i64 16, !13, i64 24, !138, i64 32, !137, i64 48}
!363 = distinct !{!363, !27}
!364 = !{!362, !134, i64 0}
!365 = !{!362, !13, i64 8}
!366 = !{!339, !137, i64 16}
!367 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!368 = distinct !{!368, !27}
!369 = distinct !{!369, !370}
!370 = !{!"llvm.loop.peeled.count", i32 1}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!373 = distinct !{!373, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!376 = distinct !{!376, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!377 = !{!375, !372}
!378 = !{!379, !13, i64 8}
!379 = !{!"_ZTSSi", !13, i64 8}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEbEESF_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSM_NS2_5ArrayIbEEEEEJSM_SP_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISZ_EERKST_INS3_17SignatureVariableESaIS14_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1C_E4typeEOS1D_DpOS1E_: argument 0"}
!382 = distinct !{!382, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEbEESF_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSM_NS2_5ArrayIbEEEEEJSM_SP_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISZ_EERKST_INS3_17SignatureVariableESaIS14_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1C_E4typeEOS1D_DpOS1E_"}
!383 = !{!384, !386, !388, !381}
!384 = distinct !{!384, !385, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions26MapSubsetPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEEEEEJSF_SI_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!385 = distinct !{!385, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions26MapSubsetPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEEEEEJSF_SI_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!386 = distinct !{!386, !387, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEEEEEJSG_SJ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS1_17SignatureVariableESaISY_EEbENKUlvE_clEv: argument 0"}
!387 = distinct !{!387, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEEEEEJSG_SJ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS1_17SignatureVariableESaISY_EEbENKUlvE_clEv"}
!388 = distinct !{!388, !389, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEbEES9_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSG_NS2_5ArrayIbEEEEEJSG_SJ_EEEEESt14default_deleteISM_EERZNS3_22SimpleFunctionRegistry16registerFunctionISM_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!389 = distinct !{!389, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEbEES9_NS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSG_NS2_5ArrayIbEEEEEJSG_SJ_EEEEESt14default_deleteISM_EERZNS3_22SimpleFunctionRegistry16registerFunctionISM_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!390 = !{!391, !392, i64 0}
!391 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec28SimpleFunctionAdapterFactoryELb0EE", !392, i64 0}
!392 = !{!"p1 _ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE", !10, i64 0}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions26MapSubsetPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEEEEEJSF_SI_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISQ_EERKNS4_11QueryConfigERKSM_ISN_INS1_10BaseVectorEESaISZ_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!395 = distinct !{!395, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions26MapSubsetPrimitiveFunctionINS2_10VectorExecEbEES8_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSF_NS1_5ArrayIbEEEEEJSF_SI_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISQ_EERKNS4_11QueryConfigERKSM_ISN_INS1_10BaseVectorEESaISZ_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!396 = !{!397, !398, i64 0}
!397 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !398, i64 0}
!398 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !10, i64 0}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions26MapSubsetPrimitiveFunctionINS1_4exec10VectorExecEbEES7_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEEEEEJSE_SH_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!401 = distinct !{!401, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions26MapSubsetPrimitiveFunctionINS1_4exec10VectorExecEbEES7_NS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEEEEEJSE_SH_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!402 = !{!403, !404, i64 0}
!403 = !{!"_ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEEE", !404, i64 0, !405, i64 8}
!404 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIbEE", !10, i64 0}
!405 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIbEEEELb1EEE", !406, i64 0, !407, i64 8}
!406 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !13, i64 0}
!407 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPbEE", !13, i64 0}
!408 = !{!409, !409, i64 0}
!409 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEES6_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EEE", !10, i64 0}
!410 = !{!411, !10, i64 0}
!411 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !10, i64 0}
!412 = !{!413, !414, i64 8}
!413 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !414, i64 0, !414, i64 8, !414, i64 16}
!414 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !10, i64 0}
!415 = !{!413, !414, i64 0}
!416 = !{!417, !418, i64 0}
!417 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !418, i64 0, !36, i64 8}
!418 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!419 = !{!420, !32, i64 1}
!420 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !32, i64 1}
!421 = !{!422, !144, i64 0}
!422 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!423 = !{!422, !144, i64 16}
!424 = !{!425, !4, i64 24}
end_hunk_7
