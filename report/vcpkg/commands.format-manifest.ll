Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.format-manifest?download=true
inline.NumInlined: 559
inline.NumDeleted: 334
begin_hunk_0_@_ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"struct.vcpkg::ParsedArguments", align 8 ; 10 uses
  %21 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %22 = alloca %"class.std::vector.55", align 8   ; 12 uses
  %23 = alloca %"struct.vcpkg::Path", align 8     ; 21 uses
  %24 = alloca %"struct.vcpkg::Path", align 8     ; 11 uses
  %25 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 18 uses
  %26 = alloca %"struct.vcpkg::ExpectedT.61", align 8 ; 11 uses
  %27 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %28 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %29 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 19 uses
  %30 = alloca %"struct.vcpkg::Path", align 8     ; 11 uses
  %31 = alloca %"struct.vcpkg::ExpectedT.61", align 8 ; 11 uses
  %32 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %33 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %34 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 20 uses
  %35 = alloca %"class.std::vector.46", align 8   ; 8 uses
  %36 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %37 = alloca %"struct.vcpkg::Paragraphs::PortLoadResult", align 8 ; 25 uses
  %38 = alloca %"struct.vcpkg::Path", align 8     ; 16 uses
  %39 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 19 uses
  %40 = alloca %"struct.vcpkg::Path", align 8     ; 11 uses
  %41 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 20 uses
  %42 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %43 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedArguments") align 8 %20, ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(184) @_ZN5vcpkg29CommandFormatManifestMetadataE)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg10VcpkgPaths14get_filesystemEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.b unwind label %bb.e       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %bb.b ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !90
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !91
  %i.p = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr nonnull @.str.6, i64 3) #16 ; 4 uses
  %.19.i.i.i.i = select i1 %i.p, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !82

_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.q, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.p, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !90
  %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel.v = select i1 %i.p, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel, align 8, !tbaa !91
  %i.r = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr nonnull @.str.6, i64 3, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i) #16
  %not..i = xor i1 %i.r, true
  br label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit: ; preds = %bb.c, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i
  %.sroa.0.0.i.i.i.ph = phi i1 [ %not..i, %bb.c ], [ false, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i ] ; 3 uses
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i.i159 = icmp eq ptr %.pr, null
  br i1 %.not10.i.i.i.i159, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, label %.lr.ph.i.i.i.i160

.lr.ph.i.i.i.i160:                                ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, %.lr.ph.i.i.i.i160
  %.012.i.i.i.i161 = phi ptr [ %.1.i.i.i.i169, %.lr.ph.i.i.i.i160 ], [ %.pr, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit ] ; 6 uses
  %.0811.i.i.i.i162 = phi ptr [ %.19.i.i.i.i166, %.lr.ph.i.i.i.i160 ], [ %i.n, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i163 = load ptr, ptr %i.s, align 8, !tbaa !90
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i165 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i164, align 8, !tbaa !91
  %i.t = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i163, i64 %.sroa.22.0.copyload.i.i.i.i.i.i165, ptr nonnull @.str.7, i64 15) #16 ; 4 uses
  %.19.i.i.i.i166 = select i1 %i.t, ptr %.0811.i.i.i.i162, ptr %.012.i.i.i.i161 ; 2 uses
  %.1.in.v.i.i.i.i167 = select i1 %i.t, i64 24, i64 16
  %.1.in.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 %.1.in.v.i.i.i.i167
  %.1.i.i.i.i169 = load ptr, ptr %.1.in.i.i.i.i168, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %.1.i.i.i.i169, null
  br i1 %.not.i.i.i.i170, label %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171, label %.lr.ph.i.i.i.i160, !llvm.loop !82

