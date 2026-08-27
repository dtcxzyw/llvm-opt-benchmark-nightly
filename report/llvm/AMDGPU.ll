Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPU?download=true
inline.NumInlined: 3259
inline.NumDeleted: 1301
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK5clang6driver10toolchains15AMDGPUToolChain13TranslateArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindE:bb.a
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr %i.jw, i64 %i.jx)
  %i.jy = load ptr, ptr %i.fv, align 8, !tbaa !87
  %i.jz = load i64, ptr %i.jg, align 8, !tbaa !88
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr %i.jy, i64 %i.jz)
  %i.ka = load ptr, ptr %13, align 8, !tbaa !87   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jh
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ag
  %i.kc = load i64, ptr %i.jh, align 8, !tbaa !72
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.af
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0146.0244, i64 8 ; 2 uses
  %.not2.i.i129 = icmp eq ptr %i.ke, %i.iy
  br i1 %.not2.i.i129, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit133, label %.lr.ph.i.i130

.lr.ph.i.i130:                                    ; preds = %bb.ah, %bb.ai
  %.sroa.0146.2 = phi ptr [ %i.kg, %bb.ai ], [ %i.ke, %bb.ah ] ; 3 uses
  %i.kf = load ptr, ptr %.sroa.0146.2, align 8, !tbaa !355
  %.not1.i.i131 = icmp eq ptr %i.kf, null
  br i1 %.not1.i.i131, label %bb.ai, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit133

bb.ai:                                            ; preds = %.lr.ph.i.i130
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0146.2, i64 8 ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.kg, %i.iy
  br i1 %.not.i.i132, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit133, label %.lr.ph.i.i130, !llvm.loop !695

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit133: ; preds = %.lr.ph.i.i130, %bb.ai, %bb.ah
  %.sroa.0146.3 = phi ptr [ %i.iy, %bb.ah ], [ %.sroa.0146.2, %.lr.ph.i.i130 ], [ %i.iy, %bb.ai ] ; 2 uses
  %.not234 = icmp eq ptr %.sroa.0146.3, %i.je
  br i1 %.not234, label %._crit_edge, label %bb.af

_ZN4llvmneENS_9StringRefES0_.exit.thread226:      ; preds = %_ZN4llvmneENS_9StringRefES0_.exit
  %i.kh = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 257)
  %.not236 = icmp eq ptr %i.kh, null
  br i1 %.not236, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread226
  %i.ki = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 359)
  %.not237 = icmp eq ptr %i.ki, null
  br i1 %.not237, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kj = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 3315, i32 noundef 3261, i32 noundef 3264, i32 noundef 3277)
  %.not238 = icmp eq ptr %i.kj, null
  br i1 %.not238, label %bb.al, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.kk = call { ptr, ptr } @_ZNK4llvm3opt8OptTable9getOptionENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i32 3315) #19 ; 2 uses
  %i.kl = extractvalue { ptr, ptr } %i.kk, 0
  %i.km = extractvalue { ptr, ptr } %i.kk, 1
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 5152
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !105 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 5144 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not10.i.i.i.i, label %_ZNK5clang6driver10toolchains15AMDGPUToolChain16getOptionDefaultENS_7options2IDE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ko, %bb.al ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kp, %bb.al ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !673
  %i.ks = icmp slt i32 %i.kr, 3315                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ks, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ks, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN5clang7options2IDESt4pairIKS2_N4llvm9StringRefEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !741

_ZNKSt8_Rb_treeIN5clang7options2IDESt4pairIKS2_N4llvm9StringRefEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.kt = icmp eq ptr %.19.i.i.i.i, %i.kp
  br i1 %i.kt, label %_ZNK5clang6driver10toolchains15AMDGPUToolChain16getOptionDefaultENS_7options2IDE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNKSt8_Rb_treeIN5clang7options2IDESt4pairIKS2_N4llvm9StringRefEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !673
  %i.kw = icmp sgt i32 %i.kv, 3315
  %spec.select.i.i.i = select i1 %i.kw, ptr %i.kp, ptr %.19.i.i.i.i
  br label %_ZNK5clang6driver10toolchains15AMDGPUToolChain16getOptionDefaultENS_7options2IDE.exit

