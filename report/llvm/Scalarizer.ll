Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Scalarizer?download=true
inline.NumInlined: 2963
inline.NumDeleted: 1477
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_10BasicBlockENS_9po_detail9NumberSetIS3_EEEENS_11GraphTraitsIS3_EEE4initES3_:bb.a
  store i32 %i.ap, ptr %i.ae, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_10BasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeINS_11Instruction13succ_iteratorEEEEEERSC_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_10BasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeINS_11Instruction13succ_iteratorEEEEEERSC_DpOT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_10BasicBlockENS_9po_detail9NumberSetIS3_EEEENS_11GraphTraitsIS3_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_10BasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeINS_11Instruction13succ_iteratorEEEEEERSC_DpOT_.exit, %_ZN4llvm18PostOrderTraversalIPNS_10BasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117ScalarizerVisitor7scatterEPN4llvm11InstructionEPNS1_5ValueERKNS_11VectorSplitE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1136) %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.152", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.155", align 1    ; 3 uses
  %7 = alloca %"class.std::tuple.152", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.155", align 1    ; 3 uses
  %9 = alloca %"struct.std::pair.148", align 8    ; 5 uses
  %10 = alloca %"struct.std::pair.148", align 8   ; 5 uses
  %i.a = load i8, ptr %3, align 8, !tbaa !127     ; 2 uses
  %i.b = icmp eq i8 %i.a, 23
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !575
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %9, align 8, !tbaa !213
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !134  ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.n, %bb.b ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.o, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !213  ; 2 uses
  %i.r = icmp ult ptr %i.q, %3
  br i1 %i.r, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = icmp ult ptr %3, %i.q
  br i1 %i.s, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !214
  %i.v = icmp ult ptr %i.u, %i.l
  br i1 %i.v, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.c ], [ %.013.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !215 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i: ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.o
  br i1 %i.x, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !213  ; 2 uses
  %i.aa = icmp ult ptr %3, %i.z
  br i1 %i.aa, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult ptr %i.z, %3
  br i1 %i.ab, label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !214
  %i.ae = icmp ult ptr %i.l, %i.ad
  br i1 %i.ae, label %.critedge.i, label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i, %bb.d, %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i, %bb.b
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.o, %bb.b ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i ], [ %.19.i.i.i.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %9, ptr %7, align 8, !tbaa !217, !alias.scope !576
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.af = call ptr @_ZNSt8_Rb_treeISt4pairIPN4llvm5ValueEPNS1_4TypeEES0_IKS6_NS1_11SmallVectorIS3_Lj8EEEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit

_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit: ; preds = %bb.e, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.af, %.critedge.i ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i ], [ %.19.i.i.i.i, %bb.e ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !218
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.ai, align 8, !tbaa !219
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !577
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !220
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.am, ptr %i.al, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 8, ptr %i.ao, align 4, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 255
  %i.au = icmp eq i32 %i.at, 15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !221
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !173 ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42 ; 3 uses
  %i.bc = icmp ult i32 %i.bb, %i.ay
  br i1 %i.bc, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit
  %i.bd = zext i32 %i.bb to i64                   ; 2 uses
  %i.be = sub nuw nsw i64 %i.az, %i.bd            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43
  %.not.i.i.i.i8.i = icmp ugt i32 %i.ay, %i.bg
  br i1 %.not.i.i.i.i8.i, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i, !prof !222

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.bh, i64 noundef %i.az, i64 noundef 8) #15
  %.pre.i.i18.i = load i32, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %.pre.i19.i = zext i32 %.pre.i.i18.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i10.i = phi i64 [ %i.bd, %bb.f ], [ %.pre.i19.i, %bb.g ]
  %i.bi = phi i32 [ %i.bb, %bb.f ], [ %.pre.i.i18.i, %bb.g ]
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.pre-phi.i10.i
  %.idx.i.i.i.i.i.i11.i = shl nuw nsw i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i11.i, i1 false), !tbaa !140
  %i.bl = trunc nuw i64 %i.be to i32
  %i.bm = add i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i, %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit122

