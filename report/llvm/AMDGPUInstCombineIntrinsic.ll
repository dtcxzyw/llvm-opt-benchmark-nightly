Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstCombineIntrinsic?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4llvm13ConstantRangeD2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm13ConstantRangeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %.split, label %_ZNK4llvm5APInteqERKS0_.exit

.split:                                           ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !15
  %i.e = load i64, ptr %1, align 8, !tbaa !15
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNK4llvm5APInteqERKS0_.exit4

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #23
  br i1 %i.g, label %bb.b, label %_ZNK4llvm5APInteqERKS0_.exit4

bb.b:                                             ; preds = %.split, %_ZNK4llvm5APInteqERKS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !71
  %i.l = icmp ult i32 %i.k, 65
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.h, align 8, !tbaa !15
  %i.n = load i64, ptr %i.i, align 8, !tbaa !15
  %i.o = icmp eq i64 %i.m, %i.n
  br label %_ZNK4llvm5APInteqERKS0_.exit4

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i) #23
  br label %_ZNK4llvm5APInteqERKS0_.exit4

_ZNK4llvm5APInteqERKS0_.exit4:                    ; preds = %bb.d, %bb.c, %.split, %_ZNK4llvm5APInteqERKS0_.exit
  %i.q = phi i1 [ false, %_ZNK4llvm5APInteqERKS0_.exit ], [ false, %.split ], [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14_Optional_baseIN4llvm13ConstantRangeELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !374, !range !174, !noundef !141
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !374
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4llvm13ConstantRangeELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !71
  %i.f = icmp ugt i32 %i.e, 64
  br i1 %i.f, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i.i:                  ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !71
  %i.l = icmp ugt i32 %i.k, 64
  br i1 %i.l, label %bb.e, label %_ZNSt17_Optional_payloadIN4llvm13ConstantRangeELb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt17_Optional_payloadIN4llvm13ConstantRangeELb0ELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #24
  br label %_ZNSt17_Optional_payloadIN4llvm13ConstantRangeELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4llvm13ConstantRangeELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit.i.i.i.i, %bb.e, %bb.f
  ret void
}

declare void @_ZN4llvm6AMDGPU7SendMsg9decodeMsgEjRtS2_S2_RKNS_15MCSubtargetInfoE(i32 noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm6AMDGPU7SendMsg15msgDoesNotUseM0ElRKNS_15MCSubtargetInfoE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction30dropUBImplyingAttrsAndMetadataENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZL25tryOptimizeShufflePatternRN4llvm12InstCombinerERNS_13IntrinsicInstERKNS_12GCNSubtargetE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(520232) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.276", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !497, !nonnull !141, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.b, ptr noundef %i.d) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.e, 1
  %i.f = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.f, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #28
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %.fca.0.extract = extractvalue { i64, i8 } %i.e, 0
  %.not = icmp eq i64 %.fca.0.extract, 32
  br i1 %.not, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.h = load i64, ptr %i.g, align 8, !tbaa !376
  %i.i = and i64 %i.h, 25769803776
  %.not61 = icmp eq i64 %i.i, 0
  br i1 %.not61, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.k = load i8, ptr %i.j, align 8, !tbaa !68    ; 2 uses
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw i32 1, %i.l                      ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !90
  %i.r = icmp eq i32 %i.q, 2448                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 268435455
  %i.v = zext nneg i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %1, i64 %i.w ; 2 uses
  %i.y = zext i1 %i.r to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79  ; 15 uses
  %not. = xor i1 %i.r, true
  %i.ab = zext i1 %not. to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !498
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.af, align 8, !tbaa !500
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 64, ptr %i.ag, align 8, !tbaa !501
  %i.ah = zext i32 %i.m to i64                    ; 10 uses
  %i.ai = icmp ugt i8 %i.k, 6                     ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.ai, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i:  ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.ae, i64 noundef %i.ah, i64 noundef 1) #22
  %.pre.i.i = load i64, ptr %i.af, align 8, !tbaa !500 ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %.pre.i.i, %i.ah
  br i1 %.not11.i.i, label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i
  %.pre70 = load ptr, ptr %3, align 8, !tbaa !498
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.e
  %i.aj = phi ptr [ %.pre70, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.ae, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = sub i64 %i.ah, %i.ak
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %i.am, i1 false), !tbaa !15
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit

