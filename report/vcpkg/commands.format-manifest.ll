Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.format-manifest?download=true
inline.NumInlined: 559
inline.NumDeleted: 333
begin_hunk_0_@_ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a
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
  br i1 %.sroa.0.0.i.i.i.ph, label %bb.k, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread

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
  br i1 %or.cond.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177
  %.sroa.042.0.copyload = load i64, ptr @_ZN5vcpkg27msgMissingArgFormatManifestE, align 8, !tbaa !91
  invoke void @_ZN5vcpkg3msg15println_warningIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %.sroa.042.0.copyload)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.g:                                             ; preds = %bb.d, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177
  br i1 %.sroa.0.0.i.i.i.ph, label %bb.k, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread: ; preds = %bb.b, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, %bb.g
  %.sroa.0.0.i.i.i176532533 = phi i1 [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ %not..i175, %bb.g ], [ false, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %20, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store i32 112, ptr %21, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.3, ptr %i.ad, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @__func__._ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.ae, align 8, !tbaa !97
  %.sroa.041.0.copyload = load i64, ptr @_ZN5vcpkg28msgFailedToFormatMissingFileE, align 8, !tbaa !91
  invoke void @_ZN5vcpkg6Checks19msg_exit_with_errorIJEJEEEvRKNS_8LineInfoENS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.041.0.copyload) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.gu

bb.k:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread, %bb.g
  %.sroa.0.0.i.i.i526531536 = phi i1 [ true, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread ], [ true, %bb.g ]
  %.sroa.0.0.i.i.i176532534 = phi i1 [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ %.sroa.0.0.i.i.i176532533, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread ], [ %not..i175, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !93 ; 2 uses
  %.not740 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not740, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 3 uses
  %.sroa.gep508 = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  %i.ap = load ptr, ptr @_ZN5vcpkg8out_sinkE, align 8, !nonnull !25, !align !98
  %i.aq = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %.sroa.gep512 = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %34, i64 72 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 88 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 72 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 88 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN5vcpkg4PathD2Ev.exit242, %bb.k
  %.096.lcssa = phi i1 [ false, %bb.k ], [ %.4100, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 3 uses
  br i1 %.sroa.0.0.i.i.i526531536, label %bb.ci, label %bb.ej

bb.l:                                             ; preds = %.lr.ph, %_ZN5vcpkg4PathD2Ev.exit242
  %.096742 = phi i1 [ false, %.lr.ph ], [ %.4100, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 2 uses
  %.sroa.0515.0741 = phi ptr [ %i.ah, %.lr.ph ], [ %i.nz, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0515.0741)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bs = invoke noundef zeroext i1 @_ZNK5vcpkg4Path11is_relativeEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  br i1 %i.bs, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.bt = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #16 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.bu, i64 %i.bv)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %23, align 8, !tbaa !28   ; 6 uses
  %44 = icmp eq ptr %i.bw, %i.ak
  %i.bx = load ptr, ptr %24, align 8, !tbaa !28   ; 5 uses
  %i.by = icmp eq ptr %i.bx, %i.al                ; 2 uses
  br i1 %44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  br i1 %i.by, label %bb.q, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.p
  br i1 %i.by, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = load i64, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  switch i64 %i.bz, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !30
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = load i64, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  store i64 %i.cc, ptr %i.an, align 8, !tbaa !29
  %i.cd = load ptr, ptr %23, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !30
  %.pre.i.i = load ptr, ptr %24, align 8, !tbaa !28
  br label %_ZN5vcpkg4PathaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.bx, ptr %23, align 8, !tbaa !28
  %i.cf = load <2 x i64>, ptr %i.am, align 8, !tbaa !30
  store <2 x i64> %i.cf, ptr %i.an, align 8, !tbaa !30
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cg = load i64, ptr %i.ak, align 8, !tbaa !30
  store ptr %i.bx, ptr %23, align 8, !tbaa !28
  %i.ch = load <2 x i64>, ptr %i.am, align 8, !tbaa !30
  store <2 x i64> %i.ch, ptr %i.an, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bw, ptr %24, align 8, !tbaa !28
  store i64 %i.cg, ptr %i.al, align 8, !tbaa !30
  br label %_ZN5vcpkg4PathaSEOS0_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.al, ptr %24, align 8, !tbaa !28
  br label %_ZN5vcpkg4PathaSEOS0_.exit

_ZN5vcpkg4PathaSEOS0_.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.t, %bb.u
  %i.ci = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bw, %bb.t ], [ %i.al, %bb.u ]
  store i64 0, ptr %i.am, align 8, !tbaa !29
  store i8 0, ptr %i.ci, align 1, !tbaa !30
  %i.cj = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.al
  br i1 %i.ck, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg4PathaSEOS0_.exit
  %i.cl = load i64, ptr %i.al, align 8, !tbaa !30
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #18
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZN5vcpkg4PathaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.y

bb.v:                                             ; preds = %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit253

bb.w:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.x:                                             ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.ch

bb.y:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem17try_read_contentsERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cq = load i8, ptr %i.ao, align 8, !tbaa !100, !range !32, !noundef !25
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit, label %bb.ac

_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.z
  %i.cs = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #16 ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.ct, i64 %i.cu)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.11, i64 1)
          to label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250

bb.ab:                                            ; preds = %.noexc, %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit, %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ac:                                            ; preds = %bb.z
  %i.cx = invoke { ptr, i64 } @_ZNK5vcpkg4Path8filenameEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ad unwind label %bb.ab     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1
  %i.da = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %i.cy, i64 %i.cz, ptr nonnull @.str.4, i64 7) #16
  br i1 %i.da, label %bb.ae, label %bb.bb

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.gep508) #16
  %i.db = load ptr, ptr %27, align 8
  %i.dc = load i64, ptr %i.bd, align 8
  %i.dd = load ptr, ptr %28, align 8
  %i.de = load i64, ptr %i.be, align 8
  invoke void @_ZN5vcpkg10Paragraphs26try_load_control_file_textENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.61") align 8 %26, ptr %i.db, i64 %i.dc, ptr %i.dd, i64 %i.de)
          to label %bb.af unwind label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.df = load i8, ptr %i.bf, align 8, !tbaa !34, !range !32, !noundef !25
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZNR5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  store ptr %i.bg, ptr %29, align 8, !tbaa !35
  %i.dh = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.di = load i64, ptr %.sroa.gep512, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i64 %i.di, ptr %i.j, align 8, !tbaa !91
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ag
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc180 unwind label %bb.as ; 2 uses