_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171: ; preds = %.lr.ph.i.i.i.i160
  %i.u = icmp eq ptr %.19.i.i.i.i166, %i.n
  br i1 %i.u, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread: ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171
  br i1 %.sroa.0.0.i.i.i.ph, label %bb.j, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177: ; preds = %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171
  %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.t, ptr %.0811.i.i.i.i162, ptr %.012.i.i.i.i161
  %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i172 = load ptr, ptr %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !90
  %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel.v = select i1 %i.t, ptr %.0811.i.i.i.i162, ptr %.012.i.i.i.i161
  %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i174 = load i64, ptr %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel, align 8, !tbaa !91
  %i.v = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr nonnull @.str.7, i64 15, ptr %.sroa.0.0.copyload.i.i.i.i.i172, i64 %.sroa.2.0.copyload.i.i.i.i.i174) #16 ; 2 uses
  %not..i175 = xor i1 %i.v, true                  ; 2 uses
  %or.cond.not = or i1 %.sroa.0.0.i.i.i.ph, %i.v
  br i1 %or.cond.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177
  %.sroa.042.0.copyload = load i64, ptr @_ZN5vcpkg27msgMissingArgFormatManifestE, align 8, !tbaa !91
  invoke void @_ZN5vcpkg3msg15println_warningIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %.sroa.042.0.copyload)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.f:                                             ; preds = %bb.d, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177
  br i1 %.sroa.0.0.i.i.i.ph, label %bb.j, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread: ; preds = %bb.b, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, %bb.f
  %.sroa.0.0.i.i.i176532533 = phi i1 [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ %not..i175, %bb.f ], [ false, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store i32 112, ptr %21, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.3, ptr %i.ac, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @__func__._ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.ad, align 8, !tbaa !97
  %.sroa.041.0.copyload = load i64, ptr @_ZN5vcpkg28msgFailedToFormatMissingFileE, align 8, !tbaa !91
  invoke void @_ZN5vcpkg6Checks19msg_exit_with_errorIJEJEEEvRKNS_8LineInfoENS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.041.0.copyload) #17
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.gq

bb.j:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread, %bb.f
  %.sroa.0.0.i.i.i526531536 = phi i1 [ true, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread ], [ true, %bb.f ]
  %.sroa.0.0.i.i.i176532534 = phi i1 [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ %.sroa.0.0.i.i.i176532533, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread ], [ %not..i175, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !93 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93 ; 2 uses
  %.not740 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not740, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 3 uses
  %.sroa.gep508 = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  %i.ao = load ptr, ptr @_ZN5vcpkg8out_sinkE, align 8, !nonnull !25, !align !98
  %i.ap = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %.sroa.gep512 = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %34, i64 72 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %34, i64 88 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 88 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN5vcpkg4PathD2Ev.exit242, %bb.j
  %.096.lcssa = phi i1 [ false, %bb.j ], [ %.4100, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 3 uses
  br i1 %.sroa.0.0.i.i.i526531536, label %bb.ch, label %bb.eh

bb.k:                                             ; preds = %.lr.ph, %_ZN5vcpkg4PathD2Ev.exit242
  %.096742 = phi i1 [ false, %.lr.ph ], [ %.4100, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 2 uses
  %.sroa.0515.0741 = phi ptr [ %i.ag, %.lr.ph ], [ %i.nz, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0515.0741)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.br = invoke noundef zeroext i1 @_ZNK5vcpkg4Path11is_relativeEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  br i1 %i.br, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.bs = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #16 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.bt, i64 %i.bu)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %23, align 8, !tbaa !28   ; 6 uses
  %i.bw = icmp eq ptr %i.bv, %i.aj
  %i.bx = load ptr, ptr %24, align 8, !tbaa !28   ; 5 uses
  %i.by = icmp eq ptr %i.bx, %i.ak                ; 2 uses
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  br i1 %i.by, label %bb.p, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o
  br i1 %i.by, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = load i64, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  switch i64 %i.bz, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !30
  store i8 %i.cb, ptr %i.bv, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cc = load i64, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  store i64 %i.cc, ptr %i.am, align 8, !tbaa !29
  %i.cd = load ptr, ptr %23, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !30
  %.pre.i.i = load ptr, ptr %24, align 8, !tbaa !28
  br label %_ZN5vcpkg4PathaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.bx, ptr %23, align 8, !tbaa !28
  %i.cf = load <2 x i64>, ptr %i.al, align 8, !tbaa !30
  store <2 x i64> %i.cf, ptr %i.am, align 8, !tbaa !30
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cg = load i64, ptr %i.aj, align 8, !tbaa !30
  store ptr %i.bx, ptr %23, align 8, !tbaa !28
  %i.ch = load <2 x i64>, ptr %i.al, align 8, !tbaa !30
  store <2 x i64> %i.ch, ptr %i.am, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bv, ptr %24, align 8, !tbaa !28
  store i64 %i.cg, ptr %i.ak, align 8, !tbaa !30
  br label %_ZN5vcpkg4PathaSEOS0_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ak, ptr %24, align 8, !tbaa !28
  br label %_ZN5vcpkg4PathaSEOS0_.exit

_ZN5vcpkg4PathaSEOS0_.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.s, %bb.t
  %i.ci = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bv, %bb.s ], [ %i.ak, %bb.t ]
  store i64 0, ptr %i.al, align 8, !tbaa !29
  store i8 0, ptr %i.ci, align 1, !tbaa !30
  %i.cj = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ak
  br i1 %i.ck, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg4PathaSEOS0_.exit
  %i.cl = load i64, ptr %i.ak, align 8, !tbaa !30
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #18
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZN5vcpkg4PathaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.x

bb.u:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit253

bb.v:                                             ; preds = %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.w:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.cg

bb.x:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem17try_read_contentsERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = load i8, ptr %i.an, align 8, !tbaa !100, !range !32, !noundef !25
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit, label %bb.ab

_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.y
  %i.cs = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #16 ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.ct, i64 %i.cu)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.11, i64 1)
          to label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250

bb.aa:                                            ; preds = %.noexc, %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit, %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ab:                                            ; preds = %bb.y
  %i.cx = invoke { ptr, i64 } @_ZNK5vcpkg4Path8filenameEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1
  %i.da = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %i.cy, i64 %i.cz, ptr nonnull @.str.4, i64 7) #16
  br i1 %i.da, label %bb.ad, label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.gep508) #16
  %i.db = load ptr, ptr %27, align 8
  %i.dc = load i64, ptr %i.bc, align 8
  %i.dd = load ptr, ptr %28, align 8
  %i.de = load i64, ptr %i.bd, align 8
  invoke void @_ZN5vcpkg10Paragraphs26try_load_control_file_textENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.61") align 8 %26, ptr %i.db, i64 %i.dc, ptr %i.dd, i64 %i.de)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i8, ptr %i.be, align 8, !tbaa !34, !range !32, !noundef !25
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZNR5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  store ptr %i.bf, ptr %29, align 8, !tbaa !35
  %i.dh = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.di = load i64, ptr %.sroa.gep512, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i64 %i.di, ptr %i.j, align 8, !tbaa !91
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.af
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc180 unwind label %bb.ar ; 2 uses