_ZN4llvm15SmallVectorImplIhE6resizeEm.exit:       ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i, %.lr.ph.preheader.i.i
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !500
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit, %bb.h
  %.sroa.050.066 = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit ], [ %i.av, %bb.h ] ; 3 uses
  %i.an = trunc i64 %.sroa.050.066 to i32
  %i.ao = call fastcc i64 @_ZL12evalLaneExprPN4llvm5ValueEjRKNS_12GCNSubtargetERKNS_10DataLayoutEj(ptr noundef %i.ad, i32 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(520232) %2, ptr noundef nonnull align 8 dereferenceable(912) %i.b, i32 noundef 0) ; 2 uses
  %.sroa.046.0.extract.trunc = trunc i64 %i.ao to i32 ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.ao, 4294967295
  %i.aq = and i32 %.sroa.046.0.extract.trunc, 3
  %.not37 = icmp eq i32 %i.aq, 0
  %or.cond = and i1 %i.ap, %.not37
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ar = lshr exact i32 %.sroa.046.0.extract.trunc, 2 ; 2 uses
  %.not38 = icmp ult i32 %i.ar, %i.m
  br i1 %.not38, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.as = trunc i32 %i.ar to i8
  %i.at = load ptr, ptr %3, align 8, !tbaa !498
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.050.066
  store i8 %i.as, ptr %i.au, align 1, !tbaa !15
  %i.av = add nuw nsw i64 %.sroa.050.066, 1       ; 2 uses
  %.not62 = icmp eq i64 %i.av, %i.ah
  br i1 %.not62, label %.critedge41, label %bb.f

bb.i:                                             ; preds = %bb.d
  br i1 %i.ai, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i: ; preds = %bb.i
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.ae, i64 noundef %i.ah, i64 noundef 1) #22
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !tbaa !500 ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %.pre.i.i.i, %i.ah
  br i1 %.not11.i.i.i, label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit.i, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !498
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge, %bb.i
  %i.aw = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge ], [ %i.ae, %bb.i ]
  %i.ax = phi i64 [ %.pre.i.i.i, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge ], [ 0, %bb.i ] ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = sub i64 %i.ah, %i.ax
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.az, i1 false), !tbaa !15
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit.i

_ZN4llvm15SmallVectorImplIhE6resizeEm.exit.i:     ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !500
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit.i
  %.sroa.025.030.i = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit.i ], [ %i.bg, %.critedge.i ] ; 3 uses
  %i.ba = trunc i64 %.sroa.025.030.i to i32
  %i.bb = call fastcc i64 @_ZL12evalLaneExprPN4llvm5ValueEjRKNS_12GCNSubtargetERKNS_10DataLayoutEj(ptr noundef %i.ad, i32 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(520232) %2, ptr noundef nonnull align 8 dereferenceable(912) %i.b, i32 noundef 0) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bb to i32
  %i.bc = icmp samesign ugt i64 %i.bb, 4294967295
  %.not.i = icmp ugt i32 %i.m, %.sroa.0.0.extract.trunc.i
  %or.cond.i = and i1 %i.bc, %.not.i
  br i1 %or.cond.i, label %.critedge.i, label %.critedge

.critedge.i:                                      ; preds = %bb.j
  %i.bd = trunc i64 %i.bb to i8
  %i.be = load ptr, ptr %3, align 8, !tbaa !498
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.025.030.i
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !15
  %i.bg = add nuw nsw i64 %.sroa.025.030.i, 1     ; 2 uses
  %.not29.i = icmp eq i64 %i.bg, %i.ah
  br i1 %.not29.i, label %.critedge41, label %bb.j

