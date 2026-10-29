Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ShardingInterface?download=true
inline.NumInlined: 3150
inline.NumDeleted: 1779
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL22checkOperandAffineExprN4mlir10AffineExprEj:bb.a
_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i: ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !117
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.c, i64 noundef %i.b, i64 noundef 1) #18
  %i.g = load ptr, ptr %3, align 8, !tbaa !116
  br label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit, label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i: ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i
  %.sink.i = phi ptr [ %i.g, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.c, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i, i8 0, i64 %i.b, i1 false), !tbaa !43
  br label %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit

_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit:        ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i
  store i64 %i.b, ptr %i.d, align 8, !tbaa !117
  %i.h = call fastcc i8 @_ZL33checkOperandAffineExprRecursivelyN4mlir10AffineExprERN4llvm15SmallVectorImplIbEE(ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.j, align 8, !tbaa !132
  br label %bb.j

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.m, align 4, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store i32 0, ptr %i.n, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !126
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store i64 0, ptr %i.r, align 8, !tbaa !127
  %i.s = load ptr, ptr %3, align 8, !tbaa !116, !noalias !257 ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !117, !noalias !258 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %.not13 = icmp samesign eq i64 %i.t, 0
  br i1 %.not13, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %0, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.x, align 4, !tbaa !52
  br label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %i.l, align 8, !tbaa !51
  %i.y = icmp eq i32 %.pre, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %0, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.ab, align 4, !tbaa !52
  br i1 %i.y, label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(72) %4) ; 0 uses
  br label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread, %bb.d, %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.i.i.i.i.i.i.i
  %i.af = load i32, ptr %i.n, align 8, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !124
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !259
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !127
  store ptr null, ptr %i.o, align 8, !tbaa !124
  store ptr %i.n, ptr %i.p, align 8, !tbaa !125
  store ptr %i.n, ptr %i.q, align 8, !tbaa !126
  store i64 0, ptr %i.r, align 8, !tbaa !127
  br label %_ZN4llvm9FailureOrINS_8SmallSetIjLj2ESt4lessIjEEEEC2EOS4_.exit

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.al, align 8, !tbaa !124
  br label %_ZN4llvm9FailureOrINS_8SmallSetIjLj2ESt4lessIjEEEEC2EOS4_.exit

_ZN4llvm9FailureOrINS_8SmallSetIjLj2ESt4lessIjEEEEC2EOS4_.exit: ; preds = %bb.e, %bb.f
  %.sink17 = phi ptr [ %i.ad, %bb.f ], [ %i.ah, %bb.e ]
  %.sink16 = phi ptr [ %i.ad, %bb.f ], [ %i.ai, %bb.e ]
  %.sink = phi i64 [ 0, %bb.f ], [ %i.ak, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.af, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink17, ptr %i.am, align 8, !tbaa !125
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink16, ptr %i.an, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink, ptr %i.ao, align 8, !tbaa !127
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !123
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.ap, align 8, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef null)
  %i.ar = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.k
  br i1 %i.as, label %_ZN4llvm8SmallSetIjLj2ESt4lessIjEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9FailureOrINS_8SmallSetIjLj2ESt4lessIjEEEEC2EOS4_.exit
  call void @free(ptr noundef %i.ar) #18
  br label %_ZN4llvm8SmallSetIjLj2ESt4lessIjEED2Ev.exit