.noexc180:                                        ; preds = %.noexc.i
  store ptr %i.dk, ptr %29, align 8, !tbaa !28
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !91
  store i64 %i.dl, ptr %i.bf, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a

.noexc230:                                        ; preds = %_ZNR5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit229
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.11, i64 1)
          to label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit232 unwind label %bb.bu

bb.bu:                                            ; preds = %.noexc230, %_ZNR5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit229
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit232: ; preds = %.noexc230, %_ZN12_GLOBAL__N_17ToWriteD2Ev.exit222
  %.298 = phi i1 [ %.096742, %_ZN12_GLOBAL__N_17ToWriteD2Ev.exit222 ], [ true, %.noexc230 ]
  %i.lz = load i8, ptr %i.ar, align 8, !tbaa !34, !range !32, !noundef !25
  %i.ma = trunc nuw i8 %i.lz to i1
  %i.mb = load ptr, ptr %31, align 8, !tbaa !52   ; 10 uses
  br i1 %i.ma, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit232
  %i.mc = icmp eq ptr %i.mb, %i.bb
  br i1 %i.mc, label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i235: ; preds = %bb.bv
  %i.md = load i64, ptr %i.bb, align 8, !tbaa !30
  %i.me = add i64 %i.md, 1
  br label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237.sink.split

bb.bw:                                            ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit232
  %.not.i.i.i233 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i233, label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i.i234

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i.i234: ; preds = %bb.bw
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !40 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i.i.i.i413 = icmp eq ptr %i.mg, %i.mi
  br i1 %.not4.i.i.i.i.i413, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i421, label %.lr.ph.i.i.i.i.i414

.lr.ph.i.i.i.i.i414:                              ; preds = %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i.i234, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i417
  %.05.i.i.i.i.i415 = phi ptr [ %i.mp, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i417 ], [ %i.mg, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i.i234 ] ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i415, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mj) #16
  %i.mk = load ptr, ptr %.05.i.i.i.i.i415, align 8, !tbaa !28 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i415, i64 16 ; 2 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i416: ; preds = %.lr.ph.i.i.i.i.i414
  %i.mn = load i64, ptr %i.ml, align 8, !tbaa !30
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mo) #18
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i417

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i417: ; preds = %.lr.ph.i.i.i.i.i414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i416
  %i.mp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i415, i64 40 ; 2 uses
  %.not.i.i.i.i.i418 = icmp eq ptr %i.mp, %i.mi
  br i1 %.not.i.i.i.i.i418, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i419, label %.lr.ph.i.i.i.i.i414, !llvm.loop !0

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i419: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i.i417
  %.pr.i.i.i420 = load ptr, ptr %i.mf, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i421

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i421: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i419, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i.i234
  %i.mq = phi ptr [ %.pr.i.i.i420, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i419 ], [ %i.mg, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i.i234 ] ; 3 uses
  %.not.i.i1.i.i.i422 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i1.i.i.i422, label %_ZN5vcpkg4Json6ObjectD2Ev.exit.i423, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i421
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !42
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = ptrtoint ptr %i.mq to i64
  %i.mv = sub i64 %i.mt, %i.mu
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mv) #18
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit.i423

