Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVMCInstLower?download=true
inline.NumInlined: 543
inline.NumDeleted: 317
begin_hunk_0_@_ZNK4llvm16SPIRVMCInstLower5lowerEPKNS_12MachineInstrERNS_6MCInstEPNS_5SPIRV18ModuleAnalysisInfoE:bb.a
bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.be = add nuw i32 %.01117.i.i.i, 1
  %i.bf = and i32 %i.be, %i.am                    ; 3 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !56
  %i.bk = and i32 %i.bf, 31
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZN4llvm5SPIRV18ModuleAnalysisInfo15getGlobalObjRegEPKNS_12GlobalObjectE.exit.thread, !prof !61

_ZN4llvm5SPIRV18ModuleAnalysisInfo15getGlobalObjRegEPKNS_12GlobalObjectE.exit: ; preds = %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56 ; 2 uses
  %.not73 = icmp eq i32 %i.bo, 0
  br i1 %.not73, label %_ZN4llvm5SPIRV18ModuleAnalysisInfo15getGlobalObjRegEPKNS_12GlobalObjectE.exit.thread, label %bb.l

_ZN4llvm5SPIRV18ModuleAnalysisInfo15getGlobalObjRegEPKNS_12GlobalObjectE.exit.thread: ; preds = %bb.j, %_ZN4llvm8dyn_castINS_12GlobalObjectEKNS_11GlobalValueEEEDcPT0_.exit, %_ZN4llvm5SPIRV18ModuleAnalysisInfo15getGlobalObjRegEPKNS_12GlobalObjectE.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !64
  store i8 0, ptr %i.bp, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @_ZNK4llvm12MachineInstr5printERNS_11raw_ostreamEbbbbPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(48) %8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9) #14 ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.bs = load ptr, ptr %7, align 8, !tbaa !67
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef %i.bs, i1 noundef zeroext true) #15
  unreachable

bb.l:                                             ; preds = %_ZN4llvm5SPIRV18ModuleAnalysisInfo15getGlobalObjRegEPKNS_12GlobalObjectE.exit
  %.sroa.3.8.insert.ext.i = zext i32 %i.bo to i64
  br label %bb.v

bb.m:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !118
  store ptr %i.bw, ptr %6, align 8
  store i32 %i.by, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS6_JEEES2_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %6), !noalias !119 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bz, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.bz, 1
  %i.ca = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.ca, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  %.sroa.07.0.copyload.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !56
  br label %_ZN4llvm5SPIRV18ModuleAnalysisInfo22getOrCreateMBBRegisterERKNS_17MachineBasicBlockE.exit

bb.n:                                             ; preds = %bb.m
  %i.cb = load i32, ptr %i.t, align 8, !tbaa !124 ; 2 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.t, align 8, !tbaa !124
  %i.cd = or i32 %i.cb, -2147483648               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !56
  br label %_ZN4llvm5SPIRV18ModuleAnalysisInfo22getOrCreateMBBRegisterERKNS_17MachineBasicBlockE.exit