_ZN4llvm8SmallSetIjLj2ESt4lessIjEED2Ev.exit:      ; preds = %_ZN4llvm9FailureOrINS_8SmallSetIjLj2ESt4lessIjEEEEC2EOS4_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.j

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.07.015 = phi ptr [ %i.aw, %bb.i ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.7.014 = phi i32 [ %i.av, %bb.i ], [ 0, %bb.c ] ; 2 uses
  %i.at = load i8, ptr %.sroa.07.015, align 1, !tbaa !43, !range !113, !noundef !114
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 %.sroa.7.014, ptr %i.a, align 4, !tbaa !130
  call void @_ZN4llvm8SmallSetIjLj2ESt4lessIjEE10insertImplIjEESt4pairINS_16SmallSetIteratorIjLj2ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.412") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.av = add i32 %.sroa.7.014, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_ZN4llvm8SmallSetIjLj2ESt4lessIjEED2Ev.exit, %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !116   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ax) #18
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5shard6detail29defaultGetShardingAnnotationsEPNS_9OperationERKNS0_14ShardingOptionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::FailureOr.17") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %2) local_unnamed_addr #0 {
_ZN4llvm4castIN4mlir5shard17ShardingInterfaceENS1_9OperationEEEDcPT0_.exit:
  %3 = alloca %"class.std::vector", align 16      ; 11 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.5", align 8 ; 7 uses
  %6 = alloca %"class.llvm::FailureOr.214", align 8 ; 16 uses
  %7 = alloca %"class.mlir::shard::Sharding", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_5shard17ShardingInterfaceENS1_6detail32ShardingInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25, !noalias !264
  call void %i.b(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %4, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #18, !inline_history !107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27, !noalias !265
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.5") align 8 %5, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #18, !inline_history !97
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 8388608
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.critedge, label %_ZN4mlir9Operation13getOpOperandsEv.exit, !prof !77

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %_ZN4llvm4castIN4mlir5shard17ShardingInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw nsw i64 %i.l, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %.not49 = icmp eq i32 %i.i, 0
  br i1 %.not49, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 328 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.promoted = load i8, ptr %i.p, align 8
  br label %bb.b

bb.a:                                             ; preds = %_ZNSt14_Optional_baseIN4mlir5shard8ShardingELb0ELb0EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.050, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.n
  br i1 %.not, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %i.ad = phi i8 [ %.promoted, %.lr.ph ], [ %i.ao, %bb.a ] ; 2 uses
  %.050 = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ae = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.050) #18
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %5, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %.sroa.07.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !105
  call fastcc void @_ZL11getShardingRN4mlir9OpOperandERKNS_5shard14ShardingOptionENS_9AffineMapE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %.050, ptr noundef nonnull align 8 dereferenceable(89) %2, ptr %.sroa.07.0.copyload)
  %i.ai = load i8, ptr %i.o, align 8, !tbaa !139, !range !113, !noundef !114
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  br i1 %i.aj, label %bb.c, label %_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !141 ; 3 uses
  %i.al = load ptr, ptr %i.r, align 16, !tbaa !142
  %.not.i27 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir5shard8ShardingC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(328) %i.ak, ptr noundef nonnull align 8 dereferenceable(328) %6)
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !141
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 328
  store ptr %i.an, ptr %i.q, align 8, !tbaa !141
  br label %_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(328) %6)
  br label %_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %bb.e, %bb.d
  %i.ao = phi i8 [ %i.ad, %bb.e ], [ %i.ad, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.ap = load i8, ptr %i.o, align 8, !tbaa !139, !range !113, !noundef !114
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.o, align 8, !tbaa !139
  br i1 %i.aq, label %bb.f, label %_ZNSt14_Optional_baseIN4mlir5shard8ShardingELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE9push_backERKS2_.exit
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !50  ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.t
  br i1 %i.as, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.ar) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !50  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.at) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i.i.i.i.i: ; preds = %bb.h, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.x
  br i1 %i.aw, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i.i.i.i.i
  call void @free(ptr noundef %i.av) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i.i:  ; preds = %bb.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i.i.i.i.i
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !50  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.z
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.ax) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i.i.i.i.i: ; preds = %bb.j, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i.i
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ab
  br i1 %i.ba, label %_ZNSt14_Optional_baseIN4mlir5shard8ShardingELb0ELb0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i.i.i.i.i
  call void @free(ptr noundef %i.az) #18
  br label %_ZNSt14_Optional_baseIN4mlir5shard8ShardingELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir5shard8ShardingELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE9push_backERKS2_.exit, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.aj, label %bb.a, label %.loopexit.loopexit

.critedge.loopexit:                               ; preds = %bb.a
  store i8 %i.ao, ptr %i.p, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN4llvm4castIN4mlir5shard17ShardingInterfaceENS1_9OperationEEEDcPT0_.exit, %_ZN4mlir9Operation13getOpOperandsEv.exit
  %i.bb = phi i32 [ 0, %_ZN4llvm4castIN4mlir5shard17ShardingInterfaceENS1_9OperationEEEDcPT0_.exit ], [ %i.i, %_ZN4mlir9Operation13getOpOperandsEv.exit ], [ %i.i, %.critedge.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !96 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bf = zext i32 %i.bd to i64
  %.not4851 = icmp eq i32 %i.bd, 0
  br i1 %.not4851, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 280
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4mlir5shard8ShardingD2Ev.exit, %.critedge
  %i.bq = load <2 x ptr>, ptr %3, align 16, !tbaa !29
  store <2 x ptr> %i.bq, ptr %0, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !142
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bu, align 8, !tbaa !267
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph53, %_ZN4mlir5shard8ShardingD2Ev.exit
  %.sroa.4.052 = phi i64 [ 0, %.lr.ph53 ], [ %i.cu, %_ZN4mlir5shard8ShardingD2Ev.exit ] ; 2 uses
  %i.bv = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef %.sroa.4.052) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8 ; 2 uses
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.by = icmp eq i64 %i.bx, 6
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !103
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add i32 %i.cb, 6
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.ce = and i32 %i.cd, 7
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit

_ZNK4mlir8OpResult15getResultNumberEv.exit:       ; preds = %bb.m, %bb.n
  %.1.i.i = phi i32 [ %i.ce, %bb.n ], [ %i.cc, %bb.m ]
  %i.cf = add i32 %.1.i.i, %i.bb
  %i.cg = zext i32 %i.cf to i64
  %i.ch = load ptr, ptr %5, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  %.sroa.0.0.copyload = load ptr, ptr %i.ci, align 8, !tbaa !105
  call fastcc void @_ZL11getShardingN4mlir8OpResultERKNS_5shard14ShardingOptionENS_9AffineMapEN4llvm8ArrayRefINS_5utils12IteratorTypeEEE(ptr dead_on_unwind noalias writable align 8 %7, ptr nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(89) %2, ptr %.sroa.0.0.copyload)
  %i.cj = call noundef nonnull align 8 dereferenceable(328) ptr @_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(328) %7) ; 0 uses
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bh
  br i1 %i.cl, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit
  call void @free(ptr noundef %i.ck) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i: ; preds = %bb.o, %_ZNK4mlir8OpResult15getResultNumberEv.exit
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bj
  br i1 %i.cn, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.cm) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i: ; preds = %bb.p, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i
  %i.co = load ptr, ptr %i.bk, align 8, !tbaa !50 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bl
  br i1 %i.cp, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i
  call void @free(ptr noundef %i.co) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.q, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit1.i
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bn
  br i1 %i.cr, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.cq) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i:         ; preds = %bb.r, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  %i.cs = load ptr, ptr %i.bo, align 8, !tbaa !50 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bp
  br i1 %i.ct, label %_ZN4mlir5shard8ShardingD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i
  call void @free(ptr noundef %i.cs) #18
  br label %_ZN4mlir5shard8ShardingD2Ev.exit

_ZN4mlir5shard8ShardingD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit2.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cu = add nuw nsw i64 %.sroa.4.052, 1         ; 2 uses
  %.not48 = icmp eq i64 %i.cu, %i.bf
  br i1 %.not48, label %._crit_edge, label %bb.l

.loopexit.loopexit:                               ; preds = %_ZNSt14_Optional_baseIN4mlir5shard8ShardingELb0ELb0EED2Ev.exit
  store i8 %i.ao, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %i.cv = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.cv) #18
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit: ; preds = %.loopexit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cy = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit
  call void @free(ptr noundef %i.cy) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN4mlir5shard8ShardingESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11getShardingRN4mlir9OpOperandERKNS_5shard14ShardingOptionENS_9AffineMapE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %2, ptr %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %6 = alloca %"class.mlir::AffineMap", align 8   ; 3 uses
  %7 = alloca %"class.mlir::RankedTensorType", align 8 ; 5 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %9 = alloca %"class.mlir::shard::Sharding", align 8 ; 14 uses
  %10 = alloca %"class.mlir::shard::Sharding", align 8 ; 14 uses
  %11 = alloca %"class.llvm::SmallVector.11", align 8 ; 14 uses
  %12 = alloca %"class.llvm::FailureOr.195", align 8 ; 14 uses
  %13 = alloca %"class.llvm::SmallVector.434", align 8 ; 12 uses
  %14 = alloca %"class.mlir::shard::Sharding", align 8 ; 14 uses
  %15 = alloca %"class.llvm::SmallVector.42", align 8 ; 10 uses
  %16 = alloca %"class.llvm::ArrayRef.436", align 8 ; 2 uses
  %17 = alloca %"class.llvm::ArrayRef.28", align 8 ; 2 uses
  %18 = alloca %"class.llvm::ArrayRef.28", align 8 ; 2 uses
  store ptr %3, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i.i = select i1 %i.g, ptr %i.d, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.h = icmp eq ptr %spec.select.i.i, null
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %i.d, ptr %8, align 8
  %i.i = call noundef zeroext i1 @_ZNK4mlir4Type19isIntOrIndexOrFloatEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZN4mlir5shard8ShardingC1ENS_17FlatSymbolRefAttrE(ptr noundef nonnull align 8 dereferenceable(328) %9, ptr null) #18
  call void @_ZNSt22_Optional_payload_baseIN4mlir5shard8ShardingEE8_StorageIS2_Lb0EEC2IJS2_EEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(328) %9)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.j, align 8, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 280
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