.thread:                                          ; preds = %bb.a
  %i.bn = icmp ugt i8 %i.a, 29
  br i1 %i.bn, label %bb.i, label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit76.thread130

bb.i:                                             ; preds = %.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !209
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !42
  %i.bx = icmp ugt i32 %i.bw, %i.bu
  br i1 %i.bx, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit: ; preds = %bb.i
  %i.by = zext i32 %i.bu to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !579
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !155    ; 3 uses
  %13 = getelementptr inbounds i8, ptr %12, i64 -24
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !96     ; 2 uses
  %16 = load i8, ptr %13, align 8, !tbaa !127
  %17 = icmp eq i8 %16, 87
  br i1 %17, label %bb.l, label %bb.m

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread: ; preds = %bb.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !96
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.ci = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.ch) #15 ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !218
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.cj, align 8
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx.i75, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !219
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !577
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cm, align 8, !tbaa !220
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 8, ptr %i.cq, align 4, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !94
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = and i32 %i.cu, 255
  %i.cw = icmp eq i32 %i.cv, 15
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cy = zext i1 %i.cw to i8
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !221
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !173 ; 4 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = icmp eq i32 %i.da, 0
  br i1 %i.dc, label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit122, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread
  %.not.i.i.i.i.i = icmp ugt i32 %i.da, 8
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i, !prof !222

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull %i.co, i64 noundef %i.db, i64 noundef 8) #15
  %.pre.i.i.i = load i32, ptr %i.cp, align 8, !tbaa !42 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %i.cn, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.dd = phi ptr [ %i.co, %bb.j ], [ %.pre.i, %bb.k ]
  %.pre-phi.i.i = phi i64 [ 0, %bb.j ], [ %.pre.i.i, %bb.k ]
  %i.de = phi i32 [ 0, %bb.j ], [ %.pre.i.i.i, %bb.k ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.db, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !140
  %i.dg = add i32 %i.de, %i.da
  store i32 %i.dg, ptr %i.cp, align 8, !tbaa !42
  br label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit122

bb.l:                                             ; preds = %.preheader.preheader
  %i.dh = tail call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %15) #15 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i64 } %i.dh, 0 ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { ptr, i64 } %i.dh, 1
  %.not.i.i.i = icmp eq ptr %.fca.0.extract1.i.i, null
  %i.di = trunc i64 %.fca.1.extract2.i.i to i16
  %.sroa.211.0.extract.trunc.i = select i1 %.not.i.i.i, i16 0, i16 %i.di
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader.preheader
  %.sroa.019.0.i = phi ptr [ %.fca.0.extract1.i.i, %bb.l ], [ %12, %.preheader.preheader ] ; 3 uses
  %.sroa.8.0.i = phi i16 [ %.sroa.211.0.extract.trunc.i, %bb.l ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 48
  %.not.i = icmp eq ptr %.sroa.019.0.i, %i.dj
  br i1 %.not.i, label %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.8.8.insert.ext22.i = zext i16 %.sroa.8.0.i to i64
  %i.dk = tail call { ptr, i64 } @_ZN4llvm19skipDebugIntrinsicsENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr %.sroa.019.0.i, i64 %.sroa.8.8.insert.ext22.i) #15 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i64 } %i.dk, 0
  %.fca.1.extract.i = extractvalue { ptr, i64 } %i.dk, 1
  %.sroa.2.0.extract.trunc.i = trunc i64 %.fca.1.extract.i to i16
  br label %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit

_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit: ; preds = %bb.m, %bb.n
  %.sroa.019.1.i = phi ptr [ %.fca.0.extract.i, %bb.n ], [ %.sroa.019.0.i, %bb.m ]
  %.sroa.8.1.i = phi i16 [ %.sroa.2.0.extract.trunc.i, %bb.n ], [ %.sroa.8.0.i, %bb.m ]
  %.sroa.8.8.insert.ext.i = zext i16 %.sroa.8.1.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %10, align 8, !tbaa !213
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !134 ; 3 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !214
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not11.i.i.i.i79 = icmp eq ptr %i.dp, null
  br i1 %.not11.i.i.i.i79, label %.critedge.i92, label %.lr.ph.i.i.i.i80

.lr.ph.i.i.i.i80:                                 ; preds = %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84
  %.013.i.i.i.i81 = phi ptr [ %.1.i.i.i.i87, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84 ], [ %i.dp, %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit ] ; 5 uses
  %.0812.i.i.i.i82 = phi ptr [ %.19.i.i.i.i86, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84 ], [ %i.dq, %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i81, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !213 ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %3
  br i1 %i.dt, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i94, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i80
  %i.du = icmp ult ptr %3, %i.ds
  br i1 %i.du, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i83

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i83: ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i81, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !214
  %i.dx = icmp ult ptr %i.dw, %i.dn
  br i1 %i.dx, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i94, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i94: ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i83, %.lr.ph.i.i.i.i80
  br label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84: ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i94, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i83, %bb.o
  %.sink.i.i.i.i85 = phi i64 [ 24, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i94 ], [ 16, %bb.o ], [ 16, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i83 ]
  %.19.i.i.i.i86 = phi ptr [ %.0812.i.i.i.i82, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread.i.i.i.i94 ], [ %.013.i.i.i.i81, %bb.o ], [ %.013.i.i.i.i81, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i.i.i.i83 ] ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i81, i64 %.sink.i.i.i.i85
  %.1.i.i.i.i87 = load ptr, ptr %i.dy, align 8, !tbaa !215 ; 2 uses
  %.not.i.i.i.i88 = icmp eq ptr %.1.i.i.i.i87, null
  br i1 %.not.i.i.i.i88, label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i89, label %.lr.ph.i.i.i.i80, !llvm.loop !4

_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i89: ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.thread10.i.i.i.i84
  %i.dz = icmp eq ptr %.19.i.i.i.i86, %i.dq
  br i1 %i.dz, label %.critedge.i92, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i89
  %i.ea = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i86, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !213 ; 2 uses
  %i.ec = icmp ult ptr %3, %i.eb
  br i1 %i.ec, label %.critedge.i92, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = icmp ult ptr %i.eb, %3
  br i1 %i.ed, label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit95, label %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i90

_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i90: ; preds = %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i86, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !214
  %i.eg = icmp ult ptr %i.dn, %i.ef
  br i1 %i.eg, label %.critedge.i92, label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit95

.critedge.i92:                                    ; preds = %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i90, %bb.p, %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i89, %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit
  %.08.lcssa.i.i.i11.i93 = phi ptr [ %i.dq, %_ZL22skipPastPhiNodesAndDbgN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE.exit ], [ %.19.i.i.i.i86, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i90 ], [ %.19.i.i.i.i86, %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEE11lower_boundERSB_.exit.i89 ], [ %.19.i.i.i.i86, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %10, ptr %5, align 8, !tbaa !217, !alias.scope !580
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.eh = call ptr @_ZNSt8_Rb_treeISt4pairIPN4llvm5ValueEPNS1_4TypeEES0_IKS6_NS1_11SmallVectorIS3_Lj8EEEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i93, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit95

_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit95: ; preds = %bb.q, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i90, %.critedge.i92
  %.sroa.06.0.i91 = phi ptr [ %i.eh, %.critedge.i92 ], [ %.19.i.i.i.i86, %_ZNKSt4lessISt4pairIPN4llvm5ValueEPNS1_4TypeEEEclERKS6_S9_.exit.i90 ], [ %.19.i.i.i.i86, %bb.q ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i91, i64 48 ; 3 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !218
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.019.1.i, ptr %i.ej, align 8
  %.sroa.2.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.8.insert.ext.i, ptr %.sroa.2.0..sroa_idx.i96, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.ek, align 8, !tbaa !219
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !577
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ei, ptr %i.em, align 8, !tbaa !220
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 8, ptr %i.eq, align 4, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !94
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = and i32 %i.eu, 255
  %i.ew = icmp eq i32 %i.ev, 15
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ey = zext i1 %i.ew to i8
  store i8 %i.ey, ptr %i.ex, align 8, !tbaa !221
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !173 ; 3 uses
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i91, i64 56 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !42 ; 3 uses
  %i.fe = icmp ult i32 %i.fd, %i.fa
  br i1 %i.fe, label %bb.r, label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit76

bb.r:                                             ; preds = %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit95
  %i.ff = zext i32 %i.fd to i64                   ; 2 uses
  %i.fg = sub nuw nsw i64 %i.fb, %i.ff            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i91, i64 60
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !43
  %.not.i.i.i.i8.i98 = icmp ugt i32 %i.fa, %i.fi
  br i1 %.not.i.i.i.i8.i98, label %bb.s, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i99, !prof !222

bb.s:                                             ; preds = %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i91, i64 64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull %i.fj, i64 noundef %i.fb, i64 noundef 8) #15
  %.pre.i.i18.i102 = load i32, ptr %i.fc, align 8, !tbaa !42 ; 2 uses
  %.pre.i19.i103 = zext i32 %.pre.i.i18.i102 to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i99

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i99: ; preds = %bb.s, %bb.r
  %.pre-phi.i10.i100 = phi i64 [ %i.ff, %bb.r ], [ %.pre.i19.i103, %bb.s ]
  %i.fk = phi i32 [ %i.fd, %bb.r ], [ %.pre.i.i18.i102, %bb.s ]
  %i.fl = load ptr, ptr %i.ei, align 8, !tbaa !41
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.pre-phi.i10.i100
  %.idx.i.i.i.i.i.i11.i101 = shl nuw nsw i64 %i.fg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fm, i8 0, i64 %.idx.i.i.i.i.i.i11.i101, i1 false), !tbaa !140
  %i.fn = trunc nuw i64 %i.fg to i32
  %i.fo = add i32 %i.fk, %i.fn
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !42
  br label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit76

_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit76: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i9.i99, %_ZNSt3mapISt4pairIPN4llvm5ValueEPNS1_4TypeEENS1_11SmallVectorIS3_Lj8EEESt4lessIS6_ESaIS0_IKS6_S8_EEEixEOS6_.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit122

_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit76.thread130: ; preds = %.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !96
  store ptr %i.fr, ptr %0, align 8, !tbaa !218
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %i.fs, align 8
  %.sroa.2.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx.i114, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.ft, align 8, !tbaa !219
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !577
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.fv, align 8, !tbaa !220
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !41
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.fy, align 8, !tbaa !42
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 8, ptr %i.fz, align 4, !tbaa !43
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = and i32 %i.gd, 255
  %i.gf = icmp eq i32 %i.ge, 15
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gh = zext i1 %i.gf to i8
  store i8 %i.gh, ptr %i.gg, align 8, !tbaa !221
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !173 ; 4 uses
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = icmp eq i32 %i.gj, 0
  br i1 %i.gl, label %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit122, label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_19ScattererC2EPN4llvm10BasicBlockENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEEPNS1_5ValueERKNS_11VectorSplitEPNS1_11SmallVectorISB_Lj8EEE.exit76.thread130
  %.not.i.i.i.i.i115 = icmp ugt i32 %i.gj, 8
  br i1 %.not.i.i.i.i.i115, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i116, !prof !222

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull %i.fx, i64 noundef %i.gk, i64 noundef 8) #15
  %.pre.i.i.i119 = load i32, ptr %i.fy, align 8, !tbaa !42 ; 2 uses
end_hunk_0