_ZN4llvm5SPIRV18ModuleAnalysisInfo22getOrCreateMBBRegisterERKNS_17MachineBasicBlockE.exit: ; preds = %._crit_edge.i, %bb.n
  %.sroa.07.0.copyload.i = phi i32 [ %.sroa.07.0.copyload.pre.i, %._crit_edge.i ], [ %i.cd, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.sroa.3.8.insert.ext.i56 = zext i32 %.sroa.07.0.copyload.i to i64
  br label %bb.v

bb.o:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.b, align 8, !tbaa !186
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !187 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ch, %bb.o ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.o ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !186
  %i.ck = icmp ult ptr %i.cj, %i.k                ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ck, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ck, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEE11lower_boundERSE_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !189

_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEE11lower_boundERSE_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cl = icmp eq ptr %.19.i.i.i.i.i, %i.r
  br i1 %i.cl, label %.critedge.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEE11lower_boundERSE_.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !191
  %i.co = icmp ult ptr %i.k, %i.cn
  br i1 %i.co, label %.critedge.i.i, label %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i

.critedge.i.i:                                    ; preds = %bb.p, %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEE11lower_boundERSE_.exit.i.i, %bb.o
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.p ], [ %.19.i.i.i.i.i, %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEE11lower_boundERSE_.exit.i.i ], [ %i.r, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.b, ptr %4, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.cp = call ptr @_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESP_IJEEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i

_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i: ; preds = %.critedge.i.i, %bb.p
  %.sroa.06.0.i.i = phi ptr [ %i.cp, %.critedge.i.i ], [ %.19.i.i.i.i.i, %bb.p ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i.i, label %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cr, %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cs, %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !200
  %i.cv = icmp ult i32 %i.cu, %i.cg               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_NS0_10MCRegisterEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !202

_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_NS0_10MCRegisterEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i.i, %i.cs
  br i1 %i.cw, label %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit.thread, label %_ZNSt3mapIN4llvm8RegisterENS0_10MCRegisterESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.i

_ZNSt3mapIN4llvm8RegisterENS0_10MCRegisterESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.i: ; preds = %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_NS0_10MCRegisterEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !200
  %i.cz = icmp ult i32 %i.cg, %i.cy
  br i1 %i.cz, label %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit.thread, label %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit

_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit.thread: ; preds = %_ZNSt3mapIN4llvm8RegisterENS0_10MCRegisterESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.i, %_ZNSt3mapIPKN4llvm15MachineFunctionES_INS0_8RegisterENS0_10MCRegisterESt4lessIS4_ESaISt4pairIKS4_S5_EEES6_IS3_ESaIS8_IKS3_SC_EEEixERSE_.exit.i, %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_NS0_10MCRegisterEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit: ; preds = %_ZNSt3mapIN4llvm8RegisterENS0_10MCRegisterESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not72 = icmp eq i32 %i.db, 0
  br i1 %.not72, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit.thread, %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit
  %i.dc = load i32, ptr %i.cf, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit, %bb.q
  %.sroa.013.0 = phi i32 [ %i.dc, %bb.q ], [ %i.db, %_ZN4llvm5SPIRV18ModuleAnalysisInfo16getRegisterAliasEPKNS_15MachineFunctionENS_8RegisterE.exit ]
  %.sroa.3.8.insert.ext.i58 = zext i32 %.sroa.013.0 to i64
  br label %bb.v

bb.s:                                             ; preds = %bb.f
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !8
  %i.de = icmp eq i32 %i.dd, 490
  %i.df = icmp eq i64 %indvars.iv, 2
  %or.cond = and i1 %i.df, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !39 ; 2 uses
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.di = trunc i64 %i.dh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.di, ptr %i.a, align 4, !tbaa !56
  %i.dj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_10MCRegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.dk, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.3.8.insert.ext.i60 = zext i32 %.sroa.0.0.copyload.i to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = call noundef float @_ZNK4llvm7APFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dn) #14
  %i.dp = fptoui float %i.do to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.r, %_ZN4llvm5SPIRV18ModuleAnalysisInfo22getOrCreateMBBRegisterERKNS_17MachineBasicBlockE.exit, %bb.l
  %.sroa.1069.0 = phi i64 [ %.sroa.3.8.insert.ext.i, %bb.l ], [ %.sroa.3.8.insert.ext.i56, %_ZN4llvm5SPIRV18ModuleAnalysisInfo22getOrCreateMBBRegisterERKNS_17MachineBasicBlockE.exit ], [ %.sroa.3.8.insert.ext.i58, %bb.r ], [ %.sroa.3.8.insert.ext.i60, %bb.t ], [ %i.dp, %bb.u ], [ %i.dh, %bb.s ] ; 2 uses
  %.sroa.068.0 = phi i8 [ 1, %bb.l ], [ 1, %_ZN4llvm5SPIRV18ModuleAnalysisInfo22getOrCreateMBBRegisterERKNS_17MachineBasicBlockE.exit ], [ 1, %bb.r ], [ 1, %bb.t ], [ 4, %bb.u ], [ 2, %bb.s ] ; 2 uses
  %i.dq = load i32, ptr %i.y, align 8, !tbaa !203 ; 2 uses
  %i.dr = load i32, ptr %i.z, align 4, !tbaa !204
  %.not.i.i = icmp ult i32 %i.dq, %i.dr
  br i1 %.not.i.i, label %bb.x, label %bb.w, !prof !60

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 %.sroa.068.0, i64 %.sroa.1069.0)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.x:                                             ; preds = %bb.v
  %i.ds = zext i32 %i.dq to i64
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !205
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  store i8 %.sroa.068.0, ptr %i.du, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.1069.0, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.dv = load i32, ptr %i.y, align 8, !tbaa !203
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.y, align 8, !tbaa !203
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not55 = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %.not55, label %._crit_edge, label %bb.f, !llvm.loop !206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm11raw_ostream13SetUnbufferedEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.c, align 4, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %0, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !215
  tail call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, i64 noundef 0, i32 noundef 0) #14
  ret void
}