.critedge41:                                      ; preds = %.critedge.i, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !498   ; 48 uses
  %i.bj = load i64, ptr %i.af, align 8, !tbaa !500 ; 21 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %.not2.i.i.i.i.i.i = icmp samesign eq i64 %i.bj, 0
  br i1 %.not2.i.i.i.i.i.i, label %_ZL25matchShuffleToHWIntrinsicRN4llvm13IRBuilderBaseEPNS_5ValueENS_8ArrayRefIhEERKNS_12GCNSubtargetERKNS_10DataLayoutE.exit, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.critedge41
  %.val1.val.i.i4.i.i.i.i.i = load i8, ptr %i.bi, align 1, !tbaa !15, !noalias !502 ; 7 uses
  %.not1.i5.i.i.i.i.i = icmp eq i8 %.val1.val.i.i4.i.i.i.i.i, 0
  br i1 %.not1.i5.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIhEEEEEZL25matchShuffleToHWIntrinsicRNS_13IRBuilderBaseEPNS_5ValueES6_RKNS_12GCNSubtargetERKNS_10DataLayoutEE3$_0EEbOT_T0_.exit.i"

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %.not.i.i.i.i.i.i101 = icmp samesign eq i64 %i.bj, 1
  br i1 %.not.i.i.i.i.i.i101, label %"._ZSt9__find_ifIN4llvm6detail14zip_enumeratorIJNS1_14index_iteratorEPKhEEEN9__gnu_cxx5__ops12_Iter_negateIZL25matchShuffleToHWIntrinsicRNS0_13IRBuilderBaseEPNS0_5ValueENS0_8ArrayRefIhEERKNS0_12GCNSubtargetERKNS0_10DataLayoutEE3$_0EEET_SO_SO_T0_St18input_iterator_tag.exit.loopexit_crit_edge.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.lr.ph, !llvm.loop !509

.lr.ph.i.i.i.i.i.i.lr.ph:                         ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  br label %.lr.ph.i.i.i.i.i.i, !llvm.loop !509

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.lr.ph, %.lr.ph.i.i.i.i.i
  %i.bm = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.lr.ph ], [ %i.bq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bn = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.lr.ph ], [ %i.bo, %.lr.ph.i.i.i.i.i ]
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %.val1.val.i.i.i.i.i.i.i = load i8, ptr %i.bm, align 1, !tbaa !15, !noalias !502
  %i.bp = zext i8 %.val1.val.i.i.i.i.i.i.i to i64
  %.not1.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bp
  br i1 %.not1.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIhEEEEEZL25matchShuffleToHWIntrinsicRNS_13IRBuilderBaseEPNS_5ValueES6_RKNS_12GCNSubtargetERKNS_10DataLayoutEE3$_0EEbOT_T0_.exit.i", !llvm.loop !509

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bk
  br i1 %.not.i.i.i.i.i.i, label %".lr.ph.i.i.i.i.i.._ZSt9__find_ifIN4llvm6detail14zip_enumeratorIJNS1_14index_iteratorEPKhEEEN9__gnu_cxx5__ops12_Iter_negateIZL25matchShuffleToHWIntrinsicRNS0_13IRBuilderBaseEPNS0_5ValueENS0_8ArrayRefIhEERKNS0_12GCNSubtargetERKNS0_10DataLayoutEE3$_0EEET_SO_SO_T0_St18input_iterator_tag.exit.loopexit_crit_edge.i.i.i.i.i_crit_edge", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !509

".lr.ph.i.i.i.i.i.._ZSt9__find_ifIN4llvm6detail14zip_enumeratorIJNS1_14index_iteratorEPKhEEEN9__gnu_cxx5__ops12_Iter_negateIZL25matchShuffleToHWIntrinsicRNS0_13IRBuilderBaseEPNS0_5ValueENS0_8ArrayRefIhEERKNS0_12GCNSubtargetERKNS0_10DataLayoutEE3$_0EEET_SO_SO_T0_St18input_iterator_tag.exit.loopexit_crit_edge.i.i.i.i.i_crit_edge": ; preds = %.lr.ph.i.i.i.i.i
  br label %"._ZSt9__find_ifIN4llvm6detail14zip_enumeratorIJNS1_14index_iteratorEPKhEEEN9__gnu_cxx5__ops12_Iter_negateIZL25matchShuffleToHWIntrinsicRNS0_13IRBuilderBaseEPNS0_5ValueENS0_8ArrayRefIhEERKNS0_12GCNSubtargetERKNS0_10DataLayoutEE3$_0EEET_SO_SO_T0_St18input_iterator_tag.exit.loopexit_crit_edge.i.i.i.i.i", !llvm.loop !509