_ZN5vcpkg4Json6ObjectD2Ev.exit.i423:              ; preds = %bb.bx, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i.i421
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !45 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i.i424 = icmp eq ptr %i.mx, %i.mz
  br i1 %.not4.i.i.i.i424, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i433, label %.lr.ph.i.i.i.i425

.lr.ph.i.i.i.i425:                                ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit.i423, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i429
  %.05.i.i.i.i426 = phi ptr [ %i.nb, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i429 ], [ %i.mx, %_ZN5vcpkg4Json6ObjectD2Ev.exit.i423 ] ; 2 uses
  %i.na = load ptr, ptr %.05.i.i.i.i426, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i427 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i.i.i427, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i429, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i.i428

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i.i428: ; preds = %.lr.ph.i.i.i.i425
  call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.na) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef 176) #18
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i429

_ZSt8_DestroyISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i429: ; preds = %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i.i428, %.lr.ph.i.i.i.i425
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i426, i64 8 ; 2 uses
  %.not.i.i.i.i430 = icmp eq ptr %i.nb, %i.mz
  br i1 %.not.i.i.i.i430, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i431, label %.lr.ph.i.i.i.i425, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i431: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i429
  %.pr.i.i432 = load ptr, ptr %i.mw, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i433

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i433: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i431, %_ZN5vcpkg4Json6ObjectD2Ev.exit.i423
  %i.nc = phi ptr [ %.pr.i.i432, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i431 ], [ %i.mx, %_ZN5vcpkg4Json6ObjectD2Ev.exit.i423 ] ; 3 uses
  %.not.i.i1.i.i434 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i1.i.i434, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i435, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i433
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !49
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = ptrtoint ptr %i.nc to i64
  %i.nh = sub i64 %i.nf, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.nh) #18
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i435

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i435: ; preds = %bb.by, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i433
  %i.ni = load ptr, ptr %i.mb, align 8, !tbaa !51 ; 3 uses
  %.not.i.i436 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i436, label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237.sink.split, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i437

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i437: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i435
  call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.ni) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef 488) #18
  br label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237.sink.split

_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237.sink.split: ; preds = %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i437, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i235
  %.sink1030 = phi i64 [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i235 ], [ 56, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i435 ], [ 56, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i437 ]
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %.sink1030) #18
  br label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237

_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237: ; preds = %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237.sink.split, %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit

bb.bz:                                            ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %.pn133.pn = phi { ptr, i32 } [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %i.ly, %bb.bu ]
  call void @_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %31) #16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bp
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %bb.bz ], [ %i.li, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %bb.cd

_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit: ; preds = %.noexc, %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit, %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237
  %.4100 = phi i1 [ %.298, %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit237 ], [ %.197, %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit ], [ true, %.noexc ] ; 2 uses
  %i.nj = load i8, ptr %i.an, align 8, !tbaa !100, !range !32, !noundef !25
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit
  %i.nl = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.bq
  br i1 %i.nm, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split

bb.cc:                                            ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit
  %i.nn = load ptr, ptr %.sroa.gep508, align 8, !tbaa !28 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.bp
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cc
  %i.np = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.nr = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.bq
  br i1 %i.ns, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.cb
  %.sink1031 = phi ptr [ %i.nl, %bb.cb ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  %i.nt = load i64, ptr %i.bq, align 8, !tbaa !30
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %.sink1031, i64 noundef %i.nu) #18
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit: ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  %i.nv = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.aj
  br i1 %i.nw, label %_ZN5vcpkg4PathD2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240: ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit
  %i.nx = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #18
  br label %_ZN5vcpkg4PathD2Ev.exit242

_ZN5vcpkg4PathD2Ev.exit242:                       ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0515.0741, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.nz, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.k

bb.cd:                                            ; preds = %bb.ca, %bb.az, %bb.aa
  %.pn138.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn138.pn.pn.pn.pn, %bb.az ], [ %.pn133.pn.pn, %bb.ca ], [ %i.cw, %bb.aa ] ; 4 uses
  %i.oa = load i8, ptr %i.an, align 8, !tbaa !100, !range !32, !noundef !25
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.oc = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.bq
  br i1 %i.od, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248: ; preds = %bb.ce
  %44 = load i64, ptr %i.bq, align 8, !tbaa !30
  %45 = add i64 %44, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %45) #18
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250