declare void @_ZNK4llvm12MachineInstr5printERNS_11raw_ostreamEbbbbPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !62, !alias.scope !217
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !64, !alias.scope !217
  store i8 0, ptr %i.e, align 8, !tbaa !39, !alias.scope !217
  %i.g = add i64 %i.d, %i.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g) #14
  %i.h = load i64, ptr %i.f, align 8, !tbaa !64, !alias.scope !217
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) #14 ; 0 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !64, !alias.scope !217
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %bb.c, label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
  unreachable

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef float @_ZNK4llvm7APFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS6_JEEES2_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !220, !noalias !221 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226, !noalias !221 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !227, !noalias !221 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !228    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = mul i32 %i.o, 37
  %i.q = shl i64 %i.m, 32
  %i.r = zext i32 %i.p to i64
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.h, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !57

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.aq, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %.01624.i = phi i32 [ %i.ao, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = icmp eq ptr %i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.o, %i.ak
  %i.am = select i1 %i.ai, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit, label %bb.c, !prof !60

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = add nuw i32 %.01624.i, 1
  %i.ao = and i32 %i.an, %i.h                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = lshr i64 %i.ap, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !56
  %i.au = and i32 %i.ao, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit, !prof !61, !llvm.loop !230

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.aq, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !231
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !232
  %i.az = shl i32 %i.ay, 2
  %i.ba = add i32 %i.az, 4
  %i.bb = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ba, %i.bb
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit, label %bb.d, !prof !60

bb.d:                                             ; preds = %.loopexit
  %i.bc = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bc)
  %i.bd = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !231
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !226
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !220
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.be = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bf = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bg = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = lshr i64 %i.bk, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !56
  %i.br = or i32 %i.bn, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !56
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !232
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.ax, align 8, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 0, ptr %i.bu, align 8, !tbaa !233
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !220, !noalias !235 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226, !noalias !235 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !227, !noalias !235 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !228    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  %i.o = mul i32 %i.n, 37
  %i.p = shl i64 %i.l, 32
  %i.q = zext i32 %i.o to i64
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !57

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ap, %bb.c ], [ %i.y, %bb.b ] ; 3 uses
  %.01624 = phi i32 [ %i.an, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !228
  %i.ah = icmp eq ptr %i.h, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.n, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !60

bb.c:                                             ; preds = %.lr.ph
  %i.am = add nuw i32 %.01624, 1
  %i.an = and i32 %i.am, %i.g                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !61, !llvm.loop !230

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ap, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !231
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.41", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !220
  store ptr %i.y, ptr %i.q, align 8, !tbaa !226
  store i32 0, ptr %i.p, align 16, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !240
  %i.aa = load ptr, ptr %0, align 8, !tbaa !231
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !240
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !240
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !240
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !56 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !56
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !56
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !56
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !56
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !227  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !220
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !227
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !228
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %i.ac = mul i32 %i.ab, 37
  %i.ad = shl i64 %i.z, 32
  %i.ae = zext i32 %i.ac to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !56
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !241

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !56
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !56
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !56
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !56
  %i.bj = add i32 %.0.i17, -1
  %i.bk = and i32 %i.bj, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !242

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !243

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !227
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !232
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !232
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !220
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #14
  store i32 0, ptr %i.d, align 4, !tbaa !227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15MachineFunctionEiENS_10MCRegisterENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESP_IJEEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !198
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  store ptr %i.e, ptr %i.b, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !244
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.g, ptr %i.i, align 8, !tbaa !245
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.j, align 8, !tbaa !246
  %i.k = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186
  %i.s = icmp ult ptr %i.p, %i.r
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.t = phi i1 [ %i.s, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !246
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !246
  br label %_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !187
  tail call void @_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_NS0_10MCRegisterEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.y)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #17
  br label %_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.d
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.l, %bb.d ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.i = load ptr, ptr %2, align 8, !tbaa !186
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE24_M_get_insert_unique_posERS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !188 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !186    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !186  ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !247

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !244
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE24_M_get_insert_unique_posERS5_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #18 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !186
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !186
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE24_M_get_insert_unique_posERS5_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !186    ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186  ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !188 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPKN4llvm15MachineFunctionESt4pairIKS3_St3mapINS0_8RegisterENS0_10MCRegisterESt4lessIS7_ESaIS4_IKS7_S8_EEEESt10_Select1stISF_ES9_IS3_ESaISF_EE24_M_get_insert_unique_posERS5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
end_hunk_0