"._ZSt9__find_ifIN4llvm6detail14zip_enumeratorIJNS1_14index_iteratorEPKhEEEN9__gnu_cxx5__ops12_Iter_negateIZL25matchShuffleToHWIntrinsicRNS0_13IRBuilderBaseEPNS0_5ValueENS0_8ArrayRefIhEERKNS0_12GCNSubtargetERKNS0_10DataLayoutEE3$_0EEET_SO_SO_T0_St18input_iterator_tag.exit.loopexit_crit_edge.i.i.i.i.i": ; preds = %".lr.ph.i.i.i.i.i.._ZSt9__find_ifIN4llvm6detail14zip_enumeratorIJNS1_14index_iteratorEPKhEEEN9__gnu_cxx5__ops12_Iter_negateIZL25matchShuffleToHWIntrinsicRNS0_13IRBuilderBaseEPNS0_5ValueENS0_8ArrayRefIhEERKNS0_12GCNSubtargetERKNS0_10DataLayoutEE3$_0EEET_SO_SO_T0_St18input_iterator_tag.exit.loopexit_crit_edge.i.i.i.i.i_crit_edge", %.lr.ph.i.i.i.i.i.preheader
  br label %_ZL25matchShuffleToHWIntrinsicRN4llvm13IRBuilderBaseEPNS_5ValueENS_8ArrayRefIhEERKNS_12GCNSubtargetERKNS_10DataLayoutE.exit, !llvm.loop !509

"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIhEEEEEZL25matchShuffleToHWIntrinsicRNS_13IRBuilderBaseEPNS_5ValueES6_RKNS_12GCNSubtargetERKNS_10DataLayoutEE3$_0EEbOT_T0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %switch.i.i = icmp eq i64 %i.bj, 1
  br i1 %switch.i.i, label %.critedge, label %_ZN4llvm9all_equalIRNS_8ArrayRefIhEEEEbOT_.exit.i

_ZN4llvm9all_equalIRNS_8ArrayRefIhEEEEbOT_.exit.i: ; preds = %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIhEEEEEZL25matchShuffleToHWIntrinsicRNS_13IRBuilderBaseEPNS_5ValueES6_RKNS_12GCNSubtargetERKNS_10DataLayoutEE3$_0EEbOT_T0_.exit.i"
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 5 uses
  %gepdiff.i.i = add nsw i64 %i.bj, -1
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.br, ptr readonly %i.bi, i64 %gepdiff.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm9all_equalIRNS_8ArrayRefIhEEEEbOT_.exit.i
  %i.bs = icmp ugt i8 %.val1.val.i.i4.i.i.i.i.i, 3
  br i1 %i.bs, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !15  ; 2 uses
  %i.bu = icmp ugt i8 %i.bt, 3
  br i1 %i.bu, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15  ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 3
  br i1 %i.bx, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15  ; 2 uses
  %i.ca = icmp ugt i8 %i.bz, 3
  br i1 %i.ca, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = trunc i64 %i.bj to i32
  %i.cc = icmp ult i32 %i.cb, 5
  br i1 %i.cc, label %_ZL20matchQuadPermPatternN4llvm8ArrayRefIhEE.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.o
  %wide.trip.count.i.i.i.i = and i64 %i.bj, 4294967295
  br label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZL20matchQuadPermPatternN4llvm8ArrayRefIhEE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !510

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 4, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.p ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cf = zext i8 %i.ce to i32
  %i.cg = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.ch = and i64 %indvars.iv.i.i.i.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !15
  %i.ck = zext i8 %i.cj to i32
  %i.cl = and i32 %i.cg, -4
  %i.cm = add i32 %i.cl, %i.ck
  %.not.i.i.i.i = icmp eq i32 %i.cm, %i.cf
  br i1 %.not.i.i.i.i, label %bb.p, label %.loopexit.i