.noexc180:                                        ; preds = %.noexc.i
  store ptr %i.dk, ptr %29, align 8, !tbaa !28
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !91
  store i64 %i.dl, ptr %i.bg, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc180, %bb.ag
  %i.dm = phi ptr [ %i.dk, %.noexc180 ], [ %i.bg, %bb.ag ] ; 2 uses
  switch i64 %i.di, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.dn = load i8, ptr %i.dh, align 1, !tbaa !30
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !30
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dh, i64 %i.di, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i
  %i.do = load i64, ptr %i.j, align 8, !tbaa !91  ; 2 uses
  store i64 %i.do, ptr %i.bh, align 8, !tbaa !29
  %i.dp = load ptr, ptr %29, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %i.dr = load i64, ptr %26, align 8, !tbaa !37
  store i64 %i.dr, ptr %i.bi, align 8, !tbaa !37
  store ptr null, ptr %26, align 8, !tbaa !37
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !35
  %i.ds = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ak
  br i1 %i.dt, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i64, ptr %i.an, align 8, !tbaa !29 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.dw, i1 false)
  br label %_ZN5vcpkg4PathC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.aj
  store ptr %i.ds, ptr %i.bj, align 8, !tbaa !28
  %i.dx = load i64, ptr %i.ak, align 8, !tbaa !30
  store i64 %i.dx, ptr %i.bk, align 8, !tbaa !30
  %.pre = load i64, ptr %i.an, align 8, !tbaa !29
  br label %_ZN5vcpkg4PathC2EOS0_.exit

_ZN5vcpkg4PathC2EOS0_.exit:                       ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %i.dy = phi i64 [ %i.du, %bb.ak ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ]
  store i64 %i.dy, ptr %i.bl, align 8, !tbaa !29
  store ptr %i.ak, ptr %23, align 8, !tbaa !28
  store i64 0, ptr %i.an, align 8, !tbaa !29
  store i8 0, ptr %i.ak, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  %i.dz = invoke { ptr, i64 } @_ZNK5vcpkg4Path11parent_pathEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.al unwind label %_ZN5vcpkg4PathD2Ev.exit190.thread ; 2 uses

bb.al:                                            ; preds = %_ZN5vcpkg4PathC2EOS0_.exit
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  invoke void @_ZN5vcpkg4PathC1ENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr %i.ea, i64 %i.eb)
          to label %bb.am unwind label %_ZN5vcpkg4PathD2Ev.exit190.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNO5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr nonnull @.str.5, i64 10)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
end_hunk_0