_ZNK5clang6driver10toolchains15AMDGPUToolChain16getOptionDefaultENS_7options2IDE.exit: ; preds = %bb.al, %_ZNKSt8_Rb_treeIN5clang7options2IDESt4pairIKS2_N4llvm9StringRefEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i, %bb.am
  %.sroa.0.0.i.i.i = phi ptr [ %i.kp, %bb.al ], [ %i.kp, %_ZNKSt8_Rb_treeIN5clang7options2IDESt4pairIKS2_N4llvm9StringRefEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i ], [ %spec.select.i.i.i, %bb.am ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 40
  %.sroa.0.0.copyload.i134 = load ptr, ptr %i.kx, align 8, !tbaa !89
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !90
  %i.ky = call noundef ptr @_ZNK4llvm3opt14DerivedArgList13MakeJoinedArgEPKNS0_3ArgENS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(328) %.074, ptr noundef null, ptr %i.kl, ptr %i.km, ptr %.sroa.0.0.copyload.i134, i64 %.sroa.2.0.copyload.i136) #19
  call void @_ZN4llvm3opt7ArgList6appendEPNS0_3ArgE(ptr noundef nonnull align 8 dereferenceable(328) %.074, ptr noundef %i.ky) #19
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %._crit_edge, %_ZN4llvmneENS_9StringRefES0_.exit.thread226, %bb.aj, %_ZNK5clang6driver10toolchains15AMDGPUToolChain16getOptionDefaultENS_7options2IDE.exit, %bb.ak, %_ZN4llvmneENS_9StringRefES0_.exit
  ret ptr %.074
}

declare hidden noundef ptr @_ZNK5clang6driver10toolchains11Generic_GCC13TranslateArgsERKN4llvm3opt14DerivedArgListENS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(5136), ptr noundef nonnull align 8 dereferenceable(328), ptr noundef byval(%"struct.clang::BoundArch") align 8, i32 noundef) unnamed_addr #1

declare void @_ZN4llvm3opt14DerivedArgListC1ERKNS0_12InputArgListE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(352)) unnamed_addr #1

declare void @_ZN4llvm3opt7ArgList6appendEPNS0_3ArgE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm3opt7ArgList8eraseArgENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(176), i32) local_unnamed_addr #1

declare { ptr, ptr } @_ZNK4llvm3opt8OptTable9getOptionENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(216), i32) local_unnamed_addr #1

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6AMDGPU17getArchAttrAMDGCNENS0_7GPUKindE(i32 noundef %0) #19
  %i.c = and i32 %i.b, 48
  %i.d = icmp ne i32 %i.c, 48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZNK5clang6driver10toolchains15AMDGPUToolChain29getDefaultDenormalModeForTypeERKN4llvm3opt7ArgListERKNS0_9JobActionEPKNS3_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(5194) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #0 align 2 {
bb.a:
  %.not21 = icmp eq ptr %3, @_ZN4llvm11APFloatBase13semIEEEsingleE
  br i1 %.not21, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !742
  switch i32 %i.b, label %bb.e [
    i32 8, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.025.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call { ptr, i64 } @_ZN5clang24getProcessorFromTargetIDERKN4llvm6TripleENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr %.sroa.025.0.copyload, i64 %.sroa.4.0.copyload) #19 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = tail call noundef i32 @_ZN4llvm6AMDGPU15parseArchAMDGCNENS_9StringRefE(ptr %i.f, i64 %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZN4llvm6AMDGPU17getArchAttrAMDGCNENS0_7GPUKindE(i32 noundef %i.h) #19
  %i.k = and i32 %i.j, 48
  %i.l = icmp ne i32 %i.k, 48
  br label %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit

_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ %i.l, %bb.d ], [ false, %bb.c ]
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 897, i32 1267, i1 noundef zeroext %.0.i) #19
  %spec.select = select i1 %i.m, i16 257, i16 0
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = tail call { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 2501, ptr nonnull @.str.28, i64 0) #19 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = tail call { ptr, i64 } @_ZN5clang24getProcessorFromTargetIDERKN4llvm6TripleENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr %i.p, i64 %i.q) #19 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = tail call noundef i32 @_ZN4llvm6AMDGPU15parseArchAMDGCNENS_9StringRefE(ptr %i.s, i64 %i.t) #19 ; 2 uses
  %i.v = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 185)
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23.thread, label %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23

_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23: ; preds = %bb.f
  %i.x = tail call noundef i32 @_ZN4llvm6AMDGPU17getArchAttrAMDGCNENS0_7GPUKindE(i32 noundef %i.u) #19
  %i.y = and i32 %i.x, 48
  %.not27 = icmp eq i32 %i.y, 48
  br i1 %.not27, label %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23.thread, label %.critedge

_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23.thread: ; preds = %bb.f, %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23
  br label %.critedge

.critedge:                                        ; preds = %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23, %bb.e, %bb.a, %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23.thread, %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit
  %.sroa.020.2 = phi i16 [ 0, %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23.thread ], [ %spec.select, %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit ], [ 0, %bb.a ], [ 257, %_ZN5clang6driver10toolchains15AMDGPUToolChain33getDefaultDenormsAreZeroForTargetEN4llvm6AMDGPU7GPUKindE.exit23 ], [ 257, %bb.e ]
  ret i16 %.sroa.020.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK5clang6driver10toolchains15AMDGPUToolChain10getGPUArchERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(5194) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 2501, ptr nonnull @.str.28, i64 0) #19 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = tail call { ptr, i64 } @_ZN5clang24getProcessorFromTargetIDERKN4llvm6TripleENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr %i.c, i64 %i.d) #19
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5clang6driver10toolchains15AMDGPUToolChain8isWave64ERKN4llvm3opt7ArgListENS3_6AMDGPU7GPUKindE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm6AMDGPU17getArchAttrAMDGCNENS0_7GPUKindE(i32 noundef %1) #19
  %i.b = and i32 %i.a, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 3163, i32 2950, i1 noundef zeroext false) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains15AMDGPUToolChain21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(5194) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr nofree noundef readonly byval(%"struct.clang::BoundArch") align 8 captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.332", align 8 ; 8 uses
  %6 = alloca %"struct.clang::driver::ToolChain::BitCodeLibraryInfo", align 8 ; 11 uses
  %i.b = icmp eq i32 %4, 8                        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !122
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !123
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.c, label %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #19
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !122
  %.pre75 = zext i32 %.pre8.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit

_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit: ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.e, %bb.b ], [ %.pre75, %bb.c ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.pre-phi ; 2 uses
  store ptr @.str.71, ptr %i.m, align 1
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @.str.72, ptr %.sroa.465.0..sroa_idx, align 1
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !122
  %i.n = add i32 %.pre.i.i, 2
  store i32 %i.n, ptr %i.c, align 8, !tbaa !122
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 899, i32 1268, i1 noundef zeroext false) #19
  br i1 %i.o, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit
  %i.p = load i32, ptr %i.c, align 8, !tbaa !122
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 2                  ; 2 uses
  %i.s = load i32, ptr %i.g, align 4, !tbaa !123
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit39

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.v, i64 noundef %i.r, i64 noundef 8) #19
  %.pre8.pre.i.i38 = load i32, ptr %i.c, align 8, !tbaa !122
  %.pre76 = zext i32 %.pre8.pre.i.i38 to i64
  br label %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit39