bb.cf:                                            ; preds = %bb.cd
  %i.oe = load ptr, ptr %.sroa.gep508, align 8, !tbaa !28 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.bp
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %bb.cf
  %i.og = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i244: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  %i.oi = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.bq
  br i1 %i.oj, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i244
  %i.ok = load i64, ptr %i.bq, align 8, !tbaa !30
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #18
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i244, %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248, %bb.z
  %.pn138.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.z ], [ %.pn138.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i245 ], [ %.pn138.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248 ], [ %.pn138.pn.pn.pn.pn.pn, %bb.ce ], [ %.pn138.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250, %bb.w, %bb.v
  %.pn138.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn138.pn.pn.pn.pn.pn.pn, %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250 ], [ %i.cp, %bb.w ], [ %i.co, %bb.v ] ; 2 uses
  %i.om = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.aj
  br i1 %i.on, label %_ZN5vcpkg4PathD2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251: ; preds = %bb.cg
  %i.oo = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #18
  br label %_ZN5vcpkg4PathD2Ev.exit253

_ZN5vcpkg4PathD2Ev.exit253:                       ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251, %bb.u
  %.pn138.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.u ], [ %.pn138.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251 ], [ %.pn138.pn.pn.pn.pn.pn.pn.pn, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %.body

bb.ch:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  %i.oq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths23builtin_ports_directoryEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  store i32 166, ptr %36, align 8, !tbaa !95
  %i.or = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @.str.3, ptr %i.or, align 8, !tbaa !96
  %i.os = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr @__func__._ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.os, align 8, !tbaa !97
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem29get_directories_non_recursiveERKNS_4PathENS_8LineInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.46") align 8 %35, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.oq, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %36)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  %i.ot = load ptr, ptr %35, align 8, !tbaa !101  ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !101 ; 2 uses
  %.not570743 = icmp eq ptr %i.ot, %i.ov
  br i1 %.not570743, label %._crit_edge748, label %.lr.ph747

.lr.ph747:                                        ; preds = %bb.cj
  %i.ow = getelementptr inbounds nuw i8, ptr %37, i64 144 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %37, i64 152 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %37, i64 160 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %41, i64 40 ; 6 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %41, i64 56 ; 7 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.ph = getelementptr inbounds nuw i8, ptr %41, i64 72 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %41, i64 88 ; 5 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %41, i64 80
  %i.pk = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %39, i64 32 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %39, i64 40 ; 6 uses
  %i.po = getelementptr inbounds nuw i8, ptr %39, i64 56 ; 7 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.pq = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %39, i64 88 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %37, i64 168 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %37, i64 112
  %i.pv = getelementptr inbounds nuw i8, ptr %37, i64 128 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.px = getelementptr inbounds nuw i8, ptr %37, i64 88 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.pz = getelementptr inbounds nuw i8, ptr %37, i64 56 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 2 uses
  br label %bb.ck

._crit_edge748:                                   ; preds = %_ZN5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit, %bb.cj
  %.5101.lcssa = phi i1 [ %.096.lcssa, %bb.cj ], [ %.6102, %_ZN5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit ]
  call void @_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  br label %bb.eh

bb.ck:                                            ; preds = %.lr.ph747, %_ZN5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit
  %.5101745 = phi i1 [ %.096.lcssa, %.lr.ph747 ], [ %.6102, %_ZN5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit ]
  %.sroa.0500.0744 = phi ptr [ %i.ot, %.lr.ph747 ], [ %i.wz, %_ZN5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #16
  %i.qb = invoke { ptr, i64 } @_ZNK5vcpkg4Path8filenameEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0500.0744)
          to label %bb.cl unwind label %bb.df     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %i.qc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths23builtin_ports_directoryEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.cm unwind label %bb.df

bb.cm:                                            ; preds = %bb.cl
  %i.qd = extractvalue { ptr, i64 } %i.qb, 1
  %i.qe = extractvalue { ptr, i64 } %i.qb, 0
  invoke void @_ZN5vcpkg10Paragraphs30try_load_builtin_port_requiredERKNS_18ReadOnlyFilesystemENS_10StringViewERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Paragraphs::PortLoadResult") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr %i.qe, i64 %i.qd, ptr noundef nonnull align 8 dereferenceable(32) %i.qc)
          to label %bb.cn unwind label %bb.df

bb.cn:                                            ; preds = %bb.cm
  %i.qf = load i8, ptr %i.ow, align 8, !tbaa !55, !range !32, !noundef !25
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %_ZNR5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEE5errorEv.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #16
  store ptr %i.ox, ptr %38, align 8, !tbaa !35
  %i.qh = load ptr, ptr %.sroa.gep, align 8, !tbaa !28 ; 2 uses
  %i.qi = load i64, ptr %.sroa.gep.sroa.gep, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i64 %i.qi, ptr %i.f, align 8, !tbaa !91
  %i.qj = icmp ugt i64 %i.qi, 15
  br i1 %i.qj, label %.noexc.i.i256, label %._crit_edge.i.i.i255

.noexc.i.i256:                                    ; preds = %bb.co
  %i.qk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc257 unwind label %bb.dg ; 2 uses

.noexc257:                                        ; preds = %.noexc.i.i256
  store ptr %i.qk, ptr %38, align 8, !tbaa !28
  %i.ql = load i64, ptr %i.f, align 8, !tbaa !91
  store i64 %i.ql, ptr %i.ox, align 8, !tbaa !30
  br label %._crit_edge.i.i.i255

._crit_edge.i.i.i255:                             ; preds = %.noexc257, %bb.co
  %i.qm = phi ptr [ %i.qk, %.noexc257 ], [ %i.ox, %bb.co ] ; 2 uses
  switch i64 %i.qi, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i255
  %i.qn = load i8, ptr %i.qh, align 1, !tbaa !30
  store i8 %i.qn, ptr %i.qm, align 1, !tbaa !30
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i.i255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qm, ptr align 1 %i.qh, i64 %i.qi, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i255
  %i.qo = load i64, ptr %i.f, align 8, !tbaa !91  ; 2 uses
  store i64 %i.qo, ptr %i.oy, align 8, !tbaa !29
  %i.qp = load ptr, ptr %38, align 8, !tbaa !28
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qo
  store i8 0, ptr %i.qq, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.qr = invoke { ptr, i64 } @_ZNK5vcpkg4Path8filenameEv(ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.cs unwind label %bb.dh     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.qs = extractvalue { ptr, i64 } %i.qr, 0
  %i.qt = extractvalue { ptr, i64 } %i.qr, 1
  %i.qu = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %i.qs, i64 %i.qt, ptr nonnull @.str.4, i64 7) #16
  br i1 %i.qu, label %bb.ct, label %bb.dl

bb.ct:                                            ; preds = %bb.cs
  br i1 %.sroa.0.0.i.i.i176532534, label %bb.cu, label %bb.ea

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #16
  store ptr %i.pk, ptr %39, align 8, !tbaa !35
  %i.qv = load ptr, ptr %i.oz, align 8, !tbaa !28 ; 2 uses
  %i.qw = load i64, ptr %i.pb, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.qw, ptr %i.e, align 8, !tbaa !91
  %i.qx = icmp ugt i64 %i.qw, 15
  br i1 %i.qx, label %.noexc.i260, label %._crit_edge.i.i259

.noexc.i260:                                      ; preds = %bb.cu
  %i.qy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc261 unwind label %bb.di ; 2 uses

.noexc261:                                        ; preds = %.noexc.i260
  store ptr %i.qy, ptr %39, align 8, !tbaa !28
  %i.qz = load i64, ptr %i.e, align 8, !tbaa !91
  store i64 %i.qz, ptr %i.pk, align 8, !tbaa !30
  br label %._crit_edge.i.i259

._crit_edge.i.i259:                               ; preds = %.noexc261, %bb.cu
  %i.ra = phi ptr [ %i.qy, %.noexc261 ], [ %i.pk, %bb.cu ] ; 2 uses
  switch i64 %i.qw, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %bb.cx
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i259
  %i.rb = load i8, ptr %i.qv, align 1, !tbaa !30
  store i8 %i.rb, ptr %i.ra, align 1, !tbaa !30
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i259
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ra, ptr align 1 %i.qv, i64 %i.qw, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i259
  %i.rc = load i64, ptr %i.e, align 8, !tbaa !91  ; 2 uses
  store i64 %i.rc, ptr %i.pl, align 8, !tbaa !29
  %i.rd = load ptr, ptr %39, align 8, !tbaa !28
end_hunk_1