_ZL20matchQuadPermPatternN4llvm8ArrayRefIhEE.exit.i: ; preds = %bb.p, %bb.o
  %i.cn = shl nuw i8 %i.bz, 6
  %i.co = shl nuw nsw i8 %i.bw, 4
  %i.cp = shl nuw nsw i8 %i.bt, 2
  %i.cq = or disjoint i8 %i.cp, %i.co
  %i.cr = or disjoint i8 %i.cq, %i.cn
  %i.cs = or disjoint i8 %i.cr, %.val1.val.i.i4.i.i.i.i.i
  %.sroa.026.0.extract.trunc.i = zext i8 %i.cs to i32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 700
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !511, !range !174, !noundef !141
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL20matchQuadPermPatternN4llvm8ArrayRefIhEE.exit.i
  %i.cw = call fastcc noundef ptr @_ZL15createUpdateDppRN4llvm13IRBuilderBaseEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef %i.aa, i32 noundef %.sroa.026.0.extract.trunc.i)
  br label %_ZL25matchShuffleToHWIntrinsicRN4llvm13IRBuilderBaseEPNS_5ValueENS_8ArrayRefIhEERKNS_12GCNSubtargetERKNS_10DataLayoutE.exit

bb.r:                                             ; preds = %_ZL20matchQuadPermPatternN4llvm8ArrayRefIhEE.exit.i
  %i.cx = or disjoint i32 %.sroa.026.0.extract.trunc.i, 32768
  %i.cy = call fastcc noundef ptr @_ZL15createDsSwizzleRN4llvm13IRBuilderBaseEPNS_5ValueEjRKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef %i.aa, i32 noundef %i.cx)
  br label %_ZL25matchShuffleToHWIntrinsicRN4llvm13IRBuilderBaseEPNS_5ValueENS_8ArrayRefIhEERKNS_12GCNSubtargetERKNS_10DataLayoutE.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 700
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !511, !range !174, !noundef !141
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.s, label %.thread66.i

bb.s:                                             ; preds = %.loopexit.i
  %i.dc = icmp ugt i8 %.val1.val.i.i4.i.i.i.i.i, 7
  br i1 %i.dc, label %_ZL18matchMirrorPatternILj8EEbN4llvm8ArrayRefIhEE.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = load i8, ptr %i.br, align 1, !tbaa !15  ; 2 uses
  %i.de = icmp ugt i8 %i.dd, 7
  br i1 %i.de, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15  ; 2 uses
  %i.dh = icmp ugt i8 %i.dg, 7
  br i1 %i.dh, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15  ; 2 uses
  %i.dk = icmp ugt i8 %i.dj, 7
  br i1 %i.dk, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15  ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, 7
  br i1 %i.dn, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !15  ; 2 uses
  %i.dq = icmp ugt i8 %i.dp, 7
  br i1 %i.dq, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15  ; 2 uses
  %i.dt = icmp ugt i8 %i.ds, 7
  br i1 %i.dt, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15  ; 2 uses
  %i.dw = icmp ugt i8 %i.dv, 7
  br i1 %i.dw, label %_ZL18matchMirrorPatternILj16EEbN4llvm8ArrayRefIhEE.exit.thread.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = trunc i64 %i.bj to i32
  %i.dy = icmp ult i32 %i.dx, 9
  br i1 %i.dy, label %_ZL18matchMirrorPatternILj8EEbN4llvm8ArrayRefIhEE.exit.i, label %.lr.ph.preheader.i.i.i84.i

.lr.ph.preheader.i.i.i84.i:                       ; preds = %bb.aa
  %wide.trip.count.i.i.i85.i = and i64 %i.bj, 4294967295
  br label %.lr.ph.i.i.i86.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i86.i
  %indvars.iv.next.i.i.i89.i = add nuw nsw i64 %indvars.iv.i.i.i87.i, 1 ; 2 uses
  %exitcond.not.i.i.i90.i = icmp eq i64 %indvars.iv.next.i.i.i89.i, %wide.trip.count.i.i.i85.i
  br i1 %exitcond.not.i.i.i90.i, label %_ZL18matchMirrorPatternILj8EEbN4llvm8ArrayRefIhEE.exit.i, label %.lr.ph.i.i.i86.i, !llvm.loop !512

.lr.ph.i.i.i86.i:                                 ; preds = %bb.ab, %.lr.ph.preheader.i.i.i84.i
  %indvars.iv.i.i.i87.i = phi i64 [ 8, %.lr.ph.preheader.i.i.i84.i ], [ %indvars.iv.next.i.i.i89.i, %bb.ab ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i.i.i87.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = zext i8 %i.ea to i32
  %i.ec = trunc nuw i64 %indvars.iv.i.i.i87.i to i32
  %i.ed = and i64 %indvars.iv.i.i.i87.i, 7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ed
end_hunk_0