_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit39: ; preds = %bb.d, %bb.e
  %.pre-phi77 = phi i64 [ %i.q, %bb.d ], [ %.pre76, %bb.e ]
  %i.w = load ptr, ptr %2, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi77 ; 2 uses
  store ptr @.str.73, ptr %i.x, align 1
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @.str.74, ptr %.sroa.461.0..sroa_idx, align 1
  %.pre.i.i37 = load i32, ptr %i.c, align 8, !tbaa !122
  %i.y = add i32 %.pre.i.i37, 2
  store i32 %i.y, ptr %i.c, align 8, !tbaa !122
  %i.z = tail call noundef ptr @_ZNK4llvm3opt7ArgList17getLastArgNoClaimIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 2294)
  %.not66 = icmp eq ptr %i.z, null
  br i1 %.not66, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit39
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !122
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !123
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit43

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ag, i64 noundef %i.ac, i64 noundef 8) #19
  %.pre8.pre.i.i42 = load i32, ptr %i.c, align 8, !tbaa !122
  %.pre78 = zext i32 %.pre8.pre.i.i42 to i64
  br label %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit43

_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit43: ; preds = %bb.f, %bb.g
  %.pre-phi79 = phi i64 [ %i.ab, %bb.f ], [ %.pre78, %bb.g ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !121
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi79 ; 2 uses
  store ptr @.str.73, ptr %i.ai, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @.str.75, ptr %.sroa.4.0..sroa_idx, align 1
  %.pre.i.i41 = load i32, ptr %i.c, align 8, !tbaa !122
  %i.aj = add i32 %.pre.i.i41, 2
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !122
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit, %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit43, %_ZN4llvm15SmallVectorImplIPKcE6appendESt16initializer_listIS2_E.exit39, %bb.a
  %i.ak = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 2227) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNK4llvm3opt7ArgList10AddLastArgIJN5clang7options2IDEEEEvRNS_11SmallVectorIPKcLj16EEEDpT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK4llvm3opt3Arg6renderERKNS0_7ArgListERNS_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #19
  br label %_ZNK4llvm3opt7ArgList10AddLastArgIJN5clang7options2IDEEEEvRNS_11SmallVectorIPKcLj16EEEDpT_.exit

_ZNK4llvm3opt7ArgList10AddLastArgIJN5clang7options2IDEEEEvRNS_11SmallVectorIPKcLj16EEEDpT_.exit: ; preds = %bb.h, %bb.i
  %i.al = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 2109, i32 noundef 2107)
  %.not67 = icmp eq ptr %i.al, null
  br i1 %.not67, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit45

bb.j:                                             ; preds = %_ZNK4llvm3opt7ArgList10AddLastArgIJN5clang7options2IDEEEEvRNS_11SmallVectorIPKcLj16EEEDpT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.an = load i32, ptr %i.am, align 8, !tbaa !729
  %.off.i = add i32 %i.an, -52
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !672, !nonnull !63, !align !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !747
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit45, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !123
  %.not.i = icmp ult i32 %i.au, %i.aw
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !160

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.76)
  %.pre = load i32, ptr %i.at, align 8, !tbaa !122
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = zext i32 %i.au to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !121
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr @.str.76, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !122
  %i.bb = add i32 %i.ba, 1                        ; 2 uses
  store i32 %i.bb, ptr %i.at, align 8, !tbaa !122
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.m, %bb.n
  %i.bc = phi i32 [ %.pre, %bb.m ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !123
  %.not.i44 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i44, label %bb.p, label %bb.o, !prof !160

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.77)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit45

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.be = zext i32 %i.bc to i64
  %i.bf = load ptr, ptr %2, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  store ptr @.str.77, ptr %i.bg, align 1
  %i.bh = load i32, ptr %i.at, align 8, !tbaa !122
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.at, align 8, !tbaa !122
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit45
end_hunk_0
